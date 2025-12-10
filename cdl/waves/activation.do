onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider TB
add wave -noupdate /tb_activation/clk
add wave -noupdate /tb_activation/n_rst
add wave -noupdate /tb_activation/biased_inputs
add wave -noupdate /tb_activation/activation_mode
add wave -noupdate /tb_activation/float
add wave -noupdate /tb_activation/activated_outputs
add wave -noupdate /tb_activation/fail_count
add wave -noupdate /tb_activation/man_times_half
add wave -noupdate /tb_activation/real_activated
add wave -noupdate /tb_activation/real_biased
add wave -noupdate /tb_activation/subnormal_act
add wave -noupdate /tb_activation/subnormal_bias
add wave -noupdate -divider DUT
add wave -noupdate /tb_activation/DUT/biased_inputs
add wave -noupdate /tb_activation/DUT/activation_mode
add wave -noupdate /tb_activation/DUT/float
add wave -noupdate /tb_activation/DUT/activated_outputs
add wave -noupdate /tb_activation/DUT/leaky_out
add wave -noupdate /tb_activation/DUT/nan_overflow
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {122510216 ps} 0}
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
WaveRestoreZoom {0 ps} {151236750 ps}
