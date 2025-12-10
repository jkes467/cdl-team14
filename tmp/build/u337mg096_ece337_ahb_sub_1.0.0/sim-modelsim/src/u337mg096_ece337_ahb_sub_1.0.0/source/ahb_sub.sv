`timescale 1ns / 10ps

module ahb_sub #(
    // parameters
) (
    input logic clk, n_rst, hsel, hwrite,
    input logic [9:0] haddr,
    input logic [1:0] htrans, hsize, 
    input logic [63:0] hwdata,
    input logic [2:0] hburst,
    input logic [7:0] status_reg,
    input logic [63:0] output_data,
    input logic [15:0] err_reg,
    output logic [2:0] act_mode,
    output logic hready,
    output logic hresp,
    output logic [63:0] hrdata,
    output logic handshake,
    output logic [63:0] bias_reg,
    output logic [7:0] ctrl_reg,
    output logic wr_en_push,
    output logic is_weight,
    output logic [63:0] write_data

);
logic wr_en, rd_en;
logic [9:0] rf_addr;
logic [63:0] rf_wdata;

//burst control
logic burst_err;
logic burst_en;
localparam [1:0] HTRANS_IDLE=2'b00;
localparam [1:0] HTRANS_BUSY=2'b01;
localparam [1:0] HTRANS_NONSEQ=2'b10;
localparam [1:0] HTRANS_SEQ=2'b11;

localparam [2:0] HBURST_SINGLE=3'b000;
localparam [2:0] HBURST_INCR=3'b001;
localparam [2:0] HBURST_WRAP4=3'b010;
localparam [2:0] HBURST_INCR4=3'b011;
localparam [2:0] HBURST_WRAP8=3'b100;
localparam [2:0] HBURST_INCR8=3'b101;
localparam [2:0] HBURST_WRAP16=3'b110;
localparam [2:0] HBURST_INCR16=3'b111;

logic size_ok;
logic trans_valid;
logic burst_active;
logic [4:0] beats_left;

    always_comb begin
        size_ok = 1'b0;
        case(haddr)
            10'h000 : begin 
                if(hsize == 2'b11) begin 
                    size_ok = 1'b1;
                end
            end
            10'h008 : begin 
                if(hsize == 2'b11) begin 
                    size_ok = 1'b1;
                end
            end
            10'h010 : begin 
                if(hsize == 2'b11) begin 
                    size_ok = 1'b1;
                end
            end
            10'h018 : begin 
                if(hsize == 2'b11) begin 
                    size_ok = 1'b1;
                end
            end
            10'h020 : begin 
                if(hsize == 2'b01) begin
                    size_ok = 1'b1;
                end
            end
            10'h022 : begin
                if(hsize == 2'b00) begin
                    size_ok = 1'b1;
                end
            end
            10'h023 : begin
                if(hsize == 2'b00) begin
                    size_ok = 1'b1;
                end
            end
            10'h024 : begin
                if(hsize == 2'b00) begin
                    size_ok = 1'b1;
                end
            end
            default: begin
                size_ok = 1'b0;
            end
        endcase
    end

    assign trans_valid = hsel && (htrans == HTRANS_NONSEQ || htrans == HTRANS_SEQ);

    always_ff @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            rf_addr <= 10'd0;
            rf_wdata <= 64'd0;
            wr_en <= 1'b0;
            rd_en <= 1'b0;
            burst_en <= 1'b1;
            burst_err <= 1'b0;
            burst_active <= 1'b0;
            beats_left <= 5'd0;
        end else begin
            wr_en <= 1'b0;
            rd_en <= 1'b0;
            burst_err <= 1'b0;

            burst_en <= ~burst_active;

            if(trans_valid) begin
                rf_addr <= haddr;

                if(htrans == HTRANS_NONSEQ) begin
                    case(hburst)
                        HBURST_SINGLE : begin
                            burst_active <= 1'b0;
                            beats_left <= 5'd0;
                            burst_en <= 1'b1;
                        end
                        HBURST_INCR : begin
                            burst_active <= 1'b1;
                            beats_left <= 5'd0;
                            burst_en <= 1'b0;
                        end
                        HBURST_WRAP4,
                        HBURST_INCR4 : begin
                            burst_active <= 1'b1;
                            beats_left <= 5'd4;
                            burst_en <= 1'b0;
                        end
                        HBURST_WRAP8,
                        HBURST_INCR8 : begin
                            burst_active <= 1'b1;
                            beats_left <= 5'd8;
                            burst_en <= 1'b0;
                        end
                        HBURST_WRAP16,
                        HBURST_INCR16 : begin
                            burst_active <= 1'b1;
                            beats_left <= 5'd16;
                            burst_en <= 1'b0;
                        end
                        default : begin
                            burst_active <= 1'b0;
                            beats_left <= 5'd0;
                            burst_en <= 1'b1;
                        end
                    endcase
                end else if(htrans == HTRANS_SEQ && burst_active) begin
                    if(beats_left != 5'd0) begin
                        if(beats_left > 5'd1) begin
                            beats_left <= beats_left - 5'd1;
                            burst_en <= 1'b0;
                        end else begin
                            beats_left <= 5'd0;
                            burst_active <= 1'b0;
                            burst_en <= 1'b1;
                        end
                    end else begin
                        burst_en <= 1'b0;
                    end
                end

                if(size_ok) begin
                    if(hwrite) begin
                        wr_en <= 1'b1;
                        rf_wdata <= hwdata;
                    end else begin
                        rd_en <= 1'b1;
                    end
                    burst_err <= 1'b0;
                end else begin
                    burst_err <= 1'b1;
                end
            end else begin
                if(htrans == HTRANS_IDLE) begin
                    burst_active <= 1'b0;
                    beats_left <= 5'd0;
                    burst_en <= 1'b1;
                end
            end
        end
    end


// write logic
logic [63:0] n_write_data;
logic n_wr_en;
logic n_is_weight;
logic [63:0] n_bias_reg;
logic [7:0] n_ctrl_reg, n_act_reg, act_reg;
logic write_error;

always_ff @( posedge clk, negedge n_rst) begin
    if (n_rst == 1'b0) begin
        write_data <= '0;
        bias_reg <= '0;
        ctrl_reg <= '0;
        act_reg <= '0;
        is_weight <= '0;
        wr_en_push <= 1'b0;
    end
    else begin
        wr_en_push <= n_wr_en;
        write_data <= n_write_data;
        bias_reg <= n_bias_reg;
        ctrl_reg <= n_ctrl_reg;
        act_reg <= n_act_reg; 
        is_weight <= n_is_weight;
    end
end
always_comb begin
    n_write_data = write_data;
    n_bias_reg = bias_reg;
    n_ctrl_reg = ctrl_reg;
    n_act_reg = act_reg;
    n_is_weight = is_weight;
    n_wr_en = 1'b0;
    write_error = 1'b0;

    if (wr_en) begin
        case (rf_addr)
            10'h00 : begin
                n_write_data = rf_wdata;
                n_is_weight = 1'b1;
                n_wr_en = 1'b1;
            end
            10'h08 : begin
                n_write_data = rf_wdata;
                n_is_weight = 1'b0;
                n_wr_en = 1'b1;
            end
            10'h10 : begin
                n_bias_reg = rf_wdata;
                n_is_weight = 1'b0;
                n_wr_en = 1'b1;
            end
            10'h22 : begin
                n_ctrl_reg = rf_wdata[47:40];
                n_is_weight = 1'b0;
                n_wr_en = 1'b1;
            end
            10'h24 : begin
                n_act_reg = rf_wdata[7:0];
                n_is_weight = 1'b0;
                n_wr_en = 1'b1;
            end
            default : begin
                write_error  = 1'b1;
                n_wr_en = 1'b0;
            end

        endcase
    end
end

assign act_mode = act_reg[2:0];

// read logic
logic [63:0] rf_rdata;
logic        error_flag;

always_comb begin
    rf_rdata   = 64'd0;
    error_flag = 1'b0;

    if (rd_en) begin
        case (rf_addr)
            10'h010 : begin
                rf_rdata = bias_reg;
            end
            10'h018 : begin
                rf_rdata = output_data;
            end
            10'h020 : begin
                rf_rdata = {24'b0, err_reg, 24'b0};
            end
            10'h022 : begin
                rf_rdata = {16'b0, ctrl_reg, 40'b0};
            end
            10'h023 : begin
                rf_rdata = {8'b0, status_reg, 48'b0};
            end
            10'h024 : begin
                rf_rdata = {56'b0, act_reg};
            end
            default : begin
                error_flag = 1'b1;
            end
        endcase
    end
end


//output logic

logic ready;
logic handshake_n;
logic any_error;
logic error_in_progress;
logic [1:0] error_cnt;
logic ready_q1, ready_q2;

// combine error sources
assign any_error = write_error | error_flag | burst_err | err_reg[0] | err_reg[8];

// 2-cycle error FSM
always_ff @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        error_in_progress <= 1'b0;
        error_cnt <= 2'd0;
        handshake <= 1'b0;
    end
    else begin
        handshake <= handshake_n;
        if(!error_in_progress) begin
            // start error response when any_error goes high
            if(any_error) begin
                error_in_progress <= 1'b1;
                error_cnt <= 2'd2;   // hold for 2 cycles
            end
        end
        else begin
            // already in error response
            if(error_cnt != 2'd0) begin
                error_cnt <= error_cnt - 2'd1;
            end
            else begin
                // done, release bus
                error_in_progress <= 1'b0;
            end
        end
    end
end

always_comb begin
    handshake_n = 1'b0;

    if (rd_en &&
        rf_addr == 10'h018 &&
        status_reg[0] &&
        !any_error) begin
        handshake_n = 1'b1;
    end
end

// main combinational outputs before HREADY pipeline
always_comb begin
    // default: no error, ready
    hrdata = rf_rdata;
    hresp  = 1'b0;
    ready  = 1'b1;

    // override during error response
    if(error_in_progress) begin
        hresp = 1'b1;
        if(error_cnt != 2'd0) begin
            ready = 1'b0;   // stall for these 2 cycles
        end
        else begin
            ready = 1'b1;   // last cycle, allow HREADY high again
        end
    end
end

// HREADY stretching: ensures at least 2 cycles low when ready goes low
always_ff @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        ready_q1 <= 1'b1;
        ready_q2 <= 1'b1;
    end
    else begin
        ready_q1 <= ready;
        ready_q2 <= ready_q1;
    end
end

assign hready = ready_q1 & ready_q2;

endmodule
