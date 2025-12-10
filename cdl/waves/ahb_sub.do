onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider tb
add wave -noupdate /tb_ahb_sub/clk
add wave -noupdate /tb_ahb_sub/n_rst
add wave -noupdate /tb_ahb_sub/hsel
add wave -noupdate /tb_ahb_sub/haddr
add wave -noupdate /tb_ahb_sub/hsize
add wave -noupdate /tb_ahb_sub/hburst
add wave -noupdate /tb_ahb_sub/htrans
add wave -noupdate /tb_ahb_sub/htrans_to_dut
add wave -noupdate /tb_ahb_sub/hwrite
add wave -noupdate /tb_ahb_sub/hwdata
add wave -noupdate /tb_ahb_sub/hrdata_bus
add wave -noupdate /tb_ahb_sub/hresp
add wave -noupdate /tb_ahb_sub/hready
add wave -noupdate /tb_ahb_sub/busy_inject
add wave -noupdate /tb_ahb_sub/act_mode
add wave -noupdate /tb_ahb_sub/hrdata_dut
add wave -noupdate /tb_ahb_sub/handshake
add wave -noupdate /tb_ahb_sub/bias_reg
add wave -noupdate /tb_ahb_sub/ctrl_reg
add wave -noupdate /tb_ahb_sub/wr_en_push
add wave -noupdate /tb_ahb_sub/is_weight
add wave -noupdate /tb_ahb_sub/status_reg
add wave -noupdate /tb_ahb_sub/output_data
add wave -noupdate /tb_ahb_sub/err_reg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {188883 ps} 0}
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
WaveRestoreZoom {0 ps} {603750 ps}
