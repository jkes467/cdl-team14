/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Wed Dec 10 13:11:25 2025
/////////////////////////////////////////////////////////////


module signed_multiplier_DW01_add_17 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, \B[1] , \B[2] ,
         \B[3] , n68;
  assign SUM[1] = \B[1] ;
  assign \B[1]  = B[1];
  assign SUM[2] = \B[2] ;
  assign \B[2]  = B[2];
  assign SUM[3] = \B[3] ;
  assign \B[3]  = B[3];

  HAX1 U2 ( .A(A[14]), .B(n3), .YC(SUM[15]), .YS(SUM[14]) );
  HAX1 U3 ( .A(A[13]), .B(n4), .YC(n3), .YS(SUM[13]) );
  HAX1 U4 ( .A(A[12]), .B(n5), .YC(n4), .YS(SUM[12]) );
  HAX1 U5 ( .A(A[11]), .B(n6), .YC(n5), .YS(SUM[11]) );
  HAX1 U6 ( .A(A[10]), .B(n7), .YC(n6), .YS(SUM[10]) );
  HAX1 U7 ( .A(A[9]), .B(n8), .YC(n7), .YS(SUM[9]) );
  FAX1 U8 ( .A(B[8]), .B(A[8]), .C(n9), .YC(n8), .YS(SUM[8]) );
  FAX1 U9 ( .A(B[7]), .B(A[7]), .C(n10), .YC(n9), .YS(SUM[7]) );
  FAX1 U10 ( .A(B[6]), .B(n11), .C(A[6]), .YC(n10), .YS(SUM[6]) );
  FAX1 U11 ( .A(A[5]), .B(n14), .C(B[5]), .YC(n11), .YS(SUM[5]) );
  NAND2X1 U17 ( .A(A[4]), .B(B[4]), .Y(n13) );
  AND2X2 U21 ( .A(n13), .B(n68), .Y(SUM[4]) );
  OR2X2 U22 ( .A(A[4]), .B(B[4]), .Y(n68) );
  INVX2 U23 ( .A(n13), .Y(n14) );
endmodule


module signed_multiplier_DW01_add_18 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n5, n6, n7, n8, n9, n10, n12, n14, n15, n16, n17, n18,
         n20, n22, n23, n25, n27, \B[2] , n83, n84, n85;
  assign SUM[11] = n5;
  assign SUM[2] = \B[2] ;
  assign \B[2]  = B[2];

  HAX1 U2 ( .A(A[10]), .B(n6), .YC(n5), .YS(SUM[10]) );
  FAX1 U3 ( .A(A[9]), .B(B[9]), .C(n7), .YC(n6), .YS(SUM[9]) );
  FAX1 U4 ( .A(A[8]), .B(B[8]), .C(n8), .YC(n7), .YS(SUM[8]) );
  FAX1 U5 ( .A(A[7]), .B(B[7]), .C(n9), .YC(n8), .YS(SUM[7]) );
  XNOR2X1 U6 ( .A(n15), .B(n1), .Y(SUM[6]) );
  AOI21X1 U8 ( .A(n84), .B(n15), .C(n12), .Y(n10) );
  NAND2X1 U11 ( .A(n14), .B(n84), .Y(n1) );
  NAND2X1 U14 ( .A(B[6]), .B(A[6]), .Y(n14) );
  XOR2X1 U15 ( .A(n2), .B(n18), .Y(SUM[5]) );
  OAI21X1 U16 ( .A(n18), .B(n16), .C(n17), .Y(n15) );
  NAND2X1 U17 ( .A(n17), .B(n27), .Y(n2) );
  INVX2 U18 ( .A(n16), .Y(n27) );
  NOR2X1 U19 ( .A(A[5]), .B(B[5]), .Y(n16) );
  NAND2X1 U20 ( .A(A[5]), .B(B[5]), .Y(n17) );
  XNOR2X1 U21 ( .A(n3), .B(n23), .Y(SUM[4]) );
  AOI21X1 U22 ( .A(n23), .B(n85), .C(n20), .Y(n18) );
  NAND2X1 U25 ( .A(n22), .B(n85), .Y(n3) );
  NAND2X1 U28 ( .A(A[4]), .B(B[4]), .Y(n22) );
  NAND2X1 U34 ( .A(A[3]), .B(B[3]), .Y(n25) );
  AND2X2 U38 ( .A(n25), .B(n83), .Y(SUM[3]) );
  OR2X2 U39 ( .A(A[3]), .B(B[3]), .Y(n83) );
  OR2X2 U40 ( .A(B[6]), .B(A[6]), .Y(n84) );
  OR2X1 U41 ( .A(A[4]), .B(B[4]), .Y(n85) );
  INVX2 U42 ( .A(n14), .Y(n12) );
  INVX2 U43 ( .A(n25), .Y(n23) );
  INVX2 U44 ( .A(n10), .Y(n9) );
  INVX2 U45 ( .A(n22), .Y(n20) );
endmodule


module signed_multiplier_DW01_add_19 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n5, n6, n7, n8, n9, n10, n11, n13, n15, n16, n17, n18,
         n19, n20, n21, n22, n24, n25, n27, n28, \B[0] , \B[1] , n80, n82;
  assign SUM[12] = n5;
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];
  assign SUM[1] = \B[1] ;
  assign \B[1]  = B[1];

  HAX1 U2 ( .A(A[11]), .B(n6), .YC(n5), .YS(SUM[11]) );
  HAX1 U3 ( .A(A[10]), .B(n7), .YC(n6), .YS(SUM[10]) );
  HAX1 U4 ( .A(A[9]), .B(n8), .YC(n7), .YS(SUM[9]) );
  HAX1 U5 ( .A(A[8]), .B(n9), .YC(n8), .YS(SUM[8]) );
  FAX1 U6 ( .A(B[7]), .B(A[7]), .C(n10), .YC(n9), .YS(SUM[7]) );
  FAX1 U7 ( .A(A[6]), .B(B[6]), .C(n25), .YC(n10), .YS(SUM[6]) );
  XNOR2X1 U9 ( .A(n1), .B(n16), .Y(SUM[5]) );
  AOI21X1 U10 ( .A(n80), .B(n16), .C(n13), .Y(n11) );
  NAND2X1 U13 ( .A(n15), .B(n80), .Y(n1) );
  NAND2X1 U16 ( .A(B[5]), .B(A[5]), .Y(n15) );
  XOR2X1 U17 ( .A(n2), .B(n19), .Y(SUM[4]) );
  OAI21X1 U18 ( .A(n17), .B(n19), .C(n18), .Y(n16) );
  NAND2X1 U19 ( .A(n18), .B(n27), .Y(n2) );
  INVX2 U20 ( .A(n17), .Y(n27) );
  NOR2X1 U21 ( .A(B[4]), .B(A[4]), .Y(n17) );
  NAND2X1 U22 ( .A(B[4]), .B(A[4]), .Y(n18) );
  XOR2X1 U23 ( .A(n3), .B(n24), .Y(SUM[3]) );
  OAI21X1 U25 ( .A(n21), .B(n24), .C(n22), .Y(n20) );
  NAND2X1 U26 ( .A(n22), .B(n28), .Y(n3) );
  INVX2 U27 ( .A(n21), .Y(n28) );
  NOR2X1 U28 ( .A(B[3]), .B(A[3]), .Y(n21) );
  NAND2X1 U29 ( .A(B[3]), .B(A[3]), .Y(n22) );
  NAND2X1 U34 ( .A(A[2]), .B(B[2]), .Y(n24) );
  OR2X2 U38 ( .A(B[5]), .B(A[5]), .Y(n80) );
  AND2X2 U39 ( .A(n24), .B(n82), .Y(SUM[2]) );
  OR2X2 U40 ( .A(A[2]), .B(B[2]), .Y(n82) );
  INVX2 U41 ( .A(n15), .Y(n13) );
  INVX2 U42 ( .A(n20), .Y(n19) );
  INVX2 U43 ( .A(n11), .Y(n25) );
endmodule


module signed_multiplier_DW01_add_20 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n30, n32, n33, n34, n35, n36, n38, n40,
         n41, n43, n46, n47, n49, \B[0] , n104, n105, n107, n108, n109;
  assign n1 = A[15];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

  XOR2X1 U1 ( .A(n108), .B(n1), .Y(SUM[15]) );
  XNOR2X1 U5 ( .A(n16), .B(n3), .Y(SUM[13]) );
  FAX1 U13 ( .A(B[12]), .B(A[12]), .C(n17), .YC(n16), .YS(SUM[12]) );
  FAX1 U14 ( .A(B[11]), .B(A[11]), .C(n18), .YC(n17), .YS(SUM[11]) );
  FAX1 U15 ( .A(B[10]), .B(A[10]), .C(n19), .YC(n18), .YS(SUM[10]) );
  FAX1 U16 ( .A(A[9]), .B(B[9]), .C(n20), .YC(n19), .YS(SUM[9]) );
  FAX1 U17 ( .A(B[8]), .B(A[8]), .C(n21), .YC(n20), .YS(SUM[8]) );
  XNOR2X1 U18 ( .A(n4), .B(n24), .Y(SUM[7]) );
  OAI21X1 U19 ( .A(n22), .B(n2), .C(n23), .Y(n21) );
  NAND2X1 U21 ( .A(n23), .B(n46), .Y(n4) );
  INVX2 U22 ( .A(n22), .Y(n46) );
  NOR2X1 U23 ( .A(A[7]), .B(B[7]), .Y(n22) );
  NAND2X1 U24 ( .A(A[7]), .B(B[7]), .Y(n23) );
  FAX1 U25 ( .A(A[6]), .B(B[6]), .C(n25), .YC(n24), .YS(SUM[6]) );
  XOR2X1 U26 ( .A(n5), .B(n28), .Y(SUM[5]) );
  OAI21X1 U27 ( .A(n26), .B(n28), .C(n27), .Y(n25) );
  NAND2X1 U28 ( .A(n27), .B(n47), .Y(n5) );
  INVX2 U29 ( .A(n26), .Y(n47) );
  NOR2X1 U30 ( .A(A[5]), .B(B[5]), .Y(n26) );
  NAND2X1 U31 ( .A(A[5]), .B(B[5]), .Y(n27) );
  XNOR2X1 U32 ( .A(n6), .B(n33), .Y(SUM[4]) );
  AOI21X1 U33 ( .A(n33), .B(n104), .C(n30), .Y(n28) );
  NAND2X1 U36 ( .A(n32), .B(n104), .Y(n6) );
  NAND2X1 U39 ( .A(A[4]), .B(B[4]), .Y(n32) );
  XOR2X1 U40 ( .A(n7), .B(n36), .Y(SUM[3]) );
  OAI21X1 U41 ( .A(n34), .B(n36), .C(n35), .Y(n33) );
  NAND2X1 U42 ( .A(n35), .B(n49), .Y(n7) );
  INVX2 U43 ( .A(n34), .Y(n49) );
  NOR2X1 U44 ( .A(A[3]), .B(B[3]), .Y(n34) );
  NAND2X1 U45 ( .A(A[3]), .B(B[3]), .Y(n35) );
  XNOR2X1 U46 ( .A(n8), .B(n41), .Y(SUM[2]) );
  AOI21X1 U47 ( .A(n41), .B(n105), .C(n38), .Y(n36) );
  NAND2X1 U50 ( .A(n40), .B(n105), .Y(n8) );
  NAND2X1 U53 ( .A(A[2]), .B(B[2]), .Y(n40) );
  NAND2X1 U59 ( .A(A[1]), .B(B[1]), .Y(n43) );
  OR2X2 U63 ( .A(A[4]), .B(B[4]), .Y(n104) );
  OR2X2 U64 ( .A(A[2]), .B(B[2]), .Y(n105) );
  AND2X2 U65 ( .A(n43), .B(n107), .Y(SUM[1]) );
  OR2X2 U66 ( .A(A[1]), .B(B[1]), .Y(n107) );
  AND2X2 U67 ( .A(n109), .B(A[14]), .Y(n108) );
  INVX2 U68 ( .A(n32), .Y(n30) );
  INVX2 U69 ( .A(n40), .Y(n38) );
  AND2X2 U70 ( .A(A[13]), .B(n16), .Y(n109) );
  INVX2 U71 ( .A(n43), .Y(n41) );
  INVX2 U72 ( .A(n24), .Y(n2) );
  INVX2 U73 ( .A(A[13]), .Y(n3) );
  XOR2X1 U74 ( .A(n109), .B(A[14]), .Y(SUM[14]) );
endmodule


module signed_multiplier ( weight, value, cumulative, float, out, overflow );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N51, N60, N61, N62, N63, N64, N65, N66, N67, N77, N78, N79, N80,
         N81, N82, N83, N84, N93, N94, N95, N96, N97, N98, N99, N100, N108,
         N109, N110, N111, N112, N113, N114, N115, N264, N265, N266, N267,
         N268, N269, N270, N271, N272, N273, N274, N275, N276, N277, N278,
         N280, N326, N327, N261, N260, N259, N258, N257, N256, N255, N254,
         N253, N252, N251, N243, N242, N241, N240, N239, N238, N237, N236,
         N235, N234, N233, N232, N231, N194, N193, N192, N191, N190, N189,
         N188, N187, N186, N185, N182, N181, N180, N179, N178, N177, N176,
         N175, N174, N173, N172, N171, N170, N169, N168, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_DW01_add_17 add_2_root_add_0_root_add_76_7 ( .A({1'b0, 
        N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 1'b0, 
        1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N84, 
        N83, N82, N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N182, N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, 
        N168, SYNOPSYS_UNCONNECTED__0}) );
  signed_multiplier_DW01_add_18 add_3_root_add_0_root_add_76_7 ( .A({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, N115, N114, N113, N112, N111, N110, N109, N108, 
        1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N100, N99, 
        N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, N194, N193, N192, 
        N191, N190, N189, N188, N187, N186, N185, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6}) );
  signed_multiplier_DW01_add_19 add_1_root_add_0_root_add_76_7 ( .A({1'b0, 
        1'b0, 1'b0, 1'b0, N194, N193, N192, N191, N190, N189, N188, N187, N186, 
        N185, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        N67, N66, N65, N64, N63, N62, N61, N60}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, N243, N242, N241, N240, N239, N238, N237, 
        N236, N235, N234, N233, N232, N231}) );
  signed_multiplier_DW01_add_20 add_0_root_add_0_root_add_76_7 ( .A({N182, 
        N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, 
        N169, N168, 1'b0}), .B({1'b0, 1'b0, 1'b0, N243, N242, N241, N240, N239, 
        N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({
        N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  AND2X2 U3 ( .A(n10), .B(n487), .Y(n1) );
  AND2X2 U4 ( .A(n16), .B(n481), .Y(n2) );
  AND2X2 U5 ( .A(n17), .B(n519), .Y(n3) );
  AND2X2 U6 ( .A(n18), .B(n482), .Y(n4) );
  AND2X2 U7 ( .A(n377), .B(n625), .Y(n5) );
  AND2X2 U8 ( .A(n356), .B(n354), .Y(n6) );
  AND2X2 U9 ( .A(n1), .B(n490), .Y(n7) );
  AND2X2 U10 ( .A(n400), .B(n399), .Y(n8) );
  XNOR2X1 U11 ( .A(n324), .B(n307), .Y(n9) );
  AND2X2 U12 ( .A(n2), .B(n484), .Y(n10) );
  AND2X2 U13 ( .A(n3), .B(n517), .Y(n11) );
  AND2X2 U14 ( .A(N34), .B(n70), .Y(n12) );
  AND2X2 U15 ( .A(n385), .B(n382), .Y(n13) );
  AND2X2 U16 ( .A(n532), .B(n457), .Y(n14) );
  AND2X2 U17 ( .A(n113), .B(N34), .Y(n15) );
  AND2X2 U18 ( .A(n25), .B(n478), .Y(n16) );
  AND2X2 U19 ( .A(n4), .B(n485), .Y(n17) );
  AND2X2 U20 ( .A(n28), .B(n504), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(N280), .Y(n19) );
  AND2X2 U22 ( .A(n437), .B(n619), .Y(n20) );
  XNOR2X1 U23 ( .A(n281), .B(n264), .Y(n21) );
  XNOR2X1 U24 ( .A(n250), .B(n249), .Y(n22) );
  XNOR2X1 U25 ( .A(n443), .B(n597), .Y(n23) );
  AND2X2 U26 ( .A(n552), .B(n575), .Y(n24) );
  OR2X1 U27 ( .A(n345), .B(N267), .Y(n291) );
  AND2X2 U28 ( .A(n447), .B(n446), .Y(n25) );
  OR2X1 U29 ( .A(n291), .B(N268), .Y(n297) );
  OR2X1 U30 ( .A(N269), .B(n297), .Y(n205) );
  INVX2 U31 ( .A(n476), .Y(n37) );
  XNOR2X1 U32 ( .A(n439), .B(n433), .Y(n436) );
  AND2X2 U33 ( .A(n65), .B(n66), .Y(n26) );
  AND2X2 U34 ( .A(n63), .B(n62), .Y(n27) );
  XNOR2X1 U35 ( .A(n324), .B(n338), .Y(n331) );
  AND2X2 U36 ( .A(n502), .B(n476), .Y(n28) );
  INVX2 U37 ( .A(n5), .Y(n41) );
  AND2X2 U38 ( .A(n202), .B(n625), .Y(n29) );
  INVX2 U39 ( .A(N34), .Y(n206) );
  XNOR2X1 U40 ( .A(n311), .B(cumulative[4]), .Y(n324) );
  INVX2 U41 ( .A(N51), .Y(n211) );
  BUFX2 U42 ( .A(weight[7]), .Y(n42) );
  XOR2X1 U43 ( .A(n44), .B(value[6]), .Y(n30) );
  INVX2 U44 ( .A(float), .Y(n625) );
  BUFX2 U46 ( .A(n200), .Y(n32) );
  BUFX2 U47 ( .A(n200), .Y(n33) );
  BUFX2 U48 ( .A(n198), .Y(n34) );
  INVX1 U49 ( .A(n197), .Y(n92) );
  INVX2 U50 ( .A(n27), .Y(n35) );
  INVX4 U51 ( .A(n26), .Y(n36) );
  OR2X2 U52 ( .A(n529), .B(n528), .Y(n592) );
  INVX1 U53 ( .A(n34), .Y(n98) );
  AND2X1 U54 ( .A(N326), .B(N34), .Y(n67) );
  AND2X1 U55 ( .A(n68), .B(N327), .Y(n64) );
  INVX1 U56 ( .A(N34), .Y(n38) );
  AND2X1 U57 ( .A(n205), .B(n29), .Y(n240) );
  INVX1 U58 ( .A(n205), .Y(n447) );
  INVX2 U59 ( .A(n29), .Y(n40) );
  INVX1 U60 ( .A(n33), .Y(n115) );
  AND2X2 U61 ( .A(n386), .B(n330), .Y(n39) );
  NOR2X1 U62 ( .A(n39), .B(n329), .Y(n341) );
  INVX1 U63 ( .A(n381), .Y(n330) );
  OR2X2 U64 ( .A(n302), .B(cumulative[5]), .Y(n320) );
  INVX1 U65 ( .A(n302), .Y(n310) );
  INVX1 U66 ( .A(n383), .Y(n329) );
  INVX1 U67 ( .A(n530), .Y(n440) );
  INVX1 U68 ( .A(n36), .Y(n112) );
  INVX4 U69 ( .A(n501), .Y(n476) );
  INVX4 U70 ( .A(n389), .Y(n607) );
  INVX2 U71 ( .A(value[1]), .Y(n207) );
  NAND2X1 U72 ( .A(n211), .B(n207), .Y(n176) );
  INVX2 U73 ( .A(n176), .Y(n185) );
  INVX2 U74 ( .A(value[2]), .Y(n187) );
  NAND2X1 U75 ( .A(n185), .B(n187), .Y(n188) );
  INVX2 U76 ( .A(n188), .Y(n179) );
  INVX2 U77 ( .A(value[3]), .Y(n181) );
  NAND2X1 U78 ( .A(n179), .B(n181), .Y(n182) );
  INVX2 U79 ( .A(n182), .Y(n88) );
  INVX2 U80 ( .A(value[4]), .Y(n246) );
  NAND2X1 U81 ( .A(n88), .B(n246), .Y(n90) );
  INVX2 U82 ( .A(n90), .Y(n46) );
  INVX2 U83 ( .A(value[5]), .Y(n262) );
  NAND2X1 U84 ( .A(n46), .B(n262), .Y(n48) );
  INVX2 U85 ( .A(n48), .Y(n43) );
  INVX2 U86 ( .A(value[6]), .Y(n283) );
  NAND3X1 U87 ( .A(n43), .B(value[7]), .C(n283), .Y(n632) );
  NAND2X1 U88 ( .A(value[7]), .B(n48), .Y(n44) );
  INVX2 U89 ( .A(N327), .Y(n212) );
  INVX2 U90 ( .A(N326), .Y(n214) );
  NAND3X1 U91 ( .A(n212), .B(n214), .C(n206), .Y(n65) );
  INVX2 U92 ( .A(n65), .Y(n60) );
  INVX2 U93 ( .A(weight[3]), .Y(n251) );
  NAND2X1 U94 ( .A(n60), .B(n251), .Y(n62) );
  INVX2 U95 ( .A(n62), .Y(n192) );
  INVX2 U96 ( .A(weight[4]), .Y(n247) );
  NAND2X1 U97 ( .A(n192), .B(n247), .Y(n55) );
  INVX2 U98 ( .A(n55), .Y(n194) );
  INVX2 U99 ( .A(weight[5]), .Y(n263) );
  NAND2X1 U100 ( .A(n194), .B(n263), .Y(n58) );
  INVX2 U101 ( .A(n58), .Y(n50) );
  INVX2 U102 ( .A(weight[6]), .Y(n284) );
  NAND2X1 U103 ( .A(n50), .B(n284), .Y(n52) );
  INVX2 U104 ( .A(n52), .Y(n45) );
  NAND2X1 U105 ( .A(n42), .B(n45), .Y(n196) );
  NOR2X1 U106 ( .A(n632), .B(n196), .Y(N261) );
  NOR2X1 U107 ( .A(n46), .B(n262), .Y(n47) );
  MUX2X1 U108 ( .B(n262), .A(n47), .S(value[7]), .Y(n49) );
  NAND2X1 U109 ( .A(n49), .B(n48), .Y(n134) );
  INVX2 U110 ( .A(n134), .Y(n113) );
  NOR2X1 U111 ( .A(n50), .B(n284), .Y(n51) );
  MUX2X1 U112 ( .B(n284), .A(n51), .S(n42), .Y(n53) );
  NAND2X1 U113 ( .A(n53), .B(n52), .Y(n197) );
  NAND2X1 U114 ( .A(n113), .B(n92), .Y(n139) );
  NOR2X1 U115 ( .A(n192), .B(n247), .Y(n54) );
  MUX2X1 U116 ( .B(n247), .A(n54), .S(n42), .Y(n56) );
  NAND2X1 U117 ( .A(n56), .B(n55), .Y(n199) );
  NOR2X1 U118 ( .A(n194), .B(n263), .Y(n57) );
  MUX2X1 U119 ( .B(n263), .A(n57), .S(n42), .Y(n59) );
  NAND2X1 U120 ( .A(n59), .B(n58), .Y(n198) );
  OAI22X1 U121 ( .A(n632), .B(n199), .C(n30), .D(n34), .Y(n136) );
  INVX2 U122 ( .A(n136), .Y(n140) );
  XOR2X1 U123 ( .A(n139), .B(n140), .Y(n82) );
  NOR2X1 U124 ( .A(n60), .B(n251), .Y(n61) );
  MUX2X1 U125 ( .B(n251), .A(n61), .S(n42), .Y(n63) );
  OAI22X1 U126 ( .A(n632), .B(n35), .C(n30), .D(n199), .Y(n78) );
  INVX2 U127 ( .A(n78), .Y(n83) );
  NAND2X1 U128 ( .A(n113), .B(n98), .Y(n84) );
  INVX2 U129 ( .A(n84), .Y(n79) );
  NAND2X1 U130 ( .A(n214), .B(n206), .Y(n68) );
  MUX2X1 U131 ( .B(n212), .A(n64), .S(n42), .Y(n66) );
  OAI22X1 U132 ( .A(n632), .B(n36), .C(n30), .D(n35), .Y(n75) );
  INVX2 U133 ( .A(n75), .Y(n93) );
  INVX2 U134 ( .A(n199), .Y(n104) );
  NAND2X1 U135 ( .A(n113), .B(n104), .Y(n94) );
  INVX2 U136 ( .A(n94), .Y(n76) );
  MUX2X1 U137 ( .B(n214), .A(n67), .S(n42), .Y(n69) );
  NAND2X1 U138 ( .A(n69), .B(n68), .Y(n200) );
  OAI22X1 U139 ( .A(n632), .B(n33), .C(n30), .D(n36), .Y(n100) );
  INVX2 U140 ( .A(n100), .Y(n74) );
  NAND2X1 U141 ( .A(n113), .B(n27), .Y(n73) );
  INVX2 U142 ( .A(n73), .Y(n99) );
  OAI22X1 U143 ( .A(n632), .B(n38), .C(n30), .D(n33), .Y(n107) );
  INVX2 U144 ( .A(n107), .Y(n71) );
  NAND2X1 U145 ( .A(n113), .B(n112), .Y(n105) );
  INVX2 U146 ( .A(n30), .Y(n70) );
  NAND3X1 U147 ( .A(n12), .B(n115), .C(n113), .Y(n108) );
  OAI21X1 U148 ( .A(n71), .B(n105), .C(n108), .Y(n101) );
  OAI21X1 U149 ( .A(n99), .B(n100), .C(n101), .Y(n72) );
  OAI21X1 U150 ( .A(n74), .B(n73), .C(n72), .Y(n95) );
  OAI21X1 U151 ( .A(n76), .B(n75), .C(n95), .Y(n77) );
  OAI21X1 U152 ( .A(n93), .B(n94), .C(n77), .Y(n85) );
  OAI21X1 U153 ( .A(n79), .B(n78), .C(n85), .Y(n80) );
  OAI21X1 U154 ( .A(n83), .B(n84), .C(n80), .Y(n135) );
  INVX2 U155 ( .A(n135), .Y(n81) );
  XOR2X1 U156 ( .A(n82), .B(n81), .Y(n151) );
  INVX2 U157 ( .A(n151), .Y(n132) );
  XOR2X1 U158 ( .A(n84), .B(n83), .Y(n87) );
  INVX2 U159 ( .A(n85), .Y(n86) );
  XOR2X1 U160 ( .A(n87), .B(n86), .Y(n156) );
  NOR2X1 U161 ( .A(n88), .B(n246), .Y(n89) );
  MUX2X1 U162 ( .B(n246), .A(n89), .S(value[7]), .Y(n91) );
  NAND2X1 U163 ( .A(n91), .B(n90), .Y(n174) );
  INVX2 U164 ( .A(n174), .Y(n114) );
  NAND2X1 U165 ( .A(n114), .B(n92), .Y(n154) );
  INVX2 U166 ( .A(n154), .Y(n130) );
  INVX2 U167 ( .A(n156), .Y(n129) );
  XOR2X1 U168 ( .A(n94), .B(n93), .Y(n97) );
  INVX2 U169 ( .A(n95), .Y(n96) );
  XOR2X1 U170 ( .A(n97), .B(n96), .Y(n159) );
  NAND2X1 U171 ( .A(n114), .B(n98), .Y(n157) );
  INVX2 U172 ( .A(n157), .Y(n127) );
  INVX2 U173 ( .A(n159), .Y(n126) );
  XOR2X1 U174 ( .A(n100), .B(n99), .Y(n103) );
  INVX2 U175 ( .A(n101), .Y(n102) );
  XOR2X1 U176 ( .A(n103), .B(n102), .Y(n125) );
  NAND2X1 U177 ( .A(n114), .B(n104), .Y(n161) );
  INVX2 U178 ( .A(n161), .Y(n123) );
  INVX2 U179 ( .A(n125), .Y(n160) );
  INVX2 U180 ( .A(n105), .Y(n106) );
  XOR2X1 U181 ( .A(n107), .B(n106), .Y(n110) );
  INVX2 U182 ( .A(n108), .Y(n109) );
  XOR2X1 U183 ( .A(n110), .B(n109), .Y(n120) );
  INVX2 U184 ( .A(n120), .Y(n166) );
  NAND2X1 U185 ( .A(n114), .B(n27), .Y(n122) );
  INVX2 U186 ( .A(n122), .Y(n167) );
  NAND2X1 U187 ( .A(n113), .B(n115), .Y(n111) );
  XOR2X1 U188 ( .A(n111), .B(n12), .Y(n119) );
  NAND2X1 U189 ( .A(n114), .B(n112), .Y(n118) );
  INVX2 U190 ( .A(n118), .Y(n170) );
  INVX2 U191 ( .A(n119), .Y(n169) );
  NAND3X1 U192 ( .A(n15), .B(n115), .C(n114), .Y(n116) );
  INVX2 U193 ( .A(n116), .Y(n172) );
  OAI21X1 U194 ( .A(n170), .B(n169), .C(n172), .Y(n117) );
  OAI21X1 U195 ( .A(n119), .B(n118), .C(n117), .Y(n165) );
  OAI21X1 U196 ( .A(n167), .B(n120), .C(n165), .Y(n121) );
  OAI21X1 U197 ( .A(n166), .B(n122), .C(n121), .Y(n162) );
  OAI21X1 U198 ( .A(n123), .B(n160), .C(n162), .Y(n124) );
  OAI21X1 U199 ( .A(n125), .B(n161), .C(n124), .Y(n158) );
  OAI21X1 U200 ( .A(n127), .B(n126), .C(n158), .Y(n128) );
  OAI21X1 U201 ( .A(n159), .B(n157), .C(n128), .Y(n155) );
  OAI21X1 U202 ( .A(n130), .B(n129), .C(n155), .Y(n131) );
  OAI21X1 U203 ( .A(n156), .B(n154), .C(n131), .Y(n153) );
  NAND2X1 U204 ( .A(n132), .B(n153), .Y(n148) );
  OAI22X1 U205 ( .A(n632), .B(n34), .C(n30), .D(n197), .Y(n145) );
  INVX2 U206 ( .A(n145), .Y(n133) );
  OAI21X1 U207 ( .A(n196), .B(n134), .C(n133), .Y(n142) );
  INVX2 U208 ( .A(n139), .Y(n137) );
  OAI21X1 U209 ( .A(n137), .B(n136), .C(n135), .Y(n138) );
  OAI21X1 U210 ( .A(n140), .B(n139), .C(n138), .Y(n144) );
  INVX2 U211 ( .A(n144), .Y(n141) );
  XOR2X1 U212 ( .A(n142), .B(n141), .Y(n147) );
  OAI22X1 U213 ( .A(n632), .B(n197), .C(n30), .D(n196), .Y(n143) );
  AOI21X1 U214 ( .A(n145), .B(n144), .C(n143), .Y(n146) );
  OAI21X1 U215 ( .A(n148), .B(n147), .C(n146), .Y(N260) );
  INVX2 U216 ( .A(n147), .Y(n150) );
  INVX2 U217 ( .A(n148), .Y(n149) );
  XOR2X1 U218 ( .A(n150), .B(n149), .Y(N259) );
  OAI21X1 U219 ( .A(n196), .B(n174), .C(n151), .Y(n152) );
  XOR2X1 U220 ( .A(n153), .B(n152), .Y(N258) );
  FAX1 U221 ( .A(n156), .B(n155), .C(n154), .YS(N257) );
  FAX1 U222 ( .A(n159), .B(n158), .C(n157), .YS(N256) );
  XOR2X1 U223 ( .A(n161), .B(n160), .Y(n164) );
  INVX2 U224 ( .A(n162), .Y(n163) );
  XOR2X1 U225 ( .A(n164), .B(n163), .Y(N255) );
  FAX1 U226 ( .A(n167), .B(n166), .C(n165), .YS(n168) );
  INVX2 U227 ( .A(n168), .Y(N254) );
  XOR2X1 U228 ( .A(n170), .B(n169), .Y(n171) );
  XOR2X1 U229 ( .A(n172), .B(n171), .Y(N253) );
  NOR2X1 U230 ( .A(n33), .B(n174), .Y(n173) );
  XOR2X1 U231 ( .A(n15), .B(n173), .Y(N252) );
  NOR2X1 U232 ( .A(n38), .B(n174), .Y(N251) );
  NOR2X1 U233 ( .A(n207), .B(n211), .Y(n175) );
  MUX2X1 U234 ( .B(n207), .A(n175), .S(value[7]), .Y(n177) );
  NAND2X1 U235 ( .A(n177), .B(n176), .Y(n178) );
  NOR2X1 U236 ( .A(n196), .B(n178), .Y(N84) );
  NOR2X1 U237 ( .A(n197), .B(n178), .Y(N83) );
  NOR2X1 U238 ( .A(n34), .B(n178), .Y(N82) );
  NOR2X1 U239 ( .A(n199), .B(n178), .Y(N81) );
  NOR2X1 U240 ( .A(n35), .B(n178), .Y(N80) );
  NOR2X1 U241 ( .A(n36), .B(n178), .Y(N79) );
  NOR2X1 U242 ( .A(n33), .B(n178), .Y(N78) );
  NOR2X1 U243 ( .A(n38), .B(n178), .Y(N77) );
  NOR2X1 U244 ( .A(n179), .B(n181), .Y(n180) );
  MUX2X1 U245 ( .B(n181), .A(n180), .S(value[7]), .Y(n183) );
  NAND2X1 U246 ( .A(n183), .B(n182), .Y(n184) );
  NOR2X1 U247 ( .A(n196), .B(n184), .Y(N115) );
  NOR2X1 U248 ( .A(n197), .B(n184), .Y(N114) );
  NOR2X1 U249 ( .A(n34), .B(n184), .Y(N113) );
  NOR2X1 U250 ( .A(n199), .B(n184), .Y(N112) );
  NOR2X1 U251 ( .A(n35), .B(n184), .Y(N111) );
  NOR2X1 U252 ( .A(n36), .B(n184), .Y(N110) );
  NOR2X1 U253 ( .A(n32), .B(n184), .Y(N109) );
  NOR2X1 U254 ( .A(n38), .B(n184), .Y(N108) );
  NOR2X1 U255 ( .A(n185), .B(n187), .Y(n186) );
  MUX2X1 U256 ( .B(n187), .A(n186), .S(value[7]), .Y(n189) );
  NAND2X1 U257 ( .A(n189), .B(n188), .Y(n195) );
  NOR2X1 U258 ( .A(n196), .B(n195), .Y(N100) );
  NOR2X1 U259 ( .A(n197), .B(n195), .Y(N99) );
  NOR2X1 U260 ( .A(n34), .B(n195), .Y(N98) );
  NAND2X1 U261 ( .A(n42), .B(weight[4]), .Y(n191) );
  INVX2 U262 ( .A(n42), .Y(n201) );
  AOI21X1 U263 ( .A(n247), .B(n201), .C(n195), .Y(n190) );
  OAI21X1 U264 ( .A(n192), .B(n191), .C(n190), .Y(n193) );
  NOR2X1 U265 ( .A(n194), .B(n193), .Y(N97) );
  NOR2X1 U266 ( .A(n35), .B(n195), .Y(N96) );
  NOR2X1 U267 ( .A(n36), .B(n195), .Y(N95) );
  NOR2X1 U268 ( .A(n32), .B(n195), .Y(N94) );
  NOR2X1 U269 ( .A(n38), .B(n195), .Y(N93) );
  NOR2X1 U270 ( .A(n211), .B(n196), .Y(N67) );
  NOR2X1 U271 ( .A(n211), .B(n197), .Y(N66) );
  NOR2X1 U272 ( .A(n211), .B(n34), .Y(N65) );
  NOR2X1 U273 ( .A(n211), .B(n199), .Y(N64) );
  NOR2X1 U274 ( .A(n211), .B(n35), .Y(N63) );
  NOR2X1 U275 ( .A(n211), .B(n36), .Y(N62) );
  NOR2X1 U276 ( .A(n211), .B(n33), .Y(N61) );
  NOR2X1 U277 ( .A(n38), .B(n211), .Y(N60) );
  XOR2X1 U278 ( .A(n201), .B(value[7]), .Y(n377) );
  INVX2 U279 ( .A(n377), .Y(n202) );
  INVX2 U280 ( .A(N280), .Y(n532) );
  INVX2 U281 ( .A(N264), .Y(n457) );
  INVX2 U282 ( .A(N265), .Y(n455) );
  NAND2X1 U283 ( .A(n14), .B(n455), .Y(n371) );
  INVX2 U284 ( .A(n371), .Y(n204) );
  INVX2 U285 ( .A(N266), .Y(n203) );
  NAND2X1 U286 ( .A(n204), .B(n203), .Y(n345) );
  NAND3X1 U287 ( .A(n29), .B(n447), .C(N270), .Y(n243) );
  NAND2X1 U288 ( .A(value[1]), .B(N327), .Y(n222) );
  NAND2X1 U289 ( .A(value[1]), .B(N326), .Y(n227) );
  NAND2X1 U290 ( .A(N51), .B(N327), .Y(n226) );
  NOR2X1 U291 ( .A(n207), .B(n38), .Y(n208) );
  NAND3X1 U292 ( .A(N51), .B(N326), .C(n208), .Y(n209) );
  OAI21X1 U293 ( .A(n227), .B(n226), .C(n209), .Y(n210) );
  INVX2 U294 ( .A(n210), .Y(n221) );
  OAI21X1 U295 ( .A(n211), .B(n222), .C(n221), .Y(n288) );
  INVX2 U296 ( .A(n288), .Y(n237) );
  NAND2X1 U297 ( .A(value[2]), .B(N327), .Y(n238) );
  XOR2X1 U298 ( .A(n212), .B(value[2]), .Y(n216) );
  NAND2X1 U299 ( .A(N34), .B(value[2]), .Y(n225) );
  INVX2 U300 ( .A(n225), .Y(n213) );
  NAND2X1 U301 ( .A(n213), .B(N326), .Y(n217) );
  OAI21X1 U302 ( .A(n238), .B(n214), .C(n217), .Y(n215) );
  INVX2 U303 ( .A(n215), .Y(n239) );
  MUX2X1 U304 ( .B(n238), .A(n216), .S(n239), .Y(n235) );
  INVX2 U305 ( .A(n235), .Y(n289) );
  NAND2X1 U306 ( .A(N326), .B(n217), .Y(n219) );
  INVX2 U307 ( .A(n238), .Y(n218) );
  XOR2X1 U308 ( .A(n219), .B(n218), .Y(n342) );
  NAND2X1 U309 ( .A(n237), .B(value[1]), .Y(n234) );
  INVX2 U310 ( .A(n234), .Y(n344) );
  INVX2 U311 ( .A(n342), .Y(n232) );
  NAND2X1 U312 ( .A(value[2]), .B(N326), .Y(n220) );
  XOR2X1 U313 ( .A(n220), .B(N34), .Y(n370) );
  NAND2X1 U314 ( .A(n221), .B(N51), .Y(n224) );
  INVX2 U315 ( .A(n222), .Y(n223) );
  XOR2X1 U316 ( .A(n224), .B(n223), .Y(n231) );
  INVX2 U317 ( .A(n231), .Y(n369) );
  INVX2 U318 ( .A(n370), .Y(n229) );
  AOI21X1 U319 ( .A(n227), .B(n226), .C(n225), .Y(n228) );
  OAI21X1 U320 ( .A(n369), .B(n229), .C(n228), .Y(n230) );
  OAI21X1 U321 ( .A(n370), .B(n231), .C(n230), .Y(n343) );
  OAI21X1 U322 ( .A(n344), .B(n232), .C(n343), .Y(n233) );
  OAI21X1 U323 ( .A(n342), .B(n234), .C(n233), .Y(n290) );
  OAI21X1 U324 ( .A(n288), .B(n235), .C(n290), .Y(n236) );
  OAI21X1 U325 ( .A(n237), .B(n289), .C(n236), .Y(n296) );
  NAND2X1 U326 ( .A(n239), .B(n238), .Y(n295) );
  OAI21X1 U327 ( .A(n296), .B(n295), .C(float), .Y(n242) );
  INVX2 U328 ( .A(N270), .Y(n446) );
  AOI22X1 U329 ( .A(n446), .B(n240), .C(n5), .D(N270), .Y(n241) );
  NAND3X1 U330 ( .A(n243), .B(n242), .C(n241), .Y(n501) );
  NAND2X1 U331 ( .A(value[3]), .B(weight[3]), .Y(n250) );
  INVX2 U332 ( .A(n250), .Y(n244) );
  OAI21X1 U333 ( .A(value[4]), .B(weight[4]), .C(n244), .Y(n245) );
  OAI21X1 U334 ( .A(n247), .B(n246), .C(n245), .Y(n260) );
  XOR2X1 U335 ( .A(value[5]), .B(weight[5]), .Y(n248) );
  XOR2X1 U336 ( .A(n260), .B(n248), .Y(n254) );
  XOR2X1 U337 ( .A(value[4]), .B(weight[4]), .Y(n249) );
  NAND2X1 U338 ( .A(n254), .B(n22), .Y(n266) );
  INVX2 U339 ( .A(n266), .Y(n269) );
  XOR2X1 U340 ( .A(n251), .B(value[3]), .Y(n278) );
  INVX2 U341 ( .A(n278), .Y(n273) );
  NAND2X1 U342 ( .A(n269), .B(n273), .Y(n268) );
  OAI21X1 U343 ( .A(n476), .B(n266), .C(n268), .Y(n258) );
  INVX2 U344 ( .A(n254), .Y(n252) );
  NAND3X1 U345 ( .A(n476), .B(n252), .C(n278), .Y(n253) );
  OAI21X1 U346 ( .A(n22), .B(n254), .C(n253), .Y(n257) );
  OAI21X1 U347 ( .A(n630), .B(n262), .C(n283), .Y(n256) );
  OAI21X1 U348 ( .A(n631), .B(n263), .C(n284), .Y(n255) );
  NAND2X1 U349 ( .A(n256), .B(n255), .Y(n275) );
  INVX2 U350 ( .A(n275), .Y(n265) );
  OAI21X1 U351 ( .A(n258), .B(n257), .C(n265), .Y(n259) );
  NAND2X1 U352 ( .A(float), .B(n259), .Y(n302) );
  OAI21X1 U353 ( .A(value[5]), .B(weight[5]), .C(n260), .Y(n261) );
  OAI21X1 U354 ( .A(n263), .B(n262), .C(n261), .Y(n281) );
  XOR2X1 U355 ( .A(value[6]), .B(weight[6]), .Y(n264) );
  NAND2X1 U356 ( .A(float), .B(n265), .Y(n388) );
  INVX2 U357 ( .A(n388), .Y(n357) );
  OAI21X1 U358 ( .A(n476), .B(n266), .C(n268), .Y(n267) );
  NAND2X1 U359 ( .A(n357), .B(n267), .Y(n285) );
  INVX2 U360 ( .A(n268), .Y(n270) );
  OAI21X1 U361 ( .A(n270), .B(n37), .C(n269), .Y(n271) );
  NAND3X1 U362 ( .A(n357), .B(n21), .C(n271), .Y(n272) );
  OAI21X1 U363 ( .A(n21), .B(n285), .C(n272), .Y(n608) );
  INVX2 U364 ( .A(n608), .Y(n313) );
  AOI22X1 U365 ( .A(cumulative[5]), .B(n302), .C(cumulative[6]), .D(n313), .Y(
        n280) );
  NOR2X1 U366 ( .A(n273), .B(n501), .Y(n274) );
  NAND2X1 U367 ( .A(n476), .B(n278), .Y(n277) );
  MUX2X1 U368 ( .B(n274), .A(n277), .S(n22), .Y(n276) );
  OAI21X1 U369 ( .A(n276), .B(n275), .C(float), .Y(n306) );
  INVX2 U370 ( .A(n306), .Y(n311) );
  INVX2 U371 ( .A(cumulative[4]), .Y(n467) );
  NAND2X1 U372 ( .A(n311), .B(n467), .Y(n316) );
  INVX2 U373 ( .A(cumulative[5]), .Y(n470) );
  NAND2X1 U374 ( .A(cumulative[4]), .B(n306), .Y(n303) );
  OAI21X1 U375 ( .A(n476), .B(n278), .C(n277), .Y(n309) );
  INVX2 U376 ( .A(n309), .Y(n442) );
  NAND2X1 U377 ( .A(n442), .B(cumulative[3]), .Y(n338) );
  NAND2X1 U378 ( .A(n303), .B(n338), .Y(n315) );
  NAND3X1 U379 ( .A(n316), .B(n315), .C(n320), .Y(n279) );
  AOI22X1 U380 ( .A(n608), .B(n473), .C(n280), .D(n279), .Y(n328) );
  OAI21X1 U381 ( .A(value[6]), .B(weight[6]), .C(n281), .Y(n282) );
  OAI21X1 U382 ( .A(n284), .B(n283), .C(n282), .Y(n287) );
  OAI21X1 U383 ( .A(n21), .B(n388), .C(n285), .Y(n286) );
  NAND2X1 U384 ( .A(n287), .B(n286), .Y(n327) );
  NAND2X1 U385 ( .A(n328), .B(n327), .Y(n389) );
  MUX2X1 U386 ( .B(n310), .A(cumulative[5]), .S(n607), .Y(n443) );
  MUX2X1 U387 ( .B(n311), .A(cumulative[4]), .S(n607), .Y(n604) );
  INVX2 U388 ( .A(n604), .Y(n597) );
  FAX1 U389 ( .A(n290), .B(n289), .C(n288), .YS(n294) );
  XOR2X1 U390 ( .A(n291), .B(N268), .Y(n292) );
  AOI22X1 U391 ( .A(N268), .B(n5), .C(n29), .D(n292), .Y(n293) );
  OAI21X1 U392 ( .A(n625), .B(n294), .C(n293), .Y(n584) );
  INVX2 U393 ( .A(n584), .Y(n471) );
  NAND2X1 U394 ( .A(n296), .B(n295), .Y(n300) );
  XOR2X1 U395 ( .A(n297), .B(N269), .Y(n298) );
  AOI22X1 U396 ( .A(n29), .B(n298), .C(N269), .D(n5), .Y(n299) );
  OAI21X1 U397 ( .A(n625), .B(n300), .C(n299), .Y(n612) );
  INVX2 U398 ( .A(n612), .Y(n474) );
  OAI21X1 U399 ( .A(n471), .B(n37), .C(n474), .Y(n301) );
  AND2X2 U400 ( .A(n357), .B(n301), .Y(n386) );
  XOR2X1 U401 ( .A(n302), .B(cumulative[5]), .Y(n317) );
  INVX2 U402 ( .A(n316), .Y(n304) );
  INVX2 U403 ( .A(cumulative[3]), .Y(n464) );
  NAND2X1 U404 ( .A(n309), .B(n464), .Y(n339) );
  INVX2 U405 ( .A(n339), .Y(n307) );
  OAI21X1 U406 ( .A(n304), .B(n307), .C(n303), .Y(n308) );
  INVX2 U407 ( .A(n308), .Y(n305) );
  XOR2X1 U408 ( .A(n317), .B(n305), .Y(n365) );
  INVX2 U409 ( .A(n365), .Y(n335) );
  NOR2X1 U410 ( .A(n335), .B(n9), .Y(n314) );
  XOR2X1 U411 ( .A(n608), .B(cumulative[6]), .Y(n322) );
  NAND2X1 U412 ( .A(n322), .B(n308), .Y(n361) );
  NAND3X1 U413 ( .A(n311), .B(n310), .C(n309), .Y(n312) );
  AOI21X1 U414 ( .A(n313), .B(n312), .C(n389), .Y(n362) );
  NAND3X1 U415 ( .A(n314), .B(n361), .C(n362), .Y(n381) );
  NAND2X1 U416 ( .A(n316), .B(n315), .Y(n319) );
  INVX2 U417 ( .A(n317), .Y(n318) );
  XOR2X1 U418 ( .A(n319), .B(n318), .Y(n356) );
  INVX2 U419 ( .A(n319), .Y(n321) );
  NAND2X1 U420 ( .A(n321), .B(n320), .Y(n323) );
  XOR2X1 U421 ( .A(n323), .B(n322), .Y(n354) );
  NAND3X1 U422 ( .A(cumulative[4]), .B(cumulative[5]), .C(cumulative[3]), .Y(
        n325) );
  INVX2 U423 ( .A(cumulative[6]), .Y(n473) );
  AOI21X1 U424 ( .A(n325), .B(n473), .C(n607), .Y(n326) );
  OAI21X1 U425 ( .A(n328), .B(n327), .C(n326), .Y(n368) );
  INVX2 U426 ( .A(n368), .Y(n332) );
  NAND3X1 U427 ( .A(n6), .B(n331), .C(n332), .Y(n380) );
  INVX2 U428 ( .A(n380), .Y(n337) );
  NAND2X1 U429 ( .A(cumulative[2]), .B(n337), .Y(n383) );
  NAND3X1 U430 ( .A(n362), .B(n357), .C(n9), .Y(n334) );
  INVX2 U431 ( .A(n331), .Y(n351) );
  NAND3X1 U432 ( .A(n332), .B(n351), .C(n6), .Y(n333) );
  OAI21X1 U433 ( .A(n335), .B(n334), .C(n333), .Y(n336) );
  AOI21X1 U434 ( .A(cumulative[1]), .B(n337), .C(n336), .Y(n340) );
  NAND2X1 U435 ( .A(n339), .B(n338), .Y(n358) );
  INVX2 U436 ( .A(n358), .Y(n385) );
  MUX2X1 U437 ( .B(n341), .A(n340), .S(n385), .Y(n393) );
  FAX1 U438 ( .A(n344), .B(n343), .C(n342), .YS(n348) );
  XOR2X1 U439 ( .A(n345), .B(N267), .Y(n346) );
  AOI22X1 U440 ( .A(N267), .B(n5), .C(n29), .D(n346), .Y(n347) );
  OAI21X1 U441 ( .A(n625), .B(n348), .C(n347), .Y(n570) );
  INVX2 U442 ( .A(n570), .Y(n468) );
  OAI22X1 U443 ( .A(n471), .B(n476), .C(n468), .D(n37), .Y(n349) );
  NAND2X1 U444 ( .A(n357), .B(n349), .Y(n360) );
  INVX2 U445 ( .A(n360), .Y(n350) );
  MUX2X1 U446 ( .B(n350), .A(cumulative[1]), .S(n607), .Y(n413) );
  NAND2X1 U447 ( .A(n393), .B(n413), .Y(n402) );
  MUX2X1 U448 ( .B(cumulative[1]), .A(cumulative[0]), .S(n385), .Y(n353) );
  NOR2X1 U449 ( .A(cumulative[2]), .B(n358), .Y(n352) );
  MUX2X1 U450 ( .B(n353), .A(n352), .S(n351), .Y(n355) );
  NAND3X1 U451 ( .A(n356), .B(n355), .C(n354), .Y(n367) );
  OAI21X1 U452 ( .A(n386), .B(n358), .C(n357), .Y(n359) );
  MUX2X1 U453 ( .B(n360), .A(n359), .S(n9), .Y(n364) );
  AND2X2 U454 ( .A(n362), .B(n361), .Y(n363) );
  NAND3X1 U455 ( .A(n365), .B(n364), .C(n363), .Y(n366) );
  OAI21X1 U456 ( .A(n368), .B(n367), .C(n366), .Y(n399) );
  XOR2X1 U457 ( .A(n370), .B(n369), .Y(n374) );
  XOR2X1 U458 ( .A(n371), .B(N266), .Y(n372) );
  AOI22X1 U459 ( .A(n29), .B(n372), .C(N266), .D(n5), .Y(n373) );
  OAI21X1 U460 ( .A(n374), .B(n625), .C(n373), .Y(n560) );
  AOI22X1 U461 ( .A(n476), .B(n560), .C(n37), .D(n570), .Y(n375) );
  NOR2X1 U462 ( .A(n375), .B(n388), .Y(n376) );
  MUX2X1 U463 ( .B(n376), .A(cumulative[0]), .S(n607), .Y(n391) );
  NAND2X1 U464 ( .A(n399), .B(n391), .Y(n533) );
  NAND2X1 U465 ( .A(n402), .B(n533), .Y(n387) );
  INVX2 U466 ( .A(n413), .Y(n392) );
  INVX2 U467 ( .A(n393), .Y(n412) );
  NAND2X1 U468 ( .A(n392), .B(n412), .Y(n398) );
  NAND2X1 U469 ( .A(n387), .B(n398), .Y(n404) );
  INVX2 U470 ( .A(n404), .Y(n429) );
  INVX2 U471 ( .A(cumulative[7]), .Y(n378) );
  MUX2X1 U472 ( .B(n377), .A(n378), .S(n607), .Y(n622) );
  MUX2X1 U473 ( .B(n378), .A(n377), .S(n607), .Y(n621) );
  INVX2 U474 ( .A(n621), .Y(n379) );
  XOR2X1 U475 ( .A(n622), .B(n379), .Y(n438) );
  INVX2 U476 ( .A(n438), .Y(n437) );
  OAI21X1 U477 ( .A(n388), .B(n381), .C(n380), .Y(n382) );
  INVX2 U478 ( .A(n382), .Y(n384) );
  OAI21X1 U479 ( .A(n385), .B(n384), .C(n383), .Y(n423) );
  INVX2 U480 ( .A(n423), .Y(n427) );
  MUX2X1 U481 ( .B(n386), .A(cumulative[2]), .S(n607), .Y(n426) );
  INVX2 U482 ( .A(n426), .Y(n424) );
  NAND2X1 U483 ( .A(n427), .B(n424), .Y(n428) );
  NAND3X1 U484 ( .A(n398), .B(n428), .C(n387), .Y(n390) );
  NAND2X1 U485 ( .A(n389), .B(n388), .Y(n445) );
  NAND2X1 U486 ( .A(n426), .B(n423), .Y(n395) );
  NAND3X1 U487 ( .A(n390), .B(n445), .C(n395), .Y(n396) );
  NAND2X1 U488 ( .A(n13), .B(n396), .Y(n619) );
  INVX2 U489 ( .A(n391), .Y(n400) );
  OAI21X1 U490 ( .A(n393), .B(n392), .C(n8), .Y(n394) );
  OAI21X1 U491 ( .A(n412), .B(n413), .C(n394), .Y(n422) );
  AOI22X1 U492 ( .A(n429), .B(n20), .C(n438), .D(n422), .Y(n411) );
  XOR2X1 U493 ( .A(n426), .B(n427), .Y(n410) );
  INVX2 U494 ( .A(n428), .Y(n408) );
  INVX2 U495 ( .A(n395), .Y(n430) );
  NAND3X1 U496 ( .A(n13), .B(n437), .C(n396), .Y(n397) );
  INVX2 U497 ( .A(n397), .Y(n434) );
  INVX2 U498 ( .A(n398), .Y(n403) );
  INVX2 U499 ( .A(n399), .Y(n401) );
  NAND2X1 U500 ( .A(n401), .B(n400), .Y(n534) );
  INVX2 U501 ( .A(n534), .Y(n415) );
  OAI21X1 U502 ( .A(n403), .B(n415), .C(n402), .Y(n405) );
  AOI22X1 U503 ( .A(n434), .B(n405), .C(n20), .D(n404), .Y(n406) );
  OAI21X1 U504 ( .A(n437), .B(n422), .C(n406), .Y(n407) );
  OAI21X1 U505 ( .A(n408), .B(n430), .C(n407), .Y(n409) );
  OAI21X1 U506 ( .A(n411), .B(n410), .C(n409), .Y(n441) );
  INVX2 U507 ( .A(n441), .Y(n553) );
  XOR2X1 U508 ( .A(n413), .B(n412), .Y(n417) );
  INVX2 U509 ( .A(n417), .Y(n414) );
  XOR2X1 U510 ( .A(n8), .B(n414), .Y(n421) );
  XOR2X1 U511 ( .A(n417), .B(n415), .Y(n419) );
  INVX2 U512 ( .A(n533), .Y(n416) );
  XOR2X1 U513 ( .A(n417), .B(n416), .Y(n418) );
  AOI22X1 U514 ( .A(n434), .B(n419), .C(n20), .D(n418), .Y(n420) );
  OAI21X1 U515 ( .A(n437), .B(n421), .C(n420), .Y(n542) );
  OAI21X1 U516 ( .A(n424), .B(n423), .C(n422), .Y(n425) );
  OAI21X1 U517 ( .A(n427), .B(n426), .C(n425), .Y(n439) );
  XOR2X1 U518 ( .A(n445), .B(n13), .Y(n433) );
  OAI21X1 U519 ( .A(n430), .B(n429), .C(n428), .Y(n431) );
  AND2X2 U520 ( .A(n433), .B(n431), .Y(n432) );
  AOI22X1 U521 ( .A(n434), .B(n433), .C(n20), .D(n432), .Y(n435) );
  OAI21X1 U522 ( .A(n437), .B(n436), .C(n435), .Y(n535) );
  INVX2 U523 ( .A(n535), .Y(n552) );
  OAI21X1 U524 ( .A(n13), .B(n439), .C(n438), .Y(n530) );
  NAND2X1 U525 ( .A(n440), .B(n445), .Y(n575) );
  NAND3X1 U526 ( .A(n553), .B(n542), .C(n24), .Y(n628) );
  NAND2X1 U527 ( .A(n24), .B(n441), .Y(n574) );
  INVX2 U528 ( .A(n574), .Y(n599) );
  MUX2X1 U529 ( .B(n442), .A(n464), .S(n607), .Y(n588) );
  INVX2 U530 ( .A(n588), .Y(n577) );
  INVX2 U531 ( .A(n443), .Y(n598) );
  NOR2X1 U532 ( .A(n597), .B(n598), .Y(n444) );
  NAND3X1 U533 ( .A(n599), .B(n577), .C(n444), .Y(n627) );
  INVX2 U534 ( .A(n445), .Y(n531) );
  INVX2 U535 ( .A(N278), .Y(n450) );
  INVX2 U536 ( .A(N271), .Y(n478) );
  INVX2 U537 ( .A(N272), .Y(n481) );
  INVX2 U538 ( .A(N273), .Y(n484) );
  INVX2 U539 ( .A(N274), .Y(n487) );
  INVX2 U540 ( .A(N275), .Y(n490) );
  INVX2 U541 ( .A(N276), .Y(n452) );
  NAND2X1 U542 ( .A(n7), .B(n452), .Y(n492) );
  NOR2X1 U543 ( .A(N277), .B(n492), .Y(n448) );
  XOR2X1 U544 ( .A(N278), .B(n448), .Y(n449) );
  OAI22X1 U545 ( .A(n41), .B(n450), .C(n449), .D(n40), .Y(n496) );
  XOR2X1 U546 ( .A(N276), .B(n7), .Y(n451) );
  OAI22X1 U547 ( .A(n41), .B(n452), .C(n451), .D(n40), .Y(n453) );
  INVX2 U548 ( .A(n453), .Y(n512) );
  INVX2 U549 ( .A(n560), .Y(n465) );
  XOR2X1 U550 ( .A(N265), .B(n14), .Y(n454) );
  OAI22X1 U551 ( .A(n41), .B(n455), .C(n454), .D(n40), .Y(n547) );
  XOR2X1 U552 ( .A(n532), .B(N264), .Y(n456) );
  OAI22X1 U553 ( .A(n41), .B(n457), .C(n456), .D(n40), .Y(n458) );
  INVX2 U554 ( .A(n458), .Y(n539) );
  INVX2 U555 ( .A(cumulative[1]), .Y(n460) );
  OAI21X1 U556 ( .A(cumulative[1]), .B(n458), .C(n19), .Y(n459) );
  OAI21X1 U557 ( .A(n539), .B(n460), .C(n459), .Y(n548) );
  OAI21X1 U558 ( .A(cumulative[2]), .B(n547), .C(n548), .Y(n462) );
  NAND2X1 U559 ( .A(n547), .B(cumulative[2]), .Y(n461) );
  NAND2X1 U560 ( .A(n462), .B(n461), .Y(n561) );
  OAI21X1 U561 ( .A(cumulative[3]), .B(n560), .C(n561), .Y(n463) );
  OAI21X1 U562 ( .A(n465), .B(n464), .C(n463), .Y(n571) );
  OAI21X1 U563 ( .A(cumulative[4]), .B(n570), .C(n571), .Y(n466) );
  OAI21X1 U564 ( .A(n468), .B(n467), .C(n466), .Y(n585) );
  OAI21X1 U565 ( .A(cumulative[5]), .B(n584), .C(n585), .Y(n469) );
  OAI21X1 U566 ( .A(n471), .B(n470), .C(n469), .Y(n613) );
  OAI21X1 U567 ( .A(cumulative[6]), .B(n612), .C(n613), .Y(n472) );
  OAI21X1 U568 ( .A(n474), .B(n473), .C(n472), .Y(n475) );
  INVX2 U569 ( .A(n475), .Y(n502) );
  XOR2X1 U570 ( .A(N271), .B(n25), .Y(n477) );
  OAI22X1 U571 ( .A(n41), .B(n478), .C(n477), .D(n40), .Y(n479) );
  INVX2 U572 ( .A(n479), .Y(n504) );
  XOR2X1 U573 ( .A(N272), .B(n16), .Y(n480) );
  OAI22X1 U574 ( .A(n41), .B(n481), .C(n480), .D(n40), .Y(n497) );
  INVX2 U575 ( .A(n497), .Y(n482) );
  XOR2X1 U576 ( .A(N273), .B(n2), .Y(n483) );
  OAI22X1 U577 ( .A(n41), .B(n484), .C(n483), .D(n40), .Y(n499) );
  INVX2 U578 ( .A(n499), .Y(n485) );
  XOR2X1 U579 ( .A(N274), .B(n10), .Y(n486) );
  OAI22X1 U580 ( .A(n41), .B(n487), .C(n486), .D(n40), .Y(n488) );
  INVX2 U581 ( .A(n488), .Y(n519) );
  XOR2X1 U582 ( .A(N275), .B(n1), .Y(n489) );
  OAI22X1 U583 ( .A(n41), .B(n490), .C(n489), .D(n40), .Y(n491) );
  INVX2 U584 ( .A(n491), .Y(n517) );
  NAND2X1 U585 ( .A(n512), .B(n11), .Y(n516) );
  XNOR2X1 U586 ( .A(N277), .B(n492), .Y(n494) );
  NAND2X1 U587 ( .A(N277), .B(n5), .Y(n493) );
  OAI21X1 U588 ( .A(n40), .B(n494), .C(n493), .Y(n513) );
  NOR2X1 U589 ( .A(n516), .B(n513), .Y(n495) );
  XOR2X1 U590 ( .A(n496), .B(n495), .Y(n529) );
  XOR2X1 U591 ( .A(n497), .B(cumulative[7]), .Y(n498) );
  XOR2X1 U592 ( .A(n498), .B(n18), .Y(n510) );
  XOR2X1 U593 ( .A(n499), .B(cumulative[7]), .Y(n500) );
  XOR2X1 U594 ( .A(n500), .B(n4), .Y(n509) );
  XOR2X1 U595 ( .A(n37), .B(cumulative[7]), .Y(n503) );
  XOR2X1 U596 ( .A(n503), .B(n502), .Y(n624) );
  INVX2 U597 ( .A(n624), .Y(n507) );
  XOR2X1 U598 ( .A(cumulative[7]), .B(n504), .Y(n505) );
  XOR2X1 U599 ( .A(n28), .B(n505), .Y(n506) );
  NOR2X1 U600 ( .A(n507), .B(n506), .Y(n508) );
  NAND3X1 U601 ( .A(n510), .B(n509), .C(n508), .Y(n527) );
  NOR2X1 U602 ( .A(cumulative[7]), .B(n11), .Y(n511) );
  XOR2X1 U603 ( .A(n512), .B(n511), .Y(n525) );
  INVX2 U604 ( .A(n513), .Y(n514) );
  XOR2X1 U605 ( .A(cumulative[7]), .B(n514), .Y(n515) );
  XOR2X1 U606 ( .A(n516), .B(n515), .Y(n524) );
  XOR2X1 U607 ( .A(cumulative[7]), .B(n517), .Y(n518) );
  XOR2X1 U608 ( .A(n3), .B(n518), .Y(n522) );
  XOR2X1 U609 ( .A(cumulative[7]), .B(n519), .Y(n520) );
  XOR2X1 U610 ( .A(n17), .B(n520), .Y(n521) );
  NOR2X1 U611 ( .A(n522), .B(n521), .Y(n523) );
  NAND3X1 U612 ( .A(n525), .B(n524), .C(n523), .Y(n526) );
  OAI21X1 U613 ( .A(n527), .B(n526), .C(n625), .Y(n528) );
  OAI21X1 U614 ( .A(n531), .B(n530), .C(n592), .Y(overflow) );
  XOR2X1 U615 ( .A(n532), .B(cumulative[0]), .Y(n538) );
  NAND2X1 U616 ( .A(n592), .B(n625), .Y(n623) );
  INVX2 U617 ( .A(n542), .Y(n551) );
  NAND2X1 U618 ( .A(n534), .B(n533), .Y(n541) );
  INVX2 U619 ( .A(n541), .Y(n554) );
  NAND2X1 U620 ( .A(n575), .B(n535), .Y(n578) );
  OAI22X1 U621 ( .A(n551), .B(n575), .C(n554), .D(n578), .Y(n536) );
  INVX2 U622 ( .A(n592), .Y(n614) );
  AOI21X1 U623 ( .A(float), .B(n536), .C(n614), .Y(n537) );
  OAI21X1 U624 ( .A(n538), .B(n623), .C(n537), .Y(out[0]) );
  XOR2X1 U625 ( .A(cumulative[1]), .B(n539), .Y(n540) );
  XOR2X1 U626 ( .A(n19), .B(n540), .Y(n546) );
  INVX2 U627 ( .A(n578), .Y(n564) );
  AOI22X1 U628 ( .A(n564), .B(n542), .C(n599), .D(n541), .Y(n543) );
  OAI21X1 U629 ( .A(n553), .B(n575), .C(n543), .Y(n544) );
  AOI21X1 U630 ( .A(float), .B(n544), .C(n614), .Y(n545) );
  OAI21X1 U631 ( .A(n546), .B(n623), .C(n545), .Y(out[1]) );
  XOR2X1 U632 ( .A(n547), .B(cumulative[2]), .Y(n550) );
  INVX2 U633 ( .A(n548), .Y(n549) );
  XOR2X1 U634 ( .A(n550), .B(n549), .Y(n559) );
  OAI22X1 U635 ( .A(n552), .B(n575), .C(n551), .D(n574), .Y(n556) );
  OAI22X1 U636 ( .A(n628), .B(n554), .C(n553), .D(n578), .Y(n555) );
  OAI21X1 U637 ( .A(n556), .B(n555), .C(float), .Y(n557) );
  AND2X2 U638 ( .A(n557), .B(n592), .Y(n558) );
  OAI21X1 U639 ( .A(n559), .B(n623), .C(n558), .Y(out[2]) );
  XOR2X1 U640 ( .A(n560), .B(cumulative[3]), .Y(n563) );
  INVX2 U641 ( .A(n561), .Y(n562) );
  XOR2X1 U642 ( .A(n563), .B(n562), .Y(n569) );
  INVX2 U643 ( .A(n628), .Y(n596) );
  NOR2X1 U644 ( .A(n564), .B(n596), .Y(n566) );
  INVX2 U645 ( .A(n575), .Y(n600) );
  NOR2X1 U646 ( .A(n600), .B(n599), .Y(n565) );
  MUX2X1 U647 ( .B(n566), .A(n565), .S(n577), .Y(n567) );
  AOI21X1 U648 ( .A(float), .B(n567), .C(n614), .Y(n568) );
  OAI21X1 U649 ( .A(n569), .B(n623), .C(n568), .Y(out[3]) );
  XOR2X1 U650 ( .A(n570), .B(cumulative[4]), .Y(n573) );
  INVX2 U651 ( .A(n571), .Y(n572) );
  XOR2X1 U652 ( .A(n573), .B(n572), .Y(n583) );
  MUX2X1 U653 ( .B(n575), .A(n574), .S(n577), .Y(n576) );
  NOR2X1 U654 ( .A(n596), .B(n576), .Y(n580) );
  MUX2X1 U655 ( .B(n599), .A(n600), .S(n577), .Y(n579) );
  AND2X2 U656 ( .A(n579), .B(n578), .Y(n590) );
  MUX2X1 U657 ( .B(n580), .A(n590), .S(n597), .Y(n581) );
  AOI21X1 U658 ( .A(float), .B(n581), .C(n614), .Y(n582) );
  OAI21X1 U659 ( .A(n583), .B(n623), .C(n582), .Y(out[4]) );
  XOR2X1 U660 ( .A(n584), .B(cumulative[5]), .Y(n587) );
  INVX2 U661 ( .A(n585), .Y(n586) );
  XOR2X1 U662 ( .A(n587), .B(n586), .Y(n595) );
  NAND3X1 U663 ( .A(n597), .B(n588), .C(n600), .Y(n606) );
  MUX2X1 U664 ( .B(n600), .A(n599), .S(n597), .Y(n589) );
  AND2X2 U665 ( .A(n590), .B(n589), .Y(n601) );
  MUX2X1 U666 ( .B(n606), .A(n601), .S(n598), .Y(n591) );
  OAI21X1 U667 ( .A(n629), .B(n591), .C(float), .Y(n593) );
  AND2X2 U668 ( .A(n593), .B(n592), .Y(n594) );
  OAI21X1 U669 ( .A(n595), .B(n623), .C(n594), .Y(out[5]) );
  OAI21X1 U670 ( .A(n597), .B(n23), .C(n596), .Y(n603) );
  MUX2X1 U671 ( .B(n600), .A(n599), .S(n598), .Y(n602) );
  NAND3X1 U672 ( .A(n603), .B(n602), .C(n601), .Y(n611) );
  NAND2X1 U673 ( .A(n604), .B(n596), .Y(n605) );
  NAND3X1 U674 ( .A(n606), .B(n605), .C(n627), .Y(n610) );
  MUX2X1 U675 ( .B(n608), .A(cumulative[6]), .S(n607), .Y(n609) );
  MUX2X1 U676 ( .B(n611), .A(n610), .S(n609), .Y(n618) );
  INVX2 U677 ( .A(n623), .Y(n616) );
  FAX1 U678 ( .A(cumulative[6]), .B(n613), .C(n612), .YS(n615) );
  AOI21X1 U679 ( .A(n616), .B(n615), .C(n614), .Y(n617) );
  OAI21X1 U680 ( .A(n625), .B(n618), .C(n617), .Y(out[6]) );
  INVX2 U681 ( .A(n619), .Y(n620) );
  MUX2X1 U682 ( .B(n622), .A(n621), .S(n620), .Y(n626) );
  OAI22X1 U683 ( .A(n626), .B(n625), .C(n624), .D(n623), .Y(out[7]) );
  OAI21X1 U692 ( .A(n23), .B(n628), .C(n627), .Y(n629) );
  NAND2X1 U693 ( .A(value[4]), .B(value[3]), .Y(n630) );
  NAND2X1 U694 ( .A(weight[4]), .B(weight[3]), .Y(n631) );
endmodule


module PE ( clk, n_rst, load, input_value, input_weight, cumulative, float, 
        input_valid, output_valid, pass_value, sum_out, overflow );
  input [7:0] input_value;
  input [7:0] input_weight;
  input [7:0] cumulative;
  output [7:0] pass_value;
  output [7:0] sum_out;
  input clk, n_rst, load, float, input_valid;
  output output_valid, overflow;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n43, n44, n45, n46, n47, n48, n49,
         n50, n51;
  wire   [7:0] weight;
  wire   [7:0] next_out;

  DFFSR output_valid_reg ( .D(input_valid), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(output_valid) );
  DFFSR \weight_reg[7]  ( .D(n50), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[7]) );
  DFFSR \weight_reg[6]  ( .D(n49), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[6]) );
  DFFSR \weight_reg[5]  ( .D(n48), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[5]) );
  DFFSR \weight_reg[4]  ( .D(n47), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[4]) );
  DFFSR \weight_reg[3]  ( .D(n46), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[3]) );
  DFFSR \weight_reg[2]  ( .D(n45), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[2]) );
  DFFSR \weight_reg[1]  ( .D(n44), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[1]) );
  DFFSR \weight_reg[0]  ( .D(n43), .CLK(clk), .R(n_rst), .S(1'b1), .Q(
        weight[0]) );
  DFFSR \value_reg[7]  ( .D(input_value[7]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[7]) );
  DFFSR \value_reg[6]  ( .D(input_value[6]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[6]) );
  DFFSR \value_reg[5]  ( .D(input_value[5]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[5]) );
  DFFSR \value_reg[4]  ( .D(input_value[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[4]) );
  DFFSR \value_reg[3]  ( .D(input_value[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[3]) );
  DFFSR \value_reg[2]  ( .D(input_value[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[2]) );
  DFFSR \value_reg[1]  ( .D(input_value[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[1]) );
  DFFSR \value_reg[0]  ( .D(input_value[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(pass_value[0]) );
  DFFSR \sum_out_reg[7]  ( .D(next_out[7]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[7]) );
  DFFSR \sum_out_reg[6]  ( .D(next_out[6]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[6]) );
  DFFSR \sum_out_reg[5]  ( .D(next_out[5]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[5]) );
  DFFSR \sum_out_reg[4]  ( .D(next_out[4]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[4]) );
  DFFSR \sum_out_reg[3]  ( .D(next_out[3]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[3]) );
  DFFSR \sum_out_reg[2]  ( .D(next_out[2]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[2]) );
  DFFSR \sum_out_reg[1]  ( .D(next_out[1]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[1]) );
  DFFSR \sum_out_reg[0]  ( .D(next_out[0]), .CLK(clk), .R(n_rst), .S(1'b1), 
        .Q(sum_out[0]) );
  AOI22X1 U4 ( .A(load), .B(input_weight[0]), .C(weight[0]), .D(n51), .Y(n1)
         );
  AOI22X1 U6 ( .A(input_weight[1]), .B(load), .C(weight[1]), .D(n51), .Y(n3)
         );
  AOI22X1 U8 ( .A(input_weight[2]), .B(load), .C(weight[2]), .D(n51), .Y(n4)
         );
  AOI22X1 U10 ( .A(input_weight[3]), .B(load), .C(weight[3]), .D(n51), .Y(n5)
         );
  AOI22X1 U12 ( .A(input_weight[4]), .B(load), .C(weight[4]), .D(n51), .Y(n6)
         );
  AOI22X1 U14 ( .A(input_weight[5]), .B(load), .C(weight[5]), .D(n51), .Y(n7)
         );
  AOI22X1 U16 ( .A(input_weight[6]), .B(load), .C(weight[6]), .D(n51), .Y(n8)
         );
  AOI22X1 U18 ( .A(input_weight[7]), .B(load), .C(weight[7]), .D(n51), .Y(n9)
         );
  signed_multiplier s0 ( .weight(weight), .value(pass_value), .cumulative(
        cumulative), .float(float), .out(next_out), .overflow(overflow) );
  INVX2 U45 ( .A(n1), .Y(n43) );
  INVX2 U46 ( .A(n3), .Y(n44) );
  INVX2 U47 ( .A(n4), .Y(n45) );
  INVX2 U48 ( .A(n5), .Y(n46) );
  INVX2 U49 ( .A(n6), .Y(n47) );
  INVX2 U50 ( .A(n7), .Y(n48) );
  INVX2 U51 ( .A(n8), .Y(n49) );
  INVX2 U52 ( .A(n9), .Y(n50) );
  INVX2 U53 ( .A(load), .Y(n51) );
endmodule

