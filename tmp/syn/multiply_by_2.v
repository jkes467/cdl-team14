/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Wed Dec 10 13:16:12 2025
/////////////////////////////////////////////////////////////


module multiply_by_2_DW01_add_7_DW01_add_8 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module multiply_by_2_DW01_add_6_DW01_add_7 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(n1), .YC(carry[4]), .YS(SUM[3]) );
  AND2X2 U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
endmodule


module multiply_by_2_DW01_add_13 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n20, n21, n22, n23, n24, n26, n28, n29, n30, n31, n32, n34, n36,
         n37, n38, n39, n41, n42, n44, n46, n48, \A[0] , n97, n98, n99, n100;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  XOR2X1 U1 ( .A(n9), .B(n1), .Y(SUM[15]) );
  XOR2X1 U2 ( .A(B[8]), .B(A[15]), .Y(n1) );
  FAX1 U3 ( .A(A[14]), .B(B[8]), .C(n10), .YC(n9), .YS(SUM[14]) );
  FAX1 U4 ( .A(A[13]), .B(B[8]), .C(n11), .YC(n10), .YS(SUM[13]) );
  FAX1 U5 ( .A(A[12]), .B(B[8]), .C(n12), .YC(n11), .YS(SUM[12]) );
  FAX1 U6 ( .A(A[11]), .B(B[8]), .C(n13), .YC(n12), .YS(SUM[11]) );
  FAX1 U7 ( .A(A[10]), .B(B[8]), .C(n14), .YC(n13), .YS(SUM[10]) );
  FAX1 U8 ( .A(A[9]), .B(B[8]), .C(n15), .YC(n14), .YS(SUM[9]) );
  FAX1 U9 ( .A(A[8]), .B(B[8]), .C(n42), .YC(n15), .YS(SUM[8]) );
  XNOR2X1 U11 ( .A(n21), .B(n2), .Y(SUM[7]) );
  AOI21X1 U12 ( .A(n100), .B(n21), .C(n18), .Y(n16) );
  NAND2X1 U15 ( .A(n20), .B(n100), .Y(n2) );
  NAND2X1 U18 ( .A(A[7]), .B(B[7]), .Y(n20) );
  XOR2X1 U19 ( .A(n24), .B(n3), .Y(SUM[6]) );
  OAI21X1 U20 ( .A(n24), .B(n22), .C(n23), .Y(n21) );
  NAND2X1 U21 ( .A(n23), .B(n44), .Y(n3) );
  INVX2 U22 ( .A(n22), .Y(n44) );
  NOR2X1 U23 ( .A(A[6]), .B(B[6]), .Y(n22) );
  NAND2X1 U24 ( .A(A[6]), .B(B[6]), .Y(n23) );
  XNOR2X1 U25 ( .A(n29), .B(n4), .Y(SUM[5]) );
  AOI21X1 U26 ( .A(n98), .B(n29), .C(n26), .Y(n24) );
  NAND2X1 U29 ( .A(n28), .B(n98), .Y(n4) );
  NAND2X1 U32 ( .A(A[5]), .B(B[5]), .Y(n28) );
  XOR2X1 U33 ( .A(n32), .B(n5), .Y(SUM[4]) );
  OAI21X1 U34 ( .A(n32), .B(n30), .C(n31), .Y(n29) );
  NAND2X1 U35 ( .A(n31), .B(n46), .Y(n5) );
  INVX2 U36 ( .A(n30), .Y(n46) );
  NOR2X1 U37 ( .A(A[4]), .B(B[4]), .Y(n30) );
  NAND2X1 U38 ( .A(A[4]), .B(B[4]), .Y(n31) );
  XNOR2X1 U39 ( .A(n37), .B(n6), .Y(SUM[3]) );
  AOI21X1 U40 ( .A(n97), .B(n37), .C(n34), .Y(n32) );
  NAND2X1 U43 ( .A(n36), .B(n97), .Y(n6) );
  NAND2X1 U46 ( .A(A[3]), .B(B[3]), .Y(n36) );
  XOR2X1 U47 ( .A(n7), .B(n41), .Y(SUM[2]) );
  OAI21X1 U48 ( .A(n38), .B(n41), .C(n39), .Y(n37) );
  NAND2X1 U49 ( .A(n39), .B(n48), .Y(n7) );
  INVX2 U50 ( .A(n38), .Y(n48) );
  NOR2X1 U51 ( .A(A[2]), .B(B[2]), .Y(n38) );
  NAND2X1 U52 ( .A(A[2]), .B(B[2]), .Y(n39) );
  NAND2X1 U57 ( .A(A[1]), .B(B[1]), .Y(n41) );
  OR2X2 U61 ( .A(A[3]), .B(B[3]), .Y(n97) );
  OR2X2 U62 ( .A(A[5]), .B(B[5]), .Y(n98) );
  OR2X2 U63 ( .A(A[1]), .B(B[1]), .Y(n99) );
  OR2X2 U64 ( .A(A[7]), .B(B[7]), .Y(n100) );
  INVX2 U65 ( .A(n28), .Y(n26) );
  INVX2 U66 ( .A(n36), .Y(n34) );
  INVX2 U67 ( .A(n16), .Y(n42) );
  INVX2 U68 ( .A(n20), .Y(n18) );
  AND2X2 U69 ( .A(n41), .B(n99), .Y(SUM[1]) );
endmodule


module multiply_by_2 ( weight, value, cumulative, float, out, overflow );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N21, N22, N23, N24, N27, N28, N29, N30, N33, N34, N35, N36, N38, N44,
         N45, N46, N48, N50, N51, N52, N53, N54, N55, N56, N58, N61, N62, N63,
         N64, N65, N66, N68, N70, N71, N72, N73, N74, N75, N76, N78, N80, N81,
         N82, N83, N84, N85, N86, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N196, N197, N198, N199, N200, N207, N208,
         N214, N215, N216, N99, N98, N97, N96, N95, N94, N93, N92, N91, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N171, N168, N167, N166, N165, N164, N163, N162, N161, N160,
         N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, N149,
         N148, N147, N146, N145, N144, N143, N142, N134, N133, N132, N131,
         N130, N129, N128, N126, N125, N124, N120, N119, N118, N117, N116,
         N115, N114, N113, N112, N111, N110, N109, N108, N107, N105, N104,
         N103, N102, N101, N100, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n778, n779, n780, n781, n782, n783, n784, n785, n786, n787, n788,
         n789, n790, n791, n792, n793, n794, n795, n796, n797, n798, n799,
         n800, n801, n802, n803, n804, n805, n806, n807, n808, n809, n810,
         n811, n812, n813, n814, n815, n816, n817, n818, n819, n820, n821,
         n822, n823, n824, n825, n826, n827, n828, n829, n830, n831, n832,
         n833, n834, n835, n836, n837, n838, n839, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849, n850, n851, n852, n853, n854,
         n855, n856, n857, n858, n859, n860, n861, n862, n863, n864, n865,
         n866, n867, n868, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, n883, n884, n885, n886, n887,
         n888, n889, n890, n891, n892, n893, n894, n895, n896, n897, n898,
         n899, n900, n901, n902, n903, n904, n905, n906, n907, n908, n909,
         n910, n911, n912;
  wire   [15:1] \add_4_root_add_0_root_add_62_7/carry ;
  wire   [15:1] \add_5_root_add_0_root_add_62_7/carry ;
  wire   [15:1] \add_6_root_add_0_root_add_62_7/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N214 = weight[0];
  assign N215 = weight[1];
  assign N216 = weight[2];

  multiply_by_2_DW01_add_7_DW01_add_8 add_2_root_add_0_root_add_62_7 ( .A({
        N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .B({N184, N183, N182, N181, N180, N179, N178, 
        N177, N176, N175, N174, N173, N172, N171, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, 
        N92, N91, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  multiply_by_2_DW01_add_6_DW01_add_7 add_1_root_add_0_root_add_62_7 ( .A({
        N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, 
        N91, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, n404, N105}), .CI(1'b0), .SUM({
        N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, 
        N156, N155, N154, N153}) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_5  ( .A(N51), .B(N33), .C(
        \add_4_root_add_0_root_add_62_7/carry [5]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [6]), .YS(N174) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_6  ( .A(N52), .B(N34), .C(
        \add_4_root_add_0_root_add_62_7/carry [6]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [7]), .YS(N175) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_7  ( .A(N53), .B(N35), .C(
        \add_4_root_add_0_root_add_62_7/carry [7]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [8]), .YS(N176) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_8  ( .A(N54), .B(N36), .C(
        \add_4_root_add_0_root_add_62_7/carry [8]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [9]), .YS(N177) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_9  ( .A(N55), .B(n409), .C(
        \add_4_root_add_0_root_add_62_7/carry [9]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [10]), .YS(N178) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_10  ( .A(N56), .B(n409), .C(
        \add_4_root_add_0_root_add_62_7/carry [10]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [11]), .YS(N179) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_11  ( .A(n407), .B(n409), .C(
        \add_4_root_add_0_root_add_62_7/carry [11]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [12]), .YS(N180) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_12  ( .A(n407), .B(n409), .C(
        \add_4_root_add_0_root_add_62_7/carry [12]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [13]), .YS(N181) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_13  ( .A(n407), .B(n409), .C(
        \add_4_root_add_0_root_add_62_7/carry [13]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [14]), .YS(N182) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_14  ( .A(n407), .B(n409), .C(
        \add_4_root_add_0_root_add_62_7/carry [14]), .YC(
        \add_4_root_add_0_root_add_62_7/carry [15]), .YS(N183) );
  FAX1 \add_4_root_add_0_root_add_62_7/U1_15  ( .A(n407), .B(n409), .C(
        \add_4_root_add_0_root_add_62_7/carry [15]), .YS(N184) );
  FAX1 \add_5_root_add_0_root_add_62_7/U1_8  ( .A(N81), .B(N45), .C(n402), 
        .YC(\add_5_root_add_0_root_add_62_7/carry [9]), .YS(N129) );
  FAX1 \add_5_root_add_0_root_add_62_7/U1_9  ( .A(N82), .B(N46), .C(
        \add_5_root_add_0_root_add_62_7/carry [9]), .YC(
        \add_5_root_add_0_root_add_62_7/carry [10]), .YS(N130) );
  FAX1 \add_5_root_add_0_root_add_62_7/U1_10  ( .A(N83), .B(n408), .C(
        \add_5_root_add_0_root_add_62_7/carry [10]), .YC(
        \add_5_root_add_0_root_add_62_7/carry [11]), .YS(N131) );
  FAX1 \add_5_root_add_0_root_add_62_7/U1_11  ( .A(N84), .B(N48), .C(
        \add_5_root_add_0_root_add_62_7/carry [11]), .YC(
        \add_5_root_add_0_root_add_62_7/carry [12]), .YS(N132) );
  FAX1 \add_5_root_add_0_root_add_62_7/U1_12  ( .A(N85), .B(N48), .C(
        \add_5_root_add_0_root_add_62_7/carry [12]), .YC(
        \add_5_root_add_0_root_add_62_7/carry [13]), .YS(N133) );
  FAX1 \add_5_root_add_0_root_add_62_7/U1_13  ( .A(N86), .B(N48), .C(
        \add_5_root_add_0_root_add_62_7/carry [13]), .YC(
        \add_5_root_add_0_root_add_62_7/carry [14]), .YS(N134) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_7  ( .A(N62), .B(N71), .C(n401), 
        .YC(\add_6_root_add_0_root_add_62_7/carry [8]), .YS(N144) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_8  ( .A(N63), .B(N72), .C(
        \add_6_root_add_0_root_add_62_7/carry [8]), .YC(
        \add_6_root_add_0_root_add_62_7/carry [9]), .YS(N145) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_9  ( .A(N64), .B(N73), .C(
        \add_6_root_add_0_root_add_62_7/carry [9]), .YC(
        \add_6_root_add_0_root_add_62_7/carry [10]), .YS(N146) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_10  ( .A(N65), .B(N74), .C(
        \add_6_root_add_0_root_add_62_7/carry [10]), .YC(
        \add_6_root_add_0_root_add_62_7/carry [11]), .YS(N147) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_11  ( .A(N66), .B(N75), .C(
        \add_6_root_add_0_root_add_62_7/carry [11]), .YC(
        \add_6_root_add_0_root_add_62_7/carry [12]), .YS(N148) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_12  ( .A(n406), .B(N76), .C(
        \add_6_root_add_0_root_add_62_7/carry [12]), .YC(
        \add_6_root_add_0_root_add_62_7/carry [13]), .YS(N149) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_13  ( .A(n406), .B(N78), .C(
        \add_6_root_add_0_root_add_62_7/carry [13]), .YC(
        \add_6_root_add_0_root_add_62_7/carry [14]), .YS(N150) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_14  ( .A(n406), .B(N78), .C(
        \add_6_root_add_0_root_add_62_7/carry [14]), .YC(
        \add_6_root_add_0_root_add_62_7/carry [15]), .YS(N151) );
  FAX1 \add_6_root_add_0_root_add_62_7/U1_15  ( .A(n406), .B(N78), .C(
        \add_6_root_add_0_root_add_62_7/carry [15]), .YS(N152) );
  multiply_by_2_DW01_add_13 add_0_root_add_0_root_add_62_7 ( .A({N168, N167, 
        N166, N165, N164, N163, N162, N161, N160, N159, N158, N157, N156, N155, 
        N154, N153}), .B({n418, n418, n418, n418, n418, n418, n418, n418, N30, 
        N29, N28, N27, N208, N207, n412, 1'b0}), .CI(1'b0), .SUM({N200, N199, 
        N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185}) );
  AND2X2 U395 ( .A(n639), .B(n662), .Y(n397) );
  OR2X2 U396 ( .A(n901), .B(n890), .Y(n411) );
  OR2X2 U397 ( .A(value[5]), .B(n892), .Y(n398) );
  XNOR2X1 U398 ( .A(n856), .B(cumulative[6]), .Y(n399) );
  AND2X2 U399 ( .A(cumulative[5]), .B(n652), .Y(n400) );
  AND2X2 U400 ( .A(N70), .B(N61), .Y(n401) );
  AND2X2 U401 ( .A(N44), .B(N80), .Y(n402) );
  AND2X2 U402 ( .A(N124), .B(N21), .Y(n403) );
  AND2X2 U403 ( .A(N215), .B(value[0]), .Y(n404) );
  AND2X2 U404 ( .A(n512), .B(n514), .Y(n405) );
  BUFX2 U405 ( .A(N68), .Y(n406) );
  BUFX2 U406 ( .A(N58), .Y(n407) );
  INVX2 U407 ( .A(n453), .Y(n408) );
  INVX1 U408 ( .A(N48), .Y(n453) );
  BUFX2 U409 ( .A(N38), .Y(n409) );
  AND2X2 U410 ( .A(n735), .B(n737), .Y(n410) );
  INVX2 U411 ( .A(n519), .Y(n532) );
  INVX2 U412 ( .A(n411), .Y(n423) );
  MUX2X1 U413 ( .B(n400), .A(n645), .S(n644), .Y(n688) );
  MUX2X1 U414 ( .B(n882), .A(n883), .S(n881), .Y(n886) );
  AND2X2 U415 ( .A(value[1]), .B(N214), .Y(n412) );
  OR2X1 U416 ( .A(n888), .B(n413), .Y(n871) );
  XNOR2X1 U417 ( .A(n854), .B(n853), .Y(n413) );
  XOR2X1 U418 ( .A(n415), .B(N198), .Y(n414) );
  XNOR2X1 U419 ( .A(n567), .B(cumulative[7]), .Y(n415) );
  XOR2X1 U420 ( .A(n417), .B(N197), .Y(n416) );
  XNOR2X1 U421 ( .A(n562), .B(cumulative[7]), .Y(n417) );
  AND2X2 U422 ( .A(value[1]), .B(weight[7]), .Y(n418) );
  XOR2X1 U423 ( .A(n420), .B(N194), .Y(n419) );
  XNOR2X1 U424 ( .A(n573), .B(cumulative[7]), .Y(n420) );
  XOR2X1 U425 ( .A(n422), .B(N193), .Y(n421) );
  XNOR2X1 U426 ( .A(n572), .B(cumulative[7]), .Y(n422) );
  INVX2 U427 ( .A(weight[5]), .Y(n892) );
  XOR2X1 U428 ( .A(N44), .B(N80), .Y(N128) );
  XOR2X1 U429 ( .A(N70), .B(N61), .Y(N143) );
  OR2X2 U430 ( .A(n589), .B(n588), .Y(n873) );
  INVX4 U431 ( .A(n672), .Y(n828) );
  NAND2X1 U432 ( .A(N216), .B(value[2]), .Y(n514) );
  INVX2 U433 ( .A(N50), .Y(n424) );
  NOR2X1 U434 ( .A(n514), .B(n424), .Y(
        \add_4_root_add_0_root_add_62_7/carry [5]) );
  NAND2X1 U435 ( .A(value[3]), .B(weight[3]), .Y(n483) );
  OAI21X1 U436 ( .A(n909), .B(n483), .C(n910), .Y(n908) );
  INVX2 U437 ( .A(value[7]), .Y(n898) );
  INVX2 U438 ( .A(weight[6]), .Y(n891) );
  INVX2 U439 ( .A(weight[4]), .Y(n893) );
  INVX2 U440 ( .A(weight[3]), .Y(n894) );
  INVX2 U441 ( .A(N216), .Y(n895) );
  INVX2 U442 ( .A(N215), .Y(n896) );
  INVX2 U443 ( .A(N214), .Y(n897) );
  INVX2 U444 ( .A(weight[7]), .Y(n890) );
  INVX2 U445 ( .A(value[3]), .Y(n899) );
  INVX2 U446 ( .A(value[2]), .Y(n900) );
  INVX2 U447 ( .A(value[0]), .Y(n901) );
  INVX2 U448 ( .A(n514), .Y(n425) );
  XOR2X1 U449 ( .A(N50), .B(n425), .Y(N173) );
  NAND2X1 U450 ( .A(N215), .B(value[2]), .Y(n494) );
  INVX2 U451 ( .A(n494), .Y(N172) );
  NAND2X1 U452 ( .A(N214), .B(value[2]), .Y(n498) );
  INVX2 U453 ( .A(n498), .Y(N171) );
  NAND2X1 U454 ( .A(value[7]), .B(weight[7]), .Y(n707) );
  XOR2X1 U455 ( .A(n707), .B(n408), .Y(n427) );
  INVX2 U456 ( .A(n427), .Y(n426) );
  XOR2X1 U457 ( .A(n423), .B(n426), .Y(n457) );
  XOR2X1 U458 ( .A(n427), .B(\add_5_root_add_0_root_add_62_7/carry [14]), .Y(
        n458) );
  INVX2 U459 ( .A(n458), .Y(n448) );
  INVX2 U460 ( .A(N134), .Y(n447) );
  INVX2 U461 ( .A(N133), .Y(n445) );
  INVX2 U462 ( .A(N132), .Y(n443) );
  INVX2 U463 ( .A(N131), .Y(n441) );
  INVX2 U464 ( .A(N130), .Y(n439) );
  INVX2 U465 ( .A(N129), .Y(n437) );
  INVX2 U466 ( .A(N128), .Y(n435) );
  INVX2 U467 ( .A(N24), .Y(n433) );
  INVX2 U468 ( .A(n483), .Y(n603) );
  INVX2 U469 ( .A(N23), .Y(n487) );
  INVX2 U470 ( .A(N126), .Y(n431) );
  OAI21X1 U471 ( .A(N125), .B(N22), .C(n403), .Y(n429) );
  NAND2X1 U472 ( .A(N22), .B(N125), .Y(n428) );
  NAND2X1 U473 ( .A(n429), .B(n428), .Y(n488) );
  OAI21X1 U474 ( .A(N126), .B(N23), .C(n488), .Y(n430) );
  OAI21X1 U475 ( .A(n487), .B(n431), .C(n430), .Y(n484) );
  OAI21X1 U476 ( .A(N24), .B(n603), .C(n484), .Y(n432) );
  OAI21X1 U477 ( .A(n483), .B(n433), .C(n432), .Y(n480) );
  OAI21X1 U478 ( .A(N128), .B(n423), .C(n480), .Y(n434) );
  OAI21X1 U479 ( .A(n411), .B(n435), .C(n434), .Y(n477) );
  OAI21X1 U480 ( .A(N129), .B(n423), .C(n477), .Y(n436) );
  OAI21X1 U481 ( .A(n411), .B(n437), .C(n436), .Y(n474) );
  OAI21X1 U482 ( .A(N130), .B(n423), .C(n474), .Y(n438) );
  OAI21X1 U483 ( .A(n411), .B(n439), .C(n438), .Y(n471) );
  OAI21X1 U484 ( .A(N131), .B(n423), .C(n471), .Y(n440) );
  OAI21X1 U485 ( .A(n411), .B(n441), .C(n440), .Y(n468) );
  OAI21X1 U486 ( .A(N132), .B(n423), .C(n468), .Y(n442) );
  OAI21X1 U487 ( .A(n411), .B(n443), .C(n442), .Y(n465) );
  OAI21X1 U488 ( .A(N133), .B(n423), .C(n465), .Y(n444) );
  OAI21X1 U489 ( .A(n411), .B(n445), .C(n444), .Y(n462) );
  OAI21X1 U490 ( .A(N134), .B(n423), .C(n462), .Y(n446) );
  OAI21X1 U491 ( .A(n411), .B(n447), .C(n446), .Y(n459) );
  OAI21X1 U492 ( .A(n423), .B(n448), .C(n459), .Y(n449) );
  OAI21X1 U493 ( .A(n411), .B(n458), .C(n449), .Y(n455) );
  INVX2 U494 ( .A(\add_5_root_add_0_root_add_62_7/carry [14]), .Y(n452) );
  INVX2 U495 ( .A(n707), .Y(n450) );
  OAI21X1 U496 ( .A(\add_5_root_add_0_root_add_62_7/carry [14]), .B(n408), .C(
        n450), .Y(n451) );
  OAI21X1 U497 ( .A(n453), .B(n452), .C(n451), .Y(n454) );
  XOR2X1 U498 ( .A(n455), .B(n454), .Y(n456) );
  XOR2X1 U499 ( .A(n457), .B(n456), .Y(N120) );
  XOR2X1 U500 ( .A(n458), .B(n423), .Y(n461) );
  INVX2 U501 ( .A(n459), .Y(n460) );
  XOR2X1 U502 ( .A(n461), .B(n460), .Y(N119) );
  XOR2X1 U503 ( .A(n411), .B(N134), .Y(n464) );
  INVX2 U504 ( .A(n462), .Y(n463) );
  XOR2X1 U505 ( .A(n464), .B(n463), .Y(N118) );
  XOR2X1 U506 ( .A(n411), .B(N133), .Y(n467) );
  INVX2 U507 ( .A(n465), .Y(n466) );
  XOR2X1 U508 ( .A(n467), .B(n466), .Y(N117) );
  XOR2X1 U509 ( .A(n411), .B(N132), .Y(n470) );
  INVX2 U510 ( .A(n468), .Y(n469) );
  XOR2X1 U511 ( .A(n470), .B(n469), .Y(N116) );
  XOR2X1 U512 ( .A(n411), .B(N131), .Y(n473) );
  INVX2 U513 ( .A(n471), .Y(n472) );
  XOR2X1 U514 ( .A(n473), .B(n472), .Y(N115) );
  XOR2X1 U515 ( .A(n411), .B(N130), .Y(n476) );
  INVX2 U516 ( .A(n474), .Y(n475) );
  XOR2X1 U517 ( .A(n476), .B(n475), .Y(N114) );
  XOR2X1 U518 ( .A(n411), .B(N129), .Y(n479) );
  INVX2 U519 ( .A(n477), .Y(n478) );
  XOR2X1 U520 ( .A(n479), .B(n478), .Y(N113) );
  XOR2X1 U521 ( .A(n411), .B(N128), .Y(n482) );
  INVX2 U522 ( .A(n480), .Y(n481) );
  XOR2X1 U523 ( .A(n482), .B(n481), .Y(N112) );
  XOR2X1 U524 ( .A(n483), .B(N24), .Y(n486) );
  INVX2 U525 ( .A(n484), .Y(n485) );
  XOR2X1 U526 ( .A(n486), .B(n485), .Y(N111) );
  XOR2X1 U527 ( .A(n487), .B(N126), .Y(n490) );
  INVX2 U528 ( .A(n488), .Y(n489) );
  XOR2X1 U529 ( .A(n490), .B(n489), .Y(N110) );
  XOR2X1 U530 ( .A(N125), .B(N22), .Y(n491) );
  XOR2X1 U531 ( .A(n403), .B(n491), .Y(N109) );
  XOR2X1 U532 ( .A(N124), .B(N21), .Y(N108) );
  NAND2X1 U533 ( .A(N216), .B(value[0]), .Y(n499) );
  INVX2 U534 ( .A(n499), .Y(N107) );
  NOR2X1 U535 ( .A(n901), .B(n897), .Y(N105) );
  INVX2 U536 ( .A(value[1]), .Y(n492) );
  NOR2X1 U537 ( .A(n891), .B(n492), .Y(N30) );
  NOR2X1 U538 ( .A(n892), .B(n492), .Y(N29) );
  NOR2X1 U539 ( .A(n893), .B(n492), .Y(N28) );
  NOR2X1 U540 ( .A(n894), .B(n492), .Y(N27) );
  NAND2X1 U541 ( .A(value[1]), .B(N216), .Y(n511) );
  INVX2 U542 ( .A(n511), .Y(N208) );
  NAND2X1 U543 ( .A(value[1]), .B(N215), .Y(n500) );
  INVX2 U544 ( .A(n500), .Y(N207) );
  INVX2 U545 ( .A(cumulative[7]), .Y(n584) );
  INVX2 U546 ( .A(N196), .Y(n561) );
  INVX2 U547 ( .A(N195), .Y(n559) );
  INVX2 U548 ( .A(N194), .Y(n557) );
  INVX2 U549 ( .A(N193), .Y(n555) );
  NAND2X1 U550 ( .A(N171), .B(N215), .Y(n506) );
  OAI21X1 U551 ( .A(n896), .B(n514), .C(n506), .Y(n493) );
  INVX2 U552 ( .A(n493), .Y(n512) );
  XOR2X1 U553 ( .A(n494), .B(N214), .Y(n504) );
  XOR2X1 U554 ( .A(n511), .B(value[0]), .Y(n496) );
  INVX2 U555 ( .A(n496), .Y(n497) );
  NAND2X1 U556 ( .A(n412), .B(n404), .Y(n495) );
  OAI21X1 U557 ( .A(n500), .B(n499), .C(n495), .Y(n509) );
  OAI22X1 U558 ( .A(n497), .B(n509), .C(n496), .D(n495), .Y(n503) );
  INVX2 U559 ( .A(n503), .Y(n541) );
  INVX2 U560 ( .A(n504), .Y(n540) );
  AOI21X1 U561 ( .A(n500), .B(n499), .C(n498), .Y(n501) );
  OAI21X1 U562 ( .A(n541), .B(n540), .C(n501), .Y(n502) );
  OAI21X1 U563 ( .A(n504), .B(n503), .C(n502), .Y(n505) );
  INVX2 U564 ( .A(n505), .Y(n537) );
  XOR2X1 U565 ( .A(n514), .B(N215), .Y(n508) );
  INVX2 U566 ( .A(n506), .Y(n507) );
  XOR2X1 U567 ( .A(n508), .B(n507), .Y(n515) );
  INVX2 U568 ( .A(n509), .Y(n510) );
  OAI21X1 U569 ( .A(n901), .B(n511), .C(n510), .Y(n519) );
  NAND2X1 U570 ( .A(n532), .B(value[1]), .Y(n536) );
  NAND2X1 U571 ( .A(n515), .B(n536), .Y(n527) );
  XOR2X1 U572 ( .A(n895), .B(value[2]), .Y(n513) );
  MUX2X1 U573 ( .B(n514), .A(n513), .S(n512), .Y(n520) );
  INVX2 U574 ( .A(n520), .Y(n530) );
  NAND2X1 U575 ( .A(n532), .B(n530), .Y(n517) );
  NAND2X1 U576 ( .A(n527), .B(n517), .Y(n522) );
  INVX2 U577 ( .A(n536), .Y(n516) );
  INVX2 U578 ( .A(n515), .Y(n535) );
  NAND2X1 U579 ( .A(n516), .B(n535), .Y(n528) );
  INVX2 U580 ( .A(n528), .Y(n518) );
  AOI22X1 U581 ( .A(n520), .B(n519), .C(n518), .D(n517), .Y(n521) );
  OAI21X1 U582 ( .A(n537), .B(n522), .C(n521), .Y(n523) );
  INVX2 U583 ( .A(n523), .Y(n525) );
  NAND2X1 U584 ( .A(n405), .B(n525), .Y(n524) );
  MUX2X1 U585 ( .B(N192), .A(n524), .S(float), .Y(n680) );
  INVX2 U586 ( .A(n680), .Y(n679) );
  NOR2X1 U587 ( .A(n405), .B(n525), .Y(n526) );
  MUX2X1 U588 ( .B(N191), .A(n526), .S(float), .Y(n851) );
  INVX2 U589 ( .A(cumulative[6]), .Y(n855) );
  INVX2 U590 ( .A(n851), .Y(n551) );
  INVX2 U591 ( .A(cumulative[5]), .Y(n829) );
  INVX2 U592 ( .A(n527), .Y(n529) );
  OAI21X1 U593 ( .A(n537), .B(n529), .C(n528), .Y(n531) );
  XOR2X1 U594 ( .A(n531), .B(n530), .Y(n533) );
  XOR2X1 U595 ( .A(n533), .B(n532), .Y(n534) );
  MUX2X1 U596 ( .B(N190), .A(n534), .S(float), .Y(n659) );
  INVX2 U597 ( .A(n659), .Y(n825) );
  XOR2X1 U598 ( .A(n536), .B(n535), .Y(n538) );
  XOR2X1 U599 ( .A(n538), .B(n537), .Y(n539) );
  MUX2X1 U600 ( .B(N189), .A(n539), .S(float), .Y(n658) );
  INVX2 U601 ( .A(cumulative[4]), .Y(n626) );
  INVX2 U602 ( .A(n658), .Y(n805) );
  INVX2 U603 ( .A(cumulative[3]), .Y(n798) );
  XOR2X1 U604 ( .A(n541), .B(n540), .Y(n542) );
  MUX2X1 U605 ( .B(N188), .A(n542), .S(float), .Y(n548) );
  INVX2 U606 ( .A(n548), .Y(n791) );
  INVX2 U607 ( .A(cumulative[2]), .Y(n660) );
  INVX2 U608 ( .A(N187), .Y(n546) );
  INVX2 U609 ( .A(cumulative[1]), .Y(n661) );
  INVX2 U610 ( .A(N186), .Y(n774) );
  NAND2X1 U611 ( .A(N185), .B(cumulative[0]), .Y(n773) );
  INVX2 U612 ( .A(n773), .Y(n543) );
  OAI21X1 U613 ( .A(cumulative[1]), .B(N186), .C(n543), .Y(n544) );
  OAI21X1 U614 ( .A(n661), .B(n774), .C(n544), .Y(n779) );
  OAI21X1 U615 ( .A(cumulative[2]), .B(N187), .C(n779), .Y(n545) );
  OAI21X1 U616 ( .A(n660), .B(n546), .C(n545), .Y(n790) );
  OAI21X1 U617 ( .A(cumulative[3]), .B(n791), .C(n790), .Y(n547) );
  OAI21X1 U618 ( .A(n798), .B(n548), .C(n547), .Y(n806) );
  OAI21X1 U619 ( .A(cumulative[4]), .B(n805), .C(n806), .Y(n549) );
  OAI21X1 U620 ( .A(n658), .B(n626), .C(n549), .Y(n824) );
  OAI21X1 U621 ( .A(cumulative[5]), .B(n825), .C(n824), .Y(n550) );
  OAI21X1 U622 ( .A(n829), .B(n659), .C(n550), .Y(n852) );
  OAI21X1 U623 ( .A(cumulative[6]), .B(n551), .C(n852), .Y(n552) );
  OAI21X1 U624 ( .A(n851), .B(n855), .C(n552), .Y(n566) );
  OAI21X1 U625 ( .A(cumulative[7]), .B(n679), .C(n566), .Y(n553) );
  OAI21X1 U626 ( .A(n680), .B(n584), .C(n553), .Y(n572) );
  OAI21X1 U627 ( .A(N193), .B(cumulative[7]), .C(n572), .Y(n554) );
  OAI21X1 U628 ( .A(n584), .B(n555), .C(n554), .Y(n573) );
  OAI21X1 U629 ( .A(N194), .B(cumulative[7]), .C(n573), .Y(n556) );
  OAI21X1 U630 ( .A(n584), .B(n557), .C(n556), .Y(n576) );
  OAI21X1 U631 ( .A(N195), .B(cumulative[7]), .C(n576), .Y(n558) );
  OAI21X1 U632 ( .A(n584), .B(n559), .C(n558), .Y(n574) );
  OAI21X1 U633 ( .A(N196), .B(cumulative[7]), .C(n574), .Y(n560) );
  OAI21X1 U634 ( .A(n584), .B(n561), .C(n560), .Y(n562) );
  INVX2 U635 ( .A(N197), .Y(n564) );
  OAI21X1 U636 ( .A(N197), .B(cumulative[7]), .C(n562), .Y(n563) );
  OAI21X1 U637 ( .A(n584), .B(n564), .C(n563), .Y(n567) );
  XOR2X1 U638 ( .A(cumulative[7]), .B(n679), .Y(n565) );
  XOR2X1 U639 ( .A(n566), .B(n565), .Y(n880) );
  INVX2 U640 ( .A(N198), .Y(n569) );
  OAI21X1 U641 ( .A(N198), .B(cumulative[7]), .C(n567), .Y(n568) );
  OAI21X1 U642 ( .A(n584), .B(n569), .C(n568), .Y(n581) );
  XOR2X1 U643 ( .A(n581), .B(cumulative[7]), .Y(n570) );
  XOR2X1 U644 ( .A(n570), .B(N199), .Y(n594) );
  NOR2X1 U645 ( .A(n880), .B(n594), .Y(n571) );
  NAND3X1 U646 ( .A(n416), .B(n414), .C(n571), .Y(n580) );
  XOR2X1 U647 ( .A(n574), .B(cumulative[7]), .Y(n575) );
  XOR2X1 U648 ( .A(n575), .B(N196), .Y(n591) );
  XOR2X1 U649 ( .A(n576), .B(cumulative[7]), .Y(n577) );
  XOR2X1 U650 ( .A(n577), .B(N195), .Y(n592) );
  NOR2X1 U651 ( .A(n591), .B(n592), .Y(n578) );
  NAND3X1 U652 ( .A(n421), .B(n419), .C(n578), .Y(n579) );
  INVX2 U653 ( .A(float), .Y(n872) );
  OAI21X1 U654 ( .A(n580), .B(n579), .C(n872), .Y(n589) );
  INVX2 U655 ( .A(N199), .Y(n583) );
  OAI21X1 U656 ( .A(N199), .B(cumulative[7]), .C(n581), .Y(n582) );
  OAI21X1 U657 ( .A(n584), .B(n583), .C(n582), .Y(n585) );
  XOR2X1 U658 ( .A(n585), .B(cumulative[7]), .Y(n586) );
  XOR2X1 U659 ( .A(n586), .B(N200), .Y(n595) );
  INVX2 U660 ( .A(n595), .Y(n587) );
  NAND2X1 U661 ( .A(n587), .B(n898), .Y(n588) );
  NOR2X1 U662 ( .A(n419), .B(n421), .Y(n590) );
  NAND3X1 U663 ( .A(n592), .B(n591), .C(n590), .Y(n597) );
  NOR2X1 U664 ( .A(n414), .B(n416), .Y(n593) );
  NAND3X1 U665 ( .A(n594), .B(n880), .C(n593), .Y(n596) );
  OAI21X1 U666 ( .A(n597), .B(n596), .C(n595), .Y(n599) );
  NAND2X1 U667 ( .A(value[7]), .B(n872), .Y(n598) );
  OR2X1 U668 ( .A(n599), .B(n598), .Y(n884) );
  XOR2X1 U669 ( .A(n894), .B(value[3]), .Y(n621) );
  XOR2X1 U670 ( .A(n621), .B(n679), .Y(n653) );
  NAND2X1 U671 ( .A(n653), .B(n798), .Y(n641) );
  INVX2 U672 ( .A(n653), .Y(n799) );
  NAND2X1 U673 ( .A(n799), .B(cumulative[3]), .Y(n620) );
  NAND2X1 U674 ( .A(n641), .B(n620), .Y(n696) );
  INVX2 U675 ( .A(n696), .Y(n691) );
  NAND2X1 U676 ( .A(n621), .B(n680), .Y(n614) );
  INVX2 U677 ( .A(N65), .Y(n600) );
  OAI21X1 U678 ( .A(value[5]), .B(weight[5]), .C(n600), .Y(n602) );
  OAI21X1 U679 ( .A(weight[5]), .B(n911), .C(n398), .Y(n601) );
  MUX2X1 U680 ( .B(n602), .A(n601), .S(n908), .Y(n615) );
  OAI21X1 U681 ( .A(value[4]), .B(weight[4]), .C(n910), .Y(n604) );
  XOR2X1 U682 ( .A(n604), .B(n603), .Y(n613) );
  INVX2 U683 ( .A(n613), .Y(n623) );
  NAND2X1 U684 ( .A(n615), .B(n623), .Y(n612) );
  NOR2X1 U685 ( .A(n624), .B(n612), .Y(n610) );
  INVX2 U686 ( .A(n612), .Y(n605) );
  NAND2X1 U687 ( .A(n605), .B(n614), .Y(n609) );
  XOR2X1 U688 ( .A(value[6]), .B(n904), .Y(n607) );
  MUX2X1 U689 ( .B(n902), .A(n903), .S(n904), .Y(n606) );
  AOI21X1 U690 ( .A(n607), .B(n891), .C(n606), .Y(n608) );
  MUX2X1 U691 ( .B(n610), .A(n609), .S(n608), .Y(n611) );
  NAND2X1 U692 ( .A(float), .B(n611), .Y(n856) );
  INVX2 U693 ( .A(n856), .Y(n649) );
  NAND2X1 U694 ( .A(n649), .B(n855), .Y(n651) );
  NAND2X1 U695 ( .A(n612), .B(n623), .Y(n619) );
  NOR2X1 U696 ( .A(n613), .B(n621), .Y(n617) );
  NAND2X1 U697 ( .A(n614), .B(n623), .Y(n616) );
  MUX2X1 U698 ( .B(n617), .A(n616), .S(n615), .Y(n618) );
  OAI21X1 U699 ( .A(n680), .B(n619), .C(n618), .Y(n652) );
  INVX2 U700 ( .A(n652), .Y(n830) );
  NAND2X1 U701 ( .A(n830), .B(cumulative[5]), .Y(n632) );
  INVX2 U702 ( .A(n632), .Y(n629) );
  INVX2 U703 ( .A(n620), .Y(n638) );
  INVX2 U704 ( .A(n614), .Y(n624) );
  NAND3X1 U705 ( .A(n623), .B(n680), .C(n621), .Y(n622) );
  OAI21X1 U706 ( .A(n624), .B(n623), .C(n622), .Y(n625) );
  NAND2X1 U707 ( .A(float), .B(n625), .Y(n655) );
  NAND2X1 U708 ( .A(cumulative[4]), .B(n655), .Y(n642) );
  INVX2 U709 ( .A(n642), .Y(n627) );
  INVX2 U710 ( .A(n655), .Y(n809) );
  NAND2X1 U711 ( .A(n809), .B(n626), .Y(n640) );
  OAI21X1 U712 ( .A(n638), .B(n627), .C(n640), .Y(n628) );
  INVX2 U713 ( .A(n628), .Y(n634) );
  NAND2X1 U714 ( .A(n652), .B(n829), .Y(n633) );
  OAI21X1 U715 ( .A(n629), .B(n634), .C(n633), .Y(n648) );
  INVX2 U716 ( .A(n648), .Y(n630) );
  MUX2X1 U717 ( .B(n399), .A(n651), .S(n630), .Y(n637) );
  NAND2X1 U718 ( .A(cumulative[4]), .B(cumulative[5]), .Y(n631) );
  OAI21X1 U719 ( .A(n798), .B(n631), .C(n855), .Y(n636) );
  NAND2X1 U720 ( .A(n633), .B(n632), .Y(n645) );
  MUX2X1 U721 ( .B(n645), .A(n400), .S(n634), .Y(n635) );
  NAND3X1 U722 ( .A(n637), .B(n636), .C(n635), .Y(n697) );
  INVX2 U723 ( .A(n697), .Y(n639) );
  XOR2X1 U724 ( .A(n655), .B(cumulative[4]), .Y(n647) );
  XOR2X1 U725 ( .A(n647), .B(n638), .Y(n662) );
  NAND2X1 U726 ( .A(n691), .B(n397), .Y(n739) );
  INVX2 U727 ( .A(n739), .Y(n735) );
  INVX2 U728 ( .A(n640), .Y(n643) );
  INVX2 U729 ( .A(n641), .Y(n646) );
  OAI21X1 U730 ( .A(n643), .B(n646), .C(n642), .Y(n644) );
  NAND2X1 U731 ( .A(n399), .B(n644), .Y(n689) );
  XOR2X1 U732 ( .A(n647), .B(n646), .Y(n685) );
  NAND3X1 U733 ( .A(n689), .B(n688), .C(n685), .Y(n657) );
  OAI21X1 U734 ( .A(n649), .B(n855), .C(n648), .Y(n650) );
  NAND2X1 U735 ( .A(n651), .B(n650), .Y(n672) );
  NAND2X1 U736 ( .A(n653), .B(n652), .Y(n654) );
  OAI21X1 U737 ( .A(n655), .B(n654), .C(n856), .Y(n670) );
  NAND2X1 U738 ( .A(n828), .B(n670), .Y(n702) );
  NAND2X1 U739 ( .A(n691), .B(n660), .Y(n692) );
  NAND2X1 U740 ( .A(n397), .B(n692), .Y(n656) );
  OAI21X1 U741 ( .A(n657), .B(n702), .C(n656), .Y(n716) );
  OAI21X1 U742 ( .A(n679), .B(n659), .C(n851), .Y(n683) );
  INVX2 U743 ( .A(n683), .Y(n665) );
  MUX2X1 U744 ( .B(n665), .A(n660), .S(n828), .Y(n715) );
  OAI22X1 U745 ( .A(n659), .B(n680), .C(n679), .D(n658), .Y(n684) );
  MUX2X1 U746 ( .B(n686), .A(n661), .S(n828), .Y(n712) );
  INVX2 U747 ( .A(n712), .Y(n721) );
  INVX2 U748 ( .A(n662), .Y(n693) );
  NOR2X1 U749 ( .A(n660), .B(n693), .Y(n664) );
  NAND2X1 U750 ( .A(n662), .B(n661), .Y(n663) );
  MUX2X1 U751 ( .B(n664), .A(n663), .S(n691), .Y(n678) );
  INVX2 U752 ( .A(n689), .Y(n669) );
  INVX2 U753 ( .A(n670), .Y(n666) );
  NOR2X1 U754 ( .A(n666), .B(n665), .Y(n667) );
  NAND3X1 U755 ( .A(n667), .B(n688), .C(n685), .Y(n668) );
  NOR2X1 U756 ( .A(n669), .B(n668), .Y(n676) );
  NAND2X1 U757 ( .A(n691), .B(n670), .Y(n671) );
  NOR2X1 U758 ( .A(n672), .B(n671), .Y(n675) );
  INVX2 U759 ( .A(n688), .Y(n673) );
  NOR2X1 U760 ( .A(n673), .B(n685), .Y(n674) );
  AOI22X1 U761 ( .A(n676), .B(n828), .C(n675), .D(n674), .Y(n677) );
  OAI21X1 U762 ( .A(n678), .B(n697), .C(n677), .Y(n722) );
  INVX2 U763 ( .A(n722), .Y(n713) );
  AOI22X1 U764 ( .A(n791), .B(n680), .C(n679), .D(n805), .Y(n682) );
  INVX2 U765 ( .A(cumulative[0]), .Y(n681) );
  MUX2X1 U766 ( .B(n682), .A(n681), .S(n828), .Y(n719) );
  NOR2X1 U767 ( .A(n696), .B(n683), .Y(n687) );
  INVX2 U768 ( .A(n684), .Y(n686) );
  MUX2X1 U769 ( .B(n687), .A(n686), .S(n685), .Y(n690) );
  NAND3X1 U770 ( .A(n690), .B(n689), .C(n688), .Y(n701) );
  NAND2X1 U771 ( .A(n691), .B(cumulative[0]), .Y(n695) );
  INVX2 U772 ( .A(n692), .Y(n694) );
  MUX2X1 U773 ( .B(n695), .A(n694), .S(n693), .Y(n699) );
  AND2X2 U774 ( .A(cumulative[1]), .B(n696), .Y(n698) );
  OAI21X1 U775 ( .A(n699), .B(n698), .C(n639), .Y(n700) );
  OAI21X1 U776 ( .A(n702), .B(n701), .C(n700), .Y(n718) );
  NAND2X1 U777 ( .A(n719), .B(n718), .Y(n728) );
  INVX2 U778 ( .A(n728), .Y(n703) );
  OAI21X1 U779 ( .A(n712), .B(n722), .C(n703), .Y(n704) );
  OAI21X1 U780 ( .A(n721), .B(n713), .C(n704), .Y(n761) );
  OAI21X1 U781 ( .A(n716), .B(n715), .C(n761), .Y(n706) );
  NAND2X1 U782 ( .A(n715), .B(n716), .Y(n705) );
  NAND2X1 U783 ( .A(n706), .B(n705), .Y(n736) );
  OAI21X1 U784 ( .A(weight[7]), .B(value[7]), .C(n707), .Y(n708) );
  INVX2 U785 ( .A(n708), .Y(n709) );
  MUX2X1 U786 ( .B(n709), .A(cumulative[7]), .S(n828), .Y(n883) );
  MUX2X1 U787 ( .B(cumulative[7]), .A(n709), .S(n828), .Y(n882) );
  INVX2 U788 ( .A(n882), .Y(n710) );
  XOR2X1 U789 ( .A(n883), .B(n710), .Y(n747) );
  OAI21X1 U790 ( .A(n735), .B(n736), .C(n747), .Y(n878) );
  NAND3X1 U791 ( .A(n873), .B(n884), .C(n878), .Y(overflow) );
  NAND3X1 U792 ( .A(n884), .B(n872), .C(n873), .Y(n888) );
  XNOR2X1 U793 ( .A(N185), .B(cumulative[0]), .Y(n746) );
  INVX2 U794 ( .A(n716), .Y(n750) );
  NAND2X1 U795 ( .A(n750), .B(n715), .Y(n737) );
  INVX2 U796 ( .A(n747), .Y(n762) );
  INVX2 U797 ( .A(n719), .Y(n711) );
  NAND2X1 U798 ( .A(n711), .B(n718), .Y(n733) );
  INVX2 U799 ( .A(n733), .Y(n725) );
  NAND2X1 U800 ( .A(n721), .B(n722), .Y(n753) );
  INVX2 U801 ( .A(n753), .Y(n714) );
  NAND2X1 U802 ( .A(n713), .B(n712), .Y(n752) );
  OAI21X1 U803 ( .A(n725), .B(n714), .C(n752), .Y(n756) );
  INVX2 U804 ( .A(n715), .Y(n749) );
  NAND2X1 U805 ( .A(n749), .B(n716), .Y(n751) );
  NAND2X1 U806 ( .A(n756), .B(n751), .Y(n738) );
  NAND3X1 U807 ( .A(n410), .B(n762), .C(n738), .Y(n717) );
  INVX2 U808 ( .A(n717), .Y(n759) );
  INVX2 U809 ( .A(n718), .Y(n720) );
  NAND2X1 U810 ( .A(n720), .B(n719), .Y(n734) );
  INVX2 U811 ( .A(n734), .Y(n754) );
  XOR2X1 U812 ( .A(n722), .B(n721), .Y(n727) );
  INVX2 U813 ( .A(n727), .Y(n724) );
  XOR2X1 U814 ( .A(n754), .B(n724), .Y(n723) );
  NAND2X1 U815 ( .A(n759), .B(n723), .Y(n732) );
  NAND2X1 U816 ( .A(n410), .B(n738), .Y(n881) );
  NAND2X1 U817 ( .A(n762), .B(n881), .Y(n741) );
  INVX2 U818 ( .A(n741), .Y(n757) );
  XOR2X1 U819 ( .A(n725), .B(n724), .Y(n726) );
  NAND2X1 U820 ( .A(n757), .B(n726), .Y(n731) );
  XOR2X1 U821 ( .A(n728), .B(n727), .Y(n729) );
  NAND2X1 U822 ( .A(n729), .B(n747), .Y(n730) );
  NAND3X1 U823 ( .A(n732), .B(n731), .C(n730), .Y(n783) );
  INVX2 U824 ( .A(n783), .Y(n796) );
  NAND2X1 U825 ( .A(n734), .B(n733), .Y(n770) );
  INVX2 U826 ( .A(n770), .Y(n784) );
  XOR2X1 U827 ( .A(n736), .B(n735), .Y(n743) );
  INVX2 U828 ( .A(n737), .Y(n765) );
  INVX2 U829 ( .A(n738), .Y(n740) );
  OAI21X1 U830 ( .A(n765), .B(n740), .C(n739), .Y(n742) );
  OAI22X1 U831 ( .A(n762), .B(n743), .C(n742), .D(n741), .Y(n769) );
  NAND2X1 U832 ( .A(n769), .B(n878), .Y(n841) );
  OAI22X1 U833 ( .A(n796), .B(n878), .C(n784), .D(n841), .Y(n744) );
  INVX2 U834 ( .A(n873), .Y(n847) );
  AOI21X1 U835 ( .A(float), .B(n744), .C(n847), .Y(n745) );
  OAI21X1 U836 ( .A(n888), .B(n746), .C(n745), .Y(out[0]) );
  INVX2 U837 ( .A(n878), .Y(n866) );
  INVX2 U838 ( .A(n756), .Y(n748) );
  AOI22X1 U839 ( .A(n748), .B(n757), .C(n747), .D(n761), .Y(n768) );
  XOR2X1 U840 ( .A(n750), .B(n749), .Y(n767) );
  INVX2 U841 ( .A(n751), .Y(n764) );
  INVX2 U842 ( .A(n752), .Y(n755) );
  OAI21X1 U843 ( .A(n755), .B(n754), .C(n753), .Y(n758) );
  AOI22X1 U844 ( .A(n759), .B(n758), .C(n757), .D(n756), .Y(n760) );
  OAI21X1 U845 ( .A(n762), .B(n761), .C(n760), .Y(n763) );
  OAI21X1 U846 ( .A(n765), .B(n764), .C(n763), .Y(n766) );
  OAI21X1 U847 ( .A(n768), .B(n767), .C(n766), .Y(n817) );
  INVX2 U848 ( .A(n769), .Y(n782) );
  NAND2X1 U849 ( .A(n782), .B(n878), .Y(n815) );
  INVX2 U850 ( .A(n815), .Y(n795) );
  NAND2X1 U851 ( .A(n795), .B(n817), .Y(n863) );
  INVX2 U852 ( .A(n863), .Y(n836) );
  AOI22X1 U853 ( .A(n866), .B(n817), .C(n836), .D(n770), .Y(n771) );
  OAI21X1 U854 ( .A(n796), .B(n841), .C(n771), .Y(n772) );
  AOI21X1 U855 ( .A(float), .B(n772), .C(n847), .Y(n778) );
  INVX2 U856 ( .A(n888), .Y(n776) );
  FAX1 U857 ( .A(n774), .B(cumulative[1]), .C(n773), .YS(n775) );
  NAND2X1 U858 ( .A(n776), .B(n775), .Y(n777) );
  NAND2X1 U859 ( .A(n778), .B(n777), .Y(out[1]) );
  INVX2 U860 ( .A(n779), .Y(n781) );
  XOR2X1 U861 ( .A(cumulative[2]), .B(N187), .Y(n780) );
  XOR2X1 U862 ( .A(n781), .B(n780), .Y(n789) );
  INVX2 U863 ( .A(n817), .Y(n797) );
  OAI22X1 U864 ( .A(n782), .B(n878), .C(n797), .D(n841), .Y(n786) );
  NAND3X1 U865 ( .A(n797), .B(n795), .C(n783), .Y(n811) );
  OAI22X1 U866 ( .A(n796), .B(n863), .C(n784), .D(n811), .Y(n785) );
  OAI21X1 U867 ( .A(n786), .B(n785), .C(float), .Y(n787) );
  AND2X2 U868 ( .A(n787), .B(n873), .Y(n788) );
  OAI21X1 U869 ( .A(n789), .B(n888), .C(n788), .Y(out[2]) );
  INVX2 U870 ( .A(n790), .Y(n793) );
  XOR2X1 U871 ( .A(cumulative[3]), .B(n791), .Y(n792) );
  XOR2X1 U872 ( .A(n793), .B(n792), .Y(n804) );
  INVX2 U873 ( .A(n811), .Y(n860) );
  INVX2 U874 ( .A(n841), .Y(n794) );
  NOR2X1 U875 ( .A(n860), .B(n794), .Y(n801) );
  NAND3X1 U876 ( .A(n797), .B(n796), .C(n795), .Y(n864) );
  NAND2X1 U877 ( .A(n864), .B(n878), .Y(n810) );
  NOR2X1 U878 ( .A(n836), .B(n810), .Y(n800) );
  MUX2X1 U879 ( .B(n799), .A(n798), .S(n828), .Y(n837) );
  INVX2 U880 ( .A(n837), .Y(n818) );
  MUX2X1 U881 ( .B(n801), .A(n800), .S(n818), .Y(n802) );
  AOI21X1 U882 ( .A(float), .B(n802), .C(n847), .Y(n803) );
  OAI21X1 U883 ( .A(n804), .B(n888), .C(n803), .Y(out[3]) );
  XOR2X1 U884 ( .A(n805), .B(cumulative[4]), .Y(n808) );
  INVX2 U885 ( .A(n806), .Y(n807) );
  XOR2X1 U886 ( .A(n808), .B(n807), .Y(n823) );
  MUX2X1 U887 ( .B(n809), .A(cumulative[4]), .S(n828), .Y(n833) );
  INVX2 U888 ( .A(n833), .Y(n862) );
  NAND2X1 U889 ( .A(n837), .B(n862), .Y(n843) );
  INVX2 U890 ( .A(n810), .Y(n812) );
  OAI21X1 U891 ( .A(n818), .B(n812), .C(n811), .Y(n814) );
  OAI21X1 U892 ( .A(n812), .B(n837), .C(n841), .Y(n813) );
  MUX2X1 U893 ( .B(n814), .A(n813), .S(n862), .Y(n819) );
  NOR2X1 U894 ( .A(n862), .B(n815), .Y(n816) );
  NAND3X1 U895 ( .A(n818), .B(n817), .C(n816), .Y(n832) );
  AND2X2 U896 ( .A(n819), .B(n832), .Y(n820) );
  OAI21X1 U897 ( .A(n863), .B(n843), .C(n820), .Y(n821) );
  AOI21X1 U898 ( .A(float), .B(n821), .C(n847), .Y(n822) );
  OAI21X1 U899 ( .A(n823), .B(n888), .C(n822), .Y(out[4]) );
  INVX2 U900 ( .A(n824), .Y(n827) );
  XOR2X1 U901 ( .A(cumulative[5]), .B(n825), .Y(n826) );
  XOR2X1 U902 ( .A(n827), .B(n826), .Y(n850) );
  MUX2X1 U903 ( .B(n830), .A(n829), .S(n828), .Y(n831) );
  INVX2 U904 ( .A(n831), .Y(n865) );
  INVX2 U905 ( .A(n843), .Y(n838) );
  OAI21X1 U906 ( .A(n838), .B(n864), .C(n832), .Y(n835) );
  XOR2X1 U907 ( .A(n833), .B(n865), .Y(n861) );
  INVX2 U908 ( .A(n861), .Y(n834) );
  AOI22X1 U909 ( .A(n865), .B(n835), .C(n860), .D(n834), .Y(n846) );
  OAI21X1 U910 ( .A(n862), .B(n837), .C(n836), .Y(n842) );
  INVX2 U911 ( .A(n864), .Y(n839) );
  MUX2X1 U912 ( .B(n866), .A(n839), .S(n838), .Y(n840) );
  NAND3X1 U913 ( .A(n842), .B(n841), .C(n840), .Y(n876) );
  NOR2X1 U914 ( .A(n843), .B(n878), .Y(n844) );
  MUX2X1 U915 ( .B(n876), .A(n844), .S(n865), .Y(n845) );
  NAND2X1 U916 ( .A(n846), .B(n845), .Y(n848) );
  AOI21X1 U917 ( .A(float), .B(n848), .C(n847), .Y(n849) );
  OAI21X1 U918 ( .A(n850), .B(n888), .C(n849), .Y(out[5]) );
  XOR2X1 U919 ( .A(n851), .B(cumulative[6]), .Y(n854) );
  INVX2 U920 ( .A(n852), .Y(n853) );
  INVX2 U921 ( .A(n871), .Y(n859) );
  NAND2X1 U922 ( .A(n856), .B(n855), .Y(n870) );
  INVX2 U923 ( .A(n870), .Y(n857) );
  NAND2X1 U924 ( .A(n857), .B(n873), .Y(n858) );
  NOR2X1 U925 ( .A(n859), .B(n858), .Y(n879) );
  OAI21X1 U926 ( .A(n862), .B(n861), .C(n860), .Y(n869) );
  NAND2X1 U927 ( .A(n864), .B(n863), .Y(n867) );
  MUX2X1 U928 ( .B(n867), .A(n866), .S(n865), .Y(n868) );
  NAND3X1 U929 ( .A(n870), .B(n869), .C(n868), .Y(n875) );
  NAND3X1 U930 ( .A(n873), .B(n872), .C(n871), .Y(n874) );
  OAI21X1 U931 ( .A(n876), .B(n875), .C(n874), .Y(n877) );
  AOI21X1 U932 ( .A(n879), .B(n878), .C(n877), .Y(out[6]) );
  INVX2 U933 ( .A(n880), .Y(n889) );
  INVX2 U934 ( .A(n884), .Y(n885) );
  AOI21X1 U935 ( .A(float), .B(n886), .C(n885), .Y(n887) );
  OAI21X1 U936 ( .A(n889), .B(n888), .C(n887), .Y(out[7]) );
  NAND2X1 U937 ( .A(weight[6]), .B(n905), .Y(n902) );
  NOR2X1 U938 ( .A(N65), .B(n906), .Y(n904) );
  INVX1 U939 ( .A(n907), .Y(n906) );
  OAI21X1 U940 ( .A(value[5]), .B(weight[5]), .C(n908), .Y(n907) );
  NOR2X1 U941 ( .A(value[4]), .B(weight[4]), .Y(n909) );
  NOR2X1 U942 ( .A(n898), .B(n891), .Y(N86) );
  NOR2X1 U943 ( .A(n898), .B(n892), .Y(N85) );
  NOR2X1 U944 ( .A(n898), .B(n893), .Y(N84) );
  NOR2X1 U945 ( .A(n898), .B(n894), .Y(N83) );
  NOR2X1 U946 ( .A(n898), .B(n895), .Y(N82) );
  NOR2X1 U947 ( .A(n898), .B(n896), .Y(N81) );
  NOR2X1 U948 ( .A(n897), .B(n898), .Y(N80) );
  NOR2X1 U949 ( .A(n905), .B(n890), .Y(N78) );
  INVX1 U950 ( .A(n903), .Y(N76) );
  NAND2X1 U951 ( .A(weight[6]), .B(value[6]), .Y(n903) );
  NOR2X1 U952 ( .A(n892), .B(n905), .Y(N75) );
  NOR2X1 U953 ( .A(n893), .B(n905), .Y(N74) );
  NOR2X1 U954 ( .A(n894), .B(n905), .Y(N73) );
  NOR2X1 U955 ( .A(n905), .B(n895), .Y(N72) );
  NOR2X1 U956 ( .A(n905), .B(n896), .Y(N71) );
  NOR2X1 U957 ( .A(n897), .B(n905), .Y(N70) );
  INVX1 U958 ( .A(value[6]), .Y(n905) );
  NOR2X1 U959 ( .A(n911), .B(n890), .Y(N68) );
  NOR2X1 U960 ( .A(n911), .B(n891), .Y(N66) );
  NOR2X1 U961 ( .A(n892), .B(n911), .Y(N65) );
  NOR2X1 U962 ( .A(n911), .B(n893), .Y(N64) );
  NOR2X1 U963 ( .A(n911), .B(n894), .Y(N63) );
  NOR2X1 U964 ( .A(n911), .B(n895), .Y(N62) );
  NOR2X1 U965 ( .A(n911), .B(n896), .Y(N61) );
  NOR2X1 U966 ( .A(n897), .B(n911), .Y(N142) );
  INVX1 U967 ( .A(value[5]), .Y(n911) );
  NOR2X1 U968 ( .A(n912), .B(n890), .Y(N58) );
  NOR2X1 U969 ( .A(n912), .B(n891), .Y(N56) );
  NOR2X1 U970 ( .A(n892), .B(n912), .Y(N55) );
  INVX1 U971 ( .A(n910), .Y(N54) );
  NAND2X1 U972 ( .A(weight[4]), .B(value[4]), .Y(n910) );
  NOR2X1 U973 ( .A(n894), .B(n912), .Y(N53) );
  NOR2X1 U974 ( .A(n912), .B(n895), .Y(N52) );
  NOR2X1 U975 ( .A(n912), .B(n896), .Y(N51) );
  NOR2X1 U976 ( .A(n897), .B(n912), .Y(N50) );
  INVX1 U977 ( .A(value[4]), .Y(n912) );
  NOR2X1 U978 ( .A(n899), .B(n890), .Y(N48) );
  NOR2X1 U979 ( .A(n899), .B(n891), .Y(N46) );
  NOR2X1 U980 ( .A(n892), .B(n899), .Y(N45) );
  NOR2X1 U981 ( .A(n899), .B(n893), .Y(N44) );
  NOR2X1 U982 ( .A(n899), .B(n895), .Y(N126) );
  NOR2X1 U983 ( .A(n899), .B(n896), .Y(N125) );
  NOR2X1 U984 ( .A(n897), .B(n899), .Y(N124) );
  NOR2X1 U985 ( .A(n890), .B(n900), .Y(N38) );
  NOR2X1 U986 ( .A(n891), .B(n900), .Y(N36) );
  NOR2X1 U987 ( .A(n892), .B(n900), .Y(N35) );
  NOR2X1 U988 ( .A(n893), .B(n900), .Y(N34) );
  NOR2X1 U989 ( .A(n894), .B(n900), .Y(N33) );
  NOR2X1 U990 ( .A(n901), .B(n891), .Y(N24) );
  NOR2X1 U991 ( .A(n901), .B(n892), .Y(N23) );
  NOR2X1 U992 ( .A(n901), .B(n893), .Y(N22) );
  NOR2X1 U993 ( .A(n901), .B(n894), .Y(N21) );
endmodule

