onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group SYSTEM /tb_controller/clk
add wave -noupdate -expand -group SYSTEM /tb_controller/n_rst
add wave -noupdate -expand -group {INPUTS FROM AHB} /tb_controller/ctrl_reg
add wave -noupdate -expand -group {INPUTS FROM BUFFER} /tb_controller/num_inputs
add wave -noupdate -expand -group {INPUTS FROM BUFFER} /tb_controller/data
add wave -noupdate -expand -group {INPUTS FROM BUFFER} /tb_controller/data_ready
add wave -noupdate -expand -group {INPUTS FROM BUFFER} /tb_controller/out_done
add wave -noupdate -expand -group {OUTPUTS TO AHB} /tb_controller/inference_done
add wave -noupdate -expand -group {OUTPUTS TO AHB} /tb_controller/busy
add wave -noupdate -expand -group {OUTPUTS TO BUFFER} /tb_controller/get_inputs
add wave -noupdate -expand -group {OUTPUTS TO BUFFER} /tb_controller/get_out
add wave -noupdate -expand -group {OUTPUTS TO BUFFER} /tb_controller/get_weights
add wave -noupdate -expand -group {OUTPUTS TO ARRAY} /tb_controller/array_inputs
add wave -noupdate -expand -group {OUTPUTS TO ARRAY} /tb_controller/in_valid
add wave -noupdate -expand -group {OUTPUTS TO ARRAY} /tb_controller/load
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 62
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
WaveRestoreZoom {0 ps} {36227 ps}
