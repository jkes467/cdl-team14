`timescale 1ns / 10ps

module sync #(
    parameter RST_VAL = '0
) (
    input logic clk, n_rst, async_in,
    output logic sync_out
);
    logic [1:0] q, n_q;

    always_ff @ (posedge clk, negedge n_rst) begin
        if (~n_rst) begin
            q[0] <= RST_VAL;
            q[1] <= RST_VAL;
            
        end else begin
            q <= n_q;
        end
    end

    always_comb begin
        n_q = {q[0], async_in};
        sync_out = q[1];
    end


endmodule

