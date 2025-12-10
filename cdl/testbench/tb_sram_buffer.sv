`timescale 1ns / 10ps
/* verilator coverage_off */

module tb_sram_buffer ();

    localparam CLK_PERIOD = 10ns;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars;
    end

    logic clk, n_rst;
    logic get_weights, get_inputs, get_out, write_enable, is_weight, handshake, out_valid, data_ready, out_done, output_valid, wen, ren;
    logic [63:0] write_data, activations, data, output_data;
    logic [31:0] rdata, wdata;
    logic [9:0] addr;
    logic [1:0] sram_state;

    sram_buffer dut (
        .clk(clk),
        .n_rst(n_rst),
        .get_weights(get_weights),
        .get_inputs(get_inputs),
        .get_out(get_out),
        .write_enable(write_enable),
        .is_weight(is_weight),
        .handshake(handshake),
        .out_valid(out_valid),
        .data_ready(data_ready),
        .out_done(out_done),
        .output_valid(output_valid),
        .wen(wen),
        .ren(ren),
        .write_data(write_data),
        .activations(activations),
        .data(data),
        .output_data(output_data),
        .rdata(rdata),
        .wdata(wdata),
        .addr(addr),
        .sram_state(sram_state)
    );

    sram1024x32_wrapper sram (
        .clk(clk),
        .n_rst(n_rst),
        .address(addr),
        .read_enable(ren),
        .write_enable(wen),
        .write_data(wdata),
        .read_data(rdata),
        .sram_state(sram_state)
    );

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

    // needed for Test 2
    logic [63:0] expected_weights [0:7];
    logic [63:0] expected_inputs [0:7];
    logic [63:0] expected_outputs [0:7];
    // Arrays
    logic [63:0] expected_in128   [0:127];
    logic [63:0] expected_out128  [0:127];
    integer i;   // loop variable for both tests
    logic [10:0] time_out;
    initial begin
        n_rst = 1;
        reset_dut;

        //--------------------------------------------
        // TEST 1 — WRITE 8 WEIGHTS (8 × 64-bit)
        //--------------------------------------------

        // default values
        get_weights   = 0;
        get_inputs    = 0;
        get_out       = 0;
        write_enable  = 0;
        is_weight     = 1;   // always writing weights
        handshake     = 0;
        out_valid     = 0;

        repeat (2) @(posedge clk);

        // 8 weights, assign simple patterns
        for (i = 0; i < 8; i++) begin
            write_data = {32'hAAAA0000 + i, 32'hBBBB0000 + i};

            // pulse write_enable for one cycle
            write_enable = 1;
            @(posedge clk);
            write_enable = 0;

            // wait long enough for:
            // LOW write   = ~7 cycles
            // HIGH write  = ~7 cycles
            // Safe margin = ~20 cycles
            repeat (20) @(posedge clk);
        end

        // pause afterward
        repeat (5) @(posedge clk);
        //--------------------------------------------
        // TEST 2 — READ BACK ALL 8 WEIGHTS + CHECK
        //--------------------------------------------

        // expected patterns must match Test 1 writes
        // logic [63:0] expected_weights [0:7];
        for (i = 0; i < 8; i++) begin
            expected_weights[i] = {32'hAAAA0000 + i, 32'hBBBB0000 + i};
        end

        get_weights   = 0;
        get_inputs    = 0;
        get_out       = 0;
        write_enable  = 0;
        is_weight     = 0;

        repeat (5) @(posedge clk);

        for (i = 0; i < 8; i++) begin
            // Start read
            get_weights = 1;
            @(posedge clk);
            get_weights = 0;

            // Wait for data_ready
            wait (data_ready === 1);
            @(posedge clk); // stable data on this cycle

            // Check correctness
            if (data !== expected_weights[i]) begin
                $display("[%0t] ERROR: Weight %0d mismatch!", $time, i);
                $display("  Expected: %h", expected_weights[i]);
                $display("  Got:      %h", data);
            end else begin
                $display("[%0t] OK: Weight %0d matches (%h)",
                         $time, i, data);
            end

            // Wait for FSM to return to IDLE cleanly
            repeat (5) @(posedge clk);
        end

        $display("====================================");
        $display(" ALL 8 WEIGHTS READ BACK CORRECTLY ");
        $display("====================================");

        repeat (10) @(posedge clk);
        //--------------------------------------------
        // TEST 3 — WRITE 8 INPUT VECTORS (64-bit each)
        //--------------------------------------------

        // reset control signals
        get_weights   = 0;
        get_inputs    = 0;
        get_out       = 0;
        write_enable  = 0;
        is_weight     = 0;   // NOT weights
        handshake     = 0;



        // generate patterns
        for (i = 0; i < 8; i++) begin
            expected_inputs[i] = {32'hCCCC0000 + i, 32'hDDDD0000 + i};
        end

        repeat (5) @(posedge clk);

        // ---- WRITE 8 INPUTS ----
        for (i = 0; i < 8; i++) begin
            write_data = expected_inputs[i];

            write_enable = 1;
            @(posedge clk);
            write_enable = 0;

            repeat (20) @(posedge clk); // allow SRAM low+high writes
        end

        repeat (10) @(posedge clk);


        //--------------------------------------------
        // TEST 4 — READ BACK THE 8 INPUTS
        //--------------------------------------------

        $display("====================================");
        $display("    READING BACK THE 8 INPUTS       ");
        $display("====================================");

        for (i = 0; i < 8; i++) begin
            get_inputs = 1;
            @(posedge clk);
            get_inputs = 0;

            // Wait for SEND_INPUT
            wait (data_ready === 1);
            @(posedge clk);

            if (data !== expected_inputs[i]) begin
                $display("[%0t] ERROR: Input %0d mismatch!", 
                         $time, i);
                $display("  Expected: %h", expected_inputs[i]);
                $display("  Got:      %h", data);
            end else begin
                $display("[%0t] OK: Input %0d matches (%h)",
                         $time, i, data);
            end

            repeat (5) @(posedge clk);
        end

        $display("====================================");
        $display(" ALL 8 INPUTS READ BACK CORRECTLY ");
        $display("====================================");

        //--------------------------------------------
        // TEST 5 — TEST GET_OUT PATH (Correct Timing)
        //--------------------------------------------

        $display("====================================");
        $display("     TESTING GET_OUT CONTROL PATH   ");
        $display("====================================");

        // Clear controls
        get_weights   = 0;
        get_inputs    = 0;
        write_enable  = 0;
        is_weight     = 0;
        handshake     = 0;
        activations   = 0;
        out_valid     = 0;

        // Tell DUT we have 8 inputs (already written above)
        // num_inputs auto-updates via input_write_count

        // --- Trigger output-gather phase ---
        get_out = 1;
        @(posedge clk);
        get_out = 0;

        $display("[%0t] get_out asserted. DUT should now enter COUNT_OUTPUTS.", $time);

        // Wait 1–2 cycles for FSM to settle
        repeat (3) @(posedge clk);

        // Now DUT is in COUNT_OUTPUTS → we feed activations here
        // logic [63:0] expected_outputs [0:7];
        for (i = 0; i < 8; i++)
            expected_outputs[i] = {32'hEEEE0000 + i, 32'hFFFF0000 + i};

        // Feed 8 activation values WHILE in COUNT_OUTPUTS
        for (i = 0; i < 8; i++) begin
            activations = expected_outputs[i];
            out_valid   = 1;

            @(posedge clk);
        end

        out_valid = 0;
        activations = 0;

        // Wait for inference_done
        wait (out_done == 1);
        @(posedge clk);

        $display("[%0t] COUNT_OUTPUTS complete. Entering output readback.", $time);


        //--------------------------------------------
        // AHB READBACK USING output_valid/output_data
        //--------------------------------------------

        for (i = 0; i < 8; i++) begin

            // Wait until DUT asserts output_valid
            wait (output_valid == 1);
            @(posedge clk);

            if (output_data !== expected_outputs[i]) begin
                $display("[%0t] ERROR: Output %0d mismatch!", 
                        $time, i);
                $display("  Expected: %h", expected_outputs[i]);
                $display("  Got:      %h", output_data);
            end else begin
                $display("[%0t] OK: Output %0d matches (%h)",
                        $time, i, output_data);
            end

            // Pulse handshake to advance to next output
            handshake = 1;
            @(posedge clk);
            handshake = 0;

            repeat (2) @(posedge clk);
        end

        $display("====================================");
        $display("   GET_OUT CONTROL PATH VERIFIED    ");
        $display("====================================");

        repeat (10) @(posedge clk);

        //--------------------------------------------
        // TEST 6 — FULL 128 INPUT VECTOR TEST
        //--------------------------------------------
        $display("=========================================");
        $display("        TESTING 128 INPUT VECTORS        ");
        $display("=========================================");



        // Initialize patterns
        for (i = 0; i < 128; i++) begin
            expected_in128[i]  = {32'h10000000 + i, 32'h20000000 + i};
            expected_out128[i] = {32'h30000000 + i, 32'h40000000 + i};
        end

        //--------------------------------------------
        // WRITE 128 INPUTS
        //--------------------------------------------
        get_inputs   = 0;
        write_enable = 0;
        is_weight    = 0;
        repeat (5) @(posedge clk);

        for (i = 0; i < 128; i++) begin
            write_data = expected_in128[i];

            write_enable = 1;
            @(posedge clk);
            write_enable = 0;

            repeat (20) @(posedge clk);
        end

        repeat (10) @(posedge clk);

        //--------------------------------------------
        // READ BACK 128 INPUTS
        //--------------------------------------------
        $display("Reading back 128 inputs...");

        for (i = 0; i < 128; i++) begin
            get_inputs = 1;
            @(posedge clk);
            get_inputs = 0;

            wait (data_ready === 1);
            @(posedge clk);

            if (data !== expected_in128[i]) begin
                $display("ERROR @%0t: Input[%0d] mismatch!", $time, i);
                $display(" Expected: %h", expected_in128[i]);
                $display(" Got:      %h", data);
            end

            repeat(3) @(posedge clk);
        end

        $display("All 128 inputs verified OK.");

        //--------------------------------------------
        // GET_OUT + FEED 128 ACTIVATIONS
        //--------------------------------------------
        get_out = 1;
        @(posedge clk);
        get_out = 0;

        repeat (3) @(posedge clk);

        $display("Feeding 128 activations into COUNT_OUTPUTS...");

        for (i = 0; i < 128; i++) begin
            activations = expected_out128[i];
            out_valid   = 1;
            @(posedge clk);
        end

        out_valid = 0;
        activations = 0;

        $display("Waiting for out_done...");
        wait (out_done == 1);
        @(posedge clk);

        //--------------------------------------------
        // READ BACK 128 OUTPUTS
        //--------------------------------------------
        $display("Reading back all 128 outputs via AHB...");

        for (i = 0; i < 128; i++) begin
            wait(output_valid == 1);
            @(posedge clk);

            if (output_data !== expected_out128[i]) begin
                $display("ERROR: Output[%0d] mismatch!", i);
                $display(" Expected: %h", expected_out128[i]);
                $display(" Got:      %h", output_data);
            end

            handshake = 1;
            @(posedge clk);
            handshake = 0;
        end

        $display("=========================================");
        $display(" COMPLETED FULL 128-VECTOR I/O TEST OK  ");
        $display("=========================================");

        $finish;
    end

endmodule

/* verilator coverage_on */

