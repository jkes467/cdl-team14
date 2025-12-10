`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_signed_multiplier ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD / 2.0);
        clk = 1;
        #(CLK_PERIOD / 2.0);
    end

    task reset_dut;
    begin
        n_rst = 0;
        @(posedge clk);
        @(posedge clk);
        @(negedge clk);
        n_rst = 1;
        @(posedge clk);
        @(posedge clk);
    end
    endtask

    logic signed [7:0] weight;
    logic signed [7:0] value;
    logic signed [7:0] cumulative;
    logic float;
    logic signed [7:0] out;
    logic overflow;
    logic load;

    signed_multiplier #() DUT (.weight(weight), .value(value), .cumulative(cumulative), .float(float), .out(out), .overflow(overflow));

    task one_int_result;
    input logic [7:0] w;
    input logic [7:0] v;
    input logic [7:0] c;
    begin
        weight = w;
        value = v;
        cumulative = c;
        float = 0;
        #10;
        $display("p0: %d", out);
        #25;
    end
    endtask

 task fp8_to_real;
    input  logic [7:0] fp8;
    output real        val;
    logic  sign;
    logic signed [3:0] exp;   
    logic [2:0] mant;
    int   E;
    real  M;
    begin
        sign = fp8[7];
        exp  = fp8[6:3];       
        mant = fp8[2:0];

        if (exp <= 4'd6) begin // subnormals
            M = 0;
            E = 0; 
            val = 0.0;
        end else begin
            M = (8 + mant) / 8.0;
            E = exp - 4'd7;       
            val = (sign ? -1.0 : +1.0) * M * (2.0 ** E);
        end

    end
endtask
    
    task one_float_result;
    input logic [7:0] w;
    input logic [7:0] v;
    input logic [7:0] c;
    real real_weight;
    real real_value;
    real real_cumulative;
    real real_out;
    begin
        weight = w;
        value = v;
        cumulative = c;
        float = 1;
        #10;
        fp8_to_real(.fp8(w), .val(real_weight));
        fp8_to_real(.fp8(v), .val(real_value));
        fp8_to_real(.fp8(c), .val(real_cumulative));
        fp8_to_real(.fp8(out), .val(real_out));

        if((real_weight * real_value) + real_cumulative != real_out) begin
            $display("Failed float mult w:%h, v:%h", weight, value);
        end
        $display("float mult w:%h, v:%h, c:%h, o:%h", weight, value, cumulative, out);
        #25;
    end
    endtask

    int fail_count;
    
    task test_multiplication_int;
    input int seed;
    real real_weight;
    real real_value;
    real real_cumulative;
    real real_out;
    begin
        for(int i = 0; i<1000; i++) begin
            weight =     $random(seed);
            value =      $random(seed);
            cumulative = $random(seed);
            float = 0;
            #10;
            // fp8_to_real(.fp8(w), .val(real_weight));
            // fp8_to_real(.fp8(v), .val(real_value));
            // fp8_to_real(.fp8(c), .val(real_cumulative));
            // fp8_to_real(.fp8(out), .val(real_out));
    
            if(out != (weight * value) + cumulative) begin
                if((out == 8'h80 || out == 8'h7f) && overflow) begin
                end
                else begin
                    fail_count += 1;
                    $display("failed mult weight:%h, value:%h, cumulative:%h, out:%h", weight, value, cumulative, out);
                end
            end
            // if((real_weight * real_value) + real_cumulative != real_out) begin
            //     $display("Failed float mult w:%h, v:%h", weight, value);
            // end
            // $display("float mult w:%h, v:%h, c:%h, o:%h", weight, value, cumulative, out);
            #25;
        end
    end
    endtask

    task test_multiplication_float;
    input int seed;
    real real_weight;
    real real_value;
    real real_cumulative;
    real real_out;
    logic [7:0] random_byte;
    static real error_allowed = 0.5;
    static real diff;
    begin
        for(int i = 0; i<500; i++) begin
            random_byte = {$urandom_range(70,32)};
            weight =     {random_byte};
            random_byte = {$urandom_range(70,32)};
            value =      {random_byte};
            random_byte = {$urandom_range(70,32)};
            cumulative = {random_byte};
            float = 1;
            #10;
            fp8_to_real(.fp8(weight), .val(real_weight));
            fp8_to_real(.fp8(value), .val(real_value));
            fp8_to_real(.fp8(cumulative), .val(real_cumulative));
            fp8_to_real(.fp8(out), .val(real_out));
    
            // if(out != (weight * value) + cumulative) begin
            //     $display("failed mult weight:%h, value:%h, cumulative:%h, out:%h", weight, value, cumulative, out);
            // end
            diff = (real_weight * real_value) + real_cumulative - real_out;
            if(diff > error_allowed || diff < -error_allowed) begin
                fail_count += 1;
                $display("Failed float mult w:%h, v:%h, expected:%d, real_weight:%d, real_value:%d, real_cumulative:%d, real_out:%d", weight, value, (real_weight * real_value) + real_cumulative, real_weight, real_value, real_cumulative, real_out);
            end
            // $display("float mult w:%h, v:%h, c:%h, o:%h", weight, value, cumulative, out);
            #25;
        end
        for(int i = 0; i<500; i++) begin
            random_byte = {$urandom_range(128,64)};
            weight =     {1'b1, random_byte[7:1]};
            random_byte = {$urandom_range(128,64)};
            value =      {1'b1, random_byte[7:1]};
            // random_byte = {$urandom_range(128,64)};
            // cumulative = {1'b1, random_byte[7:1]};
            random_byte = {$urandom_range(64,32)};
            cumulative = {random_byte};
            float = 1;
            #10;
            fp8_to_real(.fp8(weight), .val(real_weight));
            fp8_to_real(.fp8(value), .val(real_value));
            fp8_to_real(.fp8(cumulative), .val(real_cumulative));
            fp8_to_real(.fp8(out), .val(real_out));
    
            // if(out != (weight * value) + cumulative) begin
            //     $display("failed mult weight:%h, value:%h, cumulative:%h, out:%h", weight, value, cumulative, out);
            // end
            diff = (real_weight * real_value) + real_cumulative - real_out;
            if(diff > error_allowed || diff < -error_allowed) begin
                fail_count += 1;
                $display("Failed float mult w:%h, v:%h, expected:%d, real_weight:%d, real_value:%d, real_cumulative:%d, real_out:%d", weight, value, (real_weight * real_value) + real_cumulative, real_weight, real_value, real_cumulative, real_out);
            end
            // $display("float mult w:%h, v:%h, c:%h, o:%h", weight, value, cumulative, out);
            #25;
        end
    end
    endtask


    initial begin
        n_rst = 1;

        reset_dut;
        load = 0;
        test_multiplication_int(.seed(1129));
        load = 1;
        #250;
        load = 0;
        test_multiplication_float(.seed(9151));
        #250;

        $display("\n=========================================================");
        $display("               TOTAL FAILED TESTS  = %0d", fail_count);
        $display("=========================================================\n");

        $finish;
    end
endmodule

/* verilator coverage_on */

