`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_ahb_sub;

    localparam CLK_PERIOD = 10ns;
    localparam TIMEOUT    = 1000;

    // HTRANS encodings for convenience in TB
    localparam [1:0] HTRANS_IDLE   = 2'b00;
    localparam [1:0] HTRANS_BUSY   = 2'b01;
    localparam [1:0] HTRANS_NONSEQ = 2'b10;
    localparam [1:0] HTRANS_SEQ    = 2'b11;

    // HBURST encodings
    localparam [2:0] BURST_SINGLE = 3'd0;
    localparam [2:0] BURST_INCR   = 3'd1;
    localparam [2:0] BURST_WRAP4  = 3'd2;
    localparam [2:0] BURST_INCR4  = 3'd3;
    localparam [2:0] BURST_WRAP8  = 3'd4;
    localparam [2:0] BURST_INCR8  = 3'd5;
    localparam [2:0] BURST_WRAP16 = 3'd6;
    localparam [2:0] BURST_INCR16 = 3'd7;

    initial begin
        $dumpfile("waveform.fst");
        $dumpvars;
    end

    logic clk, n_rst;

    // clockgen
    always begin
        clk = 1'b0;
        #(CLK_PERIOD/2.0);
        clk = 1'b1;
        #(CLK_PERIOD/2.0);
    end

    task reset_dut;
    begin
        n_rst = 1'b0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1'b1;
        @(negedge clk);
        @(negedge clk);
    end
    endtask

    // ----------------------------------------------------------------
    // AHB wires between BFM and DUT
    // ----------------------------------------------------------------
    logic        hsel;
    logic [9:0]  haddr;
    logic [2:0]  hsize;        // full 3-bit HSIZE for BFM
    logic [2:0]  hburst;
    logic [1:0]  htrans;       // BFM-side HTRANS
    logic [1:0]  htrans_to_dut;// DUT-side HTRANS (with BUSY injection)
    logic        hwrite;
    logic [63:0] hwdata;
    logic [63:0] hrdata_bus;
    logic        hresp;
    logic        hready;

    // BUSY injection control for DUT
    logic busy_inject;

    // DUT sees BUSY when busy_inject=1
    assign htrans_to_dut = busy_inject ? HTRANS_BUSY : htrans;

    // ----------------------------------------------------------------
    // BFM instance
    // ----------------------------------------------------------------
    ahb_model_updated #(
        .ADDR_WIDTH(10),
        .DATA_WIDTH(8)            // 8 bytes = 64-bit bus
    ) BFM(
        .clk   (clk),
        .hsel  (hsel),
        .haddr (haddr),
        .hsize (hsize),
        .htrans(htrans),
        .hburst(hburst),
        .hwrite(hwrite),
        .hwdata(hwdata),
        .hrdata(hrdata_bus),
        .hresp (hresp),
        .hready(hready)
    );

    // ----------------------------------------------------------------
    // DUT instance (your ahb_sub)
    // ----------------------------------------------------------------
    logic [2:0]  act_mode;
    logic [63:0] hrdata_dut;
    logic        handshake;
    logic [63:0] bias_reg;
    logic [7:0]  ctrl_reg;
    logic        wr_en_push;
    logic        is_weight;

    // non-AHB inputs (driven by testbench)
    logic [7:0]  status_reg;
    logic [63:0] output_data;
    logic [15:0] err_reg;

    ahb_sub DUT(
        .clk        (clk),
        .n_rst      (n_rst),
        .hsel       (hsel),
        .hwrite     (hwrite),
        .haddr      (haddr),
        .htrans     (htrans_to_dut), // DUT sees injected BUSY
        .hsize      (hsize[1:0]),    // DUT only uses 2 LSBs
        .hwdata     (hwdata),
        .hburst     (hburst),
        .status_reg (status_reg),
        .output_data(output_data),
        .err_reg    (err_reg),
        .act_mode   (act_mode),
        .hready     (hready),
        .hresp      (hresp),
        .hrdata     (hrdata_dut),
        .handshake  (handshake),
        .bias_reg   (bias_reg),
        .ctrl_reg   (ctrl_reg),
        .wr_en_push (wr_en_push),
        .is_weight  (is_weight)
    );

    // hook DUT read data to BFM
    assign hrdata_bus = hrdata_dut;

    // ----------------------------------------------------------------
    // BFM helper tasks (64-bit data, 10-bit addr)
    // ----------------------------------------------------------------
    task reset_model;
        BFM.reset_model();
    endtask

    // simple poll read (don’t check returned data)
    task enqueue_poll(input logic [9:0] addr, input logic [1:0] size);
        logic [63:0] data[];
    begin
        data    = new[1];
        data[0] = 64'hX;
        // fields: hsel,R/W,addr,data,exp_err,size(3b),burst,check_data
        BFM.enqueue_transaction(1'b1, 1'b0, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b0);
    end
    endtask

    // poll until we see a given value
    task poll_until(input logic [9:0] addr, input logic [1:0] size, input logic [63:0] value);
        int iters;
    begin
        for (iters = 0; iters < TIMEOUT; iters++) begin
            enqueue_poll(addr, size);
            execute_transactions(1);
            if (BFM.get_last_read() == value) break;
        end
        if (iters >= TIMEOUT) begin
            $error("Bus polling timeout hit.");
        end
    end
    endtask

    // read with expected value check
    task enqueue_read(input logic [9:0] addr, input logic [1:0] size, input logic [63:0] exp_read);
        logic [63:0] data[];
    begin
        data    = new[1];
        data[0] = exp_read;
        BFM.enqueue_transaction(1'b1, 1'b0, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b1);
    end
    endtask

    // write transaction (LSB-aligned data, BFM will lane-steer)
    task enqueue_write(input logic [9:0] addr, input logic [1:0] size, input logic [63:0] wdata);
        logic [63:0] data[];
    begin
        data    = new[1];
        data[0] = wdata;
        BFM.enqueue_transaction(1'b1, 1'b1, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b0);
    end
    endtask

    // write not selected for this subordinate (hsel=0)
    task enqueue_fakewrite(input logic [9:0] addr, input logic [1:0] size, input logic [63:0] wdata);
        logic [63:0] data[];
    begin
        data    = new[1];
        data[0] = wdata;
        BFM.enqueue_transaction(1'b0, 1'b1, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b0);
    end
    endtask

    // burst read with expected data checking
    task enqueue_burst_read(input logic [9:0] base_addr,
                            input logic [1:0] size,
                            input logic [2:0] burst,
                            input logic [63:0] data[]);
    begin
        BFM.enqueue_transaction(1'b1, 1'b0, base_addr, data, 1'b0, {1'b0, size}, burst, 1'b1);
    end
    endtask

    // burst write with expected data checking
    task enqueue_burst_write(input logic [9:0] base_addr,
                             input logic [1:0] size,
                             input logic [2:0] burst,
                             input logic [63:0] data[]);
    begin
        BFM.enqueue_transaction(1'b1, 1'b1, base_addr, data, 1'b0, {1'b0, size}, burst, 1'b1);
    end
    endtask

    // burst write, no data checking (for BUSY injection test)
    task enqueue_burst_write_nocheck(input logic [9:0] base_addr,
                                     input logic [1:0] size,
                                     input logic [2:0] burst,
                                     input logic [63:0] data[]);
    begin
        BFM.enqueue_transaction(1'b1, 1'b1, base_addr, data, 1'b0, {1'b0, size}, burst, 1'b0);
    end
    endtask

    // burst read, no data checking (just exercise burst patterns)
    task enqueue_burst_read_nocheck(input logic [9:0] base_addr,
                                    input logic [1:0] size,
                                    input logic [2:0] burst,
                                    input int beats);
        logic [63:0] dummy[];
        int i;
    begin
        dummy = new[beats];
        for (i = 0; i < beats; i++) begin
            dummy[i] = 64'h0; // don't care
        end
        BFM.enqueue_transaction(1'b1, 1'b0, base_addr, dummy, 1'b0, {1'b0, size}, burst, 1'b0);
    end
    endtask

    task execute_transactions(input int num_transactions);
        BFM.run_transactions(num_transactions);
    endtask

    task finish_transactions;
        BFM.wait_done();
    endtask

    logic [63:0] data[];

    // ----------------------------------------------------------------
    // High-level tests
    // ----------------------------------------------------------------

    // write all valid write registers once
    task test_all_writes;
    begin
        // 0x000: weight write port (64-bit)
        enqueue_write(10'h000, 2'b11, 64'h1111_1111_1111_1111);

        // 0x008: non-weight write port (64-bit)
        enqueue_write(10'h008, 2'b11, 64'h2222_2222_2222_2222);

        // 0x010: bias_reg (64-bit)
        enqueue_write(10'h010, 2'b11, 64'h3333_3333_3333_3333);

        // 0x022: ctrl_reg, byte-sized (HSIZE=byte → 2'b00)
        enqueue_write(10'h022, 2'b00, 64'h0000_0000_0000_0055);

        // 0x024: act_reg, byte-sized
        enqueue_write(10'h024, 2'b00, 64'h0000_0000_0000_000F);

        execute_transactions(5);
    end
    endtask

    // read all valid read registers, checking expected values
    task test_all_reads;
    begin
        // bias_reg @0x010 (64b) → expect what we wrote
        enqueue_read(10'h010, 2'b11, 64'h3333_3333_3333_3333);

        // output_data @0x018 (64b) → expect TB value
        enqueue_read(10'h018, 2'b11, output_data);

        // err_reg @0x020 (16b) → packed as {24'b0,err_reg,24'b0}
        enqueue_read(10'h020, 2'b01, {24'b0, err_reg, 24'b0});

        // ctrl_reg @0x022: DUT returns {16'b0,ctrl_reg,40'b0}
        enqueue_read(10'h022, 2'b00, {16'b0, ctrl_reg, 40'b0});

        // status_reg @0x023: {8'b0,status_reg,48'b0}
        enqueue_read(10'h023, 2'b00, {8'b0, status_reg, 48'b0});

        // act_reg @0x024: {56'b0,act_reg}
        enqueue_read(10'h024, 2'b00, {56'b0, 8'h0F});

        execute_transactions(6);
    end
    endtask

    // exercise every HBURST mode with writes (some beats may land on invalid addrs → error paths)
    task test_all_bursts_write;
        int i;
    begin
        // BURST_SINGLE (1 beat @0x000)
        data    = new[1];
        data[0] = 64'hA0A0_A0A0_A0A0_A0A0;
        enqueue_burst_write(10'h000, 2'b11, BURST_SINGLE, data);
        execute_transactions(data.size());

        // BURST_INCR (3 beats: 0x000,0x008,0x010)
        data = new[3];
        for (i = 0; i < 3; i++) begin
            data[i] = 64'hB0B0_B0B0_B0B0_B0B0 + i;
        end
        enqueue_burst_write(10'h000, 2'b11, BURST_INCR, data);
        execute_transactions(data.size());

        // BURST_WRAP4 (4 beats)
        data = new[4];
        for (i = 0; i < 4; i++) begin
            data[i] = 64'hC0C0_C0C0_C0C0_C0C0 + i;
        end
        enqueue_burst_write(10'h000, 2'b11, BURST_WRAP4, data);
        execute_transactions(data.size());

        // BURST_INCR4 (4 beats)
        data = new[4];
        for (i = 0; i < 4; i++) begin
            data[i] = 64'hD0D0_D0D0_D0D0_D0D0 + i;
        end
        enqueue_burst_write(10'h000, 2'b11, BURST_INCR4, data);
        execute_transactions(data.size());

        // BURST_WRAP8 (8 beats)
        data = new[8];
        for (i = 0; i < 8; i++) begin
            data[i] = 64'hE0E0_E0E0_E0E0_E0E0 + i;
        end
        enqueue_burst_write(10'h000, 2'b11, BURST_WRAP8, data);
        execute_transactions(data.size());

        // BURST_INCR8 (8 beats)
        data = new[8];
        for (i = 0; i < 8; i++) begin
            data[i] = 64'hF0F0_F0F0_F0F0_F0F0 + i;
        end
        enqueue_burst_write(10'h000, 2'b11, BURST_INCR8, data);
        execute_transactions(data.size());

        // BURST_WRAP16 (16 beats)
        data = new[16];
        for (i = 0; i < 16; i++) begin
            data[i] = 64'h1010_1010_1010_1010 + i;
        end
        enqueue_burst_write(10'h000, 2'b11, BURST_WRAP16, data);
        execute_transactions(data.size());

        // BURST_INCR16 (16 beats)
        data = new[16];
        for (i = 0; i < 16; i++) begin
            data[i] = 64'h2020_2020_2020_2020 + i;
        end
        enqueue_burst_write(10'h000, 2'b11, BURST_INCR16, data);
        execute_transactions(data.size());
    end
    endtask

    // exercise several burst types on reads (no data checking)
    task test_all_bursts_read;
    begin
        // 4-beat INCR4 read starting at 0x010
        enqueue_burst_read_nocheck(10'h010, 2'b11, BURST_INCR4, 4);
        execute_transactions(4);

        // 4-beat WRAP4 read
        enqueue_burst_read_nocheck(10'h010, 2'b11, BURST_WRAP4, 4);
        execute_transactions(4);

        // 8-beat INCR8 read
        enqueue_burst_read_nocheck(10'h010, 2'b11, BURST_INCR8, 8);
        execute_transactions(8);

        // 8-beat WRAP8 read
        enqueue_burst_read_nocheck(10'h010, 2'b11, BURST_WRAP8, 8);
        execute_transactions(8);
    end
    endtask

    // ----------------------------------------------------------------
    // Explicit BUSY test in the middle of a burst
    // ----------------------------------------------------------------
    // 4-beat INCR4 burst where we inject HTRANS_BUSY into the DUT in the middle.
    // Expectation: DUT's burst_state and beats_left HOLD during BUSY, then continue.
    task test_busy_in_burst;
        int i;
        int beats;
    begin
        beats       = 4;
        busy_inject = 1'b0;

        // dummy write data
        data = new[beats];
        for (i = 0; i < beats; i++) begin
            data[i] = 64'hBAD0_0000_0000_0000 + i;
        end

        // schedule a 4-beat INCR4 burst (no checking so we can mess with HTRANS)
        enqueue_burst_write_nocheck(10'h000, 2'b11, BURST_INCR4, data);

        fork
            // branch 1: let the BFM run the 4-beat burst
            begin : run_tx
                execute_transactions(beats);
            end

            // branch 2: after we see a SEQ beat at BFM side, inject BUSY into DUT for one cycle
            begin : inject_busy
                @(posedge clk);
                // wait until we are in the burst and seeing SEQ at the BFM side
                wait (hsel && hready && htrans == HTRANS_SEQ);

                // one more beat, then force BUSY at DUT
                @(posedge clk);
                busy_inject = 1'b1;      // DUT sees HTRANS_BUSY now
                @(posedge clk);
                busy_inject = 1'b0;      // back to BFM's HTRANS (SEQ)
            end
        join
    end
    endtask

    // ----------------------------------------------------------------
    // Main stimulus
    // ----------------------------------------------------------------
    initial begin
        // initialize non-AHB DUT inputs
        status_reg  = 8'hA5;
        output_data = 64'hDEAD_BEEF_DEAD_BEEF;
        err_reg     = 16'h0000;

        busy_inject = 1'b0;

        n_rst = 1'b1;
        reset_model();
        reset_dut();

        // 1) exercise all writes and reads
        test_all_writes();
        test_all_reads();

        // 2) burst behavior (all HBURST modes on writes)
        test_all_bursts_write();

        // 3) burst behavior on reads (no data checking)
        test_all_bursts_read();

        // 4) explicit BUSY test in the middle of a burst
        test_busy_in_burst();

        finish_transactions();
        repeat(10) @(posedge clk);
        $finish;
    end

endmodule

/* verilator coverage_on */
