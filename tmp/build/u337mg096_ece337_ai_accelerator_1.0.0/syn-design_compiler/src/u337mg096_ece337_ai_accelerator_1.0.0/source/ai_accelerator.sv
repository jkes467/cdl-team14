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

    // external signals to sram
    output logic wen, ren,
    input logic [31:0] rdata,
    output logic [31:0] wdata,
    output logic [9:0] addr,
    input logic [1:0] sram_state
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
        .is_weight(is_weight),
        .write_data(write_data)
    );

controller c0 (

);

logic get_weights, get_inputs, get_out, data_ready, out_done, wen, ren, occupancy_err;
logic [63:0] write_data, data;
logic [31:0] rdata, wdata;
logic [9:0] addr;
logic [1:0] sram_state;
logic [7:0] num_inputs;

sram_buffer buffer (
    .clk(clk),
    .n_rst(n_rst),
    .get_weights(get_weights),
    .get_inputs(get_inputs),
    .get_out(get_out),
    .write_enable(wr_en_push),
    .is_weight(is_weight),
    .handshake(handshake),
    .out_valid(output_valid_act),
    .data_ready(data_ready),
    .out_done(out_done),
    .output_valid(output_valid), // FIX it should be ored with to get the status register correct
    .occupancy_err(occupancy_err),
    .num_inputs(num_inputs),
    .wen(wen),
    .ren(ren),
    .write_data(write_data),
    .activations(activated_outputs),
    .data(data),
    .output_data(output_data),
    .rdata(rdata),
    .wdata(wdata),
    .addr(addr),
    .sram_state(sram_state)
);

controller control_unit (
    .clk(clk),
    .n_rst(n_rst),
    .ctrl_reg(ctrl_reg),
    .data_ready(data_ready),
    .out_done(out_done),
    .output_valid(output_valid),
    .occupancy_err(occupancy_err),
    .data(data),
    .num_inputs(num_inputs),
    .status_reg(status_reg),
    .error_reg(err_reg),
    .get_weights(get_weights),
    .get_inputs(get_inputs),
    .get_out(get_out),
    .in_valid(input_valid),
    .array_inputs(input_value),
    .load(load)
);

logic float;
logic [7:0] load;
logic [63:0] input_value;
logic input_valid;
logic output_valid;
logic [63:0] output_value_sys;

systolic_array sys (
    .clk(clk),
    .n_rst(n_rst),
    .float(float),
    .load(load),
    .input_value(input_value),
    .input_valid(input_valid),
    .output_valid(output_valid_sys),
    .output_value(output_value)
);

logic [63:0] bias_outputs;
logic output_valid_bias

bias_adder bias (
    .array_outputs(output_value), 
    .input_valid(output_valid_sys),
    .bias(bias_reg),
    .bias_outputs(bias_outputs), 
    .float(float)
    .output_valid(output_valid_bias)
);

logic [63:0] activation_outputs
logic output_valid_act;

activation act (
    .biased_inputs(bias_outputs),
    .input_valid(output_valid_bias),
    .activation_mode(act_mode),
    .float(float),
    .activated_outputs(activated_outputs),
    .output_valid(output_valid_act)
);
endmodule

