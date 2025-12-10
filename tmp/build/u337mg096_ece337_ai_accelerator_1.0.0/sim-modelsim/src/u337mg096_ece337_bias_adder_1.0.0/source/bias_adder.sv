`timescale 1ns / 10ps

module bias_adder #(
    // parameters
) (
    input logic [63:0] array_outputs,
    input logic signed [63:0] bias,
    input logic float,
    input logic input_valid,
    output logic output_valid,
    output logic signed [63:0] bias_outputs,
    output logic overflow
);

logic [63:0] int_out;
logic [63:0] float_out;
logic [7:0] overflow_float, overflow_int;
always_comb begin
    if(!float) begin
        bias_outputs = int_out;
    end
    else begin
        bias_outputs = float_out;
    end
end
assign overflow = overflow_float > 0 ? 1:0;
signed_multiplier A70(  .weight(8'h38), .value(array_outputs[7:0]  ), .cumulative(bias[7:0]  ), .float(1'b1), .out(float_out[7:0]  ), .overflow(overflow_float[0]));
signed_multiplier A158( .weight(8'h38), .value(array_outputs[15:8] ), .cumulative(bias[15:8] ), .float(1'b1), .out(float_out[15:8] ), .overflow(overflow_float[1]));
signed_multiplier A2316(.weight(8'h38), .value(array_outputs[23:16]), .cumulative(bias[23:16]), .float(1'b1), .out(float_out[23:16]), .overflow(overflow_float[2]));
signed_multiplier A3124(.weight(8'h38), .value(array_outputs[31:24]), .cumulative(bias[31:24]), .float(1'b1), .out(float_out[31:24]), .overflow(overflow_float[3]));
signed_multiplier A3932(.weight(8'h38), .value(array_outputs[39:32]), .cumulative(bias[39:32]), .float(1'b1), .out(float_out[39:32]), .overflow(overflow_float[4]));
signed_multiplier A4740(.weight(8'h38), .value(array_outputs[47:40]), .cumulative(bias[47:40]), .float(1'b1), .out(float_out[47:40]), .overflow(overflow_float[5]));
signed_multiplier A5548(.weight(8'h38), .value(array_outputs[55:48]), .cumulative(bias[55:48]), .float(1'b1), .out(float_out[55:48]), .overflow(overflow_float[6]));
signed_multiplier A6356(.weight(8'h38), .value(array_outputs[63:56]), .cumulative(bias[63:56]), .float(1'b1), .out(float_out[63:56]), .overflow(overflow_float[7]));


signed_multiplier U70(  .weight(8'h01), .value(array_outputs[7:0]  ), .cumulative(bias[7:0]  ), .float(1'b0), .out(int_out[7:0]  ), .overflow(overflow_int[0]));
signed_multiplier U158( .weight(8'h01), .value(array_outputs[15:8] ), .cumulative(bias[15:8] ), .float(1'b0), .out(int_out[15:8] ), .overflow(overflow_int[1]));
signed_multiplier U2316(.weight(8'h01), .value(array_outputs[23:16]), .cumulative(bias[23:16]), .float(1'b0), .out(int_out[23:16]), .overflow(overflow_int[2]));
signed_multiplier U3124(.weight(8'h01), .value(array_outputs[31:24]), .cumulative(bias[31:24]), .float(1'b0), .out(int_out[31:24]), .overflow(overflow_int[3]));
signed_multiplier U3932(.weight(8'h01), .value(array_outputs[39:32]), .cumulative(bias[39:32]), .float(1'b0), .out(int_out[39:32]), .overflow(overflow_int[4]));
signed_multiplier U4740(.weight(8'h01), .value(array_outputs[47:40]), .cumulative(bias[47:40]), .float(1'b0), .out(int_out[47:40]), .overflow(overflow_int[5]));
signed_multiplier U5548(.weight(8'h01), .value(array_outputs[55:48]), .cumulative(bias[55:48]), .float(1'b0), .out(int_out[55:48]), .overflow(overflow_int[6]));
signed_multiplier U6356(.weight(8'h01), .value(array_outputs[63:56]), .cumulative(bias[63:56]), .float(1'b0), .out(int_out[63:56]), .overflow(overflow_int[7]));
endmodule

