onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group SYSTEM /tb_sram_buffer/clk
add wave -noupdate -expand -group SYSTEM /tb_sram_buffer/n_rst
add wave -noupdate -expand -group {INPUTS FROM CONTROLLER} /tb_sram_buffer/get_inputs
add wave -noupdate -expand -group {INPUTS FROM CONTROLLER} /tb_sram_buffer/get_out
add wave -noupdate -expand -group {INPUTS FROM CONTROLLER} /tb_sram_buffer/get_weights
add wave -noupdate -expand -group {INPUTS FROM AHB} /tb_sram_buffer/handshake
add wave -noupdate -expand -group {INPUTS FROM AHB} /tb_sram_buffer/is_weight
add wave -noupdate -expand -group {INPUTS FROM AHB} /tb_sram_buffer/write_data
add wave -noupdate -expand -group {INPUTS FROM AHB} /tb_sram_buffer/write_enable
add wave -noupdate -expand -group {INPUTS FROM ACT} /tb_sram_buffer/out_valid
add wave -noupdate -expand -group {INPUTS FROM ACT} /tb_sram_buffer/activations
add wave -noupdate -expand -group {INPUTS FROM SRAM} /tb_sram_buffer/rdata
add wave -noupdate -expand -group {INPUTS FROM SRAM} /tb_sram_buffer/sram_state
add wave -noupdate -expand -group {OUTPUTS TO CONTROLLER} /tb_sram_buffer/data
add wave -noupdate -expand -group {OUTPUTS TO CONTROLLER} /tb_sram_buffer/data_ready
add wave -noupdate -expand -group {OUTPUTS TO CONTROLLER} /tb_sram_buffer/out_done
add wave -noupdate -expand -group {OUTPUTS TO AHB} /tb_sram_buffer/output_valid
add wave -noupdate -expand -group {OUTPUTS TO AHB} /tb_sram_buffer/output_data
add wave -noupdate -expand -group {OUTPUTS TO SRAM} /tb_sram_buffer/addr
add wave -noupdate -expand -group {OUTPUTS TO SRAM} /tb_sram_buffer/wdata
add wave -noupdate -expand -group {OUTPUTS TO SRAM} /tb_sram_buffer/ren
add wave -noupdate -expand -group {OUTPUTS TO SRAM} /tb_sram_buffer/wen
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/state
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/input_read_count
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/input_write_count
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/weight_read_count
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/weight_write_count
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/data_reg
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/out_mem
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/output_mem_index
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/out_count
add wave -noupdate -expand -group INTERNAL /tb_sram_buffer/dut/out_flag
add wave -noupdate -expand -group SRAM /tb_sram_buffer/sram/memory
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6663113 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 160
configure wave -valuecolwidth 227
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
WaveRestoreZoom {6626344 ps} {6764741 ps}
