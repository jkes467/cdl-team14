onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider TB
add wave -noupdate /tb_systolic_array/clk
add wave -noupdate /tb_systolic_array/n_rst
add wave -noupdate /tb_systolic_array/float
add wave -noupdate /tb_systolic_array/load
add wave -noupdate /tb_systolic_array/input_value
add wave -noupdate /tb_systolic_array/input_valid
add wave -noupdate /tb_systolic_array/output_valid
add wave -noupdate /tb_systolic_array/output_value
add wave -noupdate /tb_systolic_array/overflow
add wave -noupdate /tb_systolic_array/weights
add wave -noupdate /tb_systolic_array/total_failed
add wave -noupdate -divider DUT
add wave -noupdate /tb_systolic_array/DUT/clk
add wave -noupdate /tb_systolic_array/DUT/n_rst
add wave -noupdate /tb_systolic_array/DUT/float
add wave -noupdate /tb_systolic_array/DUT/load
add wave -noupdate /tb_systolic_array/DUT/input_value
add wave -noupdate /tb_systolic_array/DUT/input_valid
add wave -noupdate /tb_systolic_array/DUT/output_valid
add wave -noupdate /tb_systolic_array/DUT/output_value
add wave -noupdate /tb_systolic_array/DUT/overflow
add wave -noupdate /tb_systolic_array/DUT/row_layers
add wave -noupdate /tb_systolic_array/DUT/column_layers
add wave -noupdate /tb_systolic_array/DUT/direct_inputs
add wave -noupdate /tb_systolic_array/DUT/indirect_outputs
add wave -noupdate /tb_systolic_array/DUT/valid_signals
add wave -noupdate /tb_systolic_array/DUT/valid_outputs
add wave -noupdate /tb_systolic_array/DUT/next_output_valid
add wave -noupdate /tb_systolic_array/DUT/sub_overflow
add wave -noupdate /tb_systolic_array/DUT/x1
add wave -noupdate /tb_systolic_array/DUT/x2
add wave -noupdate /tb_systolic_array/DUT/x3
add wave -noupdate /tb_systolic_array/DUT/x4
add wave -noupdate /tb_systolic_array/DUT/x5
add wave -noupdate /tb_systolic_array/DUT/x6
add wave -noupdate /tb_systolic_array/DUT/x7
add wave -noupdate /tb_systolic_array/DUT/a6
add wave -noupdate /tb_systolic_array/DUT/a5
add wave -noupdate /tb_systolic_array/DUT/a4
add wave -noupdate /tb_systolic_array/DUT/a3
add wave -noupdate /tb_systolic_array/DUT/a2
add wave -noupdate /tb_systolic_array/DUT/a1
add wave -noupdate /tb_systolic_array/DUT/a0
add wave -noupdate /tb_systolic_array/DUT/v1
add wave -noupdate /tb_systolic_array/DUT/v2
add wave -noupdate /tb_systolic_array/DUT/v3
add wave -noupdate /tb_systolic_array/DUT/v4
add wave -noupdate /tb_systolic_array/DUT/v5
add wave -noupdate /tb_systolic_array/DUT/v6
add wave -noupdate /tb_systolic_array/DUT/v7
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {923469 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {6893250 ps}
