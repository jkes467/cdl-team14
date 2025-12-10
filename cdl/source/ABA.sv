`timescale 1ns / 10ps

module ABA #(
    // parameters
) (
    input logic clk;
    input logic n_rst;
    input logic float;
    input logic [7:0] load;
    input logic [63:0] input_value;
    input logic input_valid;
    input logic [2:0] activation_mode;
    input logic [63:0] bias;
    output logic output_valid;
    output logic [63:0] output_values;
    output logic overflow;
);

    logic o_valid0;
    logic o_valid1;
    logic [63:0] int_outvalue0;
    logic [63:0] int_outvalue1;
    logic bias_overflow;
    logic array_overflow;

    assign overflow = bias_overflow | array_overflow;

    systolic_array array(.clk(clk), .n_rst(n_rst), .float(float), .load(load), .input_value(input_value), 
    .input_valid(input_valid), .output_valid(o_valid0), .output_value(int_outvalue0), .overflow(array_overflow));

    bias_adder bias(.array_outputs(int_outvalue0),.float(float), .bias(bias), .input_valid(o_valid0), .output_valid(o_valid1), .bias_outputs(int_outvalue1), .overflow(bias_overflow));
    activation activation(.biased_inputs(int_outvalue1), .activation_mode(activation_mode), .float(float), .input_valid(o_valid1), .output_valid(output_valid), .activated_outputs(output_values));




endmodule

