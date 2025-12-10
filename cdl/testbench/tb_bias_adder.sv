`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_bias_adder ();

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

    logic [63:0] array_outputs, bias, bias_outputs;
    logic float;
    bias_adder #() DUT (.array_outputs(array_outputs), .bias(bias), .bias_outputs(bias_outputs), .float(float));


    task identity_bias_integer;
    input integer seed;
    begin
        for(int i = 0; i<1000; i++) begin
            bias = {$random(seed),$random(seed)};
            array_outputs = 0;
            float = 0;
            #10;
            if(bias_outputs[7:0] != bias[7:0]) begin
                $display("Failed Bias Addition [7:0]");
            end
            if(bias_outputs[15:8] != bias[15:8]) begin
                $display("Failed Bias Addition [15:8]");
            end
            if(bias_outputs[23:16] != bias[23:16]) begin
                $display("Failed Bias Addition [23:16]");
            end
            if(bias_outputs[31:24] != bias[31:24]) begin
                $display("Failed Bias Addition [31:24]");
            end
            if(bias_outputs[39:32] != bias[39:32]) begin
                $display("Failed Bias Addition [39:32]");
            end
            if(bias_outputs[47:40] != bias[47:40]) begin
                $display("Failed Bias Addition [47:40]");
            end
            if(bias_outputs[55:48] != bias[55:48]) begin
                $display("Failed Bias Addition [55:48]");
            end
            if(bias_outputs[63:55] != bias[63:55]) begin
                $display("Failed Bias Addition [63:55]");
            end
        end
    end
    endtask

    initial begin
        n_rst = 1;

        reset_dut;
        identity_bias_integer(.seed(10015));
        $finish;
    end
endmodule

/* verilator coverage_on */

