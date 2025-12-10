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

localparam [1:0] HTRANS_IDLE = 2'b00;
localparam [1:0] HTRANS_BUSY = 2'b01;
localparam [1:0] HTRANS_NONSEQ = 2'b10;
localparam [1:0] HTRANS_SEQ = 2'b11;

localparam [2:0] HBURST_SINGLE = 3'b000;
localparam [2:0] HBURST_INCR = 3'b001;
localparam [2:0] HBURST_WRAP4 = 3'b010;
localparam [2:0] HBURST_INCR4 = 3'b011;
localparam [2:0] HBURST_WRAP8 = 3'b100;
localparam [2:0] HBURST_INCR8 = 3'b101;
localparam [2:0] HBURST_WRAP16 = 3'b110;
localparam [2:0] HBURST_INCR16 = 3'b111;

localparam [3:0] BC_IDLE = 4'd0;
localparam [3:0] BC_SINGLE = 4'd1;
localparam [3:0] BC_INCR = 4'd2;
localparam [3:0] BC_WRAP4 = 4'd3;
localparam [3:0] BC_INCR4 = 4'd4;
localparam [3:0] BC_WRAP8 = 4'd5;
localparam [3:0] BC_INCR8 = 4'd6;
localparam [3:0] BC_WRAP16 = 4'd7;
localparam [3:0] BC_INCR16 = 4'd8;

logic [3:0] burst_state, burst_state_n;
logic [4:0] beats_left, beats_left_n;

logic size_ok;
logic trans_valid;
logic htrans_err;

always_comb begin
    size_ok = 1'b0;

    case (haddr)
        10'h000 : begin
            if (hsize == 2'b11) size_ok = 1'b1;
        end
        10'h008 : begin
            if (hsize == 2'b11) size_ok = 1'b1;
        end
        10'h010 : begin
            if (hsize == 2'b11) size_ok = 1'b1;
        end
        10'h018 : begin
            if (hsize == 2'b11) size_ok = 1'b1;
        end
        10'h020 : begin
            if (hsize == 2'b01) size_ok = 1'b1;
        end
        10'h022 : begin
            if (hsize == 2'b00) size_ok = 1'b1;
        end
        10'h023 : begin
            if (hsize == 2'b00) size_ok = 1'b1;
        end
        10'h024 : begin
            if (hsize == 2'b00) size_ok = 1'b1;
        end
        default : begin
            size_ok = 1'b0;
        end
    endcase
end

assign trans_valid = hsel && (htrans == HTRANS_NONSEQ || htrans == HTRANS_SEQ);

always_comb begin
    htrans_err = 1'b0;

    case (burst_state)
        BC_IDLE : begin
            if (hsel && htrans == HTRANS_SEQ) begin
                htrans_err = 1'b1;
            end
        end

        BC_SINGLE : begin
            htrans_err = 1'b0;
        end

        default : begin
            if (hsel) begin
                if (htrans == HTRANS_NONSEQ) begin
                    htrans_err = 1'b1;
                end
            end
        end
    endcase
end

always_ff @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        burst_state <= BC_IDLE;
        beats_left <= 5'd0;
        burst_en <= 1'b1;

        rf_addr <= 10'd0;
        rf_wdata <= 64'd0;
        wr_en <= 1'b0;
        rd_en <= 1'b0;
        burst_err <= 1'b0;
    end
    else begin
        wr_en <= 1'b0;
        rd_en <= 1'b0;
        burst_err <= 1'b0;

        burst_state <= burst_state_n;
        beats_left <= beats_left_n;

        if (burst_state_n == BC_IDLE) begin
            burst_en <= 1'b1;
        end
        else begin
            burst_en <= 1'b0;
        end

        if (trans_valid) begin
            rf_addr <= haddr;

            if (size_ok && !htrans_err) begin
                if (hwrite) begin
                    wr_en <= 1'b1;
                    rf_wdata <= hwdata;
                end
                else begin
                    rd_en <= 1'b1;
                end
            end
            else begin
                burst_err <= 1'b1;
            end
        end
    end
end

always_comb begin
    burst_state_n = burst_state;
    beats_left_n = beats_left;

    case (burst_state)

        BC_IDLE : begin
            beats_left_n = 5'd0;

            if (hsel && (htrans == HTRANS_NONSEQ)) begin
                case (hburst)
                    HBURST_SINGLE : begin
                        burst_state_n = BC_SINGLE;
                        beats_left_n = 5'd0;
                    end

                    HBURST_INCR : begin
                        burst_state_n = BC_INCR;
                        beats_left_n = 5'd0;
                    end

                    HBURST_WRAP4 : begin
                        burst_state_n = BC_WRAP4;
                        beats_left_n = 5'd4;
                    end

                    HBURST_INCR4 : begin
                        burst_state_n = BC_INCR4;
                        beats_left_n = 5'd4;
                    end

                    HBURST_WRAP8 : begin
                        burst_state_n = BC_WRAP8;
                        beats_left_n = 5'd8;
                    end

                    HBURST_INCR8 : begin
                        burst_state_n = BC_INCR8;
                        beats_left_n = 5'd8;
                    end

                    HBURST_WRAP16: begin
                        burst_state_n = BC_WRAP16;
                        beats_left_n = 5'd16;
                    end

                    HBURST_INCR16 : begin
                        burst_state_n = BC_INCR16;
                        beats_left_n = 5'd16;
                    end

                    default : begin
                        burst_state_n = BC_IDLE;
                        beats_left_n = 5'd0;
                    end
                endcase
            end
        end

        BC_SINGLE: begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_NONSEQ || htrans == HTRANS_SEQ) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_SINGLE;
                beats_left_n = beats_left;
            end
        end

        BC_INCR : begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_SEQ || htrans == HTRANS_NONSEQ) begin
                burst_state_n = BC_INCR;
                beats_left_n = beats_left;
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_INCR;
                beats_left_n = beats_left;
            end
        end

        BC_WRAP4 : begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_SEQ) begin
                if (beats_left > 5'd1) begin
                    beats_left_n = beats_left - 5'd1;
                    burst_state_n = BC_WRAP4;
                end
                else begin
                    beats_left_n = 5'd0;
                    burst_state_n = BC_IDLE;
                end
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_WRAP4;
                beats_left_n = beats_left;
            end
        end

        BC_INCR4 : begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_SEQ) begin
                if (beats_left > 5'd1) begin
                    beats_left_n = beats_left - 5'd1;
                    burst_state_n = BC_INCR4;
                end
                else begin
                    beats_left_n = 5'd0;
                    burst_state_n = BC_IDLE;
                end
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_INCR4;
                beats_left_n = beats_left;
            end
        end

        BC_WRAP8 : begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_SEQ) begin
                if (beats_left > 5'd1) begin
                    beats_left_n = beats_left - 5'd1;
                    burst_state_n = BC_WRAP8;
                end
                else begin
                    beats_left_n = 5'd0;
                    burst_state_n = BC_IDLE;
                end
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_WRAP8;
                beats_left_n = beats_left;
            end
        end

        BC_INCR8 : begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_SEQ) begin
                if (beats_left > 5'd1) begin
                    beats_left_n = beats_left - 5'd1;
                    burst_state_n = BC_INCR8;
                end
                else begin
                    beats_left_n = 5'd0;
                    burst_state_n = BC_IDLE;
                end
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_INCR8;
                beats_left_n = beats_left;
            end
        end

        BC_WRAP16 : begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_SEQ) begin
                if (beats_left > 5'd1) begin
                    beats_left_n = beats_left - 5'd1;
                    burst_state_n = BC_WRAP16;
                end
                else begin
                    beats_left_n = 5'd0;
                    burst_state_n = BC_IDLE;
                end
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_WRAP16;
                beats_left_n = beats_left;
            end
        end

        BC_INCR16 : begin
            if (!hsel || htrans == HTRANS_IDLE) begin
                burst_state_n = BC_IDLE;
                beats_left_n = 5'd0;
            end
            else if (htrans == HTRANS_SEQ) begin
                if (beats_left > 5'd1) begin
                    beats_left_n = beats_left - 5'd1;
                    burst_state_n = BC_INCR16;
                end
                else begin
                    beats_left_n = 5'd0;
                    burst_state_n = BC_IDLE;
                end
            end
            else if (htrans == HTRANS_BUSY) begin
                burst_state_n = BC_INCR16;
                beats_left_n = beats_left;
            end
        end

        default : begin
            burst_state_n = BC_IDLE;
            beats_left_n = 5'd0;
        end

    endcase
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
    n_wr_en = wr_en_push;
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
                n_wr_en = 1'b0;
            end
            10'h22 : begin
                n_ctrl_reg = rf_wdata[47:40];
                n_is_weight = 1'b0;
                n_wr_en = 1'b0;
            end
            10'h24 : begin
                n_act_reg = rf_wdata[7:0];
                n_is_weight = 1'b0;
                n_wr_en = 1'b0;
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
logic error_flag;

always_comb begin
    rf_rdata = 64'd0;
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

logic handshake_n;
logic any_error;


assign any_error = write_error | error_flag | burst_err | err_reg[0] | err_reg[8];

typedef enum logic [1:0] {ERR_IDLE, ERR_FIRST, ERR_SECOND, ERR_LAST} err_state_t;

err_state_t err_state, err_state_n;

always_ff @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        err_state <= ERR_IDLE;
    end
    else begin
        err_state <= err_state_n;
    end
end

always_comb begin
    err_state_n = err_state;

    case (err_state)
        ERR_IDLE : begin
            if (any_error) begin
                err_state_n = ERR_FIRST;
            end
        end

        ERR_FIRST : begin
            if (any_error) begin
                err_state_n = ERR_SECOND;
            end
            else begin
                err_state_n = ERR_LAST;
            end
        end

        ERR_SECOND : begin
            if (!any_error) begin
                err_state_n = ERR_IDLE;
            end
        end

        ERR_LAST : begin
            if (any_error) begin
                err_state_n = ERR_SECOND;
            end
            else begin
                err_state_n = ERR_IDLE;
            end
        end

        default : begin
            err_state_n = ERR_IDLE;
        end
    endcase
end

always_comb begin
    hresp = 1'b0;
    hready = 1'b1;

    case (err_state)
        ERR_IDLE : begin
            hresp = 1'b0;
            hready = 1'b1;
        end

        ERR_FIRST : begin
            hresp = 1'b1;
            hready = 1'b0;
        end

        ERR_SECOND : begin
            hresp = 1'b1;
            hready = 1'b0;
        end

        ERR_LAST : begin
            hresp = 1'b1;
            hready = 1'b0;
        end

        default : begin
            hresp = 1'b0;
            hready = 1'b1;
        end
    endcase
end

always_ff @(posedge clk or negedge n_rst) begin
    if(!n_rst) begin
        handshake <= 1'b0;
    end
    else begin
        handshake <= handshake_n;
    end
end

always_comb begin
    handshake_n = 1'b0;

    hrdata = rf_rdata;

    if (rd_en && rf_addr == 10'h018 && status_reg[0] && !any_error) begin
        handshake_n = 1'b1;
    end
end


endmodule
