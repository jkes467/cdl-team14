onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider tb
add wave -noupdate /tb_ahb_sub/clk
add wave -noupdate /tb_ahb_sub/n_rst
add wave -noupdate /tb_ahb_sub/hsel
add wave -noupdate /tb_ahb_sub/hwrite
add wave -noupdate /tb_ahb_sub/haddr
add wave -noupdate /tb_ahb_sub/htrans
add wave -noupdate /tb_ahb_sub/hsize
add wave -noupdate /tb_ahb_sub/hwdata
add wave -noupdate /tb_ahb_sub/hburst
add wave -noupdate /tb_ahb_sub/status_reg
add wave -noupdate /tb_ahb_sub/output_data
add wave -noupdate /tb_ahb_sub/err_reg
add wave -noupdate /tb_ahb_sub/act_mode
add wave -noupdate /tb_ahb_sub/hready
add wave -noupdate /tb_ahb_sub/hresp
add wave -noupdate /tb_ahb_sub/hrdata
add wave -noupdate /tb_ahb_sub/handshake
add wave -noupdate /tb_ahb_sub/bias_reg
add wave -noupdate /tb_ahb_sub/ctrl_reg
add wave -noupdate /tb_ahb_sub/wr_en_push
add wave -noupdate /tb_ahb_sub/is_weight
add wave -noupdate /tb_ahb_sub/rdata
add wave -noupdate /tb_ahb_sub/i
add wave -noupdate -divider DUT
add wave -noupdate /tb_ahb_sub/DUT/wr_en
add wave -noupdate /tb_ahb_sub/DUT/rd_en
add wave -noupdate /tb_ahb_sub/DUT/rf_addr
add wave -noupdate /tb_ahb_sub/DUT/rf_wdata
add wave -noupdate /tb_ahb_sub/DUT/burst_err
add wave -noupdate /tb_ahb_sub/DUT/burst_en
add wave -noupdate /tb_ahb_sub/DUT/size_ok
add wave -noupdate /tb_ahb_sub/DUT/trans_valid
add wave -noupdate /tb_ahb_sub/DUT/burst_active
add wave -noupdate /tb_ahb_sub/DUT/beats_left
add wave -noupdate /tb_ahb_sub/DUT/n_write_data
add wave -noupdate /tb_ahb_sub/DUT/write_data
add wave -noupdate /tb_ahb_sub/DUT/n_wr_en
add wave -noupdate /tb_ahb_sub/DUT/n_is_weight
add wave -noupdate /tb_ahb_sub/DUT/n_bias_reg
add wave -noupdate /tb_ahb_sub/DUT/n_ctrl_reg
add wave -noupdate /tb_ahb_sub/DUT/n_act_reg
add wave -noupdate /tb_ahb_sub/DUT/act_reg
add wave -noupdate /tb_ahb_sub/DUT/write_error
add wave -noupdate /tb_ahb_sub/DUT/rf_rdata
add wave -noupdate /tb_ahb_sub/DUT/error_flag
add wave -noupdate /tb_ahb_sub/DUT/ready
add wave -noupdate /tb_ahb_sub/DUT/any_error
add wave -noupdate /tb_ahb_sub/DUT/error_in_progress
add wave -noupdate /tb_ahb_sub/DUT/error_cnt
add wave -noupdate /tb_ahb_sub/DUT/ready_q1
add wave -noupdate /tb_ahb_sub/DUT/ready_q2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1690549 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {1895250 ps}
