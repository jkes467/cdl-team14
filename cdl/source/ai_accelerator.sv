`timescale 1ns / 10ps

module ai_accelerator #(
    // parameters
) (
    input clk, n_rst, hsel,
    input logic [9:0] haddr,
    input logic [2:0] htrans, hsize,
    input logic hwrite,
    input logic [63:0] hwdata,
    input logic [2:0] hburst,
    output logic [63:0] hrdata,
    output logic hresp,
    output logic hready
);

logic [7:0] status_reg, error_reg, ctrl_reg;
logic [63:0] bias_reg, output_data;
logic handshake, is_weight, wr_en_push;

ahb_sub subordinate(
        .clk(clk),
        .n_rst(n_rst),
        .hsel(hsel),
        .haddr(haddr),
        .htrans(htrans),
        .hsize(hsize),
        .hwrite(hwrite),
        .hwdata(hwdata),
        .hburst(hburst),
        .hready(hready),
        .hresp(hresp),
        .hrdata(hrdata),
        .status_reg(status_reg),
        .output_data(output_data),
        .err_reg(error_reg),
        .act_mode(act_mode),
        .handshake(handshake),
        .bias_reg(bias_reg),
        .ctrl_reg(ctrl_reg),
        .wr_en_push(wr_en_push),
        .is_weight(is_weight)
    );

controller c0 (

);

sram_buffer buffer (

);

logic float;
logic [7:0] load;
logic [63:0] input_value;
logic input_valid;
logic output_valid;
logic [63:0] output_value;

systolic_array sys (
    .clk(clk),
    .n_rst(n_rst),
    .float(float),
    .load(load),
    .input_value(input_value),
    .input_valid(input_valid),
    .output_valid(output_valid),
    .output_value(output_value)
);

logic [63:0] bias_outputs;

bias_adder bias (
    .array_outputs(output_value), 
    .bias(bias_reg),
    .bias_outputs(bias_outputs), 
    .float(float)
);

logic [63:0] activation_outputs

activation act (
    .biased_inputs(bias_outputs),
    .activation_mode(act_mode),
    .float(float),
    .activated_outputs(activated_outputs)
);
endmodule

