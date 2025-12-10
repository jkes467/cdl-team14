`timescale 1ns / 10ps

module activation #(
    // parameters
) (
    input logic [63:0] biased_inputs,
    input logic [2:0] activation_mode,
    input logic float,
    input logic input_valid,
    output logic output_valid,
    output logic [63:0] activated_outputs
);
logic [63:0] leaky_out;
logic [7:0] nan_overflow;

assign output_valid = input_valid;
genvar g;
generate
    for(g = 0; g < 8; g = g + 1) begin : ACTIVATION_GEN
        localparam int HI = (8*(g+1))-1;
        localparam int LO =  8*g;

        always_comb begin
                case(activation_mode)
                    3'b000: begin // relu
                        if(!biased_inputs[HI]) begin
                            activated_outputs[HI:LO] = biased_inputs[HI:LO];
                        end
                        else begin
                            activated_outputs[HI:LO] = 8'h00;
                        end
                    end

                    3'b001: begin // threshold/binary
                        if(!float) begin
                            if( ((!biased_inputs[HI] && biased_inputs[HI-1:LO] > 8'd63) || (biased_inputs[HI] && biased_inputs[HI-1:LO] < 8'd63) )) begin
                                activated_outputs[HI:LO] = 8'hFF;
                            end
                            else begin
                                activated_outputs[HI:LO] = 8'h00;
                            end
                        end
                        else begin
                            
                            if(biased_inputs[HI-1:LO+3] > 4'hA) begin
                                activated_outputs[HI:LO] = 8'hFF;
                            end
                            else begin
                                activated_outputs[HI:LO] = 8'h00;
                            end
                        end
                    end
            
                    3'b010: begin // identity
                        activated_outputs[HI:LO] = biased_inputs[HI:LO];
                    end
            
                    3'b011: begin // leaky rely alpha =. .5
                        if(!float) begin
                            if(!biased_inputs[HI]) begin
                                activated_outputs[HI:LO] = biased_inputs[HI:LO];
                            end
                            else begin
                                activated_outputs[HI:LO] = {biased_inputs[HI],biased_inputs[HI:LO+1]};
                            end
                        end
                        else begin
                            if(!biased_inputs[HI]) begin
                                activated_outputs[HI:LO] = biased_inputs[HI:LO];
                            end
                            else begin
                                activated_outputs[HI:LO] = leaky_out[HI:LO];
                            end
                        end
                    end

                    default: begin
                        activated_outputs[HI:LO] = 8'h00;
                    end
                endcase
        end
    end
endgenerate

// constant weights of .5 and cumulatives of 0
multiply_by_2 O70(  .weight(8'h30), .value(biased_inputs[7:0]  ), .cumulative(8'h00), .float(1'b1), .out(leaky_out[7:0]  ), .overflow(nan_overflow[0]));
multiply_by_2 O158( .weight(8'h30), .value(biased_inputs[15:8] ), .cumulative(8'h00), .float(1'b1), .out(leaky_out[15:8] ), .overflow(nan_overflow[1]));
multiply_by_2 O2316(.weight(8'h30), .value(biased_inputs[23:16]), .cumulative(8'h00), .float(1'b1), .out(leaky_out[23:16]), .overflow(nan_overflow[2]));
multiply_by_2 O3124(.weight(8'h30), .value(biased_inputs[31:24]), .cumulative(8'h00), .float(1'b1), .out(leaky_out[31:24]), .overflow(nan_overflow[3]));
multiply_by_2 O3932(.weight(8'h30), .value(biased_inputs[39:32]), .cumulative(8'h00), .float(1'b1), .out(leaky_out[39:32]), .overflow(nan_overflow[4]));
multiply_by_2 O4740(.weight(8'h30), .value(biased_inputs[47:40]), .cumulative(8'h00), .float(1'b1), .out(leaky_out[47:40]), .overflow(nan_overflow[5]));
multiply_by_2 O5548(.weight(8'h30), .value(biased_inputs[55:48]), .cumulative(8'h00), .float(1'b1), .out(leaky_out[55:48]), .overflow(nan_overflow[6]));
multiply_by_2 O6356(.weight(8'h30), .value(biased_inputs[63:56]), .cumulative(8'h00), .float(1'b1), .out(leaky_out[63:56]), .overflow(nan_overflow[7]));






endmodule

