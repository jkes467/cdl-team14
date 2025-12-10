$date
	Wed Dec 10 09:45:23 2025
$end
$version
	QuestaSim Version 2021.4
$end
$timescale
	1ps
$end

$scope module tb_ahb_sub $end
$var parameter 0 ! CLK_PERIOD $end
$var parameter 32 " TIMEOUT $end
$var parameter 2 # HTRANS_IDLE $end
$var parameter 2 $ HTRANS_BUSY $end
$var parameter 2 % HTRANS_NONSEQ $end
$var parameter 2 & HTRANS_SEQ $end
$var parameter 3 ' BURST_SINGLE $end
$var parameter 3 ( BURST_INCR $end
$var parameter 3 ) BURST_WRAP4 $end
$var parameter 3 * BURST_INCR4 $end
$var parameter 3 + BURST_WRAP8 $end
$var parameter 3 , BURST_INCR8 $end
$var parameter 3 - BURST_WRAP16 $end
$var parameter 3 . BURST_INCR16 $end
$var reg 1 / clk $end
$var reg 1 0 n_rst $end
$var reg 1 1 hsel $end
$var reg 10 2 haddr [9:0] $end
$var reg 3 3 hsize [2:0] $end
$var reg 3 4 hburst [2:0] $end
$var reg 2 5 htrans [1:0] $end
$var reg 2 6 htrans_to_dut [1:0] $end
$var reg 1 7 hwrite $end
$var reg 64 8 hwdata [63:0] $end
$var reg 64 9 hrdata_bus [63:0] $end
$var reg 1 : hresp $end
$var reg 1 ; hready $end
$var reg 1 < busy_inject $end
$var reg 3 = act_mode [2:0] $end
$var reg 64 > hrdata_dut [63:0] $end
$var reg 1 ? handshake $end
$var reg 64 @ bias_reg [63:0] $end
$var reg 8 A ctrl_reg [7:0] $end
$var reg 1 B wr_en_push $end
$var reg 1 C is_weight $end
$var reg 8 D status_reg [7:0] $end
$var reg 64 E output_data [63:0] $end
$var reg 16 F err_reg [15:0] $end

$scope task reset_dut $end
$upscope $end

$scope task reset_model $end
$upscope $end

$scope task enqueue_poll $end
$var reg 10 G addr [9:0] $end
$var reg 2 H size [1:0] $end
$upscope $end

$scope task poll_until $end
$var reg 10 I addr [9:0] $end
$var reg 2 J size [1:0] $end
$var reg 64 K value [63:0] $end
$var integer 32 L iters $end
$upscope $end

$scope task enqueue_read $end
$var reg 10 M addr [9:0] $end
$var reg 2 N size [1:0] $end
$var reg 64 O exp_read [63:0] $end
$upscope $end

$scope task enqueue_write $end
$var reg 10 P addr [9:0] $end
$var reg 2 Q size [1:0] $end
$var reg 64 R wdata [63:0] $end
$upscope $end

$scope task enqueue_fakewrite $end
$var reg 10 S addr [9:0] $end
$var reg 2 T size [1:0] $end
$var reg 64 U wdata [63:0] $end
$upscope $end

$scope task enqueue_burst_read $end
$var reg 10 V base_addr [9:0] $end
$var reg 2 W size [1:0] $end
$var reg 3 X burst [2:0] $end
$upscope $end

$scope task enqueue_burst_write $end
$var reg 10 Y base_addr [9:0] $end
$var reg 2 Z size [1:0] $end
$var reg 3 [ burst [2:0] $end
$upscope $end

$scope task enqueue_burst_write_nocheck $end
$var reg 10 \ base_addr [9:0] $end
$var reg 2 ] size [1:0] $end
$var reg 3 ^ burst [2:0] $end
$upscope $end

$scope task enqueue_burst_read_nocheck $end
$var reg 10 _ base_addr [9:0] $end
$var reg 2 ` size [1:0] $end
$var reg 3 a burst [2:0] $end
$var integer 32 b beats $end
$var integer 32 c i $end
$upscope $end

$scope task execute_transactions $end
$var integer 32 d num_transactions $end
$upscope $end

$scope task finish_transactions $end
$upscope $end

$scope task test_all_writes $end
$upscope $end

$scope task test_all_reads $end
$upscope $end

$scope task test_all_bursts_write $end
$var integer 32 e i $end
$upscope $end

$scope task test_all_bursts_read $end
$upscope $end

$scope task test_busy_in_burst $end
$var integer 32 f i $end
$var integer 32 g beats $end

$scope begin run_tx $end
$upscope $end

$scope begin inject_busy $end
$upscope $end
$upscope $end

$scope module BFM $end
$var parameter 32 h DATA_WIDTH $end
$var parameter 32 i ADDR_WIDTH $end
$var parameter 32 j DATA_SELECT_WIDTH $end
$var parameter 32 k DATA_WIDTH_BITS $end
$var parameter 32 l DATA_MAX_BIT $end
$var parameter 32 m ADDR_MAX_BIT $end
$var parameter 0 n BUS_DELAY $end
$var parameter 2 o TRANS_IDLE $end
$var parameter 2 p TRANS_BUSY $end
$var parameter 2 q TRANS_NSEQ $end
$var parameter 2 r TRANS_SEQ $end
$var parameter 3 s BURST_SINGLE $end
$var parameter 3 t BURST_INCR $end
$var parameter 3 u BURST_WRAP4 $end
$var parameter 3 v BURST_INCR4 $end
$var parameter 3 w BURST_WRAP8 $end
$var parameter 3 x BURST_INCR8 $end
$var parameter 3 y BURST_WRAP16 $end
$var parameter 3 z BURST_INCR16 $end
$var wire 1 { clk $end
$var reg 1 | hsel $end
$var reg 10 } haddr [9:0] $end
$var reg 3 ~ hsize [2:0] $end
$var reg 2 !! htrans [1:0] $end
$var reg 3 "! hburst [2:0] $end
$var reg 1 #! hwrite $end
$var reg 64 $! hwdata [63:0] $end
$var wire 1 %! hrdata [63] $end
$var wire 1 &! hrdata [62] $end
$var wire 1 '! hrdata [61] $end
$var wire 1 (! hrdata [60] $end
$var wire 1 )! hrdata [59] $end
$var wire 1 *! hrdata [58] $end
$var wire 1 +! hrdata [57] $end
$var wire 1 ,! hrdata [56] $end
$var wire 1 -! hrdata [55] $end
$var wire 1 .! hrdata [54] $end
$var wire 1 /! hrdata [53] $end
$var wire 1 0! hrdata [52] $end
$var wire 1 1! hrdata [51] $end
$var wire 1 2! hrdata [50] $end
$var wire 1 3! hrdata [49] $end
$var wire 1 4! hrdata [48] $end
$var wire 1 5! hrdata [47] $end
$var wire 1 6! hrdata [46] $end
$var wire 1 7! hrdata [45] $end
$var wire 1 8! hrdata [44] $end
$var wire 1 9! hrdata [43] $end
$var wire 1 :! hrdata [42] $end
$var wire 1 ;! hrdata [41] $end
$var wire 1 <! hrdata [40] $end
$var wire 1 =! hrdata [39] $end
$var wire 1 >! hrdata [38] $end
$var wire 1 ?! hrdata [37] $end
$var wire 1 @! hrdata [36] $end
$var wire 1 A! hrdata [35] $end
$var wire 1 B! hrdata [34] $end
$var wire 1 C! hrdata [33] $end
$var wire 1 D! hrdata [32] $end
$var wire 1 E! hrdata [31] $end
$var wire 1 F! hrdata [30] $end
$var wire 1 G! hrdata [29] $end
$var wire 1 H! hrdata [28] $end
$var wire 1 I! hrdata [27] $end
$var wire 1 J! hrdata [26] $end
$var wire 1 K! hrdata [25] $end
$var wire 1 L! hrdata [24] $end
$var wire 1 M! hrdata [23] $end
$var wire 1 N! hrdata [22] $end
$var wire 1 O! hrdata [21] $end
$var wire 1 P! hrdata [20] $end
$var wire 1 Q! hrdata [19] $end
$var wire 1 R! hrdata [18] $end
$var wire 1 S! hrdata [17] $end
$var wire 1 T! hrdata [16] $end
$var wire 1 U! hrdata [15] $end
$var wire 1 V! hrdata [14] $end
$var wire 1 W! hrdata [13] $end
$var wire 1 X! hrdata [12] $end
$var wire 1 Y! hrdata [11] $end
$var wire 1 Z! hrdata [10] $end
$var wire 1 [! hrdata [9] $end
$var wire 1 \! hrdata [8] $end
$var wire 1 ]! hrdata [7] $end
$var wire 1 ^! hrdata [6] $end
$var wire 1 _! hrdata [5] $end
$var wire 1 `! hrdata [4] $end
$var wire 1 a! hrdata [3] $end
$var wire 1 b! hrdata [2] $end
$var wire 1 c! hrdata [1] $end
$var wire 1 d! hrdata [0] $end
$var wire 1 e! hresp $end
$var wire 1 f! hready $end
$var reg 64 g! last_hrdata_read [63:0] $end
$var integer 32 h! num_transactions_left $end

$scope fork new_transaction $end
$var reg 1 i! fake $end
$var reg 1 j! write_mode $end
$var reg 10 k! address [9:0] $end
$var reg 64 l! data [63:0] $end
$var reg 1 m! expect_error $end
$var reg 3 n! size [2:0] $end
$var reg 2 o! trans [1:0] $end
$var reg 3 p! burst [2:0] $end
$var reg 1 q! verify $end
$upscope $end

$scope fork bus_state $end
$var reg 1 r! addr_active $end
$var reg 1 s! data_active $end
$var integer 32 t! current_addr_transaction_num $end
$var integer 32 u! current_data_transaction_num $end

$scope fork current_addr_transaction $end
$var reg 1 v! fake $end
$var reg 1 w! write_mode $end
$var reg 10 x! address [9:0] $end
$var reg 64 y! data [63:0] $end
$var reg 1 z! expect_error $end
$var reg 3 {! size [2:0] $end
$var reg 2 |! trans [1:0] $end
$var reg 3 }! burst [2:0] $end
$var reg 1 ~! verify $end
$upscope $end

$scope fork current_data_transaction $end
$var reg 1 !" fake $end
$var reg 1 "" write_mode $end
$var reg 10 #" address [9:0] $end
$var reg 64 $" data [63:0] $end
$var reg 1 %" expect_error $end
$var reg 3 &" size [2:0] $end
$var reg 2 '" trans [1:0] $end
$var reg 3 (" burst [2:0] $end
$var reg 1 )" verify $end
$upscope $end
$upscope $end
$var integer 32 *" i $end
$var integer 32 +" minaddr $end
$var integer 32 ," maxaddr $end

$scope function bus_idleize_addr $end
$upscope $end

$scope function bus_idleize_data $end
$upscope $end

$scope function bus_idleize $end
$upscope $end

$scope function clear_trans $end
$upscope $end

$scope function reset_model $end
$upscope $end

$scope function enqueue_transaction $end
$var reg 1 -" sel $end
$var reg 1 ." write $end
$var reg 10 /" addr [9:0] $end
$var reg 1 0" exp_error $end
$var reg 3 1" size [2:0] $end
$var reg 3 2" burst [2:0] $end
$var reg 1 3" verify $end
$var integer 32 4" i $end
$var reg 1 5" wrap $end
$var integer 32 6" burst_size $end
$var integer 32 7" offset $end
$upscope $end

$scope task run_transactions $end
$var integer 32 8" num_transactions $end
$upscope $end

$scope begin DISPATCH_TRANSACTION $end
$upscope $end

$scope begin VERIFY_OUTPUT $end
$upscope $end

$scope function get_last_read $end
$var reg 64 9" get_last_read [63:0] $end
$upscope $end

$scope task wait_done $end
$upscope $end
$upscope $end

$scope module DUT $end
$var parameter 2 :" HTRANS_IDLE $end
$var parameter 2 ;" HTRANS_BUSY $end
$var parameter 2 <" HTRANS_NONSEQ $end
$var parameter 2 =" HTRANS_SEQ $end
$var parameter 3 >" HBURST_SINGLE $end
$var parameter 3 ?" HBURST_INCR $end
$var parameter 3 @" HBURST_WRAP4 $end
$var parameter 3 A" HBURST_INCR4 $end
$var parameter 3 B" HBURST_WRAP8 $end
$var parameter 3 C" HBURST_INCR8 $end
$var parameter 3 D" HBURST_WRAP16 $end
$var parameter 3 E" HBURST_INCR16 $end
$var parameter 4 F" BC_IDLE $end
$var parameter 4 G" BC_SINGLE $end
$var parameter 4 H" BC_INCR $end
$var parameter 4 I" BC_WRAP4 $end
$var parameter 4 J" BC_INCR4 $end
$var parameter 4 K" BC_WRAP8 $end
$var parameter 4 L" BC_INCR8 $end
$var parameter 4 M" BC_WRAP16 $end
$var parameter 4 N" BC_INCR16 $end
$var wire 1 O" clk $end
$var wire 1 P" n_rst $end
$var wire 1 Q" hsel $end
$var wire 1 R" hwrite $end
$var wire 1 S" haddr [9] $end
$var wire 1 T" haddr [8] $end
$var wire 1 U" haddr [7] $end
$var wire 1 V" haddr [6] $end
$var wire 1 W" haddr [5] $end
$var wire 1 X" haddr [4] $end
$var wire 1 Y" haddr [3] $end
$var wire 1 Z" haddr [2] $end
$var wire 1 [" haddr [1] $end
$var wire 1 \" haddr [0] $end
$var wire 1 ]" htrans [1] $end
$var wire 1 ^" htrans [0] $end
$var wire 1 _" hsize [1] $end
$var wire 1 `" hsize [0] $end
$var wire 1 a" hwdata [63] $end
$var wire 1 b" hwdata [62] $end
$var wire 1 c" hwdata [61] $end
$var wire 1 d" hwdata [60] $end
$var wire 1 e" hwdata [59] $end
$var wire 1 f" hwdata [58] $end
$var wire 1 g" hwdata [57] $end
$var wire 1 h" hwdata [56] $end
$var wire 1 i" hwdata [55] $end
$var wire 1 j" hwdata [54] $end
$var wire 1 k" hwdata [53] $end
$var wire 1 l" hwdata [52] $end
$var wire 1 m" hwdata [51] $end
$var wire 1 n" hwdata [50] $end
$var wire 1 o" hwdata [49] $end
$var wire 1 p" hwdata [48] $end
$var wire 1 q" hwdata [47] $end
$var wire 1 r" hwdata [46] $end
$var wire 1 s" hwdata [45] $end
$var wire 1 t" hwdata [44] $end
$var wire 1 u" hwdata [43] $end
$var wire 1 v" hwdata [42] $end
$var wire 1 w" hwdata [41] $end
$var wire 1 x" hwdata [40] $end
$var wire 1 y" hwdata [39] $end
$var wire 1 z" hwdata [38] $end
$var wire 1 {" hwdata [37] $end
$var wire 1 |" hwdata [36] $end
$var wire 1 }" hwdata [35] $end
$var wire 1 ~" hwdata [34] $end
$var wire 1 !# hwdata [33] $end
$var wire 1 "# hwdata [32] $end
$var wire 1 ## hwdata [31] $end
$var wire 1 $# hwdata [30] $end
$var wire 1 %# hwdata [29] $end
$var wire 1 &# hwdata [28] $end
$var wire 1 '# hwdata [27] $end
$var wire 1 (# hwdata [26] $end
$var wire 1 )# hwdata [25] $end
$var wire 1 *# hwdata [24] $end
$var wire 1 +# hwdata [23] $end
$var wire 1 ,# hwdata [22] $end
$var wire 1 -# hwdata [21] $end
$var wire 1 .# hwdata [20] $end
$var wire 1 /# hwdata [19] $end
$var wire 1 0# hwdata [18] $end
$var wire 1 1# hwdata [17] $end
$var wire 1 2# hwdata [16] $end
$var wire 1 3# hwdata [15] $end
$var wire 1 4# hwdata [14] $end
$var wire 1 5# hwdata [13] $end
$var wire 1 6# hwdata [12] $end
$var wire 1 7# hwdata [11] $end
$var wire 1 8# hwdata [10] $end
$var wire 1 9# hwdata [9] $end
$var wire 1 :# hwdata [8] $end
$var wire 1 ;# hwdata [7] $end
$var wire 1 <# hwdata [6] $end
$var wire 1 =# hwdata [5] $end
$var wire 1 ># hwdata [4] $end
$var wire 1 ?# hwdata [3] $end
$var wire 1 @# hwdata [2] $end
$var wire 1 A# hwdata [1] $end
$var wire 1 B# hwdata [0] $end
$var wire 1 C# hburst [2] $end
$var wire 1 D# hburst [1] $end
$var wire 1 E# hburst [0] $end
$var wire 1 F# status_reg [7] $end
$var wire 1 G# status_reg [6] $end
$var wire 1 H# status_reg [5] $end
$var wire 1 I# status_reg [4] $end
$var wire 1 J# status_reg [3] $end
$var wire 1 K# status_reg [2] $end
$var wire 1 L# status_reg [1] $end
$var wire 1 M# status_reg [0] $end
$var wire 1 N# output_data [63] $end
$var wire 1 O# output_data [62] $end
$var wire 1 P# output_data [61] $end
$var wire 1 Q# output_data [60] $end
$var wire 1 R# output_data [59] $end
$var wire 1 S# output_data [58] $end
$var wire 1 T# output_data [57] $end
$var wire 1 U# output_data [56] $end
$var wire 1 V# output_data [55] $end
$var wire 1 W# output_data [54] $end
$var wire 1 X# output_data [53] $end
$var wire 1 Y# output_data [52] $end
$var wire 1 Z# output_data [51] $end
$var wire 1 [# output_data [50] $end
$var wire 1 \# output_data [49] $end
$var wire 1 ]# output_data [48] $end
$var wire 1 ^# output_data [47] $end
$var wire 1 _# output_data [46] $end
$var wire 1 `# output_data [45] $end
$var wire 1 a# output_data [44] $end
$var wire 1 b# output_data [43] $end
$var wire 1 c# output_data [42] $end
$var wire 1 d# output_data [41] $end
$var wire 1 e# output_data [40] $end
$var wire 1 f# output_data [39] $end
$var wire 1 g# output_data [38] $end
$var wire 1 h# output_data [37] $end
$var wire 1 i# output_data [36] $end
$var wire 1 j# output_data [35] $end
$var wire 1 k# output_data [34] $end
$var wire 1 l# output_data [33] $end
$var wire 1 m# output_data [32] $end
$var wire 1 n# output_data [31] $end
$var wire 1 o# output_data [30] $end
$var wire 1 p# output_data [29] $end
$var wire 1 q# output_data [28] $end
$var wire 1 r# output_data [27] $end
$var wire 1 s# output_data [26] $end
$var wire 1 t# output_data [25] $end
$var wire 1 u# output_data [24] $end
$var wire 1 v# output_data [23] $end
$var wire 1 w# output_data [22] $end
$var wire 1 x# output_data [21] $end
$var wire 1 y# output_data [20] $end
$var wire 1 z# output_data [19] $end
$var wire 1 {# output_data [18] $end
$var wire 1 |# output_data [17] $end
$var wire 1 }# output_data [16] $end
$var wire 1 ~# output_data [15] $end
$var wire 1 !$ output_data [14] $end
$var wire 1 "$ output_data [13] $end
$var wire 1 #$ output_data [12] $end
$var wire 1 $$ output_data [11] $end
$var wire 1 %$ output_data [10] $end
$var wire 1 &$ output_data [9] $end
$var wire 1 '$ output_data [8] $end
$var wire 1 ($ output_data [7] $end
$var wire 1 )$ output_data [6] $end
$var wire 1 *$ output_data [5] $end
$var wire 1 +$ output_data [4] $end
$var wire 1 ,$ output_data [3] $end
$var wire 1 -$ output_data [2] $end
$var wire 1 .$ output_data [1] $end
$var wire 1 /$ output_data [0] $end
$var wire 1 0$ err_reg [15] $end
$var wire 1 1$ err_reg [14] $end
$var wire 1 2$ err_reg [13] $end
$var wire 1 3$ err_reg [12] $end
$var wire 1 4$ err_reg [11] $end
$var wire 1 5$ err_reg [10] $end
$var wire 1 6$ err_reg [9] $end
$var wire 1 7$ err_reg [8] $end
$var wire 1 8$ err_reg [7] $end
$var wire 1 9$ err_reg [6] $end
$var wire 1 :$ err_reg [5] $end
$var wire 1 ;$ err_reg [4] $end
$var wire 1 <$ err_reg [3] $end
$var wire 1 =$ err_reg [2] $end
$var wire 1 >$ err_reg [1] $end
$var wire 1 ?$ err_reg [0] $end
$var reg 3 @$ act_mode [2:0] $end
$var reg 1 A$ hready $end
$var reg 1 B$ hresp $end
$var reg 64 C$ hrdata [63:0] $end
$var reg 1 D$ handshake $end
$var reg 64 E$ bias_reg [63:0] $end
$var reg 8 F$ ctrl_reg [7:0] $end
$var reg 1 G$ wr_en_push $end
$var reg 1 H$ is_weight $end
$var reg 64 I$ write_data [63:0] $end
$var reg 1 J$ wr_en $end
$var reg 1 K$ rd_en $end
$var reg 10 L$ rf_addr [9:0] $end
$var reg 64 M$ rf_wdata [63:0] $end
$var reg 1 N$ burst_err $end
$var reg 1 O$ burst_en $end
$var reg 4 P$ burst_state [3:0] $end
$var reg 4 Q$ burst_state_n [3:0] $end
$var reg 5 R$ beats_left [4:0] $end
$var reg 5 S$ beats_left_n [4:0] $end
$var reg 1 T$ size_ok $end
$var reg 1 U$ trans_valid $end
$var reg 1 V$ htrans_err $end
$var reg 64 W$ n_write_data [63:0] $end
$var reg 1 X$ n_wr_en $end
$var reg 1 Y$ n_is_weight $end
$var reg 64 Z$ n_bias_reg [63:0] $end
$var reg 8 [$ n_ctrl_reg [7:0] $end
$var reg 8 \$ n_act_reg [7:0] $end
$var reg 8 ]$ act_reg [7:0] $end
$var reg 1 ^$ write_error $end
$var reg 64 _$ rf_rdata [63:0] $end
$var reg 1 `$ error_flag $end
$var reg 1 a$ handshake_n $end
$var reg 1 b$ any_error $end
$var reg 2 c$ err_state [1:0] $end
$var reg 2 d$ err_state_n [1:0] $end
$upscope $end
$upscope $end

$scope begin std $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
0/
00
x1
bx 2
bx 3
bx 4
bx 5
bx 6
x7
bx 8
b0 9
0:
1;
0<
x|
bx }
bx ~
bx !!
bx "!
x#!
bx $!
bx g!
x-"
x."
bx /"
x0"
bx 1"
bx 2"
x3"
x5"
bx 9"
b0 =
b0 >
0?
b0 @
b0 A
0B
0C
b10100101 D
b1101111010101101101111101110111111011110101011011011111011101111 E
b0 F
b0 @$
1A$
0B$
b0 C$
0D$
b0 E$
b0 F$
0G$
0H$
b0 I$
0J$
0K$
b0 L$
b0 M$
0N$
1O$
b0 P$
b0 Q$
b0 R$
b0 S$
0T$
xU$
0V$
b0 W$
0X$
0Y$
b0 Z$
b0 [$
b0 \$
b0 ]$
0^$
b0 _$
0`$
0a$
0b$
b0 c$
b0 d$
bx G
bx H
bx I
bx J
bx K
bx M
bx N
bx O
bx P
bx Q
bx R
bx S
bx T
bx U
bx V
bx W
bx X
bx Y
bx Z
bx [
bx \
bx ]
bx ^
bx _
bx `
bx a
bx i!
bx j!
bx k!
bx l!
bx m!
bx n!
bx o!
bx p!
bx q!
b0 r!
b0 s!
b0 t!
b0 u!
b0 v!
b0 w!
b0 x!
b0 y!
b0 z!
b0 {!
b0 |!
b0 }!
b0 ~!
b0 !"
b0 ""
b0 #"
b0 $"
b0 %"
b0 &"
b0 '"
b0 ("
b0 )"
b1111101000 "
b0 #
b1 $
b10 %
b11 &
b0 '
b1 (
b10 )
b11 *
b100 +
b101 ,
b110 -
b111 .
b1000 h
b1010 i
b11 j
b1000000 k
b111111 l
b1001 m
b0 o
b1 p
b10 q
b11 r
b0 s
b1 t
b10 u
b11 v
b100 w
b101 x
b110 y
b111 z
b0 :"
b1 ;"
b10 <"
b11 ="
b0 >"
b1 ?"
b10 @"
b11 A"
b100 B"
b101 C"
b110 D"
b111 E"
b0 F"
b1 G"
b10 H"
b11 I"
b100 J"
b101 K"
b110 L"
b111 M"
b1000 N"
r10 !
r0.8 n
b0 h!
bx 4"
bx 6"
bx 7"
b0 8"
b0 *"
b0 +"
b0 ,"
b0 L
b0 b
b0 c
b0 d
b0 e
b0 f
b0 g
0?$
0>$
0=$
0<$
0;$
0:$
09$
08$
07$
06$
05$
04$
03$
02$
01$
00$
1/$
1.$
1-$
1,$
0+$
1*$
1)$
1($
0'$
1&$
1%$
1$$
1#$
1"$
0!$
1~#
1}#
0|#
1{#
1z#
0y#
1x#
0w#
1v#
0u#
1t#
1s#
1r#
1q#
0p#
1o#
1n#
1m#
1l#
1k#
1j#
0i#
1h#
1g#
1f#
0e#
1d#
1c#
1b#
1a#
1`#
0_#
1^#
1]#
0\#
1[#
1Z#
0Y#
1X#
0W#
1V#
0U#
1T#
1S#
1R#
1Q#
0P#
1O#
1N#
1M#
0L#
1K#
0J#
0I#
1H#
0G#
1F#
xE#
xD#
xC#
xB#
xA#
x@#
x?#
x>#
x=#
x<#
x;#
x:#
x9#
x8#
x7#
x6#
x5#
x4#
x3#
x2#
x1#
x0#
x/#
x.#
x-#
x,#
x+#
x*#
x)#
x(#
x'#
x&#
x%#
x$#
x##
x"#
x!#
x~"
x}"
x|"
x{"
xz"
xy"
xx"
xw"
xv"
xu"
xt"
xs"
xr"
xq"
xp"
xo"
xn"
xm"
xl"
xk"
xj"
xi"
xh"
xg"
xf"
xe"
xd"
xc"
xb"
xa"
x`"
x_"
x^"
x]"
x\"
x["
xZ"
xY"
xX"
xW"
xV"
xU"
xT"
xS"
xR"
xQ"
0P"
0O"
1f!
0e!
0d!
0c!
0b!
0a!
0`!
0_!
0^!
0]!
0\!
0[!
0Z!
0Y!
0X!
0W!
0V!
0U!
0T!
0S!
0R!
0Q!
0P!
0O!
0N!
0M!
0L!
0K!
0J!
0I!
0H!
0G!
0F!
0E!
0D!
0C!
0B!
0A!
0@!
0?!
0>!
0=!
0<!
0;!
0:!
09!
08!
07!
06!
05!
04!
03!
02!
01!
00!
0/!
0.!
0-!
0,!
0+!
0*!
0)!
0(!
0'!
0&!
0%!
0{
$end
#5000
1/
1{
1O"
#5800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
b0 8
07
b0 4
b0 5
b0 3
b0 2
01
b0 6
0B#
0A#
0@#
0?#
0>#
0=#
0<#
0;#
0:#
09#
08#
07#
06#
05#
04#
03#
02#
01#
00#
0/#
0.#
0-#
0,#
0+#
0*#
0)#
0(#
0'#
0&#
0%#
0$#
0##
0"#
0!#
0~"
0}"
0|"
0{"
0z"
0y"
0x"
0w"
0v"
0u"
0t"
0s"
0r"
0q"
0p"
0o"
0n"
0m"
0l"
0k"
0j"
0i"
0h"
0g"
0f"
0e"
0d"
0c"
0b"
0a"
0R"
0Q"
0^"
0]"
0\"
0["
0Z"
0Y"
0X"
0W"
0V"
0U"
0T"
0S"
0`"
0_"
0E#
0D#
0C#
0U$
#10000
0/
0{
0O"
#15000
1/
1{
1O"
#20000
0/
0{
0O"
10
1P"
#25000
1/
1{
1O"
#30000
0/
0{
0O"
#35000
1/
1{
1O"
#40000
0/
0{
0O"
b0 P
b11 Q
b1000100010001000100010001000100010001000100010001000100010001 R
1-"
1."
b0 /"
00"
b11 1"
b0 2"
03"
b1 j!
b0 i!
b11 n!
b0 p!
b0 m!
b0 q!
b0 7"
b0 k!
b10 o!
b1000100010001000100010001000100010001000100010001000100010001 l!
b1000 P
b10001000100010001000100010001000100010001000100010001000100010 R
b1000 /"
b1000 k!
b10001000100010001000100010001000100010001000100010001000100010 l!
b10000 P
b11001100110011001100110011001100110011001100110011001100110011 R
b10000 /"
b10000 k!
b11001100110011001100110011001100110011001100110011001100110011 l!
b100010 P
b0 Q
b1010101 R
b100010 /"
b0 1"
b0 n!
b10 7"
b100010 k!
b10101010000000000000000 l!
b100100 P
b1111 R
b100100 /"
b100 7"
b100100 k!
b111100000000000000000000000000000000 l!
b101 d
b101 8"
#45000
1/
1{
1O"
#50000
0/
0{
0O"
b101 h!
#55000
1/
1{
1O"
b100 h!
b1 r!
b1 w!
b1000100010001000100010001000100010001000100010001000100010001 y!
b11 {!
b10 |!
b1 t!
#55800
1|
1#!
b11 ~
b10 !!
b10 5
b11 3
17
11
b10 6
1R"
1Q"
1]"
1`"
1_"
1U$
1T$
b1 Q$
#60000
0/
0{
0O"
b10000 M
b11 N
b11001100110011001100110011001100110011001100110011001100110011 O
0."
b10000 /"
b11 1"
13"
b0 j!
b11 n!
b1 q!
b0 7"
b10000 k!
b11001100110011001100110011001100110011001100110011001100110011 l!
b11000 M
b1101111010101101101111101110111111011110101011011011111011101111 O
b11000 /"
b11000 k!
b1101111010101101101111101110111111011110101011011011111011101111 l!
b100000 M
b1 N
b0 O
b100000 /"
b1 1"
b1 n!
b100000 k!
b0 l!
b100010 M
b0 N
b100010 /"
b0 1"
b0 n!
b10 7"
b100010 k!
b100011 M
b10100101000000000000000000000000000000000000000000000000 O
b100011 /"
b11 7"
b100011 k!
b100100 M
b1111 O
b100100 /"
b100 7"
b100100 k!
b111100000000000000000000000000000000 l!
b110 d
b110 8"
#65000
1/
1{
1O"
b1 s!
b1 ""
b1000100010001000100010001000100010001000100010001000100010001 $"
b11 &"
b10 '"
b1 u!
b11 h!
b1000 x!
b10001000100010001000100010001000100010001000100010001000100010 y!
b10 t!
b1 P$
0O$
1J$
1Y$
1X$
b0 Q$
#65800
0|
b0 ~
b0 !!
0#!
1|
b1000 }
1#!
b11 ~
b10 !!
b1000100010001000100010001000100010001000100010001000100010001 $!
b1000100010001000100010001000100010001000100010001000100010001 8
b1000 2
1B#
1>#
1:#
16#
12#
1.#
1*#
1&#
1"#
1|"
1x"
1t"
1p"
1l"
1h"
1d"
1Y"
0T$
1T$
#70000
0/
0{
0O"
b110 h!
#75000
1/
1{
1O"
b1000 #"
b10001000100010001000100010001000100010001000100010001000100010 $"
b10 u!
b101 h!
b10000 x!
b11001100110011001100110011001100110011001100110011001100110011 y!
b11 t!
1G$
1H$
0J$
b0 P$
1O$
b1000 L$
1J$
b1000100010001000100010001000100010001000100010001000100010001 M$
1C
1B
b1 Q$
b1000100010001000100010001000100010001000100010001000100010001 W$
0Y$
#75800
0|
b0 }
b0 ~
b0 !!
0#!
b0 $!
1|
b10000 }
1#!
b11 ~
b10 !!
b10001000100010001000100010001000100010001000100010001000100010 $!
b10001000100010001000100010001000100010001000100010001000100010 8
b10000 2
0B#
1A#
0>#
1=#
0:#
19#
06#
15#
02#
11#
0.#
1-#
0*#
1)#
0&#
1%#
0"#
1!#
0|"
1{"
0x"
1w"
0t"
1s"
0p"
1o"
0l"
1k"
0h"
1g"
0d"
1c"
0Y"
1X"
0T$
1T$
#80000
0/
0{
0O"
b0 Y
b11 Z
b0 [
1."
b0 /"
b11 1"
b1 j!
b11 n!
b0 7"
b0 k!
b1010000010100000101000001010000010100000101000001010000010100000 l!
b1 d
b1 8"
#85000
1/
1{
1O"
b10000 #"
b11001100110011001100110011001100110011001100110011001100110011 $"
b11 u!
b100 h!
b100010 x!
b10101010000000000000000 y!
b0 {!
b100 t!
0J$
b1 P$
0O$
b10000 L$
1J$
b10001000100010001000100010001000100010001000100010001000100010 M$
b1000100010001000100010001000100010001000100010001000100010001 I$
0H$
0C
b0 Q$
b10001000100010001000100010001000100010001000100010001000100010 Z$
0X$
#85800
0|
b0 }
b0 ~
b0 !!
0#!
b0 $!
1|
b100010 }
1#!
b10 !!
b11001100110011001100110011001100110011001100110011001100110011 $!
b11001100110011001100110011001100110011001100110011001100110011 8
b0 3
b100010 2
1B#
1>#
1:#
16#
12#
1.#
1*#
1&#
1"#
1|"
1x"
1t"
1p"
1l"
1h"
1d"
1["
0X"
1W"
0`"
0_"
0T$
1T$
#90000
0/
0{
0O"
b1 h!
#95000
1/
1{
1O"
b100010 #"
b10101010000000000000000 $"
b0 &"
b100 u!
b0 h!
b100100 x!
b111100000000000000000000000000000000 y!
b101 t!
0G$
b10001000100010001000100010001000100010001000100010001000100010 E$
0J$
b0 P$
1O$
b100010 L$
1J$
b11001100110011001100110011001100110011001100110011001100110011 M$
b10001000100010001000100010001000100010001000100010001000100010 @
0B
b1 Q$
b110011 [$
#95800
0|
b0 }
b0 !!
0#!
b0 $!
1|
b100100 }
1#!
b10 !!
b10101010000000000000000 $!
b10101010000000000000000 8
b100100 2
0B#
0A#
0>#
0=#
0:#
09#
06#
05#
01#
10#
0-#
1,#
0*#
0)#
0&#
0%#
0"#
0!#
0|"
0{"
0x"
0w"
0t"
0s"
0p"
0o"
0l"
0k"
0h"
0g"
0d"
0c"
0["
1Z"
0T$
1T$
#100000
0/
0{
0O"
b1 e
b10 e
b11 e
b1 [
b1 2"
b1 p!
b11 6"
05"
b0 4"
b1011000010110000101100001011000010110000101100001011000010110000 l!
b1 4"
b1000 k!
b11 o!
b1011000010110000101100001011000010110000101100001011000010110001 l!
b10 4"
b10000 k!
b1011000010110000101100001011000010110000101100001011000010110010 l!
b11 4"
b11 d
b11 8"
#105000
1/
1{
1O"
b100100 #"
b111100000000000000000000000000000000 $"
b101 u!
b0 r!
b0 w!
b0 x!
b0 y!
b0 |!
0J$
b1 P$
0O$
b100100 L$
1J$
b10101010000000000000000 M$
b110011 F$
b110011 A
b0 Q$
#105800
0|
b0 }
b0 !!
0#!
b0 $!
1|
b111100000000000000000000000000000000 $!
b111100000000000000000000000000000000 8
07
b0 5
b0 2
b0 6
02#
00#
0.#
0,#
1"#
1!#
1~"
1}"
0R"
0]"
0Z"
0W"
0U$
b1 Q$
b0 Q$
0T$
#110000
0/
0{
0O"
b11 h!
#115000
1/
1{
1O"
b0 s!
b0 ""
b0 #"
b0 $"
b0 '"
b10 h!
b1 r!
b10000 x!
b11001100110011001100110011001100110011001100110011001100110011 y!
b11 {!
b10 |!
b1 ~!
b110 t!
0J$
b0 P$
1O$
#115800
0|
b0 $!
1|
b10000 }
b11 ~
b10 !!
b10 5
b11 3
b10000 2
b0 8
b10 6
0"#
0!#
0~"
0}"
1]"
1X"
1`"
1_"
1U$
b1 Q$
1T$
#120000
0/
0{
0O"
b0 e
b1 e
b10 e
b11 e
b100 e
b10 [
b10 2"
b10 p!
b100 6"
15"
b0 4"
b0 k!
b10 o!
b1100000011000000110000001100000011000000110000001100000011000000 l!
b1 4"
b1000 k!
b11 o!
b1100000011000000110000001100000011000000110000001100000011000001 l!
b10 4"
b10000 k!
b1100000011000000110000001100000011000000110000001100000011000010 l!
b11 4"
b11000 k!
b1100000011000000110000001100000011000000110000001100000011000011 l!
b100 4"
b100 d
b100 8"
#125000
1/
1{
1O"
b1 s!
b10000 #"
b11001100110011001100110011001100110011001100110011001100110011 $"
b11 &"
b10 '"
b1 )"
b110 u!
b1 h!
b11000 x!
b1101111010101101101111101110111111011110101011011011111011101111 y!
b111 t!
b1 P$
0O$
b10000 L$
1K$
b10001000100010001000100010001000100010001000100010001000100010 _$
b10001000100010001000100010001000100010001000100010001000100010 C$
b0 Q$
b10001000100010001000100010001000100010001000100010001000100010 >
b10001000100010001000100010001000100010001000100010001000100010 9
1c!
1_!
1[!
1W!
1S!
1O!
1K!
1G!
1C!
1?!
1;!
17!
13!
1/!
1+!
1'!
#125800
0|
b0 }
b0 ~
b0 !!
1|
b11000 }
b11 ~
b10 !!
b11000 2
1Y"
0T$
1T$
#130000
0/
0{
0O"
b10001000100010001000100010001000100010001000100010001000100010 g!
b1000 ,"
b100 h!
#135000
1/
1{
1O"
b11000 #"
b1101111010101101101111101110111111011110101011011011111011101111 $"
b111 u!
b11 h!
b100000 x!
b0 y!
b1 {!
b1000 t!
0K$
b0 P$
1O$
b11000 L$
1K$
b1 Q$
b0 _$
b1101111010101101101111101110111111011110101011011011111011101111 _$
b1101111010101101101111101110111111011110101011011011111011101111 C$
1a$
b1101111010101101101111101110111111011110101011011011111011101111 >
b1101111010101101101111101110111111011110101011011011111011101111 9
1d!
1b!
1a!
1^!
1]!
1Z!
1Y!
1X!
1U!
1T!
0S!
1R!
1Q!
1M!
1J!
1I!
1H!
0G!
1F!
1E!
1D!
1B!
1A!
1>!
1=!
1:!
19!
18!
15!
14!
03!
12!
11!
1-!
1*!
1)!
1(!
0'!
1&!
1%!
#135800
0|
b0 }
b0 ~
b0 !!
1|
b100000 }
b1 ~
b10 !!
b1 3
b100000 2
0Y"
0X"
1W"
0_"
0T$
1T$
#140000
0/
0{
0O"
b1101111010101101101111101110111111011110101011011011111011101111 g!
b0 e
b1 e
b10 e
b11 e
b100 e
b11 [
b11 2"
b11 p!
05"
b0 4"
b0 k!
b10 o!
b1101000011010000110100001101000011010000110100001101000011010000 l!
b1 4"
b1000 k!
b11 o!
b1101000011010000110100001101000011010000110100001101000011010001 l!
b10 4"
b10000 k!
b1101000011010000110100001101000011010000110100001101000011010010 l!
b11 4"
b11000 k!
b1101000011010000110100001101000011010000110100001101000011010011 l!
b100 4"
#145000
1/
1{
1O"
b100000 #"
b0 $"
b1 &"
b1000 u!
b10 h!
b100010 x!
b0 {!
b1001 t!
1D$
0K$
b1 P$
0O$
b100000 L$
1K$
1?
b0 Q$
b0 _$
0a$
b0 C$
b0 >
b0 9
0d!
0c!
0b!
0a!
0_!
0^!
0]!
0[!
0Z!
0Y!
0X!
0W!
0U!
0T!
0R!
0Q!
0O!
0M!
0K!
0J!
0I!
0H!
0F!
0E!
0D!
0C!
0B!
0A!
0?!
0>!
0=!
0;!
0:!
09!
08!
07!
05!
04!
02!
01!
0/!
0-!
0+!
0*!
0)!
0(!
0&!
0%!
#145800
0|
b0 }
b0 ~
b0 !!
1|
b100010 }
b10 !!
b0 3
b100010 2
1["
0`"
0T$
1T$
#150000
0/
0{
0O"
b0 g!
b10 ,"
b100 h!
#155000
1/
1{
1O"
b100010 #"
b0 &"
b1001 u!
b11 h!
b100011 x!
b1010 t!
0K$
b0 P$
1O$
b100010 L$
1K$
0D$
0?
b1 Q$
b1100110000000000000000000000000000000000000000 _$
b1100110000000000000000000000000000000000000000 C$
b1100110000000000000000000000000000000000000000 >
b1100110000000000000000000000000000000000000000 9
1<!
1;!
18!
17!
#155800
0|
b0 }
b0 !!
1|
b100011 }
b10 !!
b100011 2
1\"
0T$
1T$
#160000
0/
0{
0O"
b1100110000000000000000000000000000000000000000 g!
b10 +"
b11 ,"
b0 e
b1 e
b10 e
b11 e
b100 e
b101 e
b110 e
b111 e
b1000 e
b100 [
b100 2"
b100 p!
b1000 6"
15"
b0 4"
b0 k!
b10 o!
b1110000011100000111000001110000011100000111000001110000011100000 l!
b1 4"
b1000 k!
b11 o!
b1110000011100000111000001110000011100000111000001110000011100001 l!
b10 4"
b10000 k!
b1110000011100000111000001110000011100000111000001110000011100010 l!
b11 4"
b11000 k!
b1110000011100000111000001110000011100000111000001110000011100011 l!
b100 4"
b100000 k!
b1110000011100000111000001110000011100000111000001110000011100100 l!
b101 4"
b101000 k!
b1110000011100000111000001110000011100000111000001110000011100101 l!
b110 4"
b110000 k!
b1110000011100000111000001110000011100000111000001110000011100110 l!
b111 4"
b111000 k!
b1110000011100000111000001110000011100000111000001110000011100111 l!
b1000 4"
b1000 d
b1000 8"
#165000
1/
1{
1O"
b100011 #"
b1010 u!
b10 h!
b100100 x!
b111100000000000000000000000000000000 y!
b1011 t!
0K$
b1 P$
0O$
b100011 L$
1K$
b0 Q$
b0 _$
b10100101000000000000000000000000000000000000000000000000 _$
b10100101000000000000000000000000000000000000000000000000 C$
b10100101000000000000000000000000000000000000000000000000 >
b10100101000000000000000000000000000000000000000000000000 9
0<!
0;!
08!
07!
14!
12!
1/!
1-!
#165800
0|
b0 }
b0 !!
1|
b100100 }
b10 !!
b100100 2
0\"
0["
1Z"
0T$
1T$
#170000
0/
0{
0O"
b10100101000000000000000000000000000000000000000000000000 g!
b11 +"
b100 ,"
b1000 h!
#175000
1/
1{
1O"
b100100 #"
b111100000000000000000000000000000000 $"
b1011 u!
b111 h!
b1 w!
b0 x!
b1010000010100000101000001010000010100000101000001010000010100000 y!
b11 {!
b1100 t!
0K$
b0 P$
1O$
b100100 L$
1K$
b1 Q$
b0 _$
b0 C$
b0 >
b0 9
04!
02!
0/!
0-!
#175800
0|
b0 }
b0 !!
1|
1#!
b11 ~
b10 !!
b11 3
17
b0 2
1R"
0Z"
0W"
1`"
1_"
0T$
1T$
#180000
0/
0{
0O"
b0 g!
b100 +"
b101 ,"
b0 e
b1 e
b10 e
b11 e
b100 e
b101 e
b110 e
b111 e
b1000 e
b101 [
b101 2"
b101 p!
05"
b0 4"
b0 k!
b10 o!
b1111000011110000111100001111000011110000111100001111000011110000 l!
b1 4"
b1000 k!
b11 o!
b1111000011110000111100001111000011110000111100001111000011110001 l!
b10 4"
b10000 k!
b1111000011110000111100001111000011110000111100001111000011110010 l!
b11 4"
b11000 k!
b1111000011110000111100001111000011110000111100001111000011110011 l!
b100 4"
b100000 k!
b1111000011110000111100001111000011110000111100001111000011110100 l!
b101 4"
b101000 k!
b1111000011110000111100001111000011110000111100001111000011110101 l!
b110 4"
b110000 k!
b1111000011110000111100001111000011110000111100001111000011110110 l!
b111 4"
b111000 k!
b1111000011110000111100001111000011110000111100001111000011110111 l!
b1000 4"
#185000
1/
1{
1O"
b1 ""
b0 #"
b1010000010100000101000001010000010100000101000001010000010100000 $"
b11 &"
b1100 u!
b110 h!
b1011000010110000101100001011000010110000101100001011000010110000 y!
b1 }!
b1101 t!
0K$
b1 P$
0O$
b0 L$
1J$
b0 M$
b0 W$
1Y$
1X$
b0 Q$
#185800
0|
b0 ~
b0 !!
0#!
1|
1#!
b11 ~
b10 !!
b1 "!
b1010000010100000101000001010000010100000101000001010000010100000 $!
b1010000010100000101000001010000010100000101000001010000010100000 8
b1 4
1=#
1;#
15#
13#
1-#
1+#
1%#
1##
1{"
1y"
1s"
1q"
1k"
1i"
1c"
1a"
1E#
b1 Q$
b0 Q$
#190000
0/
0{
0O"
b1000 h!
#195000
1/
1{
1O"
b1011000010110000101100001011000010110000101100001011000010110000 $"
b1 ("
b1101 u!
b111 h!
b1000 x!
b1011000010110000101100001011000010110000101100001011000010110001 y!
b11 |!
b1110 t!
1G$
b0 I$
1H$
0J$
b0 P$
1O$
1J$
b1010000010100000101000001010000010100000101000001010000010100000 M$
1C
1B
b10 Q$
b1010000010100000101000001010000010100000101000001010000010100000 W$
#195800
0|
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b1000 }
1#!
b11 ~
b11 !!
b1 "!
b1011000010110000101100001011000010110000101100001011000010110000 $!
b1000 2
b1011000010110000101100001011000010110000101100001011000010110000 8
b11 5
b11 6
1>#
16#
1.#
1&#
1|"
1t"
1l"
1d"
1^"
1Y"
1V$
b0 Q$
0T$
1T$
#200000
0/
0{
0O"
b0 e
b1 e
b10 e
b11 e
b100 e
b101 e
b110 e
b111 e
b1000 e
b1001 e
b1010 e
b1011 e
b1100 e
b1101 e
b1110 e
b1111 e
b10000 e
b110 [
b110 2"
b110 p!
b10000 6"
15"
b0 4"
b0 k!
b10 o!
b1000000010000000100000001000000010000000100000001000000010000 l!
b1 4"
b1000 k!
b11 o!
b1000000010000000100000001000000010000000100000001000000010001 l!
b10 4"
b10000 k!
b1000000010000000100000001000000010000000100000001000000010010 l!
b11 4"
b11000 k!
b1000000010000000100000001000000010000000100000001000000010011 l!
b100 4"
b100000 k!
b1000000010000000100000001000000010000000100000001000000010100 l!
b101 4"
b101000 k!
b1000000010000000100000001000000010000000100000001000000010101 l!
b110 4"
b110000 k!
b1000000010000000100000001000000010000000100000001000000010110 l!
b111 4"
b111000 k!
b1000000010000000100000001000000010000000100000001000000010111 l!
b1000 4"
b1000000 k!
b1000000010000000100000001000000010000000100000001000000011000 l!
b1001 4"
b1001000 k!
b1000000010000000100000001000000010000000100000001000000011001 l!
b1010 4"
b1010000 k!
b1000000010000000100000001000000010000000100000001000000011010 l!
b1011 4"
b1011000 k!
b1000000010000000100000001000000010000000100000001000000011011 l!
b1100 4"
b1100000 k!
b1000000010000000100000001000000010000000100000001000000011100 l!
b1101 4"
b1101000 k!
b1000000010000000100000001000000010000000100000001000000011101 l!
b1110 4"
b1110000 k!
b1000000010000000100000001000000010000000100000001000000011110 l!
b1111 4"
b1111000 k!
b1000000010000000100000001000000010000000100000001000000011111 l!
b10000 4"
b10000 d
b10000 8"
#205000
1/
1{
1O"
b1000 #"
b1011000010110000101100001011000010110000101100001011000010110001 $"
b11 '"
b1110 u!
b110 h!
b10000 x!
b1011000010110000101100001011000010110000101100001011000010110010 y!
b1111 t!
0J$
b1000 L$
1N$
b1010000010100000101000001010000010100000101000001010000010100000 I$
1b$
b1 d$
#205800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b10000 }
1#!
b11 ~
b11 !!
b1 "!
b1011000010110000101100001011000010110000101100001011000010110001 $!
b1011000010110000101100001011000010110000101100001011000010110001 8
b10000 2
1B#
0Y"
1X"
0T$
1T$
#210000
0/
0{
0O"
b10000 h!
#215000
1/
1{
1O"
b10000 #"
b1011000010110000101100001011000010110000101100001011000010110010 $"
b1111 u!
b1111 h!
b0 x!
b1100000011000000110000001100000011000000110000001100000011000000 y!
b10 |!
b10 }!
b10000 t!
b1 c$
0N$
b10000 L$
1N$
b10 d$
1B$
0A$
0;
1:
0f!
1e!
#215800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
1#!
b11 ~
b10 !!
b10 "!
b1011000010110000101100001011000010110000101100001011000010110010 $!
b1011000010110000101100001011000010110000101100001011000010110010 8
b10 4
b10 5
b0 2
b10 6
0B#
1A#
0^"
0X"
0E#
1D#
0V$
0T$
1T$
b11 Q$
b100 S$
#220000
0/
0{
0O"
b0 e
b1 e
b10 e
b11 e
b100 e
b101 e
b110 e
b111 e
b1000 e
b1001 e
b1010 e
b1011 e
b1100 e
b1101 e
b1110 e
b1111 e
b10000 e
b111 [
b111 2"
b111 p!
05"
b0 4"
b0 k!
b10 o!
b10000000100000001000000010000000100000001000000010000000100000 l!
b1 4"
b1000 k!
b11 o!
b10000000100000001000000010000000100000001000000010000000100001 l!
b10 4"
b10000 k!
b10000000100000001000000010000000100000001000000010000000100010 l!
b11 4"
b11000 k!
b10000000100000001000000010000000100000001000000010000000100011 l!
b100 4"
b100000 k!
b10000000100000001000000010000000100000001000000010000000100100 l!
b101 4"
b101000 k!
b10000000100000001000000010000000100000001000000010000000100101 l!
b110 4"
b110000 k!
b10000000100000001000000010000000100000001000000010000000100110 l!
b111 4"
b111000 k!
b10000000100000001000000010000000100000001000000010000000100111 l!
b1000 4"
b1000000 k!
b10000000100000001000000010000000100000001000000010000000101000 l!
b1001 4"
b1001000 k!
b10000000100000001000000010000000100000001000000010000000101001 l!
b1010 4"
b1010000 k!
b10000000100000001000000010000000100000001000000010000000101010 l!
b1011 4"
b1011000 k!
b10000000100000001000000010000000100000001000000010000000101011 l!
b1100 4"
b1100000 k!
b10000000100000001000000010000000100000001000000010000000101100 l!
b1101 4"
b1101000 k!
b10000000100000001000000010000000100000001000000010000000101101 l!
b1110 4"
b1110000 k!
b10000000100000001000000010000000100000001000000010000000101110 l!
b1111 4"
b1111000 k!
b10000000100000001000000010000000100000001000000010000000101111 l!
b10000 4"
#225000
1/
1{
1O"
b0 r!
b0 w!
b0 {!
b0 y!
b0 |!
b0 }!
b0 ~!
b10000 h!
0N$
b11 P$
b100 R$
0O$
b0 L$
1J$
b1011000010110000101100001011000010110000101100001011000010110010 M$
b10 c$
0b$
b0 d$
0B$
1A$
1B$
0A$
b1011000010110000101100001011000010110000101100001011000010110010 W$
1V$
#225800
0|
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b1011000010110000101100001011000010110000101100001011000010110010 $!
07
b0 4
b0 5
b0 3
b0 6
0R"
0]"
0`"
0_"
0D#
0U$
0V$
b0 Q$
b0 S$
0T$
#230000
0/
0{
0O"
#235000
1/
1{
1O"
b1011000010110000101100001011000010110000101100001011000010110010 I$
b0 c$
0J$
b0 P$
b0 R$
1O$
0B$
1A$
1;
0:
1f!
0e!
#235800
0|
b0 $!
1|
b1011000010110000101100001011000010110000101100001011000010110010 $!
#240000
0/
0{
0O"
b10000 _
b11 `
b11 a
b100 b
b1 c
b10 c
b11 c
b100 c
0."
b10000 /"
b11 2"
03"
b0 j!
b11 p!
b0 q!
b100 6"
b0 4"
b10000 k!
b10 o!
b0 l!
b1 4"
b11000 k!
b11 o!
b10 4"
b100000 k!
b11 4"
b101000 k!
b100 4"
b100 d
b100 8"
#245000
1/
1{
1O"
b0 s!
b0 ""
b0 #"
b0 $"
b0 &"
b0 '"
b0 ("
b0 )"
b10000 u!
b1111 h!
b1 r!
b1 w!
b1100000011000000110000001100000011000000110000001100000011000000 y!
b11 {!
b10 |!
b10 }!
b1 ~!
b10001 t!
#245800
0|
b0 $!
1|
1#!
b11 ~
b10 !!
b10 "!
b10 4
b10 5
b11 3
17
b0 8
b10 6
1R"
0A#
0>#
0=#
0;#
06#
05#
03#
0.#
0-#
0+#
0&#
0%#
0##
0|"
0{"
0y"
0t"
0s"
0q"
0l"
0k"
0i"
0d"
0c"
0a"
1]"
1`"
1_"
1D#
1U$
b11 Q$
b100 S$
1T$
#250000
0/
0{
0O"
b100 h!
#255000
1/
1{
1O"
b1 s!
b1 ""
b1100000011000000110000001100000011000000110000001100000011000000 $"
b11 &"
b10 '"
b10 ("
b1 )"
b10001 u!
b11 h!
b1000 x!
b1100000011000000110000001100000011000000110000001100000011000001 y!
b11 |!
b10010 t!
b11 P$
b100 R$
0O$
1J$
b0 M$
b0 W$
1V$
#255800
0|
b0 ~
b0 !!
b0 "!
0#!
1|
b1000 }
1#!
b11 ~
b11 !!
b10 "!
b1100000011000000110000001100000011000000110000001100000011000000 $!
b1100000011000000110000001100000011000000110000001100000011000000 8
b1000 2
b11 5
b11 6
1<#
1;#
14#
13#
1,#
1+#
1$#
1##
1z"
1y"
1r"
1q"
1j"
1i"
1b"
1a"
1^"
1Y"
0V$
b11 S$
0T$
1T$
#260000
0/
0{
0O"
b10 a
b0 c
b1 c
b10 c
b11 c
b100 c
b10 2"
b10 p!
15"
b0 4"
b10000 k!
b10 o!
b1 4"
b11000 k!
b11 o!
b10 4"
b0 k!
b11 4"
b1000 k!
b100 4"
#265000
1/
1{
1O"
b1000 #"
b1100000011000000110000001100000011000000110000001100000011000001 $"
b11 '"
b10010 u!
b10 h!
b10000 x!
b1100000011000000110000001100000011000000110000001100000011000010 y!
b10011 t!
b0 I$
0J$
b11 R$
b1000 L$
1J$
b1100000011000000110000001100000011000000110000001100000011000000 M$
b10 S$
b1100000011000000110000001100000011000000110000001100000011000000 W$
0Y$
#265800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b10000 }
1#!
b11 ~
b11 !!
b10 "!
b1100000011000000110000001100000011000000110000001100000011000001 $!
b1100000011000000110000001100000011000000110000001100000011000001 8
b10000 2
1B#
0Y"
1X"
0T$
1T$
#270000
0/
0{
0O"
b100 h!
#275000
1/
1{
1O"
b10000 #"
b1100000011000000110000001100000011000000110000001100000011000010 $"
b10011 u!
b11 h!
b11000 x!
b1100000011000000110000001100000011000000110000001100000011000011 y!
b10100 t!
0J$
b10 R$
b10000 L$
1J$
b1100000011000000110000001100000011000000110000001100000011000001 M$
b1100000011000000110000001100000011000000110000001100000011000000 I$
0H$
0C
b1 S$
b1100000011000000110000001100000011000000110000001100000011000001 Z$
0X$
#275800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b11000 }
1#!
b11 ~
b11 !!
b10 "!
b1100000011000000110000001100000011000000110000001100000011000010 $!
b1100000011000000110000001100000011000000110000001100000011000010 8
b11000 2
0B#
1A#
1Y"
0T$
1T$
#280000
0/
0{
0O"
b101 a
b1000 b
b0 c
b1 c
b10 c
b11 c
b100 c
b101 c
b110 c
b111 c
b1000 c
b101 2"
b101 p!
b1000 6"
05"
b0 4"
b10000 k!
b10 o!
b1 4"
b11000 k!
b11 o!
b10 4"
b100000 k!
b11 4"
b101000 k!
b100 4"
b110000 k!
b101 4"
b111000 k!
b110 4"
b1000000 k!
b111 4"
b1001000 k!
b1000 4"
b1000 d
b1000 8"
#285000
1/
1{
1O"
b11000 #"
b1100000011000000110000001100000011000000110000001100000011000011 $"
b10100 u!
b10 h!
b0 x!
b1101000011010000110100001101000011010000110100001101000011010000 y!
b10 |!
b11 }!
b10101 t!
0G$
b1100000011000000110000001100000011000000110000001100000011000001 E$
0J$
b1 R$
b11000 L$
1J$
b1100000011000000110000001100000011000000110000001100000011000010 M$
b1100000011000000110000001100000011000000110000001100000011000001 @
0B
b0 S$
b0 Q$
1^$
1b$
b1 d$
#285800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
1#!
b11 ~
b10 !!
b11 "!
b1100000011000000110000001100000011000000110000001100000011000011 $!
b1100000011000000110000001100000011000000110000001100000011000011 8
b11 4
b10 5
b0 2
b10 6
1B#
0^"
0Y"
0X"
1E#
1V$
0T$
1T$
b11 Q$
b1 S$
#290000
0/
0{
0O"
b1000 h!
#295000
1/
1{
1O"
b0 #"
b1101000011010000110100001101000011010000110100001101000011010000 $"
b10 '"
b11 ("
b10101 u!
b111 h!
b1000 x!
b1101000011010000110100001101000011010000110100001101000011010001 y!
b11 |!
b10110 t!
b1 c$
0J$
b0 L$
1N$
0^$
b10 d$
1B$
0A$
0;
1:
0f!
1e!
#295800
0|
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b1000 }
1#!
b11 ~
b11 !!
b11 "!
b1101000011010000110100001101000011010000110100001101000011010000 $!
b1000 2
b1101000011010000110100001101000011010000110100001101000011010000 8
b11 5
b11 6
0B#
0A#
1>#
16#
1.#
1&#
1|"
1t"
1l"
1d"
1^"
1Y"
0V$
b0 S$
b0 Q$
0T$
1T$
#300000
0/
0{
0O"
b100 a
b0 c
b1 c
b10 c
b11 c
b100 c
b101 c
b110 c
b111 c
b1000 c
b100 2"
b100 p!
15"
b0 4"
b10000 k!
b10 o!
b1 4"
b11000 k!
b11 o!
b10 4"
b100000 k!
b11 4"
b101000 k!
b100 4"
b110000 k!
b101 4"
b111000 k!
b110 4"
b0 k!
b111 4"
b1000 k!
b1000 4"
#305000
1/
1{
1O"
b0 r!
b0 w!
b0 x!
b0 {!
b0 y!
b0 |!
b0 }!
b0 ~!
b1000 h!
0N$
b0 P$
b0 R$
1O$
b1000 L$
1J$
b1101000011010000110100001101000011010000110100001101000011010000 M$
b10 c$
0b$
b0 d$
0B$
1A$
1B$
0A$
b1101000011010000110100001101000011010000110100001101000011010000 W$
1X$
1V$
#305800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b1101000011010000110100001101000011010000110100001101000011010000 $!
07
b0 4
b0 5
b0 3
b0 2
b0 6
0R"
0^"
0]"
0Y"
0`"
0_"
0E#
0D#
0U$
0V$
0T$
#310000
0/
0{
0O"
#315000
1/
1{
1O"
1G$
b1101000011010000110100001101000011010000110100001101000011010000 I$
b0 c$
0J$
1B
0B$
1A$
1;
0:
1f!
0e!
#315800
0|
b0 $!
1|
b1101000011010000110100001101000011010000110100001101000011010000 $!
#320000
0/
0{
0O"
b100 g
b1 f
b10 f
b11 f
b100 f
b0 \
b11 ]
b11 ^
1."
b0 /"
b11 2"
b1 j!
b11 p!
b100 6"
05"
b0 4"
b0 k!
b10 o!
b1011101011010000000000000000000000000000000000000000000000000000 l!
b1 4"
b1000 k!
b11 o!
b1011101011010000000000000000000000000000000000000000000000000001 l!
b10 4"
b10000 k!
b1011101011010000000000000000000000000000000000000000000000000010 l!
b11 4"
b11000 k!
b1011101011010000000000000000000000000000000000000000000000000011 l!
b100 4"
b100 d
b100 8"
#325000
1/
1{
1O"
b0 s!
b0 ""
b0 $"
b0 &"
b0 '"
b0 ("
b0 )"
b10110 u!
b111 h!
b1 r!
b1 w!
b1000 x!
b1101000011010000110100001101000011010000110100001101000011010001 y!
b11 {!
b11 |!
b11 }!
b1 ~!
b10111 t!
#325800
0|
b0 $!
1|
b1000 }
1#!
b11 ~
b11 !!
b11 "!
b11 4
b11 5
b11 3
17
b1000 2
b0 8
b11 6
1R"
0>#
0<#
0;#
06#
04#
03#
0.#
0,#
0+#
0&#
0$#
0##
0|"
0z"
0y"
0t"
0r"
0q"
0l"
0j"
0i"
0d"
0b"
0a"
1^"
1]"
1Y"
1`"
1_"
1E#
1D#
1U$
1V$
1T$
#330000
0/
0{
0O"
b100 h!
#335000
1/
1{
1O"
b1 s!
b1 ""
b1000 #"
b1101000011010000110100001101000011010000110100001101000011010001 $"
b11 &"
b11 '"
b11 ("
b1 )"
b10111 u!
b11 h!
b10000 x!
b1101000011010000110100001101000011010000110100001101000011010010 y!
b11000 t!
1<
b1 6
0]"
0U$
0V$
1N$
1b$
b1 d$
#335800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
1|
b10000 }
1#!
b11 ~
b11 !!
b11 "!
b1101000011010000110100001101000011010000110100001101000011010001 $!
b1101000011010000110100001101000011010000110100001101000011010001 8
b10000 2
1B#
1>#
1<#
1;#
16#
14#
13#
1.#
1,#
1+#
1&#
1$#
1##
1|"
1z"
1y"
1t"
1r"
1q"
1l"
1j"
1i"
1d"
1b"
1a"
0Y"
1X"
0T$
1T$
#340000
0/
0{
0O"
#345000
1/
1{
1O"
b10000 #"
b1101000011010000110100001101000011010000110100001101000011010010 $"
b11000 u!
b10 h!
b11000 x!
b1101000011010000110100001101000011010000110100001101000011010011 y!
b11001 t!
0<
b11 6
1]"
1U$
1V$
b1 c$
0N$
0b$
b11 d$
1B$
0A$
0;
1:
0f!
1e!
#345800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b11000 }
1#!
b11 ~
b11 !!
b11 "!
b1101000011010000110100001101000011010000110100001101000011010010 $!
b1101000011010000110100001101000011010000110100001101000011010010 8
b11000 2
0B#
1A#
1Y"
0T$
1T$
#350000
0/
0{
0O"
#355000
1/
1{
1O"
b0 r!
b0 w!
b0 x!
b0 {!
b0 y!
b0 |!
b0 }!
b0 ~!
b11 h!
b11 c$
b11000 L$
1N$
1b$
b10 d$
0B$
1A$
1B$
0A$
#355800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b1101000011010000110100001101000011010000110100001101000011010010 $!
07
b0 4
b0 5
b0 3
b0 2
b0 6
0R"
0^"
0]"
0Y"
0X"
0`"
0_"
0E#
0D#
0U$
0V$
0T$
#360000
0/
0{
0O"
#365000
1/
1{
1O"
0N$
b10 c$
0b$
b0 d$
0B$
1A$
1B$
0A$
#365800
0|
b0 $!
1|
b1101000011010000110100001101000011010000110100001101000011010010 $!
#370000
0/
0{
0O"
#375000
1/
1{
1O"
b0 c$
0B$
1A$
1;
0:
1f!
0e!
#375800
0|
b0 $!
1|
b1101000011010000110100001101000011010000110100001101000011010010 $!
#380000
0/
0{
0O"
#385000
1/
1{
1O"
b0 s!
b0 ""
b0 #"
b0 $"
b0 &"
b0 '"
b0 ("
b0 )"
b11001 u!
b10 h!
b1 r!
b1 w!
b11000 x!
b1101000011010000110100001101000011010000110100001101000011010011 y!
b11 {!
b11 |!
b11 }!
b1 ~!
b11010 t!
#385800
0|
b0 $!
1|
b11000 }
1#!
b11 ~
b11 !!
b11 "!
b11 4
b11 5
b11 3
17
b11000 2
b0 8
b11 6
1R"
0A#
0>#
0<#
0;#
06#
04#
03#
0.#
0,#
0+#
0&#
0$#
0##
0|"
0z"
0y"
0t"
0r"
0q"
0l"
0j"
0i"
0d"
0b"
0a"
1^"
1]"
1Y"
1X"
1`"
1_"
1E#
1D#
1U$
1V$
1T$
#390000
0/
0{
0O"
#395000
1/
1{
1O"
b1 s!
b1 ""
b11000 #"
b1101000011010000110100001101000011010000110100001101000011010011 $"
b11 &"
b11 '"
b11 ("
b1 )"
b11010 u!
b1 h!
b0 x!
b1110000011100000111000001110000011100000111000001110000011100000 y!
b10 |!
b100 }!
b11011 t!
1N$
1b$
b1 d$
#395800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
1|
1#!
b11 ~
b10 !!
b100 "!
b1101000011010000110100001101000011010000110100001101000011010011 $!
b1101000011010000110100001101000011010000110100001101000011010011 8
b100 4
b10 5
b0 2
b10 6
1B#
1A#
1>#
1<#
1;#
16#
14#
13#
1.#
1,#
1+#
1&#
1$#
1##
1|"
1z"
1y"
1t"
1r"
1q"
1l"
1j"
1i"
1d"
1b"
1a"
0^"
0Y"
0X"
0E#
0D#
1C#
0V$
0T$
1T$
b101 Q$
b1000 S$
#400000
0/
0{
0O"
#405000
1/
1{
1O"
b0 #"
b1110000011100000111000001110000011100000111000001110000011100000 $"
b10 '"
b100 ("
b11011 u!
b0 h!
b1000 x!
b1110000011100000111000001110000011100000111000001110000011100001 y!
b11 |!
b11100 t!
b1 c$
0N$
b101 P$
b1000 R$
0O$
b0 L$
1J$
b1101000011010000110100001101000011010000110100001101000011010011 M$
0b$
b1101000011010000110100001101000011010000110100001101000011010011 W$
1Y$
1V$
b11 d$
1B$
0A$
0;
1:
0f!
1e!
#405800
0|
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b1000 }
1#!
b11 ~
b11 !!
b100 "!
b1110000011100000111000001110000011100000111000001110000011100000 $!
b1000 2
b1110000011100000111000001110000011100000111000001110000011100000 8
b11 5
b11 6
0B#
0A#
0>#
1=#
06#
15#
0.#
1-#
0&#
1%#
0|"
1{"
0t"
1s"
0l"
1k"
0d"
1c"
1^"
1Y"
0V$
b111 S$
0T$
1T$
#410000
0/
0{
0O"
#415000
1/
1{
1O"
b0 r!
b0 w!
b0 x!
b0 {!
b0 y!
b0 |!
b0 }!
b0 ~!
b1 h!
b1101000011010000110100001101000011010000110100001101000011010011 I$
1H$
0J$
b111 R$
b1000 L$
1J$
b1110000011100000111000001110000011100000111000001110000011100000 M$
b11 c$
1C
b0 d$
0B$
1A$
1B$
0A$
b110 S$
b1110000011100000111000001110000011100000111000001110000011100000 W$
0Y$
#415800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
b0 $!
1|
b1110000011100000111000001110000011100000111000001110000011100000 $!
07
b0 4
b0 5
b0 3
b0 2
b0 6
0R"
0^"
0]"
0Y"
0`"
0_"
0C#
0U$
b111 S$
b0 Q$
b0 S$
0T$
#420000
0/
0{
0O"
#425000
1/
1{
1O"
b0 c$
0J$
b0 P$
b0 R$
1O$
b1110000011100000111000001110000011100000111000001110000011100000 I$
0H$
0C
0B$
1A$
1;
0:
1f!
0e!
#425800
0|
b0 $!
1|
b1110000011100000111000001110000011100000111000001110000011100000 $!
#430000
0/
0{
0O"
#435000
1/
1{
1O"
b0 s!
b0 ""
b0 $"
b0 &"
b0 '"
b0 ("
b0 )"
b11100 u!
b0 h!
b1 r!
b1 w!
b1000 x!
b1110000011100000111000001110000011100000111000001110000011100001 y!
b11 {!
b11 |!
b100 }!
b1 ~!
b11101 t!
#435800
0|
b0 $!
1|
b1000 }
1#!
b11 ~
b11 !!
b100 "!
b100 4
b11 5
b11 3
17
b1000 2
b0 8
b11 6
1R"
0=#
0<#
0;#
05#
04#
03#
0-#
0,#
0+#
0%#
0$#
0##
0{"
0z"
0y"
0s"
0r"
0q"
0k"
0j"
0i"
0c"
0b"
0a"
1^"
1]"
1Y"
1`"
1_"
1C#
1U$
1V$
1T$
#440000
0/
0{
0O"
#445000
1/
1{
1O"
b1 s!
b1 ""
b1000 #"
b1110000011100000111000001110000011100000111000001110000011100001 $"
b11 &"
b11 '"
b100 ("
b1 )"
b11101 u!
b0 r!
b0 w!
b0 x!
b0 {!
b0 y!
b0 |!
b0 }!
b0 ~!
1N$
1b$
b1 d$
#445800
0|
b0 }
b0 ~
b0 !!
b0 "!
0#!
1|
b1110000011100000111000001110000011100000111000001110000011100001 $!
b1110000011100000111000001110000011100000111000001110000011100001 8
07
b0 4
b0 5
b0 3
b0 2
b0 6
1B#
1=#
1<#
1;#
15#
14#
13#
1-#
1,#
1+#
1%#
1$#
1##
1{"
1z"
1y"
1s"
1r"
1q"
1k"
1j"
1i"
1c"
1b"
1a"
0R"
0^"
0]"
0Y"
0`"
0_"
0C#
0U$
0V$
0T$
#450000
0/
0{
0O"
#455000
1/
1{
1O"
b0 s!
b0 ""
b0 #"
b0 $"
b0 &"
b0 '"
b0 ("
b0 )"
b1 c$
0N$
0b$
b11 d$
1B$
0A$
0;
1:
0f!
1e!
#455800
0|
b0 $!
b0 8
01
0B#
0=#
0<#
0;#
05#
04#
03#
0-#
0,#
0+