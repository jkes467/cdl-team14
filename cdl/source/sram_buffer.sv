`timescale 1ns / 10ps

module sram_buffer #(
    // parameters
) (
    input logic clk, n_rst, 

    // inputs from controller
    input logic get_weights, get_inputs, get_out,

    // inputs from ahb
    input logic write_enable, is_weight, handshake,
    input logic [63:0] write_data, 

    // inputs from activations
    input logic [63:0] activations,
    input logic out_valid,

    // inputs from sram
    input logic [31:0] rdata,
    input logic [1:0] sram_state,

    // outputs to controller
    output logic [63:0] data, 
    output logic data_ready, out_done,

    // outputs to ahb
    output logic output_valid,
    output logic [63:0] output_data,

    // outputs to sram
    output logic wen, ren,
    output logic [9:0] addr,
    output logic [31:0] wdata
);

    typedef enum logic [31:0] {
        IDLE = 0,
        W_WEIGHT = 1,
        W_WEIGHT_LOW_WAIT = 2,
        WAIT1 = 3,
        W_WEIGHT_HIGH_WAIT = 4,
        W_INPUT = 5,
        W_IN_LOW_WAIT = 6,
        WAIT2 = 7,
        W_IN_HIGH_WAIT = 8,
        R_WEIGHT = 9,
        R_WEIGHT_LOW_WAIT = 10,
        WAIT3 = 11,
        R_WEIGHT_HIGH_WAIT = 12,
        SEND_WEIGHT = 13,
        R_INPUT = 14,
        R_IN_LOW_WAIT = 15,
        WAIT4 = 16,
        R_IN_HIGH_WAIT = 17,
        SEND_INPUT = 18,
        COUNT_OUTPUTS = 19,
        INFERENCE_DONE = 20
    } state_t;

    state_t state, n_state;
    logic [3:0] weight_write_count, weight_read_count;
    logic weight_write_clear, weight_write_inc, weight_write_flag, weight_read_clear, weight_read_inc, weight_read_flag;
    logic input_write_clear, input_write_inc, input_write_flag, input_read_clear, input_read_inc, input_read_flag, out_clear, out_flag;
    logic [7:0] input_write_count, input_read_count, num_inputs, out_count, out_count_reg, out_count_reg_next;

    logic [63:0] data_reg, data_reg_next;
    logic [63:0] out_mem [0:127];
    logic [63:0] out_mem_next [0:127];
    logic [6:0] output_mem_index, output_mem_index_next;
    logic inference_done, inference_done_next;

    assign output_data = out_mem[output_mem_index];
    assign output_valid = inference_done && (output_mem_index <= out_count_reg);
    assign output_mem_index_next = (state == INFERENCE_DONE) ? 0 : handshake && output_valid ? output_mem_index + 1 : output_mem_index;

    flex_counter #(.SIZE(4)) weight_counter_write (
        .clk(clk),
        .n_rst(n_rst),
        .clear(weight_write_clear),
        .count_enable(weight_write_inc),
        .rollover_val(4'd8),
        .count_out(weight_write_count),
        .rollover_flag(weight_write_flag)
    );

    flex_counter #(.SIZE(4)) weight_counter_read (
        .clk(clk),
        .n_rst(n_rst),
        .clear(weight_read_clear),
        .count_enable(weight_read_inc),
        .rollover_val(4'd8),
        .count_out(weight_read_count),
        .rollover_flag(weight_read_flag)
    );

    flex_counter #(.SIZE(8)) input_counter_write (
        .clk(clk),
        .n_rst(n_rst),
        .clear(input_write_clear),
        .count_enable(input_write_inc),
        .rollover_val(8'd128),
        .count_out(input_write_count),
        .rollover_flag(input_write_flag)
    );

    flex_counter #(.SIZE(8)) input_counter_read (
        .clk(clk),
        .n_rst(n_rst),
        .clear(input_read_clear),
        .count_enable(input_read_inc),
        .rollover_val(8'd128),
        .count_out(input_read_count),
        .rollover_flag(input_read_flag)
    );

    logic out_valid_det;
    // edge_det detect_valid_out (
    //     .clk(clk),
    //     .n_rst(n_rst),
    //     .async_in(out_valid),
    //     .sync_out(out_inc)
    // );                                     

    flex_counter #(.SIZE(8)) output_counter (
        .clk(clk),
        .n_rst(n_rst),
        .clear(out_clear),
        .count_enable(out_valid),
        .rollover_val(num_inputs[7:0] - 8'd1),
        .count_out(out_count),
        .rollover_flag(out_flag)
    );




    always_ff @ (posedge clk, negedge n_rst) begin
        if (~n_rst) begin
            state <= IDLE;
            data_reg <= 64'b0;
            num_inputs <= 7'd0;
            out_mem <= '{default: 0};
            output_mem_index <= 0;
            inference_done <= 0;
            out_count_reg <= 0;
        end else begin
            state <= n_state;
            data_reg <= data_reg_next;
            num_inputs <= input_write_count;
            out_mem <= out_mem_next;
            output_mem_index <= output_mem_index_next;
            inference_done <= inference_done_next;
            out_count_reg <= out_count_reg_next;
        end
    end

    always_comb begin
        n_state = IDLE;
        data_ready = 0;
        data = 0;
        out_done = 0;
        addr = 0;
        wen = 0;
        ren = 0;
        wdata = 0;
        // output_valid = 0;
        // output_data = 0;
        out_clear = 0;
        // out_inc = 0;
        weight_write_clear = 0;
        weight_write_inc = 0;
        weight_read_clear = 0;
        weight_read_inc = 0;
        input_write_clear = 0;
        input_write_inc = 0;
        input_read_clear = 0;
        input_read_inc = 0;
        data_reg_next = data_reg;
        out_mem_next = out_mem;
        inference_done_next = inference_done;
        out_count_reg_next = out_count_reg;
        case (state)
            IDLE: begin
                if (write_enable && is_weight && sram_state == 2'b0) begin
                    inference_done_next = 0;
                    n_state = W_WEIGHT;
                end else if (write_enable && ~is_weight && sram_state == 2'b0) begin
                    inference_done_next = 0;
                    n_state = W_INPUT;
                end else if (get_weights && sram_state == 2'b0) begin
                    inference_done_next = 0;
                    n_state = R_WEIGHT;
                end else if (get_inputs && sram_state == 2'b0) begin
                    inference_done_next = 0;
                    n_state = R_INPUT;
                end else if (get_out) begin
                    inference_done_next = 0;
                    n_state = COUNT_OUTPUTS;
                end else begin
                    inference_done_next = inference_done;
                end
            end
            W_WEIGHT: begin
                n_state = W_WEIGHT_LOW_WAIT;
                wen = 1;
                weight_write_inc = 1;
            end
            W_WEIGHT_LOW_WAIT: begin
                n_state = (sram_state == 2'd2) ? WAIT1 : W_WEIGHT_LOW_WAIT;
                addr = (weight_write_count - 1) << 1;
                wen = 1;
                wdata = write_data[31:0];
            end
            WAIT1: begin
                n_state = W_WEIGHT_HIGH_WAIT;
                addr = 1 + ((weight_write_count - 1) << 1);
                wen = 1;
                wdata = write_data[63:32];
            end
            W_WEIGHT_HIGH_WAIT: begin
                n_state = (sram_state == 2'd2) ? IDLE : W_WEIGHT_HIGH_WAIT;
                addr = 1 + ((weight_write_count - 1) << 1);
                wen = 1;
                wdata = write_data[63:32];
            end
            W_INPUT: begin
                n_state = W_IN_LOW_WAIT;
                input_write_inc = 1;
            end
            W_IN_LOW_WAIT: begin
                n_state = (sram_state == 2'd2) ? WAIT2 : W_IN_LOW_WAIT;
                addr = 16 + ((input_write_count-1) << 1);
                wen = 1;
                wdata = write_data[31:0];
            end
            WAIT2: begin
                n_state = W_IN_HIGH_WAIT;
                addr = 17 + ((input_write_count-1) << 1);
                wen = 1;
                wdata = write_data[63:32];
            end
            W_IN_HIGH_WAIT: begin
                n_state = (sram_state == 2'd2) ? IDLE : W_IN_HIGH_WAIT;
                addr = 17 + ((input_write_count-1) << 1);
                wen = 1;
                wdata = write_data[63:32];
            end
            R_WEIGHT: begin
                n_state = R_WEIGHT_LOW_WAIT;
                weight_read_inc = 1;
            end
            R_WEIGHT_LOW_WAIT: begin
                n_state = (sram_state == 2'b10) ? WAIT3 : R_WEIGHT_LOW_WAIT;
                addr = (weight_read_count - 1) << 1;
                ren = 1;
                data_reg_next[31:0] = (sram_state == 2'd2) ? rdata : data_reg;
            end
            WAIT3: begin
                n_state = R_WEIGHT_HIGH_WAIT;
                addr = 1 + ((weight_read_count - 1) << 1);
                ren = 1;
                data_reg_next[63:32] = (sram_state == 2'd2) ? rdata : data_reg;
            end
            R_WEIGHT_HIGH_WAIT: begin
                n_state = (sram_state == 2'b10) ? SEND_WEIGHT : R_WEIGHT_HIGH_WAIT;
                addr = 1 + ((weight_read_count - 1) << 1);
                ren = 1;
                data_reg_next[63:32] = (sram_state == 2'd2) ? rdata : data_reg;
            end
            SEND_WEIGHT: begin
                n_state = (sram_state == 2'b00) ? IDLE : SEND_WEIGHT;
                data_ready = 1;
                data = data_reg;
            end
            R_INPUT: begin
                n_state = R_IN_LOW_WAIT;
                input_read_inc = 1;
            end
            R_IN_LOW_WAIT: begin
                n_state = (sram_state == 2'b10) ? WAIT4 : R_IN_LOW_WAIT;
                addr = 16 + ((input_read_count - 1) << 1);
                ren = 1;
                data_reg_next[31:0] = (sram_state == 2'd2) ? rdata : data_reg;
            end
            WAIT4: begin
                n_state = R_IN_HIGH_WAIT;
                addr = 17 + ((input_read_count - 1) << 1);
                ren = 1;
                data_reg_next[63:32] = (sram_state == 2'd2) ? rdata : data_reg;
            end
            R_IN_HIGH_WAIT: begin
                n_state = (sram_state == 2'b10) ? SEND_INPUT : R_IN_HIGH_WAIT;
                addr = 17 + ((input_read_count - 1) << 1);
                ren = 1;
                data_reg_next[63:32] = (sram_state == 2'd2) ? rdata : data_reg;
            end
            SEND_INPUT: begin
                n_state = (sram_state == 2'b00) ? IDLE : SEND_INPUT;
                data_ready = 1;
                data = data_reg;
            end
            COUNT_OUTPUTS: begin
                n_state = out_flag ? INFERENCE_DONE : COUNT_OUTPUTS;
                inference_done_next = out_flag ? 1 : 0;
                out_mem_next[out_count] = out_valid ? activations : out_mem_next[out_count];
                out_count_reg_next = out_flag ? out_count : out_count_reg;
            end
            INFERENCE_DONE: begin
                n_state = IDLE;
                weight_read_clear = 1;
                weight_write_clear = 1;
                input_read_clear = 1;
                input_write_clear = 1;
                out_clear = 1;
                out_done = 1;
            end
        endcase
    end


endmodule

