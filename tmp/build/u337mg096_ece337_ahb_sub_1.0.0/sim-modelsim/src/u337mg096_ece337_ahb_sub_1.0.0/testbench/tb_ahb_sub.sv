`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_ahb_sub;

    localparam time CLK_PERIOD=10ns;

    logic clk,n_rst;

    logic hsel;
    logic hwrite;
    logic [9:0] haddr;
    logic [1:0] htrans;
    logic [1:0] hsize;
    logic [63:0] hwdata;
    logic [2:0] hburst;
    logic [7:0] status_reg;
    logic [63:0] output_data;
    logic [15:0] err_reg;
    logic [2:0] act_mode;
    logic hready;
    logic hresp;
    logic [63:0] hrdata;
    logic handshake;
    logic [63:0] bias_reg;
    logic [7:0] ctrl_reg;
    logic wr_en_push;
    logic is_weight;

    logic [63:0] rdata;
    integer i;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    always begin
        clk=1'b0;
        #(CLK_PERIOD/2.0);
        clk=1'b1;
        #(CLK_PERIOD/2.0);
    end

    ahb_sub DUT(
        .clk(clk),
        .n_rst(n_rst),
        .hsel(hsel),
        .hwrite(hwrite),
        .haddr(haddr),
        .htrans(htrans),
        .hsize(hsize),
        .hwdata(hwdata),
        .hburst(hburst),
        .status_reg(status_reg),
        .output_data(output_data),
        .err_reg(err_reg),
        .act_mode(act_mode),
        .hready(hready),
        .hresp(hresp),
        .hrdata(hrdata),
        .handshake(handshake),
        .bias_reg(bias_reg),
        .ctrl_reg(ctrl_reg),
        .wr_en_push(wr_en_push),
        .is_weight(is_weight)
    );

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

    task reset_dut;
    begin
        n_rst = 1'b0;
        hsel = 1'b0;
        hwrite = 1'b0;
        haddr = 10'h000;
        htrans = HTRANS_IDLE;
        hsize = 2'b11;
        hwdata ='0;
        hburst = HBURST_SINGLE;
        status_reg = 8'h00;
        output_data = 64'hDEAD_BEEF_DEAD_BEEF;
        err_reg = 16'h0000;

        @(posedge clk);
        @(posedge clk);
        n_rst=1'b1;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    task wait_hready;
    begin
        @(posedge clk);
        while(!hready) @(posedge clk);
    end
    endtask

    // single 64-bit write to valid write regs
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

    // burst write over valid write addresses: use 0x000,0x008,0x010
    task ahb_burst_write64(input [2:0] burst_mode,input int beats);
        logic [9:0] addr;
    begin
        addr=10'h000;

        @(posedge clk);
        hsel <= 1'b1;
        hwrite <= 1'b1;
        htrans <= HTRANS_NONSEQ;
        hburst <= burst_mode;
        hsize <= 2'b11;
        haddr <= addr;
        hwdata <= 64'h1000_0000_0000_0000;

        wait_hready();

        for(i = 1; i < beats; i = i + 1) begin
            addr = addr + 10'h008;

            @(posedge clk);
            htrans <= HTRANS_SEQ;
            haddr <= addr;
            hwdata <= 64'h1000_0000_0000_0000+i;

            wait_hready();
        end

        @(posedge clk);
        hsel <= 1'b0;
        htrans <= HTRANS_IDLE;
        hwrite <= 1'b0;
    end
    endtask

    // burst read over 0x010,0x018
    task ahb_burst_read64(input [2:0] burst_mode, input int beats);
        logic [9:0] addr;
    begin
        addr = 10'h010;

        @(posedge clk);
        hsel <= 1'b1;
        hwrite <= 1'b0;
        htrans <= HTRANS_NONSEQ;
        hburst <= burst_mode;
        hsize <= 2'b11;
        haddr <= addr;

        wait_hready();
        rdata = hrdata;

        for(i = 1; i < beats; i = i + 1) begin
            addr = addr + 10'h008;

            @(posedge clk);
            htrans <= HTRANS_SEQ;
            haddr <= addr;

            wait_hready();
            rdata = hrdata;
        end

        @(posedge clk);
        hsel <= 1'b0;
        htrans <= HTRANS_IDLE;
    end
    endtask

    task test_all_writes;
    begin
        ahb_single_write64(10'h000,64'h0001_0001_0001_0001);

        ahb_single_write64(10'h008,64'h0002_0002_0002_0002);

        ahb_single_write64(10'h010,64'h0003_0003_0003_0003);

        ahb_single_write64(10'h022,64'h0000_0000_5500_0000);

        ahb_single_write64(10'h024,64'h0000_0000_0000_000F);

        ahb_single_write64(10'h018,64'h0002_0002_0002_0002);
    end
    endtask

     task test_all_reads;
    begin
        ahb_single_read(10'h010,2'b11,rdata);

        ahb_single_read(10'h018,2'b11,rdata);

        ahb_single_read(10'h020,2'b01,rdata);

        ahb_single_read(10'h022,2'b00,rdata);

        ahb_single_read(10'h023,2'b00,rdata);

        ahb_single_read(10'h024,2'b00,rdata);

        ahb_single_read(10'h000,2'b11,rdata);
    end
    endtask

    initial begin
        n_rst = 1'b1;
        hsel = 1'b0;
        hwrite = 1'b0;
        haddr = 10'h000;
        htrans = HTRANS_IDLE;
        hsize = 2'b11;
        hwdata = '0;
        hburst = HBURST_SINGLE;
        status_reg = 8'h00;
        output_data = 64'hDEAD_BEEF_DEAD_BEEF;
        err_reg = 16'h0000;

        reset_dut();

        // burst writes using valid write addresses (3 beats: 0x000,0x008,0x010)
        ahb_burst_write64(HBURST_INCR4,3);
        ahb_burst_write64(HBURST_WRAP4,3);
        ahb_burst_write64(HBURST_INCR8,3);
        ahb_burst_write64(HBURST_WRAP8,3);
        ahb_burst_write64(HBURST_INCR16,3);
        ahb_burst_write64(HBURST_WRAP16,3);

        // burst reads using valid read addresses (2 beats: 0x010,0x018)
        ahb_burst_read64(HBURST_INCR4,2);
        ahb_burst_read64(HBURST_WRAP4,2);
        ahb_burst_read64(HBURST_INCR8,2);
        ahb_burst_read64(HBURST_WRAP8,2);
        ahb_burst_read64(HBURST_INCR16,2);
        ahb_burst_read64(HBURST_WRAP16,2);

        test_all_reads();
        test_all_writes();

        repeat(10) @(posedge clk);
        $finish;
    end

endmodule

/* verilator coverage_on */
