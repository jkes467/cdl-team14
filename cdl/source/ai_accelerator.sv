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
        .err_reg(err_reg),
        .act_mode(act_mode),
        .handshake(handshake),
        .bias_reg(bias_reg),
        .ctrl_reg(ctrl_reg),
        .wr_en_push(wr_en_push),
        .is_weight(is_weight)
    );

endmodule

