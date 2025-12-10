onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB /tb_ai_accelerator/clk
add wave -noupdate -expand -group TB /tb_ai_accelerator/n_rst
add wave -noupdate -expand -group TB /tb_ai_accelerator/hsel
add wave -noupdate -expand -group TB /tb_ai_accelerator/haddr
add wave -noupdate -expand -group TB /tb_ai_accelerator/htrans
add wave -noupdate -expand -group TB /tb_ai_accelerator/hsize
add wave -noupdate -expand -group TB /tb_ai_accelerator/hwrite
add wave -noupdate -expand -group TB /tb_ai_accelerator/hwdata
add wave -noupdate -expand -group TB /tb_ai_accelerator/hburst
add wave -noupdate -expand -group TB /tb_ai_accelerator/hrdata
add wave -noupdate -expand -group TB /tb_ai_accelerator/hresp
add wave -noupdate -expand -group TB /tb_ai_accelerator/hready
add wave -noupdate -expand -group TB /tb_ai_accelerator/wen
add wave -noupdate -expand -group TB /tb_ai_accelerator/ren
add wave -noupdate -expand -group TB /tb_ai_accelerator/rdata
add wave -noupdate -expand -group TB /tb_ai_accelerator/wdata
add wave -noupdate -expand -group TB /tb_ai_accelerator/addr
add wave -noupdate -expand -group TB /tb_ai_accelerator/sram_state
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/clk
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/n_rst
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hsel
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/haddr
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/htrans
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hsize
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hwrite
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hwdata
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hburst
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hrdata
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hresp
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/hready
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/wen
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/ren
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/rdata
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/wdata
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/addr
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/sram_state
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/status_reg
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/ctrl_reg
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/error_reg
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/bias_reg
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/output_data
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/handshake
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/is_weight
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/wr_en_push
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/get_weights
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/get_inputs
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/get_out
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/data_ready
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/out_done
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/occupancy_err
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/write_data
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/data
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/num_inputs
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/float
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/load
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/input_value
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/input_valid
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/output_valid
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/output_value_sys
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/bias_outputs
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/output_valid_bias
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/activated_outputs
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/output_valid_act
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/act_mode
add wave -noupdate -group TOP /tb_ai_accelerator/DUT/output_valid_sys
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/clk
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/n_rst
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hsel
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hwrite
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/haddr
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/htrans
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hsize
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hwdata
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hburst
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/status_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/output_data
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/err_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/act_mode
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hready
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hresp
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/hrdata
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/handshake
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/bias_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/ctrl_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/wr_en_push
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/is_weight
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/write_data
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/wr_en
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/rd_en
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/rf_addr
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/rf_wdata
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/burst_en
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/burst_state
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/burst_state_n
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/beats_left
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/beats_left_n
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/size_ok
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/trans_valid
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/htrans_err
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/n_write_data
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/n_wr_en
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/n_is_weight
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/n_bias_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/n_ctrl_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/n_act_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/act_reg
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/rf_rdata
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/handshake_n
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/any_error
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/write_error
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/error_flag
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/burst_err
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/err_state
add wave -noupdate -expand -group AHB /tb_ai_accelerator/DUT/subordinate/err_state_n
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/clk
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/n_rst
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/get_weights
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/get_inputs
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/get_out
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/write_enable
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/is_weight
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/handshake
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/write_data
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/activations
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_valid
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/rdata
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/sram_state
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/data
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/data_ready
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_done
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/output_valid
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/occupancy_err
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/num_inputs
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/output_data
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/wen
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/ren
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/addr
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/wdata
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/state
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/n_state
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_write_count
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_read_count
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_write_clear
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_write_inc
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_write_flag
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_read_clear
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_read_inc
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/weight_read_flag
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_write_clear
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_write_inc
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_write_flag
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_read_clear
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_read_inc
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_read_flag
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_clear
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_flag
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_write_count
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/input_read_count
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_count
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_count_reg
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_count_reg_next
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/data_reg
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/data_reg_next
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/output_mem_index
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/output_mem_index_next
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/inference_done
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/inference_done_next
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/occupancy_err_reg
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/occupancy_err_next
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/occ_err_pulse
add wave -noupdate -group BUFFER /tb_ai_accelerator/DUT/buffer/out_valid_det
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/clk
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/n_rst
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/ctrl_reg
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/data_ready
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/out_done
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/output_valid
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/occupancy_err
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/data
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/num_inputs
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/status_reg
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/error_reg
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/get_weights
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/get_inputs
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/get_out
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/in_valid
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/array_inputs
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/load
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/start_inference
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/load_weights
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/weight_inc
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/input_inc
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/weight_flag
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/input_flag
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/clear_weights
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/clear_inputs
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/get_out_next
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/weight_count
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/input_count
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/busy
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/inference_done
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/state
add wave -noupdate -group CONTROL /tb_ai_accelerator/DUT/control_unit/n_state
add wave -noupdate -group SRAM /tb_ai_accelerator/sram/memory
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {82661 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 153
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {726397 ps}
