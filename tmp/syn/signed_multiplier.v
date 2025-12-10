/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Wed Dec 10 05:55:58 2025
/////////////////////////////////////////////////////////////


module signed_multiplier_DW01_add_6 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_DW01_add_10 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

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


module signed_multiplier ( weight, value, cumulative, float, out, overflow );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, N199,
         N200, N201, N202, N203, N204, N218, N219, N220, N99, N98, N97, N96,
         N95, N94, N93, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N172, N171, N170, N169, N168, N167, N166, N165,
         N164, N163, N162, N161, N160, N159, N158, N157, N124, N119, N118,
         N117, N116, N115, N114, N113, N112, N111, N108, N101, N100, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n925, n926, n927, n928, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119;
  assign N218 = weight[0];
  assign N219 = weight[1];
  assign N220 = weight[2];

  signed_multiplier_DW01_add_6 add_0_root_add_63_7 ( .A({N172, N171, N170, 
        N169, N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, 
        N157}), .B({N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, 
        N178, N177, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N204, N203, 
        N202, N201, N200, N199, N198, N197, N196, N195, N194, N193, N192, N191, 
        N190, N189}) );
  signed_multiplier_DW01_add_10 add_2_root_add_63_7 ( .A({n441, n441, n441, 
        n441, n441, n441, n441, N101, N100, N99, N98, N97, N96, N95, N94, N93}), .B({n440, n440, n440, n440, n440, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, 1'b0, 1'b0}), .CI(1'b0), .SUM({N172, N171, N170, N169, 
        N168, N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157}) );
  BUFX2 U421 ( .A(N124), .Y(n440) );
  BUFX2 U422 ( .A(N108), .Y(n441) );
  NAND3X1 U423 ( .A(n442), .B(n443), .C(n444), .Y(overflow) );
  OAI21X1 U424 ( .A(n445), .B(n446), .C(n447), .Y(out[7]) );
  AOI21X1 U425 ( .A(n448), .B(float), .C(n449), .Y(n447) );
  MUX2X1 U426 ( .B(n450), .A(n451), .S(n452), .Y(n448) );
  OAI21X1 U427 ( .A(n453), .B(n446), .C(n454), .Y(out[6]) );
  AOI21X1 U428 ( .A(n455), .B(float), .C(n456), .Y(n454) );
  MUX2X1 U429 ( .B(n457), .A(n458), .S(n459), .Y(n455) );
  NOR2X1 U430 ( .A(n460), .B(n461), .Y(n459) );
  NOR2X1 U431 ( .A(n462), .B(n463), .Y(n458) );
  OAI22X1 U432 ( .A(n444), .B(n464), .C(n465), .D(n466), .Y(n463) );
  NOR2X1 U433 ( .A(n467), .B(n468), .Y(n457) );
  OAI21X1 U434 ( .A(n469), .B(n466), .C(n470), .Y(n468) );
  MUX2X1 U435 ( .B(n471), .A(n472), .S(n464), .Y(n470) );
  NAND2X1 U436 ( .A(n473), .B(n474), .Y(n471) );
  NOR2X1 U437 ( .A(n475), .B(n465), .Y(n469) );
  OAI21X1 U438 ( .A(n449), .B(n476), .C(n477), .Y(out[5]) );
  AOI21X1 U439 ( .A(float), .B(n478), .C(n456), .Y(n477) );
  OAI21X1 U440 ( .A(n475), .B(n466), .C(n479), .Y(n478) );
  MUX2X1 U441 ( .B(n467), .A(n480), .S(n464), .Y(n479) );
  OAI21X1 U442 ( .A(n444), .B(n481), .C(n482), .Y(n480) );
  INVX1 U443 ( .A(n462), .Y(n482) );
  OAI21X1 U444 ( .A(n483), .B(n474), .C(n484), .Y(n462) );
  NAND3X1 U445 ( .A(n485), .B(n486), .C(n487), .Y(n467) );
  INVX1 U446 ( .A(n488), .Y(n487) );
  MUX2X1 U447 ( .B(n444), .A(n474), .S(n483), .Y(n488) );
  INVX1 U448 ( .A(n481), .Y(n483) );
  OAI21X1 U449 ( .A(n489), .B(n465), .C(n490), .Y(n485) );
  XOR2X1 U450 ( .A(n491), .B(n464), .Y(n475) );
  MUX2X1 U451 ( .B(cumulative[5]), .A(n492), .S(n493), .Y(n464) );
  OAI21X1 U452 ( .A(n494), .B(n446), .C(n495), .Y(out[4]) );
  AND2X1 U453 ( .A(n496), .B(n442), .Y(n495) );
  OAI21X1 U454 ( .A(n497), .B(n498), .C(float), .Y(n496) );
  OAI21X1 U455 ( .A(n473), .B(n481), .C(n499), .Y(n498) );
  MUX2X1 U456 ( .B(n500), .A(n501), .S(n465), .Y(n499) );
  NAND2X1 U457 ( .A(n489), .B(n465), .Y(n481) );
  INVX1 U458 ( .A(n491), .Y(n465) );
  OAI21X1 U459 ( .A(n502), .B(n503), .C(n484), .Y(n497) );
  NAND3X1 U460 ( .A(n491), .B(n504), .C(n490), .Y(n484) );
  XOR2X1 U461 ( .A(n491), .B(n489), .Y(n503) );
  MUX2X1 U462 ( .B(n505), .A(cumulative[4]), .S(n460), .Y(n491) );
  INVX1 U463 ( .A(n506), .Y(n502) );
  OAI21X1 U464 ( .A(n449), .B(n507), .C(n508), .Y(out[3]) );
  AOI21X1 U465 ( .A(n509), .B(float), .C(n456), .Y(n508) );
  MUX2X1 U466 ( .B(n510), .A(n511), .S(n504), .Y(n509) );
  INVX1 U467 ( .A(n489), .Y(n504) );
  MUX2X1 U468 ( .B(n512), .A(n513), .S(n460), .Y(n489) );
  NOR2X1 U469 ( .A(n490), .B(n506), .Y(n511) );
  NAND2X1 U470 ( .A(n444), .B(n474), .Y(n506) );
  NAND3X1 U471 ( .A(n514), .B(n515), .C(n516), .Y(n474) );
  NOR2X1 U472 ( .A(n500), .B(n501), .Y(n510) );
  INVX1 U473 ( .A(n486), .Y(n501) );
  INVX1 U474 ( .A(n466), .Y(n500) );
  INVX1 U475 ( .A(n443), .Y(n449) );
  OAI21X1 U476 ( .A(n517), .B(n446), .C(n518), .Y(out[2]) );
  AND2X1 U477 ( .A(n519), .B(n442), .Y(n518) );
  OAI21X1 U478 ( .A(n520), .B(n521), .C(float), .Y(n519) );
  OAI22X1 U479 ( .A(n514), .B(n486), .C(n516), .D(n473), .Y(n521) );
  OAI22X1 U480 ( .A(n522), .B(n466), .C(n444), .D(n523), .Y(n520) );
  XNOR2X1 U481 ( .A(n524), .B(n525), .Y(n523) );
  NOR2X1 U482 ( .A(n514), .B(n516), .Y(n525) );
  NAND3X1 U483 ( .A(n515), .B(n526), .C(n514), .Y(n466) );
  OAI21X1 U484 ( .A(n527), .B(n446), .C(n528), .Y(out[1]) );
  AOI21X1 U485 ( .A(float), .B(n529), .C(n456), .Y(n528) );
  OAI21X1 U486 ( .A(n516), .B(n486), .C(n530), .Y(n529) );
  AOI22X1 U487 ( .A(n531), .B(n472), .C(n490), .D(n532), .Y(n530) );
  INVX1 U488 ( .A(n473), .Y(n490) );
  NAND2X1 U489 ( .A(n515), .B(n533), .Y(n473) );
  NOR2X1 U490 ( .A(n524), .B(n472), .Y(n515) );
  XOR2X1 U491 ( .A(n516), .B(n514), .Y(n531) );
  INVX1 U492 ( .A(n533), .Y(n514) );
  OAI21X1 U493 ( .A(n534), .B(n535), .C(n536), .Y(n533) );
  OAI21X1 U494 ( .A(n537), .B(n538), .C(n539), .Y(n536) );
  OAI21X1 U495 ( .A(n540), .B(n541), .C(n542), .Y(n539) );
  AOI22X1 U496 ( .A(n543), .B(n544), .C(n545), .D(n546), .Y(n542) );
  INVX1 U497 ( .A(n547), .Y(n546) );
  OAI21X1 U498 ( .A(n548), .B(n549), .C(n550), .Y(n544) );
  XOR2X1 U499 ( .A(n551), .B(n552), .Y(n535) );
  AOI22X1 U500 ( .A(n547), .B(n545), .C(n553), .D(n540), .Y(n534) );
  INVX1 U501 ( .A(n526), .Y(n516) );
  INVX1 U502 ( .A(n554), .Y(n527) );
  OAI21X1 U503 ( .A(n555), .B(n446), .C(n556), .Y(out[0]) );
  AOI21X1 U504 ( .A(float), .B(n557), .C(n456), .Y(n556) );
  INVX1 U505 ( .A(n442), .Y(n456) );
  OAI22X1 U506 ( .A(n444), .B(n526), .C(n522), .D(n486), .Y(n557) );
  NAND2X1 U507 ( .A(n444), .B(n524), .Y(n486) );
  OAI21X1 U508 ( .A(n558), .B(n559), .C(n560), .Y(n524) );
  AOI22X1 U509 ( .A(n561), .B(n562), .C(n563), .D(n564), .Y(n560) );
  OAI21X1 U510 ( .A(n541), .B(n565), .C(n566), .Y(n562) );
  OAI21X1 U511 ( .A(n567), .B(n538), .C(n545), .Y(n566) );
  INVX1 U512 ( .A(n568), .Y(n538) );
  NOR2X1 U513 ( .A(n537), .B(n547), .Y(n567) );
  AOI21X1 U514 ( .A(n569), .B(n550), .C(n548), .Y(n547) );
  INVX1 U515 ( .A(n570), .Y(n550) );
  INVX1 U516 ( .A(n571), .Y(n537) );
  INVX1 U517 ( .A(n572), .Y(n561) );
  INVX1 U518 ( .A(n532), .Y(n522) );
  NAND2X1 U519 ( .A(n569), .B(n573), .Y(n532) );
  OAI21X1 U520 ( .A(n574), .B(n575), .C(n576), .Y(n526) );
  OAI21X1 U521 ( .A(n570), .B(n548), .C(n577), .Y(n576) );
  OAI21X1 U522 ( .A(n578), .B(n541), .C(n579), .Y(n577) );
  AOI22X1 U523 ( .A(n543), .B(n573), .C(n545), .D(n569), .Y(n579) );
  INVX1 U524 ( .A(n549), .Y(n573) );
  XOR2X1 U525 ( .A(n580), .B(n581), .Y(n575) );
  INVX1 U526 ( .A(n582), .Y(n574) );
  OAI21X1 U527 ( .A(n541), .B(n583), .C(n584), .Y(n582) );
  AOI22X1 U528 ( .A(n585), .B(n545), .C(n549), .D(n543), .Y(n584) );
  NOR2X1 U529 ( .A(n452), .B(n553), .Y(n543) );
  NOR2X1 U530 ( .A(n586), .B(n587), .Y(n549) );
  AND2X1 U531 ( .A(n541), .B(n452), .Y(n545) );
  OAI21X1 U532 ( .A(n588), .B(n589), .C(n572), .Y(n452) );
  NAND2X1 U533 ( .A(n590), .B(n558), .Y(n572) );
  OAI21X1 U534 ( .A(n548), .B(n591), .C(n571), .Y(n589) );
  NAND2X1 U535 ( .A(n552), .B(n592), .Y(n571) );
  INVX1 U536 ( .A(n593), .Y(n552) );
  OAI21X1 U537 ( .A(n585), .B(n570), .C(n568), .Y(n591) );
  NAND2X1 U538 ( .A(n593), .B(n551), .Y(n568) );
  NOR2X1 U539 ( .A(n581), .B(n594), .Y(n570) );
  AND2X1 U540 ( .A(n581), .B(n594), .Y(n548) );
  NOR2X1 U541 ( .A(n558), .B(n590), .Y(n588) );
  INVX1 U542 ( .A(n569), .Y(n585) );
  NAND2X1 U543 ( .A(n587), .B(n586), .Y(n569) );
  INVX1 U544 ( .A(n595), .Y(n587) );
  INVX1 U545 ( .A(n553), .Y(n541) );
  INVX1 U546 ( .A(n472), .Y(n444) );
  OAI21X1 U547 ( .A(n558), .B(n596), .C(n559), .Y(n472) );
  NAND2X1 U548 ( .A(n553), .B(n565), .Y(n559) );
  OAI21X1 U549 ( .A(n551), .B(n597), .C(n598), .Y(n565) );
  OAI21X1 U550 ( .A(n540), .B(n592), .C(n593), .Y(n598) );
  MUX2X1 U551 ( .B(n599), .A(n600), .S(n460), .Y(n593) );
  INVX1 U552 ( .A(cumulative[2]), .Y(n600) );
  INVX1 U553 ( .A(n540), .Y(n597) );
  OAI21X1 U554 ( .A(n594), .B(n583), .C(n601), .Y(n540) );
  OAI21X1 U555 ( .A(n578), .B(n580), .C(n581), .Y(n601) );
  MUX2X1 U556 ( .B(n602), .A(n603), .S(n460), .Y(n581) );
  INVX1 U557 ( .A(cumulative[1]), .Y(n603) );
  INVX1 U558 ( .A(n583), .Y(n578) );
  NAND2X1 U559 ( .A(n595), .B(n586), .Y(n583) );
  OAI21X1 U560 ( .A(n604), .B(n605), .C(n606), .Y(n586) );
  NAND3X1 U561 ( .A(n607), .B(n608), .C(n609), .Y(n606) );
  NOR2X1 U562 ( .A(n610), .B(n493), .Y(n609) );
  AOI22X1 U563 ( .A(n611), .B(n599), .C(n612), .D(n602), .Y(n607) );
  NAND2X1 U564 ( .A(n608), .B(n613), .Y(n602) );
  MUX2X1 U565 ( .B(n614), .A(n615), .S(n616), .Y(n613) );
  AOI21X1 U566 ( .A(cumulative[2]), .B(n617), .C(n618), .Y(n604) );
  MUX2X1 U567 ( .B(n619), .A(n620), .S(n611), .Y(n618) );
  NAND2X1 U568 ( .A(n621), .B(cumulative[0]), .Y(n620) );
  MUX2X1 U569 ( .B(n622), .A(n623), .S(n460), .Y(n595) );
  NAND2X1 U570 ( .A(n608), .B(n624), .Y(n622) );
  MUX2X1 U571 ( .B(n615), .A(n625), .S(n616), .Y(n624) );
  INVX1 U572 ( .A(n580), .Y(n594) );
  OAI21X1 U573 ( .A(n626), .B(n627), .C(n628), .Y(n580) );
  MUX2X1 U574 ( .B(n629), .A(n630), .S(n611), .Y(n628) );
  NOR2X1 U575 ( .A(n619), .B(n605), .Y(n630) );
  NOR2X1 U576 ( .A(n617), .B(cumulative[1]), .Y(n619) );
  INVX1 U577 ( .A(n631), .Y(n629) );
  NAND2X1 U578 ( .A(n460), .B(n632), .Y(n627) );
  NAND2X1 U579 ( .A(n608), .B(n633), .Y(n626) );
  OAI21X1 U580 ( .A(n634), .B(n599), .C(n635), .Y(n633) );
  NAND2X1 U581 ( .A(n608), .B(n636), .Y(n599) );
  MUX2X1 U582 ( .B(n637), .A(n614), .S(n616), .Y(n636) );
  INVX1 U583 ( .A(n592), .Y(n551) );
  OAI21X1 U584 ( .A(n611), .B(n638), .C(n631), .Y(n592) );
  NAND3X1 U585 ( .A(n621), .B(cumulative[2]), .C(n639), .Y(n631) );
  INVX1 U586 ( .A(n635), .Y(n611) );
  NAND2X1 U587 ( .A(n553), .B(n590), .Y(n596) );
  INVX1 U588 ( .A(n563), .Y(n590) );
  NOR2X1 U589 ( .A(n608), .B(n460), .Y(n563) );
  XNOR2X1 U590 ( .A(n451), .B(n450), .Y(n553) );
  MUX2X1 U591 ( .B(cumulative[7]), .A(n640), .S(n460), .Y(n450) );
  MUX2X1 U592 ( .B(n640), .A(cumulative[7]), .S(n460), .Y(n451) );
  INVX1 U593 ( .A(n641), .Y(n640) );
  OAI21X1 U594 ( .A(weight[7]), .B(value[7]), .C(n642), .Y(n641) );
  INVX1 U595 ( .A(n564), .Y(n558) );
  NOR2X1 U596 ( .A(n635), .B(n638), .Y(n564) );
  AOI22X1 U597 ( .A(n621), .B(n639), .C(n608), .D(n643), .Y(n638) );
  INVX1 U598 ( .A(n634), .Y(n643) );
  NAND2X1 U599 ( .A(n632), .B(n612), .Y(n634) );
  XOR2X1 U600 ( .A(n644), .B(n645), .Y(n612) );
  INVX1 U601 ( .A(n610), .Y(n632) );
  NAND3X1 U602 ( .A(n646), .B(n647), .C(n648), .Y(n610) );
  AOI21X1 U603 ( .A(n649), .B(n461), .C(n650), .Y(n648) );
  XNOR2X1 U604 ( .A(n649), .B(n651), .Y(n650) );
  NOR2X1 U605 ( .A(n652), .B(cumulative[5]), .Y(n649) );
  MUX2X1 U606 ( .B(n653), .A(n654), .S(n655), .Y(n646) );
  OAI21X1 U607 ( .A(n656), .B(n505), .C(n657), .Y(n655) );
  OAI21X1 U608 ( .A(n658), .B(n645), .C(cumulative[4]), .Y(n657) );
  INVX1 U609 ( .A(n605), .Y(n639) );
  NAND3X1 U610 ( .A(n659), .B(n660), .C(n661), .Y(n605) );
  AOI21X1 U611 ( .A(n662), .B(n663), .C(n664), .Y(n661) );
  NAND2X1 U612 ( .A(n665), .B(n493), .Y(n664) );
  INVX1 U613 ( .A(n460), .Y(n493) );
  NOR2X1 U614 ( .A(n663), .B(n662), .Y(n460) );
  OAI21X1 U615 ( .A(n513), .B(n666), .C(n667), .Y(n665) );
  OAI21X1 U616 ( .A(n668), .B(n669), .C(cumulative[6]), .Y(n663) );
  INVX1 U617 ( .A(n647), .Y(n662) );
  OAI21X1 U618 ( .A(n670), .B(n671), .C(n672), .Y(n647) );
  OAI21X1 U619 ( .A(n673), .B(n674), .C(n675), .Y(n672) );
  NOR2X1 U620 ( .A(value[6]), .B(weight[6]), .Y(n674) );
  XOR2X1 U621 ( .A(n651), .B(n669), .Y(n660) );
  AOI22X1 U622 ( .A(n676), .B(n492), .C(n677), .D(n678), .Y(n669) );
  XOR2X1 U623 ( .A(n667), .B(n461), .Y(n651) );
  INVX1 U624 ( .A(n668), .Y(n461) );
  MUX2X1 U625 ( .B(n679), .A(n670), .S(n671), .Y(n668) );
  OAI21X1 U626 ( .A(weight[6]), .B(n680), .C(n681), .Y(n671) );
  MUX2X1 U627 ( .B(n682), .A(n683), .S(n673), .Y(n681) );
  NOR2X1 U628 ( .A(n673), .B(n683), .Y(n680) );
  AND2X1 U629 ( .A(n684), .B(n685), .Y(n673) );
  OAI21X1 U630 ( .A(value[5]), .B(weight[5]), .C(n686), .Y(n685) );
  INVX1 U631 ( .A(n687), .Y(n670) );
  OAI21X1 U632 ( .A(n688), .B(n689), .C(n608), .Y(n687) );
  NOR2X1 U633 ( .A(n616), .B(n690), .Y(n689) );
  NAND2X1 U634 ( .A(n691), .B(n692), .Y(n690) );
  AND2X1 U635 ( .A(n608), .B(n693), .Y(n679) );
  OAI21X1 U636 ( .A(n688), .B(n694), .C(n695), .Y(n693) );
  AND2X1 U637 ( .A(n692), .B(n691), .Y(n695) );
  AND2X1 U638 ( .A(n696), .B(n692), .Y(n688) );
  NOR2X1 U639 ( .A(n697), .B(n698), .Y(n608) );
  INVX1 U640 ( .A(cumulative[6]), .Y(n667) );
  INVX1 U641 ( .A(n699), .Y(n659) );
  MUX2X1 U642 ( .B(n654), .A(n653), .S(n678), .Y(n699) );
  OAI21X1 U643 ( .A(n658), .B(n700), .C(n701), .Y(n678) );
  OAI21X1 U644 ( .A(n702), .B(n505), .C(n666), .Y(n701) );
  XOR2X1 U645 ( .A(n492), .B(n676), .Y(n653) );
  INVX1 U646 ( .A(cumulative[5]), .Y(n676) );
  INVX1 U647 ( .A(n652), .Y(n492) );
  OAI21X1 U648 ( .A(cumulative[5]), .B(n652), .C(n677), .Y(n654) );
  NAND2X1 U649 ( .A(n652), .B(cumulative[5]), .Y(n677) );
  NOR2X1 U650 ( .A(n703), .B(n697), .Y(n652) );
  INVX1 U651 ( .A(n704), .Y(n703) );
  MUX2X1 U652 ( .B(n705), .A(n706), .S(n692), .Y(n704) );
  OAI21X1 U653 ( .A(n707), .B(n684), .C(n708), .Y(n692) );
  MUX2X1 U654 ( .B(n709), .A(n710), .S(weight[5]), .Y(n708) );
  NOR2X1 U655 ( .A(value[5]), .B(n686), .Y(n710) );
  XOR2X1 U656 ( .A(n686), .B(value[5]), .Y(n709) );
  INVX1 U657 ( .A(n686), .Y(n707) );
  OAI21X1 U658 ( .A(n711), .B(n712), .C(n713), .Y(n686) );
  NOR2X1 U659 ( .A(value[4]), .B(weight[4]), .Y(n711) );
  OAI21X1 U660 ( .A(n696), .B(n694), .C(n691), .Y(n706) );
  NOR2X1 U661 ( .A(n714), .B(n715), .Y(n696) );
  NOR2X1 U662 ( .A(n715), .B(n716), .Y(n705) );
  INVX1 U663 ( .A(n617), .Y(n621) );
  XOR2X1 U664 ( .A(n644), .B(n700), .Y(n617) );
  INVX1 U665 ( .A(n702), .Y(n700) );
  XOR2X1 U666 ( .A(n505), .B(cumulative[4]), .Y(n644) );
  INVX1 U667 ( .A(n658), .Y(n505) );
  NOR2X1 U668 ( .A(n717), .B(n697), .Y(n658) );
  MUX2X1 U669 ( .B(n718), .A(n716), .S(n715), .Y(n717) );
  INVX1 U670 ( .A(n691), .Y(n715) );
  OAI21X1 U671 ( .A(n712), .B(n713), .C(n719), .Y(n691) );
  MUX2X1 U672 ( .B(n720), .A(n721), .S(weight[4]), .Y(n719) );
  NOR2X1 U673 ( .A(value[4]), .B(n722), .Y(n721) );
  XOR2X1 U674 ( .A(n723), .B(n712), .Y(n720) );
  AND2X1 U675 ( .A(n714), .B(n616), .Y(n716) );
  NAND2X1 U676 ( .A(n645), .B(n702), .Y(n635) );
  NAND2X1 U677 ( .A(n512), .B(cumulative[3]), .Y(n702) );
  INVX1 U678 ( .A(n656), .Y(n645) );
  NOR2X1 U679 ( .A(n512), .B(cumulative[3]), .Y(n656) );
  NOR2X1 U680 ( .A(n697), .B(n724), .Y(n512) );
  OAI21X1 U681 ( .A(n714), .B(n616), .C(n718), .Y(n724) );
  NAND2X1 U682 ( .A(n714), .B(n616), .Y(n718) );
  XNOR2X1 U683 ( .A(value[3]), .B(weight[3]), .Y(n714) );
  OAI21X1 U684 ( .A(value[6]), .B(n725), .C(n726), .Y(n697) );
  OAI21X1 U685 ( .A(n727), .B(n728), .C(n729), .Y(n726) );
  INVX1 U686 ( .A(weight[6]), .Y(n729) );
  NAND2X1 U687 ( .A(weight[4]), .B(weight[3]), .Y(n728) );
  INVX1 U688 ( .A(weight[5]), .Y(n727) );
  NOR2X1 U689 ( .A(n730), .B(n731), .Y(n725) );
  NAND2X1 U690 ( .A(value[4]), .B(value[3]), .Y(n731) );
  NAND3X1 U691 ( .A(n443), .B(n698), .C(n442), .Y(n446) );
  OAI21X1 U692 ( .A(n732), .B(n733), .C(n734), .Y(n442) );
  INVX1 U693 ( .A(n735), .Y(n734) );
  NAND2X1 U694 ( .A(n736), .B(n737), .Y(n733) );
  INVX1 U695 ( .A(n738), .Y(n737) );
  NAND3X1 U696 ( .A(n739), .B(n740), .C(n741), .Y(n732) );
  INVX1 U697 ( .A(n742), .Y(n741) );
  OAI21X1 U698 ( .A(n743), .B(n744), .C(n698), .Y(n740) );
  OR2X1 U699 ( .A(n745), .B(n746), .Y(n744) );
  NAND2X1 U700 ( .A(n747), .B(n748), .Y(n743) );
  INVX1 U701 ( .A(n749), .Y(n748) );
  OAI21X1 U702 ( .A(n750), .B(n751), .C(n752), .Y(n749) );
  NAND3X1 U703 ( .A(n753), .B(n754), .C(n755), .Y(n751) );
  INVX1 U704 ( .A(n507), .Y(n755) );
  INVX1 U705 ( .A(n476), .Y(n754) );
  NAND3X1 U706 ( .A(n756), .B(n554), .C(n757), .Y(n750) );
  NOR2X1 U707 ( .A(n494), .B(n517), .Y(n757) );
  INVX1 U708 ( .A(n453), .Y(n756) );
  INVX1 U709 ( .A(n758), .Y(n739) );
  OAI21X1 U710 ( .A(n759), .B(n760), .C(n735), .Y(n443) );
  XOR2X1 U711 ( .A(n761), .B(n762), .Y(n735) );
  XOR2X1 U712 ( .A(n763), .B(n764), .Y(n762) );
  NAND2X1 U713 ( .A(N204), .B(n698), .Y(n764) );
  OAI21X1 U714 ( .A(n765), .B(n766), .C(n767), .Y(n761) );
  OAI21X1 U715 ( .A(n768), .B(n769), .C(cumulative[7]), .Y(n767) );
  INVX1 U716 ( .A(n766), .Y(n768) );
  NAND3X1 U717 ( .A(n746), .B(n758), .C(n770), .Y(n760) );
  NOR2X1 U718 ( .A(n747), .B(n752), .Y(n770) );
  XOR2X1 U719 ( .A(n771), .B(n772), .Y(n752) );
  XOR2X1 U720 ( .A(cumulative[7]), .B(N199), .Y(n772) );
  XNOR2X1 U721 ( .A(n773), .B(n774), .Y(n747) );
  XOR2X1 U722 ( .A(cumulative[7]), .B(N198), .Y(n774) );
  XOR2X1 U723 ( .A(n775), .B(n776), .Y(n758) );
  XOR2X1 U724 ( .A(n763), .B(n777), .Y(n776) );
  XOR2X1 U725 ( .A(n778), .B(n779), .Y(n746) );
  XOR2X1 U726 ( .A(n763), .B(n780), .Y(n779) );
  NAND3X1 U727 ( .A(n742), .B(n738), .C(n781), .Y(n759) );
  NOR2X1 U728 ( .A(n736), .B(n782), .Y(n781) );
  OAI21X1 U729 ( .A(n783), .B(n784), .C(n745), .Y(n782) );
  INVX1 U730 ( .A(n445), .Y(n745) );
  XOR2X1 U731 ( .A(n785), .B(n616), .Y(n445) );
  XOR2X1 U732 ( .A(n786), .B(cumulative[7]), .Y(n785) );
  NAND3X1 U733 ( .A(n494), .B(n453), .C(n517), .Y(n784) );
  XOR2X1 U734 ( .A(n787), .B(n788), .Y(n517) );
  XOR2X1 U735 ( .A(cumulative[2]), .B(n789), .Y(n788) );
  XOR2X1 U736 ( .A(n790), .B(n637), .Y(n453) );
  XOR2X1 U737 ( .A(n791), .B(cumulative[6]), .Y(n790) );
  XOR2X1 U738 ( .A(n792), .B(n615), .Y(n494) );
  XOR2X1 U739 ( .A(n666), .B(n793), .Y(n792) );
  INVX1 U740 ( .A(cumulative[4]), .Y(n666) );
  NAND3X1 U741 ( .A(n476), .B(n507), .C(n794), .Y(n783) );
  NOR2X1 U742 ( .A(n753), .B(n554), .Y(n794) );
  XOR2X1 U743 ( .A(n795), .B(n796), .Y(n554) );
  XOR2X1 U744 ( .A(n797), .B(cumulative[1]), .Y(n795) );
  INVX1 U745 ( .A(n555), .Y(n753) );
  NAND2X1 U746 ( .A(n798), .B(n698), .Y(n507) );
  XOR2X1 U747 ( .A(n625), .B(n799), .Y(n798) );
  XOR2X1 U748 ( .A(n513), .B(n800), .Y(n799) );
  INVX1 U749 ( .A(cumulative[3]), .Y(n513) );
  NAND2X1 U750 ( .A(n801), .B(n698), .Y(n476) );
  XOR2X1 U751 ( .A(n614), .B(n802), .Y(n801) );
  XOR2X1 U752 ( .A(cumulative[5]), .B(n803), .Y(n802) );
  XOR2X1 U753 ( .A(n765), .B(n804), .Y(n736) );
  XOR2X1 U754 ( .A(n763), .B(n766), .Y(n804) );
  NAND2X1 U755 ( .A(N203), .B(n698), .Y(n766) );
  INVX1 U756 ( .A(n769), .Y(n765) );
  OAI21X1 U757 ( .A(n805), .B(n806), .C(n807), .Y(n769) );
  OAI21X1 U758 ( .A(n808), .B(n809), .C(cumulative[7]), .Y(n807) );
  INVX1 U759 ( .A(n806), .Y(n808) );
  INVX1 U760 ( .A(n809), .Y(n805) );
  XOR2X1 U761 ( .A(n809), .B(n810), .Y(n738) );
  XOR2X1 U762 ( .A(n763), .B(n806), .Y(n810) );
  NAND2X1 U763 ( .A(N202), .B(n698), .Y(n806) );
  OAI21X1 U764 ( .A(n811), .B(n812), .C(n813), .Y(n809) );
  OAI21X1 U765 ( .A(n814), .B(n815), .C(cumulative[7]), .Y(n813) );
  INVX1 U766 ( .A(n812), .Y(n814) );
  INVX1 U767 ( .A(n815), .Y(n811) );
  XOR2X1 U768 ( .A(n815), .B(n816), .Y(n742) );
  XOR2X1 U769 ( .A(n763), .B(n812), .Y(n816) );
  NAND2X1 U770 ( .A(N201), .B(n698), .Y(n812) );
  INVX1 U771 ( .A(cumulative[7]), .Y(n763) );
  OAI21X1 U772 ( .A(n817), .B(n777), .C(n818), .Y(n815) );
  OAI21X1 U773 ( .A(n819), .B(n775), .C(cumulative[7]), .Y(n818) );
  INVX1 U774 ( .A(n777), .Y(n819) );
  NAND2X1 U775 ( .A(N200), .B(n698), .Y(n777) );
  INVX1 U776 ( .A(n775), .Y(n817) );
  OAI21X1 U777 ( .A(n771), .B(n820), .C(n821), .Y(n775) );
  OAI21X1 U778 ( .A(N199), .B(n822), .C(cumulative[7]), .Y(n821) );
  INVX1 U779 ( .A(n771), .Y(n822) );
  INVX1 U780 ( .A(N199), .Y(n820) );
  AOI21X1 U781 ( .A(n773), .B(N198), .C(n823), .Y(n771) );
  INVX1 U782 ( .A(n824), .Y(n823) );
  OAI21X1 U783 ( .A(N198), .B(n773), .C(cumulative[7]), .Y(n824) );
  OAI21X1 U784 ( .A(n825), .B(n780), .C(n826), .Y(n773) );
  OAI21X1 U785 ( .A(n827), .B(n778), .C(cumulative[7]), .Y(n826) );
  INVX1 U786 ( .A(n780), .Y(n827) );
  NAND2X1 U787 ( .A(N197), .B(n698), .Y(n780) );
  INVX1 U788 ( .A(float), .Y(n698) );
  INVX1 U789 ( .A(n778), .Y(n825) );
  OAI21X1 U790 ( .A(n828), .B(n616), .C(n829), .Y(n778) );
  OAI21X1 U791 ( .A(n694), .B(n786), .C(cumulative[7]), .Y(n829) );
  INVX1 U792 ( .A(n694), .Y(n616) );
  MUX2X1 U793 ( .B(n830), .A(n831), .S(float), .Y(n694) );
  NOR2X1 U794 ( .A(n832), .B(n833), .Y(n831) );
  INVX1 U795 ( .A(N196), .Y(n830) );
  INVX1 U796 ( .A(n786), .Y(n828) );
  OAI21X1 U797 ( .A(n834), .B(n637), .C(n835), .Y(n786) );
  OAI21X1 U798 ( .A(n836), .B(n791), .C(cumulative[6]), .Y(n835) );
  INVX1 U799 ( .A(n836), .Y(n637) );
  MUX2X1 U800 ( .B(n837), .A(n838), .S(float), .Y(n836) );
  XOR2X1 U801 ( .A(n832), .B(n833), .Y(n838) );
  OAI21X1 U802 ( .A(n839), .B(n840), .C(n841), .Y(n833) );
  OAI21X1 U803 ( .A(n842), .B(n843), .C(n844), .Y(n841) );
  NAND2X1 U804 ( .A(n845), .B(n846), .Y(n832) );
  INVX1 U805 ( .A(N195), .Y(n837) );
  INVX1 U806 ( .A(n791), .Y(n834) );
  OAI21X1 U807 ( .A(n803), .B(n614), .C(n847), .Y(n791) );
  OAI21X1 U808 ( .A(n848), .B(n849), .C(cumulative[5]), .Y(n847) );
  INVX1 U809 ( .A(n848), .Y(n614) );
  MUX2X1 U810 ( .B(n850), .A(n851), .S(float), .Y(n848) );
  XOR2X1 U811 ( .A(n852), .B(n839), .Y(n851) );
  INVX1 U812 ( .A(n843), .Y(n839) );
  OAI21X1 U813 ( .A(n853), .B(n854), .C(n855), .Y(n843) );
  OAI21X1 U814 ( .A(n856), .B(n857), .C(n858), .Y(n855) );
  XOR2X1 U815 ( .A(n842), .B(n844), .Y(n852) );
  OAI21X1 U816 ( .A(n846), .B(n845), .C(n859), .Y(n844) );
  MUX2X1 U817 ( .B(n860), .A(n861), .S(N220), .Y(n859) );
  AND2X1 U818 ( .A(n845), .B(value[2]), .Y(n860) );
  OAI21X1 U819 ( .A(n862), .B(n863), .C(N219), .Y(n845) );
  INVX1 U820 ( .A(n846), .Y(n863) );
  INVX1 U821 ( .A(n840), .Y(n842) );
  INVX1 U822 ( .A(N194), .Y(n850) );
  INVX1 U823 ( .A(n849), .Y(n803) );
  OAI21X1 U824 ( .A(n793), .B(n615), .C(n864), .Y(n849) );
  OAI21X1 U825 ( .A(n865), .B(n866), .C(cumulative[4]), .Y(n864) );
  INVX1 U826 ( .A(n865), .Y(n615) );
  MUX2X1 U827 ( .B(n867), .A(n868), .S(float), .Y(n865) );
  XOR2X1 U828 ( .A(n858), .B(n869), .Y(n868) );
  XOR2X1 U829 ( .A(n853), .B(n856), .Y(n869) );
  INVX1 U830 ( .A(n854), .Y(n856) );
  NAND2X1 U831 ( .A(value[1]), .B(n840), .Y(n854) );
  NAND2X1 U832 ( .A(value[0]), .B(n870), .Y(n840) );
  INVX1 U833 ( .A(n857), .Y(n853) );
  OAI21X1 U834 ( .A(n871), .B(n872), .C(n873), .Y(n857) );
  OAI21X1 U835 ( .A(n874), .B(n875), .C(n876), .Y(n873) );
  INVX1 U836 ( .A(n872), .Y(n874) );
  XNOR2X1 U837 ( .A(n877), .B(n862), .Y(n858) );
  XOR2X1 U838 ( .A(n846), .B(N219), .Y(n877) );
  INVX1 U839 ( .A(N193), .Y(n867) );
  INVX1 U840 ( .A(n866), .Y(n793) );
  OAI21X1 U841 ( .A(n878), .B(n625), .C(n879), .Y(n866) );
  OAI21X1 U842 ( .A(n880), .B(n800), .C(cumulative[3]), .Y(n879) );
  INVX1 U843 ( .A(n880), .Y(n625) );
  MUX2X1 U844 ( .B(n881), .A(n882), .S(float), .Y(n880) );
  XOR2X1 U845 ( .A(n871), .B(n876), .Y(n882) );
  XOR2X1 U846 ( .A(n883), .B(n884), .Y(n876) );
  INVX1 U847 ( .A(n875), .Y(n871) );
  MUX2X1 U848 ( .B(n885), .A(n886), .S(value[0]), .Y(n875) );
  INVX1 U849 ( .A(N192), .Y(n881) );
  INVX1 U850 ( .A(n800), .Y(n878) );
  OAI21X1 U851 ( .A(n789), .B(n887), .C(n888), .Y(n800) );
  OAI21X1 U852 ( .A(n787), .B(n889), .C(cumulative[2]), .Y(n888) );
  INVX1 U853 ( .A(n787), .Y(n887) );
  MUX2X1 U854 ( .B(n890), .A(n891), .S(float), .Y(n787) );
  OAI21X1 U855 ( .A(N111), .B(N95), .C(n872), .Y(n891) );
  NAND2X1 U856 ( .A(N111), .B(N95), .Y(n872) );
  INVX1 U857 ( .A(N191), .Y(n890) );
  INVX1 U858 ( .A(n889), .Y(n789) );
  OAI21X1 U859 ( .A(n796), .B(n797), .C(n892), .Y(n889) );
  OAI21X1 U860 ( .A(n893), .B(n894), .C(cumulative[1]), .Y(n892) );
  INVX1 U861 ( .A(n796), .Y(n894) );
  INVX1 U862 ( .A(n893), .Y(n797) );
  NOR2X1 U863 ( .A(n623), .B(n895), .Y(n893) );
  INVX1 U864 ( .A(cumulative[0]), .Y(n623) );
  MUX2X1 U865 ( .B(N190), .A(N94), .S(float), .Y(n796) );
  XOR2X1 U866 ( .A(n895), .B(cumulative[0]), .Y(n555) );
  MUX2X1 U867 ( .B(N189), .A(N93), .S(float), .Y(n895) );
  XOR2X1 U868 ( .A(n896), .B(n897), .Y(N99) );
  XOR2X1 U869 ( .A(n898), .B(n899), .Y(n897) );
  XOR2X1 U870 ( .A(n900), .B(n901), .Y(N98) );
  XOR2X1 U871 ( .A(n902), .B(n903), .Y(n900) );
  XOR2X1 U872 ( .A(n904), .B(n905), .Y(N97) );
  XOR2X1 U873 ( .A(n906), .B(n907), .Y(n904) );
  MUX2X1 U874 ( .B(n886), .A(n885), .S(n908), .Y(N96) );
  XNOR2X1 U875 ( .A(n909), .B(n910), .Y(n885) );
  AND2X1 U876 ( .A(n870), .B(n911), .Y(n886) );
  INVX1 U877 ( .A(n912), .Y(n870) );
  XOR2X1 U878 ( .A(n913), .B(n914), .Y(N95) );
  XNOR2X1 U879 ( .A(n915), .B(n916), .Y(n913) );
  XOR2X1 U880 ( .A(n917), .B(n918), .Y(N94) );
  AND2X1 U881 ( .A(N218), .B(value[0]), .Y(N93) );
  NAND3X1 U882 ( .A(n642), .B(n919), .C(n920), .Y(N188) );
  NOR2X1 U883 ( .A(n921), .B(n922), .Y(n920) );
  XOR2X1 U884 ( .A(n923), .B(n924), .Y(N187) );
  AND2X1 U885 ( .A(n919), .B(n925), .Y(n924) );
  XOR2X1 U886 ( .A(n926), .B(n927), .Y(n923) );
  NOR2X1 U887 ( .A(n922), .B(n928), .Y(n927) );
  OAI21X1 U888 ( .A(n929), .B(n930), .C(n931), .Y(n928) );
  OAI21X1 U889 ( .A(n932), .B(n933), .C(n934), .Y(n931) );
  XNOR2X1 U890 ( .A(n933), .B(n642), .Y(n922) );
  NAND2X1 U891 ( .A(weight[7]), .B(value[7]), .Y(n642) );
  INVX1 U892 ( .A(n929), .Y(n933) );
  OAI21X1 U893 ( .A(n935), .B(n936), .C(n937), .Y(n926) );
  OAI21X1 U894 ( .A(n938), .B(n939), .C(n940), .Y(n937) );
  XOR2X1 U895 ( .A(n941), .B(n936), .Y(N186) );
  INVX1 U896 ( .A(n938), .Y(n936) );
  XNOR2X1 U897 ( .A(n942), .B(n934), .Y(n938) );
  OAI21X1 U898 ( .A(n675), .B(n943), .C(n944), .Y(n934) );
  OAI21X1 U899 ( .A(n945), .B(n682), .C(n946), .Y(n944) );
  INVX1 U900 ( .A(n675), .Y(n682) );
  XOR2X1 U901 ( .A(n929), .B(n932), .Y(n942) );
  INVX1 U902 ( .A(n930), .Y(n932) );
  NAND2X1 U903 ( .A(value[7]), .B(weight[6]), .Y(n930) );
  NAND2X1 U904 ( .A(weight[7]), .B(value[6]), .Y(n929) );
  XOR2X1 U905 ( .A(n940), .B(n935), .Y(n941) );
  INVX1 U906 ( .A(n939), .Y(n935) );
  NAND2X1 U907 ( .A(n925), .B(n919), .Y(n939) );
  OAI21X1 U908 ( .A(n947), .B(n948), .C(n949), .Y(n940) );
  OAI21X1 U909 ( .A(n950), .B(n951), .C(n952), .Y(n949) );
  INVX1 U910 ( .A(n947), .Y(n951) );
  XOR2X1 U911 ( .A(n953), .B(n948), .Y(N185) );
  INVX1 U912 ( .A(n950), .Y(n948) );
  XNOR2X1 U913 ( .A(n954), .B(n946), .Y(n950) );
  OAI21X1 U914 ( .A(n955), .B(n956), .C(n957), .Y(n946) );
  OAI21X1 U915 ( .A(n958), .B(n959), .C(n960), .Y(n957) );
  INVX1 U916 ( .A(n955), .Y(n959) );
  XOR2X1 U917 ( .A(n675), .B(n945), .Y(n954) );
  INVX1 U918 ( .A(n943), .Y(n945) );
  NAND2X1 U919 ( .A(value[7]), .B(weight[5]), .Y(n943) );
  NAND2X1 U920 ( .A(weight[6]), .B(value[6]), .Y(n675) );
  XOR2X1 U921 ( .A(n952), .B(n947), .Y(n953) );
  NOR2X1 U922 ( .A(n921), .B(n961), .Y(n947) );
  OAI21X1 U923 ( .A(n962), .B(n963), .C(n964), .Y(n961) );
  OAI21X1 U924 ( .A(n965), .B(n966), .C(n967), .Y(n964) );
  INVX1 U925 ( .A(n925), .Y(n921) );
  OAI21X1 U926 ( .A(n968), .B(n966), .C(n919), .Y(n925) );
  NAND2X1 U927 ( .A(n966), .B(n968), .Y(n919) );
  INVX1 U928 ( .A(n962), .Y(n966) );
  AND2X1 U929 ( .A(weight[7]), .B(value[5]), .Y(n968) );
  OAI21X1 U930 ( .A(n969), .B(n970), .C(n971), .Y(n952) );
  OAI21X1 U931 ( .A(n972), .B(n973), .C(n974), .Y(n971) );
  XOR2X1 U932 ( .A(n975), .B(n969), .Y(N184) );
  INVX1 U933 ( .A(n973), .Y(n969) );
  XNOR2X1 U934 ( .A(n976), .B(n967), .Y(n973) );
  OAI21X1 U935 ( .A(n684), .B(n977), .C(n978), .Y(n967) );
  OAI21X1 U936 ( .A(n979), .B(n980), .C(n981), .Y(n978) );
  INVX1 U937 ( .A(n684), .Y(n979) );
  XOR2X1 U938 ( .A(n962), .B(n965), .Y(n976) );
  INVX1 U939 ( .A(n963), .Y(n965) );
  NAND2X1 U940 ( .A(weight[6]), .B(value[5]), .Y(n963) );
  NAND2X1 U941 ( .A(weight[7]), .B(value[4]), .Y(n962) );
  XOR2X1 U942 ( .A(n970), .B(n974), .Y(n975) );
  OAI21X1 U943 ( .A(n982), .B(n983), .C(n984), .Y(n974) );
  OAI21X1 U944 ( .A(n985), .B(n986), .C(n987), .Y(n984) );
  INVX1 U945 ( .A(n972), .Y(n970) );
  XNOR2X1 U946 ( .A(n988), .B(n960), .Y(n972) );
  OAI21X1 U947 ( .A(n989), .B(n990), .C(n991), .Y(n960) );
  OAI21X1 U948 ( .A(n992), .B(n993), .C(n994), .Y(n991) );
  INVX1 U949 ( .A(n989), .Y(n993) );
  XOR2X1 U950 ( .A(n955), .B(n958), .Y(n988) );
  INVX1 U951 ( .A(n956), .Y(n958) );
  NAND2X1 U952 ( .A(value[7]), .B(weight[4]), .Y(n956) );
  NAND2X1 U953 ( .A(value[6]), .B(weight[5]), .Y(n955) );
  XOR2X1 U954 ( .A(n995), .B(n982), .Y(N183) );
  INVX1 U955 ( .A(n986), .Y(n982) );
  XNOR2X1 U956 ( .A(n996), .B(n981), .Y(n986) );
  OAI21X1 U957 ( .A(n997), .B(n998), .C(n999), .Y(n981) );
  OAI21X1 U958 ( .A(n1000), .B(n1001), .C(n1002), .Y(n999) );
  INVX1 U959 ( .A(n998), .Y(n1000) );
  XOR2X1 U960 ( .A(n684), .B(n980), .Y(n996) );
  INVX1 U961 ( .A(n977), .Y(n980) );
  NAND2X1 U962 ( .A(weight[6]), .B(value[4]), .Y(n977) );
  NAND2X1 U963 ( .A(value[5]), .B(weight[5]), .Y(n684) );
  XOR2X1 U964 ( .A(n983), .B(n987), .Y(n995) );
  OAI21X1 U965 ( .A(n1003), .B(n1004), .C(n1005), .Y(n987) );
  OAI21X1 U966 ( .A(n1006), .B(n1007), .C(n1008), .Y(n1005) );
  INVX1 U967 ( .A(n985), .Y(n983) );
  XNOR2X1 U968 ( .A(n1009), .B(n994), .Y(n985) );
  OAI21X1 U969 ( .A(n1010), .B(n1011), .C(n1012), .Y(n994) );
  OAI21X1 U970 ( .A(n1013), .B(n1014), .C(n1015), .Y(n1012) );
  INVX1 U971 ( .A(n1010), .Y(n1014) );
  XOR2X1 U972 ( .A(n989), .B(n992), .Y(n1009) );
  INVX1 U973 ( .A(n990), .Y(n992) );
  NAND2X1 U974 ( .A(value[7]), .B(weight[3]), .Y(n990) );
  NAND2X1 U975 ( .A(value[6]), .B(weight[4]), .Y(n989) );
  XOR2X1 U976 ( .A(n1016), .B(n1003), .Y(N182) );
  INVX1 U977 ( .A(n1007), .Y(n1003) );
  XNOR2X1 U978 ( .A(n1017), .B(n1002), .Y(n1007) );
  OAI21X1 U979 ( .A(n713), .B(n1018), .C(n1019), .Y(n1002) );
  OAI21X1 U980 ( .A(n1020), .B(n1021), .C(n1022), .Y(n1019) );
  INVX1 U981 ( .A(n713), .Y(n1021) );
  XOR2X1 U982 ( .A(n998), .B(n1001), .Y(n1017) );
  INVX1 U983 ( .A(n997), .Y(n1001) );
  NAND2X1 U984 ( .A(value[4]), .B(weight[5]), .Y(n997) );
  NAND2X1 U985 ( .A(value[5]), .B(weight[4]), .Y(n998) );
  XOR2X1 U986 ( .A(n1004), .B(n1008), .Y(n1016) );
  OAI21X1 U987 ( .A(n1023), .B(n1024), .C(n1025), .Y(n1008) );
  OAI21X1 U988 ( .A(n1026), .B(n1027), .C(n1028), .Y(n1025) );
  INVX1 U989 ( .A(n1026), .Y(n1024) );
  INVX1 U990 ( .A(n1006), .Y(n1004) );
  XNOR2X1 U991 ( .A(n1029), .B(n1015), .Y(n1006) );
  OAI21X1 U992 ( .A(n1030), .B(n1031), .C(n1032), .Y(n1015) );
  XOR2X1 U993 ( .A(n1010), .B(n1013), .Y(n1029) );
  INVX1 U994 ( .A(n1011), .Y(n1013) );
  NAND2X1 U995 ( .A(value[7]), .B(N220), .Y(n1011) );
  NAND2X1 U996 ( .A(value[6]), .B(weight[3]), .Y(n1010) );
  XOR2X1 U997 ( .A(n1027), .B(n1033), .Y(N181) );
  XOR2X1 U998 ( .A(n1028), .B(n1026), .Y(n1033) );
  XNOR2X1 U999 ( .A(n1034), .B(n1022), .Y(n1026) );
  OAI21X1 U1000 ( .A(n1035), .B(n1036), .C(n1037), .Y(n1022) );
  OAI21X1 U1001 ( .A(n1038), .B(n1039), .C(n1040), .Y(n1037) );
  INVX1 U1002 ( .A(n1036), .Y(n1038) );
  XOR2X1 U1003 ( .A(n713), .B(n1020), .Y(n1034) );
  INVX1 U1004 ( .A(n1018), .Y(n1020) );
  NAND2X1 U1005 ( .A(value[5]), .B(weight[3]), .Y(n1018) );
  NAND2X1 U1006 ( .A(value[4]), .B(weight[4]), .Y(n713) );
  OAI21X1 U1007 ( .A(n1041), .B(n1042), .C(n1043), .Y(n1028) );
  INVX1 U1008 ( .A(n1044), .Y(n1043) );
  AOI21X1 U1009 ( .A(n1042), .B(n1041), .C(n1045), .Y(n1044) );
  INVX1 U1010 ( .A(n1023), .Y(n1027) );
  XNOR2X1 U1011 ( .A(n1046), .B(n1031), .Y(n1023) );
  NAND2X1 U1012 ( .A(value[7]), .B(N219), .Y(n1031) );
  XNOR2X1 U1013 ( .A(n1030), .B(n1032), .Y(n1046) );
  NAND3X1 U1014 ( .A(value[6]), .B(N219), .C(n1047), .Y(n1032) );
  NAND2X1 U1015 ( .A(value[6]), .B(N220), .Y(n1030) );
  XNOR2X1 U1016 ( .A(n1048), .B(n1041), .Y(N180) );
  XOR2X1 U1017 ( .A(n1049), .B(n1047), .Y(n1041) );
  AND2X1 U1018 ( .A(value[7]), .B(N218), .Y(n1047) );
  NAND2X1 U1019 ( .A(value[6]), .B(N219), .Y(n1049) );
  XOR2X1 U1020 ( .A(n1045), .B(n1042), .Y(n1048) );
  XOR2X1 U1021 ( .A(n1050), .B(n1040), .Y(n1042) );
  OAI21X1 U1022 ( .A(n1051), .B(n1052), .C(n1053), .Y(n1040) );
  XOR2X1 U1023 ( .A(n1036), .B(n1039), .Y(n1050) );
  INVX1 U1024 ( .A(n1035), .Y(n1039) );
  NAND2X1 U1025 ( .A(value[4]), .B(weight[3]), .Y(n1035) );
  NAND2X1 U1026 ( .A(value[5]), .B(N220), .Y(n1036) );
  NAND3X1 U1027 ( .A(N218), .B(n1054), .C(value[6]), .Y(n1045) );
  XOR2X1 U1028 ( .A(n1055), .B(n1054), .Y(N179) );
  XOR2X1 U1029 ( .A(n1056), .B(n1052), .Y(n1054) );
  NAND2X1 U1030 ( .A(value[5]), .B(N219), .Y(n1052) );
  XNOR2X1 U1031 ( .A(n1051), .B(n1053), .Y(n1056) );
  NAND3X1 U1032 ( .A(value[4]), .B(N219), .C(n1057), .Y(n1053) );
  NAND2X1 U1033 ( .A(value[4]), .B(N220), .Y(n1051) );
  NOR2X1 U1034 ( .A(n884), .B(n683), .Y(n1055) );
  INVX1 U1035 ( .A(value[6]), .Y(n683) );
  XNOR2X1 U1036 ( .A(n1057), .B(n1058), .Y(N178) );
  NAND2X1 U1037 ( .A(value[4]), .B(N219), .Y(n1058) );
  NOR2X1 U1038 ( .A(n730), .B(n884), .Y(n1057) );
  INVX1 U1039 ( .A(value[5]), .Y(n730) );
  NOR2X1 U1040 ( .A(n884), .B(n723), .Y(N177) );
  INVX1 U1041 ( .A(value[4]), .Y(n723) );
  NAND2X1 U1042 ( .A(n1059), .B(n1060), .Y(N124) );
  NAND2X1 U1043 ( .A(n1059), .B(n1061), .Y(N119) );
  INVX1 U1044 ( .A(n1062), .Y(n1061) );
  OAI21X1 U1045 ( .A(n1063), .B(n1064), .C(n1065), .Y(n1062) );
  OAI21X1 U1046 ( .A(n1066), .B(n1067), .C(n1068), .Y(n1065) );
  OAI21X1 U1047 ( .A(n1069), .B(n1067), .C(n1060), .Y(n1059) );
  NAND2X1 U1048 ( .A(n1067), .B(n1069), .Y(n1060) );
  INVX1 U1049 ( .A(n1063), .Y(n1067) );
  AND2X1 U1050 ( .A(weight[7]), .B(value[3]), .Y(n1069) );
  XNOR2X1 U1051 ( .A(n1070), .B(n1068), .Y(N118) );
  OAI21X1 U1052 ( .A(n1071), .B(n1072), .C(n1073), .Y(n1068) );
  OAI21X1 U1053 ( .A(n1074), .B(n1075), .C(n1076), .Y(n1073) );
  INVX1 U1054 ( .A(n1071), .Y(n1074) );
  XOR2X1 U1055 ( .A(n1063), .B(n1066), .Y(n1070) );
  INVX1 U1056 ( .A(n1064), .Y(n1066) );
  NAND2X1 U1057 ( .A(weight[6]), .B(value[3]), .Y(n1064) );
  NAND2X1 U1058 ( .A(weight[7]), .B(value[2]), .Y(n1063) );
  XNOR2X1 U1059 ( .A(n1077), .B(n1076), .Y(N117) );
  OAI21X1 U1060 ( .A(n1078), .B(n1079), .C(n1080), .Y(n1076) );
  OAI21X1 U1061 ( .A(n1081), .B(n1082), .C(n1083), .Y(n1080) );
  INVX1 U1062 ( .A(n1078), .Y(n1081) );
  XOR2X1 U1063 ( .A(n1071), .B(n1075), .Y(n1077) );
  INVX1 U1064 ( .A(n1072), .Y(n1075) );
  NAND2X1 U1065 ( .A(weight[6]), .B(value[2]), .Y(n1072) );
  NAND2X1 U1066 ( .A(value[3]), .B(weight[5]), .Y(n1071) );
  XNOR2X1 U1067 ( .A(n1084), .B(n1083), .Y(N116) );
  OAI21X1 U1068 ( .A(n712), .B(n1085), .C(n1086), .Y(n1083) );
  OAI21X1 U1069 ( .A(n722), .B(n1087), .C(n1088), .Y(n1086) );
  INVX1 U1070 ( .A(n712), .Y(n722) );
  XOR2X1 U1071 ( .A(n1078), .B(n1082), .Y(n1084) );
  INVX1 U1072 ( .A(n1079), .Y(n1082) );
  NAND2X1 U1073 ( .A(weight[5]), .B(value[2]), .Y(n1079) );
  NAND2X1 U1074 ( .A(value[3]), .B(weight[4]), .Y(n1078) );
  XNOR2X1 U1075 ( .A(n1089), .B(n1088), .Y(N115) );
  OAI21X1 U1076 ( .A(n1090), .B(n1091), .C(n1092), .Y(n1088) );
  OAI21X1 U1077 ( .A(n1093), .B(n1094), .C(n1095), .Y(n1092) );
  INVX1 U1078 ( .A(n1091), .Y(n1094) );
  INVX1 U1079 ( .A(n1090), .Y(n1093) );
  XOR2X1 U1080 ( .A(n712), .B(n1087), .Y(n1089) );
  INVX1 U1081 ( .A(n1085), .Y(n1087) );
  NAND2X1 U1082 ( .A(weight[4]), .B(value[2]), .Y(n1085) );
  NAND2X1 U1083 ( .A(value[3]), .B(weight[3]), .Y(n712) );
  XOR2X1 U1084 ( .A(n1095), .B(n1096), .Y(N114) );
  XOR2X1 U1085 ( .A(n1091), .B(n1090), .Y(n1096) );
  NAND2X1 U1086 ( .A(value[3]), .B(N220), .Y(n1090) );
  NAND2X1 U1087 ( .A(weight[3]), .B(value[2]), .Y(n1091) );
  OAI21X1 U1088 ( .A(n846), .B(n1097), .C(n1098), .Y(n1095) );
  XNOR2X1 U1089 ( .A(n1097), .B(n1099), .Y(N113) );
  XOR2X1 U1090 ( .A(n1098), .B(n846), .Y(n1099) );
  NAND2X1 U1091 ( .A(value[2]), .B(N220), .Y(n846) );
  NAND2X1 U1092 ( .A(value[3]), .B(n862), .Y(n1098) );
  NOR2X1 U1093 ( .A(n883), .B(n884), .Y(n862) );
  NAND2X1 U1094 ( .A(value[3]), .B(N219), .Y(n1097) );
  XOR2X1 U1095 ( .A(n883), .B(n1100), .Y(N112) );
  NAND2X1 U1096 ( .A(value[3]), .B(N218), .Y(n1100) );
  NAND2X1 U1097 ( .A(value[2]), .B(N219), .Y(n883) );
  NOR2X1 U1098 ( .A(n861), .B(n884), .Y(N111) );
  INVX1 U1099 ( .A(N218), .Y(n884) );
  INVX1 U1100 ( .A(value[2]), .Y(n861) );
  NAND2X1 U1101 ( .A(n1101), .B(n1102), .Y(N108) );
  NAND2X1 U1102 ( .A(n1101), .B(n1103), .Y(N101) );
  AOI21X1 U1103 ( .A(n1104), .B(n1105), .C(n1106), .Y(n1103) );
  INVX1 U1104 ( .A(n1107), .Y(n1106) );
  OAI21X1 U1105 ( .A(n1105), .B(n1104), .C(n1108), .Y(n1107) );
  OAI21X1 U1106 ( .A(n1109), .B(n1108), .C(n1102), .Y(n1101) );
  NAND2X1 U1107 ( .A(n1108), .B(n1109), .Y(n1102) );
  AND2X1 U1108 ( .A(weight[7]), .B(value[1]), .Y(n1109) );
  XOR2X1 U1109 ( .A(n1104), .B(n1110), .Y(N100) );
  XOR2X1 U1110 ( .A(n1108), .B(n1105), .Y(n1110) );
  AND2X1 U1111 ( .A(weight[6]), .B(value[1]), .Y(n1105) );
  AND2X1 U1112 ( .A(weight[7]), .B(value[0]), .Y(n1108) );
  OAI21X1 U1113 ( .A(n1111), .B(n1112), .C(n1113), .Y(n1104) );
  OAI21X1 U1114 ( .A(n899), .B(n896), .C(n898), .Y(n1113) );
  AND2X1 U1115 ( .A(weight[6]), .B(value[0]), .Y(n898) );
  INVX1 U1116 ( .A(n1112), .Y(n899) );
  NAND2X1 U1117 ( .A(weight[5]), .B(value[1]), .Y(n1112) );
  INVX1 U1118 ( .A(n896), .Y(n1111) );
  OAI21X1 U1119 ( .A(n901), .B(n903), .C(n1114), .Y(n896) );
  OAI21X1 U1120 ( .A(n1115), .B(n1116), .C(n902), .Y(n1114) );
  AND2X1 U1121 ( .A(weight[5]), .B(value[0]), .Y(n902) );
  INVX1 U1122 ( .A(n903), .Y(n1115) );
  NAND2X1 U1123 ( .A(weight[4]), .B(value[1]), .Y(n903) );
  INVX1 U1124 ( .A(n1116), .Y(n901) );
  OAI21X1 U1125 ( .A(n905), .B(n907), .C(n1117), .Y(n1116) );
  OAI21X1 U1126 ( .A(n1118), .B(n1119), .C(n906), .Y(n1117) );
  AND2X1 U1127 ( .A(weight[4]), .B(value[0]), .Y(n906) );
  INVX1 U1128 ( .A(n907), .Y(n1118) );
  NAND2X1 U1129 ( .A(weight[3]), .B(value[1]), .Y(n907) );
  INVX1 U1130 ( .A(n1119), .Y(n905) );
  OAI21X1 U1131 ( .A(n912), .B(n908), .C(n911), .Y(n1119) );
  NAND2X1 U1132 ( .A(n909), .B(n910), .Y(n911) );
  NAND2X1 U1133 ( .A(weight[3]), .B(value[0]), .Y(n908) );
  NOR2X1 U1134 ( .A(n910), .B(n909), .Y(n912) );
  AND2X1 U1135 ( .A(value[1]), .B(N220), .Y(n909) );
  OAI21X1 U1136 ( .A(n915), .B(n916), .C(n914), .Y(n910) );
  OR2X1 U1137 ( .A(n917), .B(n918), .Y(n914) );
  NAND2X1 U1138 ( .A(N218), .B(value[1]), .Y(n918) );
  NAND2X1 U1139 ( .A(value[0]), .B(N219), .Y(n917) );
  NAND2X1 U1140 ( .A(value[0]), .B(N220), .Y(n916) );
  NAND2X1 U1141 ( .A(N219), .B(value[1]), .Y(n915) );
endmodule

