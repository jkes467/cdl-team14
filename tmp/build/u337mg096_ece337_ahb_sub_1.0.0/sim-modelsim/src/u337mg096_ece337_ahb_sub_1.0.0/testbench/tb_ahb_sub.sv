// `timescale 1ns / 10ps
// /* verilator coverage_off */

// module tb_ahb_sub;

//     localparam time CLK_PERIOD=10ns;

//     logic clk,n_rst;

//     logic hsel;
//     logic hwrite;
//     logic [9:0] haddr;
//     logic [1:0] htrans;
//     logic [1:0] hsize;
//     logic [63:0] hwdata;
//     logic [2:0] hburst;
//     logic [7:0] status_reg;
//     logic [63:0] output_data;
//     logic [15:0] err_reg;
//     logic [2:0] act_mode;
//     logic hready;
//     logic hresp;
//     logic [63:0] hrdata;
//     logic handshake;
//     logic [63:0] bias_reg;
//     logic [7:0] ctrl_reg;
//     logic wr_en_push;
//     logic is_weight;

//     logic [63:0] rdata;
//     integer i;

//     initial begin
//         $dumpfile("waveform.vcd");
//         $dumpvars;
//     end

//     always begin
//         clk=1'b0;
//         #(CLK_PERIOD/2.0);
//         clk=1'b1;
//         #(CLK_PERIOD/2.0);
//     end

//     ahb_sub DUT(
//         .clk(clk),
//         .n_rst(n_rst),
//         .hsel(hsel),
//         .hwrite(hwrite),
//         .haddr(haddr),
//         .htrans(htrans),
//         .hsize(hsize),
//         .hwdata(hwdata),
//         .hburst(hburst),
//         .status_reg(status_reg),
//         .output_data(output_data),
//         .err_reg(err_reg),
//         .act_mode(act_mode),
//         .hready(hready),
//         .hresp(hresp),
//         .hrdata(hrdata),
//         .handshake(handshake),
//         .bias_reg(bias_reg),
//         .ctrl_reg(ctrl_reg),
//         .wr_en_push(wr_en_push),
//         .is_weight(is_weight)
//     );

//     localparam [1:0] HTRANS_IDLE = 2'b00;
//     localparam [1:0] HTRANS_BUSY = 2'b01;
//     localparam [1:0] HTRANS_NONSEQ = 2'b10;
//     localparam [1:0] HTRANS_SEQ = 2'b11;

//     localparam [2:0] HBURST_SINGLE= 3'b000;
//     localparam [2:0] HBURST_INCR = 3'b001;
//     localparam [2:0] HBURST_WRAP4 = 3'b010;
//     localparam [2:0] HBURST_INCR4 = 3'b011;
//     localparam [2:0] HBURST_WRAP8 = 3'b100;
//     localparam [2:0] HBURST_INCR8 = 3'b101;
//     localparam [2:0] HBURST_WRAP16 = 3'b110;
//     localparam [2:0] HBURST_INCR16= 3'b111;

//     task reset_dut;
//     begin
//         n_rst = 1'b0;
//         hsel = 1'b0;
//         hwrite = 1'b0;
//         haddr = 10'h000;
//         htrans = HTRANS_IDLE;
//         hsize = 2'b11;
//         hwdata ='0;
//         hburst = HBURST_SINGLE;
//         status_reg = 8'h00;
//         output_data = 64'hDEAD_BEEF_DEAD_BEEF;
//         err_reg = 16'h0000;

//         @(posedge clk);
//         @(posedge clk);
//         n_rst=1'b1;
//         @(posedge clk);
//         @(posedge clk);
//     end
//     endtask

//     task wait_hready;
//     begin
//         @(posedge clk);
//         while(!hready) @(posedge clk);
//     end
//     endtask

//     // single 64-bit write to valid write regs
//     task ahb_single_write64(input [9:0] addr,input [63:0] data);
//     begin
//         @(posedge clk);
//         hsel <= 1'b1;
//         hwrite <= 1'b1;
//         haddr <= addr;
//         htrans <= HTRANS_NONSEQ;
//         hsize <= 2'b11;
//         hburst <= HBURST_SINGLE;
//         hwdata <= data;

//         wait_hready();

//         @(posedge clk);
//         hsel <=1'b0;
//         htrans <= HTRANS_IDLE;
//         hwrite <= 1'b0;
//     end
//     endtask

//     task ahb_single_write8(input [9:0] addr,input [7:0] data);
//     begin
//         @(posedge clk);
//         hsel <= 1'b1;
//         hwrite <= 1'b1;
//         haddr <= addr;
//         htrans <= HTRANS_NONSEQ;
//         hsize <= 2'b00;
//         hburst <= HBURST_SINGLE;
//         hwdata <= data;

//         wait_hready();

//         @(posedge clk);
//         hsel <=1'b0;
//         htrans <= HTRANS_IDLE;
//         hwrite <= 1'b0;
//     end
//     endtask

//     // single read: valid read addresses 0x010,0x018,0x020,0x022,0x023,0x024
//     task ahb_single_read(input [9:0] addr,input [1:0] size,output [63:0] data_out);
//     begin
//         @(posedge clk);
//         hsel <= 1'b1;
//         hwrite <= 1'b0;
//         haddr <= addr;
//         htrans <= HTRANS_NONSEQ;
//         hsize <= size;
//         hburst <= HBURST_SINGLE;

//         wait_hready();

//         data_out=hrdata;

//         @(posedge clk);
//         hsel <= 1'b0;
//         htrans <= HTRANS_IDLE;
//     end
//     endtask

//     task ahb_single_read_busy(input [9:0] addr,input [1:0] size,output [63:0] data_out);
//     begin
//         @(posedge clk);
//         @(posedge clk);
//         @(posedge clk);
//         @(posedge clk);
//         @(posedge clk);
//         hsel <= 1'b1;
//         hwrite <= 1'b0;
//         haddr <= addr;
//         htrans <= HTRANS_BUSY;
//         hsize <= size;
//         hburst <= HBURST_SINGLE;
//         @(posedge clk);
//         @(posedge clk);
//         @(posedge clk);
//         @(posedge clk);
//         htrans <= HTRANS_NONSEQ;
//         wait_hready();

//         data_out=hrdata;

//         @(posedge clk);
//         hsel <= 1'b0;
//         htrans <= HTRANS_IDLE;
//     end
//     endtask

//     // burst write over valid write addresses: use 0x000,0x008,0x010
//     task ahb_burst_write64(input [2:0] burst_mode,input int beats);
//         logic [9:0] addr;
//     begin
//         addr=10'h000;

//         @(posedge clk);
//         hsel <= 1'b1;
//         hwrite <= 1'b1;
//         htrans <= HTRANS_NONSEQ;
//         hburst <= burst_mode;
//         hsize <= 2'b11;
//         haddr <= addr;
//         hwdata <= 64'h1000_0000_0000_0000;

//         wait_hready();

//         for(i = 1; i < beats; i = i + 1) begin
//             addr = addr + 10'h008;

//             @(posedge clk);
//             htrans <= HTRANS_SEQ;
//             haddr <= addr;
//             hwdata <= 64'h1000_0000_0000_0000+i;

//             wait_hready();
//         end

//         @(posedge clk);
//         hsel <= 1'b0;
//         htrans <= HTRANS_IDLE;
//         hwrite <= 1'b0;
//     end
//     endtask

//     // burst read over 0x010,0x018
//     task ahb_burst_read64(input [2:0] burst_mode, input int beats);
//         logic [9:0] addr;
//     begin
//         addr = 10'h010;

//         @(posedge clk);
//         hsel <= 1'b1;
//         hwrite <= 1'b0;
//         htrans <= HTRANS_NONSEQ;
//         hburst <= burst_mode;
//         hsize <= 2'b11;
//         haddr <= addr;

//         wait_hready();
//         rdata = hrdata;

//         for(i = 1; i < beats; i = i + 1) begin
//             addr = addr + 10'h008;

//             @(posedge clk);
//             htrans <= HTRANS_SEQ;
//             haddr <= addr;

//             wait_hready();
//             rdata = hrdata;
//         end

//         @(posedge clk);
//         hsel <= 1'b0;
//         htrans <= HTRANS_IDLE;
//     end
//     endtask

//     task ahb_burst_write64_busy(input [2:0] burst_mode,input int beats);
//         logic [9:0] addr;
//     begin
//         addr=10'h000;

//         @(posedge clk);
//         hsel <= 1'b1;
//         hwrite <= 1'b1;
//         htrans <= HTRANS_NONSEQ;
//         hburst <= burst_mode;
//         hsize <= 2'b11;
//         haddr <= addr;
//         hwdata <= 64'h1000_0000_0000_0000;

//         wait_hready();

//         for(i = 1; i < beats; i = i + 1) begin
//             addr = addr + 10'h008;

//             @(posedge clk);
//             htrans <= HTRANS_BUSY;
//             haddr <= addr;
//             hwdata <= 64'h1000_0000_0000_0000+i;

//             @(posedge clk);
//             @(posedge clk);

//             htrans <= HTRANS_SEQ;
//             haddr <= addr;
//             hwdata <= 64'h1000_0000_0000_0000+i;
//             wait_hready();
//         end

//         @(posedge clk);
//         hsel <= 1'b0;
//         htrans <= HTRANS_IDLE;
//         hwrite <= 1'b0;
//     end
//     endtask

//     task test_all_writes;
//     begin
//         ahb_single_write64(10'h000,64'h0001_0001_0001_0001);

//         ahb_single_write64(10'h008,64'h0002_0002_0002_0002);

//         ahb_single_write64(10'h010,64'h0003_0003_0003_0003);

//         ahb_single_write8(10'h022,64'h0000_0000_5500_0000);

//         ahb_single_write8(10'h024,64'h0000_0000_0000_000F);

//         ahb_single_write64(10'h018,64'h0002_0002_0002_0002);
//     end
//     endtask

//      task test_all_reads;
//     begin
//         ahb_single_read(10'h010,2'b11,rdata);

//         ahb_single_read(10'h018,2'b11,rdata);

//         ahb_single_read(10'h020,2'b01,rdata);

//         ahb_single_read(10'h022,2'b00,rdata);

//         ahb_single_read(10'h023,2'b00,rdata);

//         ahb_single_read(10'h024,2'b00,rdata);

//         ahb_single_read(10'h000,2'b11,rdata);
//     end
//     endtask

//     initial begin
//         n_rst = 1'b1;
//         hsel = 1'b0;
//         hwrite = 1'b0;
//         haddr = 10'h000;
//         htrans = HTRANS_IDLE;
//         hsize = 2'b11;
//         hwdata = '0;
//         hburst = HBURST_SINGLE;
//         status_reg = 8'h00;
//         output_data = 64'hDEAD_BEEF_DEAD_BEEF;
//         err_reg = 16'h0000;

//         reset_dut();

//         // burst writes using valid write addresses (3 beats: 0x000,0x008,0x010)
//         ahb_burst_write64(HBURST_INCR4,3);
//         ahb_burst_write64(HBURST_WRAP4,3);
//         ahb_burst_write64(HBURST_INCR8,3);
//         ahb_burst_write64(HBURST_WRAP8,3);
//         ahb_burst_write64(HBURST_INCR16,3);
//         ahb_burst_write64(HBURST_WRAP16,3);

//         // burst reads using valid read addresses (2 beats: 0x010,0x018)
//         ahb_burst_read64(HBURST_INCR4,2);
//         ahb_burst_read64(HBURST_WRAP4,2);
//         ahb_burst_read64(HBURST_INCR8,2);
//         ahb_burst_read64(HBURST_WRAP8,2);
//         ahb_burst_read64(HBURST_INCR16,2);
//         ahb_burst_read64(HBURST_WRAP16,2);

//         test_all_reads();
//         test_all_writes();

//         ahb_single_read_busy(10'h18,2'h11, rdata);

//         repeat(10) @(posedge clk);
//         $finish;
//     end

// endmodule

// /* verilator coverage_on */

`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_ahb_sub;

    localparam CLK_PERIOD = 10ns;
    localparam TIMEOUT    = 1000;

    localparam BURST_SINGLE = 3'd0;
    localparam BURST_INCR   = 3'd1;
    localparam BURST_WRAP4  = 3'd2;
    localparam BURST_INCR4  = 3'd3;
    localparam BURST_WRAP8  = 3'd4;
    localparam BURST_INCR8  = 3'd5;
    localparam BURST_WRAP16 = 3'd6;
    localparam BURST_INCR16 = 3'd7;

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
    logic [2:0]  hsize;      // full 3-bit HSIZE for BFM
    logic [2:0]  hburst;
    logic [1:0]  htrans;
    logic        hwrite;
    logic [63:0] hwdata;
    logic [63:0] hrdata_bus;
    logic        hresp;
    logic        hready;

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
        .htrans     (htrans),
        .hsize      (hsize[1:0]),   // DUT only uses 2 LSBs
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
        // 4-beat INCR read starting at 0x010
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
    // Main stimulus
    // ----------------------------------------------------------------
    initial begin
        // initialize non-AHB DUT inputs
        status_reg  = 8'hA5;
        output_data = 64'hDEAD_BEEF_DEAD_BEEF;
        err_reg     = 16'h0000;

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

        finish_transactions();
        repeat(10) @(posedge clk);
        $finish;
    end

endmodule

/* verilator coverage_on */
