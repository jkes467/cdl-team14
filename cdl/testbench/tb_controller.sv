`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_controller ();

    localparam CLK_PERIOD = 10ns;

    // ------------------------------------------------------------
    // SIGNALS
    // ------------------------------------------------------------
    logic clk, n_rst;

    // AHB control register
    logic [7:0] ctrl_reg;

    // Inputs from SRAM buffer
    logic data_ready, out_done;
    logic [63:0] data;

    // Outputs from controller
    logic busy, inference_done;
    logic get_weights, get_inputs, get_out;
    logic in_valid;
    logic [63:0] array_inputs;
    logic [7:0]  load;

    // For weights test
    logic [6:0] num_inputs = 7'd8;

    // ------------------------------------------------------------
    // DUT INSTANTIATION
    // ------------------------------------------------------------

    controller DUT (
        .clk(clk),
        .n_rst(n_rst),
        .ctrl_reg(ctrl_reg),
        .data_ready(data_ready),
        .out_done(out_done),
        .data(data),
        .busy(busy),
        .inference_done(inference_done),
        .num_inputs(num_inputs),
        .get_weights(get_weights),
        .get_inputs(get_inputs),
        .get_out(get_out),
        .in_valid(in_valid),
        .array_inputs(array_inputs),
        .load(load)
    );

    // ------------------------------------------------------------
    // Clock generator
    // ------------------------------------------------------------
    always begin
        clk = 0;
        #(CLK_PERIOD / 2);
        clk = 1;
        #(CLK_PERIOD / 2);
    end

    // ------------------------------------------------------------
    // Reset task
    // ------------------------------------------------------------
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


    // ------------------------------------------------------------
    // INITIAL BLOCK — TEST WEIGHT LOADING
    // ------------------------------------------------------------
    integer i;
    initial begin
        // Waveforms
        $dumpfile("waveform.vcd");
        $dumpvars;

        ctrl_reg   = 0;
        data       = 0;
        data_ready = 0;
        out_done   = 0;

        reset_dut;

        $display("\n=====================================");
        $display("       TEST: LOAD 8 WEIGHTS");
        $display("=====================================\n");

        // --------------------------------------------------------
        // 1) Pulse ctrl_reg[1] to start weight load
        // --------------------------------------------------------
        ctrl_reg[1] = 1;   // rising edge → load_weights pulse
        @(posedge clk);
        ctrl_reg[1] = 0;

        // --------------------------------------------------------
        // 2) Emulate SRAM buffer: It takes 8 cycles to get data
        // --------------------------------------------------------
        repeat (8) @(posedge clk);

        // --------------------------------------------------------
        // 3) Now produce 8 weights
        // Each time controller does:
        //    GET_WEIGHT → WAIT_WEIGHT → SEND_WEIGHT
        // We respond by asserting `data_ready` for one cycle
        // --------------------------------------------------------
        // integer i;

        // --------------------------------------------------------
        // Correctly test 8 weights with an 8-cycle latency per read
        // --------------------------------------------------------
        for (i = 0; i < 8; i++) begin
            // Wait 8 cycles BEFORE providing data_ready
            repeat (8) @(posedge clk);

            // Provide the next weight
            data = {32'hAAAA0000 + i, 32'hBBBB0000 + i};

            // Assert data_ready for ONE cycle
            data_ready = 1;
            @(posedge clk);
            data_ready = 0;

            $display("[%0t] Weight %0d delivered: %h",
                    $time, i, data);

            // Allow controller to leave SEND_WEIGHT and re-request
            repeat (2) @(posedge clk);
        end


        $display("\n=====================================");
        $display("     WEIGHT LOADING TEST COMPLETE");
        $display("=====================================\n");

        repeat (10) @(posedge clk);

        $finish;
    end

endmodule

/* verilator coverage_on */
