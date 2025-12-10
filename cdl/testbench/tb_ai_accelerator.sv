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
    ai_accelerator #() DUT (.clk(clk), .n_rst(n_rst), .hsel(hsel), .haddr(haddr), .htrans(htrans), .hsize(hsize), .hwrite(hwrite), .hwdata(hwdata), .hburst(hburst), .hrdata(hrdata), .hresp(hresp), .hready(hready));

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

