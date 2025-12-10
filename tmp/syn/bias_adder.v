/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : W-2024.09-SP4
// Date      : Wed Dec 10 12:59:35 2025
/////////////////////////////////////////////////////////////


module signed_multiplier_15_DW01_add_12_DW01_add_151 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_15_DW01_add_11_DW01_add_150 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_15_DW01_add_10_DW01_add_149 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_15_DW01_add_9_DW01_add_148 ( A, B, CI, SUM, CO );
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


module signed_multiplier_15_DW01_add_6_DW01_add_145 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_15 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_15_DW01_add_12_DW01_add_151 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_15_DW01_add_11_DW01_add_150 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_15_DW01_add_10_DW01_add_149 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_15_DW01_add_9_DW01_add_148 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_15_DW01_add_6_DW01_add_145 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_14_DW01_add_12_DW01_add_102 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_14_DW01_add_11_DW01_add_101 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_14_DW01_add_10_DW01_add_100 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_14_DW01_add_9_DW01_add_99 ( A, B, CI, SUM, CO );
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


module signed_multiplier_14_DW01_add_6_DW01_add_96 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_14 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_14_DW01_add_12_DW01_add_102 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_14_DW01_add_11_DW01_add_101 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_14_DW01_add_10_DW01_add_100 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_14_DW01_add_9_DW01_add_99 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_14_DW01_add_6_DW01_add_96 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_13_DW01_add_12_DW01_add_109 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_13_DW01_add_11_DW01_add_108 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_13_DW01_add_10_DW01_add_107 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_13_DW01_add_9_DW01_add_106 ( A, B, CI, SUM, CO );
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


module signed_multiplier_13_DW01_add_6_DW01_add_103 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_13 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_13_DW01_add_12_DW01_add_109 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_13_DW01_add_11_DW01_add_108 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_13_DW01_add_10_DW01_add_107 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_13_DW01_add_9_DW01_add_106 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_13_DW01_add_6_DW01_add_103 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_12_DW01_add_12_DW01_add_116 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_12_DW01_add_11_DW01_add_115 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_12_DW01_add_10_DW01_add_114 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_12_DW01_add_9_DW01_add_113 ( A, B, CI, SUM, CO );
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


module signed_multiplier_12_DW01_add_6_DW01_add_110 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_12 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_12_DW01_add_12_DW01_add_116 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_12_DW01_add_11_DW01_add_115 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_12_DW01_add_10_DW01_add_114 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_12_DW01_add_9_DW01_add_113 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_12_DW01_add_6_DW01_add_110 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_11_DW01_add_12_DW01_add_123 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_11_DW01_add_11_DW01_add_122 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_11_DW01_add_10_DW01_add_121 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_11_DW01_add_9_DW01_add_120 ( A, B, CI, SUM, CO );
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


module signed_multiplier_11_DW01_add_6_DW01_add_117 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_11 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_11_DW01_add_12_DW01_add_123 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_11_DW01_add_11_DW01_add_122 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_11_DW01_add_10_DW01_add_121 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_11_DW01_add_9_DW01_add_120 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_11_DW01_add_6_DW01_add_117 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_10_DW01_add_12_DW01_add_130 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_10_DW01_add_11_DW01_add_129 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_10_DW01_add_10_DW01_add_128 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_10_DW01_add_9_DW01_add_127 ( A, B, CI, SUM, CO );
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


module signed_multiplier_10_DW01_add_6_DW01_add_124 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_10 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_10_DW01_add_12_DW01_add_130 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_10_DW01_add_11_DW01_add_129 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_10_DW01_add_10_DW01_add_128 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_10_DW01_add_9_DW01_add_127 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_10_DW01_add_6_DW01_add_124 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_9_DW01_add_12_DW01_add_137 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_9_DW01_add_11_DW01_add_136 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_9_DW01_add_10_DW01_add_135 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_9_DW01_add_9_DW01_add_134 ( A, B, CI, SUM, CO );
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


module signed_multiplier_9_DW01_add_6_DW01_add_131 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_9 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_9_DW01_add_12_DW01_add_137 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_9_DW01_add_11_DW01_add_136 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_9_DW01_add_10_DW01_add_135 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_9_DW01_add_9_DW01_add_134 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_9_DW01_add_6_DW01_add_131 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_8_DW01_add_12_DW01_add_144 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_8_DW01_add_11_DW01_add_143 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[2] = A[2];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_8_DW01_add_10_DW01_add_142 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[5] = A[5];
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(n1), .YC(carry[8]), .YS(SUM[7]) );
  AND2X2 U1 ( .A(B[6]), .B(A[6]), .Y(n1) );
  XOR2X1 U2 ( .A(B[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module signed_multiplier_8_DW01_add_9_DW01_add_141 ( A, B, CI, SUM, CO );
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


module signed_multiplier_8_DW01_add_6_DW01_add_138 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
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
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(n1), .YC(carry[6]), .YS(SUM[5]) );
  AND2X2 U1 ( .A(B[4]), .B(A[4]), .Y(n1) );
  XOR2X1 U2 ( .A(B[4]), .B(A[4]), .Y(SUM[4]) );
endmodule


module signed_multiplier_8 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N123, N124, N125,
         N126, N127, N128, N129, N130, N131, N132, N133, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N411, N412, N413, N414, N435, N436, N438, N459, N460, N461,
         N462, N481, N540, N541, N542, N543, N544, N546, N547, N548, N549,
         N550, N551, N552, N553, N554, N555, N525, N524, N523, N522, N521,
         N509, N508, N507, N506, N505, N385, N384, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N246, N245, N244, N243, N242, N241,
         N240, N239, N238, N237, N236, N235, N230, N229, N228, N227, N226,
         N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215,
         N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204,
         N203, N202, N201, N198, N197, N196, N195, N194, N193, N192, N191,
         N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_1_root_add_0_root_add_76_7/carry[15] ,
         \add_1_root_add_0_root_add_76_7/carry[14] ,
         \add_1_root_add_0_root_add_76_7/carry[13] ,
         \add_1_root_add_0_root_add_76_7/carry[12] ,
         \add_1_root_add_0_root_add_76_7/carry[11] ,
         \add_1_root_add_0_root_add_76_7/carry[10] ,
         \add_1_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[15] ,
         \add_4_root_add_0_root_add_76_7/carry[14] ,
         \add_4_root_add_0_root_add_76_7/carry[13] ,
         \add_4_root_add_0_root_add_76_7/carry[12] ,
         \add_4_root_add_0_root_add_76_7/carry[11] ,
         \add_4_root_add_0_root_add_76_7/carry[10] ,
         \add_4_root_add_0_root_add_76_7/carry[9] ,
         \add_4_root_add_0_root_add_76_7/carry[8] ,
         \add_4_root_add_0_root_add_76_7/carry[7] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_8_DW01_add_12_DW01_add_144 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_8_DW01_add_11_DW01_add_143 add_5_root_add_0_root_add_76_7 ( 
        .A({N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, 
        N94, N93, 1'b0, 1'b0}), .B({N120, N119, N118, N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1})
         );
  signed_multiplier_8_DW01_add_10_DW01_add_142 add_3_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N156, N155, N154, N153, N152, N151, 
        N150, N149, N148, N147, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_8_DW01_add_9_DW01_add_141 add_2_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, 1'b0, 1'b0}), .CI(1'b0), .SUM({N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168, N167}) );
  signed_multiplier_8_DW01_add_6_DW01_add_138 add_0_root_add_0_root_add_76_7 ( 
        .A({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, 
        N235, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, N167}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n276), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n195), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n189), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n193), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n87), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n86), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n14), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n19), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n147), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n290), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n85), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n148), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n84), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n260), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n24), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n17), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n12), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n18), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n20), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_8  ( .A(N159), .B(N255), .C(n16), 
        .YC(\add_1_root_add_0_root_add_76_7/carry[9] ), .YS(N239) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_9  ( .A(N160), .B(N256), .C(
        \add_1_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YS(N240) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_10  ( .A(N161), .B(N257), .C(
        \add_1_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YS(N241) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_11  ( .A(N162), .B(N258), .C(
        \add_1_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YS(N242) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_12  ( .A(N163), .B(N259), .C(
        \add_1_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YS(N243) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_13  ( .A(N164), .B(N260), .C(
        \add_1_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YS(N244) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_14  ( .A(N165), .B(N261), .C(
        \add_1_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N245) );
  FAX1 \add_1_root_add_0_root_add_76_7/U1_15  ( .A(N166), .B(N262), .C(
        \add_1_root_add_0_root_add_76_7/carry[15] ), .YS(N246) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_6  ( .A(N124), .B(N136), .C(n15), 
        .YC(\add_4_root_add_0_root_add_76_7/carry[7] ), .YS(N237) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_7  ( .A(N125), .B(N137), .C(
        \add_4_root_add_0_root_add_76_7/carry[7] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YS(N254) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_8  ( .A(N126), .B(N138), .C(
        \add_4_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YS(N255) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_9  ( .A(N127), .B(N139), .C(
        \add_4_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YS(N256) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_10  ( .A(N128), .B(N140), .C(
        \add_4_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YS(N257) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_11  ( .A(N129), .B(N141), .C(
        \add_4_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YS(N258) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_12  ( .A(N130), .B(N142), .C(
        \add_4_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YS(N259) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_13  ( .A(N131), .B(N143), .C(
        \add_4_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YS(N260) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_14  ( .A(N132), .B(N144), .C(
        \add_4_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N261) );
  FAX1 \add_4_root_add_0_root_add_76_7/U1_15  ( .A(N133), .B(N145), .C(
        \add_4_root_add_0_root_add_76_7/carry[15] ), .YS(N262) );
  AND2X2 U3 ( .A(n5), .B(n374), .Y(n1) );
  AND2X2 U4 ( .A(n8), .B(n350), .Y(n2) );
  AND2X2 U5 ( .A(n13), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n378), .B(n63), .Y(n5) );
  AND2X2 U8 ( .A(n39), .B(n72), .Y(n6) );
  AND2X2 U9 ( .A(n38), .B(n61), .Y(n7) );
  AND2X2 U10 ( .A(n36), .B(n65), .Y(n8) );
  AND2X2 U11 ( .A(n47), .B(n57), .Y(n9) );
  AND2X2 U12 ( .A(n35), .B(n82), .Y(n10) );
  AND2X2 U13 ( .A(N435), .B(N436), .Y(n11) );
  AND2X2 U14 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n12) );
  AND2X2 U15 ( .A(N386), .B(N435), .Y(n13) );
  AND2X2 U16 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n14) );
  AND2X2 U17 ( .A(N135), .B(N123), .Y(n15) );
  AND2X2 U18 ( .A(N254), .B(N158), .Y(n16) );
  AND2X2 U19 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n17) );
  AND2X2 U20 ( .A(N317), .B(N314), .Y(n18) );
  AND2X2 U21 ( .A(cumulative[0]), .B(product[0]), .Y(n19) );
  AND2X2 U22 ( .A(N34), .B(N322), .Y(n20) );
  AND2X2 U23 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n21) );
  AND2X2 U24 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(n22) );
  AND2X2 U25 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n23) );
  AND2X2 U26 ( .A(value[3]), .B(weight[3]), .Y(n24) );
  AND2X2 U27 ( .A(n68), .B(n69), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n70), .Y(n26) );
  AND2X2 U29 ( .A(n6), .B(n73), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n74), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n75), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n76), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n77), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n78), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n79), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n80), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n81), .Y(n35) );
  AND2X2 U38 ( .A(n1), .B(n64), .Y(n36) );
  AND2X2 U39 ( .A(n7), .B(n60), .Y(n37) );
  AND2X2 U40 ( .A(n9), .B(n62), .Y(n38) );
  AND2X2 U41 ( .A(n26), .B(n71), .Y(n39) );
  XNOR2X1 U42 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n50), .Y(n40) );
  XNOR2X1 U43 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n41) );
  XNOR2X1 U44 ( .A(N317), .B(N314), .Y(n42) );
  XNOR2X1 U45 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n43)
         );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  XNOR2X1 U47 ( .A(cumulative[0]), .B(product[0]), .Y(n45) );
  AND2X2 U48 ( .A(n2), .B(n66), .Y(n46) );
  AND2X2 U49 ( .A(n59), .B(n58), .Y(n47) );
  AND2X2 U50 ( .A(n23), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n48) );
  INVX1 U51 ( .A(N384), .Y(n49) );
  INVX2 U52 ( .A(n49), .Y(n50) );
  INVX2 U53 ( .A(n139), .Y(n116) );
  INVX2 U54 ( .A(n51), .Y(n53) );
  INVX2 U55 ( .A(n89), .Y(n52) );
  OR2X1 U56 ( .A(n197), .B(float), .Y(n51) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n281), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n281), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n88), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n88), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n256), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n256), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n83), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n83), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n21), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n22), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n50), .Y(N438) );
  OR2X1 U76 ( .A(n50), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n50), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n50), .B(n11), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n11), .B(n50), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n283), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n50), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n13), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n68), .B(n69), .Y(N281) );
  XOR2X1 U90 ( .A(n25), .B(n70), .Y(N282) );
  XOR2X1 U91 ( .A(n26), .B(n71), .Y(N283) );
  XOR2X1 U92 ( .A(n39), .B(n72), .Y(N284) );
  XOR2X1 U93 ( .A(n6), .B(n73), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n74), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n75), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n76), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n77), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n78), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n79), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n80), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n81), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n82), .Y(N294) );
  XOR2X1 U103 ( .A(n93), .B(n10), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n63), .Y(N52) );
  XOR2X1 U105 ( .A(n5), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n1), .B(n64), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n65), .Y(N55) );
  XOR2X1 U108 ( .A(n8), .B(n350), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n66), .Y(N57) );
  XOR2X1 U110 ( .A(n67), .B(n46), .Y(N58) );
  XOR2X1 U111 ( .A(n59), .B(n58), .Y(N35) );
  XOR2X1 U112 ( .A(n47), .B(n57), .Y(N36) );
  XOR2X1 U113 ( .A(n9), .B(n62), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n61), .Y(N38) );
  XOR2X1 U115 ( .A(n7), .B(n60), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N254), .B(N158), .Y(N238) );
  XOR2X1 U120 ( .A(N135), .B(N123), .Y(N236) );
  INVX2 U121 ( .A(float), .Y(n101) );
  INVX2 U122 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U123 ( .A(weight[6]), .Y(n56) );
  INVX2 U124 ( .A(N327), .Y(n57) );
  INVX2 U125 ( .A(N326), .Y(n58) );
  INVX2 U126 ( .A(N34), .Y(n59) );
  INVX2 U127 ( .A(weight[5]), .Y(n60) );
  INVX2 U128 ( .A(weight[4]), .Y(n61) );
  INVX2 U129 ( .A(weight[3]), .Y(n62) );
  NOR2X1 U130 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U131 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U132 ( .A(value[1]), .Y(n63) );
  INVX2 U133 ( .A(value[3]), .Y(n64) );
  INVX2 U134 ( .A(value[4]), .Y(n65) );
  INVX2 U135 ( .A(value[6]), .Y(n66) );
  INVX2 U136 ( .A(value[7]), .Y(n67) );
  INVX2 U137 ( .A(N280), .Y(n68) );
  INVX2 U138 ( .A(N264), .Y(n69) );
  INVX2 U139 ( .A(N265), .Y(n70) );
  INVX2 U140 ( .A(N266), .Y(n71) );
  INVX2 U141 ( .A(N267), .Y(n72) );
  INVX2 U142 ( .A(N268), .Y(n73) );
  INVX2 U143 ( .A(N269), .Y(n74) );
  INVX2 U144 ( .A(N270), .Y(n75) );
  INVX2 U145 ( .A(N271), .Y(n76) );
  INVX2 U146 ( .A(N272), .Y(n77) );
  INVX2 U147 ( .A(N273), .Y(n78) );
  INVX2 U148 ( .A(N274), .Y(n79) );
  INVX2 U149 ( .A(N275), .Y(n80) );
  INVX2 U150 ( .A(N276), .Y(n81) );
  INVX2 U151 ( .A(N277), .Y(n82) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n83) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n84) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n85) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n86) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n87) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n88) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n89), .B(n77), .C(n90), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n53), .C(n91), .Y(n90) );
  OAI21X1 U162 ( .A(n89), .B(n76), .C(n92), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n53), .C(n91), .Y(n92) );
  OAI21X1 U164 ( .A(n89), .B(n93), .C(n94), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n53), .C(n91), .Y(n94) );
  INVX1 U166 ( .A(N278), .Y(n93) );
  OAI21X1 U167 ( .A(n89), .B(n82), .C(n95), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n53), .C(n91), .Y(n95) );
  OAI21X1 U169 ( .A(n89), .B(n81), .C(n96), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n53), .C(n91), .Y(n96) );
  OAI21X1 U171 ( .A(n89), .B(n80), .C(n97), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n53), .C(n91), .Y(n97) );
  OAI21X1 U173 ( .A(n89), .B(n79), .C(n98), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n53), .C(n91), .Y(n98) );
  OAI21X1 U175 ( .A(n89), .B(n78), .C(n99), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n53), .C(n91), .Y(n99) );
  AND2X1 U177 ( .A(float), .B(n48), .Y(n91) );
  OAI21X1 U178 ( .A(n100), .B(n101), .C(n102), .Y(overflow) );
  OAI22X1 U179 ( .A(n103), .B(n101), .C(n104), .D(n105), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n105) );
  MUX2X1 U181 ( .B(n106), .A(n107), .S(n108), .Y(n103) );
  OAI21X1 U182 ( .A(n101), .B(n109), .C(n110), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n111), .C(n112), .Y(n110) );
  MUX2X1 U184 ( .B(n113), .A(n114), .S(n115), .Y(n109) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n116), .Y(n115)
         );
  NAND2X1 U186 ( .A(n117), .B(n118), .Y(n114) );
  MUX2X1 U187 ( .B(n119), .A(n120), .S(n121), .Y(n117) );
  NOR2X1 U188 ( .A(n122), .B(n123), .Y(n120) );
  NOR2X1 U189 ( .A(n124), .B(n125), .Y(n119) );
  NAND3X1 U190 ( .A(n126), .B(n127), .C(n128), .Y(n113) );
  OAI21X1 U191 ( .A(n129), .B(n122), .C(n130), .Y(n127) );
  MUX2X1 U192 ( .B(n131), .A(n132), .S(n124), .Y(n126) );
  NAND2X1 U193 ( .A(n133), .B(n134), .Y(out[5]) );
  OAI21X1 U194 ( .A(n135), .B(n136), .C(float), .Y(n134) );
  OAI21X1 U195 ( .A(n122), .B(n123), .C(n118), .Y(n136) );
  NAND3X1 U196 ( .A(n121), .B(n124), .C(n137), .Y(n118) );
  XOR2X1 U197 ( .A(n121), .B(n124), .Y(n122) );
  MUX2X1 U198 ( .B(n128), .A(n138), .S(n124), .Y(n135) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n139), .Y(n124) );
  OR2X1 U200 ( .A(n125), .B(n121), .Y(n138) );
  NOR2X1 U201 ( .A(n140), .B(n141), .Y(n128) );
  MUX2X1 U202 ( .B(n100), .A(n142), .S(n129), .Y(n140) );
  AOI21X1 U203 ( .A(N357), .B(n111), .C(n112), .Y(n133) );
  INVX1 U204 ( .A(n143), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n111), .C(n144), .Y(n143) );
  OAI21X1 U206 ( .A(n101), .B(n145), .C(n102), .Y(n144) );
  MUX2X1 U207 ( .B(n141), .A(n146), .S(n121), .Y(n145) );
  INVX1 U208 ( .A(n129), .Y(n121) );
  MUX2X1 U209 ( .B(n147), .A(n148), .S(n116), .Y(n129) );
  NAND3X1 U210 ( .A(n149), .B(n125), .C(n123), .Y(n146) );
  NAND2X1 U211 ( .A(n150), .B(n132), .Y(n125) );
  INVX1 U212 ( .A(n151), .Y(n150) );
  NAND2X1 U213 ( .A(n152), .B(n153), .Y(n141) );
  MUX2X1 U214 ( .B(n131), .A(n132), .S(n151), .Y(n152) );
  NAND2X1 U215 ( .A(n154), .B(n155), .Y(out[3]) );
  OAI21X1 U216 ( .A(n137), .B(n156), .C(float), .Y(n155) );
  MUX2X1 U217 ( .B(n157), .A(n100), .S(n151), .Y(n156) );
  NOR2X1 U218 ( .A(n130), .B(n158), .Y(n157) );
  INVX1 U219 ( .A(n123), .Y(n130) );
  INVX1 U220 ( .A(n149), .Y(n137) );
  NAND2X1 U221 ( .A(n131), .B(n151), .Y(n149) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n116), .Y(n151)
         );
  INVX1 U223 ( .A(n142), .Y(n131) );
  AOI21X1 U224 ( .A(N355), .B(n111), .C(n112), .Y(n154) );
  NAND2X1 U225 ( .A(n159), .B(n160), .Y(out[2]) );
  OAI21X1 U226 ( .A(n161), .B(n162), .C(float), .Y(n160) );
  OAI22X1 U227 ( .A(n100), .B(n163), .C(n164), .D(n153), .Y(n162) );
  OAI22X1 U228 ( .A(n165), .B(n142), .C(n166), .D(n123), .Y(n161) );
  NAND3X1 U229 ( .A(n163), .B(n167), .C(n168), .Y(n123) );
  NOR2X1 U230 ( .A(n132), .B(n169), .Y(n168) );
  AOI21X1 U231 ( .A(N354), .B(n111), .C(n112), .Y(n159) );
  OAI21X1 U232 ( .A(n170), .B(n101), .C(n171), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n111), .C(n112), .Y(n171) );
  INVX1 U234 ( .A(n104), .Y(n111) );
  AOI21X1 U235 ( .A(n158), .B(n167), .C(n172), .Y(n170) );
  OAI22X1 U236 ( .A(n100), .B(n164), .C(n166), .D(n142), .Y(n172) );
  NAND3X1 U237 ( .A(n163), .B(n169), .C(n100), .Y(n142) );
  INVX1 U238 ( .A(n169), .Y(n164) );
  OAI21X1 U239 ( .A(n173), .B(n174), .C(n175), .Y(n169) );
  AOI22X1 U240 ( .A(N548), .B(n176), .C(N553), .D(n177), .Y(n175) );
  INVX1 U241 ( .A(N542), .Y(n174) );
  OAI21X1 U242 ( .A(n104), .B(n45), .C(n178), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n179), .C(n112), .Y(n178) );
  INVX1 U244 ( .A(n102), .Y(n112) );
  OAI22X1 U245 ( .A(n100), .B(n165), .C(n166), .D(n153), .Y(n179) );
  INVX1 U246 ( .A(n158), .Y(n153) );
  NOR2X1 U247 ( .A(n132), .B(n163), .Y(n158) );
  AOI21X1 U248 ( .A(n180), .B(N543), .C(n181), .Y(n163) );
  INVX1 U249 ( .A(n182), .Y(n181) );
  AOI22X1 U250 ( .A(N549), .B(n176), .C(N554), .D(n177), .Y(n182) );
  AOI21X1 U251 ( .A(n180), .B(N540), .C(n183), .Y(n166) );
  INVX1 U252 ( .A(n184), .Y(n183) );
  AOI22X1 U253 ( .A(N546), .B(n176), .C(N551), .D(n177), .Y(n184) );
  INVX1 U254 ( .A(n167), .Y(n165) );
  OAI21X1 U255 ( .A(n173), .B(n185), .C(n186), .Y(n167) );
  AOI22X1 U256 ( .A(N547), .B(n176), .C(N552), .D(n177), .Y(n186) );
  INVX1 U257 ( .A(N541), .Y(n185) );
  INVX1 U258 ( .A(n132), .Y(n100) );
  OAI21X1 U259 ( .A(n173), .B(n187), .C(n188), .Y(n132) );
  AOI22X1 U260 ( .A(N550), .B(n176), .C(N555), .D(n177), .Y(n188) );
  NOR2X1 U261 ( .A(n108), .B(n180), .Y(n177) );
  INVX1 U262 ( .A(n173), .Y(n180) );
  AND2X1 U263 ( .A(n173), .B(n108), .Y(n176) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n189), .C(n190), .Y(n108) );
  OAI21X1 U265 ( .A(n87), .B(m_large[2]), .C(n191), .Y(n190) );
  AOI21X1 U266 ( .A(n189), .B(\sub_218/A[3] ), .C(n192), .Y(n191) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n193), .C(n194), .Y(n192) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n195), .C(n196), .Y(n194) );
  OAI22X1 U269 ( .A(n193), .B(m_large[1]), .C(n88), .D(m_large[0]), .Y(n196)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n193) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n189) );
  INVX1 U272 ( .A(N544), .Y(n187) );
  XOR2X1 U273 ( .A(n106), .B(n107), .Y(n173) );
  MUX2X1 U274 ( .B(n197), .A(n198), .S(n116), .Y(n107) );
  MUX2X1 U275 ( .B(n198), .A(n197), .S(n116), .Y(n106) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n198) );
  NAND2X1 U277 ( .A(n102), .B(n101), .Y(n104) );
  OAI21X1 U278 ( .A(n199), .B(n200), .C(n201), .Y(n102) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n201) );
  NAND2X1 U280 ( .A(n202), .B(n203), .Y(n200) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n203) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n202) );
  NAND2X1 U283 ( .A(n204), .B(n205), .Y(n199) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n205) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n204) );
  NAND2X1 U286 ( .A(n139), .B(n206), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n211), .B(n212), .Y(n210) );
  INVX1 U289 ( .A(n213), .Y(n212) );
  MUX2X1 U290 ( .B(n214), .A(n215), .S(N506), .Y(n211) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n215) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n214) );
  NAND3X1 U293 ( .A(n216), .B(n217), .C(n218), .Y(n209) );
  INVX1 U294 ( .A(N509), .Y(n217) );
  INVX1 U295 ( .A(N508), .Y(n216) );
  NAND2X1 U296 ( .A(n219), .B(n220), .Y(n208) );
  MUX2X1 U297 ( .B(n221), .A(n222), .S(N522), .Y(n219) );
  OAI21X1 U298 ( .A(N521), .B(n223), .C(n224), .Y(n222) );
  MUX2X1 U299 ( .B(n225), .A(n226), .S(N521), .Y(n221) );
  NAND3X1 U300 ( .A(n227), .B(n228), .C(n229), .Y(n207) );
  INVX1 U301 ( .A(N525), .Y(n228) );
  INVX1 U302 ( .A(N524), .Y(n227) );
  OAI21X1 U303 ( .A(n230), .B(n213), .C(n231), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n232), .B(n233), .C(n220), .Y(n231) );
  MUX2X1 U305 ( .B(n234), .A(n235), .S(N521), .Y(n233) );
  NAND2X1 U306 ( .A(n236), .B(n223), .Y(n235) );
  INVX1 U307 ( .A(n237), .Y(n236) );
  NAND3X1 U308 ( .A(n238), .B(n229), .C(n239), .Y(n234) );
  NOR2X1 U309 ( .A(n206), .B(n240), .Y(n239) );
  AND2X1 U310 ( .A(n226), .B(n241), .Y(n232) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n242), .C(n243), .Y(n230) );
  MUX2X1 U312 ( .B(n244), .A(n245), .S(N505), .Y(n243) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n246), .Y(n245) );
  NAND3X1 U314 ( .A(N506), .B(n218), .C(n247), .Y(n244) );
  OAI22X1 U315 ( .A(n248), .B(n213), .C(n249), .D(n250), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n251), .B(N521), .C(n241), .D(n223), .Y(n249) );
  NOR2X1 U317 ( .A(n206), .B(n237), .Y(n251) );
  AOI22X1 U318 ( .A(N505), .B(n246), .C(cumulative[2]), .D(n242), .Y(n248) );
  INVX1 U319 ( .A(n252), .Y(n246) );
  OAI21X1 U320 ( .A(n253), .B(n213), .C(n254), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n241), .B(n224), .C(n220), .Y(n254) );
  INVX1 U322 ( .A(n250), .Y(n220) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n255), .C(n116), .Y(n250) );
  NOR2X1 U324 ( .A(n256), .B(n257), .Y(n255) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n257) );
  NOR2X1 U326 ( .A(n237), .B(N521), .Y(n241) );
  NAND3X1 U327 ( .A(n240), .B(n229), .C(n238), .Y(n237) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n238) );
  INVX1 U329 ( .A(N523), .Y(n229) );
  INVX1 U330 ( .A(N522), .Y(n240) );
  NAND2X1 U331 ( .A(n258), .B(n139), .Y(n213) );
  OAI21X1 U332 ( .A(n148), .B(n259), .C(n260), .Y(n258) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n259) );
  INVX1 U334 ( .A(n242), .Y(n253) );
  NOR2X1 U335 ( .A(n252), .B(N505), .Y(n242) );
  NAND3X1 U336 ( .A(n261), .B(n218), .C(n247), .Y(n252) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n247) );
  INVX1 U338 ( .A(N507), .Y(n218) );
  INVX1 U339 ( .A(N506), .Y(n261) );
  INVX1 U340 ( .A(n262), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n262) );
  INVX1 U342 ( .A(n195), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n223), .A(cumulative[2]), .S(n116), .Y(n195) );
  OAI21X1 U344 ( .A(n263), .B(n264), .C(n265), .Y(n223) );
  OAI21X1 U345 ( .A(n266), .B(n267), .C(n224), .Y(n265) );
  OAI22X1 U346 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n267) );
  OAI22X1 U347 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n266) );
  INVX1 U348 ( .A(n276), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n226), .A(cumulative[1]), .S(n116), .Y(n276) );
  OAI21X1 U350 ( .A(n277), .B(n264), .C(n278), .Y(n226) );
  OAI21X1 U351 ( .A(n279), .B(n280), .C(n224), .Y(n278) );
  OAI22X1 U352 ( .A(n268), .B(n272), .C(n263), .D(n271), .Y(n280) );
  OAI22X1 U353 ( .A(n274), .B(n273), .C(n270), .D(n275), .Y(n279) );
  INVX1 U354 ( .A(n281), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n225), .A(cumulative[0]), .S(n116), .Y(n281) );
  NAND3X1 U356 ( .A(n282), .B(n283), .C(n284), .Y(n139) );
  AOI22X1 U357 ( .A(n285), .B(n286), .C(exponent_product[3]), .D(n260), .Y(
        n284) );
  OAI21X1 U358 ( .A(n287), .B(n147), .C(n288), .Y(n286) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n289), .C(n148), .Y(n288) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n148) );
  INVX1 U361 ( .A(n289), .Y(n287) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n256), .Y(n289) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n290), .C(n291), .Y(n285) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n283) );
  NAND3X1 U365 ( .A(n292), .B(n84), .C(\gte_183/A[2] ), .Y(n282) );
  INVX1 U366 ( .A(n291), .Y(n292) );
  NOR2X1 U367 ( .A(n260), .B(exponent_product[3]), .Y(n291) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n260) );
  OAI21X1 U369 ( .A(n293), .B(n264), .C(n294), .Y(n225) );
  OAI21X1 U370 ( .A(n295), .B(n296), .C(n224), .Y(n294) );
  INVX1 U371 ( .A(n206), .Y(n224) );
  OAI22X1 U372 ( .A(n268), .B(n274), .C(n277), .D(n271), .Y(n296) );
  INVX1 U373 ( .A(product[1]), .Y(n277) );
  OAI21X1 U374 ( .A(n101), .B(n42), .C(n297), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n52), .Y(n297) );
  INVX1 U376 ( .A(product[4]), .Y(n274) );
  OAI22X1 U377 ( .A(n270), .B(n273), .C(n263), .D(n275), .Y(n295) );
  INVX1 U378 ( .A(product[2]), .Y(n263) );
  OAI21X1 U379 ( .A(n101), .B(n43), .C(n298), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n52), .Y(n298) );
  INVX1 U381 ( .A(product[3]), .Y(n270) );
  OAI21X1 U382 ( .A(n101), .B(n299), .C(n300), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n52), .Y(n300) );
  INVX1 U384 ( .A(N346), .Y(n299) );
  INVX1 U385 ( .A(product[0]), .Y(n293) );
  OAI21X1 U386 ( .A(n101), .B(n301), .C(n302), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n52), .Y(n302) );
  INVX1 U388 ( .A(n290), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n303), .B(n304), .C(float), .Y(n290) );
  OAI21X1 U390 ( .A(n268), .B(n305), .C(n306), .Y(n304) );
  AOI22X1 U391 ( .A(N436), .B(n307), .C(N412), .D(n308), .Y(n306) );
  INVX1 U392 ( .A(N388), .Y(n305) );
  OAI21X1 U393 ( .A(n309), .B(N388), .C(n310), .Y(n303) );
  AOI21X1 U394 ( .A(n311), .B(N460), .C(n312), .Y(n310) );
  INVX1 U395 ( .A(n147), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n313), .B(n314), .C(float), .Y(n147) );
  OAI21X1 U397 ( .A(N435), .B(n268), .C(n315), .Y(n314) );
  AOI22X1 U398 ( .A(N435), .B(n307), .C(N411), .D(n308), .Y(n315) );
  OAI21X1 U399 ( .A(N435), .B(n309), .C(n316), .Y(n313) );
  AOI21X1 U400 ( .A(n311), .B(N459), .C(n312), .Y(n316) );
  INVX1 U401 ( .A(n317), .Y(n312) );
  NOR2X1 U402 ( .A(n318), .B(n271), .Y(n311) );
  OAI21X1 U403 ( .A(n319), .B(n206), .C(n320), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n321), .Y(n320) );
  INVX1 U405 ( .A(n264), .Y(n321) );
  NAND2X1 U406 ( .A(n322), .B(float), .Y(n264) );
  AND2X1 U407 ( .A(n323), .B(n324), .Y(n319) );
  AOI22X1 U408 ( .A(N438), .B(n307), .C(N414), .D(n308), .Y(n324) );
  AOI22X1 U409 ( .A(N462), .B(n325), .C(N390), .D(product[7]), .Y(n323) );
  OAI21X1 U410 ( .A(n326), .B(n206), .C(n327), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n328), .Y(n327) );
  OAI21X1 U412 ( .A(n309), .B(n40), .C(n329), .Y(n328) );
  OAI21X1 U413 ( .A(N461), .B(n318), .C(n325), .Y(n329) );
  NAND2X1 U414 ( .A(n330), .B(float), .Y(n206) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n331), .Y(n326) );
  INVX1 U416 ( .A(n332), .Y(n331) );
  AOI22X1 U417 ( .A(n49), .B(n307), .C(N413), .D(n308), .Y(n332) );
  INVX1 U418 ( .A(n256), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n333), .B(n334), .C(float), .Y(n256) );
  OAI21X1 U420 ( .A(n268), .B(n335), .C(n336), .Y(n334) );
  AOI22X1 U421 ( .A(n335), .B(n308), .C(N386), .D(n322), .Y(n336) );
  INVX1 U422 ( .A(n309), .Y(n322) );
  NAND3X1 U423 ( .A(n330), .B(n337), .C(n338), .Y(n309) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n338) );
  INVX1 U425 ( .A(n318), .Y(n330) );
  INVX1 U426 ( .A(N386), .Y(n335) );
  NAND3X1 U427 ( .A(n339), .B(n317), .C(n340), .Y(n333) );
  NAND2X1 U428 ( .A(N386), .B(n307), .Y(n340) );
  OAI21X1 U429 ( .A(n307), .B(n341), .C(n318), .Y(n317) );
  NAND2X1 U430 ( .A(n273), .B(n268), .Y(n341) );
  INVX1 U431 ( .A(product[7]), .Y(n268) );
  INVX1 U432 ( .A(n308), .Y(n273) );
  NOR2X1 U433 ( .A(n269), .B(product[7]), .Y(n308) );
  INVX1 U434 ( .A(product[6]), .Y(n269) );
  INVX1 U435 ( .A(n275), .Y(n307) );
  NAND2X1 U436 ( .A(n337), .B(product[5]), .Y(n275) );
  OAI21X1 U437 ( .A(n335), .B(n318), .C(n325), .Y(n339) );
  INVX1 U438 ( .A(n271), .Y(n325) );
  NAND3X1 U439 ( .A(product[4]), .B(n272), .C(n337), .Y(n271) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n337) );
  OAI21X1 U441 ( .A(n101), .B(n41), .C(n342), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n52), .Y(n342) );
  OAI21X1 U443 ( .A(n101), .B(n44), .C(n343), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n52), .Y(n343) );
  INVX1 U445 ( .A(product[5]), .Y(n272) );
  OAI21X1 U446 ( .A(n101), .B(n344), .C(n345), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n52), .Y(n345) );
  INVX1 U448 ( .A(N348), .Y(n344) );
  OAI21X1 U449 ( .A(n101), .B(n346), .C(n347), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n52), .Y(n347) );
  NAND2X1 U451 ( .A(n197), .B(n101), .Y(n89) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n197) );
  INVX1 U453 ( .A(N347), .Y(n346) );
  NAND2X1 U454 ( .A(n348), .B(n349), .Y(n318) );
  OAI21X1 U455 ( .A(n350), .B(n351), .C(n66), .Y(n349) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n351) );
  INVX1 U457 ( .A(value[5]), .Y(n350) );
  OAI21X1 U458 ( .A(n60), .B(n352), .C(n353), .Y(n348) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  NOR2X1 U461 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U462 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U463 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U464 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U465 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U466 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U467 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U468 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U469 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U470 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U471 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U472 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U473 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U474 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U475 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U476 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U477 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U478 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U479 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U480 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U481 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U482 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U483 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U484 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U485 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U486 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U487 ( .A(N49), .Y(n362) );
  NOR2X1 U488 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U489 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U490 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U491 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U492 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U493 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U494 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U495 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U496 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U497 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U498 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U499 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U500 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U501 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U502 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U503 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U504 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U505 ( .A(n377), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U506 ( .A(value[2]), .Y(n374) );
  NOR2X1 U507 ( .A(n375), .B(n63), .Y(N319) );
  NOR2X1 U508 ( .A(n376), .B(n63), .Y(N318) );
  NOR2X1 U509 ( .A(n377), .B(n63), .Y(N317) );
  INVX1 U510 ( .A(N34), .Y(n377) );
  NOR2X1 U511 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U512 ( .A(N327), .Y(n375) );
  NOR2X1 U513 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U514 ( .A(N326), .Y(n376) );
  INVX1 U515 ( .A(N51), .Y(n378) );
  NAND2X1 U516 ( .A(N51), .B(N34), .Y(n301) );
  NOR2X1 U517 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U518 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U519 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U520 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U521 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U522 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U523 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U524 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U525 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U526 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U527 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U528 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U529 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U530 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U531 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U532 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U533 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U534 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U535 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U536 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U537 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U538 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U539 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U540 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U541 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U542 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U543 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U544 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U545 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U546 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U547 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U548 ( .A(n361), .B(n381), .Y(N135) );
  MUX2X1 U549 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U550 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U551 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U552 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U553 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U554 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U555 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U556 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U557 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U558 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U559 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U560 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U561 ( .A(n361), .B(n382), .Y(N235) );
  MUX2X1 U562 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U563 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U564 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U565 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U566 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U567 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U568 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U569 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U570 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U571 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U572 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U573 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U574 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U575 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U576 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U577 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U578 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U579 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U580 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U581 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U582 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U583 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U584 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U585 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U586 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U587 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U588 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U589 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U590 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U591 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U592 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U593 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U594 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U595 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U596 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U597 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U598 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_7_DW01_add_12_DW01_add_158 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_7_DW01_add_11_DW01_add_157 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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


module signed_multiplier_7_DW01_add_10_DW01_add_156 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_7_DW01_add_9_DW01_add_155 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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


module signed_multiplier_7_DW01_add_7_DW01_add_153 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
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
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module signed_multiplier_7_DW01_add_6_DW01_add_152 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module signed_multiplier_7 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N133, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N410, N411, N412, N413, N414, N435, N436, N438, N458, N459,
         N460, N461, N462, N481, N540, N541, N542, N543, N544, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N525, N524, N523,
         N522, N521, N509, N508, N507, N506, N505, N385, N384, N262, N261,
         N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250,
         N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_2_root_add_0_root_add_76_7/carry[15] ,
         \add_2_root_add_0_root_add_76_7/carry[14] ,
         \add_2_root_add_0_root_add_76_7/carry[13] ,
         \add_2_root_add_0_root_add_76_7/carry[12] ,
         \add_2_root_add_0_root_add_76_7/carry[11] ,
         \add_2_root_add_0_root_add_76_7/carry[10] ,
         \add_2_root_add_0_root_add_76_7/carry[9] ,
         \add_2_root_add_0_root_add_76_7/carry[8] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_7_DW01_add_12_DW01_add_158 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_7_DW01_add_11_DW01_add_157 add_5_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199}) );
  signed_multiplier_7_DW01_add_10_DW01_add_156 add_4_root_add_0_root_add_76_7 ( 
        .A({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247}) );
  signed_multiplier_7_DW01_add_9_DW01_add_155 add_3_root_add_0_root_add_76_7 ( 
        .A({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_7_DW01_add_7_DW01_add_153 add_1_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_7_DW01_add_6_DW01_add_152 add_0_root_add_0_root_add_76_7 ( 
        .A({N166, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n275), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n194), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n188), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n192), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n86), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n85), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n13), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n17), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n146), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n289), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n84), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n147), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n83), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n259), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n22), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n15), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n11), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n16), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n18), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_7  ( .A(N137), .B(N148), .C(n14), 
        .YC(\add_2_root_add_0_root_add_76_7/carry[8] ), .YS(N174) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_8  ( .A(N138), .B(N149), .C(
        \add_2_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YS(N175) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_9  ( .A(N139), .B(N150), .C(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YS(N176) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_10  ( .A(N140), .B(N151), .C(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YS(N177) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_11  ( .A(N141), .B(N152), .C(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YS(N178) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_12  ( .A(N142), .B(N153), .C(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YS(N179) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_13  ( .A(N143), .B(N154), .C(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YS(N180) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_14  ( .A(N144), .B(N155), .C(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N181) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_15  ( .A(N145), .B(N156), .C(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N182) );
  AND2X2 U3 ( .A(n378), .B(n377), .Y(n1) );
  AND2X2 U4 ( .A(n7), .B(n349), .Y(n2) );
  AND2X2 U5 ( .A(n12), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n1), .B(n374), .Y(n5) );
  AND2X2 U8 ( .A(n38), .B(n58), .Y(n6) );
  AND2X2 U9 ( .A(n36), .B(n64), .Y(n7) );
  AND2X2 U10 ( .A(n46), .B(n60), .Y(n8) );
  AND2X2 U11 ( .A(n35), .B(n81), .Y(n9) );
  AND2X2 U12 ( .A(N435), .B(N436), .Y(n10) );
  AND2X2 U13 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n11) );
  AND2X2 U14 ( .A(N386), .B(N435), .Y(n12) );
  AND2X2 U15 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n13) );
  AND2X2 U16 ( .A(N147), .B(N136), .Y(n14) );
  AND2X2 U17 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n15) );
  AND2X2 U18 ( .A(N317), .B(N314), .Y(n16) );
  AND2X2 U19 ( .A(cumulative[0]), .B(product[0]), .Y(n17) );
  AND2X2 U20 ( .A(N34), .B(N322), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n19) );
  AND2X2 U22 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(n20) );
  AND2X2 U23 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n21) );
  AND2X2 U24 ( .A(value[3]), .B(weight[3]), .Y(n22) );
  AND2X2 U25 ( .A(n67), .B(n68), .Y(n23) );
  AND2X2 U26 ( .A(n23), .B(n69), .Y(n24) );
  AND2X2 U27 ( .A(n24), .B(n70), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n71), .Y(n26) );
  AND2X2 U29 ( .A(n26), .B(n72), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n73), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n74), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n75), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n76), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n77), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n78), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n79), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n80), .Y(n35) );
  AND2X2 U38 ( .A(n5), .B(n63), .Y(n36) );
  AND2X2 U39 ( .A(n6), .B(n57), .Y(n37) );
  AND2X2 U40 ( .A(n8), .B(n59), .Y(n38) );
  XNOR2X1 U41 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n39) );
  XNOR2X1 U42 ( .A(cumulative[0]), .B(product[0]), .Y(n40) );
  XNOR2X1 U43 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n41)
         );
  XNOR2X1 U44 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n42) );
  XNOR2X1 U45 ( .A(N317), .B(N314), .Y(n43) );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  AND2X2 U47 ( .A(n2), .B(n65), .Y(n45) );
  AND2X2 U48 ( .A(n62), .B(n61), .Y(n46) );
  AND2X2 U49 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n47) );
  INVX1 U50 ( .A(N384), .Y(n48) );
  INVX2 U51 ( .A(n48), .Y(n49) );
  INVX2 U52 ( .A(n138), .Y(n115) );
  INVX2 U53 ( .A(n50), .Y(n52) );
  INVX2 U54 ( .A(n50), .Y(n53) );
  INVX2 U55 ( .A(n88), .Y(n51) );
  OR2X1 U56 ( .A(n196), .B(float), .Y(n50) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n280), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n280), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n87), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n87), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n255), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n255), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n82), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n82), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n19), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n20), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n49), .Y(N438) );
  OR2X1 U76 ( .A(n49), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n49), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n49), .B(n10), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n10), .B(n49), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n282), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n12), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n67), .B(n68), .Y(N281) );
  XOR2X1 U90 ( .A(n23), .B(n69), .Y(N282) );
  XOR2X1 U91 ( .A(n24), .B(n70), .Y(N283) );
  XOR2X1 U92 ( .A(n25), .B(n71), .Y(N284) );
  XOR2X1 U93 ( .A(n26), .B(n72), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n73), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n74), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n75), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n76), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n77), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n78), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n79), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n80), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n81), .Y(N294) );
  XOR2X1 U103 ( .A(n92), .B(n9), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n377), .Y(N52) );
  XOR2X1 U105 ( .A(n1), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n5), .B(n63), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n64), .Y(N55) );
  XOR2X1 U108 ( .A(n7), .B(n349), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n65), .Y(N57) );
  XOR2X1 U110 ( .A(n66), .B(n45), .Y(N58) );
  XOR2X1 U111 ( .A(n62), .B(n61), .Y(N35) );
  XOR2X1 U112 ( .A(n46), .B(n60), .Y(N36) );
  XOR2X1 U113 ( .A(n8), .B(n59), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n58), .Y(N38) );
  XOR2X1 U115 ( .A(n6), .B(n57), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N147), .B(N136), .Y(N173) );
  INVX2 U120 ( .A(float), .Y(n100) );
  INVX2 U121 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U122 ( .A(weight[6]), .Y(n56) );
  INVX2 U123 ( .A(weight[5]), .Y(n57) );
  INVX2 U124 ( .A(weight[4]), .Y(n58) );
  INVX2 U125 ( .A(weight[3]), .Y(n59) );
  INVX2 U126 ( .A(N327), .Y(n60) );
  INVX2 U127 ( .A(N326), .Y(n61) );
  INVX2 U128 ( .A(N34), .Y(n62) );
  NOR2X1 U129 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U130 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U131 ( .A(value[3]), .Y(n63) );
  INVX2 U132 ( .A(value[4]), .Y(n64) );
  INVX2 U133 ( .A(value[6]), .Y(n65) );
  INVX2 U134 ( .A(value[7]), .Y(n66) );
  INVX2 U135 ( .A(N280), .Y(n67) );
  INVX2 U136 ( .A(N264), .Y(n68) );
  INVX2 U137 ( .A(N265), .Y(n69) );
  INVX2 U138 ( .A(N266), .Y(n70) );
  INVX2 U139 ( .A(N267), .Y(n71) );
  INVX2 U140 ( .A(N268), .Y(n72) );
  INVX2 U141 ( .A(N269), .Y(n73) );
  INVX2 U142 ( .A(N270), .Y(n74) );
  INVX2 U143 ( .A(N271), .Y(n75) );
  INVX2 U144 ( .A(N272), .Y(n76) );
  INVX2 U145 ( .A(N273), .Y(n77) );
  INVX2 U146 ( .A(N274), .Y(n78) );
  INVX2 U147 ( .A(N275), .Y(n79) );
  INVX2 U148 ( .A(N276), .Y(n80) );
  INVX2 U149 ( .A(N277), .Y(n81) );
  INVX2 U150 ( .A(N386), .Y(N410) );
  INVX2 U151 ( .A(N386), .Y(N458) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n82) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n83) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n84) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n85) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n86) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n87) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n88), .B(n76), .C(n89), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n52), .C(n90), .Y(n89) );
  OAI21X1 U162 ( .A(n88), .B(n75), .C(n91), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n52), .C(n90), .Y(n91) );
  OAI21X1 U164 ( .A(n88), .B(n92), .C(n93), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n52), .C(n90), .Y(n93) );
  INVX1 U166 ( .A(N278), .Y(n92) );
  OAI21X1 U167 ( .A(n88), .B(n81), .C(n94), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n52), .C(n90), .Y(n94) );
  OAI21X1 U169 ( .A(n88), .B(n80), .C(n95), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n52), .C(n90), .Y(n95) );
  OAI21X1 U171 ( .A(n88), .B(n79), .C(n96), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n52), .C(n90), .Y(n96) );
  OAI21X1 U173 ( .A(n88), .B(n78), .C(n97), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n52), .C(n90), .Y(n97) );
  OAI21X1 U175 ( .A(n88), .B(n77), .C(n98), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n52), .C(n90), .Y(n98) );
  AND2X1 U177 ( .A(float), .B(n47), .Y(n90) );
  OAI21X1 U178 ( .A(n99), .B(n100), .C(n101), .Y(overflow) );
  OAI22X1 U179 ( .A(n102), .B(n100), .C(n103), .D(n104), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n104) );
  MUX2X1 U181 ( .B(n105), .A(n106), .S(n107), .Y(n102) );
  OAI21X1 U182 ( .A(n100), .B(n108), .C(n109), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n110), .C(n111), .Y(n109) );
  MUX2X1 U184 ( .B(n112), .A(n113), .S(n114), .Y(n108) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n115), .Y(n114)
         );
  NAND2X1 U186 ( .A(n116), .B(n117), .Y(n113) );
  MUX2X1 U187 ( .B(n118), .A(n119), .S(n120), .Y(n116) );
  NOR2X1 U188 ( .A(n121), .B(n122), .Y(n119) );
  NOR2X1 U189 ( .A(n123), .B(n124), .Y(n118) );
  NAND3X1 U190 ( .A(n125), .B(n126), .C(n127), .Y(n112) );
  OAI21X1 U191 ( .A(n128), .B(n121), .C(n129), .Y(n126) );
  MUX2X1 U192 ( .B(n130), .A(n131), .S(n123), .Y(n125) );
  NAND2X1 U193 ( .A(n132), .B(n133), .Y(out[5]) );
  OAI21X1 U194 ( .A(n134), .B(n135), .C(float), .Y(n133) );
  OAI21X1 U195 ( .A(n121), .B(n122), .C(n117), .Y(n135) );
  NAND3X1 U196 ( .A(n120), .B(n123), .C(n136), .Y(n117) );
  XOR2X1 U197 ( .A(n120), .B(n123), .Y(n121) );
  MUX2X1 U198 ( .B(n127), .A(n137), .S(n123), .Y(n134) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n138), .Y(n123) );
  OR2X1 U200 ( .A(n124), .B(n120), .Y(n137) );
  NOR2X1 U201 ( .A(n139), .B(n140), .Y(n127) );
  MUX2X1 U202 ( .B(n99), .A(n141), .S(n128), .Y(n139) );
  AOI21X1 U203 ( .A(N357), .B(n110), .C(n111), .Y(n132) );
  INVX1 U204 ( .A(n142), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n110), .C(n143), .Y(n142) );
  OAI21X1 U206 ( .A(n100), .B(n144), .C(n101), .Y(n143) );
  MUX2X1 U207 ( .B(n140), .A(n145), .S(n120), .Y(n144) );
  INVX1 U208 ( .A(n128), .Y(n120) );
  MUX2X1 U209 ( .B(n146), .A(n147), .S(n115), .Y(n128) );
  NAND3X1 U210 ( .A(n148), .B(n124), .C(n122), .Y(n145) );
  NAND2X1 U211 ( .A(n149), .B(n131), .Y(n124) );
  INVX1 U212 ( .A(n150), .Y(n149) );
  NAND2X1 U213 ( .A(n151), .B(n152), .Y(n140) );
  MUX2X1 U214 ( .B(n130), .A(n131), .S(n150), .Y(n151) );
  NAND2X1 U215 ( .A(n153), .B(n154), .Y(out[3]) );
  OAI21X1 U216 ( .A(n136), .B(n155), .C(float), .Y(n154) );
  MUX2X1 U217 ( .B(n156), .A(n99), .S(n150), .Y(n155) );
  NOR2X1 U218 ( .A(n129), .B(n157), .Y(n156) );
  INVX1 U219 ( .A(n122), .Y(n129) );
  INVX1 U220 ( .A(n148), .Y(n136) );
  NAND2X1 U221 ( .A(n130), .B(n150), .Y(n148) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n115), .Y(n150)
         );
  INVX1 U223 ( .A(n141), .Y(n130) );
  AOI21X1 U224 ( .A(N355), .B(n110), .C(n111), .Y(n153) );
  NAND2X1 U225 ( .A(n158), .B(n159), .Y(out[2]) );
  OAI21X1 U226 ( .A(n160), .B(n161), .C(float), .Y(n159) );
  OAI22X1 U227 ( .A(n99), .B(n162), .C(n163), .D(n152), .Y(n161) );
  OAI22X1 U228 ( .A(n164), .B(n141), .C(n165), .D(n122), .Y(n160) );
  NAND3X1 U229 ( .A(n162), .B(n166), .C(n167), .Y(n122) );
  NOR2X1 U230 ( .A(n131), .B(n168), .Y(n167) );
  AOI21X1 U231 ( .A(N354), .B(n110), .C(n111), .Y(n158) );
  OAI21X1 U232 ( .A(n169), .B(n100), .C(n170), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n110), .C(n111), .Y(n170) );
  INVX1 U234 ( .A(n103), .Y(n110) );
  AOI21X1 U235 ( .A(n157), .B(n166), .C(n171), .Y(n169) );
  OAI22X1 U236 ( .A(n99), .B(n163), .C(n165), .D(n141), .Y(n171) );
  NAND3X1 U237 ( .A(n162), .B(n168), .C(n99), .Y(n141) );
  INVX1 U238 ( .A(n168), .Y(n163) );
  OAI21X1 U239 ( .A(n172), .B(n173), .C(n174), .Y(n168) );
  AOI22X1 U240 ( .A(N548), .B(n175), .C(N553), .D(n176), .Y(n174) );
  INVX1 U241 ( .A(N542), .Y(n173) );
  OAI21X1 U242 ( .A(n103), .B(n40), .C(n177), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n178), .C(n111), .Y(n177) );
  INVX1 U244 ( .A(n101), .Y(n111) );
  OAI22X1 U245 ( .A(n99), .B(n164), .C(n165), .D(n152), .Y(n178) );
  INVX1 U246 ( .A(n157), .Y(n152) );
  NOR2X1 U247 ( .A(n131), .B(n162), .Y(n157) );
  AOI21X1 U248 ( .A(n179), .B(N543), .C(n180), .Y(n162) );
  INVX1 U249 ( .A(n181), .Y(n180) );
  AOI22X1 U250 ( .A(N549), .B(n175), .C(N554), .D(n176), .Y(n181) );
  AOI21X1 U251 ( .A(n179), .B(N540), .C(n182), .Y(n165) );
  INVX1 U252 ( .A(n183), .Y(n182) );
  AOI22X1 U253 ( .A(N546), .B(n175), .C(N551), .D(n176), .Y(n183) );
  INVX1 U254 ( .A(n166), .Y(n164) );
  OAI21X1 U255 ( .A(n172), .B(n184), .C(n185), .Y(n166) );
  AOI22X1 U256 ( .A(N547), .B(n175), .C(N552), .D(n176), .Y(n185) );
  INVX1 U257 ( .A(N541), .Y(n184) );
  INVX1 U258 ( .A(n131), .Y(n99) );
  OAI21X1 U259 ( .A(n172), .B(n186), .C(n187), .Y(n131) );
  AOI22X1 U260 ( .A(N550), .B(n175), .C(N555), .D(n176), .Y(n187) );
  NOR2X1 U261 ( .A(n107), .B(n179), .Y(n176) );
  INVX1 U262 ( .A(n172), .Y(n179) );
  AND2X1 U263 ( .A(n172), .B(n107), .Y(n175) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n188), .C(n189), .Y(n107) );
  OAI21X1 U265 ( .A(n86), .B(m_large[2]), .C(n190), .Y(n189) );
  AOI21X1 U266 ( .A(n188), .B(\sub_218/A[3] ), .C(n191), .Y(n190) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n192), .C(n193), .Y(n191) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n194), .C(n195), .Y(n193) );
  OAI22X1 U269 ( .A(n192), .B(m_large[1]), .C(n87), .D(m_large[0]), .Y(n195)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n192) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n188) );
  INVX1 U272 ( .A(N544), .Y(n186) );
  XOR2X1 U273 ( .A(n105), .B(n106), .Y(n172) );
  MUX2X1 U274 ( .B(n196), .A(n197), .S(n115), .Y(n106) );
  MUX2X1 U275 ( .B(n197), .A(n196), .S(n115), .Y(n105) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n197) );
  NAND2X1 U277 ( .A(n101), .B(n100), .Y(n103) );
  OAI21X1 U278 ( .A(n198), .B(n199), .C(n200), .Y(n101) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n200) );
  NAND2X1 U280 ( .A(n201), .B(n202), .Y(n199) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n202) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n201) );
  NAND2X1 U283 ( .A(n203), .B(n204), .Y(n198) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n204) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n203) );
  NAND2X1 U286 ( .A(n138), .B(n205), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n206), .B(n207), .C(n208), .D(n209), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n210), .B(n211), .Y(n209) );
  INVX1 U289 ( .A(n212), .Y(n211) );
  MUX2X1 U290 ( .B(n213), .A(n214), .S(N506), .Y(n210) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n214) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n213) );
  NAND3X1 U293 ( .A(n215), .B(n216), .C(n217), .Y(n208) );
  INVX1 U294 ( .A(N509), .Y(n216) );
  INVX1 U295 ( .A(N508), .Y(n215) );
  NAND2X1 U296 ( .A(n218), .B(n219), .Y(n207) );
  MUX2X1 U297 ( .B(n220), .A(n221), .S(N522), .Y(n218) );
  OAI21X1 U298 ( .A(N521), .B(n222), .C(n223), .Y(n221) );
  MUX2X1 U299 ( .B(n224), .A(n225), .S(N521), .Y(n220) );
  NAND3X1 U300 ( .A(n226), .B(n227), .C(n228), .Y(n206) );
  INVX1 U301 ( .A(N525), .Y(n227) );
  INVX1 U302 ( .A(N524), .Y(n226) );
  OAI21X1 U303 ( .A(n229), .B(n212), .C(n230), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n231), .B(n232), .C(n219), .Y(n230) );
  MUX2X1 U305 ( .B(n233), .A(n234), .S(N521), .Y(n232) );
  NAND2X1 U306 ( .A(n235), .B(n222), .Y(n234) );
  INVX1 U307 ( .A(n236), .Y(n235) );
  NAND3X1 U308 ( .A(n237), .B(n228), .C(n238), .Y(n233) );
  NOR2X1 U309 ( .A(n205), .B(n239), .Y(n238) );
  AND2X1 U310 ( .A(n225), .B(n240), .Y(n231) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n241), .C(n242), .Y(n229) );
  MUX2X1 U312 ( .B(n243), .A(n244), .S(N505), .Y(n242) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n245), .Y(n244) );
  NAND3X1 U314 ( .A(N506), .B(n217), .C(n246), .Y(n243) );
  OAI22X1 U315 ( .A(n247), .B(n212), .C(n248), .D(n249), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n250), .B(N521), .C(n240), .D(n222), .Y(n248) );
  NOR2X1 U317 ( .A(n205), .B(n236), .Y(n250) );
  AOI22X1 U318 ( .A(N505), .B(n245), .C(cumulative[2]), .D(n241), .Y(n247) );
  INVX1 U319 ( .A(n251), .Y(n245) );
  OAI21X1 U320 ( .A(n252), .B(n212), .C(n253), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n240), .B(n223), .C(n219), .Y(n253) );
  INVX1 U322 ( .A(n249), .Y(n219) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n254), .C(n115), .Y(n249) );
  NOR2X1 U324 ( .A(n255), .B(n256), .Y(n254) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n256) );
  NOR2X1 U326 ( .A(n236), .B(N521), .Y(n240) );
  NAND3X1 U327 ( .A(n239), .B(n228), .C(n237), .Y(n236) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n237) );
  INVX1 U329 ( .A(N523), .Y(n228) );
  INVX1 U330 ( .A(N522), .Y(n239) );
  NAND2X1 U331 ( .A(n257), .B(n138), .Y(n212) );
  OAI21X1 U332 ( .A(n147), .B(n258), .C(n259), .Y(n257) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n258) );
  INVX1 U334 ( .A(n241), .Y(n252) );
  NOR2X1 U335 ( .A(n251), .B(N505), .Y(n241) );
  NAND3X1 U336 ( .A(n260), .B(n217), .C(n246), .Y(n251) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n246) );
  INVX1 U338 ( .A(N507), .Y(n217) );
  INVX1 U339 ( .A(N506), .Y(n260) );
  INVX1 U340 ( .A(n261), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n261) );
  INVX1 U342 ( .A(n194), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n222), .A(cumulative[2]), .S(n115), .Y(n194) );
  OAI21X1 U344 ( .A(n262), .B(n263), .C(n264), .Y(n222) );
  OAI21X1 U345 ( .A(n265), .B(n266), .C(n223), .Y(n264) );
  OAI22X1 U346 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  OAI22X1 U347 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  INVX1 U348 ( .A(n275), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n225), .A(cumulative[1]), .S(n115), .Y(n275) );
  OAI21X1 U350 ( .A(n276), .B(n263), .C(n277), .Y(n225) );
  OAI21X1 U351 ( .A(n278), .B(n279), .C(n223), .Y(n277) );
  OAI22X1 U352 ( .A(n267), .B(n271), .C(n262), .D(n270), .Y(n279) );
  OAI22X1 U353 ( .A(n273), .B(n272), .C(n269), .D(n274), .Y(n278) );
  INVX1 U354 ( .A(n280), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n224), .A(cumulative[0]), .S(n115), .Y(n280) );
  NAND3X1 U356 ( .A(n281), .B(n282), .C(n283), .Y(n138) );
  AOI22X1 U357 ( .A(n284), .B(n285), .C(exponent_product[3]), .D(n259), .Y(
        n283) );
  OAI21X1 U358 ( .A(n286), .B(n146), .C(n287), .Y(n285) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n288), .C(n147), .Y(n287) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n147) );
  INVX1 U361 ( .A(n288), .Y(n286) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n255), .Y(n288) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n289), .C(n290), .Y(n284) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n282) );
  NAND3X1 U365 ( .A(n291), .B(n83), .C(\gte_183/A[2] ), .Y(n281) );
  INVX1 U366 ( .A(n290), .Y(n291) );
  NOR2X1 U367 ( .A(n259), .B(exponent_product[3]), .Y(n290) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n259) );
  OAI21X1 U369 ( .A(n292), .B(n263), .C(n293), .Y(n224) );
  OAI21X1 U370 ( .A(n294), .B(n295), .C(n223), .Y(n293) );
  INVX1 U371 ( .A(n205), .Y(n223) );
  OAI22X1 U372 ( .A(n267), .B(n273), .C(n276), .D(n270), .Y(n295) );
  INVX1 U373 ( .A(product[1]), .Y(n276) );
  OAI21X1 U374 ( .A(n100), .B(n43), .C(n296), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n51), .Y(n296) );
  INVX1 U376 ( .A(product[4]), .Y(n273) );
  OAI22X1 U377 ( .A(n269), .B(n272), .C(n262), .D(n274), .Y(n294) );
  INVX1 U378 ( .A(product[2]), .Y(n262) );
  OAI21X1 U379 ( .A(n100), .B(n41), .C(n297), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n51), .Y(n297) );
  INVX1 U381 ( .A(product[3]), .Y(n269) );
  OAI21X1 U382 ( .A(n100), .B(n298), .C(n299), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n51), .Y(n299) );
  INVX1 U384 ( .A(N346), .Y(n298) );
  INVX1 U385 ( .A(product[0]), .Y(n292) );
  OAI21X1 U386 ( .A(n100), .B(n300), .C(n301), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n51), .Y(n301) );
  INVX1 U388 ( .A(n289), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n302), .B(n303), .C(float), .Y(n289) );
  OAI21X1 U390 ( .A(n267), .B(n304), .C(n305), .Y(n303) );
  AOI22X1 U391 ( .A(N436), .B(n306), .C(N412), .D(n307), .Y(n305) );
  INVX1 U392 ( .A(N388), .Y(n304) );
  OAI21X1 U393 ( .A(n308), .B(N388), .C(n309), .Y(n302) );
  AOI21X1 U394 ( .A(n310), .B(N460), .C(n311), .Y(n309) );
  INVX1 U395 ( .A(n146), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n312), .B(n313), .C(float), .Y(n146) );
  OAI21X1 U397 ( .A(N435), .B(n267), .C(n314), .Y(n313) );
  AOI22X1 U398 ( .A(N435), .B(n306), .C(N411), .D(n307), .Y(n314) );
  OAI21X1 U399 ( .A(N435), .B(n308), .C(n315), .Y(n312) );
  AOI21X1 U400 ( .A(n310), .B(N459), .C(n311), .Y(n315) );
  INVX1 U401 ( .A(n316), .Y(n311) );
  NOR2X1 U402 ( .A(n317), .B(n270), .Y(n310) );
  OAI21X1 U403 ( .A(n318), .B(n205), .C(n319), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n320), .Y(n319) );
  INVX1 U405 ( .A(n263), .Y(n320) );
  NAND2X1 U406 ( .A(n321), .B(float), .Y(n263) );
  AND2X1 U407 ( .A(n322), .B(n323), .Y(n318) );
  AOI22X1 U408 ( .A(N438), .B(n306), .C(N414), .D(n307), .Y(n323) );
  AOI22X1 U409 ( .A(N462), .B(n324), .C(N390), .D(product[7]), .Y(n322) );
  OAI21X1 U410 ( .A(n325), .B(n205), .C(n326), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n327), .Y(n326) );
  OAI21X1 U412 ( .A(n308), .B(n39), .C(n328), .Y(n327) );
  OAI21X1 U413 ( .A(N461), .B(n317), .C(n324), .Y(n328) );
  NAND2X1 U414 ( .A(n329), .B(float), .Y(n205) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n330), .Y(n325) );
  INVX1 U416 ( .A(n331), .Y(n330) );
  AOI22X1 U417 ( .A(n48), .B(n306), .C(N413), .D(n307), .Y(n331) );
  INVX1 U418 ( .A(n255), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n332), .B(n333), .C(float), .Y(n255) );
  OAI21X1 U420 ( .A(n267), .B(n334), .C(n335), .Y(n333) );
  AOI22X1 U421 ( .A(N410), .B(n307), .C(N386), .D(n321), .Y(n335) );
  INVX1 U422 ( .A(n308), .Y(n321) );
  NAND3X1 U423 ( .A(n329), .B(n336), .C(n337), .Y(n308) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n337) );
  INVX1 U425 ( .A(n317), .Y(n329) );
  INVX1 U426 ( .A(N386), .Y(n334) );
  NAND3X1 U427 ( .A(n338), .B(n316), .C(n339), .Y(n332) );
  NAND2X1 U428 ( .A(N386), .B(n306), .Y(n339) );
  OAI21X1 U429 ( .A(n306), .B(n340), .C(n317), .Y(n316) );
  NAND2X1 U430 ( .A(n272), .B(n267), .Y(n340) );
  INVX1 U431 ( .A(product[7]), .Y(n267) );
  INVX1 U432 ( .A(n307), .Y(n272) );
  NOR2X1 U433 ( .A(n268), .B(product[7]), .Y(n307) );
  INVX1 U434 ( .A(product[6]), .Y(n268) );
  INVX1 U435 ( .A(n274), .Y(n306) );
  NAND2X1 U436 ( .A(n336), .B(product[5]), .Y(n274) );
  OAI21X1 U437 ( .A(N458), .B(n317), .C(n324), .Y(n338) );
  INVX1 U438 ( .A(n270), .Y(n324) );
  NAND3X1 U439 ( .A(product[4]), .B(n271), .C(n336), .Y(n270) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n336) );
  OAI21X1 U441 ( .A(n100), .B(n42), .C(n341), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n51), .Y(n341) );
  OAI21X1 U443 ( .A(n100), .B(n44), .C(n342), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n51), .Y(n342) );
  INVX1 U445 ( .A(product[5]), .Y(n271) );
  OAI21X1 U446 ( .A(n100), .B(n343), .C(n344), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n51), .Y(n344) );
  INVX1 U448 ( .A(N348), .Y(n343) );
  OAI21X1 U449 ( .A(n100), .B(n345), .C(n346), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n51), .Y(n346) );
  NAND2X1 U451 ( .A(n196), .B(n100), .Y(n88) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n196) );
  INVX1 U453 ( .A(N347), .Y(n345) );
  NAND2X1 U454 ( .A(n347), .B(n348), .Y(n317) );
  OAI21X1 U455 ( .A(n349), .B(n350), .C(n65), .Y(n348) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n350) );
  INVX1 U457 ( .A(value[5]), .Y(n349) );
  OAI21X1 U458 ( .A(n351), .B(n352), .C(n353), .Y(n347) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  INVX1 U461 ( .A(weight[5]), .Y(n351) );
  NOR2X1 U462 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U463 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U464 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U465 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U466 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U467 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U468 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U469 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U470 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U471 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U472 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U473 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U474 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U475 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U476 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U477 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U478 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U479 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U480 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U481 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U482 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U483 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U484 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U485 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U486 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U487 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U488 ( .A(N49), .Y(n362) );
  NOR2X1 U489 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U490 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U491 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U492 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U493 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U494 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U495 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U496 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U497 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U498 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U499 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U500 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U501 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U502 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U503 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U504 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U505 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U506 ( .A(n62), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U507 ( .A(value[2]), .Y(n374) );
  NOR2X1 U508 ( .A(n375), .B(n377), .Y(N319) );
  NOR2X1 U509 ( .A(n376), .B(n377), .Y(N318) );
  NOR2X1 U510 ( .A(n62), .B(n377), .Y(N317) );
  INVX1 U511 ( .A(value[1]), .Y(n377) );
  NOR2X1 U512 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U513 ( .A(N327), .Y(n375) );
  NOR2X1 U514 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U515 ( .A(N326), .Y(n376) );
  INVX1 U516 ( .A(N51), .Y(n378) );
  NAND2X1 U517 ( .A(N51), .B(N34), .Y(n300) );
  NOR2X1 U518 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U519 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U520 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U521 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U522 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U523 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U524 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U525 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U526 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U527 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U528 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U529 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U530 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U531 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U532 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U533 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U534 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U535 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U536 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U537 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U538 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U539 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U540 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U541 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U542 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U543 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U544 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U545 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U546 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U547 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U548 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U549 ( .A(n361), .B(n381), .Y(N172) );
  MUX2X1 U550 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U551 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U552 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U553 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U554 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U555 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U556 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U557 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U558 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U559 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U560 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U561 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U562 ( .A(n361), .B(n382), .Y(N122) );
  MUX2X1 U563 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U564 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U565 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U566 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U567 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U568 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U569 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U570 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U571 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U572 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U573 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U574 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U575 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U576 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U577 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U578 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U579 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U580 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U581 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U582 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U583 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U584 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U585 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U586 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U587 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U588 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U589 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U590 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U591 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U592 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U593 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U594 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U595 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U596 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U597 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U598 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U599 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_6_DW01_add_12_DW01_add_165 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_6_DW01_add_11_DW01_add_164 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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


module signed_multiplier_6_DW01_add_10_DW01_add_163 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_6_DW01_add_9_DW01_add_162 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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


module signed_multiplier_6_DW01_add_7_DW01_add_160 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
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
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module signed_multiplier_6_DW01_add_6_DW01_add_159 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module signed_multiplier_6 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N133, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N410, N411, N412, N413, N414, N435, N436, N438, N458, N459,
         N460, N461, N462, N481, N540, N541, N542, N543, N544, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N525, N524, N523,
         N522, N521, N509, N508, N507, N506, N505, N385, N384, N262, N261,
         N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250,
         N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_2_root_add_0_root_add_76_7/carry[15] ,
         \add_2_root_add_0_root_add_76_7/carry[14] ,
         \add_2_root_add_0_root_add_76_7/carry[13] ,
         \add_2_root_add_0_root_add_76_7/carry[12] ,
         \add_2_root_add_0_root_add_76_7/carry[11] ,
         \add_2_root_add_0_root_add_76_7/carry[10] ,
         \add_2_root_add_0_root_add_76_7/carry[9] ,
         \add_2_root_add_0_root_add_76_7/carry[8] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_6_DW01_add_12_DW01_add_165 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_6_DW01_add_11_DW01_add_164 add_5_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199}) );
  signed_multiplier_6_DW01_add_10_DW01_add_163 add_4_root_add_0_root_add_76_7 ( 
        .A({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247}) );
  signed_multiplier_6_DW01_add_9_DW01_add_162 add_3_root_add_0_root_add_76_7 ( 
        .A({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_6_DW01_add_7_DW01_add_160 add_1_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_6_DW01_add_6_DW01_add_159 add_0_root_add_0_root_add_76_7 ( 
        .A({N166, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n275), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n194), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n188), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n192), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n86), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n85), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n13), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n17), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n146), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n289), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n84), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n147), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n83), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n259), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n22), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n15), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n11), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n16), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n18), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_7  ( .A(N137), .B(N148), .C(n14), 
        .YC(\add_2_root_add_0_root_add_76_7/carry[8] ), .YS(N174) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_8  ( .A(N138), .B(N149), .C(
        \add_2_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YS(N175) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_9  ( .A(N139), .B(N150), .C(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YS(N176) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_10  ( .A(N140), .B(N151), .C(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YS(N177) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_11  ( .A(N141), .B(N152), .C(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YS(N178) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_12  ( .A(N142), .B(N153), .C(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YS(N179) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_13  ( .A(N143), .B(N154), .C(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YS(N180) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_14  ( .A(N144), .B(N155), .C(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N181) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_15  ( .A(N145), .B(N156), .C(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N182) );
  AND2X2 U3 ( .A(n378), .B(n377), .Y(n1) );
  AND2X2 U4 ( .A(n7), .B(n349), .Y(n2) );
  AND2X2 U5 ( .A(n12), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n1), .B(n374), .Y(n5) );
  AND2X2 U8 ( .A(n38), .B(n58), .Y(n6) );
  AND2X2 U9 ( .A(n36), .B(n64), .Y(n7) );
  AND2X2 U10 ( .A(n46), .B(n60), .Y(n8) );
  AND2X2 U11 ( .A(n35), .B(n81), .Y(n9) );
  AND2X2 U12 ( .A(N435), .B(N436), .Y(n10) );
  AND2X2 U13 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n11) );
  AND2X2 U14 ( .A(N386), .B(N435), .Y(n12) );
  AND2X2 U15 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n13) );
  AND2X2 U16 ( .A(N147), .B(N136), .Y(n14) );
  AND2X2 U17 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n15) );
  AND2X2 U18 ( .A(N317), .B(N314), .Y(n16) );
  AND2X2 U19 ( .A(cumulative[0]), .B(product[0]), .Y(n17) );
  AND2X2 U20 ( .A(N34), .B(N322), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n19) );
  AND2X2 U22 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(n20) );
  AND2X2 U23 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n21) );
  AND2X2 U24 ( .A(value[3]), .B(weight[3]), .Y(n22) );
  AND2X2 U25 ( .A(n67), .B(n68), .Y(n23) );
  AND2X2 U26 ( .A(n23), .B(n69), .Y(n24) );
  AND2X2 U27 ( .A(n24), .B(n70), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n71), .Y(n26) );
  AND2X2 U29 ( .A(n26), .B(n72), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n73), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n74), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n75), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n76), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n77), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n78), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n79), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n80), .Y(n35) );
  AND2X2 U38 ( .A(n5), .B(n63), .Y(n36) );
  AND2X2 U39 ( .A(n6), .B(n57), .Y(n37) );
  AND2X2 U40 ( .A(n8), .B(n59), .Y(n38) );
  XNOR2X1 U41 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n39) );
  XNOR2X1 U42 ( .A(cumulative[0]), .B(product[0]), .Y(n40) );
  XNOR2X1 U43 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n41)
         );
  XNOR2X1 U44 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n42) );
  XNOR2X1 U45 ( .A(N317), .B(N314), .Y(n43) );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  AND2X2 U47 ( .A(n2), .B(n65), .Y(n45) );
  AND2X2 U48 ( .A(n62), .B(n61), .Y(n46) );
  AND2X2 U49 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n47) );
  INVX1 U50 ( .A(N384), .Y(n48) );
  INVX2 U51 ( .A(n48), .Y(n49) );
  INVX2 U52 ( .A(n138), .Y(n115) );
  INVX2 U53 ( .A(n50), .Y(n52) );
  INVX2 U54 ( .A(n50), .Y(n53) );
  INVX2 U55 ( .A(n88), .Y(n51) );
  OR2X1 U56 ( .A(n196), .B(float), .Y(n50) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n280), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n280), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n87), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n87), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n255), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n255), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n82), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n82), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n19), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n20), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n49), .Y(N438) );
  OR2X1 U76 ( .A(n49), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n49), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n49), .B(n10), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n10), .B(n49), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n282), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n12), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n67), .B(n68), .Y(N281) );
  XOR2X1 U90 ( .A(n23), .B(n69), .Y(N282) );
  XOR2X1 U91 ( .A(n24), .B(n70), .Y(N283) );
  XOR2X1 U92 ( .A(n25), .B(n71), .Y(N284) );
  XOR2X1 U93 ( .A(n26), .B(n72), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n73), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n74), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n75), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n76), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n77), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n78), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n79), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n80), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n81), .Y(N294) );
  XOR2X1 U103 ( .A(n92), .B(n9), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n377), .Y(N52) );
  XOR2X1 U105 ( .A(n1), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n5), .B(n63), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n64), .Y(N55) );
  XOR2X1 U108 ( .A(n7), .B(n349), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n65), .Y(N57) );
  XOR2X1 U110 ( .A(n66), .B(n45), .Y(N58) );
  XOR2X1 U111 ( .A(n62), .B(n61), .Y(N35) );
  XOR2X1 U112 ( .A(n46), .B(n60), .Y(N36) );
  XOR2X1 U113 ( .A(n8), .B(n59), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n58), .Y(N38) );
  XOR2X1 U115 ( .A(n6), .B(n57), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N147), .B(N136), .Y(N173) );
  INVX2 U120 ( .A(float), .Y(n100) );
  INVX2 U121 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U122 ( .A(weight[6]), .Y(n56) );
  INVX2 U123 ( .A(weight[5]), .Y(n57) );
  INVX2 U124 ( .A(weight[4]), .Y(n58) );
  INVX2 U125 ( .A(weight[3]), .Y(n59) );
  INVX2 U126 ( .A(N327), .Y(n60) );
  INVX2 U127 ( .A(N326), .Y(n61) );
  INVX2 U128 ( .A(N34), .Y(n62) );
  NOR2X1 U129 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U130 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U131 ( .A(value[3]), .Y(n63) );
  INVX2 U132 ( .A(value[4]), .Y(n64) );
  INVX2 U133 ( .A(value[6]), .Y(n65) );
  INVX2 U134 ( .A(value[7]), .Y(n66) );
  INVX2 U135 ( .A(N280), .Y(n67) );
  INVX2 U136 ( .A(N264), .Y(n68) );
  INVX2 U137 ( .A(N265), .Y(n69) );
  INVX2 U138 ( .A(N266), .Y(n70) );
  INVX2 U139 ( .A(N267), .Y(n71) );
  INVX2 U140 ( .A(N268), .Y(n72) );
  INVX2 U141 ( .A(N269), .Y(n73) );
  INVX2 U142 ( .A(N270), .Y(n74) );
  INVX2 U143 ( .A(N271), .Y(n75) );
  INVX2 U144 ( .A(N272), .Y(n76) );
  INVX2 U145 ( .A(N273), .Y(n77) );
  INVX2 U146 ( .A(N274), .Y(n78) );
  INVX2 U147 ( .A(N275), .Y(n79) );
  INVX2 U148 ( .A(N276), .Y(n80) );
  INVX2 U149 ( .A(N277), .Y(n81) );
  INVX2 U150 ( .A(N386), .Y(N410) );
  INVX2 U151 ( .A(N386), .Y(N458) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n82) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n83) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n84) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n85) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n86) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n87) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n88), .B(n76), .C(n89), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n52), .C(n90), .Y(n89) );
  OAI21X1 U162 ( .A(n88), .B(n75), .C(n91), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n52), .C(n90), .Y(n91) );
  OAI21X1 U164 ( .A(n88), .B(n92), .C(n93), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n52), .C(n90), .Y(n93) );
  INVX1 U166 ( .A(N278), .Y(n92) );
  OAI21X1 U167 ( .A(n88), .B(n81), .C(n94), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n52), .C(n90), .Y(n94) );
  OAI21X1 U169 ( .A(n88), .B(n80), .C(n95), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n52), .C(n90), .Y(n95) );
  OAI21X1 U171 ( .A(n88), .B(n79), .C(n96), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n52), .C(n90), .Y(n96) );
  OAI21X1 U173 ( .A(n88), .B(n78), .C(n97), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n52), .C(n90), .Y(n97) );
  OAI21X1 U175 ( .A(n88), .B(n77), .C(n98), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n52), .C(n90), .Y(n98) );
  AND2X1 U177 ( .A(float), .B(n47), .Y(n90) );
  OAI21X1 U178 ( .A(n99), .B(n100), .C(n101), .Y(overflow) );
  OAI22X1 U179 ( .A(n102), .B(n100), .C(n103), .D(n104), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n104) );
  MUX2X1 U181 ( .B(n105), .A(n106), .S(n107), .Y(n102) );
  OAI21X1 U182 ( .A(n100), .B(n108), .C(n109), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n110), .C(n111), .Y(n109) );
  MUX2X1 U184 ( .B(n112), .A(n113), .S(n114), .Y(n108) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n115), .Y(n114)
         );
  NAND2X1 U186 ( .A(n116), .B(n117), .Y(n113) );
  MUX2X1 U187 ( .B(n118), .A(n119), .S(n120), .Y(n116) );
  NOR2X1 U188 ( .A(n121), .B(n122), .Y(n119) );
  NOR2X1 U189 ( .A(n123), .B(n124), .Y(n118) );
  NAND3X1 U190 ( .A(n125), .B(n126), .C(n127), .Y(n112) );
  OAI21X1 U191 ( .A(n128), .B(n121), .C(n129), .Y(n126) );
  MUX2X1 U192 ( .B(n130), .A(n131), .S(n123), .Y(n125) );
  NAND2X1 U193 ( .A(n132), .B(n133), .Y(out[5]) );
  OAI21X1 U194 ( .A(n134), .B(n135), .C(float), .Y(n133) );
  OAI21X1 U195 ( .A(n121), .B(n122), .C(n117), .Y(n135) );
  NAND3X1 U196 ( .A(n120), .B(n123), .C(n136), .Y(n117) );
  XOR2X1 U197 ( .A(n120), .B(n123), .Y(n121) );
  MUX2X1 U198 ( .B(n127), .A(n137), .S(n123), .Y(n134) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n138), .Y(n123) );
  OR2X1 U200 ( .A(n124), .B(n120), .Y(n137) );
  NOR2X1 U201 ( .A(n139), .B(n140), .Y(n127) );
  MUX2X1 U202 ( .B(n99), .A(n141), .S(n128), .Y(n139) );
  AOI21X1 U203 ( .A(N357), .B(n110), .C(n111), .Y(n132) );
  INVX1 U204 ( .A(n142), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n110), .C(n143), .Y(n142) );
  OAI21X1 U206 ( .A(n100), .B(n144), .C(n101), .Y(n143) );
  MUX2X1 U207 ( .B(n140), .A(n145), .S(n120), .Y(n144) );
  INVX1 U208 ( .A(n128), .Y(n120) );
  MUX2X1 U209 ( .B(n146), .A(n147), .S(n115), .Y(n128) );
  NAND3X1 U210 ( .A(n148), .B(n124), .C(n122), .Y(n145) );
  NAND2X1 U211 ( .A(n149), .B(n131), .Y(n124) );
  INVX1 U212 ( .A(n150), .Y(n149) );
  NAND2X1 U213 ( .A(n151), .B(n152), .Y(n140) );
  MUX2X1 U214 ( .B(n130), .A(n131), .S(n150), .Y(n151) );
  NAND2X1 U215 ( .A(n153), .B(n154), .Y(out[3]) );
  OAI21X1 U216 ( .A(n136), .B(n155), .C(float), .Y(n154) );
  MUX2X1 U217 ( .B(n156), .A(n99), .S(n150), .Y(n155) );
  NOR2X1 U218 ( .A(n129), .B(n157), .Y(n156) );
  INVX1 U219 ( .A(n122), .Y(n129) );
  INVX1 U220 ( .A(n148), .Y(n136) );
  NAND2X1 U221 ( .A(n130), .B(n150), .Y(n148) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n115), .Y(n150)
         );
  INVX1 U223 ( .A(n141), .Y(n130) );
  AOI21X1 U224 ( .A(N355), .B(n110), .C(n111), .Y(n153) );
  NAND2X1 U225 ( .A(n158), .B(n159), .Y(out[2]) );
  OAI21X1 U226 ( .A(n160), .B(n161), .C(float), .Y(n159) );
  OAI22X1 U227 ( .A(n99), .B(n162), .C(n163), .D(n152), .Y(n161) );
  OAI22X1 U228 ( .A(n164), .B(n141), .C(n165), .D(n122), .Y(n160) );
  NAND3X1 U229 ( .A(n162), .B(n166), .C(n167), .Y(n122) );
  NOR2X1 U230 ( .A(n131), .B(n168), .Y(n167) );
  AOI21X1 U231 ( .A(N354), .B(n110), .C(n111), .Y(n158) );
  OAI21X1 U232 ( .A(n169), .B(n100), .C(n170), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n110), .C(n111), .Y(n170) );
  INVX1 U234 ( .A(n103), .Y(n110) );
  AOI21X1 U235 ( .A(n157), .B(n166), .C(n171), .Y(n169) );
  OAI22X1 U236 ( .A(n99), .B(n163), .C(n165), .D(n141), .Y(n171) );
  NAND3X1 U237 ( .A(n162), .B(n168), .C(n99), .Y(n141) );
  INVX1 U238 ( .A(n168), .Y(n163) );
  OAI21X1 U239 ( .A(n172), .B(n173), .C(n174), .Y(n168) );
  AOI22X1 U240 ( .A(N548), .B(n175), .C(N553), .D(n176), .Y(n174) );
  INVX1 U241 ( .A(N542), .Y(n173) );
  OAI21X1 U242 ( .A(n103), .B(n40), .C(n177), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n178), .C(n111), .Y(n177) );
  INVX1 U244 ( .A(n101), .Y(n111) );
  OAI22X1 U245 ( .A(n99), .B(n164), .C(n165), .D(n152), .Y(n178) );
  INVX1 U246 ( .A(n157), .Y(n152) );
  NOR2X1 U247 ( .A(n131), .B(n162), .Y(n157) );
  AOI21X1 U248 ( .A(n179), .B(N543), .C(n180), .Y(n162) );
  INVX1 U249 ( .A(n181), .Y(n180) );
  AOI22X1 U250 ( .A(N549), .B(n175), .C(N554), .D(n176), .Y(n181) );
  AOI21X1 U251 ( .A(n179), .B(N540), .C(n182), .Y(n165) );
  INVX1 U252 ( .A(n183), .Y(n182) );
  AOI22X1 U253 ( .A(N546), .B(n175), .C(N551), .D(n176), .Y(n183) );
  INVX1 U254 ( .A(n166), .Y(n164) );
  OAI21X1 U255 ( .A(n172), .B(n184), .C(n185), .Y(n166) );
  AOI22X1 U256 ( .A(N547), .B(n175), .C(N552), .D(n176), .Y(n185) );
  INVX1 U257 ( .A(N541), .Y(n184) );
  INVX1 U258 ( .A(n131), .Y(n99) );
  OAI21X1 U259 ( .A(n172), .B(n186), .C(n187), .Y(n131) );
  AOI22X1 U260 ( .A(N550), .B(n175), .C(N555), .D(n176), .Y(n187) );
  NOR2X1 U261 ( .A(n107), .B(n179), .Y(n176) );
  INVX1 U262 ( .A(n172), .Y(n179) );
  AND2X1 U263 ( .A(n172), .B(n107), .Y(n175) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n188), .C(n189), .Y(n107) );
  OAI21X1 U265 ( .A(n86), .B(m_large[2]), .C(n190), .Y(n189) );
  AOI21X1 U266 ( .A(n188), .B(\sub_218/A[3] ), .C(n191), .Y(n190) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n192), .C(n193), .Y(n191) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n194), .C(n195), .Y(n193) );
  OAI22X1 U269 ( .A(n192), .B(m_large[1]), .C(n87), .D(m_large[0]), .Y(n195)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n192) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n188) );
  INVX1 U272 ( .A(N544), .Y(n186) );
  XOR2X1 U273 ( .A(n105), .B(n106), .Y(n172) );
  MUX2X1 U274 ( .B(n196), .A(n197), .S(n115), .Y(n106) );
  MUX2X1 U275 ( .B(n197), .A(n196), .S(n115), .Y(n105) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n197) );
  NAND2X1 U277 ( .A(n101), .B(n100), .Y(n103) );
  OAI21X1 U278 ( .A(n198), .B(n199), .C(n200), .Y(n101) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n200) );
  NAND2X1 U280 ( .A(n201), .B(n202), .Y(n199) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n202) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n201) );
  NAND2X1 U283 ( .A(n203), .B(n204), .Y(n198) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n204) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n203) );
  NAND2X1 U286 ( .A(n138), .B(n205), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n206), .B(n207), .C(n208), .D(n209), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n210), .B(n211), .Y(n209) );
  INVX1 U289 ( .A(n212), .Y(n211) );
  MUX2X1 U290 ( .B(n213), .A(n214), .S(N506), .Y(n210) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n214) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n213) );
  NAND3X1 U293 ( .A(n215), .B(n216), .C(n217), .Y(n208) );
  INVX1 U294 ( .A(N509), .Y(n216) );
  INVX1 U295 ( .A(N508), .Y(n215) );
  NAND2X1 U296 ( .A(n218), .B(n219), .Y(n207) );
  MUX2X1 U297 ( .B(n220), .A(n221), .S(N522), .Y(n218) );
  OAI21X1 U298 ( .A(N521), .B(n222), .C(n223), .Y(n221) );
  MUX2X1 U299 ( .B(n224), .A(n225), .S(N521), .Y(n220) );
  NAND3X1 U300 ( .A(n226), .B(n227), .C(n228), .Y(n206) );
  INVX1 U301 ( .A(N525), .Y(n227) );
  INVX1 U302 ( .A(N524), .Y(n226) );
  OAI21X1 U303 ( .A(n229), .B(n212), .C(n230), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n231), .B(n232), .C(n219), .Y(n230) );
  MUX2X1 U305 ( .B(n233), .A(n234), .S(N521), .Y(n232) );
  NAND2X1 U306 ( .A(n235), .B(n222), .Y(n234) );
  INVX1 U307 ( .A(n236), .Y(n235) );
  NAND3X1 U308 ( .A(n237), .B(n228), .C(n238), .Y(n233) );
  NOR2X1 U309 ( .A(n205), .B(n239), .Y(n238) );
  AND2X1 U310 ( .A(n225), .B(n240), .Y(n231) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n241), .C(n242), .Y(n229) );
  MUX2X1 U312 ( .B(n243), .A(n244), .S(N505), .Y(n242) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n245), .Y(n244) );
  NAND3X1 U314 ( .A(N506), .B(n217), .C(n246), .Y(n243) );
  OAI22X1 U315 ( .A(n247), .B(n212), .C(n248), .D(n249), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n250), .B(N521), .C(n240), .D(n222), .Y(n248) );
  NOR2X1 U317 ( .A(n205), .B(n236), .Y(n250) );
  AOI22X1 U318 ( .A(N505), .B(n245), .C(cumulative[2]), .D(n241), .Y(n247) );
  INVX1 U319 ( .A(n251), .Y(n245) );
  OAI21X1 U320 ( .A(n252), .B(n212), .C(n253), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n240), .B(n223), .C(n219), .Y(n253) );
  INVX1 U322 ( .A(n249), .Y(n219) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n254), .C(n115), .Y(n249) );
  NOR2X1 U324 ( .A(n255), .B(n256), .Y(n254) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n256) );
  NOR2X1 U326 ( .A(n236), .B(N521), .Y(n240) );
  NAND3X1 U327 ( .A(n239), .B(n228), .C(n237), .Y(n236) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n237) );
  INVX1 U329 ( .A(N523), .Y(n228) );
  INVX1 U330 ( .A(N522), .Y(n239) );
  NAND2X1 U331 ( .A(n257), .B(n138), .Y(n212) );
  OAI21X1 U332 ( .A(n147), .B(n258), .C(n259), .Y(n257) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n258) );
  INVX1 U334 ( .A(n241), .Y(n252) );
  NOR2X1 U335 ( .A(n251), .B(N505), .Y(n241) );
  NAND3X1 U336 ( .A(n260), .B(n217), .C(n246), .Y(n251) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n246) );
  INVX1 U338 ( .A(N507), .Y(n217) );
  INVX1 U339 ( .A(N506), .Y(n260) );
  INVX1 U340 ( .A(n261), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n261) );
  INVX1 U342 ( .A(n194), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n222), .A(cumulative[2]), .S(n115), .Y(n194) );
  OAI21X1 U344 ( .A(n262), .B(n263), .C(n264), .Y(n222) );
  OAI21X1 U345 ( .A(n265), .B(n266), .C(n223), .Y(n264) );
  OAI22X1 U346 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  OAI22X1 U347 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  INVX1 U348 ( .A(n275), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n225), .A(cumulative[1]), .S(n115), .Y(n275) );
  OAI21X1 U350 ( .A(n276), .B(n263), .C(n277), .Y(n225) );
  OAI21X1 U351 ( .A(n278), .B(n279), .C(n223), .Y(n277) );
  OAI22X1 U352 ( .A(n267), .B(n271), .C(n262), .D(n270), .Y(n279) );
  OAI22X1 U353 ( .A(n273), .B(n272), .C(n269), .D(n274), .Y(n278) );
  INVX1 U354 ( .A(n280), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n224), .A(cumulative[0]), .S(n115), .Y(n280) );
  NAND3X1 U356 ( .A(n281), .B(n282), .C(n283), .Y(n138) );
  AOI22X1 U357 ( .A(n284), .B(n285), .C(exponent_product[3]), .D(n259), .Y(
        n283) );
  OAI21X1 U358 ( .A(n286), .B(n146), .C(n287), .Y(n285) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n288), .C(n147), .Y(n287) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n147) );
  INVX1 U361 ( .A(n288), .Y(n286) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n255), .Y(n288) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n289), .C(n290), .Y(n284) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n282) );
  NAND3X1 U365 ( .A(n291), .B(n83), .C(\gte_183/A[2] ), .Y(n281) );
  INVX1 U366 ( .A(n290), .Y(n291) );
  NOR2X1 U367 ( .A(n259), .B(exponent_product[3]), .Y(n290) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n259) );
  OAI21X1 U369 ( .A(n292), .B(n263), .C(n293), .Y(n224) );
  OAI21X1 U370 ( .A(n294), .B(n295), .C(n223), .Y(n293) );
  INVX1 U371 ( .A(n205), .Y(n223) );
  OAI22X1 U372 ( .A(n267), .B(n273), .C(n276), .D(n270), .Y(n295) );
  INVX1 U373 ( .A(product[1]), .Y(n276) );
  OAI21X1 U374 ( .A(n100), .B(n43), .C(n296), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n51), .Y(n296) );
  INVX1 U376 ( .A(product[4]), .Y(n273) );
  OAI22X1 U377 ( .A(n269), .B(n272), .C(n262), .D(n274), .Y(n294) );
  INVX1 U378 ( .A(product[2]), .Y(n262) );
  OAI21X1 U379 ( .A(n100), .B(n41), .C(n297), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n51), .Y(n297) );
  INVX1 U381 ( .A(product[3]), .Y(n269) );
  OAI21X1 U382 ( .A(n100), .B(n298), .C(n299), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n51), .Y(n299) );
  INVX1 U384 ( .A(N346), .Y(n298) );
  INVX1 U385 ( .A(product[0]), .Y(n292) );
  OAI21X1 U386 ( .A(n100), .B(n300), .C(n301), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n51), .Y(n301) );
  INVX1 U388 ( .A(n289), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n302), .B(n303), .C(float), .Y(n289) );
  OAI21X1 U390 ( .A(n267), .B(n304), .C(n305), .Y(n303) );
  AOI22X1 U391 ( .A(N436), .B(n306), .C(N412), .D(n307), .Y(n305) );
  INVX1 U392 ( .A(N388), .Y(n304) );
  OAI21X1 U393 ( .A(n308), .B(N388), .C(n309), .Y(n302) );
  AOI21X1 U394 ( .A(n310), .B(N460), .C(n311), .Y(n309) );
  INVX1 U395 ( .A(n146), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n312), .B(n313), .C(float), .Y(n146) );
  OAI21X1 U397 ( .A(N435), .B(n267), .C(n314), .Y(n313) );
  AOI22X1 U398 ( .A(N435), .B(n306), .C(N411), .D(n307), .Y(n314) );
  OAI21X1 U399 ( .A(N435), .B(n308), .C(n315), .Y(n312) );
  AOI21X1 U400 ( .A(n310), .B(N459), .C(n311), .Y(n315) );
  INVX1 U401 ( .A(n316), .Y(n311) );
  NOR2X1 U402 ( .A(n317), .B(n270), .Y(n310) );
  OAI21X1 U403 ( .A(n318), .B(n205), .C(n319), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n320), .Y(n319) );
  INVX1 U405 ( .A(n263), .Y(n320) );
  NAND2X1 U406 ( .A(n321), .B(float), .Y(n263) );
  AND2X1 U407 ( .A(n322), .B(n323), .Y(n318) );
  AOI22X1 U408 ( .A(N438), .B(n306), .C(N414), .D(n307), .Y(n323) );
  AOI22X1 U409 ( .A(N462), .B(n324), .C(N390), .D(product[7]), .Y(n322) );
  OAI21X1 U410 ( .A(n325), .B(n205), .C(n326), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n327), .Y(n326) );
  OAI21X1 U412 ( .A(n308), .B(n39), .C(n328), .Y(n327) );
  OAI21X1 U413 ( .A(N461), .B(n317), .C(n324), .Y(n328) );
  NAND2X1 U414 ( .A(n329), .B(float), .Y(n205) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n330), .Y(n325) );
  INVX1 U416 ( .A(n331), .Y(n330) );
  AOI22X1 U417 ( .A(n48), .B(n306), .C(N413), .D(n307), .Y(n331) );
  INVX1 U418 ( .A(n255), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n332), .B(n333), .C(float), .Y(n255) );
  OAI21X1 U420 ( .A(n267), .B(n334), .C(n335), .Y(n333) );
  AOI22X1 U421 ( .A(N410), .B(n307), .C(N386), .D(n321), .Y(n335) );
  INVX1 U422 ( .A(n308), .Y(n321) );
  NAND3X1 U423 ( .A(n329), .B(n336), .C(n337), .Y(n308) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n337) );
  INVX1 U425 ( .A(n317), .Y(n329) );
  INVX1 U426 ( .A(N386), .Y(n334) );
  NAND3X1 U427 ( .A(n338), .B(n316), .C(n339), .Y(n332) );
  NAND2X1 U428 ( .A(N386), .B(n306), .Y(n339) );
  OAI21X1 U429 ( .A(n306), .B(n340), .C(n317), .Y(n316) );
  NAND2X1 U430 ( .A(n272), .B(n267), .Y(n340) );
  INVX1 U431 ( .A(product[7]), .Y(n267) );
  INVX1 U432 ( .A(n307), .Y(n272) );
  NOR2X1 U433 ( .A(n268), .B(product[7]), .Y(n307) );
  INVX1 U434 ( .A(product[6]), .Y(n268) );
  INVX1 U435 ( .A(n274), .Y(n306) );
  NAND2X1 U436 ( .A(n336), .B(product[5]), .Y(n274) );
  OAI21X1 U437 ( .A(N458), .B(n317), .C(n324), .Y(n338) );
  INVX1 U438 ( .A(n270), .Y(n324) );
  NAND3X1 U439 ( .A(product[4]), .B(n271), .C(n336), .Y(n270) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n336) );
  OAI21X1 U441 ( .A(n100), .B(n42), .C(n341), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n51), .Y(n341) );
  OAI21X1 U443 ( .A(n100), .B(n44), .C(n342), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n51), .Y(n342) );
  INVX1 U445 ( .A(product[5]), .Y(n271) );
  OAI21X1 U446 ( .A(n100), .B(n343), .C(n344), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n51), .Y(n344) );
  INVX1 U448 ( .A(N348), .Y(n343) );
  OAI21X1 U449 ( .A(n100), .B(n345), .C(n346), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n51), .Y(n346) );
  NAND2X1 U451 ( .A(n196), .B(n100), .Y(n88) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n196) );
  INVX1 U453 ( .A(N347), .Y(n345) );
  NAND2X1 U454 ( .A(n347), .B(n348), .Y(n317) );
  OAI21X1 U455 ( .A(n349), .B(n350), .C(n65), .Y(n348) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n350) );
  INVX1 U457 ( .A(value[5]), .Y(n349) );
  OAI21X1 U458 ( .A(n351), .B(n352), .C(n353), .Y(n347) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  INVX1 U461 ( .A(weight[5]), .Y(n351) );
  NOR2X1 U462 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U463 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U464 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U465 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U466 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U467 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U468 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U469 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U470 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U471 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U472 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U473 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U474 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U475 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U476 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U477 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U478 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U479 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U480 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U481 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U482 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U483 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U484 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U485 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U486 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U487 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U488 ( .A(N49), .Y(n362) );
  NOR2X1 U489 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U490 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U491 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U492 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U493 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U494 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U495 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U496 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U497 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U498 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U499 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U500 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U501 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U502 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U503 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U504 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U505 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U506 ( .A(n62), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U507 ( .A(value[2]), .Y(n374) );
  NOR2X1 U508 ( .A(n375), .B(n377), .Y(N319) );
  NOR2X1 U509 ( .A(n376), .B(n377), .Y(N318) );
  NOR2X1 U510 ( .A(n62), .B(n377), .Y(N317) );
  INVX1 U511 ( .A(value[1]), .Y(n377) );
  NOR2X1 U512 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U513 ( .A(N327), .Y(n375) );
  NOR2X1 U514 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U515 ( .A(N326), .Y(n376) );
  INVX1 U516 ( .A(N51), .Y(n378) );
  NAND2X1 U517 ( .A(N51), .B(N34), .Y(n300) );
  NOR2X1 U518 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U519 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U520 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U521 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U522 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U523 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U524 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U525 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U526 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U527 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U528 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U529 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U530 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U531 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U532 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U533 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U534 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U535 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U536 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U537 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U538 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U539 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U540 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U541 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U542 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U543 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U544 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U545 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U546 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U547 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U548 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U549 ( .A(n361), .B(n381), .Y(N172) );
  MUX2X1 U550 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U551 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U552 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U553 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U554 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U555 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U556 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U557 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U558 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U559 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U560 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U561 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U562 ( .A(n361), .B(n382), .Y(N122) );
  MUX2X1 U563 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U564 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U565 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U566 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U567 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U568 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U569 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U570 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U571 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U572 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U573 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U574 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U575 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U576 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U577 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U578 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U579 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U580 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U581 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U582 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U583 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U584 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U585 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U586 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U587 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U588 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U589 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U590 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U591 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U592 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U593 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U594 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U595 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U596 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U597 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U598 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U599 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_5_DW01_add_12_DW01_add_172 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_5_DW01_add_11_DW01_add_171 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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


module signed_multiplier_5_DW01_add_10_DW01_add_170 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_5_DW01_add_9_DW01_add_169 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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


module signed_multiplier_5_DW01_add_7_DW01_add_167 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
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
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module signed_multiplier_5_DW01_add_6_DW01_add_166 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module signed_multiplier_5 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N133, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N410, N411, N412, N413, N414, N435, N436, N438, N458, N459,
         N460, N461, N462, N481, N540, N541, N542, N543, N544, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N525, N524, N523,
         N522, N521, N509, N508, N507, N506, N505, N385, N384, N262, N261,
         N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250,
         N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_2_root_add_0_root_add_76_7/carry[15] ,
         \add_2_root_add_0_root_add_76_7/carry[14] ,
         \add_2_root_add_0_root_add_76_7/carry[13] ,
         \add_2_root_add_0_root_add_76_7/carry[12] ,
         \add_2_root_add_0_root_add_76_7/carry[11] ,
         \add_2_root_add_0_root_add_76_7/carry[10] ,
         \add_2_root_add_0_root_add_76_7/carry[9] ,
         \add_2_root_add_0_root_add_76_7/carry[8] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_5_DW01_add_12_DW01_add_172 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_5_DW01_add_11_DW01_add_171 add_5_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199}) );
  signed_multiplier_5_DW01_add_10_DW01_add_170 add_4_root_add_0_root_add_76_7 ( 
        .A({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247}) );
  signed_multiplier_5_DW01_add_9_DW01_add_169 add_3_root_add_0_root_add_76_7 ( 
        .A({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_5_DW01_add_7_DW01_add_167 add_1_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_5_DW01_add_6_DW01_add_166 add_0_root_add_0_root_add_76_7 ( 
        .A({N166, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n275), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n194), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n188), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n192), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n86), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n85), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n13), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n17), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n146), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n289), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n84), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n147), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n83), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n259), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n22), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n15), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n11), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n16), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n18), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_7  ( .A(N137), .B(N148), .C(n14), 
        .YC(\add_2_root_add_0_root_add_76_7/carry[8] ), .YS(N174) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_8  ( .A(N138), .B(N149), .C(
        \add_2_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YS(N175) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_9  ( .A(N139), .B(N150), .C(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YS(N176) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_10  ( .A(N140), .B(N151), .C(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YS(N177) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_11  ( .A(N141), .B(N152), .C(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YS(N178) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_12  ( .A(N142), .B(N153), .C(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YS(N179) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_13  ( .A(N143), .B(N154), .C(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YS(N180) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_14  ( .A(N144), .B(N155), .C(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N181) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_15  ( .A(N145), .B(N156), .C(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N182) );
  AND2X2 U3 ( .A(n378), .B(n377), .Y(n1) );
  AND2X2 U4 ( .A(n7), .B(n349), .Y(n2) );
  AND2X2 U5 ( .A(n12), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n1), .B(n374), .Y(n5) );
  AND2X2 U8 ( .A(n38), .B(n58), .Y(n6) );
  AND2X2 U9 ( .A(n36), .B(n64), .Y(n7) );
  AND2X2 U10 ( .A(n46), .B(n60), .Y(n8) );
  AND2X2 U11 ( .A(n35), .B(n81), .Y(n9) );
  AND2X2 U12 ( .A(N435), .B(N436), .Y(n10) );
  AND2X2 U13 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n11) );
  AND2X2 U14 ( .A(N386), .B(N435), .Y(n12) );
  AND2X2 U15 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n13) );
  AND2X2 U16 ( .A(N147), .B(N136), .Y(n14) );
  AND2X2 U17 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n15) );
  AND2X2 U18 ( .A(N317), .B(N314), .Y(n16) );
  AND2X2 U19 ( .A(cumulative[0]), .B(product[0]), .Y(n17) );
  AND2X2 U20 ( .A(N34), .B(N322), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n19) );
  AND2X2 U22 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(n20) );
  AND2X2 U23 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n21) );
  AND2X2 U24 ( .A(value[3]), .B(weight[3]), .Y(n22) );
  AND2X2 U25 ( .A(n67), .B(n68), .Y(n23) );
  AND2X2 U26 ( .A(n23), .B(n69), .Y(n24) );
  AND2X2 U27 ( .A(n24), .B(n70), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n71), .Y(n26) );
  AND2X2 U29 ( .A(n26), .B(n72), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n73), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n74), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n75), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n76), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n77), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n78), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n79), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n80), .Y(n35) );
  AND2X2 U38 ( .A(n5), .B(n63), .Y(n36) );
  AND2X2 U39 ( .A(n6), .B(n57), .Y(n37) );
  AND2X2 U40 ( .A(n8), .B(n59), .Y(n38) );
  XNOR2X1 U41 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n39) );
  XNOR2X1 U42 ( .A(cumulative[0]), .B(product[0]), .Y(n40) );
  XNOR2X1 U43 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n41)
         );
  XNOR2X1 U44 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n42) );
  XNOR2X1 U45 ( .A(N317), .B(N314), .Y(n43) );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  AND2X2 U47 ( .A(n2), .B(n65), .Y(n45) );
  AND2X2 U48 ( .A(n62), .B(n61), .Y(n46) );
  AND2X2 U49 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n47) );
  INVX1 U50 ( .A(N384), .Y(n48) );
  INVX2 U51 ( .A(n48), .Y(n49) );
  INVX2 U52 ( .A(n138), .Y(n115) );
  INVX2 U53 ( .A(n50), .Y(n52) );
  INVX2 U54 ( .A(n50), .Y(n53) );
  INVX2 U55 ( .A(n88), .Y(n51) );
  OR2X1 U56 ( .A(n196), .B(float), .Y(n50) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n280), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n280), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n87), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n87), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n255), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n255), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n82), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n82), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n19), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n20), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n49), .Y(N438) );
  OR2X1 U76 ( .A(n49), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n49), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n49), .B(n10), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n10), .B(n49), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n282), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n12), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n67), .B(n68), .Y(N281) );
  XOR2X1 U90 ( .A(n23), .B(n69), .Y(N282) );
  XOR2X1 U91 ( .A(n24), .B(n70), .Y(N283) );
  XOR2X1 U92 ( .A(n25), .B(n71), .Y(N284) );
  XOR2X1 U93 ( .A(n26), .B(n72), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n73), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n74), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n75), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n76), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n77), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n78), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n79), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n80), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n81), .Y(N294) );
  XOR2X1 U103 ( .A(n92), .B(n9), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n377), .Y(N52) );
  XOR2X1 U105 ( .A(n1), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n5), .B(n63), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n64), .Y(N55) );
  XOR2X1 U108 ( .A(n7), .B(n349), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n65), .Y(N57) );
  XOR2X1 U110 ( .A(n66), .B(n45), .Y(N58) );
  XOR2X1 U111 ( .A(n62), .B(n61), .Y(N35) );
  XOR2X1 U112 ( .A(n46), .B(n60), .Y(N36) );
  XOR2X1 U113 ( .A(n8), .B(n59), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n58), .Y(N38) );
  XOR2X1 U115 ( .A(n6), .B(n57), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N147), .B(N136), .Y(N173) );
  INVX2 U120 ( .A(float), .Y(n100) );
  INVX2 U121 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U122 ( .A(weight[6]), .Y(n56) );
  INVX2 U123 ( .A(weight[5]), .Y(n57) );
  INVX2 U124 ( .A(weight[4]), .Y(n58) );
  INVX2 U125 ( .A(weight[3]), .Y(n59) );
  INVX2 U126 ( .A(N327), .Y(n60) );
  INVX2 U127 ( .A(N326), .Y(n61) );
  INVX2 U128 ( .A(N34), .Y(n62) );
  NOR2X1 U129 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U130 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U131 ( .A(value[3]), .Y(n63) );
  INVX2 U132 ( .A(value[4]), .Y(n64) );
  INVX2 U133 ( .A(value[6]), .Y(n65) );
  INVX2 U134 ( .A(value[7]), .Y(n66) );
  INVX2 U135 ( .A(N280), .Y(n67) );
  INVX2 U136 ( .A(N264), .Y(n68) );
  INVX2 U137 ( .A(N265), .Y(n69) );
  INVX2 U138 ( .A(N266), .Y(n70) );
  INVX2 U139 ( .A(N267), .Y(n71) );
  INVX2 U140 ( .A(N268), .Y(n72) );
  INVX2 U141 ( .A(N269), .Y(n73) );
  INVX2 U142 ( .A(N270), .Y(n74) );
  INVX2 U143 ( .A(N271), .Y(n75) );
  INVX2 U144 ( .A(N272), .Y(n76) );
  INVX2 U145 ( .A(N273), .Y(n77) );
  INVX2 U146 ( .A(N274), .Y(n78) );
  INVX2 U147 ( .A(N275), .Y(n79) );
  INVX2 U148 ( .A(N276), .Y(n80) );
  INVX2 U149 ( .A(N277), .Y(n81) );
  INVX2 U150 ( .A(N386), .Y(N410) );
  INVX2 U151 ( .A(N386), .Y(N458) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n82) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n83) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n84) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n85) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n86) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n87) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n88), .B(n76), .C(n89), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n52), .C(n90), .Y(n89) );
  OAI21X1 U162 ( .A(n88), .B(n75), .C(n91), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n52), .C(n90), .Y(n91) );
  OAI21X1 U164 ( .A(n88), .B(n92), .C(n93), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n52), .C(n90), .Y(n93) );
  INVX1 U166 ( .A(N278), .Y(n92) );
  OAI21X1 U167 ( .A(n88), .B(n81), .C(n94), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n52), .C(n90), .Y(n94) );
  OAI21X1 U169 ( .A(n88), .B(n80), .C(n95), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n52), .C(n90), .Y(n95) );
  OAI21X1 U171 ( .A(n88), .B(n79), .C(n96), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n52), .C(n90), .Y(n96) );
  OAI21X1 U173 ( .A(n88), .B(n78), .C(n97), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n52), .C(n90), .Y(n97) );
  OAI21X1 U175 ( .A(n88), .B(n77), .C(n98), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n52), .C(n90), .Y(n98) );
  AND2X1 U177 ( .A(float), .B(n47), .Y(n90) );
  OAI21X1 U178 ( .A(n99), .B(n100), .C(n101), .Y(overflow) );
  OAI22X1 U179 ( .A(n102), .B(n100), .C(n103), .D(n104), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n104) );
  MUX2X1 U181 ( .B(n105), .A(n106), .S(n107), .Y(n102) );
  OAI21X1 U182 ( .A(n100), .B(n108), .C(n109), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n110), .C(n111), .Y(n109) );
  MUX2X1 U184 ( .B(n112), .A(n113), .S(n114), .Y(n108) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n115), .Y(n114)
         );
  NAND2X1 U186 ( .A(n116), .B(n117), .Y(n113) );
  MUX2X1 U187 ( .B(n118), .A(n119), .S(n120), .Y(n116) );
  NOR2X1 U188 ( .A(n121), .B(n122), .Y(n119) );
  NOR2X1 U189 ( .A(n123), .B(n124), .Y(n118) );
  NAND3X1 U190 ( .A(n125), .B(n126), .C(n127), .Y(n112) );
  OAI21X1 U191 ( .A(n128), .B(n121), .C(n129), .Y(n126) );
  MUX2X1 U192 ( .B(n130), .A(n131), .S(n123), .Y(n125) );
  NAND2X1 U193 ( .A(n132), .B(n133), .Y(out[5]) );
  OAI21X1 U194 ( .A(n134), .B(n135), .C(float), .Y(n133) );
  OAI21X1 U195 ( .A(n121), .B(n122), .C(n117), .Y(n135) );
  NAND3X1 U196 ( .A(n120), .B(n123), .C(n136), .Y(n117) );
  XOR2X1 U197 ( .A(n120), .B(n123), .Y(n121) );
  MUX2X1 U198 ( .B(n127), .A(n137), .S(n123), .Y(n134) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n138), .Y(n123) );
  OR2X1 U200 ( .A(n124), .B(n120), .Y(n137) );
  NOR2X1 U201 ( .A(n139), .B(n140), .Y(n127) );
  MUX2X1 U202 ( .B(n99), .A(n141), .S(n128), .Y(n139) );
  AOI21X1 U203 ( .A(N357), .B(n110), .C(n111), .Y(n132) );
  INVX1 U204 ( .A(n142), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n110), .C(n143), .Y(n142) );
  OAI21X1 U206 ( .A(n100), .B(n144), .C(n101), .Y(n143) );
  MUX2X1 U207 ( .B(n140), .A(n145), .S(n120), .Y(n144) );
  INVX1 U208 ( .A(n128), .Y(n120) );
  MUX2X1 U209 ( .B(n146), .A(n147), .S(n115), .Y(n128) );
  NAND3X1 U210 ( .A(n148), .B(n124), .C(n122), .Y(n145) );
  NAND2X1 U211 ( .A(n149), .B(n131), .Y(n124) );
  INVX1 U212 ( .A(n150), .Y(n149) );
  NAND2X1 U213 ( .A(n151), .B(n152), .Y(n140) );
  MUX2X1 U214 ( .B(n130), .A(n131), .S(n150), .Y(n151) );
  NAND2X1 U215 ( .A(n153), .B(n154), .Y(out[3]) );
  OAI21X1 U216 ( .A(n136), .B(n155), .C(float), .Y(n154) );
  MUX2X1 U217 ( .B(n156), .A(n99), .S(n150), .Y(n155) );
  NOR2X1 U218 ( .A(n129), .B(n157), .Y(n156) );
  INVX1 U219 ( .A(n122), .Y(n129) );
  INVX1 U220 ( .A(n148), .Y(n136) );
  NAND2X1 U221 ( .A(n130), .B(n150), .Y(n148) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n115), .Y(n150)
         );
  INVX1 U223 ( .A(n141), .Y(n130) );
  AOI21X1 U224 ( .A(N355), .B(n110), .C(n111), .Y(n153) );
  NAND2X1 U225 ( .A(n158), .B(n159), .Y(out[2]) );
  OAI21X1 U226 ( .A(n160), .B(n161), .C(float), .Y(n159) );
  OAI22X1 U227 ( .A(n99), .B(n162), .C(n163), .D(n152), .Y(n161) );
  OAI22X1 U228 ( .A(n164), .B(n141), .C(n165), .D(n122), .Y(n160) );
  NAND3X1 U229 ( .A(n162), .B(n166), .C(n167), .Y(n122) );
  NOR2X1 U230 ( .A(n131), .B(n168), .Y(n167) );
  AOI21X1 U231 ( .A(N354), .B(n110), .C(n111), .Y(n158) );
  OAI21X1 U232 ( .A(n169), .B(n100), .C(n170), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n110), .C(n111), .Y(n170) );
  INVX1 U234 ( .A(n103), .Y(n110) );
  AOI21X1 U235 ( .A(n157), .B(n166), .C(n171), .Y(n169) );
  OAI22X1 U236 ( .A(n99), .B(n163), .C(n165), .D(n141), .Y(n171) );
  NAND3X1 U237 ( .A(n162), .B(n168), .C(n99), .Y(n141) );
  INVX1 U238 ( .A(n168), .Y(n163) );
  OAI21X1 U239 ( .A(n172), .B(n173), .C(n174), .Y(n168) );
  AOI22X1 U240 ( .A(N548), .B(n175), .C(N553), .D(n176), .Y(n174) );
  INVX1 U241 ( .A(N542), .Y(n173) );
  OAI21X1 U242 ( .A(n103), .B(n40), .C(n177), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n178), .C(n111), .Y(n177) );
  INVX1 U244 ( .A(n101), .Y(n111) );
  OAI22X1 U245 ( .A(n99), .B(n164), .C(n165), .D(n152), .Y(n178) );
  INVX1 U246 ( .A(n157), .Y(n152) );
  NOR2X1 U247 ( .A(n131), .B(n162), .Y(n157) );
  AOI21X1 U248 ( .A(n179), .B(N543), .C(n180), .Y(n162) );
  INVX1 U249 ( .A(n181), .Y(n180) );
  AOI22X1 U250 ( .A(N549), .B(n175), .C(N554), .D(n176), .Y(n181) );
  AOI21X1 U251 ( .A(n179), .B(N540), .C(n182), .Y(n165) );
  INVX1 U252 ( .A(n183), .Y(n182) );
  AOI22X1 U253 ( .A(N546), .B(n175), .C(N551), .D(n176), .Y(n183) );
  INVX1 U254 ( .A(n166), .Y(n164) );
  OAI21X1 U255 ( .A(n172), .B(n184), .C(n185), .Y(n166) );
  AOI22X1 U256 ( .A(N547), .B(n175), .C(N552), .D(n176), .Y(n185) );
  INVX1 U257 ( .A(N541), .Y(n184) );
  INVX1 U258 ( .A(n131), .Y(n99) );
  OAI21X1 U259 ( .A(n172), .B(n186), .C(n187), .Y(n131) );
  AOI22X1 U260 ( .A(N550), .B(n175), .C(N555), .D(n176), .Y(n187) );
  NOR2X1 U261 ( .A(n107), .B(n179), .Y(n176) );
  INVX1 U262 ( .A(n172), .Y(n179) );
  AND2X1 U263 ( .A(n172), .B(n107), .Y(n175) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n188), .C(n189), .Y(n107) );
  OAI21X1 U265 ( .A(n86), .B(m_large[2]), .C(n190), .Y(n189) );
  AOI21X1 U266 ( .A(n188), .B(\sub_218/A[3] ), .C(n191), .Y(n190) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n192), .C(n193), .Y(n191) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n194), .C(n195), .Y(n193) );
  OAI22X1 U269 ( .A(n192), .B(m_large[1]), .C(n87), .D(m_large[0]), .Y(n195)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n192) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n188) );
  INVX1 U272 ( .A(N544), .Y(n186) );
  XOR2X1 U273 ( .A(n105), .B(n106), .Y(n172) );
  MUX2X1 U274 ( .B(n196), .A(n197), .S(n115), .Y(n106) );
  MUX2X1 U275 ( .B(n197), .A(n196), .S(n115), .Y(n105) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n197) );
  NAND2X1 U277 ( .A(n101), .B(n100), .Y(n103) );
  OAI21X1 U278 ( .A(n198), .B(n199), .C(n200), .Y(n101) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n200) );
  NAND2X1 U280 ( .A(n201), .B(n202), .Y(n199) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n202) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n201) );
  NAND2X1 U283 ( .A(n203), .B(n204), .Y(n198) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n204) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n203) );
  NAND2X1 U286 ( .A(n138), .B(n205), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n206), .B(n207), .C(n208), .D(n209), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n210), .B(n211), .Y(n209) );
  INVX1 U289 ( .A(n212), .Y(n211) );
  MUX2X1 U290 ( .B(n213), .A(n214), .S(N506), .Y(n210) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n214) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n213) );
  NAND3X1 U293 ( .A(n215), .B(n216), .C(n217), .Y(n208) );
  INVX1 U294 ( .A(N509), .Y(n216) );
  INVX1 U295 ( .A(N508), .Y(n215) );
  NAND2X1 U296 ( .A(n218), .B(n219), .Y(n207) );
  MUX2X1 U297 ( .B(n220), .A(n221), .S(N522), .Y(n218) );
  OAI21X1 U298 ( .A(N521), .B(n222), .C(n223), .Y(n221) );
  MUX2X1 U299 ( .B(n224), .A(n225), .S(N521), .Y(n220) );
  NAND3X1 U300 ( .A(n226), .B(n227), .C(n228), .Y(n206) );
  INVX1 U301 ( .A(N525), .Y(n227) );
  INVX1 U302 ( .A(N524), .Y(n226) );
  OAI21X1 U303 ( .A(n229), .B(n212), .C(n230), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n231), .B(n232), .C(n219), .Y(n230) );
  MUX2X1 U305 ( .B(n233), .A(n234), .S(N521), .Y(n232) );
  NAND2X1 U306 ( .A(n235), .B(n222), .Y(n234) );
  INVX1 U307 ( .A(n236), .Y(n235) );
  NAND3X1 U308 ( .A(n237), .B(n228), .C(n238), .Y(n233) );
  NOR2X1 U309 ( .A(n205), .B(n239), .Y(n238) );
  AND2X1 U310 ( .A(n225), .B(n240), .Y(n231) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n241), .C(n242), .Y(n229) );
  MUX2X1 U312 ( .B(n243), .A(n244), .S(N505), .Y(n242) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n245), .Y(n244) );
  NAND3X1 U314 ( .A(N506), .B(n217), .C(n246), .Y(n243) );
  OAI22X1 U315 ( .A(n247), .B(n212), .C(n248), .D(n249), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n250), .B(N521), .C(n240), .D(n222), .Y(n248) );
  NOR2X1 U317 ( .A(n205), .B(n236), .Y(n250) );
  AOI22X1 U318 ( .A(N505), .B(n245), .C(cumulative[2]), .D(n241), .Y(n247) );
  INVX1 U319 ( .A(n251), .Y(n245) );
  OAI21X1 U320 ( .A(n252), .B(n212), .C(n253), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n240), .B(n223), .C(n219), .Y(n253) );
  INVX1 U322 ( .A(n249), .Y(n219) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n254), .C(n115), .Y(n249) );
  NOR2X1 U324 ( .A(n255), .B(n256), .Y(n254) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n256) );
  NOR2X1 U326 ( .A(n236), .B(N521), .Y(n240) );
  NAND3X1 U327 ( .A(n239), .B(n228), .C(n237), .Y(n236) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n237) );
  INVX1 U329 ( .A(N523), .Y(n228) );
  INVX1 U330 ( .A(N522), .Y(n239) );
  NAND2X1 U331 ( .A(n257), .B(n138), .Y(n212) );
  OAI21X1 U332 ( .A(n147), .B(n258), .C(n259), .Y(n257) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n258) );
  INVX1 U334 ( .A(n241), .Y(n252) );
  NOR2X1 U335 ( .A(n251), .B(N505), .Y(n241) );
  NAND3X1 U336 ( .A(n260), .B(n217), .C(n246), .Y(n251) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n246) );
  INVX1 U338 ( .A(N507), .Y(n217) );
  INVX1 U339 ( .A(N506), .Y(n260) );
  INVX1 U340 ( .A(n261), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n261) );
  INVX1 U342 ( .A(n194), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n222), .A(cumulative[2]), .S(n115), .Y(n194) );
  OAI21X1 U344 ( .A(n262), .B(n263), .C(n264), .Y(n222) );
  OAI21X1 U345 ( .A(n265), .B(n266), .C(n223), .Y(n264) );
  OAI22X1 U346 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  OAI22X1 U347 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  INVX1 U348 ( .A(n275), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n225), .A(cumulative[1]), .S(n115), .Y(n275) );
  OAI21X1 U350 ( .A(n276), .B(n263), .C(n277), .Y(n225) );
  OAI21X1 U351 ( .A(n278), .B(n279), .C(n223), .Y(n277) );
  OAI22X1 U352 ( .A(n267), .B(n271), .C(n262), .D(n270), .Y(n279) );
  OAI22X1 U353 ( .A(n273), .B(n272), .C(n269), .D(n274), .Y(n278) );
  INVX1 U354 ( .A(n280), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n224), .A(cumulative[0]), .S(n115), .Y(n280) );
  NAND3X1 U356 ( .A(n281), .B(n282), .C(n283), .Y(n138) );
  AOI22X1 U357 ( .A(n284), .B(n285), .C(exponent_product[3]), .D(n259), .Y(
        n283) );
  OAI21X1 U358 ( .A(n286), .B(n146), .C(n287), .Y(n285) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n288), .C(n147), .Y(n287) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n147) );
  INVX1 U361 ( .A(n288), .Y(n286) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n255), .Y(n288) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n289), .C(n290), .Y(n284) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n282) );
  NAND3X1 U365 ( .A(n291), .B(n83), .C(\gte_183/A[2] ), .Y(n281) );
  INVX1 U366 ( .A(n290), .Y(n291) );
  NOR2X1 U367 ( .A(n259), .B(exponent_product[3]), .Y(n290) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n259) );
  OAI21X1 U369 ( .A(n292), .B(n263), .C(n293), .Y(n224) );
  OAI21X1 U370 ( .A(n294), .B(n295), .C(n223), .Y(n293) );
  INVX1 U371 ( .A(n205), .Y(n223) );
  OAI22X1 U372 ( .A(n267), .B(n273), .C(n276), .D(n270), .Y(n295) );
  INVX1 U373 ( .A(product[1]), .Y(n276) );
  OAI21X1 U374 ( .A(n100), .B(n43), .C(n296), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n51), .Y(n296) );
  INVX1 U376 ( .A(product[4]), .Y(n273) );
  OAI22X1 U377 ( .A(n269), .B(n272), .C(n262), .D(n274), .Y(n294) );
  INVX1 U378 ( .A(product[2]), .Y(n262) );
  OAI21X1 U379 ( .A(n100), .B(n41), .C(n297), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n51), .Y(n297) );
  INVX1 U381 ( .A(product[3]), .Y(n269) );
  OAI21X1 U382 ( .A(n100), .B(n298), .C(n299), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n51), .Y(n299) );
  INVX1 U384 ( .A(N346), .Y(n298) );
  INVX1 U385 ( .A(product[0]), .Y(n292) );
  OAI21X1 U386 ( .A(n100), .B(n300), .C(n301), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n51), .Y(n301) );
  INVX1 U388 ( .A(n289), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n302), .B(n303), .C(float), .Y(n289) );
  OAI21X1 U390 ( .A(n267), .B(n304), .C(n305), .Y(n303) );
  AOI22X1 U391 ( .A(N436), .B(n306), .C(N412), .D(n307), .Y(n305) );
  INVX1 U392 ( .A(N388), .Y(n304) );
  OAI21X1 U393 ( .A(n308), .B(N388), .C(n309), .Y(n302) );
  AOI21X1 U394 ( .A(n310), .B(N460), .C(n311), .Y(n309) );
  INVX1 U395 ( .A(n146), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n312), .B(n313), .C(float), .Y(n146) );
  OAI21X1 U397 ( .A(N435), .B(n267), .C(n314), .Y(n313) );
  AOI22X1 U398 ( .A(N435), .B(n306), .C(N411), .D(n307), .Y(n314) );
  OAI21X1 U399 ( .A(N435), .B(n308), .C(n315), .Y(n312) );
  AOI21X1 U400 ( .A(n310), .B(N459), .C(n311), .Y(n315) );
  INVX1 U401 ( .A(n316), .Y(n311) );
  NOR2X1 U402 ( .A(n317), .B(n270), .Y(n310) );
  OAI21X1 U403 ( .A(n318), .B(n205), .C(n319), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n320), .Y(n319) );
  INVX1 U405 ( .A(n263), .Y(n320) );
  NAND2X1 U406 ( .A(n321), .B(float), .Y(n263) );
  AND2X1 U407 ( .A(n322), .B(n323), .Y(n318) );
  AOI22X1 U408 ( .A(N438), .B(n306), .C(N414), .D(n307), .Y(n323) );
  AOI22X1 U409 ( .A(N462), .B(n324), .C(N390), .D(product[7]), .Y(n322) );
  OAI21X1 U410 ( .A(n325), .B(n205), .C(n326), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n327), .Y(n326) );
  OAI21X1 U412 ( .A(n308), .B(n39), .C(n328), .Y(n327) );
  OAI21X1 U413 ( .A(N461), .B(n317), .C(n324), .Y(n328) );
  NAND2X1 U414 ( .A(n329), .B(float), .Y(n205) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n330), .Y(n325) );
  INVX1 U416 ( .A(n331), .Y(n330) );
  AOI22X1 U417 ( .A(n48), .B(n306), .C(N413), .D(n307), .Y(n331) );
  INVX1 U418 ( .A(n255), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n332), .B(n333), .C(float), .Y(n255) );
  OAI21X1 U420 ( .A(n267), .B(n334), .C(n335), .Y(n333) );
  AOI22X1 U421 ( .A(N410), .B(n307), .C(N386), .D(n321), .Y(n335) );
  INVX1 U422 ( .A(n308), .Y(n321) );
  NAND3X1 U423 ( .A(n329), .B(n336), .C(n337), .Y(n308) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n337) );
  INVX1 U425 ( .A(n317), .Y(n329) );
  INVX1 U426 ( .A(N386), .Y(n334) );
  NAND3X1 U427 ( .A(n338), .B(n316), .C(n339), .Y(n332) );
  NAND2X1 U428 ( .A(N386), .B(n306), .Y(n339) );
  OAI21X1 U429 ( .A(n306), .B(n340), .C(n317), .Y(n316) );
  NAND2X1 U430 ( .A(n272), .B(n267), .Y(n340) );
  INVX1 U431 ( .A(product[7]), .Y(n267) );
  INVX1 U432 ( .A(n307), .Y(n272) );
  NOR2X1 U433 ( .A(n268), .B(product[7]), .Y(n307) );
  INVX1 U434 ( .A(product[6]), .Y(n268) );
  INVX1 U435 ( .A(n274), .Y(n306) );
  NAND2X1 U436 ( .A(n336), .B(product[5]), .Y(n274) );
  OAI21X1 U437 ( .A(N458), .B(n317), .C(n324), .Y(n338) );
  INVX1 U438 ( .A(n270), .Y(n324) );
  NAND3X1 U439 ( .A(product[4]), .B(n271), .C(n336), .Y(n270) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n336) );
  OAI21X1 U441 ( .A(n100), .B(n42), .C(n341), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n51), .Y(n341) );
  OAI21X1 U443 ( .A(n100), .B(n44), .C(n342), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n51), .Y(n342) );
  INVX1 U445 ( .A(product[5]), .Y(n271) );
  OAI21X1 U446 ( .A(n100), .B(n343), .C(n344), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n51), .Y(n344) );
  INVX1 U448 ( .A(N348), .Y(n343) );
  OAI21X1 U449 ( .A(n100), .B(n345), .C(n346), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n51), .Y(n346) );
  NAND2X1 U451 ( .A(n196), .B(n100), .Y(n88) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n196) );
  INVX1 U453 ( .A(N347), .Y(n345) );
  NAND2X1 U454 ( .A(n347), .B(n348), .Y(n317) );
  OAI21X1 U455 ( .A(n349), .B(n350), .C(n65), .Y(n348) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n350) );
  INVX1 U457 ( .A(value[5]), .Y(n349) );
  OAI21X1 U458 ( .A(n351), .B(n352), .C(n353), .Y(n347) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  INVX1 U461 ( .A(weight[5]), .Y(n351) );
  NOR2X1 U462 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U463 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U464 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U465 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U466 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U467 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U468 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U469 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U470 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U471 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U472 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U473 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U474 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U475 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U476 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U477 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U478 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U479 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U480 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U481 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U482 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U483 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U484 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U485 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U486 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U487 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U488 ( .A(N49), .Y(n362) );
  NOR2X1 U489 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U490 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U491 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U492 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U493 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U494 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U495 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U496 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U497 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U498 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U499 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U500 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U501 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U502 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U503 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U504 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U505 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U506 ( .A(n62), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U507 ( .A(value[2]), .Y(n374) );
  NOR2X1 U508 ( .A(n375), .B(n377), .Y(N319) );
  NOR2X1 U509 ( .A(n376), .B(n377), .Y(N318) );
  NOR2X1 U510 ( .A(n62), .B(n377), .Y(N317) );
  INVX1 U511 ( .A(value[1]), .Y(n377) );
  NOR2X1 U512 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U513 ( .A(N327), .Y(n375) );
  NOR2X1 U514 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U515 ( .A(N326), .Y(n376) );
  INVX1 U516 ( .A(N51), .Y(n378) );
  NAND2X1 U517 ( .A(N51), .B(N34), .Y(n300) );
  NOR2X1 U518 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U519 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U520 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U521 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U522 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U523 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U524 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U525 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U526 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U527 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U528 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U529 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U530 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U531 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U532 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U533 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U534 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U535 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U536 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U537 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U538 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U539 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U540 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U541 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U542 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U543 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U544 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U545 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U546 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U547 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U548 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U549 ( .A(n361), .B(n381), .Y(N172) );
  MUX2X1 U550 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U551 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U552 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U553 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U554 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U555 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U556 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U557 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U558 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U559 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U560 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U561 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U562 ( .A(n361), .B(n382), .Y(N122) );
  MUX2X1 U563 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U564 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U565 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U566 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U567 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U568 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U569 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U570 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U571 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U572 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U573 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U574 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U575 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U576 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U577 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U578 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U579 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U580 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U581 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U582 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U583 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U584 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U585 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U586 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U587 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U588 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U589 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U590 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U591 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U592 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U593 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U594 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U595 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U596 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U597 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U598 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U599 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_4_DW01_add_12_DW01_add_179 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_4_DW01_add_11_DW01_add_178 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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


module signed_multiplier_4_DW01_add_10_DW01_add_177 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_4_DW01_add_9_DW01_add_176 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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


module signed_multiplier_4_DW01_add_7_DW01_add_174 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
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
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module signed_multiplier_4_DW01_add_6_DW01_add_173 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module signed_multiplier_4 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N133, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N410, N411, N412, N413, N414, N435, N436, N438, N458, N459,
         N460, N461, N462, N481, N540, N541, N542, N543, N544, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N525, N524, N523,
         N522, N521, N509, N508, N507, N506, N505, N385, N384, N262, N261,
         N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250,
         N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_2_root_add_0_root_add_76_7/carry[15] ,
         \add_2_root_add_0_root_add_76_7/carry[14] ,
         \add_2_root_add_0_root_add_76_7/carry[13] ,
         \add_2_root_add_0_root_add_76_7/carry[12] ,
         \add_2_root_add_0_root_add_76_7/carry[11] ,
         \add_2_root_add_0_root_add_76_7/carry[10] ,
         \add_2_root_add_0_root_add_76_7/carry[9] ,
         \add_2_root_add_0_root_add_76_7/carry[8] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_4_DW01_add_12_DW01_add_179 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_4_DW01_add_11_DW01_add_178 add_5_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199}) );
  signed_multiplier_4_DW01_add_10_DW01_add_177 add_4_root_add_0_root_add_76_7 ( 
        .A({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247}) );
  signed_multiplier_4_DW01_add_9_DW01_add_176 add_3_root_add_0_root_add_76_7 ( 
        .A({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_4_DW01_add_7_DW01_add_174 add_1_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_4_DW01_add_6_DW01_add_173 add_0_root_add_0_root_add_76_7 ( 
        .A({N166, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n275), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n194), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n188), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n192), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n86), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n85), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n13), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n17), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n146), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n289), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n84), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n147), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n83), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n259), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n22), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n15), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n11), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n16), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n18), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_7  ( .A(N137), .B(N148), .C(n14), 
        .YC(\add_2_root_add_0_root_add_76_7/carry[8] ), .YS(N174) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_8  ( .A(N138), .B(N149), .C(
        \add_2_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YS(N175) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_9  ( .A(N139), .B(N150), .C(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YS(N176) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_10  ( .A(N140), .B(N151), .C(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YS(N177) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_11  ( .A(N141), .B(N152), .C(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YS(N178) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_12  ( .A(N142), .B(N153), .C(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YS(N179) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_13  ( .A(N143), .B(N154), .C(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YS(N180) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_14  ( .A(N144), .B(N155), .C(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N181) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_15  ( .A(N145), .B(N156), .C(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N182) );
  AND2X2 U3 ( .A(n378), .B(n377), .Y(n1) );
  AND2X2 U4 ( .A(n7), .B(n349), .Y(n2) );
  AND2X2 U5 ( .A(n12), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n1), .B(n374), .Y(n5) );
  AND2X2 U8 ( .A(n38), .B(n58), .Y(n6) );
  AND2X2 U9 ( .A(n36), .B(n64), .Y(n7) );
  AND2X2 U10 ( .A(n46), .B(n60), .Y(n8) );
  AND2X2 U11 ( .A(n35), .B(n81), .Y(n9) );
  AND2X2 U12 ( .A(N435), .B(N436), .Y(n10) );
  AND2X2 U13 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n11) );
  AND2X2 U14 ( .A(N386), .B(N435), .Y(n12) );
  AND2X2 U15 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n13) );
  AND2X2 U16 ( .A(N147), .B(N136), .Y(n14) );
  AND2X2 U17 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n15) );
  AND2X2 U18 ( .A(N317), .B(N314), .Y(n16) );
  AND2X2 U19 ( .A(cumulative[0]), .B(product[0]), .Y(n17) );
  AND2X2 U20 ( .A(N34), .B(N322), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n19) );
  AND2X2 U22 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(n20) );
  AND2X2 U23 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n21) );
  AND2X2 U24 ( .A(value[3]), .B(weight[3]), .Y(n22) );
  AND2X2 U25 ( .A(n67), .B(n68), .Y(n23) );
  AND2X2 U26 ( .A(n23), .B(n69), .Y(n24) );
  AND2X2 U27 ( .A(n24), .B(n70), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n71), .Y(n26) );
  AND2X2 U29 ( .A(n26), .B(n72), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n73), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n74), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n75), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n76), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n77), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n78), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n79), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n80), .Y(n35) );
  AND2X2 U38 ( .A(n5), .B(n63), .Y(n36) );
  AND2X2 U39 ( .A(n6), .B(n57), .Y(n37) );
  AND2X2 U40 ( .A(n8), .B(n59), .Y(n38) );
  XNOR2X1 U41 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n39) );
  XNOR2X1 U42 ( .A(cumulative[0]), .B(product[0]), .Y(n40) );
  XNOR2X1 U43 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n41)
         );
  XNOR2X1 U44 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n42) );
  XNOR2X1 U45 ( .A(N317), .B(N314), .Y(n43) );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  AND2X2 U47 ( .A(n2), .B(n65), .Y(n45) );
  AND2X2 U48 ( .A(n62), .B(n61), .Y(n46) );
  AND2X2 U49 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n47) );
  INVX1 U50 ( .A(N384), .Y(n48) );
  INVX2 U51 ( .A(n48), .Y(n49) );
  INVX2 U52 ( .A(n138), .Y(n115) );
  INVX2 U53 ( .A(n50), .Y(n52) );
  INVX2 U54 ( .A(n50), .Y(n53) );
  INVX2 U55 ( .A(n88), .Y(n51) );
  OR2X1 U56 ( .A(n196), .B(float), .Y(n50) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n280), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n280), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n87), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n87), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n255), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n255), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n82), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n82), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n19), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n20), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n49), .Y(N438) );
  OR2X1 U76 ( .A(n49), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n49), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n49), .B(n10), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n10), .B(n49), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n282), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n12), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n67), .B(n68), .Y(N281) );
  XOR2X1 U90 ( .A(n23), .B(n69), .Y(N282) );
  XOR2X1 U91 ( .A(n24), .B(n70), .Y(N283) );
  XOR2X1 U92 ( .A(n25), .B(n71), .Y(N284) );
  XOR2X1 U93 ( .A(n26), .B(n72), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n73), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n74), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n75), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n76), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n77), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n78), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n79), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n80), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n81), .Y(N294) );
  XOR2X1 U103 ( .A(n92), .B(n9), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n377), .Y(N52) );
  XOR2X1 U105 ( .A(n1), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n5), .B(n63), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n64), .Y(N55) );
  XOR2X1 U108 ( .A(n7), .B(n349), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n65), .Y(N57) );
  XOR2X1 U110 ( .A(n66), .B(n45), .Y(N58) );
  XOR2X1 U111 ( .A(n62), .B(n61), .Y(N35) );
  XOR2X1 U112 ( .A(n46), .B(n60), .Y(N36) );
  XOR2X1 U113 ( .A(n8), .B(n59), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n58), .Y(N38) );
  XOR2X1 U115 ( .A(n6), .B(n57), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N147), .B(N136), .Y(N173) );
  INVX2 U120 ( .A(float), .Y(n100) );
  INVX2 U121 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U122 ( .A(weight[6]), .Y(n56) );
  INVX2 U123 ( .A(weight[5]), .Y(n57) );
  INVX2 U124 ( .A(weight[4]), .Y(n58) );
  INVX2 U125 ( .A(weight[3]), .Y(n59) );
  INVX2 U126 ( .A(N327), .Y(n60) );
  INVX2 U127 ( .A(N326), .Y(n61) );
  INVX2 U128 ( .A(N34), .Y(n62) );
  NOR2X1 U129 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U130 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U131 ( .A(value[3]), .Y(n63) );
  INVX2 U132 ( .A(value[4]), .Y(n64) );
  INVX2 U133 ( .A(value[6]), .Y(n65) );
  INVX2 U134 ( .A(value[7]), .Y(n66) );
  INVX2 U135 ( .A(N280), .Y(n67) );
  INVX2 U136 ( .A(N264), .Y(n68) );
  INVX2 U137 ( .A(N265), .Y(n69) );
  INVX2 U138 ( .A(N266), .Y(n70) );
  INVX2 U139 ( .A(N267), .Y(n71) );
  INVX2 U140 ( .A(N268), .Y(n72) );
  INVX2 U141 ( .A(N269), .Y(n73) );
  INVX2 U142 ( .A(N270), .Y(n74) );
  INVX2 U143 ( .A(N271), .Y(n75) );
  INVX2 U144 ( .A(N272), .Y(n76) );
  INVX2 U145 ( .A(N273), .Y(n77) );
  INVX2 U146 ( .A(N274), .Y(n78) );
  INVX2 U147 ( .A(N275), .Y(n79) );
  INVX2 U148 ( .A(N276), .Y(n80) );
  INVX2 U149 ( .A(N277), .Y(n81) );
  INVX2 U150 ( .A(N386), .Y(N410) );
  INVX2 U151 ( .A(N386), .Y(N458) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n82) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n83) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n84) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n85) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n86) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n87) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n88), .B(n76), .C(n89), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n52), .C(n90), .Y(n89) );
  OAI21X1 U162 ( .A(n88), .B(n75), .C(n91), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n52), .C(n90), .Y(n91) );
  OAI21X1 U164 ( .A(n88), .B(n92), .C(n93), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n52), .C(n90), .Y(n93) );
  INVX1 U166 ( .A(N278), .Y(n92) );
  OAI21X1 U167 ( .A(n88), .B(n81), .C(n94), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n52), .C(n90), .Y(n94) );
  OAI21X1 U169 ( .A(n88), .B(n80), .C(n95), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n52), .C(n90), .Y(n95) );
  OAI21X1 U171 ( .A(n88), .B(n79), .C(n96), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n52), .C(n90), .Y(n96) );
  OAI21X1 U173 ( .A(n88), .B(n78), .C(n97), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n52), .C(n90), .Y(n97) );
  OAI21X1 U175 ( .A(n88), .B(n77), .C(n98), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n52), .C(n90), .Y(n98) );
  AND2X1 U177 ( .A(float), .B(n47), .Y(n90) );
  OAI21X1 U178 ( .A(n99), .B(n100), .C(n101), .Y(overflow) );
  OAI22X1 U179 ( .A(n102), .B(n100), .C(n103), .D(n104), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n104) );
  MUX2X1 U181 ( .B(n105), .A(n106), .S(n107), .Y(n102) );
  OAI21X1 U182 ( .A(n100), .B(n108), .C(n109), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n110), .C(n111), .Y(n109) );
  MUX2X1 U184 ( .B(n112), .A(n113), .S(n114), .Y(n108) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n115), .Y(n114)
         );
  NAND2X1 U186 ( .A(n116), .B(n117), .Y(n113) );
  MUX2X1 U187 ( .B(n118), .A(n119), .S(n120), .Y(n116) );
  NOR2X1 U188 ( .A(n121), .B(n122), .Y(n119) );
  NOR2X1 U189 ( .A(n123), .B(n124), .Y(n118) );
  NAND3X1 U190 ( .A(n125), .B(n126), .C(n127), .Y(n112) );
  OAI21X1 U191 ( .A(n128), .B(n121), .C(n129), .Y(n126) );
  MUX2X1 U192 ( .B(n130), .A(n131), .S(n123), .Y(n125) );
  NAND2X1 U193 ( .A(n132), .B(n133), .Y(out[5]) );
  OAI21X1 U194 ( .A(n134), .B(n135), .C(float), .Y(n133) );
  OAI21X1 U195 ( .A(n121), .B(n122), .C(n117), .Y(n135) );
  NAND3X1 U196 ( .A(n120), .B(n123), .C(n136), .Y(n117) );
  XOR2X1 U197 ( .A(n120), .B(n123), .Y(n121) );
  MUX2X1 U198 ( .B(n127), .A(n137), .S(n123), .Y(n134) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n138), .Y(n123) );
  OR2X1 U200 ( .A(n124), .B(n120), .Y(n137) );
  NOR2X1 U201 ( .A(n139), .B(n140), .Y(n127) );
  MUX2X1 U202 ( .B(n99), .A(n141), .S(n128), .Y(n139) );
  AOI21X1 U203 ( .A(N357), .B(n110), .C(n111), .Y(n132) );
  INVX1 U204 ( .A(n142), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n110), .C(n143), .Y(n142) );
  OAI21X1 U206 ( .A(n100), .B(n144), .C(n101), .Y(n143) );
  MUX2X1 U207 ( .B(n140), .A(n145), .S(n120), .Y(n144) );
  INVX1 U208 ( .A(n128), .Y(n120) );
  MUX2X1 U209 ( .B(n146), .A(n147), .S(n115), .Y(n128) );
  NAND3X1 U210 ( .A(n148), .B(n124), .C(n122), .Y(n145) );
  NAND2X1 U211 ( .A(n149), .B(n131), .Y(n124) );
  INVX1 U212 ( .A(n150), .Y(n149) );
  NAND2X1 U213 ( .A(n151), .B(n152), .Y(n140) );
  MUX2X1 U214 ( .B(n130), .A(n131), .S(n150), .Y(n151) );
  NAND2X1 U215 ( .A(n153), .B(n154), .Y(out[3]) );
  OAI21X1 U216 ( .A(n136), .B(n155), .C(float), .Y(n154) );
  MUX2X1 U217 ( .B(n156), .A(n99), .S(n150), .Y(n155) );
  NOR2X1 U218 ( .A(n129), .B(n157), .Y(n156) );
  INVX1 U219 ( .A(n122), .Y(n129) );
  INVX1 U220 ( .A(n148), .Y(n136) );
  NAND2X1 U221 ( .A(n130), .B(n150), .Y(n148) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n115), .Y(n150)
         );
  INVX1 U223 ( .A(n141), .Y(n130) );
  AOI21X1 U224 ( .A(N355), .B(n110), .C(n111), .Y(n153) );
  NAND2X1 U225 ( .A(n158), .B(n159), .Y(out[2]) );
  OAI21X1 U226 ( .A(n160), .B(n161), .C(float), .Y(n159) );
  OAI22X1 U227 ( .A(n99), .B(n162), .C(n163), .D(n152), .Y(n161) );
  OAI22X1 U228 ( .A(n164), .B(n141), .C(n165), .D(n122), .Y(n160) );
  NAND3X1 U229 ( .A(n162), .B(n166), .C(n167), .Y(n122) );
  NOR2X1 U230 ( .A(n131), .B(n168), .Y(n167) );
  AOI21X1 U231 ( .A(N354), .B(n110), .C(n111), .Y(n158) );
  OAI21X1 U232 ( .A(n169), .B(n100), .C(n170), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n110), .C(n111), .Y(n170) );
  INVX1 U234 ( .A(n103), .Y(n110) );
  AOI21X1 U235 ( .A(n157), .B(n166), .C(n171), .Y(n169) );
  OAI22X1 U236 ( .A(n99), .B(n163), .C(n165), .D(n141), .Y(n171) );
  NAND3X1 U237 ( .A(n162), .B(n168), .C(n99), .Y(n141) );
  INVX1 U238 ( .A(n168), .Y(n163) );
  OAI21X1 U239 ( .A(n172), .B(n173), .C(n174), .Y(n168) );
  AOI22X1 U240 ( .A(N548), .B(n175), .C(N553), .D(n176), .Y(n174) );
  INVX1 U241 ( .A(N542), .Y(n173) );
  OAI21X1 U242 ( .A(n103), .B(n40), .C(n177), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n178), .C(n111), .Y(n177) );
  INVX1 U244 ( .A(n101), .Y(n111) );
  OAI22X1 U245 ( .A(n99), .B(n164), .C(n165), .D(n152), .Y(n178) );
  INVX1 U246 ( .A(n157), .Y(n152) );
  NOR2X1 U247 ( .A(n131), .B(n162), .Y(n157) );
  AOI21X1 U248 ( .A(n179), .B(N543), .C(n180), .Y(n162) );
  INVX1 U249 ( .A(n181), .Y(n180) );
  AOI22X1 U250 ( .A(N549), .B(n175), .C(N554), .D(n176), .Y(n181) );
  AOI21X1 U251 ( .A(n179), .B(N540), .C(n182), .Y(n165) );
  INVX1 U252 ( .A(n183), .Y(n182) );
  AOI22X1 U253 ( .A(N546), .B(n175), .C(N551), .D(n176), .Y(n183) );
  INVX1 U254 ( .A(n166), .Y(n164) );
  OAI21X1 U255 ( .A(n172), .B(n184), .C(n185), .Y(n166) );
  AOI22X1 U256 ( .A(N547), .B(n175), .C(N552), .D(n176), .Y(n185) );
  INVX1 U257 ( .A(N541), .Y(n184) );
  INVX1 U258 ( .A(n131), .Y(n99) );
  OAI21X1 U259 ( .A(n172), .B(n186), .C(n187), .Y(n131) );
  AOI22X1 U260 ( .A(N550), .B(n175), .C(N555), .D(n176), .Y(n187) );
  NOR2X1 U261 ( .A(n107), .B(n179), .Y(n176) );
  INVX1 U262 ( .A(n172), .Y(n179) );
  AND2X1 U263 ( .A(n172), .B(n107), .Y(n175) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n188), .C(n189), .Y(n107) );
  OAI21X1 U265 ( .A(n86), .B(m_large[2]), .C(n190), .Y(n189) );
  AOI21X1 U266 ( .A(n188), .B(\sub_218/A[3] ), .C(n191), .Y(n190) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n192), .C(n193), .Y(n191) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n194), .C(n195), .Y(n193) );
  OAI22X1 U269 ( .A(n192), .B(m_large[1]), .C(n87), .D(m_large[0]), .Y(n195)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n192) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n188) );
  INVX1 U272 ( .A(N544), .Y(n186) );
  XOR2X1 U273 ( .A(n105), .B(n106), .Y(n172) );
  MUX2X1 U274 ( .B(n196), .A(n197), .S(n115), .Y(n106) );
  MUX2X1 U275 ( .B(n197), .A(n196), .S(n115), .Y(n105) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n197) );
  NAND2X1 U277 ( .A(n101), .B(n100), .Y(n103) );
  OAI21X1 U278 ( .A(n198), .B(n199), .C(n200), .Y(n101) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n200) );
  NAND2X1 U280 ( .A(n201), .B(n202), .Y(n199) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n202) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n201) );
  NAND2X1 U283 ( .A(n203), .B(n204), .Y(n198) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n204) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n203) );
  NAND2X1 U286 ( .A(n138), .B(n205), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n206), .B(n207), .C(n208), .D(n209), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n210), .B(n211), .Y(n209) );
  INVX1 U289 ( .A(n212), .Y(n211) );
  MUX2X1 U290 ( .B(n213), .A(n214), .S(N506), .Y(n210) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n214) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n213) );
  NAND3X1 U293 ( .A(n215), .B(n216), .C(n217), .Y(n208) );
  INVX1 U294 ( .A(N509), .Y(n216) );
  INVX1 U295 ( .A(N508), .Y(n215) );
  NAND2X1 U296 ( .A(n218), .B(n219), .Y(n207) );
  MUX2X1 U297 ( .B(n220), .A(n221), .S(N522), .Y(n218) );
  OAI21X1 U298 ( .A(N521), .B(n222), .C(n223), .Y(n221) );
  MUX2X1 U299 ( .B(n224), .A(n225), .S(N521), .Y(n220) );
  NAND3X1 U300 ( .A(n226), .B(n227), .C(n228), .Y(n206) );
  INVX1 U301 ( .A(N525), .Y(n227) );
  INVX1 U302 ( .A(N524), .Y(n226) );
  OAI21X1 U303 ( .A(n229), .B(n212), .C(n230), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n231), .B(n232), .C(n219), .Y(n230) );
  MUX2X1 U305 ( .B(n233), .A(n234), .S(N521), .Y(n232) );
  NAND2X1 U306 ( .A(n235), .B(n222), .Y(n234) );
  INVX1 U307 ( .A(n236), .Y(n235) );
  NAND3X1 U308 ( .A(n237), .B(n228), .C(n238), .Y(n233) );
  NOR2X1 U309 ( .A(n205), .B(n239), .Y(n238) );
  AND2X1 U310 ( .A(n225), .B(n240), .Y(n231) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n241), .C(n242), .Y(n229) );
  MUX2X1 U312 ( .B(n243), .A(n244), .S(N505), .Y(n242) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n245), .Y(n244) );
  NAND3X1 U314 ( .A(N506), .B(n217), .C(n246), .Y(n243) );
  OAI22X1 U315 ( .A(n247), .B(n212), .C(n248), .D(n249), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n250), .B(N521), .C(n240), .D(n222), .Y(n248) );
  NOR2X1 U317 ( .A(n205), .B(n236), .Y(n250) );
  AOI22X1 U318 ( .A(N505), .B(n245), .C(cumulative[2]), .D(n241), .Y(n247) );
  INVX1 U319 ( .A(n251), .Y(n245) );
  OAI21X1 U320 ( .A(n252), .B(n212), .C(n253), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n240), .B(n223), .C(n219), .Y(n253) );
  INVX1 U322 ( .A(n249), .Y(n219) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n254), .C(n115), .Y(n249) );
  NOR2X1 U324 ( .A(n255), .B(n256), .Y(n254) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n256) );
  NOR2X1 U326 ( .A(n236), .B(N521), .Y(n240) );
  NAND3X1 U327 ( .A(n239), .B(n228), .C(n237), .Y(n236) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n237) );
  INVX1 U329 ( .A(N523), .Y(n228) );
  INVX1 U330 ( .A(N522), .Y(n239) );
  NAND2X1 U331 ( .A(n257), .B(n138), .Y(n212) );
  OAI21X1 U332 ( .A(n147), .B(n258), .C(n259), .Y(n257) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n258) );
  INVX1 U334 ( .A(n241), .Y(n252) );
  NOR2X1 U335 ( .A(n251), .B(N505), .Y(n241) );
  NAND3X1 U336 ( .A(n260), .B(n217), .C(n246), .Y(n251) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n246) );
  INVX1 U338 ( .A(N507), .Y(n217) );
  INVX1 U339 ( .A(N506), .Y(n260) );
  INVX1 U340 ( .A(n261), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n261) );
  INVX1 U342 ( .A(n194), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n222), .A(cumulative[2]), .S(n115), .Y(n194) );
  OAI21X1 U344 ( .A(n262), .B(n263), .C(n264), .Y(n222) );
  OAI21X1 U345 ( .A(n265), .B(n266), .C(n223), .Y(n264) );
  OAI22X1 U346 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  OAI22X1 U347 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  INVX1 U348 ( .A(n275), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n225), .A(cumulative[1]), .S(n115), .Y(n275) );
  OAI21X1 U350 ( .A(n276), .B(n263), .C(n277), .Y(n225) );
  OAI21X1 U351 ( .A(n278), .B(n279), .C(n223), .Y(n277) );
  OAI22X1 U352 ( .A(n267), .B(n271), .C(n262), .D(n270), .Y(n279) );
  OAI22X1 U353 ( .A(n273), .B(n272), .C(n269), .D(n274), .Y(n278) );
  INVX1 U354 ( .A(n280), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n224), .A(cumulative[0]), .S(n115), .Y(n280) );
  NAND3X1 U356 ( .A(n281), .B(n282), .C(n283), .Y(n138) );
  AOI22X1 U357 ( .A(n284), .B(n285), .C(exponent_product[3]), .D(n259), .Y(
        n283) );
  OAI21X1 U358 ( .A(n286), .B(n146), .C(n287), .Y(n285) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n288), .C(n147), .Y(n287) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n147) );
  INVX1 U361 ( .A(n288), .Y(n286) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n255), .Y(n288) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n289), .C(n290), .Y(n284) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n282) );
  NAND3X1 U365 ( .A(n291), .B(n83), .C(\gte_183/A[2] ), .Y(n281) );
  INVX1 U366 ( .A(n290), .Y(n291) );
  NOR2X1 U367 ( .A(n259), .B(exponent_product[3]), .Y(n290) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n259) );
  OAI21X1 U369 ( .A(n292), .B(n263), .C(n293), .Y(n224) );
  OAI21X1 U370 ( .A(n294), .B(n295), .C(n223), .Y(n293) );
  INVX1 U371 ( .A(n205), .Y(n223) );
  OAI22X1 U372 ( .A(n267), .B(n273), .C(n276), .D(n270), .Y(n295) );
  INVX1 U373 ( .A(product[1]), .Y(n276) );
  OAI21X1 U374 ( .A(n100), .B(n43), .C(n296), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n51), .Y(n296) );
  INVX1 U376 ( .A(product[4]), .Y(n273) );
  OAI22X1 U377 ( .A(n269), .B(n272), .C(n262), .D(n274), .Y(n294) );
  INVX1 U378 ( .A(product[2]), .Y(n262) );
  OAI21X1 U379 ( .A(n100), .B(n41), .C(n297), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n51), .Y(n297) );
  INVX1 U381 ( .A(product[3]), .Y(n269) );
  OAI21X1 U382 ( .A(n100), .B(n298), .C(n299), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n51), .Y(n299) );
  INVX1 U384 ( .A(N346), .Y(n298) );
  INVX1 U385 ( .A(product[0]), .Y(n292) );
  OAI21X1 U386 ( .A(n100), .B(n300), .C(n301), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n51), .Y(n301) );
  INVX1 U388 ( .A(n289), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n302), .B(n303), .C(float), .Y(n289) );
  OAI21X1 U390 ( .A(n267), .B(n304), .C(n305), .Y(n303) );
  AOI22X1 U391 ( .A(N436), .B(n306), .C(N412), .D(n307), .Y(n305) );
  INVX1 U392 ( .A(N388), .Y(n304) );
  OAI21X1 U393 ( .A(n308), .B(N388), .C(n309), .Y(n302) );
  AOI21X1 U394 ( .A(n310), .B(N460), .C(n311), .Y(n309) );
  INVX1 U395 ( .A(n146), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n312), .B(n313), .C(float), .Y(n146) );
  OAI21X1 U397 ( .A(N435), .B(n267), .C(n314), .Y(n313) );
  AOI22X1 U398 ( .A(N435), .B(n306), .C(N411), .D(n307), .Y(n314) );
  OAI21X1 U399 ( .A(N435), .B(n308), .C(n315), .Y(n312) );
  AOI21X1 U400 ( .A(n310), .B(N459), .C(n311), .Y(n315) );
  INVX1 U401 ( .A(n316), .Y(n311) );
  NOR2X1 U402 ( .A(n317), .B(n270), .Y(n310) );
  OAI21X1 U403 ( .A(n318), .B(n205), .C(n319), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n320), .Y(n319) );
  INVX1 U405 ( .A(n263), .Y(n320) );
  NAND2X1 U406 ( .A(n321), .B(float), .Y(n263) );
  AND2X1 U407 ( .A(n322), .B(n323), .Y(n318) );
  AOI22X1 U408 ( .A(N438), .B(n306), .C(N414), .D(n307), .Y(n323) );
  AOI22X1 U409 ( .A(N462), .B(n324), .C(N390), .D(product[7]), .Y(n322) );
  OAI21X1 U410 ( .A(n325), .B(n205), .C(n326), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n327), .Y(n326) );
  OAI21X1 U412 ( .A(n308), .B(n39), .C(n328), .Y(n327) );
  OAI21X1 U413 ( .A(N461), .B(n317), .C(n324), .Y(n328) );
  NAND2X1 U414 ( .A(n329), .B(float), .Y(n205) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n330), .Y(n325) );
  INVX1 U416 ( .A(n331), .Y(n330) );
  AOI22X1 U417 ( .A(n48), .B(n306), .C(N413), .D(n307), .Y(n331) );
  INVX1 U418 ( .A(n255), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n332), .B(n333), .C(float), .Y(n255) );
  OAI21X1 U420 ( .A(n267), .B(n334), .C(n335), .Y(n333) );
  AOI22X1 U421 ( .A(N410), .B(n307), .C(N386), .D(n321), .Y(n335) );
  INVX1 U422 ( .A(n308), .Y(n321) );
  NAND3X1 U423 ( .A(n329), .B(n336), .C(n337), .Y(n308) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n337) );
  INVX1 U425 ( .A(n317), .Y(n329) );
  INVX1 U426 ( .A(N386), .Y(n334) );
  NAND3X1 U427 ( .A(n338), .B(n316), .C(n339), .Y(n332) );
  NAND2X1 U428 ( .A(N386), .B(n306), .Y(n339) );
  OAI21X1 U429 ( .A(n306), .B(n340), .C(n317), .Y(n316) );
  NAND2X1 U430 ( .A(n272), .B(n267), .Y(n340) );
  INVX1 U431 ( .A(product[7]), .Y(n267) );
  INVX1 U432 ( .A(n307), .Y(n272) );
  NOR2X1 U433 ( .A(n268), .B(product[7]), .Y(n307) );
  INVX1 U434 ( .A(product[6]), .Y(n268) );
  INVX1 U435 ( .A(n274), .Y(n306) );
  NAND2X1 U436 ( .A(n336), .B(product[5]), .Y(n274) );
  OAI21X1 U437 ( .A(N458), .B(n317), .C(n324), .Y(n338) );
  INVX1 U438 ( .A(n270), .Y(n324) );
  NAND3X1 U439 ( .A(product[4]), .B(n271), .C(n336), .Y(n270) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n336) );
  OAI21X1 U441 ( .A(n100), .B(n42), .C(n341), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n51), .Y(n341) );
  OAI21X1 U443 ( .A(n100), .B(n44), .C(n342), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n51), .Y(n342) );
  INVX1 U445 ( .A(product[5]), .Y(n271) );
  OAI21X1 U446 ( .A(n100), .B(n343), .C(n344), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n51), .Y(n344) );
  INVX1 U448 ( .A(N348), .Y(n343) );
  OAI21X1 U449 ( .A(n100), .B(n345), .C(n346), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n51), .Y(n346) );
  NAND2X1 U451 ( .A(n196), .B(n100), .Y(n88) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n196) );
  INVX1 U453 ( .A(N347), .Y(n345) );
  NAND2X1 U454 ( .A(n347), .B(n348), .Y(n317) );
  OAI21X1 U455 ( .A(n349), .B(n350), .C(n65), .Y(n348) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n350) );
  INVX1 U457 ( .A(value[5]), .Y(n349) );
  OAI21X1 U458 ( .A(n351), .B(n352), .C(n353), .Y(n347) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  INVX1 U461 ( .A(weight[5]), .Y(n351) );
  NOR2X1 U462 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U463 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U464 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U465 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U466 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U467 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U468 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U469 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U470 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U471 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U472 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U473 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U474 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U475 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U476 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U477 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U478 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U479 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U480 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U481 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U482 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U483 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U484 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U485 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U486 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U487 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U488 ( .A(N49), .Y(n362) );
  NOR2X1 U489 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U490 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U491 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U492 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U493 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U494 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U495 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U496 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U497 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U498 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U499 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U500 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U501 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U502 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U503 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U504 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U505 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U506 ( .A(n62), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U507 ( .A(value[2]), .Y(n374) );
  NOR2X1 U508 ( .A(n375), .B(n377), .Y(N319) );
  NOR2X1 U509 ( .A(n376), .B(n377), .Y(N318) );
  NOR2X1 U510 ( .A(n62), .B(n377), .Y(N317) );
  INVX1 U511 ( .A(value[1]), .Y(n377) );
  NOR2X1 U512 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U513 ( .A(N327), .Y(n375) );
  NOR2X1 U514 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U515 ( .A(N326), .Y(n376) );
  INVX1 U516 ( .A(N51), .Y(n378) );
  NAND2X1 U517 ( .A(N51), .B(N34), .Y(n300) );
  NOR2X1 U518 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U519 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U520 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U521 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U522 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U523 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U524 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U525 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U526 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U527 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U528 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U529 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U530 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U531 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U532 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U533 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U534 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U535 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U536 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U537 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U538 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U539 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U540 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U541 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U542 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U543 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U544 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U545 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U546 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U547 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U548 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U549 ( .A(n361), .B(n381), .Y(N172) );
  MUX2X1 U550 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U551 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U552 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U553 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U554 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U555 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U556 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U557 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U558 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U559 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U560 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U561 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U562 ( .A(n361), .B(n382), .Y(N122) );
  MUX2X1 U563 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U564 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U565 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U566 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U567 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U568 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U569 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U570 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U571 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U572 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U573 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U574 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U575 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U576 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U577 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U578 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U579 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U580 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U581 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U582 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U583 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U584 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U585 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U586 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U587 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U588 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U589 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U590 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U591 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U592 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U593 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U594 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U595 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U596 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U597 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U598 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U599 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_3_DW01_add_12_DW01_add_186 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_3_DW01_add_11_DW01_add_185 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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


module signed_multiplier_3_DW01_add_10_DW01_add_184 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_3_DW01_add_9_DW01_add_183 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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


module signed_multiplier_3_DW01_add_7_DW01_add_181 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
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
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module signed_multiplier_3_DW01_add_6_DW01_add_180 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module signed_multiplier_3 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N133, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N410, N411, N412, N413, N414, N435, N436, N438, N458, N459,
         N460, N461, N462, N481, N540, N541, N542, N543, N544, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N525, N524, N523,
         N522, N521, N509, N508, N507, N506, N505, N385, N384, N262, N261,
         N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250,
         N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_2_root_add_0_root_add_76_7/carry[15] ,
         \add_2_root_add_0_root_add_76_7/carry[14] ,
         \add_2_root_add_0_root_add_76_7/carry[13] ,
         \add_2_root_add_0_root_add_76_7/carry[12] ,
         \add_2_root_add_0_root_add_76_7/carry[11] ,
         \add_2_root_add_0_root_add_76_7/carry[10] ,
         \add_2_root_add_0_root_add_76_7/carry[9] ,
         \add_2_root_add_0_root_add_76_7/carry[8] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_3_DW01_add_12_DW01_add_186 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_3_DW01_add_11_DW01_add_185 add_5_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199}) );
  signed_multiplier_3_DW01_add_10_DW01_add_184 add_4_root_add_0_root_add_76_7 ( 
        .A({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247}) );
  signed_multiplier_3_DW01_add_9_DW01_add_183 add_3_root_add_0_root_add_76_7 ( 
        .A({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_3_DW01_add_7_DW01_add_181 add_1_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_3_DW01_add_6_DW01_add_180 add_0_root_add_0_root_add_76_7 ( 
        .A({N166, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n275), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n194), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n188), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n192), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n86), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n85), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n13), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n17), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n146), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n289), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n84), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n147), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n83), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n259), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n22), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n15), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n11), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n16), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n18), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_7  ( .A(N137), .B(N148), .C(n14), 
        .YC(\add_2_root_add_0_root_add_76_7/carry[8] ), .YS(N174) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_8  ( .A(N138), .B(N149), .C(
        \add_2_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YS(N175) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_9  ( .A(N139), .B(N150), .C(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YS(N176) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_10  ( .A(N140), .B(N151), .C(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YS(N177) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_11  ( .A(N141), .B(N152), .C(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YS(N178) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_12  ( .A(N142), .B(N153), .C(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YS(N179) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_13  ( .A(N143), .B(N154), .C(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YS(N180) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_14  ( .A(N144), .B(N155), .C(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N181) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_15  ( .A(N145), .B(N156), .C(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N182) );
  AND2X2 U3 ( .A(n378), .B(n377), .Y(n1) );
  AND2X2 U4 ( .A(n7), .B(n349), .Y(n2) );
  AND2X2 U5 ( .A(n12), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n1), .B(n374), .Y(n5) );
  AND2X2 U8 ( .A(n38), .B(n58), .Y(n6) );
  AND2X2 U9 ( .A(n36), .B(n64), .Y(n7) );
  AND2X2 U10 ( .A(n46), .B(n60), .Y(n8) );
  AND2X2 U11 ( .A(n35), .B(n81), .Y(n9) );
  AND2X2 U12 ( .A(N435), .B(N436), .Y(n10) );
  AND2X2 U13 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n11) );
  AND2X2 U14 ( .A(N386), .B(N435), .Y(n12) );
  AND2X2 U15 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n13) );
  AND2X2 U16 ( .A(N147), .B(N136), .Y(n14) );
  AND2X2 U17 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n15) );
  AND2X2 U18 ( .A(N317), .B(N314), .Y(n16) );
  AND2X2 U19 ( .A(cumulative[0]), .B(product[0]), .Y(n17) );
  AND2X2 U20 ( .A(N34), .B(N322), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n19) );
  AND2X2 U22 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(n20) );
  AND2X2 U23 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n21) );
  AND2X2 U24 ( .A(value[3]), .B(weight[3]), .Y(n22) );
  AND2X2 U25 ( .A(n67), .B(n68), .Y(n23) );
  AND2X2 U26 ( .A(n23), .B(n69), .Y(n24) );
  AND2X2 U27 ( .A(n24), .B(n70), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n71), .Y(n26) );
  AND2X2 U29 ( .A(n26), .B(n72), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n73), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n74), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n75), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n76), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n77), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n78), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n79), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n80), .Y(n35) );
  AND2X2 U38 ( .A(n5), .B(n63), .Y(n36) );
  AND2X2 U39 ( .A(n6), .B(n57), .Y(n37) );
  AND2X2 U40 ( .A(n8), .B(n59), .Y(n38) );
  XNOR2X1 U41 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n39) );
  XNOR2X1 U42 ( .A(cumulative[0]), .B(product[0]), .Y(n40) );
  XNOR2X1 U43 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n41)
         );
  XNOR2X1 U44 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n42) );
  XNOR2X1 U45 ( .A(N317), .B(N314), .Y(n43) );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  AND2X2 U47 ( .A(n2), .B(n65), .Y(n45) );
  AND2X2 U48 ( .A(n62), .B(n61), .Y(n46) );
  AND2X2 U49 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n47) );
  INVX1 U50 ( .A(N384), .Y(n48) );
  INVX2 U51 ( .A(n48), .Y(n49) );
  INVX2 U52 ( .A(n138), .Y(n115) );
  INVX2 U53 ( .A(n50), .Y(n52) );
  INVX2 U54 ( .A(n50), .Y(n53) );
  INVX2 U55 ( .A(n88), .Y(n51) );
  OR2X1 U56 ( .A(n196), .B(float), .Y(n50) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n280), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n280), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n87), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n87), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n255), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n255), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n82), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n82), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n19), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n20), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n49), .Y(N438) );
  OR2X1 U76 ( .A(n49), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n49), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n49), .B(n10), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n10), .B(n49), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n282), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n12), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n67), .B(n68), .Y(N281) );
  XOR2X1 U90 ( .A(n23), .B(n69), .Y(N282) );
  XOR2X1 U91 ( .A(n24), .B(n70), .Y(N283) );
  XOR2X1 U92 ( .A(n25), .B(n71), .Y(N284) );
  XOR2X1 U93 ( .A(n26), .B(n72), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n73), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n74), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n75), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n76), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n77), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n78), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n79), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n80), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n81), .Y(N294) );
  XOR2X1 U103 ( .A(n92), .B(n9), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n377), .Y(N52) );
  XOR2X1 U105 ( .A(n1), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n5), .B(n63), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n64), .Y(N55) );
  XOR2X1 U108 ( .A(n7), .B(n349), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n65), .Y(N57) );
  XOR2X1 U110 ( .A(n66), .B(n45), .Y(N58) );
  XOR2X1 U111 ( .A(n62), .B(n61), .Y(N35) );
  XOR2X1 U112 ( .A(n46), .B(n60), .Y(N36) );
  XOR2X1 U113 ( .A(n8), .B(n59), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n58), .Y(N38) );
  XOR2X1 U115 ( .A(n6), .B(n57), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N147), .B(N136), .Y(N173) );
  INVX2 U120 ( .A(float), .Y(n100) );
  INVX2 U121 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U122 ( .A(weight[6]), .Y(n56) );
  INVX2 U123 ( .A(weight[5]), .Y(n57) );
  INVX2 U124 ( .A(weight[4]), .Y(n58) );
  INVX2 U125 ( .A(weight[3]), .Y(n59) );
  INVX2 U126 ( .A(N327), .Y(n60) );
  INVX2 U127 ( .A(N326), .Y(n61) );
  INVX2 U128 ( .A(N34), .Y(n62) );
  NOR2X1 U129 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U130 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U131 ( .A(value[3]), .Y(n63) );
  INVX2 U132 ( .A(value[4]), .Y(n64) );
  INVX2 U133 ( .A(value[6]), .Y(n65) );
  INVX2 U134 ( .A(value[7]), .Y(n66) );
  INVX2 U135 ( .A(N280), .Y(n67) );
  INVX2 U136 ( .A(N264), .Y(n68) );
  INVX2 U137 ( .A(N265), .Y(n69) );
  INVX2 U138 ( .A(N266), .Y(n70) );
  INVX2 U139 ( .A(N267), .Y(n71) );
  INVX2 U140 ( .A(N268), .Y(n72) );
  INVX2 U141 ( .A(N269), .Y(n73) );
  INVX2 U142 ( .A(N270), .Y(n74) );
  INVX2 U143 ( .A(N271), .Y(n75) );
  INVX2 U144 ( .A(N272), .Y(n76) );
  INVX2 U145 ( .A(N273), .Y(n77) );
  INVX2 U146 ( .A(N274), .Y(n78) );
  INVX2 U147 ( .A(N275), .Y(n79) );
  INVX2 U148 ( .A(N276), .Y(n80) );
  INVX2 U149 ( .A(N277), .Y(n81) );
  INVX2 U150 ( .A(N386), .Y(N410) );
  INVX2 U151 ( .A(N386), .Y(N458) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n82) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n83) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n84) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n85) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n86) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n87) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n88), .B(n76), .C(n89), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n52), .C(n90), .Y(n89) );
  OAI21X1 U162 ( .A(n88), .B(n75), .C(n91), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n52), .C(n90), .Y(n91) );
  OAI21X1 U164 ( .A(n88), .B(n92), .C(n93), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n52), .C(n90), .Y(n93) );
  INVX1 U166 ( .A(N278), .Y(n92) );
  OAI21X1 U167 ( .A(n88), .B(n81), .C(n94), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n52), .C(n90), .Y(n94) );
  OAI21X1 U169 ( .A(n88), .B(n80), .C(n95), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n52), .C(n90), .Y(n95) );
  OAI21X1 U171 ( .A(n88), .B(n79), .C(n96), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n52), .C(n90), .Y(n96) );
  OAI21X1 U173 ( .A(n88), .B(n78), .C(n97), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n52), .C(n90), .Y(n97) );
  OAI21X1 U175 ( .A(n88), .B(n77), .C(n98), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n52), .C(n90), .Y(n98) );
  AND2X1 U177 ( .A(float), .B(n47), .Y(n90) );
  OAI21X1 U178 ( .A(n99), .B(n100), .C(n101), .Y(overflow) );
  OAI22X1 U179 ( .A(n102), .B(n100), .C(n103), .D(n104), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n104) );
  MUX2X1 U181 ( .B(n105), .A(n106), .S(n107), .Y(n102) );
  OAI21X1 U182 ( .A(n100), .B(n108), .C(n109), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n110), .C(n111), .Y(n109) );
  MUX2X1 U184 ( .B(n112), .A(n113), .S(n114), .Y(n108) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n115), .Y(n114)
         );
  NAND2X1 U186 ( .A(n116), .B(n117), .Y(n113) );
  MUX2X1 U187 ( .B(n118), .A(n119), .S(n120), .Y(n116) );
  NOR2X1 U188 ( .A(n121), .B(n122), .Y(n119) );
  NOR2X1 U189 ( .A(n123), .B(n124), .Y(n118) );
  NAND3X1 U190 ( .A(n125), .B(n126), .C(n127), .Y(n112) );
  OAI21X1 U191 ( .A(n128), .B(n121), .C(n129), .Y(n126) );
  MUX2X1 U192 ( .B(n130), .A(n131), .S(n123), .Y(n125) );
  NAND2X1 U193 ( .A(n132), .B(n133), .Y(out[5]) );
  OAI21X1 U194 ( .A(n134), .B(n135), .C(float), .Y(n133) );
  OAI21X1 U195 ( .A(n121), .B(n122), .C(n117), .Y(n135) );
  NAND3X1 U196 ( .A(n120), .B(n123), .C(n136), .Y(n117) );
  XOR2X1 U197 ( .A(n120), .B(n123), .Y(n121) );
  MUX2X1 U198 ( .B(n127), .A(n137), .S(n123), .Y(n134) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n138), .Y(n123) );
  OR2X1 U200 ( .A(n124), .B(n120), .Y(n137) );
  NOR2X1 U201 ( .A(n139), .B(n140), .Y(n127) );
  MUX2X1 U202 ( .B(n99), .A(n141), .S(n128), .Y(n139) );
  AOI21X1 U203 ( .A(N357), .B(n110), .C(n111), .Y(n132) );
  INVX1 U204 ( .A(n142), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n110), .C(n143), .Y(n142) );
  OAI21X1 U206 ( .A(n100), .B(n144), .C(n101), .Y(n143) );
  MUX2X1 U207 ( .B(n140), .A(n145), .S(n120), .Y(n144) );
  INVX1 U208 ( .A(n128), .Y(n120) );
  MUX2X1 U209 ( .B(n146), .A(n147), .S(n115), .Y(n128) );
  NAND3X1 U210 ( .A(n148), .B(n124), .C(n122), .Y(n145) );
  NAND2X1 U211 ( .A(n149), .B(n131), .Y(n124) );
  INVX1 U212 ( .A(n150), .Y(n149) );
  NAND2X1 U213 ( .A(n151), .B(n152), .Y(n140) );
  MUX2X1 U214 ( .B(n130), .A(n131), .S(n150), .Y(n151) );
  NAND2X1 U215 ( .A(n153), .B(n154), .Y(out[3]) );
  OAI21X1 U216 ( .A(n136), .B(n155), .C(float), .Y(n154) );
  MUX2X1 U217 ( .B(n156), .A(n99), .S(n150), .Y(n155) );
  NOR2X1 U218 ( .A(n129), .B(n157), .Y(n156) );
  INVX1 U219 ( .A(n122), .Y(n129) );
  INVX1 U220 ( .A(n148), .Y(n136) );
  NAND2X1 U221 ( .A(n130), .B(n150), .Y(n148) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n115), .Y(n150)
         );
  INVX1 U223 ( .A(n141), .Y(n130) );
  AOI21X1 U224 ( .A(N355), .B(n110), .C(n111), .Y(n153) );
  NAND2X1 U225 ( .A(n158), .B(n159), .Y(out[2]) );
  OAI21X1 U226 ( .A(n160), .B(n161), .C(float), .Y(n159) );
  OAI22X1 U227 ( .A(n99), .B(n162), .C(n163), .D(n152), .Y(n161) );
  OAI22X1 U228 ( .A(n164), .B(n141), .C(n165), .D(n122), .Y(n160) );
  NAND3X1 U229 ( .A(n162), .B(n166), .C(n167), .Y(n122) );
  NOR2X1 U230 ( .A(n131), .B(n168), .Y(n167) );
  AOI21X1 U231 ( .A(N354), .B(n110), .C(n111), .Y(n158) );
  OAI21X1 U232 ( .A(n169), .B(n100), .C(n170), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n110), .C(n111), .Y(n170) );
  INVX1 U234 ( .A(n103), .Y(n110) );
  AOI21X1 U235 ( .A(n157), .B(n166), .C(n171), .Y(n169) );
  OAI22X1 U236 ( .A(n99), .B(n163), .C(n165), .D(n141), .Y(n171) );
  NAND3X1 U237 ( .A(n162), .B(n168), .C(n99), .Y(n141) );
  INVX1 U238 ( .A(n168), .Y(n163) );
  OAI21X1 U239 ( .A(n172), .B(n173), .C(n174), .Y(n168) );
  AOI22X1 U240 ( .A(N548), .B(n175), .C(N553), .D(n176), .Y(n174) );
  INVX1 U241 ( .A(N542), .Y(n173) );
  OAI21X1 U242 ( .A(n103), .B(n40), .C(n177), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n178), .C(n111), .Y(n177) );
  INVX1 U244 ( .A(n101), .Y(n111) );
  OAI22X1 U245 ( .A(n99), .B(n164), .C(n165), .D(n152), .Y(n178) );
  INVX1 U246 ( .A(n157), .Y(n152) );
  NOR2X1 U247 ( .A(n131), .B(n162), .Y(n157) );
  AOI21X1 U248 ( .A(n179), .B(N543), .C(n180), .Y(n162) );
  INVX1 U249 ( .A(n181), .Y(n180) );
  AOI22X1 U250 ( .A(N549), .B(n175), .C(N554), .D(n176), .Y(n181) );
  AOI21X1 U251 ( .A(n179), .B(N540), .C(n182), .Y(n165) );
  INVX1 U252 ( .A(n183), .Y(n182) );
  AOI22X1 U253 ( .A(N546), .B(n175), .C(N551), .D(n176), .Y(n183) );
  INVX1 U254 ( .A(n166), .Y(n164) );
  OAI21X1 U255 ( .A(n172), .B(n184), .C(n185), .Y(n166) );
  AOI22X1 U256 ( .A(N547), .B(n175), .C(N552), .D(n176), .Y(n185) );
  INVX1 U257 ( .A(N541), .Y(n184) );
  INVX1 U258 ( .A(n131), .Y(n99) );
  OAI21X1 U259 ( .A(n172), .B(n186), .C(n187), .Y(n131) );
  AOI22X1 U260 ( .A(N550), .B(n175), .C(N555), .D(n176), .Y(n187) );
  NOR2X1 U261 ( .A(n107), .B(n179), .Y(n176) );
  INVX1 U262 ( .A(n172), .Y(n179) );
  AND2X1 U263 ( .A(n172), .B(n107), .Y(n175) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n188), .C(n189), .Y(n107) );
  OAI21X1 U265 ( .A(n86), .B(m_large[2]), .C(n190), .Y(n189) );
  AOI21X1 U266 ( .A(n188), .B(\sub_218/A[3] ), .C(n191), .Y(n190) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n192), .C(n193), .Y(n191) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n194), .C(n195), .Y(n193) );
  OAI22X1 U269 ( .A(n192), .B(m_large[1]), .C(n87), .D(m_large[0]), .Y(n195)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n192) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n188) );
  INVX1 U272 ( .A(N544), .Y(n186) );
  XOR2X1 U273 ( .A(n105), .B(n106), .Y(n172) );
  MUX2X1 U274 ( .B(n196), .A(n197), .S(n115), .Y(n106) );
  MUX2X1 U275 ( .B(n197), .A(n196), .S(n115), .Y(n105) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n197) );
  NAND2X1 U277 ( .A(n101), .B(n100), .Y(n103) );
  OAI21X1 U278 ( .A(n198), .B(n199), .C(n200), .Y(n101) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n200) );
  NAND2X1 U280 ( .A(n201), .B(n202), .Y(n199) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n202) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n201) );
  NAND2X1 U283 ( .A(n203), .B(n204), .Y(n198) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n204) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n203) );
  NAND2X1 U286 ( .A(n138), .B(n205), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n206), .B(n207), .C(n208), .D(n209), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n210), .B(n211), .Y(n209) );
  INVX1 U289 ( .A(n212), .Y(n211) );
  MUX2X1 U290 ( .B(n213), .A(n214), .S(N506), .Y(n210) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n214) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n213) );
  NAND3X1 U293 ( .A(n215), .B(n216), .C(n217), .Y(n208) );
  INVX1 U294 ( .A(N509), .Y(n216) );
  INVX1 U295 ( .A(N508), .Y(n215) );
  NAND2X1 U296 ( .A(n218), .B(n219), .Y(n207) );
  MUX2X1 U297 ( .B(n220), .A(n221), .S(N522), .Y(n218) );
  OAI21X1 U298 ( .A(N521), .B(n222), .C(n223), .Y(n221) );
  MUX2X1 U299 ( .B(n224), .A(n225), .S(N521), .Y(n220) );
  NAND3X1 U300 ( .A(n226), .B(n227), .C(n228), .Y(n206) );
  INVX1 U301 ( .A(N525), .Y(n227) );
  INVX1 U302 ( .A(N524), .Y(n226) );
  OAI21X1 U303 ( .A(n229), .B(n212), .C(n230), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n231), .B(n232), .C(n219), .Y(n230) );
  MUX2X1 U305 ( .B(n233), .A(n234), .S(N521), .Y(n232) );
  NAND2X1 U306 ( .A(n235), .B(n222), .Y(n234) );
  INVX1 U307 ( .A(n236), .Y(n235) );
  NAND3X1 U308 ( .A(n237), .B(n228), .C(n238), .Y(n233) );
  NOR2X1 U309 ( .A(n205), .B(n239), .Y(n238) );
  AND2X1 U310 ( .A(n225), .B(n240), .Y(n231) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n241), .C(n242), .Y(n229) );
  MUX2X1 U312 ( .B(n243), .A(n244), .S(N505), .Y(n242) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n245), .Y(n244) );
  NAND3X1 U314 ( .A(N506), .B(n217), .C(n246), .Y(n243) );
  OAI22X1 U315 ( .A(n247), .B(n212), .C(n248), .D(n249), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n250), .B(N521), .C(n240), .D(n222), .Y(n248) );
  NOR2X1 U317 ( .A(n205), .B(n236), .Y(n250) );
  AOI22X1 U318 ( .A(N505), .B(n245), .C(cumulative[2]), .D(n241), .Y(n247) );
  INVX1 U319 ( .A(n251), .Y(n245) );
  OAI21X1 U320 ( .A(n252), .B(n212), .C(n253), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n240), .B(n223), .C(n219), .Y(n253) );
  INVX1 U322 ( .A(n249), .Y(n219) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n254), .C(n115), .Y(n249) );
  NOR2X1 U324 ( .A(n255), .B(n256), .Y(n254) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n256) );
  NOR2X1 U326 ( .A(n236), .B(N521), .Y(n240) );
  NAND3X1 U327 ( .A(n239), .B(n228), .C(n237), .Y(n236) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n237) );
  INVX1 U329 ( .A(N523), .Y(n228) );
  INVX1 U330 ( .A(N522), .Y(n239) );
  NAND2X1 U331 ( .A(n257), .B(n138), .Y(n212) );
  OAI21X1 U332 ( .A(n147), .B(n258), .C(n259), .Y(n257) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n258) );
  INVX1 U334 ( .A(n241), .Y(n252) );
  NOR2X1 U335 ( .A(n251), .B(N505), .Y(n241) );
  NAND3X1 U336 ( .A(n260), .B(n217), .C(n246), .Y(n251) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n246) );
  INVX1 U338 ( .A(N507), .Y(n217) );
  INVX1 U339 ( .A(N506), .Y(n260) );
  INVX1 U340 ( .A(n261), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n261) );
  INVX1 U342 ( .A(n194), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n222), .A(cumulative[2]), .S(n115), .Y(n194) );
  OAI21X1 U344 ( .A(n262), .B(n263), .C(n264), .Y(n222) );
  OAI21X1 U345 ( .A(n265), .B(n266), .C(n223), .Y(n264) );
  OAI22X1 U346 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  OAI22X1 U347 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  INVX1 U348 ( .A(n275), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n225), .A(cumulative[1]), .S(n115), .Y(n275) );
  OAI21X1 U350 ( .A(n276), .B(n263), .C(n277), .Y(n225) );
  OAI21X1 U351 ( .A(n278), .B(n279), .C(n223), .Y(n277) );
  OAI22X1 U352 ( .A(n267), .B(n271), .C(n262), .D(n270), .Y(n279) );
  OAI22X1 U353 ( .A(n273), .B(n272), .C(n269), .D(n274), .Y(n278) );
  INVX1 U354 ( .A(n280), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n224), .A(cumulative[0]), .S(n115), .Y(n280) );
  NAND3X1 U356 ( .A(n281), .B(n282), .C(n283), .Y(n138) );
  AOI22X1 U357 ( .A(n284), .B(n285), .C(exponent_product[3]), .D(n259), .Y(
        n283) );
  OAI21X1 U358 ( .A(n286), .B(n146), .C(n287), .Y(n285) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n288), .C(n147), .Y(n287) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n147) );
  INVX1 U361 ( .A(n288), .Y(n286) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n255), .Y(n288) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n289), .C(n290), .Y(n284) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n282) );
  NAND3X1 U365 ( .A(n291), .B(n83), .C(\gte_183/A[2] ), .Y(n281) );
  INVX1 U366 ( .A(n290), .Y(n291) );
  NOR2X1 U367 ( .A(n259), .B(exponent_product[3]), .Y(n290) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n259) );
  OAI21X1 U369 ( .A(n292), .B(n263), .C(n293), .Y(n224) );
  OAI21X1 U370 ( .A(n294), .B(n295), .C(n223), .Y(n293) );
  INVX1 U371 ( .A(n205), .Y(n223) );
  OAI22X1 U372 ( .A(n267), .B(n273), .C(n276), .D(n270), .Y(n295) );
  INVX1 U373 ( .A(product[1]), .Y(n276) );
  OAI21X1 U374 ( .A(n100), .B(n43), .C(n296), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n51), .Y(n296) );
  INVX1 U376 ( .A(product[4]), .Y(n273) );
  OAI22X1 U377 ( .A(n269), .B(n272), .C(n262), .D(n274), .Y(n294) );
  INVX1 U378 ( .A(product[2]), .Y(n262) );
  OAI21X1 U379 ( .A(n100), .B(n41), .C(n297), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n51), .Y(n297) );
  INVX1 U381 ( .A(product[3]), .Y(n269) );
  OAI21X1 U382 ( .A(n100), .B(n298), .C(n299), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n51), .Y(n299) );
  INVX1 U384 ( .A(N346), .Y(n298) );
  INVX1 U385 ( .A(product[0]), .Y(n292) );
  OAI21X1 U386 ( .A(n100), .B(n300), .C(n301), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n51), .Y(n301) );
  INVX1 U388 ( .A(n289), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n302), .B(n303), .C(float), .Y(n289) );
  OAI21X1 U390 ( .A(n267), .B(n304), .C(n305), .Y(n303) );
  AOI22X1 U391 ( .A(N436), .B(n306), .C(N412), .D(n307), .Y(n305) );
  INVX1 U392 ( .A(N388), .Y(n304) );
  OAI21X1 U393 ( .A(n308), .B(N388), .C(n309), .Y(n302) );
  AOI21X1 U394 ( .A(n310), .B(N460), .C(n311), .Y(n309) );
  INVX1 U395 ( .A(n146), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n312), .B(n313), .C(float), .Y(n146) );
  OAI21X1 U397 ( .A(N435), .B(n267), .C(n314), .Y(n313) );
  AOI22X1 U398 ( .A(N435), .B(n306), .C(N411), .D(n307), .Y(n314) );
  OAI21X1 U399 ( .A(N435), .B(n308), .C(n315), .Y(n312) );
  AOI21X1 U400 ( .A(n310), .B(N459), .C(n311), .Y(n315) );
  INVX1 U401 ( .A(n316), .Y(n311) );
  NOR2X1 U402 ( .A(n317), .B(n270), .Y(n310) );
  OAI21X1 U403 ( .A(n318), .B(n205), .C(n319), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n320), .Y(n319) );
  INVX1 U405 ( .A(n263), .Y(n320) );
  NAND2X1 U406 ( .A(n321), .B(float), .Y(n263) );
  AND2X1 U407 ( .A(n322), .B(n323), .Y(n318) );
  AOI22X1 U408 ( .A(N438), .B(n306), .C(N414), .D(n307), .Y(n323) );
  AOI22X1 U409 ( .A(N462), .B(n324), .C(N390), .D(product[7]), .Y(n322) );
  OAI21X1 U410 ( .A(n325), .B(n205), .C(n326), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n327), .Y(n326) );
  OAI21X1 U412 ( .A(n308), .B(n39), .C(n328), .Y(n327) );
  OAI21X1 U413 ( .A(N461), .B(n317), .C(n324), .Y(n328) );
  NAND2X1 U414 ( .A(n329), .B(float), .Y(n205) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n330), .Y(n325) );
  INVX1 U416 ( .A(n331), .Y(n330) );
  AOI22X1 U417 ( .A(n48), .B(n306), .C(N413), .D(n307), .Y(n331) );
  INVX1 U418 ( .A(n255), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n332), .B(n333), .C(float), .Y(n255) );
  OAI21X1 U420 ( .A(n267), .B(n334), .C(n335), .Y(n333) );
  AOI22X1 U421 ( .A(N410), .B(n307), .C(N386), .D(n321), .Y(n335) );
  INVX1 U422 ( .A(n308), .Y(n321) );
  NAND3X1 U423 ( .A(n329), .B(n336), .C(n337), .Y(n308) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n337) );
  INVX1 U425 ( .A(n317), .Y(n329) );
  INVX1 U426 ( .A(N386), .Y(n334) );
  NAND3X1 U427 ( .A(n338), .B(n316), .C(n339), .Y(n332) );
  NAND2X1 U428 ( .A(N386), .B(n306), .Y(n339) );
  OAI21X1 U429 ( .A(n306), .B(n340), .C(n317), .Y(n316) );
  NAND2X1 U430 ( .A(n272), .B(n267), .Y(n340) );
  INVX1 U431 ( .A(product[7]), .Y(n267) );
  INVX1 U432 ( .A(n307), .Y(n272) );
  NOR2X1 U433 ( .A(n268), .B(product[7]), .Y(n307) );
  INVX1 U434 ( .A(product[6]), .Y(n268) );
  INVX1 U435 ( .A(n274), .Y(n306) );
  NAND2X1 U436 ( .A(n336), .B(product[5]), .Y(n274) );
  OAI21X1 U437 ( .A(N458), .B(n317), .C(n324), .Y(n338) );
  INVX1 U438 ( .A(n270), .Y(n324) );
  NAND3X1 U439 ( .A(product[4]), .B(n271), .C(n336), .Y(n270) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n336) );
  OAI21X1 U441 ( .A(n100), .B(n42), .C(n341), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n51), .Y(n341) );
  OAI21X1 U443 ( .A(n100), .B(n44), .C(n342), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n51), .Y(n342) );
  INVX1 U445 ( .A(product[5]), .Y(n271) );
  OAI21X1 U446 ( .A(n100), .B(n343), .C(n344), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n51), .Y(n344) );
  INVX1 U448 ( .A(N348), .Y(n343) );
  OAI21X1 U449 ( .A(n100), .B(n345), .C(n346), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n51), .Y(n346) );
  NAND2X1 U451 ( .A(n196), .B(n100), .Y(n88) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n196) );
  INVX1 U453 ( .A(N347), .Y(n345) );
  NAND2X1 U454 ( .A(n347), .B(n348), .Y(n317) );
  OAI21X1 U455 ( .A(n349), .B(n350), .C(n65), .Y(n348) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n350) );
  INVX1 U457 ( .A(value[5]), .Y(n349) );
  OAI21X1 U458 ( .A(n351), .B(n352), .C(n353), .Y(n347) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  INVX1 U461 ( .A(weight[5]), .Y(n351) );
  NOR2X1 U462 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U463 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U464 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U465 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U466 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U467 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U468 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U469 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U470 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U471 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U472 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U473 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U474 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U475 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U476 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U477 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U478 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U479 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U480 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U481 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U482 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U483 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U484 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U485 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U486 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U487 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U488 ( .A(N49), .Y(n362) );
  NOR2X1 U489 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U490 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U491 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U492 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U493 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U494 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U495 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U496 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U497 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U498 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U499 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U500 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U501 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U502 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U503 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U504 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U505 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U506 ( .A(n62), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U507 ( .A(value[2]), .Y(n374) );
  NOR2X1 U508 ( .A(n375), .B(n377), .Y(N319) );
  NOR2X1 U509 ( .A(n376), .B(n377), .Y(N318) );
  NOR2X1 U510 ( .A(n62), .B(n377), .Y(N317) );
  INVX1 U511 ( .A(value[1]), .Y(n377) );
  NOR2X1 U512 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U513 ( .A(N327), .Y(n375) );
  NOR2X1 U514 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U515 ( .A(N326), .Y(n376) );
  INVX1 U516 ( .A(N51), .Y(n378) );
  NAND2X1 U517 ( .A(N51), .B(N34), .Y(n300) );
  NOR2X1 U518 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U519 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U520 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U521 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U522 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U523 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U524 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U525 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U526 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U527 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U528 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U529 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U530 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U531 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U532 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U533 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U534 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U535 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U536 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U537 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U538 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U539 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U540 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U541 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U542 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U543 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U544 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U545 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U546 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U547 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U548 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U549 ( .A(n361), .B(n381), .Y(N172) );
  MUX2X1 U550 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U551 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U552 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U553 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U554 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U555 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U556 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U557 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U558 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U559 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U560 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U561 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U562 ( .A(n361), .B(n382), .Y(N122) );
  MUX2X1 U563 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U564 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U565 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U566 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U567 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U568 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U569 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U570 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U571 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U572 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U573 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U574 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U575 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U576 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U577 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U578 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U579 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U580 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U581 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U582 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U583 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U584 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U585 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U586 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U587 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U588 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U589 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U590 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U591 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U592 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U593 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U594 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U595 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U596 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U597 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U598 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U599 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_2_DW01_add_12_DW01_add_193 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_2_DW01_add_11_DW01_add_192 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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


module signed_multiplier_2_DW01_add_10_DW01_add_191 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_2_DW01_add_9_DW01_add_190 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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


module signed_multiplier_2_DW01_add_7_DW01_add_188 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
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
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module signed_multiplier_2_DW01_add_6_DW01_add_187 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module signed_multiplier_2 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N133, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N410, N411, N412, N413, N414, N435, N436, N438, N458, N459,
         N460, N461, N462, N481, N540, N541, N542, N543, N544, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N525, N524, N523,
         N522, N521, N509, N508, N507, N506, N505, N385, N384, N262, N261,
         N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250,
         N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_2_root_add_0_root_add_76_7/carry[15] ,
         \add_2_root_add_0_root_add_76_7/carry[14] ,
         \add_2_root_add_0_root_add_76_7/carry[13] ,
         \add_2_root_add_0_root_add_76_7/carry[12] ,
         \add_2_root_add_0_root_add_76_7/carry[11] ,
         \add_2_root_add_0_root_add_76_7/carry[10] ,
         \add_2_root_add_0_root_add_76_7/carry[9] ,
         \add_2_root_add_0_root_add_76_7/carry[8] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_2_DW01_add_12_DW01_add_193 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_2_DW01_add_11_DW01_add_192 add_5_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199}) );
  signed_multiplier_2_DW01_add_10_DW01_add_191 add_4_root_add_0_root_add_76_7 ( 
        .A({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247}) );
  signed_multiplier_2_DW01_add_9_DW01_add_190 add_3_root_add_0_root_add_76_7 ( 
        .A({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_2_DW01_add_7_DW01_add_188 add_1_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_2_DW01_add_6_DW01_add_187 add_0_root_add_0_root_add_76_7 ( 
        .A({N166, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n275), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n194), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n188), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n192), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n86), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n85), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n13), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n17), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n146), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n289), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n84), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n147), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n83), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n259), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n22), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n15), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n11), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n16), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n18), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_7  ( .A(N137), .B(N148), .C(n14), 
        .YC(\add_2_root_add_0_root_add_76_7/carry[8] ), .YS(N174) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_8  ( .A(N138), .B(N149), .C(
        \add_2_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YS(N175) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_9  ( .A(N139), .B(N150), .C(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YS(N176) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_10  ( .A(N140), .B(N151), .C(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YS(N177) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_11  ( .A(N141), .B(N152), .C(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YS(N178) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_12  ( .A(N142), .B(N153), .C(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YS(N179) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_13  ( .A(N143), .B(N154), .C(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YS(N180) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_14  ( .A(N144), .B(N155), .C(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N181) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_15  ( .A(N145), .B(N156), .C(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N182) );
  AND2X2 U3 ( .A(n378), .B(n377), .Y(n1) );
  AND2X2 U4 ( .A(n7), .B(n349), .Y(n2) );
  AND2X2 U5 ( .A(n12), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n1), .B(n374), .Y(n5) );
  AND2X2 U8 ( .A(n38), .B(n58), .Y(n6) );
  AND2X2 U9 ( .A(n36), .B(n64), .Y(n7) );
  AND2X2 U10 ( .A(n46), .B(n60), .Y(n8) );
  AND2X2 U11 ( .A(n35), .B(n81), .Y(n9) );
  AND2X2 U12 ( .A(N435), .B(N436), .Y(n10) );
  AND2X2 U13 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n11) );
  AND2X2 U14 ( .A(N386), .B(N435), .Y(n12) );
  AND2X2 U15 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n13) );
  AND2X2 U16 ( .A(N147), .B(N136), .Y(n14) );
  AND2X2 U17 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n15) );
  AND2X2 U18 ( .A(N317), .B(N314), .Y(n16) );
  AND2X2 U19 ( .A(cumulative[0]), .B(product[0]), .Y(n17) );
  AND2X2 U20 ( .A(N34), .B(N322), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n19) );
  AND2X2 U22 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(n20) );
  AND2X2 U23 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n21) );
  AND2X2 U24 ( .A(value[3]), .B(weight[3]), .Y(n22) );
  AND2X2 U25 ( .A(n67), .B(n68), .Y(n23) );
  AND2X2 U26 ( .A(n23), .B(n69), .Y(n24) );
  AND2X2 U27 ( .A(n24), .B(n70), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n71), .Y(n26) );
  AND2X2 U29 ( .A(n26), .B(n72), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n73), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n74), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n75), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n76), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n77), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n78), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n79), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n80), .Y(n35) );
  AND2X2 U38 ( .A(n5), .B(n63), .Y(n36) );
  AND2X2 U39 ( .A(n6), .B(n57), .Y(n37) );
  AND2X2 U40 ( .A(n8), .B(n59), .Y(n38) );
  XNOR2X1 U41 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n39) );
  XNOR2X1 U42 ( .A(cumulative[0]), .B(product[0]), .Y(n40) );
  XNOR2X1 U43 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n41)
         );
  XNOR2X1 U44 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n42) );
  XNOR2X1 U45 ( .A(N317), .B(N314), .Y(n43) );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  AND2X2 U47 ( .A(n2), .B(n65), .Y(n45) );
  AND2X2 U48 ( .A(n62), .B(n61), .Y(n46) );
  AND2X2 U49 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n47) );
  INVX1 U50 ( .A(N384), .Y(n48) );
  INVX2 U51 ( .A(n48), .Y(n49) );
  INVX2 U52 ( .A(n138), .Y(n115) );
  INVX2 U53 ( .A(n50), .Y(n52) );
  INVX2 U54 ( .A(n50), .Y(n53) );
  INVX2 U55 ( .A(n88), .Y(n51) );
  OR2X1 U56 ( .A(n196), .B(float), .Y(n50) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n280), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n280), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n87), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n87), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n255), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n255), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n82), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n82), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n19), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n20), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n49), .Y(N438) );
  OR2X1 U76 ( .A(n49), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n49), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n49), .B(n10), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n10), .B(n49), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n282), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n12), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n67), .B(n68), .Y(N281) );
  XOR2X1 U90 ( .A(n23), .B(n69), .Y(N282) );
  XOR2X1 U91 ( .A(n24), .B(n70), .Y(N283) );
  XOR2X1 U92 ( .A(n25), .B(n71), .Y(N284) );
  XOR2X1 U93 ( .A(n26), .B(n72), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n73), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n74), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n75), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n76), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n77), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n78), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n79), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n80), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n81), .Y(N294) );
  XOR2X1 U103 ( .A(n92), .B(n9), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n377), .Y(N52) );
  XOR2X1 U105 ( .A(n1), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n5), .B(n63), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n64), .Y(N55) );
  XOR2X1 U108 ( .A(n7), .B(n349), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n65), .Y(N57) );
  XOR2X1 U110 ( .A(n66), .B(n45), .Y(N58) );
  XOR2X1 U111 ( .A(n62), .B(n61), .Y(N35) );
  XOR2X1 U112 ( .A(n46), .B(n60), .Y(N36) );
  XOR2X1 U113 ( .A(n8), .B(n59), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n58), .Y(N38) );
  XOR2X1 U115 ( .A(n6), .B(n57), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N147), .B(N136), .Y(N173) );
  INVX2 U120 ( .A(float), .Y(n100) );
  INVX2 U121 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U122 ( .A(weight[6]), .Y(n56) );
  INVX2 U123 ( .A(weight[5]), .Y(n57) );
  INVX2 U124 ( .A(weight[4]), .Y(n58) );
  INVX2 U125 ( .A(weight[3]), .Y(n59) );
  INVX2 U126 ( .A(N327), .Y(n60) );
  INVX2 U127 ( .A(N326), .Y(n61) );
  INVX2 U128 ( .A(N34), .Y(n62) );
  NOR2X1 U129 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U130 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U131 ( .A(value[3]), .Y(n63) );
  INVX2 U132 ( .A(value[4]), .Y(n64) );
  INVX2 U133 ( .A(value[6]), .Y(n65) );
  INVX2 U134 ( .A(value[7]), .Y(n66) );
  INVX2 U135 ( .A(N280), .Y(n67) );
  INVX2 U136 ( .A(N264), .Y(n68) );
  INVX2 U137 ( .A(N265), .Y(n69) );
  INVX2 U138 ( .A(N266), .Y(n70) );
  INVX2 U139 ( .A(N267), .Y(n71) );
  INVX2 U140 ( .A(N268), .Y(n72) );
  INVX2 U141 ( .A(N269), .Y(n73) );
  INVX2 U142 ( .A(N270), .Y(n74) );
  INVX2 U143 ( .A(N271), .Y(n75) );
  INVX2 U144 ( .A(N272), .Y(n76) );
  INVX2 U145 ( .A(N273), .Y(n77) );
  INVX2 U146 ( .A(N274), .Y(n78) );
  INVX2 U147 ( .A(N275), .Y(n79) );
  INVX2 U148 ( .A(N276), .Y(n80) );
  INVX2 U149 ( .A(N277), .Y(n81) );
  INVX2 U150 ( .A(N386), .Y(N410) );
  INVX2 U151 ( .A(N386), .Y(N458) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n82) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n83) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n84) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n85) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n86) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n87) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n88), .B(n76), .C(n89), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n52), .C(n90), .Y(n89) );
  OAI21X1 U162 ( .A(n88), .B(n75), .C(n91), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n52), .C(n90), .Y(n91) );
  OAI21X1 U164 ( .A(n88), .B(n92), .C(n93), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n52), .C(n90), .Y(n93) );
  INVX1 U166 ( .A(N278), .Y(n92) );
  OAI21X1 U167 ( .A(n88), .B(n81), .C(n94), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n52), .C(n90), .Y(n94) );
  OAI21X1 U169 ( .A(n88), .B(n80), .C(n95), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n52), .C(n90), .Y(n95) );
  OAI21X1 U171 ( .A(n88), .B(n79), .C(n96), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n52), .C(n90), .Y(n96) );
  OAI21X1 U173 ( .A(n88), .B(n78), .C(n97), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n52), .C(n90), .Y(n97) );
  OAI21X1 U175 ( .A(n88), .B(n77), .C(n98), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n52), .C(n90), .Y(n98) );
  AND2X1 U177 ( .A(float), .B(n47), .Y(n90) );
  OAI21X1 U178 ( .A(n99), .B(n100), .C(n101), .Y(overflow) );
  OAI22X1 U179 ( .A(n102), .B(n100), .C(n103), .D(n104), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n104) );
  MUX2X1 U181 ( .B(n105), .A(n106), .S(n107), .Y(n102) );
  OAI21X1 U182 ( .A(n100), .B(n108), .C(n109), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n110), .C(n111), .Y(n109) );
  MUX2X1 U184 ( .B(n112), .A(n113), .S(n114), .Y(n108) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n115), .Y(n114)
         );
  NAND2X1 U186 ( .A(n116), .B(n117), .Y(n113) );
  MUX2X1 U187 ( .B(n118), .A(n119), .S(n120), .Y(n116) );
  NOR2X1 U188 ( .A(n121), .B(n122), .Y(n119) );
  NOR2X1 U189 ( .A(n123), .B(n124), .Y(n118) );
  NAND3X1 U190 ( .A(n125), .B(n126), .C(n127), .Y(n112) );
  OAI21X1 U191 ( .A(n128), .B(n121), .C(n129), .Y(n126) );
  MUX2X1 U192 ( .B(n130), .A(n131), .S(n123), .Y(n125) );
  NAND2X1 U193 ( .A(n132), .B(n133), .Y(out[5]) );
  OAI21X1 U194 ( .A(n134), .B(n135), .C(float), .Y(n133) );
  OAI21X1 U195 ( .A(n121), .B(n122), .C(n117), .Y(n135) );
  NAND3X1 U196 ( .A(n120), .B(n123), .C(n136), .Y(n117) );
  XOR2X1 U197 ( .A(n120), .B(n123), .Y(n121) );
  MUX2X1 U198 ( .B(n127), .A(n137), .S(n123), .Y(n134) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n138), .Y(n123) );
  OR2X1 U200 ( .A(n124), .B(n120), .Y(n137) );
  NOR2X1 U201 ( .A(n139), .B(n140), .Y(n127) );
  MUX2X1 U202 ( .B(n99), .A(n141), .S(n128), .Y(n139) );
  AOI21X1 U203 ( .A(N357), .B(n110), .C(n111), .Y(n132) );
  INVX1 U204 ( .A(n142), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n110), .C(n143), .Y(n142) );
  OAI21X1 U206 ( .A(n100), .B(n144), .C(n101), .Y(n143) );
  MUX2X1 U207 ( .B(n140), .A(n145), .S(n120), .Y(n144) );
  INVX1 U208 ( .A(n128), .Y(n120) );
  MUX2X1 U209 ( .B(n146), .A(n147), .S(n115), .Y(n128) );
  NAND3X1 U210 ( .A(n148), .B(n124), .C(n122), .Y(n145) );
  NAND2X1 U211 ( .A(n149), .B(n131), .Y(n124) );
  INVX1 U212 ( .A(n150), .Y(n149) );
  NAND2X1 U213 ( .A(n151), .B(n152), .Y(n140) );
  MUX2X1 U214 ( .B(n130), .A(n131), .S(n150), .Y(n151) );
  NAND2X1 U215 ( .A(n153), .B(n154), .Y(out[3]) );
  OAI21X1 U216 ( .A(n136), .B(n155), .C(float), .Y(n154) );
  MUX2X1 U217 ( .B(n156), .A(n99), .S(n150), .Y(n155) );
  NOR2X1 U218 ( .A(n129), .B(n157), .Y(n156) );
  INVX1 U219 ( .A(n122), .Y(n129) );
  INVX1 U220 ( .A(n148), .Y(n136) );
  NAND2X1 U221 ( .A(n130), .B(n150), .Y(n148) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n115), .Y(n150)
         );
  INVX1 U223 ( .A(n141), .Y(n130) );
  AOI21X1 U224 ( .A(N355), .B(n110), .C(n111), .Y(n153) );
  NAND2X1 U225 ( .A(n158), .B(n159), .Y(out[2]) );
  OAI21X1 U226 ( .A(n160), .B(n161), .C(float), .Y(n159) );
  OAI22X1 U227 ( .A(n99), .B(n162), .C(n163), .D(n152), .Y(n161) );
  OAI22X1 U228 ( .A(n164), .B(n141), .C(n165), .D(n122), .Y(n160) );
  NAND3X1 U229 ( .A(n162), .B(n166), .C(n167), .Y(n122) );
  NOR2X1 U230 ( .A(n131), .B(n168), .Y(n167) );
  AOI21X1 U231 ( .A(N354), .B(n110), .C(n111), .Y(n158) );
  OAI21X1 U232 ( .A(n169), .B(n100), .C(n170), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n110), .C(n111), .Y(n170) );
  INVX1 U234 ( .A(n103), .Y(n110) );
  AOI21X1 U235 ( .A(n157), .B(n166), .C(n171), .Y(n169) );
  OAI22X1 U236 ( .A(n99), .B(n163), .C(n165), .D(n141), .Y(n171) );
  NAND3X1 U237 ( .A(n162), .B(n168), .C(n99), .Y(n141) );
  INVX1 U238 ( .A(n168), .Y(n163) );
  OAI21X1 U239 ( .A(n172), .B(n173), .C(n174), .Y(n168) );
  AOI22X1 U240 ( .A(N548), .B(n175), .C(N553), .D(n176), .Y(n174) );
  INVX1 U241 ( .A(N542), .Y(n173) );
  OAI21X1 U242 ( .A(n103), .B(n40), .C(n177), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n178), .C(n111), .Y(n177) );
  INVX1 U244 ( .A(n101), .Y(n111) );
  OAI22X1 U245 ( .A(n99), .B(n164), .C(n165), .D(n152), .Y(n178) );
  INVX1 U246 ( .A(n157), .Y(n152) );
  NOR2X1 U247 ( .A(n131), .B(n162), .Y(n157) );
  AOI21X1 U248 ( .A(n179), .B(N543), .C(n180), .Y(n162) );
  INVX1 U249 ( .A(n181), .Y(n180) );
  AOI22X1 U250 ( .A(N549), .B(n175), .C(N554), .D(n176), .Y(n181) );
  AOI21X1 U251 ( .A(n179), .B(N540), .C(n182), .Y(n165) );
  INVX1 U252 ( .A(n183), .Y(n182) );
  AOI22X1 U253 ( .A(N546), .B(n175), .C(N551), .D(n176), .Y(n183) );
  INVX1 U254 ( .A(n166), .Y(n164) );
  OAI21X1 U255 ( .A(n172), .B(n184), .C(n185), .Y(n166) );
  AOI22X1 U256 ( .A(N547), .B(n175), .C(N552), .D(n176), .Y(n185) );
  INVX1 U257 ( .A(N541), .Y(n184) );
  INVX1 U258 ( .A(n131), .Y(n99) );
  OAI21X1 U259 ( .A(n172), .B(n186), .C(n187), .Y(n131) );
  AOI22X1 U260 ( .A(N550), .B(n175), .C(N555), .D(n176), .Y(n187) );
  NOR2X1 U261 ( .A(n107), .B(n179), .Y(n176) );
  INVX1 U262 ( .A(n172), .Y(n179) );
  AND2X1 U263 ( .A(n172), .B(n107), .Y(n175) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n188), .C(n189), .Y(n107) );
  OAI21X1 U265 ( .A(n86), .B(m_large[2]), .C(n190), .Y(n189) );
  AOI21X1 U266 ( .A(n188), .B(\sub_218/A[3] ), .C(n191), .Y(n190) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n192), .C(n193), .Y(n191) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n194), .C(n195), .Y(n193) );
  OAI22X1 U269 ( .A(n192), .B(m_large[1]), .C(n87), .D(m_large[0]), .Y(n195)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n192) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n188) );
  INVX1 U272 ( .A(N544), .Y(n186) );
  XOR2X1 U273 ( .A(n105), .B(n106), .Y(n172) );
  MUX2X1 U274 ( .B(n196), .A(n197), .S(n115), .Y(n106) );
  MUX2X1 U275 ( .B(n197), .A(n196), .S(n115), .Y(n105) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n197) );
  NAND2X1 U277 ( .A(n101), .B(n100), .Y(n103) );
  OAI21X1 U278 ( .A(n198), .B(n199), .C(n200), .Y(n101) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n200) );
  NAND2X1 U280 ( .A(n201), .B(n202), .Y(n199) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n202) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n201) );
  NAND2X1 U283 ( .A(n203), .B(n204), .Y(n198) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n204) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n203) );
  NAND2X1 U286 ( .A(n138), .B(n205), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n206), .B(n207), .C(n208), .D(n209), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n210), .B(n211), .Y(n209) );
  INVX1 U289 ( .A(n212), .Y(n211) );
  MUX2X1 U290 ( .B(n213), .A(n214), .S(N506), .Y(n210) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n214) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n213) );
  NAND3X1 U293 ( .A(n215), .B(n216), .C(n217), .Y(n208) );
  INVX1 U294 ( .A(N509), .Y(n216) );
  INVX1 U295 ( .A(N508), .Y(n215) );
  NAND2X1 U296 ( .A(n218), .B(n219), .Y(n207) );
  MUX2X1 U297 ( .B(n220), .A(n221), .S(N522), .Y(n218) );
  OAI21X1 U298 ( .A(N521), .B(n222), .C(n223), .Y(n221) );
  MUX2X1 U299 ( .B(n224), .A(n225), .S(N521), .Y(n220) );
  NAND3X1 U300 ( .A(n226), .B(n227), .C(n228), .Y(n206) );
  INVX1 U301 ( .A(N525), .Y(n227) );
  INVX1 U302 ( .A(N524), .Y(n226) );
  OAI21X1 U303 ( .A(n229), .B(n212), .C(n230), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n231), .B(n232), .C(n219), .Y(n230) );
  MUX2X1 U305 ( .B(n233), .A(n234), .S(N521), .Y(n232) );
  NAND2X1 U306 ( .A(n235), .B(n222), .Y(n234) );
  INVX1 U307 ( .A(n236), .Y(n235) );
  NAND3X1 U308 ( .A(n237), .B(n228), .C(n238), .Y(n233) );
  NOR2X1 U309 ( .A(n205), .B(n239), .Y(n238) );
  AND2X1 U310 ( .A(n225), .B(n240), .Y(n231) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n241), .C(n242), .Y(n229) );
  MUX2X1 U312 ( .B(n243), .A(n244), .S(N505), .Y(n242) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n245), .Y(n244) );
  NAND3X1 U314 ( .A(N506), .B(n217), .C(n246), .Y(n243) );
  OAI22X1 U315 ( .A(n247), .B(n212), .C(n248), .D(n249), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n250), .B(N521), .C(n240), .D(n222), .Y(n248) );
  NOR2X1 U317 ( .A(n205), .B(n236), .Y(n250) );
  AOI22X1 U318 ( .A(N505), .B(n245), .C(cumulative[2]), .D(n241), .Y(n247) );
  INVX1 U319 ( .A(n251), .Y(n245) );
  OAI21X1 U320 ( .A(n252), .B(n212), .C(n253), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n240), .B(n223), .C(n219), .Y(n253) );
  INVX1 U322 ( .A(n249), .Y(n219) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n254), .C(n115), .Y(n249) );
  NOR2X1 U324 ( .A(n255), .B(n256), .Y(n254) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n256) );
  NOR2X1 U326 ( .A(n236), .B(N521), .Y(n240) );
  NAND3X1 U327 ( .A(n239), .B(n228), .C(n237), .Y(n236) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n237) );
  INVX1 U329 ( .A(N523), .Y(n228) );
  INVX1 U330 ( .A(N522), .Y(n239) );
  NAND2X1 U331 ( .A(n257), .B(n138), .Y(n212) );
  OAI21X1 U332 ( .A(n147), .B(n258), .C(n259), .Y(n257) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n258) );
  INVX1 U334 ( .A(n241), .Y(n252) );
  NOR2X1 U335 ( .A(n251), .B(N505), .Y(n241) );
  NAND3X1 U336 ( .A(n260), .B(n217), .C(n246), .Y(n251) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n246) );
  INVX1 U338 ( .A(N507), .Y(n217) );
  INVX1 U339 ( .A(N506), .Y(n260) );
  INVX1 U340 ( .A(n261), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n261) );
  INVX1 U342 ( .A(n194), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n222), .A(cumulative[2]), .S(n115), .Y(n194) );
  OAI21X1 U344 ( .A(n262), .B(n263), .C(n264), .Y(n222) );
  OAI21X1 U345 ( .A(n265), .B(n266), .C(n223), .Y(n264) );
  OAI22X1 U346 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  OAI22X1 U347 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  INVX1 U348 ( .A(n275), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n225), .A(cumulative[1]), .S(n115), .Y(n275) );
  OAI21X1 U350 ( .A(n276), .B(n263), .C(n277), .Y(n225) );
  OAI21X1 U351 ( .A(n278), .B(n279), .C(n223), .Y(n277) );
  OAI22X1 U352 ( .A(n267), .B(n271), .C(n262), .D(n270), .Y(n279) );
  OAI22X1 U353 ( .A(n273), .B(n272), .C(n269), .D(n274), .Y(n278) );
  INVX1 U354 ( .A(n280), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n224), .A(cumulative[0]), .S(n115), .Y(n280) );
  NAND3X1 U356 ( .A(n281), .B(n282), .C(n283), .Y(n138) );
  AOI22X1 U357 ( .A(n284), .B(n285), .C(exponent_product[3]), .D(n259), .Y(
        n283) );
  OAI21X1 U358 ( .A(n286), .B(n146), .C(n287), .Y(n285) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n288), .C(n147), .Y(n287) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n147) );
  INVX1 U361 ( .A(n288), .Y(n286) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n255), .Y(n288) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n289), .C(n290), .Y(n284) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n282) );
  NAND3X1 U365 ( .A(n291), .B(n83), .C(\gte_183/A[2] ), .Y(n281) );
  INVX1 U366 ( .A(n290), .Y(n291) );
  NOR2X1 U367 ( .A(n259), .B(exponent_product[3]), .Y(n290) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n259) );
  OAI21X1 U369 ( .A(n292), .B(n263), .C(n293), .Y(n224) );
  OAI21X1 U370 ( .A(n294), .B(n295), .C(n223), .Y(n293) );
  INVX1 U371 ( .A(n205), .Y(n223) );
  OAI22X1 U372 ( .A(n267), .B(n273), .C(n276), .D(n270), .Y(n295) );
  INVX1 U373 ( .A(product[1]), .Y(n276) );
  OAI21X1 U374 ( .A(n100), .B(n43), .C(n296), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n51), .Y(n296) );
  INVX1 U376 ( .A(product[4]), .Y(n273) );
  OAI22X1 U377 ( .A(n269), .B(n272), .C(n262), .D(n274), .Y(n294) );
  INVX1 U378 ( .A(product[2]), .Y(n262) );
  OAI21X1 U379 ( .A(n100), .B(n41), .C(n297), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n51), .Y(n297) );
  INVX1 U381 ( .A(product[3]), .Y(n269) );
  OAI21X1 U382 ( .A(n100), .B(n298), .C(n299), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n51), .Y(n299) );
  INVX1 U384 ( .A(N346), .Y(n298) );
  INVX1 U385 ( .A(product[0]), .Y(n292) );
  OAI21X1 U386 ( .A(n100), .B(n300), .C(n301), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n51), .Y(n301) );
  INVX1 U388 ( .A(n289), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n302), .B(n303), .C(float), .Y(n289) );
  OAI21X1 U390 ( .A(n267), .B(n304), .C(n305), .Y(n303) );
  AOI22X1 U391 ( .A(N436), .B(n306), .C(N412), .D(n307), .Y(n305) );
  INVX1 U392 ( .A(N388), .Y(n304) );
  OAI21X1 U393 ( .A(n308), .B(N388), .C(n309), .Y(n302) );
  AOI21X1 U394 ( .A(n310), .B(N460), .C(n311), .Y(n309) );
  INVX1 U395 ( .A(n146), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n312), .B(n313), .C(float), .Y(n146) );
  OAI21X1 U397 ( .A(N435), .B(n267), .C(n314), .Y(n313) );
  AOI22X1 U398 ( .A(N435), .B(n306), .C(N411), .D(n307), .Y(n314) );
  OAI21X1 U399 ( .A(N435), .B(n308), .C(n315), .Y(n312) );
  AOI21X1 U400 ( .A(n310), .B(N459), .C(n311), .Y(n315) );
  INVX1 U401 ( .A(n316), .Y(n311) );
  NOR2X1 U402 ( .A(n317), .B(n270), .Y(n310) );
  OAI21X1 U403 ( .A(n318), .B(n205), .C(n319), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n320), .Y(n319) );
  INVX1 U405 ( .A(n263), .Y(n320) );
  NAND2X1 U406 ( .A(n321), .B(float), .Y(n263) );
  AND2X1 U407 ( .A(n322), .B(n323), .Y(n318) );
  AOI22X1 U408 ( .A(N438), .B(n306), .C(N414), .D(n307), .Y(n323) );
  AOI22X1 U409 ( .A(N462), .B(n324), .C(N390), .D(product[7]), .Y(n322) );
  OAI21X1 U410 ( .A(n325), .B(n205), .C(n326), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n327), .Y(n326) );
  OAI21X1 U412 ( .A(n308), .B(n39), .C(n328), .Y(n327) );
  OAI21X1 U413 ( .A(N461), .B(n317), .C(n324), .Y(n328) );
  NAND2X1 U414 ( .A(n329), .B(float), .Y(n205) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n330), .Y(n325) );
  INVX1 U416 ( .A(n331), .Y(n330) );
  AOI22X1 U417 ( .A(n48), .B(n306), .C(N413), .D(n307), .Y(n331) );
  INVX1 U418 ( .A(n255), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n332), .B(n333), .C(float), .Y(n255) );
  OAI21X1 U420 ( .A(n267), .B(n334), .C(n335), .Y(n333) );
  AOI22X1 U421 ( .A(N410), .B(n307), .C(N386), .D(n321), .Y(n335) );
  INVX1 U422 ( .A(n308), .Y(n321) );
  NAND3X1 U423 ( .A(n329), .B(n336), .C(n337), .Y(n308) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n337) );
  INVX1 U425 ( .A(n317), .Y(n329) );
  INVX1 U426 ( .A(N386), .Y(n334) );
  NAND3X1 U427 ( .A(n338), .B(n316), .C(n339), .Y(n332) );
  NAND2X1 U428 ( .A(N386), .B(n306), .Y(n339) );
  OAI21X1 U429 ( .A(n306), .B(n340), .C(n317), .Y(n316) );
  NAND2X1 U430 ( .A(n272), .B(n267), .Y(n340) );
  INVX1 U431 ( .A(product[7]), .Y(n267) );
  INVX1 U432 ( .A(n307), .Y(n272) );
  NOR2X1 U433 ( .A(n268), .B(product[7]), .Y(n307) );
  INVX1 U434 ( .A(product[6]), .Y(n268) );
  INVX1 U435 ( .A(n274), .Y(n306) );
  NAND2X1 U436 ( .A(n336), .B(product[5]), .Y(n274) );
  OAI21X1 U437 ( .A(N458), .B(n317), .C(n324), .Y(n338) );
  INVX1 U438 ( .A(n270), .Y(n324) );
  NAND3X1 U439 ( .A(product[4]), .B(n271), .C(n336), .Y(n270) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n336) );
  OAI21X1 U441 ( .A(n100), .B(n42), .C(n341), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n51), .Y(n341) );
  OAI21X1 U443 ( .A(n100), .B(n44), .C(n342), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n51), .Y(n342) );
  INVX1 U445 ( .A(product[5]), .Y(n271) );
  OAI21X1 U446 ( .A(n100), .B(n343), .C(n344), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n51), .Y(n344) );
  INVX1 U448 ( .A(N348), .Y(n343) );
  OAI21X1 U449 ( .A(n100), .B(n345), .C(n346), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n51), .Y(n346) );
  NAND2X1 U451 ( .A(n196), .B(n100), .Y(n88) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n196) );
  INVX1 U453 ( .A(N347), .Y(n345) );
  NAND2X1 U454 ( .A(n347), .B(n348), .Y(n317) );
  OAI21X1 U455 ( .A(n349), .B(n350), .C(n65), .Y(n348) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n350) );
  INVX1 U457 ( .A(value[5]), .Y(n349) );
  OAI21X1 U458 ( .A(n351), .B(n352), .C(n353), .Y(n347) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  INVX1 U461 ( .A(weight[5]), .Y(n351) );
  NOR2X1 U462 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U463 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U464 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U465 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U466 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U467 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U468 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U469 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U470 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U471 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U472 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U473 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U474 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U475 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U476 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U477 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U478 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U479 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U480 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U481 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U482 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U483 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U484 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U485 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U486 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U487 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U488 ( .A(N49), .Y(n362) );
  NOR2X1 U489 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U490 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U491 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U492 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U493 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U494 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U495 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U496 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U497 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U498 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U499 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U500 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U501 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U502 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U503 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U504 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U505 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U506 ( .A(n62), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U507 ( .A(value[2]), .Y(n374) );
  NOR2X1 U508 ( .A(n375), .B(n377), .Y(N319) );
  NOR2X1 U509 ( .A(n376), .B(n377), .Y(N318) );
  NOR2X1 U510 ( .A(n62), .B(n377), .Y(N317) );
  INVX1 U511 ( .A(value[1]), .Y(n377) );
  NOR2X1 U512 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U513 ( .A(N327), .Y(n375) );
  NOR2X1 U514 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U515 ( .A(N326), .Y(n376) );
  INVX1 U516 ( .A(N51), .Y(n378) );
  NAND2X1 U517 ( .A(N51), .B(N34), .Y(n300) );
  NOR2X1 U518 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U519 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U520 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U521 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U522 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U523 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U524 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U525 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U526 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U527 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U528 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U529 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U530 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U531 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U532 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U533 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U534 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U535 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U536 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U537 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U538 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U539 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U540 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U541 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U542 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U543 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U544 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U545 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U546 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U547 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U548 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U549 ( .A(n361), .B(n381), .Y(N172) );
  MUX2X1 U550 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U551 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U552 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U553 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U554 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U555 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U556 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U557 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U558 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U559 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U560 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U561 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U562 ( .A(n361), .B(n382), .Y(N122) );
  MUX2X1 U563 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U564 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U565 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U566 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U567 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U568 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U569 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U570 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U571 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U572 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U573 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U574 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U575 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U576 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U577 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U578 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U579 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U580 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U581 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U582 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U583 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U584 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U585 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U586 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U587 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U588 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U589 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U590 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U591 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U592 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U593 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U594 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U595 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U596 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U597 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U598 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U599 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_1_DW01_add_12_DW01_add_200 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n1), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(B[1]), .B(A[1]), .Y(n1) );
  XOR2X1 U2 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
endmodule


module signed_multiplier_1_DW01_add_11_DW01_add_199 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

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


module signed_multiplier_1_DW01_add_10_DW01_add_198 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_1_DW01_add_9_DW01_add_197 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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


module signed_multiplier_1_DW01_add_7_DW01_add_195 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
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
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(n1), .YC(carry[7]), .YS(SUM[6]) );
  AND2X2 U1 ( .A(B[5]), .B(A[5]), .Y(n1) );
  XOR2X1 U2 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
endmodule


module signed_multiplier_1_DW01_add_6_DW01_add_194 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module signed_multiplier_1 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N49, N51, N52, N53, N54, N55,
         N56, N57, N58, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70,
         N71, N72, N73, N74, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86,
         N87, N88, N89, N90, N91, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N104, N105, N106, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N133, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N158, N159, N160, N161,
         N162, N163, N164, N165, N166, N264, N265, N266, N267, N268, N269,
         N270, N271, N272, N273, N274, N275, N276, N277, N278, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N314, N315, N317, N318, N319, N322, N323, N326,
         N327, N346, N347, N348, N353, N354, N355, N356, N357, N358, N359,
         N360, N361, N362, N363, N364, N365, N366, N367, N386, N388, N389,
         N390, N410, N411, N412, N413, N414, N435, N436, N438, N458, N459,
         N460, N461, N462, N481, N540, N541, N542, N543, N544, N546, N547,
         N548, N549, N550, N551, N552, N553, N554, N555, N525, N524, N523,
         N522, N521, N509, N508, N507, N506, N505, N385, N384, N262, N261,
         N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, N250,
         N249, N248, N247, N246, N245, N244, N243, N242, N241, N240, N239,
         N238, N237, N236, N235, N234, N233, N232, N231, N230, N229, N228,
         N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217,
         N216, N215, N214, N213, N212, N211, N210, N209, N208, N207, N206,
         N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195,
         N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, N173,
         N172, N332, N331, N330, \gte_183/A[2] , \gte_183/A[1] ,
         \sub_218/carry[4] , \sub_218/carry[3] , \sub_218/carry[2] ,
         \sub_218/carry[1] , \sub_218/B[3] , \sub_218/A[0] , \sub_218/A[1] ,
         \sub_218/A[2] , \sub_218/A[3] , \sub_216/carry[4] ,
         \sub_216/carry[3] , \sub_216/carry[2] , \sub_216/carry[1] ,
         \add_213/carry[3] , \add_213/carry[2] , \add_106/carry[15] ,
         \add_106/carry[14] , \add_106/carry[13] , \add_106/carry[12] ,
         \add_106/carry[11] , \add_106/carry[10] , \add_106/carry[9] ,
         \add_106/carry[8] , \add_106/carry[7] , \add_106/carry[6] ,
         \add_106/carry[5] , \add_106/carry[4] , \add_106/carry[3] ,
         \add_106/carry[2] , \sub_197/carry[4] , \sub_197/carry[3] ,
         \sub_197/carry[2] , \sub_197/carry[1] , \sub_185/carry[4] ,
         \sub_185/carry[3] , \sub_185/carry[2] , \sub_185/carry[1] ,
         \sub_0_root_sub_161/carry[3] , \sub_0_root_sub_150/carry[2] ,
         \sub_0_root_sub_150/carry[3] , \sub_0_root_sub_128/carry[4] ,
         \sub_0_root_sub_117/carry[4] , \r601/carry[3] , \r601/carry[2] ,
         \add_0_root_add_0_root_add_98_3/carry[4] ,
         \add_0_root_add_0_root_add_98_3/carry[5] ,
         \add_0_root_add_0_root_add_98_3/carry[6] ,
         \add_0_root_add_0_root_add_98_3/A[2] ,
         \add_0_root_add_0_root_add_98_3/A[3] ,
         \add_0_root_add_0_root_add_98_3/A[4] ,
         \add_0_root_add_0_root_add_98_3/A[5] ,
         \add_0_root_add_0_root_add_98_3/A[6] ,
         \add_0_root_add_0_root_add_98_3/A[7] , \add_2_root_add_98_3/carry[4] ,
         \add_2_root_add_98_3/carry[3] ,
         \add_1_root_add_0_root_add_98_3/carry[5] ,
         \add_2_root_add_0_root_add_76_7/carry[15] ,
         \add_2_root_add_0_root_add_76_7/carry[14] ,
         \add_2_root_add_0_root_add_76_7/carry[13] ,
         \add_2_root_add_0_root_add_76_7/carry[12] ,
         \add_2_root_add_0_root_add_76_7/carry[11] ,
         \add_2_root_add_0_root_add_76_7/carry[10] ,
         \add_2_root_add_0_root_add_76_7/carry[9] ,
         \add_2_root_add_0_root_add_76_7/carry[8] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
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
         n380, n381, n382, n383, n384;
  wire   [15:0] product;
  wire   [4:0] exponent_product;
  wire   [3:0] m_large;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_1_DW01_add_12_DW01_add_200 add_6_root_add_0_root_add_76_7 ( 
        .A({n384, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62, N61, N60}), .B({N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, 
        N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({N230, N229, N228, 
        N227, N226, N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, 
        N215}) );
  signed_multiplier_1_DW01_add_11_DW01_add_199 add_5_root_add_0_root_add_76_7 ( 
        .A({N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({N214, N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, 
        N203, N202, N201, N200, N199}) );
  signed_multiplier_1_DW01_add_10_DW01_add_198 add_4_root_add_0_root_add_76_7 ( 
        .A({N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({N262, N261, N260, N259, N258, N257, N256, N255, N254, N253, N252, N251, 
        N250, N249, N248, N247}) );
  signed_multiplier_1_DW01_add_9_DW01_add_197 add_3_root_add_0_root_add_76_7 ( 
        .A({N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N262, N261, N260, N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, 
        N186, N185, N184, N183}) );
  signed_multiplier_1_DW01_add_7_DW01_add_195 add_1_root_add_0_root_add_76_7 ( 
        .A({N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_1_DW01_add_6_DW01_add_194 add_0_root_add_0_root_add_76_7 ( 
        .A({N166, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n275), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n194), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n188), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(m_large[1]), .B(n192), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(m_large[2]), .B(n86), .C(\sub_216/carry[2] ), .YC(
        \sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n85), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_1  ( .A(m_large[1]), .B(\sub_218/A[1] ), .C(n13), .YC(
        \add_213/carry[2] ), .YS(N541) );
  FAX1 \add_213/U1_2  ( .A(m_large[2]), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \add_106/U1_1  ( .A(product[1]), .B(cumulative[1]), .C(n17), .YC(
        \add_106/carry[2] ), .YS(N353) );
  FAX1 \add_106/U1_2  ( .A(product[2]), .B(cumulative[2]), .C(
        \add_106/carry[2] ), .YC(\add_106/carry[3] ), .YS(N354) );
  FAX1 \add_106/U1_3  ( .A(product[3]), .B(cumulative[3]), .C(
        \add_106/carry[3] ), .YC(\add_106/carry[4] ), .YS(N355) );
  FAX1 \add_106/U1_4  ( .A(product[4]), .B(cumulative[4]), .C(
        \add_106/carry[4] ), .YC(\add_106/carry[5] ), .YS(N356) );
  FAX1 \add_106/U1_5  ( .A(product[5]), .B(cumulative[5]), .C(
        \add_106/carry[5] ), .YC(\add_106/carry[6] ), .YS(N357) );
  FAX1 \add_106/U1_6  ( .A(product[6]), .B(cumulative[6]), .C(
        \add_106/carry[6] ), .YC(\add_106/carry[7] ), .YS(N358) );
  FAX1 \add_106/U1_7  ( .A(product[7]), .B(cumulative[7]), .C(
        \add_106/carry[7] ), .YC(\add_106/carry[8] ), .YS(N359) );
  FAX1 \add_106/U1_8  ( .A(product[8]), .B(cumulative[7]), .C(
        \add_106/carry[8] ), .YC(\add_106/carry[9] ), .YS(N360) );
  FAX1 \add_106/U1_9  ( .A(product[9]), .B(cumulative[7]), .C(
        \add_106/carry[9] ), .YC(\add_106/carry[10] ), .YS(N361) );
  FAX1 \add_106/U1_10  ( .A(product[10]), .B(cumulative[7]), .C(
        \add_106/carry[10] ), .YC(\add_106/carry[11] ), .YS(N362) );
  FAX1 \add_106/U1_11  ( .A(product[11]), .B(cumulative[7]), .C(
        \add_106/carry[11] ), .YC(\add_106/carry[12] ), .YS(N363) );
  FAX1 \add_106/U1_12  ( .A(product[12]), .B(cumulative[7]), .C(
        \add_106/carry[12] ), .YC(\add_106/carry[13] ), .YS(N364) );
  FAX1 \add_106/U1_13  ( .A(product[13]), .B(cumulative[7]), .C(
        \add_106/carry[13] ), .YC(\add_106/carry[14] ), .YS(N365) );
  FAX1 \add_106/U1_14  ( .A(product[14]), .B(cumulative[7]), .C(
        \add_106/carry[14] ), .YC(\add_106/carry[15] ), .YS(N366) );
  FAX1 \add_106/U1_15  ( .A(product[15]), .B(cumulative[7]), .C(
        \add_106/carry[15] ), .YS(N367) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n146), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n289), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n84), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n147), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n83), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n259), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n22), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_3  ( .A(
        \add_0_root_add_0_root_add_98_3/A[3] ), .B(N331), .C(n15), .YC(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YS(N346) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_4  ( .A(
        \add_0_root_add_0_root_add_98_3/A[4] ), .B(N332), .C(
        \add_0_root_add_0_root_add_98_3/carry[4] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YS(N347) );
  FAX1 \add_0_root_add_0_root_add_98_3/U1_5  ( .A(
        \add_0_root_add_0_root_add_98_3/A[5] ), .B(n11), .C(
        \add_0_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/carry[6] ), .YS(N348) );
  FAX1 \add_2_root_add_98_3/U1_2  ( .A(N315), .B(N318), .C(n16), .YC(
        \add_2_root_add_98_3/carry[3] ), .YS(N330) );
  FAX1 \add_2_root_add_98_3/U1_3  ( .A(N51), .B(N319), .C(
        \add_2_root_add_98_3/carry[3] ), .YC(\add_2_root_add_98_3/carry[4] ), 
        .YS(N331) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_4  ( .A(N323), .B(N326), .C(n18), 
        .YC(\add_1_root_add_0_root_add_98_3/carry[5] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[4] ) );
  FAX1 \add_1_root_add_0_root_add_98_3/U1_5  ( .A(value[2]), .B(N327), .C(
        \add_1_root_add_0_root_add_98_3/carry[5] ), .YC(
        \add_0_root_add_0_root_add_98_3/A[7] ), .YS(
        \add_0_root_add_0_root_add_98_3/A[5] ) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_7  ( .A(N137), .B(N148), .C(n14), 
        .YC(\add_2_root_add_0_root_add_76_7/carry[8] ), .YS(N174) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_8  ( .A(N138), .B(N149), .C(
        \add_2_root_add_0_root_add_76_7/carry[8] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YS(N175) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_9  ( .A(N139), .B(N150), .C(
        \add_2_root_add_0_root_add_76_7/carry[9] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YS(N176) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_10  ( .A(N140), .B(N151), .C(
        \add_2_root_add_0_root_add_76_7/carry[10] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YS(N177) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_11  ( .A(N141), .B(N152), .C(
        \add_2_root_add_0_root_add_76_7/carry[11] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YS(N178) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_12  ( .A(N142), .B(N153), .C(
        \add_2_root_add_0_root_add_76_7/carry[12] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YS(N179) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_13  ( .A(N143), .B(N154), .C(
        \add_2_root_add_0_root_add_76_7/carry[13] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YS(N180) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_14  ( .A(N144), .B(N155), .C(
        \add_2_root_add_0_root_add_76_7/carry[14] ), .YC(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N181) );
  FAX1 \add_2_root_add_0_root_add_76_7/U1_15  ( .A(N145), .B(N156), .C(
        \add_2_root_add_0_root_add_76_7/carry[15] ), .YS(N182) );
  AND2X2 U3 ( .A(n378), .B(n377), .Y(n1) );
  AND2X2 U4 ( .A(n7), .B(n349), .Y(n2) );
  AND2X2 U5 ( .A(n12), .B(N436), .Y(n3) );
  AND2X2 U6 ( .A(n37), .B(n56), .Y(n4) );
  AND2X2 U7 ( .A(n1), .B(n374), .Y(n5) );
  AND2X2 U8 ( .A(n38), .B(n58), .Y(n6) );
  AND2X2 U9 ( .A(n36), .B(n64), .Y(n7) );
  AND2X2 U10 ( .A(n46), .B(n60), .Y(n8) );
  AND2X2 U11 ( .A(n35), .B(n81), .Y(n9) );
  AND2X2 U12 ( .A(N435), .B(N436), .Y(n10) );
  AND2X2 U13 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(n11) );
  AND2X2 U14 ( .A(N386), .B(N435), .Y(n12) );
  AND2X2 U15 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(n13) );
  AND2X2 U16 ( .A(N147), .B(N136), .Y(n14) );
  AND2X2 U17 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n15) );
  AND2X2 U18 ( .A(N317), .B(N314), .Y(n16) );
  AND2X2 U19 ( .A(cumulative[0]), .B(product[0]), .Y(n17) );
  AND2X2 U20 ( .A(N34), .B(N322), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n19) );
  AND2X2 U22 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(n20) );
  AND2X2 U23 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n21) );
  AND2X2 U24 ( .A(value[3]), .B(weight[3]), .Y(n22) );
  AND2X2 U25 ( .A(n67), .B(n68), .Y(n23) );
  AND2X2 U26 ( .A(n23), .B(n69), .Y(n24) );
  AND2X2 U27 ( .A(n24), .B(n70), .Y(n25) );
  AND2X2 U28 ( .A(n25), .B(n71), .Y(n26) );
  AND2X2 U29 ( .A(n26), .B(n72), .Y(n27) );
  AND2X2 U30 ( .A(n27), .B(n73), .Y(n28) );
  AND2X2 U31 ( .A(n28), .B(n74), .Y(n29) );
  AND2X2 U32 ( .A(n29), .B(n75), .Y(n30) );
  AND2X2 U33 ( .A(n30), .B(n76), .Y(n31) );
  AND2X2 U34 ( .A(n31), .B(n77), .Y(n32) );
  AND2X2 U35 ( .A(n32), .B(n78), .Y(n33) );
  AND2X2 U36 ( .A(n33), .B(n79), .Y(n34) );
  AND2X2 U37 ( .A(n34), .B(n80), .Y(n35) );
  AND2X2 U38 ( .A(n5), .B(n63), .Y(n36) );
  AND2X2 U39 ( .A(n6), .B(n57), .Y(n37) );
  AND2X2 U40 ( .A(n8), .B(n59), .Y(n38) );
  XNOR2X1 U41 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n49), .Y(n39) );
  XNOR2X1 U42 ( .A(cumulative[0]), .B(product[0]), .Y(n40) );
  XNOR2X1 U43 ( .A(N330), .B(\add_0_root_add_0_root_add_98_3/A[2] ), .Y(n41)
         );
  XNOR2X1 U44 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n42) );
  XNOR2X1 U45 ( .A(N317), .B(N314), .Y(n43) );
  XNOR2X1 U46 ( .A(\add_0_root_add_0_root_add_98_3/carry[6] ), .B(
        \add_0_root_add_0_root_add_98_3/A[6] ), .Y(n44) );
  AND2X2 U47 ( .A(n2), .B(n65), .Y(n45) );
  AND2X2 U48 ( .A(n62), .B(n61), .Y(n46) );
  AND2X2 U49 ( .A(n21), .B(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(n47) );
  INVX1 U50 ( .A(N384), .Y(n48) );
  INVX2 U51 ( .A(n48), .Y(n49) );
  INVX2 U52 ( .A(n138), .Y(n115) );
  INVX2 U53 ( .A(n50), .Y(n52) );
  INVX2 U54 ( .A(n50), .Y(n53) );
  INVX2 U55 ( .A(n88), .Y(n51) );
  OR2X1 U56 ( .A(n196), .B(float), .Y(n50) );
  INVX2 U57 ( .A(n364), .Y(n54) );
  INVX2 U58 ( .A(n373), .Y(n55) );
  OR2X1 U59 ( .A(\sub_218/A[0] ), .B(n280), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U60 ( .A(n280), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U61 ( .A(m_large[0]), .B(n87), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U62 ( .A(n87), .B(m_large[0]), .Y(N546) );
  OR2X1 U63 ( .A(cumulative[3]), .B(n255), .Y(\sub_197/carry[1] ) );
  XNOR2X1 U64 ( .A(n255), .B(cumulative[3]), .Y(N521) );
  XNOR2X1 U65 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U66 ( .A(exponent_product[0]), .B(n82), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U67 ( .A(n82), .B(exponent_product[0]), .Y(N505) );
  OR2X1 U68 ( .A(N436), .B(N435), .Y(\sub_0_root_sub_161/carry[3] ) );
  XNOR2X1 U69 ( .A(N385), .B(n19), .Y(N481) );
  OR2X1 U70 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U71 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U72 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U73 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U74 ( .A(N385), .B(n20), .Y(N462) );
  XNOR2X1 U75 ( .A(N385), .B(n49), .Y(N438) );
  OR2X1 U76 ( .A(n49), .B(n3), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U77 ( .A(n3), .B(n49), .Y(N413) );
  XNOR2X1 U78 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U79 ( .A(n49), .B(n10), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U80 ( .A(n10), .B(n49), .Y(N389) );
  XNOR2X1 U81 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U82 ( .A(\sub_218/A[0] ), .B(m_large[0]), .Y(N540) );
  XOR2X1 U83 ( .A(n282), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U84 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n49), .Y(N461) );
  XOR2X1 U85 ( .A(N386), .B(N435), .Y(N411) );
  XOR2X1 U86 ( .A(n12), .B(N436), .Y(N412) );
  XOR2X1 U87 ( .A(N435), .B(N436), .Y(N388) );
  XOR2X1 U88 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U89 ( .A(n67), .B(n68), .Y(N281) );
  XOR2X1 U90 ( .A(n23), .B(n69), .Y(N282) );
  XOR2X1 U91 ( .A(n24), .B(n70), .Y(N283) );
  XOR2X1 U92 ( .A(n25), .B(n71), .Y(N284) );
  XOR2X1 U93 ( .A(n26), .B(n72), .Y(N285) );
  XOR2X1 U94 ( .A(n27), .B(n73), .Y(N286) );
  XOR2X1 U95 ( .A(n28), .B(n74), .Y(N287) );
  XOR2X1 U96 ( .A(n29), .B(n75), .Y(N288) );
  XOR2X1 U97 ( .A(n30), .B(n76), .Y(N289) );
  XOR2X1 U98 ( .A(n31), .B(n77), .Y(N290) );
  XOR2X1 U99 ( .A(n32), .B(n78), .Y(N291) );
  XOR2X1 U100 ( .A(n33), .B(n79), .Y(N292) );
  XOR2X1 U101 ( .A(n34), .B(n80), .Y(N293) );
  XOR2X1 U102 ( .A(n35), .B(n81), .Y(N294) );
  XOR2X1 U103 ( .A(n92), .B(n9), .Y(N295) );
  XOR2X1 U104 ( .A(n378), .B(n377), .Y(N52) );
  XOR2X1 U105 ( .A(n1), .B(n374), .Y(N53) );
  XOR2X1 U106 ( .A(n5), .B(n63), .Y(N54) );
  XOR2X1 U107 ( .A(n36), .B(n64), .Y(N55) );
  XOR2X1 U108 ( .A(n7), .B(n349), .Y(N56) );
  XOR2X1 U109 ( .A(n2), .B(n65), .Y(N57) );
  XOR2X1 U110 ( .A(n66), .B(n45), .Y(N58) );
  XOR2X1 U111 ( .A(n62), .B(n61), .Y(N35) );
  XOR2X1 U112 ( .A(n46), .B(n60), .Y(N36) );
  XOR2X1 U113 ( .A(n8), .B(n59), .Y(N37) );
  XOR2X1 U114 ( .A(n38), .B(n58), .Y(N38) );
  XOR2X1 U115 ( .A(n6), .B(n57), .Y(N39) );
  XOR2X1 U116 ( .A(n37), .B(n56), .Y(N40) );
  XOR2X1 U117 ( .A(\add_2_root_add_98_3/carry[4] ), .B(value[1]), .Y(N332) );
  XOR2X1 U118 ( .A(N34), .B(N322), .Y(\add_0_root_add_0_root_add_98_3/A[3] )
         );
  XOR2X1 U119 ( .A(N147), .B(N136), .Y(N173) );
  INVX2 U120 ( .A(float), .Y(n100) );
  INVX2 U121 ( .A(\add_0_root_add_0_root_add_98_3/A[7] ), .Y(
        \add_0_root_add_0_root_add_98_3/A[6] ) );
  INVX2 U122 ( .A(weight[6]), .Y(n56) );
  INVX2 U123 ( .A(weight[5]), .Y(n57) );
  INVX2 U124 ( .A(weight[4]), .Y(n58) );
  INVX2 U125 ( .A(weight[3]), .Y(n59) );
  INVX2 U126 ( .A(N327), .Y(n60) );
  INVX2 U127 ( .A(N326), .Y(n61) );
  INVX2 U128 ( .A(N34), .Y(n62) );
  NOR2X1 U129 ( .A(n4), .B(weight[7]), .Y(N49) );
  XNOR2X1 U130 ( .A(weight[7]), .B(n4), .Y(N41) );
  INVX2 U131 ( .A(value[3]), .Y(n63) );
  INVX2 U132 ( .A(value[4]), .Y(n64) );
  INVX2 U133 ( .A(value[6]), .Y(n65) );
  INVX2 U134 ( .A(value[7]), .Y(n66) );
  INVX2 U135 ( .A(N280), .Y(n67) );
  INVX2 U136 ( .A(N264), .Y(n68) );
  INVX2 U137 ( .A(N265), .Y(n69) );
  INVX2 U138 ( .A(N266), .Y(n70) );
  INVX2 U139 ( .A(N267), .Y(n71) );
  INVX2 U140 ( .A(N268), .Y(n72) );
  INVX2 U141 ( .A(N269), .Y(n73) );
  INVX2 U142 ( .A(N270), .Y(n74) );
  INVX2 U143 ( .A(N271), .Y(n75) );
  INVX2 U144 ( .A(N272), .Y(n76) );
  INVX2 U145 ( .A(N273), .Y(n77) );
  INVX2 U146 ( .A(N274), .Y(n78) );
  INVX2 U147 ( .A(N275), .Y(n79) );
  INVX2 U148 ( .A(N276), .Y(n80) );
  INVX2 U149 ( .A(N277), .Y(n81) );
  INVX2 U150 ( .A(N386), .Y(N410) );
  INVX2 U151 ( .A(N386), .Y(N458) );
  INVX2 U152 ( .A(cumulative[3]), .Y(n82) );
  INVX2 U153 ( .A(cumulative[5]), .Y(n83) );
  INVX2 U154 ( .A(exponent_product[3]), .Y(n84) );
  INVX2 U155 ( .A(\sub_218/A[3] ), .Y(n85) );
  INVX2 U156 ( .A(\sub_218/A[2] ), .Y(n86) );
  INVX2 U157 ( .A(\sub_218/A[0] ), .Y(n87) );
  INVX2 U158 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U159 ( .A(\sub_218/carry[4] ), .Y(N555) );
  OAI21X1 U160 ( .A(n88), .B(n76), .C(n89), .Y(product[9]) );
  AOI21X1 U161 ( .A(N289), .B(n52), .C(n90), .Y(n89) );
  OAI21X1 U162 ( .A(n88), .B(n75), .C(n91), .Y(product[8]) );
  AOI21X1 U163 ( .A(N288), .B(n52), .C(n90), .Y(n91) );
  OAI21X1 U164 ( .A(n88), .B(n92), .C(n93), .Y(product[15]) );
  AOI21X1 U165 ( .A(N295), .B(n52), .C(n90), .Y(n93) );
  INVX1 U166 ( .A(N278), .Y(n92) );
  OAI21X1 U167 ( .A(n88), .B(n81), .C(n94), .Y(product[14]) );
  AOI21X1 U168 ( .A(N294), .B(n52), .C(n90), .Y(n94) );
  OAI21X1 U169 ( .A(n88), .B(n80), .C(n95), .Y(product[13]) );
  AOI21X1 U170 ( .A(N293), .B(n52), .C(n90), .Y(n95) );
  OAI21X1 U171 ( .A(n88), .B(n79), .C(n96), .Y(product[12]) );
  AOI21X1 U172 ( .A(N292), .B(n52), .C(n90), .Y(n96) );
  OAI21X1 U173 ( .A(n88), .B(n78), .C(n97), .Y(product[11]) );
  AOI21X1 U174 ( .A(N291), .B(n52), .C(n90), .Y(n97) );
  OAI21X1 U175 ( .A(n88), .B(n77), .C(n98), .Y(product[10]) );
  AOI21X1 U176 ( .A(N290), .B(n52), .C(n90), .Y(n98) );
  AND2X1 U177 ( .A(float), .B(n47), .Y(n90) );
  OAI21X1 U178 ( .A(n99), .B(n100), .C(n101), .Y(overflow) );
  OAI22X1 U179 ( .A(n102), .B(n100), .C(n103), .D(n104), .Y(out[7]) );
  INVX1 U180 ( .A(N359), .Y(n104) );
  MUX2X1 U181 ( .B(n105), .A(n106), .S(n107), .Y(n102) );
  OAI21X1 U182 ( .A(n100), .B(n108), .C(n109), .Y(out[6]) );
  AOI21X1 U183 ( .A(N358), .B(n110), .C(n111), .Y(n109) );
  MUX2X1 U184 ( .B(n112), .A(n113), .S(n114), .Y(n108) );
  MUX2X1 U185 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n115), .Y(n114)
         );
  NAND2X1 U186 ( .A(n116), .B(n117), .Y(n113) );
  MUX2X1 U187 ( .B(n118), .A(n119), .S(n120), .Y(n116) );
  NOR2X1 U188 ( .A(n121), .B(n122), .Y(n119) );
  NOR2X1 U189 ( .A(n123), .B(n124), .Y(n118) );
  NAND3X1 U190 ( .A(n125), .B(n126), .C(n127), .Y(n112) );
  OAI21X1 U191 ( .A(n128), .B(n121), .C(n129), .Y(n126) );
  MUX2X1 U192 ( .B(n130), .A(n131), .S(n123), .Y(n125) );
  NAND2X1 U193 ( .A(n132), .B(n133), .Y(out[5]) );
  OAI21X1 U194 ( .A(n134), .B(n135), .C(float), .Y(n133) );
  OAI21X1 U195 ( .A(n121), .B(n122), .C(n117), .Y(n135) );
  NAND3X1 U196 ( .A(n120), .B(n123), .C(n136), .Y(n117) );
  XOR2X1 U197 ( .A(n120), .B(n123), .Y(n121) );
  MUX2X1 U198 ( .B(n127), .A(n137), .S(n123), .Y(n134) );
  MUX2X1 U199 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n138), .Y(n123) );
  OR2X1 U200 ( .A(n124), .B(n120), .Y(n137) );
  NOR2X1 U201 ( .A(n139), .B(n140), .Y(n127) );
  MUX2X1 U202 ( .B(n99), .A(n141), .S(n128), .Y(n139) );
  AOI21X1 U203 ( .A(N357), .B(n110), .C(n111), .Y(n132) );
  INVX1 U204 ( .A(n142), .Y(out[4]) );
  AOI21X1 U205 ( .A(N356), .B(n110), .C(n143), .Y(n142) );
  OAI21X1 U206 ( .A(n100), .B(n144), .C(n101), .Y(n143) );
  MUX2X1 U207 ( .B(n140), .A(n145), .S(n120), .Y(n144) );
  INVX1 U208 ( .A(n128), .Y(n120) );
  MUX2X1 U209 ( .B(n146), .A(n147), .S(n115), .Y(n128) );
  NAND3X1 U210 ( .A(n148), .B(n124), .C(n122), .Y(n145) );
  NAND2X1 U211 ( .A(n149), .B(n131), .Y(n124) );
  INVX1 U212 ( .A(n150), .Y(n149) );
  NAND2X1 U213 ( .A(n151), .B(n152), .Y(n140) );
  MUX2X1 U214 ( .B(n130), .A(n131), .S(n150), .Y(n151) );
  NAND2X1 U215 ( .A(n153), .B(n154), .Y(out[3]) );
  OAI21X1 U216 ( .A(n136), .B(n155), .C(float), .Y(n154) );
  MUX2X1 U217 ( .B(n156), .A(n99), .S(n150), .Y(n155) );
  NOR2X1 U218 ( .A(n129), .B(n157), .Y(n156) );
  INVX1 U219 ( .A(n122), .Y(n129) );
  INVX1 U220 ( .A(n148), .Y(n136) );
  NAND2X1 U221 ( .A(n130), .B(n150), .Y(n148) );
  MUX2X1 U222 ( .B(exponent_product[0]), .A(cumulative[3]), .S(n115), .Y(n150)
         );
  INVX1 U223 ( .A(n141), .Y(n130) );
  AOI21X1 U224 ( .A(N355), .B(n110), .C(n111), .Y(n153) );
  NAND2X1 U225 ( .A(n158), .B(n159), .Y(out[2]) );
  OAI21X1 U226 ( .A(n160), .B(n161), .C(float), .Y(n159) );
  OAI22X1 U227 ( .A(n99), .B(n162), .C(n163), .D(n152), .Y(n161) );
  OAI22X1 U228 ( .A(n164), .B(n141), .C(n165), .D(n122), .Y(n160) );
  NAND3X1 U229 ( .A(n162), .B(n166), .C(n167), .Y(n122) );
  NOR2X1 U230 ( .A(n131), .B(n168), .Y(n167) );
  AOI21X1 U231 ( .A(N354), .B(n110), .C(n111), .Y(n158) );
  OAI21X1 U232 ( .A(n169), .B(n100), .C(n170), .Y(out[1]) );
  AOI21X1 U233 ( .A(N353), .B(n110), .C(n111), .Y(n170) );
  INVX1 U234 ( .A(n103), .Y(n110) );
  AOI21X1 U235 ( .A(n157), .B(n166), .C(n171), .Y(n169) );
  OAI22X1 U236 ( .A(n99), .B(n163), .C(n165), .D(n141), .Y(n171) );
  NAND3X1 U237 ( .A(n162), .B(n168), .C(n99), .Y(n141) );
  INVX1 U238 ( .A(n168), .Y(n163) );
  OAI21X1 U239 ( .A(n172), .B(n173), .C(n174), .Y(n168) );
  AOI22X1 U240 ( .A(N548), .B(n175), .C(N553), .D(n176), .Y(n174) );
  INVX1 U241 ( .A(N542), .Y(n173) );
  OAI21X1 U242 ( .A(n103), .B(n40), .C(n177), .Y(out[0]) );
  AOI21X1 U243 ( .A(float), .B(n178), .C(n111), .Y(n177) );
  INVX1 U244 ( .A(n101), .Y(n111) );
  OAI22X1 U245 ( .A(n99), .B(n164), .C(n165), .D(n152), .Y(n178) );
  INVX1 U246 ( .A(n157), .Y(n152) );
  NOR2X1 U247 ( .A(n131), .B(n162), .Y(n157) );
  AOI21X1 U248 ( .A(n179), .B(N543), .C(n180), .Y(n162) );
  INVX1 U249 ( .A(n181), .Y(n180) );
  AOI22X1 U250 ( .A(N549), .B(n175), .C(N554), .D(n176), .Y(n181) );
  AOI21X1 U251 ( .A(n179), .B(N540), .C(n182), .Y(n165) );
  INVX1 U252 ( .A(n183), .Y(n182) );
  AOI22X1 U253 ( .A(N546), .B(n175), .C(N551), .D(n176), .Y(n183) );
  INVX1 U254 ( .A(n166), .Y(n164) );
  OAI21X1 U255 ( .A(n172), .B(n184), .C(n185), .Y(n166) );
  AOI22X1 U256 ( .A(N547), .B(n175), .C(N552), .D(n176), .Y(n185) );
  INVX1 U257 ( .A(N541), .Y(n184) );
  INVX1 U258 ( .A(n131), .Y(n99) );
  OAI21X1 U259 ( .A(n172), .B(n186), .C(n187), .Y(n131) );
  AOI22X1 U260 ( .A(N550), .B(n175), .C(N555), .D(n176), .Y(n187) );
  NOR2X1 U261 ( .A(n107), .B(n179), .Y(n176) );
  INVX1 U262 ( .A(n172), .Y(n179) );
  AND2X1 U263 ( .A(n172), .B(n107), .Y(n175) );
  OAI21X1 U264 ( .A(\sub_218/A[3] ), .B(n188), .C(n189), .Y(n107) );
  OAI21X1 U265 ( .A(n86), .B(m_large[2]), .C(n190), .Y(n189) );
  AOI21X1 U266 ( .A(n188), .B(\sub_218/A[3] ), .C(n191), .Y(n190) );
  AOI21X1 U267 ( .A(m_large[1]), .B(n192), .C(n193), .Y(n191) );
  OAI21X1 U268 ( .A(\sub_218/A[2] ), .B(n194), .C(n195), .Y(n193) );
  OAI22X1 U269 ( .A(n192), .B(m_large[1]), .C(n87), .D(m_large[0]), .Y(n195)
         );
  INVX1 U270 ( .A(\sub_218/A[1] ), .Y(n192) );
  INVX1 U271 ( .A(\sub_218/B[3] ), .Y(n188) );
  INVX1 U272 ( .A(N544), .Y(n186) );
  XOR2X1 U273 ( .A(n105), .B(n106), .Y(n172) );
  MUX2X1 U274 ( .B(n196), .A(n197), .S(n115), .Y(n106) );
  MUX2X1 U275 ( .B(n197), .A(n196), .S(n115), .Y(n105) );
  INVX1 U276 ( .A(cumulative[7]), .Y(n197) );
  NAND2X1 U277 ( .A(n101), .B(n100), .Y(n103) );
  OAI21X1 U278 ( .A(n198), .B(n199), .C(n200), .Y(n101) );
  NOR2X1 U279 ( .A(float), .B(N367), .Y(n200) );
  NAND2X1 U280 ( .A(n201), .B(n202), .Y(n199) );
  NOR2X1 U281 ( .A(N362), .B(N361), .Y(n202) );
  NOR2X1 U282 ( .A(N360), .B(N359), .Y(n201) );
  NAND2X1 U283 ( .A(n203), .B(n204), .Y(n198) );
  NOR2X1 U284 ( .A(N366), .B(N365), .Y(n204) );
  NOR2X1 U285 ( .A(N364), .B(N363), .Y(n203) );
  NAND2X1 U286 ( .A(n138), .B(n205), .Y(\sub_218/B[3] ) );
  OAI22X1 U287 ( .A(n206), .B(n207), .C(n208), .D(n209), .Y(\sub_218/A[0] ) );
  NAND2X1 U288 ( .A(n210), .B(n211), .Y(n209) );
  INVX1 U289 ( .A(n212), .Y(n211) );
  MUX2X1 U290 ( .B(n213), .A(n214), .S(N506), .Y(n210) );
  NOR2X1 U291 ( .A(cumulative[2]), .B(N505), .Y(n214) );
  MUX2X1 U292 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n213) );
  NAND3X1 U293 ( .A(n215), .B(n216), .C(n217), .Y(n208) );
  INVX1 U294 ( .A(N509), .Y(n216) );
  INVX1 U295 ( .A(N508), .Y(n215) );
  NAND2X1 U296 ( .A(n218), .B(n219), .Y(n207) );
  MUX2X1 U297 ( .B(n220), .A(n221), .S(N522), .Y(n218) );
  OAI21X1 U298 ( .A(N521), .B(n222), .C(n223), .Y(n221) );
  MUX2X1 U299 ( .B(n224), .A(n225), .S(N521), .Y(n220) );
  NAND3X1 U300 ( .A(n226), .B(n227), .C(n228), .Y(n206) );
  INVX1 U301 ( .A(N525), .Y(n227) );
  INVX1 U302 ( .A(N524), .Y(n226) );
  OAI21X1 U303 ( .A(n229), .B(n212), .C(n230), .Y(\sub_218/A[1] ) );
  OAI21X1 U304 ( .A(n231), .B(n232), .C(n219), .Y(n230) );
  MUX2X1 U305 ( .B(n233), .A(n234), .S(N521), .Y(n232) );
  NAND2X1 U306 ( .A(n235), .B(n222), .Y(n234) );
  INVX1 U307 ( .A(n236), .Y(n235) );
  NAND3X1 U308 ( .A(n237), .B(n228), .C(n238), .Y(n233) );
  NOR2X1 U309 ( .A(n205), .B(n239), .Y(n238) );
  AND2X1 U310 ( .A(n225), .B(n240), .Y(n231) );
  AOI21X1 U311 ( .A(cumulative[1]), .B(n241), .C(n242), .Y(n229) );
  MUX2X1 U312 ( .B(n243), .A(n244), .S(N505), .Y(n242) );
  NAND2X1 U313 ( .A(cumulative[2]), .B(n245), .Y(n244) );
  NAND3X1 U314 ( .A(N506), .B(n217), .C(n246), .Y(n243) );
  OAI22X1 U315 ( .A(n247), .B(n212), .C(n248), .D(n249), .Y(\sub_218/A[2] ) );
  AOI22X1 U316 ( .A(n250), .B(N521), .C(n240), .D(n222), .Y(n248) );
  NOR2X1 U317 ( .A(n205), .B(n236), .Y(n250) );
  AOI22X1 U318 ( .A(N505), .B(n245), .C(cumulative[2]), .D(n241), .Y(n247) );
  INVX1 U319 ( .A(n251), .Y(n245) );
  OAI21X1 U320 ( .A(n252), .B(n212), .C(n253), .Y(\sub_218/A[3] ) );
  NAND3X1 U321 ( .A(n240), .B(n223), .C(n219), .Y(n253) );
  INVX1 U322 ( .A(n249), .Y(n219) );
  OAI21X1 U323 ( .A(exponent_product[3]), .B(n254), .C(n115), .Y(n249) );
  NOR2X1 U324 ( .A(n255), .B(n256), .Y(n254) );
  NAND2X1 U325 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n256) );
  NOR2X1 U326 ( .A(n236), .B(N521), .Y(n240) );
  NAND3X1 U327 ( .A(n239), .B(n228), .C(n237), .Y(n236) );
  NOR2X1 U328 ( .A(N525), .B(N524), .Y(n237) );
  INVX1 U329 ( .A(N523), .Y(n228) );
  INVX1 U330 ( .A(N522), .Y(n239) );
  NAND2X1 U331 ( .A(n257), .B(n138), .Y(n212) );
  OAI21X1 U332 ( .A(n147), .B(n258), .C(n259), .Y(n257) );
  NAND2X1 U333 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n258) );
  INVX1 U334 ( .A(n241), .Y(n252) );
  NOR2X1 U335 ( .A(n251), .B(N505), .Y(n241) );
  NAND3X1 U336 ( .A(n260), .B(n217), .C(n246), .Y(n251) );
  NOR2X1 U337 ( .A(N509), .B(N508), .Y(n246) );
  INVX1 U338 ( .A(N507), .Y(n217) );
  INVX1 U339 ( .A(N506), .Y(n260) );
  INVX1 U340 ( .A(n261), .Y(n384) );
  NAND3X1 U341 ( .A(weight[7]), .B(n55), .C(N49), .Y(n261) );
  INVX1 U342 ( .A(n194), .Y(m_large[2]) );
  MUX2X1 U343 ( .B(n222), .A(cumulative[2]), .S(n115), .Y(n194) );
  OAI21X1 U344 ( .A(n262), .B(n263), .C(n264), .Y(n222) );
  OAI21X1 U345 ( .A(n265), .B(n266), .C(n223), .Y(n264) );
  OAI22X1 U346 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(n266) );
  OAI22X1 U347 ( .A(n271), .B(n272), .C(n273), .D(n274), .Y(n265) );
  INVX1 U348 ( .A(n275), .Y(m_large[1]) );
  MUX2X1 U349 ( .B(n225), .A(cumulative[1]), .S(n115), .Y(n275) );
  OAI21X1 U350 ( .A(n276), .B(n263), .C(n277), .Y(n225) );
  OAI21X1 U351 ( .A(n278), .B(n279), .C(n223), .Y(n277) );
  OAI22X1 U352 ( .A(n267), .B(n271), .C(n262), .D(n270), .Y(n279) );
  OAI22X1 U353 ( .A(n273), .B(n272), .C(n269), .D(n274), .Y(n278) );
  INVX1 U354 ( .A(n280), .Y(m_large[0]) );
  MUX2X1 U355 ( .B(n224), .A(cumulative[0]), .S(n115), .Y(n280) );
  NAND3X1 U356 ( .A(n281), .B(n282), .C(n283), .Y(n138) );
  AOI22X1 U357 ( .A(n284), .B(n285), .C(exponent_product[3]), .D(n259), .Y(
        n283) );
  OAI21X1 U358 ( .A(n286), .B(n146), .C(n287), .Y(n285) );
  OAI21X1 U359 ( .A(\gte_183/A[1] ), .B(n288), .C(n147), .Y(n287) );
  INVX1 U360 ( .A(cumulative[4]), .Y(n147) );
  INVX1 U361 ( .A(n288), .Y(n286) );
  NAND2X1 U362 ( .A(cumulative[3]), .B(n255), .Y(n288) );
  AOI21X1 U363 ( .A(cumulative[5]), .B(n289), .C(n290), .Y(n284) );
  INVX1 U364 ( .A(exponent_product[4]), .Y(n282) );
  NAND3X1 U365 ( .A(n291), .B(n83), .C(\gte_183/A[2] ), .Y(n281) );
  INVX1 U366 ( .A(n290), .Y(n291) );
  NOR2X1 U367 ( .A(n259), .B(exponent_product[3]), .Y(n290) );
  INVX1 U368 ( .A(cumulative[6]), .Y(n259) );
  OAI21X1 U369 ( .A(n292), .B(n263), .C(n293), .Y(n224) );
  OAI21X1 U370 ( .A(n294), .B(n295), .C(n223), .Y(n293) );
  INVX1 U371 ( .A(n205), .Y(n223) );
  OAI22X1 U372 ( .A(n267), .B(n273), .C(n276), .D(n270), .Y(n295) );
  INVX1 U373 ( .A(product[1]), .Y(n276) );
  OAI21X1 U374 ( .A(n100), .B(n43), .C(n296), .Y(product[1]) );
  AOI22X1 U375 ( .A(N281), .B(n53), .C(N264), .D(n51), .Y(n296) );
  INVX1 U376 ( .A(product[4]), .Y(n273) );
  OAI22X1 U377 ( .A(n269), .B(n272), .C(n262), .D(n274), .Y(n294) );
  INVX1 U378 ( .A(product[2]), .Y(n262) );
  OAI21X1 U379 ( .A(n100), .B(n41), .C(n297), .Y(product[2]) );
  AOI22X1 U380 ( .A(N282), .B(n53), .C(N265), .D(n51), .Y(n297) );
  INVX1 U381 ( .A(product[3]), .Y(n269) );
  OAI21X1 U382 ( .A(n100), .B(n298), .C(n299), .Y(product[3]) );
  AOI22X1 U383 ( .A(N283), .B(n53), .C(N266), .D(n51), .Y(n299) );
  INVX1 U384 ( .A(N346), .Y(n298) );
  INVX1 U385 ( .A(product[0]), .Y(n292) );
  OAI21X1 U386 ( .A(n100), .B(n300), .C(n301), .Y(product[0]) );
  AOI22X1 U387 ( .A(N280), .B(n53), .C(N280), .D(n51), .Y(n301) );
  INVX1 U388 ( .A(n289), .Y(\gte_183/A[2] ) );
  OAI21X1 U389 ( .A(n302), .B(n303), .C(float), .Y(n289) );
  OAI21X1 U390 ( .A(n267), .B(n304), .C(n305), .Y(n303) );
  AOI22X1 U391 ( .A(N436), .B(n306), .C(N412), .D(n307), .Y(n305) );
  INVX1 U392 ( .A(N388), .Y(n304) );
  OAI21X1 U393 ( .A(n308), .B(N388), .C(n309), .Y(n302) );
  AOI21X1 U394 ( .A(n310), .B(N460), .C(n311), .Y(n309) );
  INVX1 U395 ( .A(n146), .Y(\gte_183/A[1] ) );
  OAI21X1 U396 ( .A(n312), .B(n313), .C(float), .Y(n146) );
  OAI21X1 U397 ( .A(N435), .B(n267), .C(n314), .Y(n313) );
  AOI22X1 U398 ( .A(N435), .B(n306), .C(N411), .D(n307), .Y(n314) );
  OAI21X1 U399 ( .A(N435), .B(n308), .C(n315), .Y(n312) );
  AOI21X1 U400 ( .A(n310), .B(N459), .C(n311), .Y(n315) );
  INVX1 U401 ( .A(n316), .Y(n311) );
  NOR2X1 U402 ( .A(n317), .B(n270), .Y(n310) );
  OAI21X1 U403 ( .A(n318), .B(n205), .C(n319), .Y(exponent_product[4]) );
  NAND2X1 U404 ( .A(N481), .B(n320), .Y(n319) );
  INVX1 U405 ( .A(n263), .Y(n320) );
  NAND2X1 U406 ( .A(n321), .B(float), .Y(n263) );
  AND2X1 U407 ( .A(n322), .B(n323), .Y(n318) );
  AOI22X1 U408 ( .A(N438), .B(n306), .C(N414), .D(n307), .Y(n323) );
  AOI22X1 U409 ( .A(N462), .B(n324), .C(N390), .D(product[7]), .Y(n322) );
  OAI21X1 U410 ( .A(n325), .B(n205), .C(n326), .Y(exponent_product[3]) );
  NAND2X1 U411 ( .A(float), .B(n327), .Y(n326) );
  OAI21X1 U412 ( .A(n308), .B(n39), .C(n328), .Y(n327) );
  OAI21X1 U413 ( .A(N461), .B(n317), .C(n324), .Y(n328) );
  NAND2X1 U414 ( .A(n329), .B(float), .Y(n205) );
  AOI21X1 U415 ( .A(N389), .B(product[7]), .C(n330), .Y(n325) );
  INVX1 U416 ( .A(n331), .Y(n330) );
  AOI22X1 U417 ( .A(n48), .B(n306), .C(N413), .D(n307), .Y(n331) );
  INVX1 U418 ( .A(n255), .Y(exponent_product[0]) );
  OAI21X1 U419 ( .A(n332), .B(n333), .C(float), .Y(n255) );
  OAI21X1 U420 ( .A(n267), .B(n334), .C(n335), .Y(n333) );
  AOI22X1 U421 ( .A(N410), .B(n307), .C(N386), .D(n321), .Y(n335) );
  INVX1 U422 ( .A(n308), .Y(n321) );
  NAND3X1 U423 ( .A(n329), .B(n336), .C(n337), .Y(n308) );
  NOR2X1 U424 ( .A(product[5]), .B(product[4]), .Y(n337) );
  INVX1 U425 ( .A(n317), .Y(n329) );
  INVX1 U426 ( .A(N386), .Y(n334) );
  NAND3X1 U427 ( .A(n338), .B(n316), .C(n339), .Y(n332) );
  NAND2X1 U428 ( .A(N386), .B(n306), .Y(n339) );
  OAI21X1 U429 ( .A(n306), .B(n340), .C(n317), .Y(n316) );
  NAND2X1 U430 ( .A(n272), .B(n267), .Y(n340) );
  INVX1 U431 ( .A(product[7]), .Y(n267) );
  INVX1 U432 ( .A(n307), .Y(n272) );
  NOR2X1 U433 ( .A(n268), .B(product[7]), .Y(n307) );
  INVX1 U434 ( .A(product[6]), .Y(n268) );
  INVX1 U435 ( .A(n274), .Y(n306) );
  NAND2X1 U436 ( .A(n336), .B(product[5]), .Y(n274) );
  OAI21X1 U437 ( .A(N458), .B(n317), .C(n324), .Y(n338) );
  INVX1 U438 ( .A(n270), .Y(n324) );
  NAND3X1 U439 ( .A(product[4]), .B(n271), .C(n336), .Y(n270) );
  NOR2X1 U440 ( .A(product[6]), .B(product[7]), .Y(n336) );
  OAI21X1 U441 ( .A(n100), .B(n42), .C(n341), .Y(product[7]) );
  AOI22X1 U442 ( .A(N287), .B(n53), .C(N270), .D(n51), .Y(n341) );
  OAI21X1 U443 ( .A(n100), .B(n44), .C(n342), .Y(product[6]) );
  AOI22X1 U444 ( .A(N286), .B(n53), .C(N269), .D(n51), .Y(n342) );
  INVX1 U445 ( .A(product[5]), .Y(n271) );
  OAI21X1 U446 ( .A(n100), .B(n343), .C(n344), .Y(product[5]) );
  AOI22X1 U447 ( .A(N285), .B(n53), .C(N268), .D(n51), .Y(n344) );
  INVX1 U448 ( .A(N348), .Y(n343) );
  OAI21X1 U449 ( .A(n100), .B(n345), .C(n346), .Y(product[4]) );
  AOI22X1 U450 ( .A(N284), .B(n53), .C(N267), .D(n51), .Y(n346) );
  NAND2X1 U451 ( .A(n196), .B(n100), .Y(n88) );
  XNOR2X1 U452 ( .A(value[7]), .B(weight[7]), .Y(n196) );
  INVX1 U453 ( .A(N347), .Y(n345) );
  NAND2X1 U454 ( .A(n347), .B(n348), .Y(n317) );
  OAI21X1 U455 ( .A(n349), .B(n350), .C(n65), .Y(n348) );
  NAND2X1 U456 ( .A(value[4]), .B(value[3]), .Y(n350) );
  INVX1 U457 ( .A(value[5]), .Y(n349) );
  OAI21X1 U458 ( .A(n351), .B(n352), .C(n353), .Y(n347) );
  INVX1 U459 ( .A(weight[6]), .Y(n353) );
  NAND2X1 U460 ( .A(weight[4]), .B(weight[3]), .Y(n352) );
  INVX1 U461 ( .A(weight[5]), .Y(n351) );
  NOR2X1 U462 ( .A(n354), .B(n355), .Y(N99) );
  NOR2X1 U463 ( .A(n354), .B(n356), .Y(N98) );
  NOR2X1 U464 ( .A(n354), .B(n357), .Y(N97) );
  NOR2X1 U465 ( .A(n354), .B(n358), .Y(N96) );
  NOR2X1 U466 ( .A(n354), .B(n359), .Y(N95) );
  NOR2X1 U467 ( .A(n354), .B(n360), .Y(N94) );
  NOR2X1 U468 ( .A(n354), .B(n361), .Y(N93) );
  NOR2X1 U469 ( .A(n362), .B(n363), .Y(N91) );
  NAND2X1 U470 ( .A(weight[7]), .B(n54), .Y(n363) );
  NOR2X1 U471 ( .A(n364), .B(n365), .Y(N90) );
  NOR2X1 U472 ( .A(n364), .B(n366), .Y(N89) );
  NOR2X1 U473 ( .A(n364), .B(n367), .Y(N88) );
  NOR2X1 U474 ( .A(n364), .B(n368), .Y(N87) );
  NOR2X1 U475 ( .A(n364), .B(n369), .Y(N86) );
  NOR2X1 U476 ( .A(n364), .B(n370), .Y(N85) );
  NOR2X1 U477 ( .A(n364), .B(n371), .Y(N84) );
  NOR2X1 U478 ( .A(n355), .B(n364), .Y(N83) );
  NOR2X1 U479 ( .A(n356), .B(n364), .Y(N82) );
  NOR2X1 U480 ( .A(n357), .B(n364), .Y(N81) );
  NOR2X1 U481 ( .A(n358), .B(n364), .Y(N80) );
  NOR2X1 U482 ( .A(n359), .B(n364), .Y(N79) );
  NOR2X1 U483 ( .A(n360), .B(n364), .Y(N78) );
  NOR2X1 U484 ( .A(n361), .B(n364), .Y(N77) );
  MUX2X1 U485 ( .B(value[1]), .A(N52), .S(value[7]), .Y(n364) );
  NOR2X1 U486 ( .A(n362), .B(n372), .Y(N74) );
  NAND2X1 U487 ( .A(weight[7]), .B(n55), .Y(n372) );
  INVX1 U488 ( .A(N49), .Y(n362) );
  NOR2X1 U489 ( .A(n373), .B(n365), .Y(N73) );
  NOR2X1 U490 ( .A(n373), .B(n366), .Y(N72) );
  NOR2X1 U491 ( .A(n373), .B(n367), .Y(N71) );
  NOR2X1 U492 ( .A(n373), .B(n368), .Y(N70) );
  NOR2X1 U493 ( .A(n373), .B(n369), .Y(N69) );
  NOR2X1 U494 ( .A(n373), .B(n370), .Y(N68) );
  NOR2X1 U495 ( .A(n373), .B(n371), .Y(N67) );
  NOR2X1 U496 ( .A(n373), .B(n355), .Y(N66) );
  NOR2X1 U497 ( .A(n373), .B(n356), .Y(N65) );
  NOR2X1 U498 ( .A(n373), .B(n357), .Y(N64) );
  NOR2X1 U499 ( .A(n373), .B(n358), .Y(N63) );
  NOR2X1 U500 ( .A(n373), .B(n359), .Y(N62) );
  NOR2X1 U501 ( .A(n373), .B(n360), .Y(N61) );
  NOR2X1 U502 ( .A(n373), .B(n361), .Y(N60) );
  MUX2X1 U503 ( .B(N51), .A(N51), .S(value[7]), .Y(n373) );
  NOR2X1 U504 ( .A(n374), .B(n375), .Y(N323) );
  NOR2X1 U505 ( .A(n374), .B(n376), .Y(N322) );
  NOR2X1 U506 ( .A(n62), .B(n374), .Y(\add_0_root_add_0_root_add_98_3/A[2] )
         );
  INVX1 U507 ( .A(value[2]), .Y(n374) );
  NOR2X1 U508 ( .A(n375), .B(n377), .Y(N319) );
  NOR2X1 U509 ( .A(n376), .B(n377), .Y(N318) );
  NOR2X1 U510 ( .A(n62), .B(n377), .Y(N317) );
  INVX1 U511 ( .A(value[1]), .Y(n377) );
  NOR2X1 U512 ( .A(n378), .B(n375), .Y(N315) );
  INVX1 U513 ( .A(N327), .Y(n375) );
  NOR2X1 U514 ( .A(n378), .B(n376), .Y(N314) );
  INVX1 U515 ( .A(N326), .Y(n376) );
  INVX1 U516 ( .A(N51), .Y(n378) );
  NAND2X1 U517 ( .A(N51), .B(N34), .Y(n300) );
  NOR2X1 U518 ( .A(n370), .B(n379), .Y(N166) );
  NOR2X1 U519 ( .A(n371), .B(n379), .Y(N165) );
  NOR2X1 U520 ( .A(n355), .B(n379), .Y(N164) );
  NOR2X1 U521 ( .A(n356), .B(n379), .Y(N163) );
  NOR2X1 U522 ( .A(n357), .B(n379), .Y(N162) );
  NOR2X1 U523 ( .A(n358), .B(n379), .Y(N161) );
  NOR2X1 U524 ( .A(n359), .B(n379), .Y(N160) );
  NOR2X1 U525 ( .A(n360), .B(n379), .Y(N159) );
  NOR2X1 U526 ( .A(n361), .B(n379), .Y(N158) );
  NAND2X1 U527 ( .A(N58), .B(value[7]), .Y(n379) );
  NOR2X1 U528 ( .A(n380), .B(n369), .Y(N156) );
  NOR2X1 U529 ( .A(n380), .B(n370), .Y(N155) );
  NOR2X1 U530 ( .A(n380), .B(n371), .Y(N154) );
  NOR2X1 U531 ( .A(n355), .B(n380), .Y(N153) );
  NOR2X1 U532 ( .A(n356), .B(n380), .Y(N152) );
  NOR2X1 U533 ( .A(n357), .B(n380), .Y(N151) );
  NOR2X1 U534 ( .A(n358), .B(n380), .Y(N150) );
  NOR2X1 U535 ( .A(n359), .B(n380), .Y(N149) );
  NOR2X1 U536 ( .A(n360), .B(n380), .Y(N148) );
  NOR2X1 U537 ( .A(n361), .B(n380), .Y(N147) );
  MUX2X1 U538 ( .B(value[6]), .A(N57), .S(value[7]), .Y(n380) );
  NOR2X1 U539 ( .A(n381), .B(n368), .Y(N145) );
  NOR2X1 U540 ( .A(n381), .B(n369), .Y(N144) );
  NOR2X1 U541 ( .A(n381), .B(n370), .Y(N143) );
  NOR2X1 U542 ( .A(n381), .B(n371), .Y(N142) );
  NOR2X1 U543 ( .A(n355), .B(n381), .Y(N141) );
  NOR2X1 U544 ( .A(n356), .B(n381), .Y(N140) );
  NOR2X1 U545 ( .A(n357), .B(n381), .Y(N139) );
  NOR2X1 U546 ( .A(n358), .B(n381), .Y(N138) );
  NOR2X1 U547 ( .A(n359), .B(n381), .Y(N137) );
  NOR2X1 U548 ( .A(n360), .B(n381), .Y(N136) );
  NOR2X1 U549 ( .A(n361), .B(n381), .Y(N172) );
  MUX2X1 U550 ( .B(value[5]), .A(N56), .S(value[7]), .Y(n381) );
  NOR2X1 U551 ( .A(n382), .B(n367), .Y(N133) );
  NOR2X1 U552 ( .A(n382), .B(n368), .Y(N132) );
  NOR2X1 U553 ( .A(n382), .B(n369), .Y(N131) );
  NOR2X1 U554 ( .A(n382), .B(n370), .Y(N130) );
  NOR2X1 U555 ( .A(n382), .B(n371), .Y(N129) );
  NOR2X1 U556 ( .A(n355), .B(n382), .Y(N128) );
  NOR2X1 U557 ( .A(n356), .B(n382), .Y(N127) );
  NOR2X1 U558 ( .A(n357), .B(n382), .Y(N126) );
  NOR2X1 U559 ( .A(n358), .B(n382), .Y(N125) );
  NOR2X1 U560 ( .A(n359), .B(n382), .Y(N124) );
  NOR2X1 U561 ( .A(n360), .B(n382), .Y(N123) );
  NOR2X1 U562 ( .A(n361), .B(n382), .Y(N122) );
  MUX2X1 U563 ( .B(value[4]), .A(N55), .S(value[7]), .Y(n382) );
  NOR2X1 U564 ( .A(n383), .B(n366), .Y(N120) );
  NOR2X1 U565 ( .A(n383), .B(n367), .Y(N119) );
  NOR2X1 U566 ( .A(n383), .B(n368), .Y(N118) );
  NOR2X1 U567 ( .A(n383), .B(n369), .Y(N117) );
  NOR2X1 U568 ( .A(n383), .B(n370), .Y(N116) );
  NOR2X1 U569 ( .A(n383), .B(n371), .Y(N115) );
  NOR2X1 U570 ( .A(n355), .B(n383), .Y(N114) );
  MUX2X1 U571 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n355) );
  NOR2X1 U572 ( .A(n356), .B(n383), .Y(N113) );
  MUX2X1 U573 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n356) );
  NOR2X1 U574 ( .A(n357), .B(n383), .Y(N112) );
  MUX2X1 U575 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n357) );
  NOR2X1 U576 ( .A(n358), .B(n383), .Y(N111) );
  MUX2X1 U577 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n358) );
  NOR2X1 U578 ( .A(n359), .B(n383), .Y(N110) );
  MUX2X1 U579 ( .B(N327), .A(N36), .S(weight[7]), .Y(n359) );
  NOR2X1 U580 ( .A(n360), .B(n383), .Y(N109) );
  MUX2X1 U581 ( .B(N326), .A(N35), .S(weight[7]), .Y(n360) );
  NOR2X1 U582 ( .A(n361), .B(n383), .Y(N108) );
  MUX2X1 U583 ( .B(value[3]), .A(N54), .S(value[7]), .Y(n383) );
  MUX2X1 U584 ( .B(N34), .A(N34), .S(weight[7]), .Y(n361) );
  NOR2X1 U585 ( .A(n354), .B(n365), .Y(N106) );
  NAND2X1 U586 ( .A(N49), .B(weight[7]), .Y(n365) );
  NOR2X1 U587 ( .A(n354), .B(n366), .Y(N105) );
  NAND2X1 U588 ( .A(N49), .B(weight[7]), .Y(n366) );
  NOR2X1 U589 ( .A(n354), .B(n367), .Y(N104) );
  NAND2X1 U590 ( .A(N49), .B(weight[7]), .Y(n367) );
  NOR2X1 U591 ( .A(n354), .B(n368), .Y(N103) );
  NAND2X1 U592 ( .A(N49), .B(weight[7]), .Y(n368) );
  NOR2X1 U593 ( .A(n354), .B(n369), .Y(N102) );
  NAND2X1 U594 ( .A(N49), .B(weight[7]), .Y(n369) );
  NOR2X1 U595 ( .A(n354), .B(n370), .Y(N101) );
  NAND2X1 U596 ( .A(N49), .B(weight[7]), .Y(n370) );
  NOR2X1 U597 ( .A(n354), .B(n371), .Y(N100) );
  NAND2X1 U598 ( .A(N41), .B(weight[7]), .Y(n371) );
  MUX2X1 U599 ( .B(value[2]), .A(N53), .S(value[7]), .Y(n354) );
endmodule


module signed_multiplier_0_DW01_add_12_DW01_add_207 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n2;
  wire   [15:1] carry;
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(n2), .YC(carry[3]), .YS(SUM[2]) );
  AND2X2 U1 ( .A(carry[8]), .B(B[8]), .Y(SUM[9]) );
  AND2X2 U2 ( .A(B[1]), .B(A[1]), .Y(n2) );
  XOR2X1 U3 ( .A(B[1]), .B(A[1]), .Y(SUM[1]) );
  XOR2X1 U4 ( .A(carry[8]), .B(B[8]), .Y(SUM[8]) );
endmodule


module signed_multiplier_0_DW01_add_11_DW01_add_206 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \A[0] , n1;
  wire   [15:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(SUM[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(n1), .YC(carry[4]), .YS(SUM[3]) );
  AND2X2 U1 ( .A(B[2]), .B(A[2]), .Y(n1) );
  XOR2X1 U2 ( .A(B[2]), .B(A[2]), .Y(SUM[2]) );
endmodule


module signed_multiplier_0_DW01_add_10_DW01_add_205 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(SUM[11]), .YS(SUM[10])
         );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(n1), .YC(carry[5]), .YS(SUM[4]) );
  AND2X2 U1 ( .A(B[3]), .B(A[3]), .Y(n1) );
  XOR2X1 U2 ( .A(B[3]), .B(A[3]), .Y(SUM[3]) );
endmodule


module signed_multiplier_0_DW01_add_9_DW01_add_204 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(SUM[12]), .YS(SUM[11])
         );
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


module signed_multiplier_0_DW01_add_7_DW01_add_202 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [15:1] carry;
  assign SUM[4] = A[4];
  assign SUM[3] = A[3];
  assign SUM[2] = A[2];
  assign SUM[1] = A[1];
  assign SUM[0] = A[0];

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
  AND2X2 U2 ( .A(carry[13]), .B(B[13]), .Y(n2) );
  AND2X2 U3 ( .A(n2), .B(B[14]), .Y(SUM[15]) );
  XOR2X1 U4 ( .A(B[5]), .B(A[5]), .Y(SUM[5]) );
  XOR2X1 U5 ( .A(carry[13]), .B(B[13]), .Y(SUM[13]) );
  XOR2X1 U6 ( .A(n2), .B(B[14]), .Y(SUM[14]) );
endmodule


module signed_multiplier_0_DW01_add_6_DW01_add_201 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1;
  wire   [15:1] carry;
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = \B[0] ;
  assign \B[0]  = B[0];

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
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(n1), .YC(carry[9]), .YS(SUM[8]) );
  AND2X2 U1 ( .A(B[7]), .B(A[7]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(A[7]), .Y(SUM[7]) );
  XOR2X1 U3 ( .A(B[15]), .B(carry[15]), .Y(SUM[15]) );
endmodule


module signed_multiplier_0 ( weight, value, cumulative, float, out, overflow
 );
  input [7:0] weight;
  input [7:0] value;
  input [7:0] cumulative;
  output [7:0] out;
  input float;
  output overflow;
  wire   N34, N35, N36, N37, N38, N39, N40, N41, N51, N60, N61, N62, N63, N64,
         N65, N66, N67, N77, N78, N79, N80, N81, N82, N83, N84, N93, N94, N95,
         N96, N97, N98, N99, N100, N108, N109, N110, N111, N112, N113, N114,
         N115, N122, N123, N124, N125, N126, N127, N128, N129, N158, N159,
         N160, N161, N162, N163, N164, N165, N264, N265, N266, N267, N268,
         N269, N270, N271, N272, N273, N274, N275, N276, N277, N278, N280,
         N315, N318, N319, N322, N323, N326, N327, N386, N389, N390, N410,
         N413, N414, N435, N436, N438, N459, N460, N461, N462, \m_large[2] ,
         N542, N543, N544, N546, N547, N548, N549, N550, N551, N552, N553,
         N554, N555, N525, N524, N523, N522, N521, N509, N508, N507, N506,
         N505, N385, N384, N258, N257, N256, N255, N254, N253, N252, N251,
         N250, N249, N248, N247, N246, N245, N244, N243, N242, N241, N240,
         N239, N238, N237, N236, N235, N234, N233, N232, N231, N224, N223,
         N222, N221, N220, N219, N218, N217, N216, N215, N209, N208, N207,
         N206, N205, N204, N203, N202, N201, N200, N199, N195, N194, N193,
         N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N181,
         N180, N179, N178, N177, N176, N175, N174, N173, N172, \gte_183/A[2] ,
         \gte_183/A[1] , \sub_218/carry[4] , \sub_218/carry[3] ,
         \sub_218/carry[2] , \sub_218/carry[1] , \sub_218/B[3] ,
         \sub_218/A[0] , \sub_218/A[1] , \sub_218/A[2] , \sub_218/A[3] ,
         \sub_216/carry[4] , \sub_216/carry[3] , \sub_216/carry[2] ,
         \sub_216/carry[1] , \add_213/carry[3] , \add_213/carry[2] ,
         \sub_197/carry[4] , \sub_197/carry[3] , \sub_197/carry[2] ,
         \sub_197/carry[1] , \sub_185/carry[4] , \sub_185/carry[3] ,
         \sub_185/carry[2] , \sub_185/carry[1] , \sub_0_root_sub_161/carry[3] ,
         \sub_0_root_sub_150/carry[2] , \sub_0_root_sub_150/carry[3] ,
         \sub_0_root_sub_128/carry[4] , \sub_0_root_sub_117/carry[4] ,
         \r601/carry[3] , \r601/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
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
         n547, n548, n549, n550, n551, n552, n553, n554, n555;
  wire   [4:0] exponent_product;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;
  assign N34 = weight[0];
  assign N51 = value[0];
  assign N326 = weight[1];
  assign N327 = weight[2];

  signed_multiplier_0_DW01_add_12_DW01_add_207 add_6_root_add_0_root_add_76_7 ( 
        .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N67, N66, N65, N64, 
        N63, N62, N61, N60}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        N84, N83, N82, N81, N80, N79, N78, N77, 1'b0}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, N224, N223, N222, 
        N221, N220, N219, N218, N217, N216, N215}) );
  signed_multiplier_0_DW01_add_11_DW01_add_206 add_5_root_add_0_root_add_76_7 ( 
        .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        N100, N99, N98, N97, N96, N95, N94, N93, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM({SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, N209, N208, N207, N206, N205, N204, N203, 
        N202, N201, N200, N199}) );
  signed_multiplier_0_DW01_add_10_DW01_add_205 add_4_root_add_0_root_add_76_7 ( 
        .A({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N115, N114, N113, N112, N111, N110, 
        N109, N108, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, N258, N257, N256, 
        N255, N254, N253, N252, N251, N250, N249, N248, N247}) );
  signed_multiplier_0_DW01_add_9_DW01_add_204 add_3_root_add_0_root_add_76_7 ( 
        .A({1'b0, 1'b0, 1'b0, 1'b0, N129, N128, N127, N126, N125, N124, N123, 
        N122, 1'b0, 1'b0, 1'b0, 1'b0}), .B({1'b0, 1'b0, 1'b0, 1'b0, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, N195, N194, N193, N192, N191, N190, N189, 
        N188, N187, N186, N185, N184, N183}) );
  signed_multiplier_0_DW01_add_7_DW01_add_202 add_1_root_add_0_root_add_76_7 ( 
        .A({1'b0, 1'b0, 1'b0, N195, N194, N193, N192, N191, N190, N189, N188, 
        N187, N186, N185, N184, N183}), .B({1'b0, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N246, N245, N244, N243, N242, N241, N240, N239, N238, N237, N236, N235, 
        N234, N233, N232, N231}) );
  signed_multiplier_0_DW01_add_6_DW01_add_201 add_0_root_add_0_root_add_76_7 ( 
        .A({1'b0, N165, N164, N163, N162, N161, N160, N159, N158, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N246, N245, N244, N243, N242, N241, 
        N240, N239, N238, N237, N236, N235, N234, N233, N232, N231}), .CI(1'b0), .SUM({N278, N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, 
        N266, N265, N264, N280}) );
  FAX1 \sub_218/U2_1  ( .A(\sub_218/A[1] ), .B(n406), .C(\sub_218/carry[1] ), 
        .YC(\sub_218/carry[2] ), .YS(N552) );
  FAX1 \sub_218/U2_2  ( .A(\sub_218/A[2] ), .B(n405), .C(\sub_218/carry[2] ), 
        .YC(\sub_218/carry[3] ), .YS(N553) );
  FAX1 \sub_218/U2_3  ( .A(\sub_218/A[3] ), .B(n471), .C(\sub_218/carry[3] ), 
        .YC(\sub_218/carry[4] ), .YS(N554) );
  FAX1 \sub_216/U2_1  ( .A(n376), .B(n475), .C(\sub_216/carry[1] ), .YC(
        \sub_216/carry[2] ), .YS(N547) );
  FAX1 \sub_216/U2_2  ( .A(\m_large[2] ), .B(n403), .C(\sub_216/carry[2] ), 
        .YC(\sub_216/carry[3] ), .YS(N548) );
  FAX1 \sub_216/U2_3  ( .A(\sub_218/B[3] ), .B(n402), .C(\sub_216/carry[3] ), 
        .YC(\sub_216/carry[4] ), .YS(N549) );
  FAX1 \add_213/U1_2  ( .A(\m_large[2] ), .B(\sub_218/A[2] ), .C(
        \add_213/carry[2] ), .YC(\add_213/carry[3] ), .YS(N542) );
  FAX1 \add_213/U1_3  ( .A(\sub_218/B[3] ), .B(\sub_218/A[3] ), .C(
        \add_213/carry[3] ), .YC(N544), .YS(N543) );
  FAX1 \sub_197/U2_1  ( .A(cumulative[4]), .B(n401), .C(\sub_197/carry[1] ), 
        .YC(\sub_197/carry[2] ), .YS(N522) );
  FAX1 \sub_197/U2_2  ( .A(cumulative[5]), .B(n400), .C(\sub_197/carry[2] ), 
        .YC(\sub_197/carry[3] ), .YS(N523) );
  FAX1 \sub_197/U2_3  ( .A(cumulative[6]), .B(n399), .C(\sub_197/carry[3] ), 
        .YC(\sub_197/carry[4] ), .YS(N524) );
  FAX1 \sub_185/U2_1  ( .A(\gte_183/A[1] ), .B(n442), .C(\sub_185/carry[1] ), 
        .YC(\sub_185/carry[2] ), .YS(N506) );
  FAX1 \sub_185/U2_2  ( .A(\gte_183/A[2] ), .B(n538), .C(\sub_185/carry[2] ), 
        .YC(\sub_185/carry[3] ), .YS(N507) );
  FAX1 \sub_185/U2_3  ( .A(exponent_product[3]), .B(n527), .C(
        \sub_185/carry[3] ), .YC(\sub_185/carry[4] ), .YS(N508) );
  FAX1 \r601/U1_1  ( .A(weight[4]), .B(value[4]), .C(n20), .YC(\r601/carry[2] ), .YS(N435) );
  FAX1 \r601/U1_2  ( .A(weight[5]), .B(value[5]), .C(\r601/carry[2] ), .YC(
        \r601/carry[3] ), .YS(N436) );
  FAX1 \r601/U1_3  ( .A(weight[6]), .B(value[6]), .C(\r601/carry[3] ), .YC(
        N385), .YS(N384) );
  INVX2 U3 ( .A(n42), .Y(n1) );
  INVX2 U4 ( .A(n1), .Y(n2) );
  INVX1 U5 ( .A(n1), .Y(n3) );
  INVX2 U6 ( .A(n371), .Y(n4) );
  INVX2 U7 ( .A(n4), .Y(n5) );
  INVX1 U8 ( .A(n4), .Y(n6) );
  AND2X2 U9 ( .A(n176), .B(n370), .Y(n7) );
  AND2X2 U10 ( .A(n16), .B(N436), .Y(n8) );
  AND2X2 U11 ( .A(n22), .B(n395), .Y(n9) );
  AND2X2 U12 ( .A(n26), .B(n397), .Y(n10) );
  AND2X2 U13 ( .A(n255), .B(n547), .Y(n11) );
  AND2X2 U14 ( .A(n380), .B(n370), .Y(n12) );
  AND2X2 U15 ( .A(n332), .B(n228), .Y(n13) );
  AND2X2 U16 ( .A(cumulative[0]), .B(N280), .Y(n14) );
  AND2X2 U17 ( .A(N435), .B(N436), .Y(n15) );
  AND2X2 U18 ( .A(N386), .B(N435), .Y(n16) );
  AND2X2 U19 ( .A(\sub_218/A[0] ), .B(n377), .Y(n17) );
  AND2X2 U20 ( .A(N322), .B(N34), .Y(n18) );
  AND2X2 U21 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n29), .Y(n19) );
  AND2X2 U22 ( .A(value[3]), .B(weight[3]), .Y(n20) );
  AND2X2 U23 ( .A(n9), .B(n394), .Y(n21) );
  AND2X2 U24 ( .A(n10), .B(n396), .Y(n22) );
  XNOR2X1 U25 ( .A(\sub_0_root_sub_161/carry[3] ), .B(n29), .Y(n23) );
  AND2X2 U26 ( .A(n21), .B(n393), .Y(n24) );
  XNOR2X1 U27 ( .A(N435), .B(N436), .Y(n25) );
  AND2X2 U28 ( .A(n398), .B(n381), .Y(n26) );
  XNOR2X1 U29 ( .A(n16), .B(N436), .Y(n27) );
  INVX1 U30 ( .A(N384), .Y(n28) );
  INVX2 U31 ( .A(n28), .Y(n29) );
  INVX2 U32 ( .A(n306), .Y(n281) );
  AND2X2 U33 ( .A(n39), .B(n283), .Y(n30) );
  AND2X2 U34 ( .A(n30), .B(n286), .Y(n31) );
  AND2X2 U35 ( .A(n31), .B(n289), .Y(n32) );
  AND2X2 U36 ( .A(n32), .B(n292), .Y(n33) );
  AND2X2 U37 ( .A(n33), .B(n295), .Y(n34) );
  OR2X1 U38 ( .A(n199), .B(N267), .Y(n189) );
  OR2X1 U39 ( .A(n189), .B(N268), .Y(n182) );
  OR2X2 U40 ( .A(n217), .B(N266), .Y(n199) );
  OR2X2 U41 ( .A(n182), .B(N269), .Y(n256) );
  XNOR2X1 U42 ( .A(cumulative[7]), .B(n316), .Y(n317) );
  XNOR2X1 U43 ( .A(cumulative[4]), .B(n352), .Y(n353) );
  XNOR2X1 U44 ( .A(cumulative[6]), .B(n363), .Y(n364) );
  INVX1 U45 ( .A(n6), .Y(n368) );
  AND2X2 U46 ( .A(n40), .B(n287), .Y(n35) );
  AND2X2 U47 ( .A(n35), .B(n290), .Y(n36) );
  AND2X2 U48 ( .A(n36), .B(n321), .Y(n37) );
  AND2X2 U49 ( .A(n37), .B(n319), .Y(n38) );
  AND2X2 U50 ( .A(n258), .B(n257), .Y(n39) );
  AND2X2 U51 ( .A(n41), .B(n309), .Y(n40) );
  INVX2 U52 ( .A(n274), .Y(n354) );
  AND2X2 U53 ( .A(n307), .B(n281), .Y(n41) );
  INVX2 U54 ( .A(n12), .Y(n48) );
  INVX2 U55 ( .A(n7), .Y(n49) );
  XNOR2X1 U56 ( .A(n78), .B(value[6]), .Y(n42) );
  AND2X2 U57 ( .A(n2), .B(N34), .Y(n43) );
  INVX2 U58 ( .A(N51), .Y(n386) );
  AND2X2 U59 ( .A(n372), .B(n44), .Y(n311) );
  XNOR2X1 U60 ( .A(n41), .B(n310), .Y(n44) );
  NOR2X1 U61 ( .A(n543), .B(n479), .Y(exponent_product[4]) );
  OR2X1 U62 ( .A(\sub_218/A[0] ), .B(n407), .Y(\sub_218/carry[1] ) );
  XNOR2X1 U63 ( .A(n407), .B(\sub_218/A[0] ), .Y(N551) );
  OR2X1 U64 ( .A(n377), .B(n404), .Y(\sub_216/carry[1] ) );
  XNOR2X1 U65 ( .A(n404), .B(n377), .Y(N546) );
  XNOR2X1 U66 ( .A(exponent_product[4]), .B(\sub_185/carry[4] ), .Y(N509) );
  OR2X1 U67 ( .A(n378), .B(n273), .Y(\sub_185/carry[1] ) );
  XNOR2X1 U68 ( .A(n273), .B(n378), .Y(N505) );
  NAND2X1 U69 ( .A(n45), .B(n46), .Y(\sub_0_root_sub_161/carry[3] ) );
  INVX2 U70 ( .A(N435), .Y(n45) );
  INVX2 U71 ( .A(N436), .Y(n46) );
  OR2X1 U72 ( .A(N435), .B(N386), .Y(\sub_0_root_sub_150/carry[2] ) );
  XNOR2X1 U73 ( .A(N386), .B(N435), .Y(N459) );
  OR2X1 U74 ( .A(N436), .B(\sub_0_root_sub_150/carry[2] ), .Y(
        \sub_0_root_sub_150/carry[3] ) );
  XNOR2X1 U75 ( .A(\sub_0_root_sub_150/carry[2] ), .B(N436), .Y(N460) );
  XNOR2X1 U76 ( .A(N385), .B(n19), .Y(N462) );
  XNOR2X1 U77 ( .A(N385), .B(n29), .Y(N438) );
  OR2X1 U78 ( .A(n29), .B(n8), .Y(\sub_0_root_sub_128/carry[4] ) );
  XNOR2X1 U79 ( .A(n8), .B(n29), .Y(N413) );
  XNOR2X1 U80 ( .A(N385), .B(\sub_0_root_sub_128/carry[4] ), .Y(N414) );
  OR2X1 U81 ( .A(n29), .B(n15), .Y(\sub_0_root_sub_117/carry[4] ) );
  XNOR2X1 U82 ( .A(n15), .B(n29), .Y(N389) );
  XNOR2X1 U83 ( .A(N385), .B(\sub_0_root_sub_117/carry[4] ), .Y(N390) );
  XOR2X1 U84 ( .A(n387), .B(\sub_197/carry[4] ), .Y(N525) );
  XOR2X1 U85 ( .A(\sub_0_root_sub_150/carry[3] ), .B(n29), .Y(N461) );
  XOR2X1 U86 ( .A(value[3]), .B(weight[3]), .Y(N386) );
  XOR2X1 U87 ( .A(n398), .B(n381), .Y(N35) );
  XOR2X1 U88 ( .A(n26), .B(n397), .Y(N36) );
  XOR2X1 U89 ( .A(n10), .B(n396), .Y(N37) );
  XOR2X1 U90 ( .A(n22), .B(n395), .Y(N38) );
  XOR2X1 U91 ( .A(n9), .B(n394), .Y(N39) );
  XOR2X1 U92 ( .A(n21), .B(n393), .Y(N40) );
  OR2X2 U94 ( .A(n331), .B(n330), .Y(n360) );
  INVX2 U95 ( .A(N326), .Y(n381) );
  INVX2 U96 ( .A(N34), .Y(n398) );
  NAND2X1 U97 ( .A(N41), .B(weight[7]), .Y(n73) );
  INVX2 U98 ( .A(value[6]), .Y(n382) );
  INVX2 U99 ( .A(value[1]), .Y(n385) );
  NAND2X1 U100 ( .A(n386), .B(n385), .Y(n65) );
  INVX2 U101 ( .A(n65), .Y(n68) );
  INVX2 U102 ( .A(value[2]), .Y(n384) );
  NAND2X1 U103 ( .A(n68), .B(n384), .Y(n70) );
  INVX2 U104 ( .A(n70), .Y(n58) );
  INVX2 U105 ( .A(value[3]), .Y(n60) );
  NAND2X1 U106 ( .A(n58), .B(n60), .Y(n61) );
  INVX2 U107 ( .A(n61), .Y(n52) );
  INVX2 U108 ( .A(value[4]), .Y(n54) );
  NAND2X1 U109 ( .A(n52), .B(n54), .Y(n55) );
  INVX2 U110 ( .A(n55), .Y(n74) );
  INVX2 U111 ( .A(value[5]), .Y(n383) );
  NAND2X1 U112 ( .A(n74), .B(n383), .Y(n77) );
  INVX2 U113 ( .A(n77), .Y(n50) );
  NAND3X1 U114 ( .A(value[7]), .B(n382), .C(n50), .Y(n51) );
  NOR2X1 U115 ( .A(n73), .B(n51), .Y(N165) );
  MUX2X1 U116 ( .B(weight[6]), .A(N40), .S(weight[7]), .Y(n79) );
  NOR2X1 U117 ( .A(n79), .B(n51), .Y(N164) );
  MUX2X1 U118 ( .B(weight[5]), .A(N39), .S(weight[7]), .Y(n81) );
  NOR2X1 U119 ( .A(n81), .B(n51), .Y(N163) );
  MUX2X1 U120 ( .B(weight[4]), .A(N38), .S(weight[7]), .Y(n83) );
  NOR2X1 U121 ( .A(n83), .B(n51), .Y(N162) );
  MUX2X1 U122 ( .B(weight[3]), .A(N37), .S(weight[7]), .Y(n85) );
  NOR2X1 U123 ( .A(n85), .B(n51), .Y(N161) );
  MUX2X1 U124 ( .B(N327), .A(N36), .S(weight[7]), .Y(n87) );
  NOR2X1 U125 ( .A(n87), .B(n51), .Y(N160) );
  MUX2X1 U126 ( .B(N326), .A(N35), .S(weight[7]), .Y(n140) );
  NOR2X1 U127 ( .A(n140), .B(n51), .Y(N159) );
  NOR2X1 U128 ( .A(n398), .B(n51), .Y(N158) );
  NOR2X1 U129 ( .A(n52), .B(n54), .Y(n53) );
  MUX2X1 U130 ( .B(n54), .A(n53), .S(value[7]), .Y(n56) );
  NAND2X1 U131 ( .A(n56), .B(n55), .Y(n57) );
  NOR2X1 U132 ( .A(n73), .B(n57), .Y(N129) );
  NOR2X1 U133 ( .A(n79), .B(n57), .Y(N128) );
  NOR2X1 U134 ( .A(n81), .B(n57), .Y(N127) );
  NOR2X1 U135 ( .A(n83), .B(n57), .Y(N126) );
  NOR2X1 U136 ( .A(n85), .B(n57), .Y(N125) );
  NOR2X1 U137 ( .A(n87), .B(n57), .Y(N124) );
  NOR2X1 U138 ( .A(n140), .B(n57), .Y(N123) );
  NOR2X1 U139 ( .A(n398), .B(n57), .Y(N122) );
  NOR2X1 U140 ( .A(n58), .B(n60), .Y(n59) );
  MUX2X1 U141 ( .B(n60), .A(n59), .S(value[7]), .Y(n62) );
  NAND2X1 U142 ( .A(n62), .B(n61), .Y(n63) );
  NOR2X1 U143 ( .A(n73), .B(n63), .Y(N115) );
  NOR2X1 U144 ( .A(n79), .B(n63), .Y(N114) );
  NOR2X1 U145 ( .A(n81), .B(n63), .Y(N113) );
  NOR2X1 U146 ( .A(n83), .B(n63), .Y(N112) );
  NOR2X1 U147 ( .A(n85), .B(n63), .Y(N111) );
  NOR2X1 U148 ( .A(n87), .B(n63), .Y(N110) );
  NOR2X1 U149 ( .A(n140), .B(n63), .Y(N109) );
  NOR2X1 U150 ( .A(n398), .B(n63), .Y(N108) );
  NOR2X1 U151 ( .A(n386), .B(n73), .Y(N67) );
  NOR2X1 U152 ( .A(n386), .B(n79), .Y(N66) );
  NOR2X1 U153 ( .A(n386), .B(n81), .Y(N65) );
  NOR2X1 U154 ( .A(n386), .B(n83), .Y(N64) );
  NOR2X1 U155 ( .A(n386), .B(n85), .Y(N63) );
  NOR2X1 U156 ( .A(n386), .B(n87), .Y(N62) );
  NOR2X1 U157 ( .A(n386), .B(n140), .Y(N61) );
  NOR2X1 U158 ( .A(n386), .B(n398), .Y(N60) );
  NOR2X1 U159 ( .A(n386), .B(n385), .Y(n64) );
  MUX2X1 U160 ( .B(n385), .A(n64), .S(value[7]), .Y(n66) );
  NAND2X1 U161 ( .A(n66), .B(n65), .Y(n67) );
  NOR2X1 U162 ( .A(n73), .B(n67), .Y(N84) );
  NOR2X1 U163 ( .A(n79), .B(n67), .Y(N83) );
  NOR2X1 U164 ( .A(n81), .B(n67), .Y(N82) );
  NOR2X1 U165 ( .A(n83), .B(n67), .Y(N81) );
  NOR2X1 U166 ( .A(n85), .B(n67), .Y(N80) );
  NOR2X1 U167 ( .A(n87), .B(n67), .Y(N79) );
  NOR2X1 U168 ( .A(n140), .B(n67), .Y(N78) );
  NOR2X1 U169 ( .A(n398), .B(n67), .Y(N77) );
  NOR2X1 U170 ( .A(n384), .B(n68), .Y(n69) );
  MUX2X1 U171 ( .B(n384), .A(n69), .S(value[7]), .Y(n71) );
  NAND2X1 U172 ( .A(n71), .B(n70), .Y(n72) );
  NOR2X1 U173 ( .A(n73), .B(n72), .Y(N100) );
  NOR2X1 U174 ( .A(n79), .B(n72), .Y(N99) );
  NOR2X1 U175 ( .A(n81), .B(n72), .Y(N98) );
  NOR2X1 U176 ( .A(n83), .B(n72), .Y(N97) );
  NOR2X1 U177 ( .A(n85), .B(n72), .Y(N96) );
  NOR2X1 U178 ( .A(n87), .B(n72), .Y(N95) );
  NOR2X1 U179 ( .A(n140), .B(n72), .Y(N94) );
  NOR2X1 U180 ( .A(n398), .B(n72), .Y(N93) );
  INVX2 U181 ( .A(n73), .Y(n106) );
  NOR2X1 U182 ( .A(n383), .B(n74), .Y(n75) );
  MUX2X1 U183 ( .B(n383), .A(n75), .S(value[7]), .Y(n76) );
  NAND2X1 U184 ( .A(n76), .B(n77), .Y(n142) );
  INVX2 U185 ( .A(n142), .Y(n90) );
  NAND2X1 U186 ( .A(n106), .B(n90), .Y(n113) );
  NAND2X1 U187 ( .A(value[7]), .B(n77), .Y(n78) );
  INVX2 U188 ( .A(n79), .Y(n80) );
  NAND2X1 U189 ( .A(n3), .B(n80), .Y(n105) );
  INVX2 U190 ( .A(n105), .Y(n114) );
  INVX2 U191 ( .A(n113), .Y(n103) );
  NAND2X1 U192 ( .A(n90), .B(n80), .Y(n118) );
  INVX2 U193 ( .A(n81), .Y(n82) );
  NAND2X1 U194 ( .A(n3), .B(n82), .Y(n102) );
  INVX2 U195 ( .A(n102), .Y(n119) );
  INVX2 U196 ( .A(n118), .Y(n100) );
  NAND2X1 U197 ( .A(n90), .B(n82), .Y(n123) );
  INVX2 U198 ( .A(n83), .Y(n84) );
  NAND2X1 U199 ( .A(n3), .B(n84), .Y(n99) );
  INVX2 U200 ( .A(n99), .Y(n124) );
  INVX2 U201 ( .A(n123), .Y(n97) );
  NAND2X1 U202 ( .A(n90), .B(n84), .Y(n128) );
  INVX2 U203 ( .A(n85), .Y(n86) );
  NAND2X1 U204 ( .A(n3), .B(n86), .Y(n96) );
  INVX2 U205 ( .A(n96), .Y(n129) );
  INVX2 U206 ( .A(n128), .Y(n94) );
  NAND2X1 U207 ( .A(n90), .B(n86), .Y(n133) );
  INVX2 U208 ( .A(n87), .Y(n88) );
  NAND2X1 U209 ( .A(n3), .B(n88), .Y(n93) );
  INVX2 U210 ( .A(n93), .Y(n134) );
  INVX2 U211 ( .A(n133), .Y(n91) );
  NAND2X1 U212 ( .A(n90), .B(n88), .Y(n137) );
  INVX2 U213 ( .A(n140), .Y(n89) );
  NAND2X1 U214 ( .A(n3), .B(n89), .Y(n136) );
  NAND3X1 U215 ( .A(n43), .B(n90), .C(n89), .Y(n138) );
  OAI21X1 U216 ( .A(n137), .B(n136), .C(n138), .Y(n131) );
  OAI21X1 U217 ( .A(n134), .B(n91), .C(n131), .Y(n92) );
  OAI21X1 U218 ( .A(n133), .B(n93), .C(n92), .Y(n126) );
  OAI21X1 U219 ( .A(n129), .B(n94), .C(n126), .Y(n95) );
  OAI21X1 U220 ( .A(n128), .B(n96), .C(n95), .Y(n121) );
  OAI21X1 U221 ( .A(n124), .B(n97), .C(n121), .Y(n98) );
  OAI21X1 U222 ( .A(n123), .B(n99), .C(n98), .Y(n116) );
  OAI21X1 U223 ( .A(n119), .B(n100), .C(n116), .Y(n101) );
  OAI21X1 U224 ( .A(n118), .B(n102), .C(n101), .Y(n111) );
  OAI21X1 U225 ( .A(n114), .B(n103), .C(n111), .Y(n104) );
  OAI21X1 U226 ( .A(n113), .B(n105), .C(n104), .Y(n110) );
  INVX2 U227 ( .A(n110), .Y(n107) );
  NAND2X1 U228 ( .A(n106), .B(n3), .Y(n108) );
  NOR2X1 U229 ( .A(n107), .B(n108), .Y(N181) );
  INVX2 U230 ( .A(n108), .Y(n109) );
  XOR2X1 U231 ( .A(n110), .B(n109), .Y(N180) );
  INVX2 U232 ( .A(n111), .Y(n112) );
  XOR2X1 U233 ( .A(n113), .B(n112), .Y(n115) );
  XOR2X1 U234 ( .A(n115), .B(n114), .Y(N179) );
  INVX2 U235 ( .A(n116), .Y(n117) );
  XOR2X1 U236 ( .A(n118), .B(n117), .Y(n120) );
  XOR2X1 U237 ( .A(n120), .B(n119), .Y(N178) );
  INVX2 U238 ( .A(n121), .Y(n122) );
  XOR2X1 U239 ( .A(n123), .B(n122), .Y(n125) );
  XOR2X1 U240 ( .A(n125), .B(n124), .Y(N177) );
  INVX2 U241 ( .A(n126), .Y(n127) );
  XOR2X1 U242 ( .A(n128), .B(n127), .Y(n130) );
  XOR2X1 U243 ( .A(n130), .B(n129), .Y(N176) );
  INVX2 U244 ( .A(n131), .Y(n132) );
  XOR2X1 U245 ( .A(n133), .B(n132), .Y(n135) );
  XOR2X1 U246 ( .A(n135), .B(n134), .Y(N175) );
  FAX1 U247 ( .A(n138), .B(n137), .C(n136), .YS(n139) );
  INVX2 U248 ( .A(n139), .Y(N174) );
  NOR2X1 U249 ( .A(n140), .B(n142), .Y(n141) );
  XOR2X1 U250 ( .A(n43), .B(n141), .Y(N173) );
  NOR2X1 U251 ( .A(n398), .B(n142), .Y(N172) );
  INVX2 U252 ( .A(weight[7]), .Y(n143) );
  XOR2X1 U253 ( .A(n143), .B(value[7]), .Y(n380) );
  INVX2 U254 ( .A(float), .Y(n370) );
  INVX2 U255 ( .A(N270), .Y(n257) );
  INVX2 U256 ( .A(N327), .Y(n147) );
  INVX2 U257 ( .A(N323), .Y(n145) );
  OAI21X1 U258 ( .A(N323), .B(N326), .C(n18), .Y(n144) );
  OAI21X1 U259 ( .A(n381), .B(n145), .C(n144), .Y(n149) );
  OAI21X1 U260 ( .A(N327), .B(value[2]), .C(n149), .Y(n146) );
  OAI21X1 U261 ( .A(n384), .B(n147), .C(n146), .Y(n148) );
  INVX2 U262 ( .A(n148), .Y(n181) );
  XOR2X1 U263 ( .A(n384), .B(N327), .Y(n151) );
  INVX2 U264 ( .A(n149), .Y(n150) );
  XOR2X1 U265 ( .A(n151), .B(n150), .Y(n188) );
  INVX2 U266 ( .A(n188), .Y(n174) );
  INVX2 U267 ( .A(N319), .Y(n157) );
  NOR2X1 U268 ( .A(n385), .B(n398), .Y(n152) );
  NAND3X1 U269 ( .A(N326), .B(N51), .C(n152), .Y(n153) );
  INVX2 U270 ( .A(n153), .Y(n162) );
  OAI21X1 U271 ( .A(N318), .B(N315), .C(n162), .Y(n155) );
  NAND2X1 U272 ( .A(N315), .B(N318), .Y(n154) );
  NAND2X1 U273 ( .A(n155), .B(n154), .Y(n161) );
  OAI21X1 U274 ( .A(N319), .B(N51), .C(n161), .Y(n156) );
  OAI21X1 U275 ( .A(n386), .B(n157), .C(n156), .Y(n158) );
  NAND2X1 U276 ( .A(n158), .B(value[1]), .Y(n186) );
  INVX2 U277 ( .A(n186), .Y(n172) );
  XOR2X1 U278 ( .A(n158), .B(value[1]), .Y(n196) );
  INVX2 U279 ( .A(n196), .Y(n171) );
  XOR2X1 U280 ( .A(n381), .B(N323), .Y(n159) );
  XOR2X1 U281 ( .A(n159), .B(n18), .Y(n198) );
  INVX2 U282 ( .A(n198), .Y(n169) );
  XOR2X1 U283 ( .A(N319), .B(N51), .Y(n160) );
  XOR2X1 U284 ( .A(n161), .B(n160), .Y(n166) );
  INVX2 U285 ( .A(n166), .Y(n214) );
  XOR2X1 U286 ( .A(n398), .B(N322), .Y(n168) );
  INVX2 U287 ( .A(n168), .Y(n213) );
  XOR2X1 U288 ( .A(N318), .B(N315), .Y(n163) );
  XOR2X1 U289 ( .A(n163), .B(n162), .Y(n164) );
  NAND3X1 U290 ( .A(N34), .B(value[2]), .C(n164), .Y(n165) );
  INVX2 U291 ( .A(n165), .Y(n216) );
  OAI21X1 U292 ( .A(n166), .B(n213), .C(n216), .Y(n167) );
  OAI21X1 U293 ( .A(n214), .B(n168), .C(n167), .Y(n197) );
  OAI21X1 U294 ( .A(n169), .B(n196), .C(n197), .Y(n170) );
  OAI21X1 U295 ( .A(n171), .B(n198), .C(n170), .Y(n187) );
  OAI21X1 U296 ( .A(n172), .B(n188), .C(n187), .Y(n173) );
  OAI21X1 U297 ( .A(n174), .B(n186), .C(n173), .Y(n175) );
  INVX2 U298 ( .A(n175), .Y(n180) );
  NAND2X1 U299 ( .A(n181), .B(n180), .Y(n178) );
  INVX2 U300 ( .A(n380), .Y(n176) );
  INVX2 U301 ( .A(N280), .Y(n332) );
  INVX2 U302 ( .A(N264), .Y(n228) );
  INVX2 U303 ( .A(N265), .Y(n226) );
  NAND2X1 U304 ( .A(n13), .B(n226), .Y(n217) );
  XOR2X1 U305 ( .A(n256), .B(N270), .Y(n177) );
  AOI22X1 U306 ( .A(float), .B(n178), .C(n7), .D(n177), .Y(n179) );
  OAI21X1 U307 ( .A(n48), .B(n257), .C(n179), .Y(n306) );
  XOR2X1 U308 ( .A(n181), .B(n180), .Y(n185) );
  XOR2X1 U309 ( .A(n182), .B(N269), .Y(n183) );
  AOI22X1 U310 ( .A(n7), .B(n183), .C(N269), .D(n12), .Y(n184) );
  OAI21X1 U311 ( .A(n185), .B(n370), .C(n184), .Y(n278) );
  NAND2X1 U312 ( .A(n281), .B(n278), .Y(n232) );
  INVX2 U313 ( .A(n232), .Y(n252) );
  INVX2 U314 ( .A(n278), .Y(n365) );
  NAND2X1 U315 ( .A(n281), .B(n365), .Y(n203) );
  INVX2 U316 ( .A(n203), .Y(n221) );
  FAX1 U317 ( .A(n188), .B(n187), .C(n186), .YS(n192) );
  XOR2X1 U318 ( .A(n189), .B(N268), .Y(n190) );
  AOI22X1 U319 ( .A(N268), .B(n12), .C(n7), .D(n190), .Y(n191) );
  OAI21X1 U320 ( .A(n192), .B(n370), .C(n191), .Y(n276) );
  NAND2X1 U321 ( .A(n221), .B(n276), .Y(n233) );
  INVX2 U322 ( .A(n233), .Y(n251) );
  AOI22X1 U323 ( .A(N413), .B(n252), .C(n28), .D(n251), .Y(n193) );
  INVX2 U324 ( .A(n193), .Y(n194) );
  AOI21X1 U325 ( .A(N389), .B(n306), .C(n194), .Y(n195) );
  OAI21X1 U326 ( .A(n479), .B(n195), .C(n544), .Y(exponent_product[3]) );
  INVX2 U327 ( .A(n276), .Y(n358) );
  FAX1 U328 ( .A(n198), .B(n197), .C(n196), .YS(n202) );
  XOR2X1 U329 ( .A(n199), .B(N267), .Y(n200) );
  AOI22X1 U330 ( .A(N267), .B(n12), .C(n7), .D(n200), .Y(n201) );
  OAI21X1 U331 ( .A(n370), .B(n202), .C(n201), .Y(n274) );
  NOR2X1 U332 ( .A(n274), .B(n203), .Y(n204) );
  NAND3X1 U333 ( .A(n547), .B(n358), .C(n204), .Y(n539) );
  NOR2X1 U334 ( .A(n25), .B(n281), .Y(n206) );
  OAI21X1 U335 ( .A(n232), .B(n27), .C(n540), .Y(n205) );
  OAI21X1 U336 ( .A(n206), .B(n205), .C(float), .Y(n400) );
  INVX2 U337 ( .A(n400), .Y(\gte_183/A[2] ) );
  NOR2X1 U338 ( .A(N435), .B(n281), .Y(n208) );
  OAI21X1 U339 ( .A(n232), .B(N459), .C(n541), .Y(n207) );
  OAI21X1 U340 ( .A(n208), .B(n207), .C(float), .Y(n401) );
  INVX2 U341 ( .A(n401), .Y(\gte_183/A[1] ) );
  NAND2X1 U342 ( .A(n281), .B(n233), .Y(n209) );
  OAI21X1 U343 ( .A(n252), .B(n209), .C(n542), .Y(n210) );
  INVX2 U344 ( .A(n210), .Y(n379) );
  NAND2X1 U345 ( .A(N410), .B(n252), .Y(n211) );
  OAI21X1 U346 ( .A(n548), .B(n281), .C(n211), .Y(n212) );
  OAI21X1 U347 ( .A(n379), .B(n212), .C(float), .Y(n523) );
  INVX2 U348 ( .A(n523), .Y(n378) );
  INVX2 U349 ( .A(exponent_product[4]), .Y(n387) );
  INVX2 U350 ( .A(exponent_product[3]), .Y(n399) );
  INVX2 U351 ( .A(cumulative[3]), .Y(n273) );
  NAND2X1 U352 ( .A(n378), .B(n273), .Y(\sub_197/carry[1] ) );
  OAI22X1 U353 ( .A(n365), .B(n281), .C(n358), .D(n232), .Y(n223) );
  XOR2X1 U354 ( .A(n214), .B(n213), .Y(n215) );
  XOR2X1 U355 ( .A(n216), .B(n215), .Y(n220) );
  XOR2X1 U356 ( .A(n217), .B(N266), .Y(n218) );
  AOI22X1 U357 ( .A(n7), .B(n218), .C(N266), .D(n12), .Y(n219) );
  OAI21X1 U358 ( .A(n220), .B(n370), .C(n219), .Y(n271) );
  INVX2 U359 ( .A(n271), .Y(n348) );
  NAND3X1 U360 ( .A(n221), .B(n358), .C(n274), .Y(n250) );
  OAI22X1 U361 ( .A(n354), .B(n233), .C(n348), .D(n250), .Y(n222) );
  OAI21X1 U362 ( .A(n223), .B(n222), .C(n496), .Y(n224) );
  INVX2 U363 ( .A(n224), .Y(n249) );
  MUX2X1 U364 ( .B(cumulative[2]), .A(n249), .S(n436), .Y(n405) );
  INVX2 U365 ( .A(n405), .Y(\m_large[2] ) );
  XOR2X1 U366 ( .A(N265), .B(n13), .Y(n225) );
  OAI22X1 U367 ( .A(n48), .B(n226), .C(n225), .D(n49), .Y(n268) );
  INVX2 U368 ( .A(n268), .Y(n343) );
  OAI22X1 U369 ( .A(n354), .B(n281), .C(n343), .D(n233), .Y(n230) );
  XOR2X1 U370 ( .A(n332), .B(N264), .Y(n227) );
  OAI22X1 U371 ( .A(n48), .B(n228), .C(n227), .D(n49), .Y(n265) );
  INVX2 U372 ( .A(n265), .Y(n337) );
  OAI22X1 U373 ( .A(n348), .B(n232), .C(n337), .D(n250), .Y(n229) );
  OAI21X1 U374 ( .A(n230), .B(n229), .C(n496), .Y(n231) );
  INVX2 U375 ( .A(n231), .Y(n244) );
  MUX2X1 U376 ( .B(cumulative[0]), .A(n244), .S(n436), .Y(n407) );
  OAI22X1 U377 ( .A(n358), .B(n281), .C(n354), .D(n232), .Y(n235) );
  OAI22X1 U378 ( .A(n343), .B(n250), .C(n348), .D(n233), .Y(n234) );
  OAI21X1 U379 ( .A(n235), .B(n234), .C(n496), .Y(n246) );
  INVX2 U380 ( .A(n246), .Y(n245) );
  MUX2X1 U381 ( .B(cumulative[1]), .A(n245), .S(n436), .Y(n406) );
  INVX2 U382 ( .A(n406), .Y(n376) );
  INVX2 U383 ( .A(n407), .Y(n377) );
  OAI21X1 U384 ( .A(\sub_218/A[1] ), .B(n376), .C(n17), .Y(n236) );
  OAI21X1 U385 ( .A(n406), .B(n475), .C(n236), .Y(\add_213/carry[2] ) );
  INVX2 U386 ( .A(n436), .Y(n388) );
  INVX2 U387 ( .A(n427), .Y(n390) );
  INVX2 U388 ( .A(N544), .Y(n237) );
  OAI21X1 U389 ( .A(n461), .B(n237), .C(n470), .Y(n430) );
  INVX2 U390 ( .A(n430), .Y(n375) );
  INVX2 U391 ( .A(n454), .Y(n238) );
  NAND2X1 U392 ( .A(n375), .B(n238), .Y(n447) );
  INVX2 U393 ( .A(n447), .Y(n374) );
  XOR2X1 U394 ( .A(n406), .B(\sub_218/A[1] ), .Y(n239) );
  XOR2X1 U395 ( .A(n239), .B(n17), .Y(n240) );
  OAI21X1 U396 ( .A(n461), .B(n240), .C(n469), .Y(n457) );
  INVX2 U397 ( .A(n457), .Y(n456) );
  XOR2X1 U398 ( .A(n407), .B(\sub_218/A[0] ), .Y(n241) );
  OAI21X1 U399 ( .A(n461), .B(n241), .C(n468), .Y(n242) );
  INVX2 U400 ( .A(n242), .Y(n373) );
  INVX2 U401 ( .A(n461), .Y(n389) );
  OAI21X1 U402 ( .A(n378), .B(n273), .C(\sub_197/carry[1] ), .Y(N521) );
  INVX2 U403 ( .A(N521), .Y(n243) );
  MUX2X1 U404 ( .B(n245), .A(n244), .S(n243), .Y(n494) );
  OAI21X1 U405 ( .A(N521), .B(n249), .C(n496), .Y(n495) );
  INVX2 U406 ( .A(N523), .Y(n392) );
  INVX2 U407 ( .A(n508), .Y(n247) );
  NOR2X1 U408 ( .A(n247), .B(n246), .Y(n501) );
  INVX2 U409 ( .A(n505), .Y(n248) );
  NAND2X1 U410 ( .A(n248), .B(n249), .Y(n504) );
  INVX2 U411 ( .A(N522), .Y(n391) );
  AOI22X1 U412 ( .A(n518), .B(N521), .C(n508), .D(n249), .Y(n516) );
  INVX2 U413 ( .A(n250), .Y(n255) );
  AOI22X1 U414 ( .A(N414), .B(n252), .C(N438), .D(n251), .Y(n254) );
  AOI22X1 U415 ( .A(N462), .B(n255), .C(N390), .D(n306), .Y(n253) );
  AND2X2 U416 ( .A(n254), .B(n253), .Y(n543) );
  OAI21X1 U417 ( .A(N461), .B(n542), .C(n255), .Y(n546) );
  INVX2 U418 ( .A(N278), .Y(n261) );
  INVX2 U419 ( .A(n256), .Y(n258) );
  INVX2 U420 ( .A(N271), .Y(n283) );
  INVX2 U421 ( .A(N272), .Y(n286) );
  INVX2 U422 ( .A(N273), .Y(n289) );
  INVX2 U423 ( .A(N274), .Y(n292) );
  INVX2 U424 ( .A(N275), .Y(n295) );
  INVX2 U425 ( .A(N276), .Y(n263) );
  NAND2X1 U426 ( .A(n34), .B(n263), .Y(n297) );
  NOR2X1 U427 ( .A(N277), .B(n297), .Y(n259) );
  XOR2X1 U428 ( .A(N278), .B(n259), .Y(n260) );
  OAI22X1 U429 ( .A(n48), .B(n261), .C(n260), .D(n49), .Y(n301) );
  XOR2X1 U430 ( .A(N276), .B(n34), .Y(n262) );
  OAI22X1 U431 ( .A(n48), .B(n263), .C(n262), .D(n49), .Y(n264) );
  INVX2 U432 ( .A(n264), .Y(n315) );
  INVX2 U433 ( .A(cumulative[2]), .Y(n270) );
  INVX2 U434 ( .A(cumulative[1]), .Y(n267) );
  OAI21X1 U435 ( .A(cumulative[1]), .B(n265), .C(n14), .Y(n266) );
  OAI21X1 U436 ( .A(n337), .B(n267), .C(n266), .Y(n342) );
  OAI21X1 U437 ( .A(cumulative[2]), .B(n268), .C(n342), .Y(n269) );
  OAI21X1 U438 ( .A(n343), .B(n270), .C(n269), .Y(n347) );
  OAI21X1 U439 ( .A(cumulative[3]), .B(n271), .C(n347), .Y(n272) );
  OAI21X1 U440 ( .A(n348), .B(n273), .C(n272), .Y(n352) );
  OAI21X1 U441 ( .A(cumulative[4]), .B(n274), .C(n352), .Y(n275) );
  OAI21X1 U442 ( .A(n354), .B(n442), .C(n275), .Y(n357) );
  OAI21X1 U443 ( .A(cumulative[5]), .B(n276), .C(n357), .Y(n277) );
  OAI21X1 U444 ( .A(n358), .B(n538), .C(n277), .Y(n363) );
  OAI21X1 U445 ( .A(cumulative[6]), .B(n278), .C(n363), .Y(n279) );
  OAI21X1 U446 ( .A(n365), .B(n527), .C(n279), .Y(n280) );
  INVX2 U447 ( .A(n280), .Y(n307) );
  XOR2X1 U448 ( .A(N271), .B(n39), .Y(n282) );
  OAI22X1 U449 ( .A(n48), .B(n283), .C(n282), .D(n49), .Y(n284) );
  INVX2 U450 ( .A(n284), .Y(n309) );
  XOR2X1 U451 ( .A(N272), .B(n30), .Y(n285) );
  OAI22X1 U452 ( .A(n48), .B(n286), .C(n285), .D(n49), .Y(n302) );
  INVX2 U453 ( .A(n302), .Y(n287) );
  XOR2X1 U454 ( .A(N273), .B(n31), .Y(n288) );
  OAI22X1 U455 ( .A(n48), .B(n289), .C(n288), .D(n49), .Y(n304) );
  INVX2 U456 ( .A(n304), .Y(n290) );
  XOR2X1 U457 ( .A(N274), .B(n32), .Y(n291) );
  OAI22X1 U458 ( .A(n48), .B(n292), .C(n291), .D(n49), .Y(n293) );
  INVX2 U459 ( .A(n293), .Y(n321) );
  XOR2X1 U460 ( .A(N275), .B(n33), .Y(n294) );
  OAI22X1 U461 ( .A(n48), .B(n295), .C(n294), .D(n49), .Y(n296) );
  INVX2 U462 ( .A(n296), .Y(n319) );
  NAND2X1 U463 ( .A(n315), .B(n38), .Y(n318) );
  XNOR2X1 U464 ( .A(N277), .B(n297), .Y(n299) );
  NAND2X1 U465 ( .A(N277), .B(n12), .Y(n298) );
  OAI21X1 U466 ( .A(n49), .B(n299), .C(n298), .Y(n316) );
  NOR2X1 U467 ( .A(n318), .B(n316), .Y(n300) );
  XOR2X1 U468 ( .A(n301), .B(n300), .Y(n331) );
  XOR2X1 U469 ( .A(n302), .B(cumulative[7]), .Y(n303) );
  XOR2X1 U470 ( .A(n303), .B(n40), .Y(n313) );
  XOR2X1 U471 ( .A(n304), .B(cumulative[7]), .Y(n305) );
  XOR2X1 U472 ( .A(n305), .B(n35), .Y(n312) );
  XOR2X1 U473 ( .A(n306), .B(cumulative[7]), .Y(n308) );
  XOR2X1 U474 ( .A(n308), .B(n307), .Y(n372) );
  XOR2X1 U475 ( .A(cumulative[7]), .B(n309), .Y(n310) );
  NAND3X1 U476 ( .A(n313), .B(n312), .C(n311), .Y(n329) );
  NOR2X1 U477 ( .A(cumulative[7]), .B(n38), .Y(n314) );
  XOR2X1 U478 ( .A(n315), .B(n314), .Y(n327) );
  XOR2X1 U479 ( .A(n318), .B(n317), .Y(n326) );
  XOR2X1 U480 ( .A(cumulative[7]), .B(n319), .Y(n320) );
  XOR2X1 U481 ( .A(n37), .B(n320), .Y(n324) );
  XOR2X1 U482 ( .A(cumulative[7]), .B(n321), .Y(n322) );
  XOR2X1 U483 ( .A(n36), .B(n322), .Y(n323) );
  NOR2X1 U484 ( .A(n324), .B(n323), .Y(n325) );
  NAND3X1 U485 ( .A(n327), .B(n326), .C(n325), .Y(n328) );
  OAI21X1 U486 ( .A(n329), .B(n328), .C(n370), .Y(n330) );
  OAI21X1 U487 ( .A(n375), .B(n370), .C(n360), .Y(overflow) );
  XOR2X1 U488 ( .A(n332), .B(cumulative[0]), .Y(n335) );
  NAND2X1 U489 ( .A(n360), .B(n370), .Y(n371) );
  OAI22X1 U490 ( .A(n456), .B(n375), .C(n447), .D(n373), .Y(n333) );
  INVX2 U491 ( .A(n360), .Y(n366) );
  AOI21X1 U492 ( .A(float), .B(n333), .C(n366), .Y(n334) );
  OAI21X1 U493 ( .A(n335), .B(n5), .C(n334), .Y(out[0]) );
  XOR2X1 U494 ( .A(cumulative[1]), .B(n14), .Y(n336) );
  XOR2X1 U495 ( .A(n337), .B(n336), .Y(n341) );
  INVX2 U496 ( .A(n460), .Y(n338) );
  OAI21X1 U497 ( .A(n447), .B(n456), .C(n338), .Y(n339) );
  AOI21X1 U498 ( .A(float), .B(n339), .C(n366), .Y(n340) );
  OAI21X1 U499 ( .A(n341), .B(n6), .C(n340), .Y(out[1]) );
  XOR2X1 U500 ( .A(n342), .B(cumulative[2]), .Y(n344) );
  XOR2X1 U501 ( .A(n344), .B(n343), .Y(n346) );
  AND2X2 U502 ( .A(n451), .B(n360), .Y(n345) );
  OAI21X1 U503 ( .A(n346), .B(n6), .C(n345), .Y(out[2]) );
  XOR2X1 U504 ( .A(n347), .B(cumulative[3]), .Y(n349) );
  XOR2X1 U505 ( .A(n349), .B(n348), .Y(n351) );
  AND2X2 U506 ( .A(n448), .B(n360), .Y(n350) );
  OAI21X1 U507 ( .A(n351), .B(n6), .C(n350), .Y(out[3]) );
  XOR2X1 U508 ( .A(n354), .B(n353), .Y(n355) );
  AOI21X1 U509 ( .A(n368), .B(n355), .C(n366), .Y(n356) );
  OAI21X1 U510 ( .A(n440), .B(n370), .C(n356), .Y(out[4]) );
  XOR2X1 U511 ( .A(n357), .B(cumulative[5]), .Y(n359) );
  XOR2X1 U512 ( .A(n359), .B(n358), .Y(n362) );
  AND2X2 U513 ( .A(n431), .B(n360), .Y(n361) );
  OAI21X1 U514 ( .A(n362), .B(n6), .C(n361), .Y(out[5]) );
  XOR2X1 U515 ( .A(n365), .B(n364), .Y(n367) );
  AOI21X1 U516 ( .A(n368), .B(n367), .C(n366), .Y(n369) );
  OAI21X1 U517 ( .A(n412), .B(n370), .C(n369), .Y(out[6]) );
  OAI22X1 U518 ( .A(n372), .B(n6), .C(n408), .D(n370), .Y(out[7]) );
  INVX2 U526 ( .A(weight[6]), .Y(n393) );
  INVX2 U527 ( .A(weight[5]), .Y(n394) );
  INVX2 U528 ( .A(weight[4]), .Y(n395) );
  INVX2 U529 ( .A(weight[3]), .Y(n396) );
  INVX2 U530 ( .A(N327), .Y(n397) );
  XNOR2X1 U531 ( .A(weight[7]), .B(n24), .Y(N41) );
  INVX2 U532 ( .A(N386), .Y(N410) );
  INVX2 U533 ( .A(\sub_218/A[3] ), .Y(n402) );
  INVX2 U534 ( .A(\sub_218/A[2] ), .Y(n403) );
  INVX2 U535 ( .A(\sub_218/A[0] ), .Y(n404) );
  INVX2 U536 ( .A(\sub_216/carry[4] ), .Y(N550) );
  INVX2 U537 ( .A(\sub_218/carry[4] ), .Y(N555) );
  MUX2X1 U538 ( .B(n409), .A(n410), .S(n411), .Y(n408) );
  MUX2X1 U539 ( .B(n413), .A(n414), .S(n415), .Y(n412) );
  MUX2X1 U540 ( .B(exponent_product[3]), .A(cumulative[6]), .S(n388), .Y(n415)
         );
  NAND2X1 U541 ( .A(n416), .B(n417), .Y(n414) );
  MUX2X1 U542 ( .B(n418), .A(n419), .S(n390), .Y(n416) );
  NOR2X1 U543 ( .A(n420), .B(n421), .Y(n419) );
  NOR2X1 U544 ( .A(n422), .B(n423), .Y(n418) );
  NAND3X1 U545 ( .A(n424), .B(n425), .C(n426), .Y(n413) );
  OAI21X1 U546 ( .A(n427), .B(n420), .C(n428), .Y(n425) );
  MUX2X1 U547 ( .B(n429), .A(n430), .S(n422), .Y(n424) );
  OAI21X1 U548 ( .A(n432), .B(n433), .C(float), .Y(n431) );
  OAI21X1 U549 ( .A(n420), .B(n421), .C(n417), .Y(n433) );
  NAND3X1 U550 ( .A(n390), .B(n422), .C(n434), .Y(n417) );
  XOR2X1 U551 ( .A(n390), .B(n422), .Y(n420) );
  MUX2X1 U552 ( .B(n426), .A(n435), .S(n422), .Y(n432) );
  MUX2X1 U553 ( .B(cumulative[5]), .A(\gte_183/A[2] ), .S(n436), .Y(n422) );
  OR2X1 U554 ( .A(n423), .B(n390), .Y(n435) );
  NOR2X1 U555 ( .A(n437), .B(n438), .Y(n426) );
  MUX2X1 U556 ( .B(n375), .A(n439), .S(n427), .Y(n437) );
  MUX2X1 U557 ( .B(n438), .A(n441), .S(n390), .Y(n440) );
  MUX2X1 U558 ( .B(n401), .A(n442), .S(n388), .Y(n427) );
  NAND3X1 U559 ( .A(n443), .B(n423), .C(n421), .Y(n441) );
  NAND2X1 U560 ( .A(n444), .B(n430), .Y(n423) );
  INVX1 U561 ( .A(n445), .Y(n444) );
  NAND2X1 U562 ( .A(n446), .B(n447), .Y(n438) );
  MUX2X1 U563 ( .B(n429), .A(n430), .S(n445), .Y(n446) );
  OAI21X1 U564 ( .A(n434), .B(n449), .C(float), .Y(n448) );
  MUX2X1 U565 ( .B(n450), .A(n375), .S(n445), .Y(n449) );
  NOR2X1 U566 ( .A(n428), .B(n374), .Y(n450) );
  INVX1 U567 ( .A(n421), .Y(n428) );
  INVX1 U568 ( .A(n443), .Y(n434) );
  NAND2X1 U569 ( .A(n429), .B(n445), .Y(n443) );
  MUX2X1 U570 ( .B(n378), .A(cumulative[3]), .S(n388), .Y(n445) );
  INVX1 U571 ( .A(n439), .Y(n429) );
  OAI21X1 U572 ( .A(n452), .B(n453), .C(float), .Y(n451) );
  OAI22X1 U573 ( .A(n375), .B(n454), .C(n455), .D(n447), .Y(n453) );
  OAI22X1 U574 ( .A(n456), .B(n439), .C(n373), .D(n421), .Y(n452) );
  NAND3X1 U575 ( .A(n454), .B(n457), .C(n458), .Y(n421) );
  NOR2X1 U576 ( .A(n430), .B(n459), .Y(n458) );
  OAI22X1 U577 ( .A(n375), .B(n455), .C(n373), .D(n439), .Y(n460) );
  NAND3X1 U578 ( .A(n454), .B(n459), .C(n375), .Y(n439) );
  INVX1 U579 ( .A(n459), .Y(n455) );
  OAI21X1 U580 ( .A(n461), .B(n462), .C(n463), .Y(n459) );
  AOI22X1 U581 ( .A(N548), .B(n464), .C(N553), .D(n465), .Y(n463) );
  INVX1 U582 ( .A(N542), .Y(n462) );
  AOI21X1 U583 ( .A(n389), .B(N543), .C(n466), .Y(n454) );
  INVX1 U584 ( .A(n467), .Y(n466) );
  AOI22X1 U585 ( .A(N549), .B(n464), .C(N554), .D(n465), .Y(n467) );
  AOI22X1 U586 ( .A(N546), .B(n464), .C(N551), .D(n465), .Y(n468) );
  AOI22X1 U587 ( .A(N547), .B(n464), .C(N552), .D(n465), .Y(n469) );
  AOI22X1 U588 ( .A(N550), .B(n464), .C(N555), .D(n465), .Y(n470) );
  NOR2X1 U589 ( .A(n411), .B(n389), .Y(n465) );
  AND2X1 U590 ( .A(n461), .B(n411), .Y(n464) );
  OAI21X1 U591 ( .A(\sub_218/A[3] ), .B(n471), .C(n472), .Y(n411) );
  OAI21X1 U592 ( .A(n403), .B(\m_large[2] ), .C(n473), .Y(n472) );
  AOI21X1 U593 ( .A(n471), .B(\sub_218/A[3] ), .C(n474), .Y(n473) );
  AOI21X1 U594 ( .A(n376), .B(n475), .C(n476), .Y(n474) );
  OAI21X1 U595 ( .A(\sub_218/A[2] ), .B(n405), .C(n477), .Y(n476) );
  OAI22X1 U596 ( .A(n475), .B(n376), .C(n404), .D(n377), .Y(n477) );
  INVX1 U597 ( .A(\sub_218/A[1] ), .Y(n475) );
  INVX1 U598 ( .A(\sub_218/B[3] ), .Y(n471) );
  XOR2X1 U599 ( .A(n409), .B(n410), .Y(n461) );
  MUX2X1 U600 ( .B(n380), .A(n478), .S(n388), .Y(n410) );
  MUX2X1 U601 ( .B(n478), .A(n380), .S(n388), .Y(n409) );
  INVX1 U602 ( .A(cumulative[7]), .Y(n478) );
  NAND2X1 U603 ( .A(n436), .B(n479), .Y(\sub_218/B[3] ) );
  OAI22X1 U604 ( .A(n480), .B(n481), .C(n482), .D(n483), .Y(\sub_218/A[0] ) );
  NAND2X1 U605 ( .A(n484), .B(n485), .Y(n483) );
  INVX1 U606 ( .A(n486), .Y(n485) );
  MUX2X1 U607 ( .B(n487), .A(n488), .S(N506), .Y(n484) );
  NOR2X1 U608 ( .A(cumulative[2]), .B(N505), .Y(n488) );
  MUX2X1 U609 ( .B(cumulative[0]), .A(cumulative[1]), .S(N505), .Y(n487) );
  NAND3X1 U610 ( .A(n489), .B(n490), .C(n491), .Y(n482) );
  INVX1 U611 ( .A(N509), .Y(n490) );
  INVX1 U612 ( .A(N508), .Y(n489) );
  NAND2X1 U613 ( .A(n492), .B(n493), .Y(n481) );
  MUX2X1 U614 ( .B(n494), .A(n495), .S(N522), .Y(n492) );
  NAND3X1 U615 ( .A(n497), .B(n498), .C(n392), .Y(n480) );
  INVX1 U616 ( .A(N525), .Y(n498) );
  INVX1 U617 ( .A(N524), .Y(n497) );
  OAI21X1 U618 ( .A(n499), .B(n486), .C(n500), .Y(\sub_218/A[1] ) );
  OAI21X1 U619 ( .A(n501), .B(n502), .C(n493), .Y(n500) );
  MUX2X1 U620 ( .B(n503), .A(n504), .S(N521), .Y(n502) );
  NAND3X1 U621 ( .A(n506), .B(n392), .C(n507), .Y(n503) );
  NOR2X1 U622 ( .A(n479), .B(n391), .Y(n507) );
  AOI21X1 U623 ( .A(cumulative[1]), .B(n509), .C(n510), .Y(n499) );
  MUX2X1 U624 ( .B(n511), .A(n512), .S(N505), .Y(n510) );
  NAND2X1 U625 ( .A(cumulative[2]), .B(n513), .Y(n512) );
  NAND3X1 U626 ( .A(N506), .B(n491), .C(n514), .Y(n511) );
  OAI22X1 U627 ( .A(n515), .B(n486), .C(n516), .D(n517), .Y(\sub_218/A[2] ) );
  NOR2X1 U628 ( .A(n479), .B(n505), .Y(n518) );
  AOI22X1 U629 ( .A(N505), .B(n513), .C(cumulative[2]), .D(n509), .Y(n515) );
  INVX1 U630 ( .A(n519), .Y(n513) );
  OAI21X1 U631 ( .A(n520), .B(n486), .C(n521), .Y(\sub_218/A[3] ) );
  NAND3X1 U632 ( .A(n508), .B(n496), .C(n493), .Y(n521) );
  INVX1 U633 ( .A(n517), .Y(n493) );
  OAI21X1 U634 ( .A(exponent_product[3]), .B(n522), .C(n388), .Y(n517) );
  NOR2X1 U635 ( .A(n523), .B(n524), .Y(n522) );
  NAND2X1 U636 ( .A(\gte_183/A[1] ), .B(\gte_183/A[2] ), .Y(n524) );
  NOR2X1 U637 ( .A(n505), .B(N521), .Y(n508) );
  NAND3X1 U638 ( .A(n391), .B(n392), .C(n506), .Y(n505) );
  NOR2X1 U639 ( .A(N525), .B(N524), .Y(n506) );
  NAND2X1 U640 ( .A(n525), .B(n436), .Y(n486) );
  OAI21X1 U641 ( .A(n442), .B(n526), .C(n527), .Y(n525) );
  NAND2X1 U642 ( .A(cumulative[3]), .B(cumulative[5]), .Y(n526) );
  INVX1 U643 ( .A(n509), .Y(n520) );
  NOR2X1 U644 ( .A(n519), .B(N505), .Y(n509) );
  NAND3X1 U645 ( .A(n528), .B(n491), .C(n514), .Y(n519) );
  NOR2X1 U646 ( .A(N509), .B(N508), .Y(n514) );
  INVX1 U647 ( .A(N507), .Y(n491) );
  INVX1 U648 ( .A(N506), .Y(n528) );
  NAND3X1 U649 ( .A(n529), .B(n387), .C(n530), .Y(n436) );
  AOI22X1 U650 ( .A(n531), .B(n532), .C(exponent_product[3]), .D(n527), .Y(
        n530) );
  OAI21X1 U651 ( .A(n533), .B(n401), .C(n534), .Y(n532) );
  OAI21X1 U652 ( .A(\gte_183/A[1] ), .B(n535), .C(n442), .Y(n534) );
  INVX1 U653 ( .A(cumulative[4]), .Y(n442) );
  INVX1 U654 ( .A(n535), .Y(n533) );
  NAND2X1 U655 ( .A(cumulative[3]), .B(n523), .Y(n535) );
  AOI21X1 U656 ( .A(cumulative[5]), .B(n400), .C(n536), .Y(n531) );
  NAND3X1 U657 ( .A(n537), .B(n538), .C(\gte_183/A[2] ), .Y(n529) );
  INVX1 U658 ( .A(cumulative[5]), .Y(n538) );
  INVX1 U659 ( .A(n536), .Y(n537) );
  NOR2X1 U660 ( .A(n527), .B(exponent_product[3]), .Y(n536) );
  INVX1 U661 ( .A(cumulative[6]), .Y(n527) );
  INVX1 U662 ( .A(n479), .Y(n496) );
  AOI21X1 U663 ( .A(n11), .B(N460), .C(n379), .Y(n540) );
  AOI21X1 U664 ( .A(n11), .B(N459), .C(n379), .Y(n541) );
  NAND2X1 U665 ( .A(float), .B(n545), .Y(n544) );
  OAI21X1 U666 ( .A(n539), .B(n23), .C(n546), .Y(n545) );
  NAND2X1 U667 ( .A(n547), .B(float), .Y(n479) );
  INVX1 U668 ( .A(n542), .Y(n547) );
  INVX1 U669 ( .A(N386), .Y(n548) );
  NAND2X1 U670 ( .A(n549), .B(n550), .Y(n542) );
  OAI21X1 U671 ( .A(n383), .B(n551), .C(n382), .Y(n550) );
  NAND2X1 U672 ( .A(value[4]), .B(value[3]), .Y(n551) );
  OAI21X1 U673 ( .A(n552), .B(n553), .C(n554), .Y(n549) );
  INVX1 U674 ( .A(weight[6]), .Y(n554) );
  NAND2X1 U675 ( .A(weight[4]), .B(weight[3]), .Y(n553) );
  INVX1 U676 ( .A(weight[5]), .Y(n552) );
  NOR2X1 U677 ( .A(n384), .B(n555), .Y(N323) );
  NOR2X1 U678 ( .A(n384), .B(n381), .Y(N322) );
  NOR2X1 U679 ( .A(n555), .B(n385), .Y(N319) );
  NOR2X1 U680 ( .A(n381), .B(n385), .Y(N318) );
  NOR2X1 U681 ( .A(n386), .B(n555), .Y(N315) );
  INVX1 U682 ( .A(N327), .Y(n555) );
endmodule


module bias_adder ( array_outputs, bias, float, input_valid, output_valid, 
        bias_outputs, overflow );
  input [63:0] array_outputs;
  input [63:0] bias;
  output [63:0] bias_outputs;
  input float, input_valid;
  output output_valid, overflow;
  wire   N3, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154;
  wire   [63:0] int_out;
  wire   [63:0] float_out;
  wire   [7:0] overflow_float;
  assign overflow = N3;

  AOI22X1 U74 ( .A(int_out[9]), .B(n142), .C(float_out[9]), .D(n137), .Y(n73)
         );
  AOI22X1 U75 ( .A(int_out[8]), .B(n142), .C(float_out[8]), .D(n137), .Y(n74)
         );
  AOI22X1 U76 ( .A(int_out[7]), .B(n147), .C(float_out[7]), .D(n137), .Y(n75)
         );
  AOI22X1 U77 ( .A(int_out[6]), .B(n142), .C(float_out[6]), .D(n137), .Y(n76)
         );
  AOI22X1 U78 ( .A(int_out[63]), .B(n148), .C(float_out[63]), .D(n137), .Y(n77) );
  AOI22X1 U79 ( .A(int_out[62]), .B(n143), .C(float_out[62]), .D(n137), .Y(n78) );
  AOI22X1 U80 ( .A(int_out[61]), .B(n142), .C(float_out[61]), .D(n137), .Y(n79) );
  AOI22X1 U81 ( .A(int_out[60]), .B(n142), .C(float_out[60]), .D(n137), .Y(n80) );
  AOI22X1 U82 ( .A(int_out[5]), .B(n142), .C(float_out[5]), .D(n137), .Y(n81)
         );
  AOI22X1 U83 ( .A(int_out[59]), .B(n144), .C(float_out[59]), .D(n137), .Y(n82) );
  AOI22X1 U84 ( .A(int_out[58]), .B(n145), .C(float_out[58]), .D(n137), .Y(n83) );
  AOI22X1 U85 ( .A(int_out[57]), .B(n146), .C(float_out[57]), .D(n137), .Y(n84) );
  AOI22X1 U87 ( .A(int_out[55]), .B(n143), .C(float_out[55]), .D(n137), .Y(n86) );
  AOI22X1 U88 ( .A(int_out[54]), .B(n143), .C(float_out[54]), .D(n138), .Y(n87) );
  AOI22X1 U89 ( .A(int_out[53]), .B(n143), .C(float_out[53]), .D(n138), .Y(n88) );
  AOI22X1 U90 ( .A(int_out[52]), .B(n144), .C(float_out[52]), .D(n138), .Y(n89) );
  AOI22X1 U91 ( .A(int_out[51]), .B(n145), .C(float_out[51]), .D(n138), .Y(n90) );
  AOI22X1 U92 ( .A(int_out[50]), .B(n146), .C(float_out[50]), .D(n138), .Y(n91) );
  AOI22X1 U93 ( .A(int_out[4]), .B(n147), .C(float_out[4]), .D(n138), .Y(n92)
         );
  AOI22X1 U94 ( .A(int_out[49]), .B(n143), .C(float_out[49]), .D(n138), .Y(n93) );
  AOI22X1 U95 ( .A(int_out[48]), .B(n142), .C(float_out[48]), .D(n138), .Y(n94) );
  AOI22X1 U96 ( .A(int_out[47]), .B(n142), .C(float_out[47]), .D(n138), .Y(n95) );
  AOI22X1 U97 ( .A(int_out[46]), .B(n144), .C(float_out[46]), .D(n138), .Y(n96) );
  AOI22X1 U98 ( .A(int_out[45]), .B(n144), .C(float_out[45]), .D(n138), .Y(n97) );
  AOI22X1 U99 ( .A(int_out[44]), .B(n144), .C(float_out[44]), .D(n138), .Y(n98) );
  AOI22X1 U100 ( .A(int_out[43]), .B(n144), .C(float_out[43]), .D(n138), .Y(
        n99) );
  AOI22X1 U101 ( .A(int_out[42]), .B(n144), .C(float_out[42]), .D(n138), .Y(
        n100) );
  AOI22X1 U102 ( .A(int_out[41]), .B(n144), .C(float_out[41]), .D(n139), .Y(
        n101) );
  AOI22X1 U103 ( .A(int_out[40]), .B(n144), .C(float_out[40]), .D(n139), .Y(
        n102) );
  AOI22X1 U104 ( .A(int_out[3]), .B(n145), .C(float_out[3]), .D(n139), .Y(n103) );
  AOI22X1 U105 ( .A(int_out[39]), .B(n145), .C(float_out[39]), .D(n139), .Y(
        n104) );
  AOI22X1 U106 ( .A(int_out[38]), .B(n145), .C(float_out[38]), .D(n139), .Y(
        n105) );
  AOI22X1 U107 ( .A(int_out[37]), .B(n145), .C(float_out[37]), .D(n139), .Y(
        n106) );
  AOI22X1 U108 ( .A(int_out[36]), .B(n145), .C(float_out[36]), .D(n139), .Y(
        n107) );
  AOI22X1 U109 ( .A(int_out[35]), .B(n145), .C(float_out[35]), .D(n139), .Y(
        n108) );
  AOI22X1 U110 ( .A(int_out[34]), .B(n145), .C(float_out[34]), .D(n139), .Y(
        n109) );
  AOI22X1 U111 ( .A(int_out[33]), .B(n146), .C(float_out[33]), .D(n139), .Y(
        n110) );
  AOI22X1 U112 ( .A(int_out[32]), .B(n146), .C(float_out[32]), .D(n139), .Y(
        n111) );
  AOI22X1 U113 ( .A(int_out[31]), .B(n146), .C(float_out[31]), .D(n139), .Y(
        n112) );
  AOI22X1 U114 ( .A(int_out[30]), .B(n146), .C(float_out[30]), .D(n139), .Y(
        n113) );
  AOI22X1 U115 ( .A(int_out[2]), .B(n146), .C(float_out[2]), .D(n139), .Y(n114) );
  AOI22X1 U116 ( .A(int_out[29]), .B(n146), .C(float_out[29]), .D(n140), .Y(
        n115) );
  AOI22X1 U117 ( .A(int_out[28]), .B(n146), .C(float_out[28]), .D(n140), .Y(
        n116) );
  AOI22X1 U118 ( .A(int_out[27]), .B(n147), .C(float_out[27]), .D(n140), .Y(
        n117) );
  AOI22X1 U119 ( .A(int_out[26]), .B(n147), .C(float_out[26]), .D(n140), .Y(
        n118) );
  AOI22X1 U120 ( .A(int_out[25]), .B(n147), .C(float_out[25]), .D(n140), .Y(
        n119) );
  AOI22X1 U121 ( .A(int_out[24]), .B(n147), .C(float_out[24]), .D(n140), .Y(
        n120) );
  AOI22X1 U122 ( .A(int_out[23]), .B(n147), .C(float_out[23]), .D(n140), .Y(
        n121) );
  AOI22X1 U123 ( .A(int_out[22]), .B(n147), .C(float_out[22]), .D(n140), .Y(
        n122) );
  AOI22X1 U124 ( .A(int_out[21]), .B(n147), .C(float_out[21]), .D(n140), .Y(
        n123) );
  AOI22X1 U125 ( .A(int_out[20]), .B(n148), .C(float_out[20]), .D(n140), .Y(
        n124) );
  AOI22X1 U126 ( .A(int_out[1]), .B(n148), .C(float_out[1]), .D(n140), .Y(n125) );
  AOI22X1 U127 ( .A(int_out[19]), .B(n148), .C(float_out[19]), .D(n140), .Y(
        n126) );
  AOI22X1 U128 ( .A(int_out[18]), .B(n148), .C(float_out[18]), .D(n140), .Y(
        n127) );
  AOI22X1 U129 ( .A(int_out[17]), .B(n148), .C(float_out[17]), .D(n140), .Y(
        n128) );
  AOI22X1 U130 ( .A(int_out[16]), .B(n148), .C(float_out[16]), .D(n141), .Y(
        n129) );
  AOI22X1 U131 ( .A(int_out[15]), .B(n148), .C(float_out[15]), .D(n141), .Y(
        n130) );
  AOI22X1 U132 ( .A(int_out[14]), .B(n142), .C(float_out[14]), .D(n141), .Y(
        n131) );
  AOI22X1 U133 ( .A(int_out[13]), .B(n144), .C(float_out[13]), .D(n141), .Y(
        n132) );
  AOI22X1 U134 ( .A(int_out[12]), .B(n145), .C(float_out[12]), .D(n141), .Y(
        n133) );
  AOI22X1 U135 ( .A(int_out[11]), .B(n146), .C(float_out[11]), .D(n141), .Y(
        n134) );
  AOI22X1 U136 ( .A(int_out[10]), .B(n147), .C(float_out[10]), .D(n141), .Y(
        n135) );
  AOI22X1 U137 ( .A(int_out[0]), .B(n143), .C(float_out[0]), .D(n141), .Y(n136) );
  signed_multiplier_15 A70 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 
        1'b0}), .value(array_outputs[7:0]), .cumulative(bias[7:0]), .float(
        1'b1), .out(float_out[7:0]), .overflow(overflow_float[0]) );
  signed_multiplier_14 A158 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0}), .value(array_outputs[15:8]), .cumulative(bias[15:8]), 
        .float(1'b1), .out(float_out[15:8]), .overflow(overflow_float[1]) );
  signed_multiplier_13 A2316 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0}), .value(array_outputs[23:16]), .cumulative(bias[23:16]), 
        .float(1'b1), .out(float_out[23:16]), .overflow(overflow_float[2]) );
  signed_multiplier_12 A3124 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0}), .value(array_outputs[31:24]), .cumulative(bias[31:24]), 
        .float(1'b1), .out(float_out[31:24]), .overflow(overflow_float[3]) );
  signed_multiplier_11 A3932 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0}), .value(array_outputs[39:32]), .cumulative(bias[39:32]), 
        .float(1'b1), .out(float_out[39:32]), .overflow(overflow_float[4]) );
  signed_multiplier_10 A4740 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0}), .value(array_outputs[47:40]), .cumulative(bias[47:40]), 
        .float(1'b1), .out(float_out[47:40]), .overflow(overflow_float[5]) );
  signed_multiplier_9 A5548 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0}), .value(array_outputs[55:48]), .cumulative(bias[55:48]), 
        .float(1'b1), .out(float_out[55:48]), .overflow(overflow_float[6]) );
  signed_multiplier_8 A6356 ( .weight({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0}), .value(array_outputs[63:56]), .cumulative(bias[63:56]), 
        .float(1'b1), .out(float_out[63:56]), .overflow(overflow_float[7]) );
  signed_multiplier_7 U70 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1}), .value(array_outputs[7:0]), .cumulative(bias[7:0]), .float(
        1'b0), .out(int_out[7:0]) );
  signed_multiplier_6 U158 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1}), .value(array_outputs[15:8]), .cumulative(bias[15:8]), .float(
        1'b0), .out(int_out[15:8]) );
  signed_multiplier_5 U2316 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .value(array_outputs[23:16]), .cumulative(bias[23:16]), 
        .float(1'b0), .out(int_out[23:16]) );
  signed_multiplier_4 U3124 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .value(array_outputs[31:24]), .cumulative(bias[31:24]), 
        .float(1'b0), .out(int_out[31:24]) );
  signed_multiplier_3 U3932 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .value(array_outputs[39:32]), .cumulative(bias[39:32]), 
        .float(1'b0), .out(int_out[39:32]) );
  signed_multiplier_2 U4740 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .value(array_outputs[47:40]), .cumulative(bias[47:40]), 
        .float(1'b0), .out(int_out[47:40]) );
  signed_multiplier_1 U5548 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .value(array_outputs[55:48]), .cumulative(bias[55:48]), 
        .float(1'b0), .out(int_out[55:48]) );
  signed_multiplier_0 U6356 ( .weight({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b1}), .value(array_outputs[63:56]), .cumulative(bias[63:56]), 
        .float(1'b0), .out(int_out[63:56]) );
  INVX2 U138 ( .A(n143), .Y(n137) );
  INVX2 U139 ( .A(n143), .Y(n140) );
  INVX2 U140 ( .A(n142), .Y(n139) );
  INVX2 U141 ( .A(n148), .Y(n138) );
  INVX2 U142 ( .A(n143), .Y(n141) );
  INVX2 U143 ( .A(float), .Y(n143) );
  INVX2 U144 ( .A(float), .Y(n142) );
  INVX2 U145 ( .A(float), .Y(n148) );
  INVX2 U146 ( .A(float), .Y(n147) );
  INVX2 U147 ( .A(float), .Y(n146) );
  INVX2 U148 ( .A(float), .Y(n145) );
  INVX2 U149 ( .A(float), .Y(n144) );
  MUX2X1 U150 ( .B(int_out[56]), .A(float_out[56]), .S(n137), .Y(n149) );
  INVX2 U151 ( .A(n149), .Y(bias_outputs[56]) );
  NOR2X1 U152 ( .A(overflow_float[1]), .B(overflow_float[0]), .Y(n154) );
  NOR2X1 U153 ( .A(overflow_float[3]), .B(overflow_float[2]), .Y(n153) );
  NOR2X1 U154 ( .A(overflow_float[5]), .B(overflow_float[4]), .Y(n151) );
  NOR2X1 U155 ( .A(overflow_float[7]), .B(overflow_float[6]), .Y(n150) );
  AND2X1 U156 ( .A(n151), .B(n150), .Y(n152) );
  NAND3X1 U157 ( .A(n154), .B(n153), .C(n152), .Y(N3) );
  INVX2 U159 ( .A(n77), .Y(bias_outputs[63]) );
  INVX2 U160 ( .A(n84), .Y(bias_outputs[57]) );
  INVX2 U161 ( .A(n82), .Y(bias_outputs[59]) );
  INVX2 U162 ( .A(n80), .Y(bias_outputs[60]) );
  INVX2 U163 ( .A(n78), .Y(bias_outputs[62]) );
  INVX2 U164 ( .A(n83), .Y(bias_outputs[58]) );
  INVX2 U165 ( .A(n79), .Y(bias_outputs[61]) );
  INVX2 U166 ( .A(n86), .Y(bias_outputs[55]) );
  INVX2 U167 ( .A(n94), .Y(bias_outputs[48]) );
  INVX2 U168 ( .A(n93), .Y(bias_outputs[49]) );
  INVX2 U169 ( .A(n90), .Y(bias_outputs[51]) );
  INVX2 U170 ( .A(n89), .Y(bias_outputs[52]) );
  INVX2 U171 ( .A(n87), .Y(bias_outputs[54]) );
  INVX2 U172 ( .A(n91), .Y(bias_outputs[50]) );
  INVX2 U173 ( .A(n88), .Y(bias_outputs[53]) );
  INVX2 U174 ( .A(n95), .Y(bias_outputs[47]) );
  INVX2 U175 ( .A(n102), .Y(bias_outputs[40]) );
  INVX2 U176 ( .A(n101), .Y(bias_outputs[41]) );
  INVX2 U177 ( .A(n99), .Y(bias_outputs[43]) );
  INVX2 U178 ( .A(n98), .Y(bias_outputs[44]) );
  INVX2 U179 ( .A(n96), .Y(bias_outputs[46]) );
  INVX2 U180 ( .A(n100), .Y(bias_outputs[42]) );
  INVX2 U181 ( .A(n97), .Y(bias_outputs[45]) );
  INVX2 U182 ( .A(n104), .Y(bias_outputs[39]) );
  INVX2 U183 ( .A(n111), .Y(bias_outputs[32]) );
  INVX2 U184 ( .A(n110), .Y(bias_outputs[33]) );
  INVX2 U185 ( .A(n108), .Y(bias_outputs[35]) );
  INVX2 U186 ( .A(n107), .Y(bias_outputs[36]) );
  INVX2 U187 ( .A(n105), .Y(bias_outputs[38]) );
  INVX2 U188 ( .A(n109), .Y(bias_outputs[34]) );
  INVX2 U189 ( .A(n106), .Y(bias_outputs[37]) );
  INVX2 U190 ( .A(n112), .Y(bias_outputs[31]) );
  INVX2 U191 ( .A(n120), .Y(bias_outputs[24]) );
  INVX2 U192 ( .A(n119), .Y(bias_outputs[25]) );
  INVX2 U193 ( .A(n117), .Y(bias_outputs[27]) );
  INVX2 U194 ( .A(n116), .Y(bias_outputs[28]) );
  INVX2 U195 ( .A(n113), .Y(bias_outputs[30]) );
  INVX2 U196 ( .A(n118), .Y(bias_outputs[26]) );
  INVX2 U197 ( .A(n115), .Y(bias_outputs[29]) );
  INVX2 U198 ( .A(n121), .Y(bias_outputs[23]) );
  INVX2 U199 ( .A(n129), .Y(bias_outputs[16]) );
  INVX2 U200 ( .A(n128), .Y(bias_outputs[17]) );
  INVX2 U201 ( .A(n126), .Y(bias_outputs[19]) );
  INVX2 U202 ( .A(n124), .Y(bias_outputs[20]) );
  INVX2 U203 ( .A(n122), .Y(bias_outputs[22]) );
  INVX2 U204 ( .A(n127), .Y(bias_outputs[18]) );
  INVX2 U205 ( .A(n123), .Y(bias_outputs[21]) );
  INVX2 U206 ( .A(n130), .Y(bias_outputs[15]) );
  INVX2 U207 ( .A(n74), .Y(bias_outputs[8]) );
  INVX2 U208 ( .A(n73), .Y(bias_outputs[9]) );
  INVX2 U209 ( .A(n134), .Y(bias_outputs[11]) );
  INVX2 U210 ( .A(n133), .Y(bias_outputs[12]) );
  INVX2 U211 ( .A(n131), .Y(bias_outputs[14]) );
  INVX2 U212 ( .A(n135), .Y(bias_outputs[10]) );
  INVX2 U213 ( .A(n132), .Y(bias_outputs[13]) );
  INVX2 U214 ( .A(n75), .Y(bias_outputs[7]) );
  INVX2 U215 ( .A(n136), .Y(bias_outputs[0]) );
  INVX2 U216 ( .A(n125), .Y(bias_outputs[1]) );
  INVX2 U217 ( .A(n103), .Y(bias_outputs[3]) );
  INVX2 U218 ( .A(n92), .Y(bias_outputs[4]) );
  INVX2 U219 ( .A(n76), .Y(bias_outputs[6]) );
  INVX2 U220 ( .A(n114), .Y(bias_outputs[2]) );
  INVX2 U221 ( .A(n81), .Y(bias_outputs[5]) );
endmodule

