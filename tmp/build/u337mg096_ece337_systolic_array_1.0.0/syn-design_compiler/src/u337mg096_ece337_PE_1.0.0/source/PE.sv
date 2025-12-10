`timescale 1ns / 10ps

module PE (
    input clk, n_rst,
    input logic load,
    input logic [7:0] input_value,
    input logic [7:0] input_weight,
    input logic [7:0] cumulative,
    input logic float,
    input  logic input_valid,
    output logic output_valid,
    output logic [7:0] pass_value,
    output logic [7:0] sum_out,
    output logic overflow
);

    logic [7:0] weight;
    logic [7:0] next_weight;
    logic [7:0] value;
    logic [7:0] next_out;
    logic next_valid;
    logic next_overflow;
    signed_multiplier s0(.weight(weight), .value(value), .cumulative(cumulative), .out(next_out), .float(float), .overflow(next_overflow));
    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            weight <= 0;
            value <= 0;
            sum_out <= 0;
            output_valid <= 0;
            overflow <= 0;
        end
        else begin
            overflow <= next_overflow;
            weight <= next_weight;
            value <= input_value;
            output_valid <= input_valid;
            // this is a built in register for the layer between PE's
            sum_out <= next_out;
        end
    end
    always_comb begin
        if(load) begin
            next_weight = input_weight;
        end
        else begin
            next_weight = weight;
        end
        pass_value = value;
    end
    


endmodule

