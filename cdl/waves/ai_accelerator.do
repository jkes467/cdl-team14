onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_ai_accelerator/addr
add wave -noupdate /tb_ai_accelerator/clk
add wave -noupdate /tb_ai_accelerator/haddr
add wave -noupdate /tb_ai_accelerator/hburst
add wave -noupdate /tb_ai_accelerator/hrdata
add wave -noupdate /tb_ai_accelerator/hread
add wave -noupdate /tb_ai_accelerator/hready
add wave -noupdate /tb_ai_accelerator/hresp
add wave -noupdate /tb_ai_accelerator/hsel
add wave -noupdate /tb_ai_accelerator/hsize
add wave -noupdate /tb_ai_accelerator/htrans
add wave -noupdate /tb_ai_accelerator/hwdata
add wave -noupdate /tb_ai_accelerator/hwrite
add wave -noupdate /tb_ai_accelerator/n_rst
add wave -noupdate /tb_ai_accelerator/rdata
add wave -noupdate /tb_ai_accelerator/ren
add wave -noupdate /tb_ai_accelerator/sram_state
add wave -noupdate /tb_ai_accelerator/wdata
add wave -noupdate /tb_ai_accelerator/wen
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {523328 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 50
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
WaveRestoreZoom {0 ps} {1975446 ps}
