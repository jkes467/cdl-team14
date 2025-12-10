$date
	Wed Dec 10 06:16:25 2025
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
$var parameter 3 # BURST_SINGLE $end
$var parameter 3 $ BURST_INCR $end
$var parameter 3 % BURST_WRAP4 $end
$var parameter 3 & BURST_INCR4 $end
$var parameter 3 ' BURST_WRAP8 $end
$var parameter 3 ( BURST_INCR8 $end
$var parameter 3 ) BURST_WRAP16 $end
$var parameter 3 * BURST_INCR16 $end
$var reg 1 + clk $end
$var reg 1 , n_rst $end
$var reg 1 - hsel $end
$var reg 10 . haddr [9:0] $end
$var reg 3 / hsize [2:0] $end
$var reg 3 0 hburst [2:0] $end
$var reg 2 1 htrans [1:0] $end
$var reg 1 2 hwrite $end
$var reg 64 3 hwdata [63:0] $end
$var reg 64 4 hrdata_bus [63:0] $end
$var reg 1 5 hresp $end
$var reg 1 6 hready $end
$var reg 3 7 act_mode [2:0] $end
$var reg 64 8 hrdata_dut [63:0] $end
$var reg 1 9 handshake $end
$var reg 64 : bias_reg [63:0] $end
$var reg 8 ; ctrl_reg [7:0] $end
$var reg 1 < wr_en_push $end
$var reg 1 = is_weight $end
$var reg 8 > status_reg [7:0] $end
$var reg 64 ? output_data [63:0] $end
$var reg 16 @ err_reg [15:0] $end

$scope task reset_dut $end
$upscope $end

$scope task reset_model $end
$upscope $end

$scope task enqueue_poll $end
$var reg 10 A addr [9:0] $end
$var reg 2 B size [1:0] $end
$upscope $end

$scope task poll_until $end
$var reg 10 C addr [9:0] $end
$var reg 2 D size [1:0] $end
$var reg 64 E value [63:0] $end
$var integer 32 F iters $end
$upscope $end

$scope task enqueue_read $end
$var reg 10 G addr [9:0] $end
$var reg 2 H size [1:0] $end
$var reg 64 I exp_read [63:0] $end
$upscope $end

$scope task enqueue_write $end
$var reg 10 J addr [9:0] $end
$var reg 2 K size [1:0] $end
$var reg 64 L wdata [63:0] $end
$upscope $end

$scope task enqueue_fakewrite $end
$var reg 10 M addr [9:0] $end
$var reg 2 N size [1:0] $end
$var reg 64 O wdata [63:0] $end
$upscope $end

$scope task enqueue_burst_read $end
$var reg 10 P base_addr [9:0] $end
$var reg 2 Q size [1:0] $end
$var reg 3 R burst [2:0] $end
$upscope $end

$scope task enqueue_burst_write $end
$var reg 10 S base_addr [9:0] $end
$var reg 2 T size [1:0] $end
$var reg 3 U burst [2:0] $end
$upscope $end

$scope task enqueue_burst_read_nocheck $end
$var reg 10 V base_addr [9:0] $end
$var reg 2 W size [1:0] $end
$var reg 3 X burst [2:0] $end
$var integer 32 Y beats $end
$var integer 32 Z i $end
$upscope $end

$scope task execute_transactions $end
$var integer 32 [ num_transactions $end
$upscope $end

$scope task finish_transactions $end
$upscope $end

$scope task test_all_writes $end
$upscope $end

$scope task test_all_reads $end
$upscope $end

$scope task test_all_bursts_write $end
$var integer 32 \ i $end
$upscope $end

$scope task test_all_bursts_read $end
$upscope $end

$scope module BFM $end
$var parameter 32 ] DATA_WIDTH $end
$var parameter 32 ^ ADDR_WIDTH $end
$var parameter 32 _ DATA_SELECT_WIDTH $end
$var parameter 32 ` DATA_WIDTH_BITS $end
$var parameter 32 a DATA_MAX_BIT $end
$var parameter 32 b ADDR_MAX_BIT $end
$var parameter 0 c BUS_DELAY $end
$var parameter 2 d TRANS_IDLE $end
$var parameter 2 e TRANS_BUSY $end
$var parameter 2 f TRANS_NSEQ $end
$var parameter 2 g TRANS_SEQ $end
$var parameter 3 h BURST_SINGLE $end
$var parameter 3 i BURST_INCR $end
$var parameter 3 j BURST_WRAP4 $end
$var parameter 3 k BURST_INCR4 $end
$var parameter 3 l BURST_WRAP8 $end
$var parameter 3 m BURST_INCR8 $end
$var parameter 3 n BURST_WRAP16 $end
$var parameter 3 o BURST_INCR16 $end
$var wire 1 p clk $end
$var reg 1 q hsel $end
$var reg 10 r haddr [9:0] $end
$var reg 3 s hsize [2:0] $end
$var reg 2 t htrans [1:0] $end
$var reg 3 u hburst [2:0] $end
$var reg 1 v hwrite $end
$var reg 64 w hwdata [63:0] $end
$var wire 1 x hrdata [63] $end
$var wire 1 y hrdata [62] $end
$var wire 1 z hrdata [61] $end
$var wire 1 { hrdata [60] $end
$var wire 1 | hrdata [59] $end
$var wire 1 } hrdata [58] $end
$var wire 1 ~ hrdata [57] $end
$var wire 1 !! hrdata [56] $end
$var wire 1 "! hrdata [55] $end
$var wire 1 #! hrdata [54] $end
$var wire 1 $! hrdata [53] $end
$var wire 1 %! hrdata [52] $end
$var wire 1 &! hrdata [51] $end
$var wire 1 '! hrdata [50] $end
$var wire 1 (! hrdata [49] $end
$var wire 1 )! hrdata [48] $end
$var wire 1 *! hrdata [47] $end
$var wire 1 +! hrdata [46] $end
$var wire 1 ,! hrdata [45] $end
$var wire 1 -! hrdata [44] $end
$var wire 1 .! hrdata [43] $end
$var wire 1 /! hrdata [42] $end
$var wire 1 0! hrdata [41] $end
$var wire 1 1! hrdata [40] $end
$var wire 1 2! hrdata [39] $end
$var wire 1 3! hrdata [38] $end
$var wire 1 4! hrdata [37] $end
$var wire 1 5! hrdata [36] $end
$var wire 1 6! hrdata [35] $end
$var wire 1 7! hrdata [34] $end
$var wire 1 8! hrdata [33] $end
$var wire 1 9! hrdata [32] $end
$var wire 1 :! hrdata [31] $end
$var wire 1 ;! hrdata [30] $end
$var wire 1 <! hrdata [29] $end
$var wire 1 =! hrdata [28] $end
$var wire 1 >! hrdata [27] $end
$var wire 1 ?! hrdata [26] $end
$var wire 1 @! hrdata [25] $end
$var wire 1 A! hrdata [24] $end
$var wire 1 B! hrdata [23] $end
$var wire 1 C! hrdata [22] $end
$var wire 1 D! hrdata [21] $end
$var wire 1 E! hrdata [20] $end
$var wire 1 F! hrdata [19] $end
$var wire 1 G! hrdata [18] $end
$var wire 1 H! hrdata [17] $end
$var wire 1 I! hrdata [16] $end
$var wire 1 J! hrdata [15] $end
$var wire 1 K! hrdata [14] $end
$var wire 1 L! hrdata [13] $end
$var wire 1 M! hrdata [12] $end
$var wire 1 N! hrdata [11] $end
$var wire 1 O! hrdata [10] $end
$var wire 1 P! hrdata [9] $end
$var wire 1 Q! hrdata [8] $end
$var wire 1 R! hrdata [7] $end
$var wire 1 S! hrdata [6] $end
$var wire 1 T! hrdata [5] $end
$var wire 1 U! hrdata [4] $end
$var wire 1 V! hrdata [3] $end
$var wire 1 W! hrdata [2] $end
$var wire 1 X! hrdata [1] $end
$var wire 1 Y! hrdata [0] $end
$var wire 1 Z! hresp $end
$var wire 1 [! hready $end
$var reg 64 \! last_hrdata_read [63:0] $end
$var integer 32 ]! num_transactions_left $end

$scope fork new_transaction $end
$var reg 1 ^! fake $end
$var reg 1 _! write_mode $end
$var reg 10 `! address [9:0] $end
$var reg 64 a! data [63:0] $end
$var reg 1 b! expect_error $end
$var reg 3 c! size [2:0] $end
$var reg 2 d! trans [1:0] $end
$var reg 3 e! burst [2:0] $end
$var reg 1 f! verify $end
$upscope $end

$scope fork bus_state $end
$var reg 1 g! addr_active $end
$var reg 1 h! data_active $end
$var integer 32 i! current_addr_transaction_num $end
$var integer 32 j! current_data_transaction_num $end

$scope fork current_addr_transaction $end
$var reg 1 k! fake $end
$var reg 1 l! write_mode $end
$var reg 10 m! address [9:0] $end
$var reg 64 n! data [63:0] $end
$var reg 1 o! expect_error $end
$var reg 3 p! size [2:0] $end
$var reg 2 q! trans [1:0] $end
$var reg 3 r! burst [2:0] $end
$var reg 1 s! verify $end
$upscope $end

$scope fork current_data_transaction $end
$var reg 1 t! fake $end
$var reg 1 u! write_mode $end
$var reg 10 v! address [9:0] $end
$var reg 64 w! data [63:0] $end
$var reg 1 x! expect_error $end
$var reg 3 y! size [2:0] $end
$var reg 2 z! trans [1:0] $end
$var reg 3 {! burst [2:0] $end
$var reg 1 |! verify $end
$upscope $end
$upscope $end
$var integer 32 }! i $end
$var integer 32 ~! minaddr $end
$var integer 32 !" maxaddr $end

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
$var reg 1 "" sel $end
$var reg 1 #" write $end
$var reg 10 $" addr [9:0] $end
$var reg 1 %" exp_error $end
$var reg 3 &" size [2:0] $end
$var reg 3 '" burst [2:0] $end
$var reg 1 (" verify $end
$var integer 32 )" i $end
$var reg 1 *" wrap $end
$var integer 32 +" burst_size $end
$var integer 32 ," offset $end
$upscope $end

$scope task run_transactions $end
$var integer 32 -" num_transactions $end
$upscope $end

$scope begin DISPATCH_TRANSACTION $end
$upscope $end

$scope begin VERIFY_OUTPUT $end
$upscope $end

$scope function get_last_read $end
$var reg 64 ." get_last_read [63:0] $end
$upscope $end

$scope task wait_done $end
$upscope $end
$upscope $end

$scope module DUT $end
$var parameter 2 /" HTRANS_IDLE $end
$var parameter 2 0" HTRANS_BUSY $end
$var parameter 2 1" HTRANS_NONSEQ $end
$var parameter 2 2" HTRANS_SEQ $end
$var parameter 3 3" HBURST_SINGLE $end
$var parameter 3 4" HBURST_INCR $end
$var parameter 3 5" HBURST_WRAP4 $end
$var parameter 3 6" HBURST_INCR4 $end
$var parameter 3 7" HBURST_WRAP8 $end
$var parameter 3 8" HBURST_INCR8 $end
$var parameter 3 9" HBURST_WRAP16 $end
$var parameter 3 :" HBURST_INCR16 $end
$var wire 1 ;" clk $end
$var wire 1 <" n_rst $end
$var wire 1 =" hsel $end
$var wire 1 >" hwrite $end
$var wire 1 ?" haddr [9] $end
$var wire 1 @" haddr [8] $end
$var wire 1 A" haddr [7] $end
$var wire 1 B" haddr [6] $end
$var wire 1 C" haddr [5] $end
$var wire 1 D" haddr [4] $end
$var wire 1 E" haddr [3] $end
$var wire 1 F" haddr [2] $end
$var wire 1 G" haddr [1] $end
$var wire 1 H" haddr [0] $end
$var wire 1 I" htrans [1] $end
$var wire 1 J" htrans [0] $end
$var wire 1 K" hsize [1] $end
$var wire 1 L" hsize [0] $end
$var wire 1 M" hwdata [63] $end
$var wire 1 N" hwdata [62] $end
$var wire 1 O" hwdata [61] $end
$var wire 1 P" hwdata [60] $end
$var wire 1 Q" hwdata [59] $end
$var wire 1 R" hwdata [58] $end
$var wire 1 S" hwdata [57] $end
$var wire 1 T" hwdata [56] $end
$var wire 1 U" hwdata [55] $end
$var wire 1 V" hwdata [54] $end
$var wire 1 W" hwdata [53] $end
$var wire 1 X" hwdata [52] $end
$var wire 1 Y" hwdata [51] $end
$var wire 1 Z" hwdata [50] $end
$var wire 1 [" hwdata [49] $end
$var wire 1 \" hwdata [48] $end
$var wire 1 ]" hwdata [47] $end
$var wire 1 ^" hwdata [46] $end
$var wire 1 _" hwdata [45] $end
$var wire 1 `" hwdata [44] $end
$var wire 1 a" hwdata [43] $end
$var wire 1 b" hwdata [42] $end
$var wire 1 c" hwdata [41] $end
$var wire 1 d" hwdata [40] $end
$var wire 1 e" hwdata [39] $end
$var wire 1 f" hwdata [38] $end
$var wire 1 g" hwdata [37] $end
$var wire 1 h" hwdata [36] $end
$var wire 1 i" hwdata [35] $end
$var wire 1 j" hwdata [34] $end
$var wire 1 k" hwdata [33] $end
$var wire 1 l" hwdata [32] $end
$var wire 1 m" hwdata [31] $end
$var wire 1 n" hwdata [30] $end
$var wire 1 o" hwdata [29] $end
$var wire 1 p" hwdata [28] $end
$var wire 1 q" hwdata [27] $end
$var wire 1 r" hwdata [26] $end
$var wire 1 s" hwdata [25] $end
$var wire 1 t" hwdata [24] $end
$var wire 1 u" hwdata [23] $end
$var wire 1 v" hwdata [22] $end
$var wire 1 w" hwdata [21] $end
$var wire 1 x" hwdata [20] $end
$var wire 1 y" hwdata [19] $end
$var wire 1 z" hwdata [18] $end
$var wire 1 {" hwdata [17] $end
$var wire 1 |" hwdata [16] $end
$var wire 1 }" hwdata [15] $end
$var wire 1 ~" hwdata [14] $end
$var wire 1 !# hwdata [13] $end
$var wire 1 "# hwdata [12] $end
$var wire 1 ## hwdata [11] $end
$var wire 1 $# hwdata [10] $end
$var wire 1 %# hwdata [9] $end
$var wire 1 &# hwdata [8] $end
$var wire 1 '# hwdata [7] $end
$var wire 1 (# hwdata [6] $end
$var wire 1 )# hwdata [5] $end
$var wire 1 *# hwdata [4] $end
$var wire 1 +# hwdata [3] $end
$var wire 1 ,# hwdata [2] $end
$var wire 1 -# hwdata [1] $end
$var wire 1 .# hwdata [0] $end
$var wire 1 /# hburst [2] $end
$var wire 1 0# hburst [1] $end
$var wire 1 1# hburst [0] $end
$var wire 1 2# status_reg [7] $end
$var wire 1 3# status_reg [6] $end
$var wire 1 4# status_reg [5] $end
$var wire 1 5# status_reg [4] $end
$var wire 1 6# status_reg [3] $end
$var wire 1 7# status_reg [2] $end
$var wire 1 8# status_reg [1] $end
$var wire 1 9# status_reg [0] $end
$var wire 1 :# output_data [63] $end
$var wire 1 ;# output_data [62] $end
$var wire 1 <# output_data [61] $end
$var wire 1 =# output_data [60] $end
$var wire 1 ># output_data [59] $end
$var wire 1 ?# output_data [58] $end
$var wire 1 @# output_data [57] $end
$var wire 1 A# output_data [56] $end
$var wire 1 B# output_data [55] $end
$var wire 1 C# output_data [54] $end
$var wire 1 D# output_data [53] $end
$var wire 1 E# output_data [52] $end
$var wire 1 F# output_data [51] $end
$var wire 1 G# output_data [50] $end
$var wire 1 H# output_data [49] $end
$var wire 1 I# output_data [48] $end
$var wire 1 J# output_data [47] $end
$var wire 1 K# output_data [46] $end
$var wire 1 L# output_data [45] $end
$var wire 1 M# output_data [44] $end
$var wire 1 N# output_data [43] $end
$var wire 1 O# output_data [42] $end
$var wire 1 P# output_data [41] $end
$var wire 1 Q# output_data [40] $end
$var wire 1 R# output_data [39] $end
$var wire 1 S# output_data [38] $end
$var wire 1 T# output_data [37] $end
$var wire 1 U# output_data [36] $end
$var wire 1 V# output_data [35] $end
$var wire 1 W# output_data [34] $end
$var wire 1 X# output_data [33] $end
$var wire 1 Y# output_data [32] $end
$var wire 1 Z# output_data [31] $end
$var wire 1 [# output_data [30] $end
$var wire 1 \# output_data [29] $end
$var wire 1 ]# output_data [28] $end
$var wire 1 ^# output_data [27] $end
$var wire 1 _# output_data [26] $end
$var wire 1 `# output_data [25] $end
$var wire 1 a# output_data [24] $end
$var wire 1 b# output_data [23] $end
$var wire 1 c# output_data [22] $end
$var wire 1 d# output_data [21] $end
$var wire 1 e# output_data [20] $end
$var wire 1 f# output_data [19] $end
$var wire 1 g# output_data [18] $end
$var wire 1 h# output_data [17] $end
$var wire 1 i# output_data [16] $end
$var wire 1 j# output_data [15] $end
$var wire 1 k# output_data [14] $end
$var wire 1 l# output_data [13] $end
$var wire 1 m# output_data [12] $end
$var wire 1 n# output_data [11] $end
$var wire 1 o# output_data [10] $end
$var wire 1 p# output_data [9] $end
$var wire 1 q# output_data [8] $end
$var wire 1 r# output_data [7] $end
$var wire 1 s# output_data [6] $end
$var wire 1 t# output_data [5] $end
$var wire 1 u# output_data [4] $end
$var wire 1 v# output_data [3] $end
$var wire 1 w# output_data [2] $end
$var wire 1 x# output_data [1] $end
$var wire 1 y# output_data [0] $end
$var wire 1 z# err_reg [15] $end
$var wire 1 {# err_reg [14] $end
$var wire 1 |# err_reg [13] $end
$var wire 1 }# err_reg [12] $end
$var wire 1 ~# err_reg [11] $end
$var wire 1 !$ err_reg [10] $end
$var wire 1 "$ err_reg [9] $end
$var wire 1 #$ err_reg [8] $end
$var wire 1 $$ err_reg [7] $end
$var wire 1 %$ err_reg [6] $end
$var wire 1 &$ err_reg [5] $end
$var wire 1 '$ err_reg [4] $end
$var wire 1 ($ err_reg [3] $end
$var wire 1 )$ err_reg [2] $end
$var wire 1 *$ err_reg [1] $end
$var wire 1 +$ err_reg [0] $end
$var reg 3 ,$ act_mode [2:0] $end
$var reg 1 -$ hready $end
$var reg 1 .$ hresp $end
$var reg 64 /$ hrdata [63:0] $end
$var reg 1 0$ handshake $end
$var reg 64 1$ bias_reg [63:0] $end
$var reg 8 2$ ctrl_reg [7:0] $end
$var reg 1 3$ wr_en_push $end
$var reg 1 4$ is_weight $end
$var reg 64 5$ write_data [63:0] $end
$var reg 1 6$ wr_en $end
$var reg 1 7$ rd_en $end
$var reg 10 8$ rf_addr [9:0] $end
$var reg 64 9$ rf_wdata [63:0] $end
$var reg 1 :$ burst_err $end
$var reg 1 ;$ burst_en $end
$var reg 1 <$ size_ok $end
$var reg 1 =$ trans_valid $end
$var reg 1 >$ burst_active $end
$var reg 5 ?$ beats_left [4:0] $end
$var reg 64 @$ n_write_data [63:0] $end
$var reg 1 A$ n_wr_en $end
$var reg 1 B$ n_is_weight $end
$var reg 64 C$ n_bias_reg [63:0] $end
$var reg 8 D$ n_ctrl_reg [7:0] $end
$var reg 8 E$ n_act_reg [7:0] $end
$var reg 8 F$ act_reg [7:0] $end
$var reg 1 G$ write_error $end
$var reg 64 H$ rf_rdata [63:0] $end
$var reg 1 I$ error_flag $end
$var reg 1 J$ ready $end
$var reg 1 K$ handshake_n $end
$var reg 1 L$ any_error $end
$var reg 1 M$ error_in_progress $end
$var reg 2 N$ error_cnt [1:0] $end
$var reg 1 O$ ready_q1 $end
$var reg 1 P$ ready_q2 $end
$upscope $end
$upscope $end

$scope begin std $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
0+
0,
x-
bx .
bx /
bx 0
bx 1
x2
bx 3
b0 4
05
16
xq
bx r
bx s
bx t
bx u
xv
bx w
bx \!
x""
x#"
bx $"
x%"
bx &"
bx '"
x("
x*"
bx ."
b0 7
b0 8
09
b0 :
b0 ;
0<
0=
b10100101 >
b1101111010101101101111101110111111011110101011011011111011101111 ?
b0 @
b0 ,$
1-$
0.$
b0 /$
00$
b0 1$
b0 2$
03$
04$
b0 5$
06$
07$
b0 8$
b0 9$
0:$
1;$
0<$
x=$
0>$
b0 ?$
b0 @$
0A$
0B$
b0 C$
b0 D$
b0 E$
b0 F$
0G$
b0 H$
0I$
1J$
0K$
0L$
0M$
b0 N$
1O$
1P$
bx A
bx B
bx C
bx D
bx E
bx G
bx H
bx I
bx J
bx K
bx L
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
bx ^!
bx _!
bx `!
bx a!
bx b!
bx c!
bx d!
bx e!
bx f!
b0 g!
b0 h!
b0 i!
b0 j!
b0 k!
b0 l!
b0 m!
b0 n!
b0 o!
b0 p!
b0 q!
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
b1111101000 "
b0 #
b1 $
b10 %
b11 &
b100 '
b101 (
b110 )
b111 *
b1000 ]
b1010 ^
b11 _
b1000000 `
b111111 a
b1001 b
b0 d
b1 e
b10 f
b11 g
b0 h
b1 i
b10 j
b11 k
b100 l
b101 m
b110 n
b111 o
b0 /"
b1 0"
b10 1"
b11 2"
b0 3"
b1 4"
b10 5"
b11 6"
b100 7"
b101 8"
b110 9"
b111 :"
r10 !
r0.8 c
b0 ]!
bx )"
bx +"
bx ,"
b0 -"
b0 }!
b0 ~!
b0 !"
b0 F
b0 Y
b0 Z
b0 [
b0 \
0+$
0*$
0)$
0($
0'$
0&$
0%$
0$$
0#$
0"$
0!$
0~#
0}#
0|#
0{#
0z#
1y#
1x#
1w#
1v#
0u#
1t#
1s#
1r#
0q#
1p#
1o#
1n#
1m#
1l#
0k#
1j#
1i#
0h#
1g#
1f#
0e#
1d#
0c#
1b#
0a#
1`#
1_#
1^#
1]#
0\#
1[#
1Z#
1Y#
1X#
1W#
1V#
0U#
1T#
1S#
1R#
0Q#
1P#
1O#
1N#
1M#
1L#
0K#
1J#
1I#
0H#
1G#
1F#
0E#
1D#
0C#
1B#
0A#
1@#
1?#
1>#
1=#
0<#
1;#
1:#
19#
08#
17#
06#
05#
14#
03#
12#
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
xP"
xO"
xN"
xM"
xL"
xK"
xJ"
xI"
xH"
xG"
xF"
xE"
xD"
xC"
xB"
xA"
x@"
x?"
x>"
x="
0<"
0;"
1[!
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
0$!
0#!
0"!
0!!
0~
0}
0|
0{
0z
0y
0x
0p
$end
#5000
1+
1p
1;"
#5800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
b0 3
02
b0 0
b0 1
b0 /
b0 .
0-
0>"
0J"
0I"
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
0`"
0_"
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
0R"
0Q"
0P"
0O"
0N"
0M"
0="
0=$
0H"
0G"
0F"
0E"
0D"
0C"
0B"
0A"
0@"
0?"
0L"
0K"
#10000
0+
0p
0;"
#15000
1+
1p
1;"
#20000
0+
0p
0;"
1,
1<"
#25000
1+
1p
1;"
#30000
0+
0p
0;"
#35000
1+
1p
1;"
#40000
0+
0p
0;"
b0 J
b11 K
b1000100010001000100010001000100010001000100010001000100010001 L
1""
1#"
b0 $"
0%"
b11 &"
b0 '"
0("
b1 _!
b0 ^!
b11 c!
b0 e!
b0 b!
b0 f!
b0 ,"
b0 `!
b10 d!
b1000100010001000100010001000100010001000100010001000100010001 a!
b1000 J
b10001000100010001000100010001000100010001000100010001000100010 L
b1000 $"
b1000 `!
b10001000100010001000100010001000100010001000100010001000100010 a!
b10000 J
b11001100110011001100110011001100110011001100110011001100110011 L
b10000 $"
b10000 `!
b11001100110011001100110011001100110011001100110011001100110011 a!
b100010 J
b0 K
b1010101 L
b100010 $"
b0 &"
b0 c!
b10 ,"
b100010 `!
b10101010000000000000000 a!
b100100 J
b1111 L
b100100 $"
b100 ,"
b100100 `!
b111100000000000000000000000000000000 a!
b101 [
b101 -"
#45000
1+
1p
1;"
#50000
0+
0p
0;"
b101 ]!
#55000
1+
1p
1;"
b100 ]!
b1 g!
b1 l!
b1000100010001000100010001000100010001000100010001000100010001 n!
b11 p!
b10 q!
b1 i!
#55800
1q
1v
b11 s
b10 t
b10 1
b11 /
12
1-
1I"
1>"
1="
1=$
1L"
1K"
1<$
#60000
0+
0p
0;"
b10000 G
b11 H
b11001100110011001100110011001100110011001100110011001100110011 I
0#"
b10000 $"
b11 &"
1("
b0 _!
b11 c!
b1 f!
b0 ,"
b10000 `!
b11001100110011001100110011001100110011001100110011001100110011 a!
b11000 G
b1101111010101101101111101110111111011110101011011011111011101111 I
b11000 $"
b11000 `!
b1101111010101101101111101110111111011110101011011011111011101111 a!
b100000 G
b1 H
b0 I
b100000 $"
b1 &"
b1 c!
b100000 `!
b0 a!
b100010 G
b0 H
b100010 $"
b0 &"
b0 c!
b10 ,"
b100010 `!
b100011 G
b10100101000000000000000000000000000000000000000000000000 I
b100011 $"
b11 ,"
b100011 `!
b100100 G
b1111 I
b100100 $"
b100 ,"
b100100 `!
b111100000000000000000000000000000000 a!
b110 [
b110 -"
#65000
1+
1p
1;"
b1 h!
b1 u!
b1000100010001000100010001000100010001000100010001000100010001 w!
b11 y!
b10 z!
b1 j!
b11 ]!
b1000 m!
b10001000100010001000100010001000100010001000100010001000100010 n!
b10 i!
16$
1B$
1A$
#65800
0q
b0 s
b0 t
0v
1q
b1000 r
1v
b11 s
b10 t
b1000100010001000100010001000100010001000100010001000100010001 w
b1000100010001000100010001000100010001000100010001000100010001 3
b1000 .
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
1`"
1\"
1X"
1T"
1P"
1E"
0<$
1<$
#70000
0+
0p
0;"
b110 ]!
#75000
1+
1p
1;"
b1000 v!
b10001000100010001000100010001000100010001000100010001000100010 w!
b10 j!
b101 ]!
b10000 m!
b11001100110011001100110011001100110011001100110011001100110011 n!
b11 i!
13$
14$
06$
b1000 8$
16$
b1000100010001000100010001000100010001000100010001000100010001 9$
1=
1<
0A$
b1000100010001000100010001000100010001000100010001000100010001 @$
0B$
1A$
#75800
0q
b0 r
b0 s
b0 t
0v
b0 w
1q
b10000 r
1v
b11 s
b10 t
b10001000100010001000100010001000100010001000100010001000100010 w
b10001000100010001000100010001000100010001000100010001000100010 3
b10000 .
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
0`"
1_"
0\"
1["
0X"
1W"
0T"
1S"
0P"
1O"
0E"
1D"
0<$
1<$
#80000
0+
0p
0;"
b0 S
b11 T
b0 U
1#"
b0 $"
b11 &"
b1 _!
b11 c!
b0 ,"
b0 `!
b1010000010100000101000001010000010100000101000001010000010100000 a!
b1 [
b1 -"
#85000
1+
1p
1;"
b10000 v!
b11001100110011001100110011001100110011001100110011001100110011 w!
b11 j!
b100 ]!
b100010 m!
b10101010000000000000000 n!
b0 p!
b100 i!
06$
b10000 8$
16$
b10001000100010001000100010001000100010001000100010001000100010 9$
b1000100010001000100010001000100010001000100010001000100010001 5$
04$
0=
0A$
b10001000100010001000100010001000100010001000100010001000100010 C$
1A$
#85800
0q
b0 r
b0 s
b0 t
0v
b0 w
1q
b100010 r
1v
b10 t
b11001100110011001100110011001100110011001100110011001100110011 w
b11001100110011001100110011001100110011001100110011001100110011 3
b0 /
b100010 .
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
1`"
1\"
1X"
1T"
1P"
1G"
0D"
1C"
0L"
0K"
0<$
1<$
#90000
0+
0p
0;"
b1 ]!
#95000
1+
1p
1;"
b100010 v!
b10101010000000000000000 w!
b0 y!
b100 j!
b0 ]!
b100100 m!
b111100000000000000000000000000000000 n!
b101 i!
b10001000100010001000100010001000100010001000100010001000100010 1$
06$
b100010 8$
16$
b11001100110011001100110011001100110011001100110011001100110011 9$
b10001000100010001000100010001000100010001000100010001000100010 :
0A$
b110011 D$
1A$
#95800
0q
b0 r
b0 t
0v
b0 w
1q
b100100 r
1v
b10 t
b10101010000000000000000 w
b10101010000000000000000 3
b100100 .
0.#
0-#
0*#
0)#
0&#
0%#
0"#
0!#
0{"
1z"
0w"
1v"
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
0`"
0_"
0\"
0["
0X"
0W"
0T"
0S"
0P"
0O"
0G"
1F"
0<$
1<$
#100000
0+
0p
0;"
b1 \
b10 \
b11 \
b1 U
b1 '"
b1 e!
b11 +"
0*"
b0 )"
b1011000010110000101100001011000010110000101100001011000010110000 a!
b1 )"
b1000 `!
b11 d!
b1011000010110000101100001011000010110000101100001011000010110001 a!
b10 )"
b10000 `!
b1011000010110000101100001011000010110000101100001011000010110010 a!
b11 )"
b11 [
b11 -"
#105000
1+
1p
1;"
b100100 v!
b111100000000000000000000000000000000 w!
b101 j!
b0 g!
b0 l!
b0 m!
b0 n!
b0 q!
06$
b100100 8$
16$
b10101010000000000000000 9$
b110011 2$
b110011 ;
0A$
1A$
#105800
0q
b0 r
b0 t
0v
b0 w
1q
b111100000000000000000000000000000000 w
b111100000000000000000000000000000000 3
02
b0 1
b0 .
0>"
0I"
0|"
0z"
0x"
0v"
1l"
1k"
1j"
1i"
0=$
0F"
0C"
0<$
#110000
0+
0p
0;"
b11 ]!
#115000
1+
1p
1;"
b0 h!
b0 u!
b0 v!
b0 w!
b0 z!
b10 ]!
b1 g!
b10000 m!
b11001100110011001100110011001100110011001100110011001100110011 n!
b11 p!
b10 q!
b1 s!
b110 i!
06$
0A$
#115800
0q
b0 w
1q
b10000 r
b11 s
b10 t
b10 1
b11 /
b10000 .
b0 3
0l"
0k"
0j"
0i"
1I"
1=$
1D"
1L"
1K"
1<$
#120000
0+
0p
0;"
b0 \
b1 \
b10 \
b11 \
b100 \
b10 U
b10 '"
b10 e!
b100 +"
1*"
b0 )"
b0 `!
b10 d!
b1100000011000000110000001100000011000000110000001100000011000000 a!
b1 )"
b1000 `!
b11 d!
b1100000011000000110000001100000011000000110000001100000011000001 a!
b10 )"
b10000 `!
b1100000011000000110000001100000011000000110000001100000011000010 a!
b11 )"
b11000 `!
b1100000011000000110000001100000011000000110000001100000011000011 a!
b100 )"
b100 [
b100 -"
#125000
1+
1p
1;"
b1 h!
b10000 v!
b11001100110011001100110011001100110011001100110011001100110011 w!
b11 y!
b10 z!
b1 |!
b110 j!
b1 ]!
b11000 m!
b1101111010101101101111101110111111011110101011011011111011101111 n!
b111 i!
03$
b10000 8$
17$
0<
b10001000100010001000100010001000100010001000100010001000100010 H$
b10001000100010001000100010001000100010001000100010001000100010 /$
b10001000100010001000100010001000100010001000100010001000100010 8
b10001000100010001000100010001000100010001000100010001000100010 4
1X!
1T!
1P!
1L!
1H!
1D!
1@!
1<!
18!
14!
10!
1,!
1(!
1$!
1~
1z
#125800
0q
b0 r
b0 s
b0 t
1q
b11000 r
b11 s
b10 t
b11000 .
1E"
0<$
1<$
#130000
0+
0p
0;"
b10001000100010001000100010001000100010001000100010001000100010 \!
b1000 !"
b100 ]!
#135000
1+
1p
1;"
b11000 v!
b1101111010101101101111101110111111011110101011011011111011101111 w!
b111 j!
b11 ]!
b100000 m!
b0 n!
b1 p!
b1000 i!
07$
b11000 8$
17$
b0 H$
b1101111010101101101111101110111111011110101011011011111011101111 H$
1K$
b1101111010101101101111101110111111011110101011011011111011101111 /$
b1101111010101101101111101110111111011110101011011011111011101111 8
b1101111010101101101111101110111111011110101011011011111011101111 4
1Y!
1W!
1V!
1S!
1R!
1O!
1N!
1M!
1J!
1I!
0H!
1G!
1F!
1B!
1?!
1>!
1=!
0<!
1;!
1:!
19!
17!
16!
13!
12!
1/!
1.!
1-!
1*!
1)!
0(!
1'!
1&!
1"!
1}
1|
1{
0z
1y
1x
#135800
0q
b0 r
b0 s
b0 t
1q
b100000 r
b1 s
b10 t
b1 /
b100000 .
0E"
0D"
1C"
0K"
0<$
1<$
#140000
0+
0p
0;"
b1101111010101101101111101110111111011110101011011011111011101111 \!
b0 \
b1 \
b10 \
b11 \
b100 \
b11 U
b11 '"
b11 e!
0*"
b0 )"
b0 `!
b10 d!
b1101000011010000110100001101000011010000110100001101000011010000 a!
b1 )"
b1000 `!
b11 d!
b1101000011010000110100001101000011010000110100001101000011010001 a!
b10 )"
b10000 `!
b1101000011010000110100001101000011010000110100001101000011010010 a!
b11 )"
b11000 `!
b1101000011010000110100001101000011010000110100001101000011010011 a!
b100 )"
#145000
1+
1p
1;"
b100000 v!
b0 w!
b1 y!
b1000 j!
b10 ]!
b100010 m!
b0 p!
b1001 i!
10$
07$
b100000 8$
17$
19
b0 H$
0K$
b0 /$
b0 8
b0 4
0Y!
0X!
0W!
0V!
0T!
0S!
0R!
0P!
0O!
0N!
0M!
0L!
0J!
0I!
0G!
0F!
0D!
0B!
0@!
0?!
0>!
0=!
0;!
0:!
09!
08!
07!
06!
04!
03!
02!
00!
0/!
0.!
0-!
0,!
0*!
0)!
0'!
0&!
0$!
0"!
0~
0}
0|
0{
0y
0x
#145800
0q
b0 r
b0 s
b0 t
1q
b100010 r
b10 t
b0 /
b100010 .
1G"
0L"
0<$
1<$
#150000
0+
0p
0;"
b0 \!
b10 !"
b100 ]!
#155000
1+
1p
1;"
b100010 v!
b0 y!
b1001 j!
b11 ]!
b100011 m!
b1010 i!
07$
b100010 8$
17$
00$
09
b1100110000000000000000000000000000000000000000 H$
b1100110000000000000000000000000000000000000000 /$
b1100110000000000000000000000000000000000000000 8
b1100110000000000000000000000000000000000000000 4
11!
10!
1-!
1,!
#155800
0q
b0 r
b0 t
1q
b100011 r
b10 t
b100011 .
1H"
0<$
1<$
#160000
0+
0p
0;"
b1100110000000000000000000000000000000000000000 \!
b10 ~!
b11 !"
b0 \
b1 \
b10 \
b11 \
b100 \
b101 \
b110 \
b111 \
b1000 \
b100 U
b100 '"
b100 e!
b1000 +"
1*"
b0 )"
b0 `!
b10 d!
b1110000011100000111000001110000011100000111000001110000011100000 a!
b1 )"
b1000 `!
b11 d!
b1110000011100000111000001110000011100000111000001110000011100001 a!
b10 )"
b10000 `!
b1110000011100000111000001110000011100000111000001110000011100010 a!
b11 )"
b11000 `!
b1110000011100000111000001110000011100000111000001110000011100011 a!
b100 )"
b100000 `!
b1110000011100000111000001110000011100000111000001110000011100100 a!
b101 )"
b101000 `!
b1110000011100000111000001110000011100000111000001110000011100101 a!
b110 )"
b110000 `!
b1110000011100000111000001110000011100000111000001110000011100110 a!
b111 )"
b111000 `!
b1110000011100000111000001110000011100000111000001110000011100111 a!
b1000 )"
b1000 [
b1000 -"
#165000
1+
1p
1;"
b100011 v!
b1010 j!
b10 ]!
b100100 m!
b111100000000000000000000000000000000 n!
b1011 i!
07$
b100011 8$
17$
b0 H$
b10100101000000000000000000000000000000000000000000000000 H$
b10100101000000000000000000000000000000000000000000000000 /$
b10100101000000000000000000000000000000000000000000000000 8
b10100101000000000000000000000000000000000000000000000000 4
01!
00!
0-!
0,!
1)!
1'!
1$!
1"!
#165800
0q
b0 r
b0 t
1q
b100100 r
b10 t
b100100 .
0H"
0G"
1F"
0<$
1<$
#170000
0+
0p
0;"
b10100101000000000000000000000000000000000000000000000000 \!
b11 ~!
b100 !"
b1000 ]!
#175000
1+
1p
1;"
b100100 v!
b111100000000000000000000000000000000 w!
b1011 j!
b111 ]!
b1 l!
b0 m!
b1010000010100000101000001010000010100000101000001010000010100000 n!
b11 p!
b1100 i!
07$
b100100 8$
17$
b0 H$
b0 /$
b0 8
b0 4
0)!
0'!
0$!
0"!
#175800
0q
b0 r
b0 t
1q
1v
b11 s
b10 t
b11 /
12
b0 .
1>"
0F"
0C"
1L"
1K"
0<$
1<$
#180000
0+
0p
0;"
b0 \!
b100 ~!
b101 !"
b0 \
b1 \
b10 \
b11 \
b100 \
b101 \
b110 \
b111 \
b1000 \
b101 U
b101 '"
b101 e!
0*"
b0 )"
b0 `!
b10 d!
b1111000011110000111100001111000011110000111100001111000011110000 a!
b1 )"
b1000 `!
b11 d!
b1111000011110000111100001111000011110000111100001111000011110001 a!
b10 )"
b10000 `!
b1111000011110000111100001111000011110000111100001111000011110010 a!
b11 )"
b11000 `!
b1111000011110000111100001111000011110000111100001111000011110011 a!
b100 )"
b100000 `!
b1111000011110000111100001111000011110000111100001111000011110100 a!
b101 )"
b101000 `!
b1111000011110000111100001111000011110000111100001111000011110101 a!
b110 )"
b110000 `!
b1111000011110000111100001111000011110000111100001111000011110110 a!
b111 )"
b111000 `!
b1111000011110000111100001111000011110000111100001111000011110111 a!
b1000 )"
#185000
1+
1p
1;"
b1 u!
b0 v!
b1010000010100000101000001010000010100000101000001010000010100000 w!
b11 y!
b1100 j!
b110 ]!
b1011000010110000101100001011000010110000101100001011000010110000 n!
b1 r!
b1101 i!
07$
b0 8$
16$
b0 9$
b0 @$
1B$
1A$
#185800
0q
b0 s
b0 t
0v
1q
1v
b11 s
b10 t
b1 u
b1010000010100000101000001010000010100000101000001010000010100000 w
b1010000010100000101000001010000010100000101000001010000010100000 3
b1 0
11#
1)#
1'#
1!#
1}"
1w"
1u"
1o"
1m"
1g"
1e"
1_"
1]"
1W"
1U"
1O"
1M"
#190000
0+
0p
0;"
b1000 ]!
#195000
1+
1p
1;"
b1011000010110000101100001011000010110000101100001011000010110000 w!
b1 {!
b1101 j!
b111 ]!
b1000 m!
b1011000010110000101100001011000010110000101100001011000010110001 n!
b11 q!
b1110 i!
13$
b0 5$
14$
06$
1>$
0;$
16$
b1010000010100000101000001010000010100000101000001010000010100000 9$
1=
1<
0A$
b1010000010100000101000001010000010100000101000001010000010100000 @$
1A$
#195800
0q
b0 s
b0 t
b0 u
0v
b0 w
1q
b1000 r
1v
b11 s
b11 t
b1 u
b1011000010110000101100001011000010110000101100001011000010110000 w
b1000 .
b1011000010110000101100001011000010110000101100001011000010110000 3
b11 1
1J"
1*#
1"#
1x"
1p"
1h"
1`"
1X"
1P"
1E"
0<$
1<$
#200000
0+
0p
0;"
b0 \
b1 \
b10 \
b11 \
b100 \
b101 \
b110 \
b111 \
b1000 \
b1001 \
b1010 \
b1011 \
b1100 \
b1101 \
b1110 \
b1111 \
b10000 \
b110 U
b110 '"
b110 e!
b10000 +"
1*"
b0 )"
b0 `!
b10 d!
b1000000010000000100000001000000010000000100000001000000010000 a!
b1 )"
b1000 `!
b11 d!
b1000000010000000100000001000000010000000100000001000000010001 a!
b10 )"
b10000 `!
b1000000010000000100000001000000010000000100000001000000010010 a!
b11 )"
b11000 `!
b1000000010000000100000001000000010000000100000001000000010011 a!
b100 )"
b100000 `!
b1000000010000000100000001000000010000000100000001000000010100 a!
b101 )"
b101000 `!
b1000000010000000100000001000000010000000100000001000000010101 a!
b110 )"
b110000 `!
b1000000010000000100000001000000010000000100000001000000010110 a!
b111 )"
b111000 `!
b1000000010000000100000001000000010000000100000001000000010111 a!
b1000 )"
b1000000 `!
b1000000010000000100000001000000010000000100000001000000011000 a!
b1001 )"
b1001000 `!
b1000000010000000100000001000000010000000100000001000000011001 a!
b1010 )"
b1010000 `!
b1000000010000000100000001000000010000000100000001000000011010 a!
b1011 )"
b1011000 `!
b1000000010000000100000001000000010000000100000001000000011011 a!
b1100 )"
b1100000 `!
b1000000010000000100000001000000010000000100000001000000011100 a!
b1101 )"
b1101000 `!
b1000000010000000100000001000000010000000100000001000000011101 a!
b1110 )"
b1110000 `!
b1000000010000000100000001000000010000000100000001000000011110 a!
b1111 )"
b1111000 `!
b1000000010000000100000001000000010000000100000001000000011111 a!
b10000 )"
b10000 [
b10000 -"
#205000
1+
1p
1;"
b1000 v!
b1011000010110000101100001011000010110000101100001011000010110001 w!
b11 z!
b1110 j!
b110 ]!
b10000 m!
b1011000010110000101100001011000010110000101100001011000010110010 n!
b1111 i!
06$
b1000 8$
16$
b1011000010110000101100001011000010110000101100001011000010110000 9$
b1010000010100000101000001010000010100000101000001010000010100000 5$
0A$
b1011000010110000101100001011000010110000101100001011000010110000 @$
0B$
1A$
#205800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b10000 r
1v
b11 s
b11 t
b1 u
b1011000010110000101100001011000010110000101100001011000010110001 w
b1011000010110000101100001011000010110000101100001011000010110001 3
b10000 .
1.#
0E"
1D"
0<$
1<$
#210000
0+
0p
0;"
b10000 ]!
#215000
1+
1p
1;"
b10000 v!
b1011000010110000101100001011000010110000101100001011000010110010 w!
b1111 j!
b1111 ]!
b0 m!
b1100000011000000110000001100000011000000110000001100000011000000 n!
b10 q!
b10 r!
b10000 i!
b1011000010110000101100001011000010110000101100001011000010110000 5$
04$
06$
b10000 8$
16$
b1011000010110000101100001011000010110000101100001011000010110001 9$
0=
0A$
b1011000010110000101100001011000010110000101100001011000010110001 C$
1A$
#215800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
1v
b11 s
b10 t
b10 u
b1011000010110000101100001011000010110000101100001011000010110010 w
b1011000010110000101100001011000010110000101100001011000010110010 3
b10 0
b10 1
b0 .
0J"
01#
10#
0.#
1-#
0D"
0<$
1<$
#220000
0+
0p
0;"
b0 \
b1 \
b10 \
b11 \
b100 \
b101 \
b110 \
b111 \
b1000 \
b1001 \
b1010 \
b1011 \
b1100 \
b1101 \
b1110 \
b1111 \
b10000 \
b111 U
b111 '"
b111 e!
0*"
b0 )"
b0 `!
b10 d!
b10000000100000001000000010000000100000001000000010000000100000 a!
b1 )"
b1000 `!
b11 d!
b10000000100000001000000010000000100000001000000010000000100001 a!
b10 )"
b10000 `!
b10000000100000001000000010000000100000001000000010000000100010 a!
b11 )"
b11000 `!
b10000000100000001000000010000000100000001000000010000000100011 a!
b100 )"
b100000 `!
b10000000100000001000000010000000100000001000000010000000100100 a!
b101 )"
b101000 `!
b10000000100000001000000010000000100000001000000010000000100101 a!
b110 )"
b110000 `!
b10000000100000001000000010000000100000001000000010000000100110 a!
b111 )"
b111000 `!
b10000000100000001000000010000000100000001000000010000000100111 a!
b1000 )"
b1000000 `!
b10000000100000001000000010000000100000001000000010000000101000 a!
b1001 )"
b1001000 `!
b10000000100000001000000010000000100000001000000010000000101001 a!
b1010 )"
b1010000 `!
b10000000100000001000000010000000100000001000000010000000101010 a!
b1011 )"
b1011000 `!
b10000000100000001000000010000000100000001000000010000000101011 a!
b1100 )"
b1100000 `!
b10000000100000001000000010000000100000001000000010000000101100 a!
b1101 )"
b1101000 `!
b10000000100000001000000010000000100000001000000010000000101101 a!
b1110 )"
b1110000 `!
b10000000100000001000000010000000100000001000000010000000101110 a!
b1111 )"
b1111000 `!
b10000000100000001000000010000000100000001000000010000000101111 a!
b10000 )"
#225000
1+
1p
1;"
b0 v!
b1100000011000000110000001100000011000000110000001100000011000000 w!
b10 z!
b10 {!
b10000 j!
b1110 ]!
b1000 m!
b1100000011000000110000001100000011000000110000001100000011000001 n!
b11 q!
b10001 i!
06$
b0 8$
b100 ?$
16$
b1011000010110000101100001011000010110000101100001011000010110010 9$
b1011000010110000101100001011000010110000101100001011000010110001 1$
b1011000010110000101100001011000010110000101100001011000010110001 :
0A$
b1011000010110000101100001011000010110000101100001011000010110010 @$
1B$
1A$
#225800
0q
b0 s
b0 t
b0 u
0v
b0 w
1q
b1000 r
1v
b11 s
b11 t
b10 u
b1100000011000000110000001100000011000000110000001100000011000000 w
b1000 .
b1100000011000000110000001100000011000000110000001100000011000000 3
b11 1
1J"
0-#
0*#
0)#
1(#
0"#
0!#
1~"
0x"
0w"
1v"
0p"
0o"
1n"
0h"
0g"
1f"
0`"
0_"
1^"
0X"
0W"
1V"
0P"
0O"
1N"
1E"
0<$
1<$
#230000
0+
0p
0;"
b10000 ]!
#235000
1+
1p
1;"
b1000 v!
b1100000011000000110000001100000011000000110000001100000011000001 w!
b11 z!
b10001 j!
b1111 ]!
b10000 m!
b1100000011000000110000001100000011000000110000001100000011000010 n!
b10010 i!
b1011000010110000101100001011000010110000101100001011000010110010 5$
14$
06$
b1000 8$
b11 ?$
16$
b1100000011000000110000001100000011000000110000001100000011000000 9$
1=
0A$
b1100000011000000110000001100000011000000110000001100000011000000 @$
0B$
1A$
#235800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b10000 r
1v
b11 s
b11 t
b10 u
b1100000011000000110000001100000011000000110000001100000011000001 w
b1100000011000000110000001100000011000000110000001100000011000001 3
b10000 .
1.#
0E"
1D"
0<$
1<$
#240000
0+
0p
0;"
b10000 V
b11 W
b11 X
b100 Y
b1 Z
b10 Z
b11 Z
b100 Z
0#"
b10000 $"
b11 '"
0("
b0 _!
b11 e!
b0 f!
b100 +"
b0 )"
b10000 `!
b10 d!
b0 a!
b1 )"
b11000 `!
b11 d!
b10 )"
b100000 `!
b11 )"
b101000 `!
b100 )"
b100 [
b100 -"
#245000
1+
1p
1;"
b10000 v!
b1100000011000000110000001100000011000000110000001100000011000010 w!
b10010 j!
b1110 ]!
b11000 m!
b1100000011000000110000001100000011000000110000001100000011000011 n!
b10011 i!
06$
b10000 8$
b10 ?$
16$
b1100000011000000110000001100000011000000110000001100000011000001 9$
b1100000011000000110000001100000011000000110000001100000011000000 5$
04$
0=
0A$
b1100000011000000110000001100000011000000110000001100000011000001 C$
1A$
#245800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b11000 r
1v
b11 s
b11 t
b10 u
b1100000011000000110000001100000011000000110000001100000011000010 w
b1100000011000000110000001100000011000000110000001100000011000010 3
b11000 .
0.#
1-#
1E"
0<$
1<$
#250000
0+
0p
0;"
b100 ]!
#255000
1+
1p
1;"
b11000 v!
b1100000011000000110000001100000011000000110000001100000011000011 w!
b10011 j!
b11 ]!
b0 m!
b1101000011010000110100001101000011010000110100001101000011010000 n!
b10 q!
b11 r!
b10100 i!
b1100000011000000110000001100000011000000110000001100000011000001 1$
06$
b11000 8$
b1 ?$
16$
b1100000011000000110000001100000011000000110000001100000011000010 9$
b1100000011000000110000001100000011000000110000001100000011000001 :
0A$
1G$
1L$
#255800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
1v
b11 s
b10 t
b11 u
b1100000011000000110000001100000011000000110000001100000011000011 w
b1100000011000000110000001100000011000000110000001100000011000011 3
b11 0
b10 1
b0 .
0J"
11#
1.#
0E"
0D"
0<$
1<$
#260000
0+
0p
0;"
b10 X
b0 Z
b1 Z
b10 Z
b11 Z
b100 Z
b10 '"
b10 e!
1*"
b0 )"
b10000 `!
b10 d!
b1 )"
b11000 `!
b11 d!
b10 )"
b0 `!
b11 )"
b1000 `!
b100 )"
#265000
1+
1p
1;"
b0 v!
b1101000011010000110100001101000011010000110100001101000011010000 w!
b10 z!
b11 {!
b10100 j!
b10 ]!
b1000 m!
b1101000011010000110100001101000011010000110100001101000011010001 n!
b11 q!
b10101 i!
1M$
b10 N$
06$
b0 8$
b100 ?$
16$
b1100000011000000110000001100000011000000110000001100000011000011 9$
03$
0<
0G$
b1100000011000000110000001100000011000000110000001100000011000011 @$
1B$
1A$
1.$
0J$
15
0L$
1Z!
#265800
0q
b0 s
b0 t
b0 u
0v
b0 w
1q
b1000 r
1v
b11 s
b11 t
b11 u
b1101000011010000110100001101000011010000110100001101000011010000 w
b1000 .
b1101000011010000110100001101000011010000110100001101000011010000 3
b11 1
1J"
0.#
0-#
1*#
1"#
1x"
1p"
1h"
1`"
1X"
1P"
1E"
0<$
1<$
#270000
0+
0p
0;"
b100 ]!
#275000
1+
1p
1;"
b1000 v!
b1101000011010000110100001101000011010000110100001101000011010001 w!
b11 z!
b10101 j!
b11 ]!
b10000 m!
b1101000011010000110100001101000011010000110100001101000011010010 n!
b10110 i!
0O$
13$
b1100000011000000110000001100000011000000110000001100000011000011 5$
14$
06$
b1000 8$
b11 ?$
16$
b1101000011010000110100001101000011010000110100001101000011010000 9$
b1 N$
1=
1<
0-$
06
0[!
0.$
1J$
1.$
0J$
0A$
b1101000011010000110100001101000011010000110100001101000011010000 @$
0B$
1A$
#275800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b10000 r
1v
b11 s
b11 t
b11 u
b1101000011010000110100001101000011010000110100001101000011010001 w
b1101000011010000110100001101000011010000110100001101000011010001 3
b10000 .
1.#
0E"
1D"
0<$
1<$
#280000
0+
0p
0;"
b101 X
b1000 Y
b0 Z
b1 Z
b10 Z
b11 Z
b100 Z
b101 Z
b110 Z
b111 Z
b1000 Z
b101 '"
b101 e!
b1000 +"
0*"
b0 )"
b10000 `!
b10 d!
b1 )"
b11000 `!
b11 d!
b10 )"
b100000 `!
b11 )"
b101000 `!
b100 )"
b110000 `!
b101 )"
b111000 `!
b110 )"
b1000000 `!
b111 )"
b1001000 `!
b1000 )"
b1000 [
b1000 -"
#285000
1+
1p
1;"
b0 g!
b0 l!
b0 m!
b0 p!
b0 n!
b0 q!
b0 r!
b0 s!
b100 ]!
b0 N$
06$
b10000 8$
b10 ?$
16$
b1101000011010000110100001101000011010000110100001101000011010001 9$
b1101000011010000110100001101000011010000110100001101000011010000 5$
04$
0P$
0=
0A$
b1101000011010000110100001101000011010000110100001101000011010001 C$
1A$
0.$
1J$
1.$
#285800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b1101000011010000110100001101000011010000110100001101000011010001 w
02
b0 0
b0 1
b0 /
b0 .
0>"
0J"
0I"
01#
00#
0=$
0D"
0L"
0K"
0<$
#290000
0+
0p
0;"
b1000 ]!
#295000
1+
1p
1;"
1O$
b1101000011010000110100001101000011010000110100001101000011010001 1$
06$
0>$
b0 ?$
1;$
0M$
b1101000011010000110100001101000011010000110100001101000011010001 :
0.$
0A$
05
0Z!
#295800
0q
b0 w
1q
b1101000011010000110100001101000011010000110100001101000011010001 w
#300000
0+
0p
0;"
b100 X
b0 Z
b1 Z
b10 Z
b11 Z
b100 Z
b101 Z
b110 Z
b111 Z
b1000 Z
b100 '"
b100 e!
1*"
b0 )"
b10000 `!
b10 d!
b1 )"
b11000 `!
b11 d!
b10 )"
b100000 `!
b11 )"
b101000 `!
b100 )"
b110000 `!
b101 )"
b111000 `!
b110 )"
b0 `!
b111 )"
b1000 `!
b1000 )"
#305000
1+
1p
1;"
03$
1P$
1-$
0<
16
1[!
#305800
0q
b0 w
1q
b1101000011010000110100001101000011010000110100001101000011010001 w
#310000
0+
0p
0;"
#315000
1+
1p
1;"
b0 h!
b0 u!
b0 v!
b0 w!
b0 y!
b0 z!
b0 {!
b0 |!
b10110 j!
b111 ]!
b1 g!
b1 l!
b10000 m!
b1101000011010000110100001101000011010000110100001101000011010010 n!
b11 p!
b11 q!
b11 r!
b1 s!
b10111 i!
#315800
0q
b0 w
1q
b10000 r
1v
b11 s
b11 t
b11 u
b11 0
b11 1
b11 /
12
b10000 .
b0 3
1>"
0.#
0*#
0(#
0'#
0"#
0~"
0}"
0x"
0v"
0u"
0p"
0n"
0m"
0h"
0f"
0e"
0`"
0^"
0]"
0X"
0V"
0U"
0P"
0N"
0M"
1J"
1I"
11#
10#
1=$
1D"
1L"
1K"
1<$
#320000
0+
0p
0;"
#325000
1+
1p
1;"
b1 h!
b1 u!
b10000 v!
b1101000011010000110100001101000011010000110100001101000011010010 w!
b11 y!
b11 z!
b11 {!
b1 |!
b10111 j!
b110 ]!
b11000 m!
b1101000011010000110100001101000011010000110100001101000011010011 n!
b11000 i!
16$
b0 9$
b0 C$
1A$
#325800
0q
b0 r
b0 s
b0 t
b0 u
0v
1q
b11000 r
1v
b11 s
b11 t
b11 u
b1101000011010000110100001101000011010000110100001101000011010010 w
b1101000011010000110100001101000011010000110100001101000011010010 3
b11000 .
1-#
1*#
1(#
1'#
1"#
1~"
1}"
1x"
1v"
1u"
1p"
1n"
1m"
1h"
1f"
1e"
1`"
1^"
1]"
1X"
1V"
1U"
1P"
1N"
1M"
1E"
0<$
1<$
#330000
0+
0p
0;"
#335000
1+
1p
1;"
b11000 v!
b1101000011010000110100001101000011010000110100001101000011010011 w!
b11000 j!
b101 ]!
b0 m!
b1110000011100000111000001110000011100000111000001110000011100000 n!
b10 q!
b100 r!
b11001 i!
13$
b0 1$
06$
b11000 8$
16$
b1101000011010000110100001101000011010000110100001101000011010010 9$
b0 :
1<
0A$
1G$
1L$
#335800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
1v
b11 s
b10 t
b100 u
b1101000011010000110100001101000011010000110100001101000011010011 w
b1101000011010000110100001101000011010000110100001101000011010011 3
b100 0
b10 1
b0 .
0J"
01#
00#
1/#
1.#
0E"
0D"
0<$
1<$
#340000
0+
0p
0;"
#345000
1+
1p
1;"
b0 v!
b1110000011100000111000001110000011100000111000001110000011100000 w!
b10 z!
b100 {!
b11001 j!
b100 ]!
b1000 m!
b1110000011100000111000001110000011100000111000001110000011100001 n!
b11 q!
b11010 i!
1M$
b10 N$
06$
b0 8$
1>$
b1000 ?$
0;$
16$
b1101000011010000110100001101000011010000110100001101000011010011 9$
03$
0<
0G$
b1101000011010000110100001101000011010000110100001101000011010011 @$
1B$
1A$
1.$
0J$
15
0L$
1Z!
#345800
0q
b0 s
b0 t
b0 u
0v
b0 w
1q
b1000 r
1v
b11 s
b11 t
b100 u
b1110000011100000111000001110000011100000111000001110000011100000 w
b1000 .
b1110000011100000111000001110000011100000111000001110000011100000 3
b11 1
1J"
0.#
0-#
0*#
1)#
0"#
1!#
0x"
1w"
0p"
1o"
0h"
1g"
0`"
1_"
0X"
1W"
0P"
1O"
1E"
0<$
1<$
#350000
0+
0p
0;"
#355000
1+
1p
1;"
b1000 v!
b1110000011100000111000001110000011100000111000001110000011100001 w!
b11 z!
b11010 j!
b11 ]!
b10000 m!
b1110000011100000111000001110000011100000111000001110000011100010 n!
b11011 i!
0O$
13$
b1101000011010000110100001101000011010000110100001101000011010011 5$
14$
06$
b1000 8$
b111 ?$
16$
b1110000011100000111000001110000011100000111000001110000011100000 9$
b1 N$
1=
1<
0-$
06
0[!
0.$
1J$
1.$
0J$
0A$
b1110000011100000111000001110000011100000111000001110000011100000 @$
0B$
1A$
#355800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b10000 r
1v
b11 s
b11 t
b100 u
b1110000011100000111000001110000011100000111000001110000011100001 w
b1110000011100000111000001110000011100000111000001110000011100001 3
b10000 .
1.#
0E"
1D"
0<$
1<$
#360000
0+
0p
0;"
#365000
1+
1p
1;"
b0 g!
b0 l!
b0 m!
b0 p!
b0 n!
b0 q!
b0 r!
b0 s!
b100 ]!
b0 N$
06$
b10000 8$
b110 ?$
16$
b1110000011100000111000001110000011100000111000001110000011100001 9$
b1110000011100000111000001110000011100000111000001110000011100000 5$
04$
0P$
0=
0A$
b1110000011100000111000001110000011100000111000001110000011100001 C$
1A$
0.$
1J$
1.$
#365800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b1110000011100000111000001110000011100000111000001110000011100001 w
02
b0 0
b0 1
b0 /
b0 .
0>"
0J"
0I"
0/#
0=$
0D"
0L"
0K"
0<$
#370000
0+
0p
0;"
#375000
1+
1p
1;"
1O$
b1110000011100000111000001110000011100000111000001110000011100001 1$
06$
0>$
b0 ?$
1;$
0M$
b1110000011100000111000001110000011100000111000001110000011100001 :
0.$
0A$
05
0Z!
#375800
0q
b0 w
1q
b1110000011100000111000001110000011100000111000001110000011100001 w
#380000
0+
0p
0;"
#385000
1+
1p
1;"
03$
1P$
1-$
0<
16
1[!
#385800
0q
b0 w
1q
b1110000011100000111000001110000011100000111000001110000011100001 w
#390000
0+
0p
0;"
#395000
1+
1p
1;"
b0 h!
b0 u!
b0 v!
b0 w!
b0 y!
b0 z!
b0 {!
b0 |!
b11011 j!
b11 ]!
b1 g!
b1 l!
b10000 m!
b1110000011100000111000001110000011100000111000001110000011100010 n!
b11 p!
b11 q!
b100 r!
b1 s!
b11100 i!
#395800
0q
b0 w
1q
b10000 r
1v
b11 s
b11 t
b100 u
b100 0
b11 1
b11 /
12
b10000 .
b0 3
1>"
0.#
0)#
0(#
0'#
0!#
0~"
0}"
0w"
0v"
0u"
0o"
0n"
0m"
0g"
0f"
0e"
0_"
0^"
0]"
0W"
0V"
0U"
0O"
0N"
0M"
1J"
1I"
1/#
1=$
1D"
1L"
1K"
1<$
#400000
0+
0p
0;"
#405000
1+
1p
1;"
b1 h!
b1 u!
b10000 v!
b1110000011100000111000001110000011100000111000001110000011100010 w!
b11 y!
b11 z!
b100 {!
b1 |!
b11100 j!
b10 ]!
b11000 m!
b1110000011100000111000001110000011100000111000001110000011100011 n!
b11101 i!
16$
b0 9$
b0 C$
1A$
#405800
0q
b0 r
b0 s
b0 t
b0 u
0v
1q
b11000 r
1v
b11 s
b11 t
b100 u
b1110000011100000111000001110000011100000111000001110000011100010 w
b1110000011100000111000001110000011100000111000001110000011100010 3
b11000 .
1-#
1)#
1(#
1'#
1!#
1~"
1}"
1w"
1v"
1u"
1o"
1n"
1m"
1g"
1f"
1e"
1_"
1^"
1]"
1W"
1V"
1U"
1O"
1N"
1M"
1E"
0<$
1<$
#410000
0+
0p
0;"
#415000
1+
1p
1;"
b11000 v!
b1110000011100000111000001110000011100000111000001110000011100011 w!
b11101 j!
b1 ]!
b100000 m!
b1110000011100000111000001110000011100000111000001110000011100100 n!
b11110 i!
13$
b0 1$
06$
b11000 8$
16$
b1110000011100000111000001110000011100000111000001110000011100010 9$
b0 :
1<
0A$
1G$
1L$
#415800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b100000 r
1v
b11 s
b11 t
b100 u
b1110000011100000111000001110000011100000111000001110000011100011 w
b1110000011100000111000001110000011100000111000001110000011100011 3
b100000 .
1.#
0E"
0D"
1C"
0<$
#420000
0+
0p
0;"
#425000
1+
1p
1;"
b100000 v!
b1110000011100000111000001110000011100000111000001110000011100100 w!
b11110 j!
b0 ]!
b101000 m!
b1110000011100000111000001110000011100000111000001110000011100101 n!
b11111 i!
1M$
b10 N$
06$
b100000 8$
1:$
03$
0<
0G$
1.$
0J$
15
1Z!
#425800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b101000 r
1v
b11 s
b11 t
b100 u
b1110000011100000111000001110000011100000111000001110000011100100 w
b1110000011100000111000001110000011100000111000001110000011100100 3
b101000 .
0.#
0-#
1,#
1E"
#430000
0+
0p
0;"
#435000
1+
1p
1;"
b101000 v!
b1110000011100000111000001110000011100000111000001110000011100101 w!
b11111 j!
b0 g!
b0 l!
b0 m!
b0 p!
b0 n!
b0 q!
b0 r!
b0 s!
0O$
0:$
b101000 8$
1:$
b1 N$
0-$
06
0[!
0.$
1J$
1.$
0J$
#435800
0q
b0 r
b0 s
b0 t
b0 u
0v
b0 w
1q
b1110000011100000111000001110000011100000111000001110000011100101 w
b1110000011100000111000001110000011100000111000001110000011100101 3
02
b0 0
b0 1
b0 /
b0 .
0>"
0J"
0I"
0/#
1.#
0=$
0E"
0C"
0L"
0K"
#440000
0+
0p
0;"
#445000
1+
1p
1;"
b0 N$
0:$
0P$
0L$
0.$
1J$
1.$
#445800
0q
b0 w
1q
b1110000011100000111000001110000011100000111000001110000011100101 w
#450000
0+
0p
0;"
#455000
1+
1p
1;"
1O$
0M$
0.$
05
0Z!
#455800
0q
b0 w
1q
b1110000011100000111000001110000011100000111000001110000011100101 w
#460000
0+
0p
0;"
#465000
1+
1p
1;"
1P$
1-$
16
1[!
#465800
0q
b0 w
1q
b1110000011100000111000001110000011100000111000001110000011100101 w
#470000
0+
0p
0;"
#475000
1+
1p
1;"
b0 h!
b0 u!
b0 v!
b0 w!
b0 y!
b0 z!
b0 {!
b0 |!
#475800
0q
b0 w
b0 3
0-
0.#
0,#
0)#
0(#
0'#
0!#
0~"
0}"
0w"
0v"
0u"
0o"
0n"
0m"
0g"
0f"
0e"
0_"
0^"
0]"
0W"
0V"
0U"
0O"
0N"
0M"
0="
#480000
0+
0p
0;"
#485000
1+
1p
1;"
#490000
0+
0p
0;"
#495000
1+
1p
1;"
#500000
0+
0p
0;"
#505000
1+
1p
1;"
#510000
0+
0p
0;"
#515000
1+
1p
1;"
#520000
0+
0p
0;"
#525000
1+
1p
1;"
#530000
0+
0p
0;"
#535000
1+
1p
1;"
#540000
0+
0p
0;"
#545000
1+
1p
1;"
#550000
0+
0p
0;"
#555000
1+
1p
1;"
#560000
0+
0p
0;"
#565000
1+
1p
1;"
#570000
0+
0p
0;"
#575000
1+
1p
1;"
