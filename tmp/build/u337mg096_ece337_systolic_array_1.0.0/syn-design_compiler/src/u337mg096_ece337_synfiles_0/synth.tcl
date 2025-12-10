source $READ_SOURCES.tcl
elaborate $TOP_MODULE
uniquify

suppress_message VO-4

 set_max_delay 8 -from U6356/value[0] -to bias_outputs[56]
# set_max_area <area>
# set_max_total_power <power> mW
# create_clock <clock_name> -name <clock_name> -period <clock period>

compile -map_effort medium
report_timing -path full -delay max -max_paths 1 -nworst 1 > $REPORT_DIR/$TOP_MODULE.rep
report_area >> $REPORT_DIR/$TOP_MODULE.rep
report_power -hierarchy >> $REPORT_DIR/$TOP_MODULE.rep

write_file -format verilog -hierarchy -output $TOP_MODULE.v
check_design
quit

