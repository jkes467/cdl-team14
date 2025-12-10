`timescale 1ns / 10ps
module signed_multiplier(
    input  logic signed [7:0] weight,
    input  logic signed [7:0] value,
    input  logic signed [7:0] cumulative,
    input  logic float,
    output logic signed [7:0] out,
    output logic overflow
);
    // partial sums logics
    logic signed [15:0] extended_weight;
    logic signed [15:0] partial0;
    logic signed [15:0] partial1;
    logic signed [15:0] partial2;
    logic signed [15:0] partial3;
    logic signed [15:0] partial4;
    logic signed [15:0] partial5;
    logic signed [15:0] partial6;
    logic signed [15:0] partial7;

    logic signed [15:0] product;
    logic signed [15:0] sum_extended;

    // floating point logics
    logic sign_cumulative, sign_weight, sign_value, sign_product;
    logic [3:0] exponent_cumulative, exponent_weight, exponent_value;
    logic [4:0] exponent_product;
    logic [3:0] man_cumulative, man_weight, man_value, man_out;
    logic [3:0] man_product;

    // signs
    assign sign_cumulative = cumulative[7];
    assign sign_weight = weight[7];
    assign sign_value = value[7];
    assign sign_product = sign_value ^ sign_weight;
    
    // exponents
    assign exponent_cumulative = cumulative[6:3];
    assign exponent_weight = weight[6:3];
    assign exponent_value = value[6:3];
    
    // implicit 1 in front of mantissa
    assign man_cumulative = {1'b1, cumulative[2:0]};
    assign man_weight = {1'b1, weight[2:0]};
    assign man_value = {1'b1, value[2:0]};


    // sign extend
    assign extended_weight = {{8{weight[7]}}, weight};
    always_comb begin
        if(!float) begin

            // partials ials that are "ands" of a value bit and all the weight bits. creates shifted versions to add
            partial0 = value[0] ? (extended_weight) : 16'sd0;
            partial1 = value[1] ? (extended_weight << 1) : 16'sd0;
            partial2 = value[2] ? (extended_weight << 2) : 16'sd0;
            partial3 = value[3] ? (extended_weight << 3) : 16'sd0;
            partial4 = value[4] ? (extended_weight << 4) : 16'sd0;
            partial5 = value[5] ? (extended_weight << 5) : 16'sd0;
            partial6 = value[6] ? (extended_weight << 6) : 16'sd0;
            partial7 = value[7] ? (extended_weight << 7) : 16'sd0;

            product = partial0 + partial1 + partial2 + partial3 +
            partial4 + partial5 + partial6 + partial7;
        
        end
        else begin
            // {15'h00, sign_value ^ sign_weight};
            
            partial0 = man_value[0] ? {12'h00, (man_weight)}:16'sd0;
            partial1 = man_value[1] ? {11'h00, (man_weight), 1'b0}:16'sd0;
            partial2 = man_value[2] ? {10'h00, (man_weight) , 2'b00}:16'sd0;
            partial3 = man_value[3] ? {9'h00, (man_weight), 3'b000}: 16'sd0;
            partial4 = 0;
            partial5 = 0;
            partial6 = 0;
            partial7 = 0;
            product = partial0 + partial1 + partial2 + partial3;

            
        end
    end

    always_comb begin
        if(!float) begin
            
            sum_extended = product + {{8{cumulative[7]}}, cumulative};
            exponent_product = 0;
            man_product = 0;
        end
        else begin
            if(product[7]) begin
                if(exponent_weight <= 4'd6 || exponent_value <= 4'd6) begin
                    exponent_product = 5'd7;
                    man_product = 0;
                end
                else begin
                    exponent_product = exponent_weight + exponent_value - 4'd6;
                    // this acts as both truncate and normalize step.
                    man_product = {1'b1,product[6:4]};
                end
            end
            else if(product[6]) begin
                if(exponent_weight <= 4'd6 || exponent_value <= 4'd6) begin
                    exponent_product = 5'd7;
                    man_product = 0;
                end
                else begin
                    exponent_product = exponent_weight + exponent_value - 4'd7;
                    man_product = {1'b1, product[5:3]};
                end
                
            end
            else if(product[5]) begin
                if(exponent_weight <= 4'd6 || exponent_value <= 4'd6) begin
                    exponent_product = 5'd7;
                    man_product = 0;
                end
                else begin
                    exponent_product = exponent_weight + exponent_value - 4'd8;
                    man_product = {1'b1, product[4:2]};
                end
                
            end
            else if(product[4]) begin
                if(exponent_weight <= 4'd6 || exponent_value <= 4'd6) begin
                    exponent_product = 5'd9;
                    man_product = 0;
                end
                else begin
                    exponent_product = exponent_weight + exponent_value - 4'd9;
                    man_product = {1'b1, product[3:1]};
                end
                
            end
            else begin
                if(exponent_weight <= 4'd6 || exponent_value <= 4'd6) begin
                    exponent_product = 5'd10;
                    man_product = 0;
                end
                else begin
                    exponent_product = exponent_weight + exponent_value - 4'd10;
                    man_product = {1'b1, product[2:0]};
                end
                
            end
            sum_extended = 0;
            
        end
    end


    // logics to add cumulative to the float
    logic [3:0] final_exp;
    logic [4:0] man_sum;
    logic [3:0] m_large;
    logic [3:0] m_small;
    logic s_small;
    logic s_large;
    logic [4:0] e_diff;
    logic [3:0] e_out;
    
    always_comb begin
        if (exponent_product >= exponent_cumulative) begin
            final_exp = exponent_product;
            e_diff = exponent_product - exponent_cumulative;
            m_large = man_product;
            if(exponent_cumulative <= 4'd6) begin
                m_small = 0;
            end
            else begin
                m_small = man_cumulative >> e_diff;
            end
            s_large = sign_product;
            s_small = sign_cumulative;
        end else begin
            final_exp = exponent_cumulative;
            e_diff = exponent_cumulative - exponent_product;
            m_large = man_cumulative;
            if(exponent_product <= 4'd6) begin
                m_small = 0;
            end
            else begin
                m_small = man_product >> e_diff;
            end

            s_large = sign_cumulative;
            s_small = sign_product;
        end
    end

    always_comb begin
        if (s_large == s_small)
            man_sum = m_large + m_small;
        else begin
            if (m_large >= m_small)
                man_sum = m_large - m_small;
            else
                man_sum = m_small - m_large;
        end

    end
    logic s_out;
    assign s_out = (m_large >= m_small) ? s_large : s_small;

    // saturate
    always_comb begin
        if(!float) begin
            if (sum_extended > 127 && (!sign_value)) begin
                out = 8'sh7F;
                overflow = 1;
            end
            else if (sum_extended < -128 && sign_value) begin
                out = 8'sh80;
                overflow = 1;
            end
            else begin
                out = sum_extended[7:0];
                overflow = 0;
            end
            man_out = 0;
            e_out = 0;
        end
        else begin
            if (man_sum[4]) begin
                overflow = 1;
                man_out = {1'b1,man_sum[3:1] + 1};
                e_out = final_exp + 1;
            end 
            else if (man_sum[3]) begin
                overflow = 0;
                man_out = {1'b1,man_sum[2:0]};
                e_out = final_exp;
            end
            else if (man_sum[2]) begin
                overflow = 0;
                man_out = {1'b1,man_sum[1:0],1'b0};
                e_out = final_exp - 1;
            end
            else if (man_sum[1]) begin
                overflow = 0;
                man_out = {1'b1, man_sum[0],2'b00};
                e_out = final_exp - 2;
            end
            else begin
                overflow = 0;
                man_out = {1'b1,3'b0};
                e_out = final_exp - 3;
            end
            out = {s_out, e_out, man_out[2:0]};

        end
    end

endmodule
