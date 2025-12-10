`timescale 1ns / 10ps

module controller #(
    // parameters
) (
    input logic clk, n_rst, 

    // input from AHB
    input logic [7:0] ctrl_reg,

    // inputs from sram buffer
    input logic data_ready, out_done, output_valid, occupancy_err,
    input logic [63:0] data,
    input logic [6:0] num_inputs,

    // outputs to ahb
    // output logic busy, inference_done,
    output logic [7:0] status_reg,
    output logic [15:0] error_reg,

    // outputs to sram buffer
    output logic get_weights, get_inputs, get_out,
    
    // outputs to systolic array
    output logic in_valid,
    output logic [63:0] array_inputs,
    output logic [7:0] load
);
    logic start_inference, load_weights, weight_inc, input_inc, weight_flag, input_flag, clear_weights, clear_inputs, get_out_next;
    logic [2:0] weight_count;
    logic [6:0] input_count;
    logic busy, inference_done;

    assign status_reg = {6'b0, busy, inference_done && output_valid};
    assign error_reg = {7'b0, busy, 7'b0, occupancy_err};

    // control
    // start_inference = ctrl_reg[0];
    // load_weights = ctrl_reg[1];

    edge_det detect_inference (
        .clk(clk),
        .n_rst(n_rst),
        .async_in(ctrl_reg[0]),
        .sync_out(start_inference)
    );

    edge_det detect_weights (
        .clk(clk),
        .n_rst(n_rst),
        .async_in(ctrl_reg[1]),
        .sync_out(load_weights)
    );

    // weight and input increments for counting loading
    flex_counter #(.SIZE(3)) weight_counter (
        .clk(clk),
        .n_rst(n_rst),
        .clear(clear_weights),
        .count_enable(weight_inc),
        .rollover_val(3'd7),
        .count_out(weight_count),
        .rollover_flag(weight_flag)
    );
    flex_counter #(.SIZE(7)) input_counter (
        .clk(clk),
        .n_rst(n_rst),
        .clear(clear_inputs),
        .count_enable(input_inc),
        .rollover_val(num_inputs - 1),
        .count_out(input_count),
        .rollover_flag(input_flag)
    );

    typedef enum logic [3:0] {
        IDLE = 0,
        GET_WEIGHT = 1,
        WAIT_WEIGHT = 2,
        SEND_WEIGHT = 3,
        GET_INPUT = 4,
        WAIT_INPUT = 5,
        SEND_INPUT = 6,
        WAIT_OUT = 7,
        DONE = 8
    } state_t;

    state_t state, n_state;

    always_ff @ (posedge clk, negedge n_rst) begin
        if (~n_rst) begin
            state <= IDLE;
            get_out <= 0;
        end else begin
            state <= n_state;
            get_out <= get_out_next;
        end
    end

    always_comb begin
        n_state = state;
        busy = 0;
        inference_done = 0;
        load = 0;
        array_inputs = 0;
        in_valid = 0;
        get_weights = 0;
        get_inputs = 0;
        get_out_next = 0;
        weight_inc = 0;
        input_inc = 0;
        clear_weights = 0;
        clear_inputs = 0;
        case (state)
            IDLE: begin
                n_state = load_weights ? GET_WEIGHT : start_inference ? GET_INPUT : IDLE;
                clear_weights = load_weights ? 1 : 0;
                clear_inputs = start_inference ? 1 : 0;
                busy = 0;
            end
            GET_WEIGHT: begin
                n_state = WAIT_WEIGHT;
                busy = 1;
                get_weights = 1;
            end
            WAIT_WEIGHT: begin
                n_state = data_ready ? SEND_WEIGHT : WAIT_WEIGHT;
                busy = 1;
            end
            SEND_WEIGHT: begin
                // n_state = weight_count < 7 ? GET_WEIGHT : ASSERT_LOAD;
                n_state = weight_flag ? IDLE : GET_WEIGHT;
                weight_inc = 1'b1;
                busy = 1;
                array_inputs = data;
                load = 1 << (7 - weight_count);
            end
            GET_INPUT: begin
                n_state = WAIT_INPUT;
                busy = 1;
                get_inputs = 1;
            end
            WAIT_INPUT: begin
                n_state = data_ready ? SEND_INPUT : WAIT_INPUT;
                busy = 1;
            end
            SEND_INPUT: begin
                // n_state = input_count < num_inputs : GET_INPUT : WAIT_OUT;
                n_state = input_flag ? WAIT_OUT : GET_INPUT;
                get_out_next = input_flag ? 1 : 0;
                input_inc = 1;
                busy = 1;
                array_inputs = data;
                in_valid = 1;
            end
            WAIT_OUT: begin
                n_state = out_done ? DONE : WAIT_OUT;
                busy = 1;
                get_out_next = out_done ? 0 : 1;
            end
            DONE: begin
                n_state = IDLE;
                // busy = 1;
                inference_done = 1;
            end
            default: begin
                n_state = IDLE;
                busy = 0;
                inference_done = 0;
                load = 0;
                array_inputs = 0;
                in_valid = 0;
                get_weights = 0;
                get_inputs = 0;
                get_out_next = 0;
                weight_inc = 0;
                input_inc = 0;
                clear_weights = 0;
                clear_inputs = 0;
            end
        endcase
    end 
    

endmodule

