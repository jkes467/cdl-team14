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
    logic [2:0] hburst;
    logic [63:0] hrdata;
    logic hresp;
    logic hready;
    logic wen, ren;
    logic [31:0] rdata, wdata;
    logic [9:0] addr;
    logic [1:0] sram_state;

    localparam [1:0] HTRANS_IDLE = 2'b00;
    localparam [1:0] HTRANS_BUSY = 2'b01;
    localparam [1:0] HTRANS_NONSEQ = 2'b10;
    localparam [1:0] HTRANS_SEQ = 2'b11;

    localparam [2:0] HBURST_SINGLE= 3'b000;
    localparam [2:0] HBURST_INCR = 3'b001;
    localparam [2:0] HBURST_WRAP4 = 3'b010;
    localparam [2:0] HBURST_INCR4 = 3'b011;
    localparam [2:0] HBURST_WRAP8 = 3'b100;
    localparam [2:0] HBURST_INCR8 = 3'b101;
    localparam [2:0] HBURST_WRAP16 = 3'b110;
    localparam [2:0] HBURST_INCR16= 3'b111;

    // ai_accelerator #() DUT (.clk(clk), .n_rst(n_rst), .hsel(hsel), .haddr(haddr), .htrans(htrans), .hsize(hsize), .hwrite(hwrite), .hwdata(hwdata), .hburst(hburst), .hrdata(hrdata), .hresp(hresp), .hready(hready), .address(addr), .read_enable(ren), .write_enable(wen), .write_data(wdata), .read_data(rdata), .sram_state(sram_state));

    ai_accelerator DUT (
        .clk(clk),
        .n_rst(n_rst),
        .hsel(hsel),
        .haddr(haddr),
        .htrans(htrans),
        .hsize(hsize),
        .hwrite(hwrite),
        .hwdata(hwdata),
        .hburst(hburst),
        .hrdata(hrdata),
        .hresp(hresp),
        .hready(hready),
        .wen(wen),
        .ren(ren),
        .rdata(rdata),
        .wdata(wdata),
        .addr(addr),
        .sram_state(sram_state)
    );
    task wait_hready;
    begin
        @(posedge clk);
        while(!hready) @(posedge clk);
    end
    endtask

    task check_data;
    begin
        @(posedge clk);
        hsel <= 1'b1;
        hwrite <= 1'b0;
        haddr <= 10'h23;
        htrans <= HTRANS_NONSEQ;
        hsize <= 2'b00;
        hburst <= HBURST_SINGLE;

        wait_hready();
        // poll until data is complete
        while(!hrdata[49]) @(posedge clk);
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

    task start_inference;
    begin
        @(posedge clk);
        // write to start inference
        ahb_single_write(10'h22, {16'b0, 8'h01, 40'b0});
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

    task ahb_single_write(input [9:0] addr,input [63:0] data);
    begin
        @(posedge clk);
        hsel <= 1'b1;
        hwrite <= 1'b1;
        haddr <= addr;
        htrans <= HTRANS_NONSEQ;
        hsize <= 2'b00;
        hburst <= HBURST_SINGLE;
        hwdata <= data;

        // @(posedge clk);
        // // hwrite <= 1'b0;
        // hsel <= 1'b0;

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
        ahb_single_write(10'h24, {56'b0, 8'h02});
        wait_hready();
        
    end
    endtask

    task load_weights();
    begin
        @(negedge clk);           
        ahb_single_write(10'h22, {16'b0, 8'h02, 40'b0});
        repeat(300)@(posedge clk);
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

    initial begin
        n_rst = 1;
    
        reset_dut;
        // ==================== Valid single transaction  =================
        write_weights(64'h0101_0101_0101_0101);
        write_inputs();
        write_bias();
        write_activation();
        load_weights();
        // start_inference();
        // check_data();
        
        // // error during inference
        // write_weights(64'hA00F_BC41_DEAD_BEEF);
        // fork
        //     begin
        //         check_data();
        //     end
        //     begin
        //         load_weights();
        //     end
        // join
        // // ================== inference before weight test ==================
        // reset_dut();
        // start_inference();
        // load_weights();
        // fork
        //     begin
        //     check_data();
        //     end
        //     begin
        //     while(!hresp) @(posedge clk);
        //     $display("Passed error inference before weight test");
        //     end
        // join


        $finish;
    end
endmodule

/* verilator coverage_on */

