`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_ai_accelerator ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        n_rst = 0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    logic hsel;
    logic [9:0] haddr;
    logic [1:0] htrans;
    logic [1:0] hsize;
    logic hwrite;
    logic [63:0] hwdata;
    logic hburst;
    logic [63:0] hrdata;
    logic hresp;
    logic hready;
    logic wen, ren;
    logic [31:0] rdata, wdata;
    logic [9:0] addr;
    logic [1:0] sram_state;


    ai_accelerator #() DUT (.clk(clk), .n_rst(n_rst), .hsel(hsel), .haddr(haddr), .htrans(htrans), .hsize(hsize), .hwrite(hwrite), .hwdata(hwdata), .hburst(hburst), .hrdata(hrdata), .hresp(hresp), .hready(hready), .address(addr), .read_enable(ren), .write_enable(wen), .write_data(wdata), .read_data(rdata), .sram_state(sram_state));

    task wait_hready;
    begin
        @(posedge clk);
        while(!hready) @(posedge clk);
    end
    endtask

    task check_data;
    begin
        @(posedge clk);
        // write to start inference
        ahb_single_write(10'h23, 8'h01);

        hsel <= 1'b1;
        hwrite <= 1'b0;
        haddr <= 10'h23;
        htrans <= HTRANS_NONSEQ;
        hsize <= 2'b00;
        hburst <= HBURST_SINGLE;

        wait_hready();
        // poll until data is complete
        while(!hrdata[48]) @(posedge clk);
        haddr <= 10'h23;
        wait_hready();
        // check data
        if(hrdata != 64'h0909_0909_0909_0909) begin
            $display("Failed Test");
        end
        else begin
            $display("Passed Test");
        end
        @(posedge clk);
    end
    endtask

    task ahb_single_write64(input [9:0] addr,input [63:0] data);
    begin
        @(posedge clk);
        hsel <= 1'b1;
        hwrite <= 1'b1;
        haddr <= addr;
        htrans <= HTRANS_NONSEQ;
        hsize <= 2'b11;
        hburst <= HBURST_SINGLE;
        hwdata <= data;

        wait_hready();

        @(posedge clk);
        hsel <=1'b0;
        htrans <= HTRANS_IDLE;
        hwrite <= 1'b0;
    end
    endtask

    task ahb_single_write(input [9:0] addr,input [7:0] data);
    begin
        @(posedge clk);
        hsel <= 1'b1;
        hwrite <= 1'b1;
        haddr <= addr;
        htrans <= HTRANS_NONSEQ;
        hsize <= 2'b00;
        hburst <= HBURST_SINGLE;
        hwdata <= data;

        wait_hready();

        @(posedge clk);
        hsel <=1'b0;
        htrans <= HTRANS_IDLE;
        hwrite <= 1'b0;
    end
    endtask

    // single read: valid read addresses 0x010,0x018,0x020,0x022,0x023,0x024
    task ahb_single_read(input [9:0] addr,input [1:0] size,output [63:0] data_out);
    begin
        @(posedge clk);
        hsel <= 1'b1;
        hwrite <= 1'b0;
        haddr <= addr;
        htrans <= HTRANS_NONSEQ;
        hsize <= size;
        hburst <= HBURST_SINGLE;

        wait_hready();

        data_out=hrdata;

        @(posedge clk);
        hsel <= 1'b0;
        htrans <= HTRANS_IDLE;
    end
    endtask

    task write_weights(input logic [63:0] weights);
    begin
        @(negedge clk);
        for(int i = 0; i<8;i++) begin
            @(negedge clk);
            ahb_single_write64(i, weights);
            wait_hready();
        end
    end
    endtask

    task write_inputs();
    begin
        @(negedge clk);
        for(int i = 8; i<16;i++) begin
            @(negedge clk);
            ahb_single_write64(i, 64'h0101_0101_0101_0101);
            wait_hready();
        end
    end
    endtask

    task write_bias();
    begin
        @(negedge clk);
        for(int i = 16; i<24;i++) begin
            @(negedge clk);
            ahb_single_write64(i, 64'h0101_0101_0101_0101);
            wait_hready();
        end
    end
    endtask

    task write_activation();
    begin
        @(negedge clk);           
        ahb_single_write(10'h24, 8'h02);
        wait_hready();
        
    end
    endtask

    task load_weights();
    begin
        @(negedge clk);           
        ahb_single_write(10'h22, 8'h02);
        wait_hready();

    end
    endtask



    
    sram1024x32_wrapper sram (
        .clk(clk),
        .n_rst(n_rst),
        .address(addr),
        .read_enable(ren),
        .write_enable(wen),
        .write_data(wdata),
        .read_data(rdata),
        .sram_state(sram_state)
    );
    
    // Supporting Tasks
    task reset_model;
        BFM.reset_model();
    endtask

    // Read from a register without checking the value
    task enqueue_poll ( input logic [3:0] addr, input logic [1:0] size );
    logic [31:0] data [];
        begin
            data = new [1];
            data[0] = {32'hXXXX};
            //              Fields: hsel,  R/W, addr, data, exp err,         size, burst, chk prdata or not
            BFM.enqueue_transaction(1'b1, 1'b0, addr, data,    1'b0, {1'b0, size},  3'b0,            1'b0);
        end
    endtask

    // Read from a register until a requested value is observed
    task poll_until ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] data);
        int iters;
        begin
            for (iters = 0; iters < TIMEOUT; iters++) begin
                enqueue_poll(addr, size);
                execute_transactions(1);
                if(BFM.get_last_read() == data) break;
            end
            if(iters >= TIMEOUT) begin
                $error("Bus polling timeout hit.");
            end
        end
    endtask

    // Read Transaction, verifying a specific value is read
    task enqueue_read ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] exp_read );
        logic [31:0] data [];
        begin
            data = new [1];
            data[0] = exp_read;
            BFM.enqueue_transaction(1'b1, 1'b0, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b1);
        end
    endtask

    // Write Transaction
    task enqueue_write ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] wdata );
        logic [31:0] data [];
        begin
            data = new [1];
            data[0] = wdata;
            BFM.enqueue_transaction(1'b1, 1'b1, addr, data, 1'b0, {2'b0, size}, 3'b0, 1'b0);
        end
    endtask

    // Write Transaction Intended for a different subordinate from yours
    task enqueue_fakewrite ( input logic [3:0] addr, input logic [1:0] size, input logic [31:0] wdata );
        logic [31:0] data [];
        begin
            data = new [1];
            data[0] = wdata;
            BFM.enqueue_transaction(1'b0, 1'b1, addr, data, 1'b0, {1'b0, size}, 3'b0, 1'b0);
        end
    endtask

    // Create a burst read of size based on the burst type.
    // If INCR, burst size dependent on dynamic array size
    task enqueue_burst_read ( input logic [3:0] base_addr, input logic [1:0] size, input logic [2:0] burst, input logic [31:0] data [] );
        BFM.enqueue_transaction(1'b1, 1'b0, base_addr, data, 1'b0, {1'b0, size}, burst, 1'b1);
    endtask

    // Create a burst write of size based on the burst type.
    task enqueue_burst_write ( input logic [3:0] base_addr, input logic [1:0] size, input logic [2:0] burst, input logic [31:0] data [] );
        BFM.enqueue_transaction(1'b1, 1'b1, base_addr, data, 1'b0, {1'b0, size}, burst, 1'b1);
    endtask

    // Run n transactions, where a k-beat burst counts as k transactions.
    task execute_transactions (input int num_transactions);
        BFM.run_transactions(num_transactions);
    endtask

    // Finish the current transaction
    task finish_transactions();
        BFM.wait_done();
    endtask


    initial begin
        n_rst = 1;
    
        reset_dut;
        write_weights(64'h0101_0101_0101_0101);
        write_inputs();
        write_bias();
        write_activation();
        load_weights();
        check_data();
        // ==================== Valid single transaction above =================
        fork
            begin
                check_data();
            end
            begin
                write_weights(64'hA00F_BC41_DEAD_BEEF);
                load_weights();
            end
        join

        $finish;
    end
endmodule

/* verilator coverage_on */

