`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_ABA ();

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

    logic clk;
    logic n_rst;
    logic float;
    logic [7:0] load;
    logic [63:0] input_value;
    logic input_valid;
    logic [2:0] activation_mode;
    logic [63:0] bias;
    logic output_valid;
    logic [63:0] output_values;
    logic overflow;

    ABA aDUT(
    .clk(clk),
    .n_rst(n_rst),
    .float(float),
    .load(load),
    .input_value(input_value),
    .input_valid(input_valid),
    .activation_mode(activation_mode),
    .bias(bias),
    .output_valid(output_valid),
    .output_values(output_values),
    .overflow(overflow)
    );

    initial begin
        n_rst = 1;

        reset_dut;

        $finish;
    end
endmodule

/* verilator coverage_on */

