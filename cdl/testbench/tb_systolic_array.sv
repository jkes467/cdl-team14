`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_systolic_array ();

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

    logic float;
    logic [7:0] load;
    logic [63:0] input_value;
    logic input_valid;
    logic output_valid;
    logic [63:0] output_value;

    systolic_array #() DUT (
    .clk(clk),
    .n_rst(n_rst),
    .float(float),
    .load(load),
    .input_value(input_value),
    .input_valid(input_valid),
    .output_valid(output_valid),
    .output_value(output_value),
    .overflow(overflow)
    );


    task load_weights;
    input logic [511:0] weight;
    begin
        input_valid = 0;
        load = 0;
        @(negedge clk);
        load[0] = 1;
        input_value = weight[63:0];
        @(negedge clk);
        load[0] = 0;
        load[1] = 1;
        input_value = weight[127:64];
        @(negedge clk);
        load[1] = 0;
        load[2] = 1;
        input_value = weight[191:128];
        @(negedge clk);
        load[2] = 0;
        load[3] = 1;
        input_value = weight[255:192];
        @(negedge clk);
        load[3] = 0;
        load[4] = 1;
        input_value = weight[319:256];
        @(negedge clk);
        load[4] = 0;
        load[5] = 1;
        input_value = weight[383:320];
        @(negedge clk);
        load[5] = 0;
        load[6] = 1;
        input_value = weight[447:384];
        @(negedge clk);
        load[6] = 0;
        load[7] = 1;
        input_value = weight[511:448];
        @(negedge clk);
        load = 0;
        input_value = 0;
        
        
    end
    endtask
    
    logic [511:0] weights;


    int total_failed = 0;

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

    task identify_weights_int;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic  [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic logic [15:0] temp;
        begin
            // --------- generate 64 random weights
            for (int j = 0; j < 64; j++) begin
                byte_index = j*8;
                // weights[byte_index +: 8] = $random(seed) % 8;
                
            end
            // --------- load weights
            weights = {8{64'h0101_0101_0101_0101}};
            load_weights(.weight(weights));
            #100;
            @(negedge clk);
            input_value = 64'h0101_0101_0101_0101;
            og_inputs = input_value;
            float = 0;
            load  = 0;
            input_valid = 1;
            @(negedge clk);
            input_valid = 0;
            input_value = 0;
            @(posedge output_valid);
    
            // --------- Check each output byte
            for (col = 0; col < 8; col++) begin
                
                expected = 0;
    
                // Multiply 8 rows contributing to this output column
                for (row = 0; row < 8; row++) begin
                    
                    weight_ij = weights[(col)*64 + row*8 +: 8];
                    input_ij  = og_inputs[row*8 +: 8];
                    temp = weight_ij * input_ij;
                    expected[col*8 +: 8] += temp[7:0];
                end
    
                if (output_value[col*8 +: 8] !== expected[col*8 +: 8]) begin
                    if(expected[col*8 +: 8] >= 8'sd127 || expected[col*8 +: 8] <= -8'sd128) begin
                        if(output_value[col*8 +: 8] != 127 || output_value[col*8 +: 8] != -128) begin
                            total_failed++;
                            $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                        end
                    end
                    else begin
                        total_failed++;
                        $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                    end
                end
            end
        end
    endtask

    task identify_weights_float;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic  [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic logic [15:0] temp;
        automatic real real_weight;
        automatic real real_value;
        automatic real real_temp;
        automatic real real_out;
        begin
            float = 1;
            // --------- generate 64 random weights
            for (int j = 0; j < 64; j++) begin
                byte_index = j*8;
                weights[byte_index +: 8] = {$urandom_range(70,32)};
                
            end
            // --------- load weights
            weights = {8{64'h3838_3838_3838_3838}};
            load_weights(.weight(weights));
            input_value = 0;
            #100;
            @(negedge clk);
            input_value = 64'h3838_3838_3838_3838;
            og_inputs = input_value;
            float = 1;
            load  = 0;
            input_valid = 1;
            @(negedge clk);
            input_valid = 0;
            input_value = 0;
            @(posedge output_valid);
    
            // --------- Check each output byte
            for (col = 0; col < 8; col++) begin
    
                expected = 0;
    
                // Multiply 8 rows contributing to this output column
                for (row = 0; row < 8; row++) begin
                    weight_ij = weights[(col)*64 + row*8 +: 8];
                    input_ij  = og_inputs[row*8 +: 8];
                    fp8_to_real(.fp8(weight_ij), .val(real_weight));
                    fp8_to_real(.fp8(input_ij), .val(real_value));
                    real_temp = real_weight * real_value;
                    expected[col*8 +: 8] += real_temp;
                end

                fp8_to_real(.fp8(output_value[col*8 +: 8]), .val(real_out));
                if (real_out !== expected[col*8 +: 8]) begin
                    if(expected[col*8 +: 8] >= 127 || expected[col*8 +: 8] <= -128) begin
                        if(output_value[col*8 +: 8] != 127 && output_value[col*8 +: 8] != -128) begin
                            total_failed++;
                            $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            real_out,
                            expected[col*8 +: 8]);
                        end
                    end
                    else begin
                        total_failed++;
                        $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                    end
                end
            end
        end
    endtask

    task identify_weights_float_random;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic  [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic real real_weight;
        automatic real real_value;
        automatic real real_temp;
        automatic real real_out;
        begin
            float = 1;
            // --------- generate 64 random weights
            for (int j = 0; j < 64; j++) begin
                byte_index = j*8;
                weights[byte_index +: 8] = {$urandom_range(70,32)};
                
            end
            // --------- load weights
            // weights = {8{64'h3838_3838_3838_3838}};
            load_weights(.weight(weights));
            input_value = 0;
            #100;
            @(negedge clk);
            input_value = 64'h3838_3838_3838_3838;
            og_inputs = input_value;
            float = 1;
            load  = 0;
            input_valid = 1;
            @(negedge clk);
            input_valid = 0;
            input_value = 0;
            @(posedge output_valid);
    
            // --------- Check each output byte
            for (col = 0; col < 8; col++) begin
    
                expected = 0;
    
                // Multiply 8 rows contributing to this output column
                for (row = 0; row < 8; row++) begin
                    weight_ij = weights[(col)*64 + row*8 +: 8];
                    input_ij  = og_inputs[row*8 +: 8];
                    fp8_to_real(.fp8(weight_ij), .val(real_weight));
                    fp8_to_real(.fp8(input_ij), .val(real_value));
                    real_temp = real_weight * real_value;
                    expected[col*8 +: 8] += real_temp;
                end

                fp8_to_real(.fp8(output_value[col*8 +: 8]), .val(real_out));
                if (real_out !== expected[col*8 +: 8]) begin
                    if(expected[col*8 +: 8] >= 127 || expected[col*8 +: 8] <= -128) begin
                        if(output_value[col*8 +: 8] != 127 && output_value[col*8 +: 8] != -128) begin
                            total_failed++;
                            $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            real_out,
                            expected[col*8 +: 8]);
                        end
                    end
                    else begin
                        total_failed++;
                        $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                    end
                end
            end
        end
    endtask

    task aforce_overflow;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic  [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic logic [15:0] temp;
        begin
            // --------- generate 64 random weights
            for (int j = 0; j < 64; j++) begin
                byte_index = j*8;
                weights[byte_index +: 8] = (1) * 127;
                
            end
            // --------- load weights
            // weights = {8{64'h0101_0101_0101_0101}};
            load_weights(.weight(weights));
            #100;
            @(negedge clk);
            input_value = 64'h7F7F_7F7F_7F7F_7F7F;
            og_inputs = input_value;
            float = 0;
            load  = 0;
            input_valid = 1;
            @(negedge clk);
            input_valid = 0;
            input_value = 0;
            @(posedge output_valid);
    
            // --------- Check each output byte
            for (col = 0; col < 8; col++) begin
                
                expected = 0;
    
                // Multiply 8 rows contributing to this output column
                for (row = 0; row < 8; row++) begin
                    
                    weight_ij = weights[(col)*64 + row*8 +: 8];
                    input_ij  = og_inputs[row*8 +: 8];
                    temp = weight_ij * input_ij;
                    expected[col*8 +: 8] += temp[7:0];
                end
    
                if (output_value[col*8 +: 8] !== 8'h7F) begin
                    if(expected[col*8 +: 8] >= 8'sd127 || expected[col*8 +: 8] <= -8'sd128) begin
                        if(output_value[col*8 +: 8] != 127 || output_value[col*8 +: 8] != -128) begin
                            total_failed++;
                            $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                        end
                    end
                    else begin
                        total_failed++;
                        $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                    end
                end
            end
        end
    endtask

    task load_weights_break;
    input logic [511:0] weight;
    begin
        input_valid = 0;
        load = 0;
        @(negedge clk);
        load[0] = 1;
        input_value = weight[63:0];
        @(negedge clk);
        load[0] = 0;
        load[1] = 1;
        input_value = weight[127:64];
        @(negedge clk);
        load[1] = 0;
        load[2] = 1;
        input_value = weight[191:128];
        @(negedge clk);
        load[2] = 0;
        load[3] = 1;
        input_value = weight[255:192];
        @(negedge clk);
        load = 0;
        
        input_value = weight[319:256];
        @(negedge clk);
        
        input_value = weight[383:320];
        @(negedge clk);
        
        input_value = weight[447:384];
        @(negedge clk);
        input_value = weight[511:448];
        @(negedge clk);
        load = 0;
        input_value = 0;
        
        
    end
    endtask

    task mid_load_break;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic  [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic logic [15:0] temp;
        begin
            // --------- generate 64 random weights
            for (int j = 0; j < 64; j++) begin
                byte_index = j*8;
                weights[byte_index +: 8] = ($random(seed) % 8);
                
            end
            // --------- load weights
            // weights = {8{64'h0101_0101_0101_0101}};
            load_weights_break(.weight(weights));
            #100;
            @(negedge clk);
            input_value = 64'h0101_0101_0101_0101;
            og_inputs = input_value;
            float = 0;
            load  = 0;
            input_valid = 1;
            @(negedge clk);
            input_valid = 0;
            input_value = 0;
            @(posedge output_valid);
    
            // --------- Check each output byte
            for (col = 0; col < 8; col++) begin
                
                expected = 0;
    
                // Multiply 8 rows contributing to this output column
                for (row = 0; row < 8; row++) begin
                    
                    weight_ij = weights[(col)*64 + row*8 +: 8];
                    input_ij  = og_inputs[row*8 +: 8];
                    temp = weight_ij * input_ij;
                    expected[col*8 +: 8] += temp[7:0];
                end
    
                if (output_value[col*8 +: 8] !== expected[col*8 +: 8]) begin
                    if(expected[col*8 +: 8] >= 8'sd127 || expected[col*8 +: 8] <= -8'sd128) begin
                        if(output_value[col*8 +: 8] != 127 || output_value[col*8 +: 8] != -128) begin
                            total_failed++;
                            $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                        end
                    end
                    else begin
                        total_failed++;
                        $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                    end
                end
            end
        end
    endtask

    task bforce_reset;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic  [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic logic [15:0] temp;
        begin
            // --------- generate 64 random weights
            for (int j = 0; j < 64; j++) begin
                byte_index = j*8;
                weights[byte_index +: 8] = ($random(seed) % 8);
                
            end
            // --------- load weights
            // weights = {8{64'h0101_0101_0101_0101}};
            fork 
                begin
                load_weights(.weight(weights));
                end
                begin
                #25;
                load = 0;
                end
            join
            #100;
            @(negedge clk);
            input_value = 64'h0101_0101_0101_0101;
            og_inputs = input_value;
            float = 0;
            load  = 0;
            input_valid = 1;
            @(negedge clk);
            input_valid = 0;
            input_value = 0;
            fork
                begin
                #200;
                end
                begin
                #50;
                reset_dut();
                end
            join
    
            // --------- Check each output byte
            for (col = 0; col < 8; col++) begin
                
                expected = 0;
    
                // Multiply 8 rows contributing to this output column
                for (row = 0; row < 8; row++) begin
                    
                    weight_ij = weights[(col)*64 + row*8 +: 8];
                    input_ij  = og_inputs[row*8 +: 8];
                    temp = weight_ij * input_ij;
                    expected[col*8 +: 8] += temp[7:0];
                end
    
                if (output_value[col*8 +: 8] !== 0) begin
                    if(expected[col*8 +: 8] >= 8'sd127 || expected[col*8 +: 8] <= -8'sd128) begin
                        if(output_value[col*8 +: 8] != 127 || output_value[col*8 +: 8] != -128) begin
                            total_failed++;
                            $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                        end
                    end
                    else begin
                        total_failed++;
                        $display("FAIL: col=%0d DUT=%0d expected=%0d",
                            col,
                            output_value[col*8 +: 8],
                            expected[col*8 +: 8]);
                    end
                end
            end
        end
    endtask

    task test_valid_signal;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic logic [15:0] temp;
        begin
            // --------- generate 64 random weights
            for (int j = 0; j < 64; j++) begin
                byte_index = j*8;
                weights[byte_index +: 8] = ($random(seed) % 8);
                
            end
            // --------- load weights
            // weights = {8{64'h0101_0101_0101_0101}};
            load_weights(.weight(weights));
            #100;
            @(negedge clk);
            input_value = 64'h0101_0101_0101_0101;
            og_inputs = input_value;
            float = 0;
            load  = 0;
            input_valid = 1;
            @(negedge clk);
            input_valid = 0;
            input_value = 0;
            #25;
            weights = {8{64'h0101_0101_0101_0101}};

            load_weights(.weight(weights));
            @(posedge output_valid);
                
            
        
        end
    endtask

    task test_array;
        input int seed;
        automatic logic signed [7:0] weight_ij;
        automatic logic signed [7:0] input_ij;
        automatic logic [63:0] expected;
        automatic int byte_index;
        automatic int col;
        automatic int row;
        automatic logic [63:0] og_inputs;
        automatic logic signed [7:0] temp;
        automatic logic [15:0] more_temp;
        begin
            for(int k = 0; k<10; k++) begin
                // --------- generate 64 random weights
                for (int j = 0; j < 64; j++) begin
                    byte_index = j*8;
                    weights[byte_index +: 8] = $random(seed) % 4;
                    
                end
                // --------- load weights
                // weights = {8{64'h0101_0101_0101_0101}};
                load_weights(.weight(weights));
                #100;
                @(negedge clk);
                for(int i = 0; i<8; i++) begin
                    byte_index = i*8;
                    input_value[byte_index +: 8] = $random(seed) % 4;
                end
                og_inputs = input_value;
                float = 0;
                load  = 0;
                input_valid = 1;
                @(negedge clk);
                input_valid = 0;
                input_value = 0;
                @(posedge output_valid);
    
                // --------- Check each output byte
                for (col = 0; col < 8; col++) begin
                    
                    expected = 0;
                    more_temp = 0;
                    // Multiply 8 rows contributing to this output column
                    for (row = 0; row < 8; row++) begin
                        weight_ij = weights[((col)*64 + (row*8)) +: 8];
                        input_ij  = og_inputs[row*8 +: 8];
                        temp = weight_ij * input_ij;
                        // $display("weight:%h \n", weight_ij);
                        // $display("input:%h \n", input_ij);
                        // $display("temp:%h \n", temp);
                        more_temp += temp;
                    
                    end
                    expected[col*8 +:8] = more_temp[7:0];
                    if (output_value[col*8 +: 8] !== expected[col*8 +:8]) begin
                        if(expected[col*8 +: 8] >= 8'sd127 || expected[col*8 +: 8] <= -8'sd128) begin
                            if(output_value[col*8 +: 8] != 127 || output_value[col*8 +: 8] != -128) begin
                                total_failed++;
                                $display("FAIL: col=%0d DUT=%0d expected=%0d",
                                col,
                                output_value[col*8 +: 8],
                                expected[col*8 +: 8]);
                            end
                        end
                        else begin
                            total_failed++;
                            $display("FAIL: col=%0d DUT=%0d expected=%0d",
                                col,
                                output_value[col*8 +: 8],
                                expected[col*8 +: 8]);
                        end
                    end
                end
            end
        end
    endtask


    initial begin
        n_rst = 1;
        float = 0;
        input_value = 0;
        input_valid = 0;
        load = 0;
        

        reset_dut;
        identify_weights_float(.seed(12315));
        #100;
        identify_weights_float_random(.seed(1315));
        #100;
        identify_weights_int(.seed(15150));
        #100;
        aforce_overflow(.seed(1550));
        #100;
        mid_load_break(.seed(8912));
        #100;
        bforce_reset(.seed(27516));
        #100;
        test_valid_signal(.seed(71235));
        #100;
        test_array(.seed(136841));
        $display("\n=========================================================");
        $display("               TOTAL FAILED TESTS  = %0d", total_failed);
        $display("=========================================================\n");
        $finish;
    end
endmodule

/* verilator coverage_on */

