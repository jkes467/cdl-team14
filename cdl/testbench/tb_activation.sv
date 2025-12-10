`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_activation ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;

    // clockgen
    always begin
        clk = 0;
        #(CLK_PERIOD/2);
        clk = 1;
        #(CLK_PERIOD/2);
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


    logic [63:0] biased_inputs;
    logic [2:0]  activation_mode;
    logic        float;
    logic [63:0] activated_outputs;

    // fail counter
    int fail_count = 0;

    activation DUT (
        .biased_inputs(biased_inputs),
        .activation_mode(activation_mode),
        .float(float),
        .activated_outputs(activated_outputs)
    );

   
    logic signed [7:0] biased_in     [7:0];
    logic signed [7:0] activated_out [7:0];
    logic [2:0] man_times_half;

    generate
        for (genvar g = 0; g < 8; g++) begin
            assign biased_in[g]     = biased_inputs[8*g +: 8];
            assign activated_out[g] = activated_outputs[8*g +: 8];
        end
    endgenerate

    task fp8_to_real;
    input  logic [7:0] fp8;
    output real        val;
    output logic sub;
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
            sub = 1;
        end else begin
            sub = 0;
            M = (8 + mant) / 8.0;
            E = exp - 4'd7;       
            val = (sign ? -1.0 : +1.0) * M * (2.0 ** E);
        end

    end
    endtask

    real real_activated;
    real real_biased;
    logic subnormal_act;
    logic subnormal_bias;

    task test_activation(input int seed);
    begin
        for(int k = 0; k < 2; k++) begin     
            for(int j = 0; j < 4; j++) begin 
                for(int i = 0; i < 1000; i++) begin

                    biased_inputs   = { $random(seed), $random(seed) };
                    activation_mode = j;
                    float           = k;

                    #10;   

                    // test each byte
                    for(int g = 0; g < 8; g++) begin
                        #1;
                        man_times_half = ({1'b1, biased_in[g][2:0]} * 4'h8);
                        case (j)
                            // relu
                            0: begin
                                if(!biased_in[g][7]) begin
                                    if(activated_out[g] != biased_in[g]) begin
                                        fail_count++;
                                        $display("FAILED mode0");
                                    end
                                end else begin
                                    if(activated_out[g] != 8'h00) begin
                                        fail_count++;
                                        $display("FAILED mode0");
                                    end
                                end
                            end

                            // threshold
                            1: begin
                                if(!float) begin
                                    if( ((!(biased_in[g][7]) && (biased_in[g][6:0]) > 8'd63) || ((biased_in[g][7]) && (biased_in[g][6:0]) < 8'd63) )) begin
                                        if(activated_out[g] != 8'hFF) begin
                                            fail_count++;
                                            $display("FAILED mode1");
                                        end
                                    end else begin
                                        if(activated_out[g] != 8'h00) begin
                                            fail_count++;
                                            $display("FAILED mode1");
                                        end
                                    end
                                end else begin
                                    if(biased_in[g][6:3] > 4'hA) begin
                                        if(activated_out[g] != 8'hFF) begin
                                            fail_count++;
                                            $display("FAILED mode1");
                                        end
                                    end else begin
                                        if(activated_out[g] != 8'h00) begin
                                            fail_count++;
                                            $display("FAILED mode1");
                                        end
                                    end
                                end
                            end

                            // identity
                            2: begin
                                if(activated_out[g] != biased_in[g]) begin
                                    fail_count++;
                                    $display("FAILED mode2 ");
                                end
                            end

                            // leaky
                            3: begin
                                if(!float) begin
                                    if(!biased_in[g][7]) begin
                                        if(activated_out[g] != biased_in[g]) begin
                                            fail_count++;
                                            $display("FAILED mode3");
                                        end
                                    end else begin
                                        if(activated_out[g] != ({biased_in[g][7], biased_in[g][7:1]})) begin
                                            fail_count++;
                                            $display("FAILED mode3");
                                        end
                                    end
                                end else begin
                                    if(!biased_in[g][7]) begin
                                        if(activated_out[g] != biased_in[g]) begin
                                            fail_count++;
                                            $display("FAILED mode3");
                                        end
                                    end
                                    else begin
                                        fp8_to_real(.fp8(activated_out[g]), .val(real_activated), .sub(subnormal_act));
                                        fp8_to_real(.fp8(biased_in[g]), .val(real_biased), .sub(subnormal_bias));
                                        if(real_activated != real_biased / 2 && (!subnormal_bias && !subnormal_act)) begin
                                            fail_count++;
                                            $display("FAILED mode3 activated:%d, biased:%d, g:%d", real_activated, real_biased, g);
                                        end
                                        else if((subnormal_bias || subnormal_act)) begin
                                            
                                        end
                                    end
                                end
                            end
                        endcase
                    end
                end
            end
        end
    end
    endtask

    initial begin
        n_rst = 1;

        reset_dut;
        test_activation(19519);

        $display("\n=========================================================");
        $display("               TOTAL FAILED TESTS  = %0d", fail_count);
        $display("=========================================================\n");

        $finish;
    end

endmodule

/* verilator coverage_on */
