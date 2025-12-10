`timescale 1ns / 10ps

module systolic_array #(
    // parameters
) (
    input clk, n_rst, float,
    input logic [7:0] load,
    input logic [63:0] input_value,
    input  logic input_valid,
    output logic output_valid,
    output logic [63:0] output_value,
    output logic overflow
);

genvar i;

// top level cumulative needs to be all 0
logic [511:0] row_layers;
assign row_layers[63:0] = 0;

logic [511:0] column_layers;

// delay inputs by an amount
logic [63:0] direct_inputs;

// delay outputs by an amount
logic [63:0] indirect_outputs;

// delayed valid signals
logic [63:0] valid_signals;
logic [6:0] valid_outputs;
logic next_output_valid;

// overflow logic
logic [63:0] sub_overflow;

// generate rows
// i represents the row number, this generates the whole row. 
generate;
    for(i = 0; i < 7; i++) begin
        // first in the row
        PE column0(.clk(clk), .n_rst(n_rst), .input_value(direct_inputs[(8*(i+1))-1:(8*i)]),   .cumulative(row_layers[(64*i)+7:(64*i)]),     .sum_out(row_layers[(64*(i+1))+7:(64*(i+1))]),     .pass_value(column_layers[(64*i)+7:(64*i)]),     .load(load[0]), .float(float), .input_valid(valid_signals[i]),       .input_weight(input_value[(8*(i+1))-1:(8*i)])  ,.output_valid(valid_signals[i + 8]) , .overflow(sub_overflow[(8*i)]));
        PE column1(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*i)+7:(64*i)]),     .cumulative(row_layers[(64*i)+15:(64*i)+8]),  .sum_out(row_layers[(64*(i+1))+15:(64*(i+1))+8]),  .pass_value(column_layers[(64*i)+15:(64*i)+8]),  .load(load[1]), .float(float), .input_valid(valid_signals[i + 8]),   .input_weight(input_value[(8*(i+1))-1:(8*i)]) ,.output_valid(valid_signals[i + 16]), .overflow(sub_overflow[(8*i)+1]));
        PE column2(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*i)+15:(64*i)+8]),  .cumulative(row_layers[(64*i)+23:(64*i)+16]), .sum_out(row_layers[(64*(i+1))+23:(64*(i+1))+16]), .pass_value(column_layers[(64*i)+23:(64*i)+16]), .load(load[2]), .float(float), .input_valid(valid_signals[i + 16]),  .input_weight(input_value[(8*(i+1))-1:(8*i)]), .output_valid(valid_signals[i + 24]), .overflow(sub_overflow[(8*i)+2]));
        PE column3(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*i)+23:(64*i)+16]), .cumulative(row_layers[(64*i)+31:(64*i)+24]), .sum_out(row_layers[(64*(i+1))+31:(64*(i+1))+24]), .pass_value(column_layers[(64*i)+31:(64*i)+24]), .load(load[3]), .float(float), .input_valid(valid_signals[i + 24]),  .input_weight(input_value[(8*(i+1))-1:(8*i)]), .output_valid(valid_signals[i + 32]), .overflow(sub_overflow[(8*i)+3]));
        PE column4(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*i)+31:(64*i)+24]), .cumulative(row_layers[(64*i)+39:(64*i)+32]), .sum_out(row_layers[(64*(i+1))+39:(64*(i+1))+32]), .pass_value(column_layers[(64*i)+39:(64*i)+32]), .load(load[4]), .float(float), .input_valid(valid_signals[i + 32]),  .input_weight(input_value[(8*(i+1))-1:(8*i)]), .output_valid(valid_signals[i + 40]), .overflow(sub_overflow[(8*i)+4]));
        PE column5(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*i)+39:(64*i)+32]), .cumulative(row_layers[(64*i)+47:(64*i)+40]), .sum_out(row_layers[(64*(i+1))+47:(64*(i+1))+40]), .pass_value(column_layers[(64*i)+47:(64*i)+40]), .load(load[5]), .float(float), .input_valid(valid_signals[i + 40]),  .input_weight(input_value[(8*(i+1))-1:(8*i)]), .output_valid(valid_signals[i + 48]), .overflow(sub_overflow[(8*i)+5]));
        PE column6(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*i)+47:(64*i)+40]), .cumulative(row_layers[(64*i)+55:(64*i)+48]), .sum_out(row_layers[(64*(i+1))+55:(64*(i+1))+48]), .pass_value(column_layers[(64*i)+55:(64*i)+48]), .load(load[6]), .float(float), .input_valid(valid_signals[i + 48]),  .input_weight(input_value[(8*(i+1))-1:(8*i)]), .output_valid(valid_signals[i + 56]), .overflow(sub_overflow[(8*i)+6]));
        PE column7(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*i)+55:(64*i)+48]), .cumulative(row_layers[(64*i)+63:(64*i)+56]), .sum_out(row_layers[(64*(i+1))+63:(64*(i+1))+56]), .pass_value(column_layers[(64*i)+63:(64*i)+56]), .load(load[7]), .float(float), .input_valid(valid_signals[i + 56]),  .input_weight(input_value[(8*(i+1))-1:(8*i)]), .output_valid(valid_outputs[i])     , .overflow(sub_overflow[(8*i)+7]));
    end
endgenerate
        PE final_row_column0(.clk(clk), .n_rst(n_rst), .input_value(direct_inputs[63:56]),                   .cumulative(row_layers[64*(7)+7:64*(7)]),         .sum_out(indirect_outputs[7:0]),   .pass_value(column_layers[64*(7)+7:64*(7)]),         .load(load[0]), .float(float), .input_valid(valid_signals[7]), .input_weight(input_value[63:56])  ,.output_valid(valid_signals[15]), .overflow(sub_overflow[56]));
        PE final_row_column1(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*(7))+7:(64*(7))]),     .cumulative(row_layers[(64*(7))+15:(64*(7))+8]),  .sum_out(indirect_outputs[15:8]),  .pass_value(column_layers[(64*(7))+15:(64*(7))+8]),  .load(load[1]), .float(float), .input_valid(valid_signals[15]),.input_weight(input_value[63:56]) ,.output_valid(valid_signals[23]), .overflow(sub_overflow[57]));
        PE final_row_column2(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*(7))+15:(64*(7))+8]),  .cumulative(row_layers[(64*(7))+23:(64*(7))+16]), .sum_out(indirect_outputs[23:16]), .pass_value(column_layers[(64*(7))+23:(64*(7))+16]), .load(load[2]), .float(float), .input_valid(valid_signals[23]),.input_weight(input_value[63:56]), .output_valid(valid_signals[31]), .overflow(sub_overflow[58]));
        PE final_row_column3(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*(7))+23:(64*(7))+16]), .cumulative(row_layers[(64*(7))+31:(64*(7))+24]), .sum_out(indirect_outputs[31:24]), .pass_value(column_layers[(64*(7))+31:(64*(7))+24]), .load(load[3]), .float(float), .input_valid(valid_signals[31]),.input_weight(input_value[63:56]), .output_valid(valid_signals[39]), .overflow(sub_overflow[59]));
        PE final_row_column4(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*(7))+31:(64*(7))+24]), .cumulative(row_layers[(64*(7))+39:(64*(7))+32]), .sum_out(indirect_outputs[39:32]), .pass_value(column_layers[(64*(7))+39:(64*(7))+32]), .load(load[4]), .float(float), .input_valid(valid_signals[39]),.input_weight(input_value[63:56]), .output_valid(valid_signals[47]), .overflow(sub_overflow[60]));
        PE final_row_column5(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*(7))+39:(64*(7))+32]), .cumulative(row_layers[(64*(7))+47:(64*(7))+40]), .sum_out(indirect_outputs[47:40]), .pass_value(column_layers[(64*(7))+47:(64*(7))+40]), .load(load[5]), .float(float), .input_valid(valid_signals[47]),.input_weight(input_value[63:56]), .output_valid(valid_signals[55]), .overflow(sub_overflow[61]));
        PE final_row_column6(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*(7))+47:(64*(7))+40]), .cumulative(row_layers[(64*(7))+55:(64*(7))+48]), .sum_out(indirect_outputs[55:48]), .pass_value(column_layers[(64*(7))+55:(64*(7))+48]), .load(load[6]), .float(float), .input_valid(valid_signals[55]),.input_weight(input_value[63:56]), .output_valid(valid_signals[63]), .overflow(sub_overflow[62]));
        PE final_row_column7(.clk(clk), .n_rst(n_rst), .input_value(column_layers[(64*(7))+55:(64*(7))+48]), .cumulative(row_layers[(64*(7))+63:(64*(7))+56]), .sum_out(indirect_outputs[63:56]), .pass_value(column_layers[(64*7)+63:(64*7)+56]), .load(load[7]), .float(float), .input_valid(valid_signals[63]),.input_weight(input_value[63:56]), .output_valid(next_output_valid), .overflow(sub_overflow[63]));

assign overflow = |sub_overflow;
// input delay registers
logic [7:0] x1;
logic [15:0] x2;
logic [23:0] x3;
logic [31:0] x4;
logic [39:0] x5;
logic [47:0] x6;
logic [55:0] x7;


// output delay registers
logic [7:0]  a6;
logic [15:0] a5;
logic [23:0] a4;
logic [31:0] a3;
logic [39:0] a2;
logic [47:0] a1;
logic [55:0] a0;

// valid delay registers
logic       v1;
logic [1:0] v2;
logic [2:0] v3;
logic [3:0] v4;
logic [4:0] v5;
logic [5:0] v6;
logic [6:0] v7;

// input valid travels with the data
assign valid_signals[7:0] = {v7[0], v6[0], v5[0], v4[0], v3[0], v2[0], v1, input_valid};

assign output_value = {indirect_outputs[63:56], a6, a5[7:0], a4[7:0], a3[7:0], a2[7:0], a1[7:0], a0[7:0]};
// I did this so I can shift left each value. The large a6-0 are the shift register buffers. 
// as you look in this, the value gets shifted in the left and shifted out the lsb of the buffer
// here I am assigning the output to the bottom of the buffer. 


always_ff @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        x1 <= 0;
        x2 <= 0;
        x3 <= 0;
        x4 <= 0;
        x5 <= 0;
        x6 <= 0;
        x7 <= 0;
        

        a6 <= 0;
        a5 <= 0;
        a4 <= 0;
        a3 <= 0;
        a2 <= 0;
        a1 <= 0;
        a0 <= 0;

        v1 <= 0;
        v2 <= 0;
        v3 <= 0;
        v4 <= 0;
        v5 <= 0;
        v6 <= 0;
        v7 <= 0;
   
        output_valid <= 0;

    end
    else begin
        x1 <= input_value[15:8];
        x2 <= {input_value[23:16], x2[15:8]};
        x3 <= {input_value[31:24], x3[23:8]};
        x4 <= {input_value[39:32], x4[31:8]};
        x5 <= {input_value[47:40], x5[39:8]};
        x6 <= {input_value[55:48], x6[47:8]};
        x7 <= {input_value[63:56], x7[55:8]};

        a6 <= {indirect_outputs[55:48]};
        a5 <= {indirect_outputs[47:40], a5[15:8]};
        a4 <= {indirect_outputs[39:32], a4[23:8]};
        a3 <= {indirect_outputs[31:24], a3[31:8]};
        a2 <= {indirect_outputs[23:16], a2[39:8]};
        a1 <= {indirect_outputs[15:8], a1[47:8]};
        a0 <= {indirect_outputs[7:0], a0[55:8]};

        v1 <= {input_valid};
        v2 <= {input_valid, v2[1]};
        v3 <= {input_valid, v3[2:1]};
        v4 <= {input_valid, v4[3:1]};
        v5 <= {input_valid, v5[4:1]};
        v6 <= {input_valid, v6[5:1]};
        v7 <= {input_valid, v7[6:1]};

        output_valid <= next_output_valid;
    end
end

always_comb begin
    if(load) begin
        direct_inputs = input_value;
    end
    else begin
        direct_inputs[7:0] = input_value[7:0];
        direct_inputs[15:8]  = x1[7:0];
        direct_inputs[23:16] = x2[7:0];
        direct_inputs[31:24] = x3[7:0];
        direct_inputs[39:32] = x4[7:0];
        direct_inputs[47:40] = x5[7:0];
        direct_inputs[55:48] = x6[7:0];
        direct_inputs[63:56] = x7[7:0];
    end
end

endmodule

