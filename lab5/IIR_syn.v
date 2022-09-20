/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Tue May 29 13:57:16 2018
/////////////////////////////////////////////////////////////


module IIR_DW01_dec_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;

  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[17]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[10]), .Y(n3) );
  AO21X1 U4 ( .A0(n4), .A1(A[9]), .B0(n5), .Y(SUM[9]) );
  OAI2BB1X1 U5 ( .A0N(n6), .A1N(A[8]), .B0(n4), .Y(SUM[8]) );
  OAI2BB1X1 U6 ( .A0N(n7), .A1N(A[7]), .B0(n6), .Y(SUM[7]) );
  OAI2BB1X1 U7 ( .A0N(n8), .A1N(A[6]), .B0(n7), .Y(SUM[6]) );
  OAI2BB1X1 U8 ( .A0N(n9), .A1N(A[5]), .B0(n8), .Y(SUM[5]) );
  OAI2BB1X1 U9 ( .A0N(n10), .A1N(A[4]), .B0(n9), .Y(SUM[4]) );
  OAI2BB1X1 U10 ( .A0N(n11), .A1N(A[3]), .B0(n10), .Y(SUM[3]) );
  OAI2BB1X1 U11 ( .A0N(n12), .A1N(A[2]), .B0(n11), .Y(SUM[2]) );
  OAI2BB1X1 U12 ( .A0N(A[0]), .A1N(A[1]), .B0(n12), .Y(SUM[1]) );
  XOR2X1 U13 ( .A(A[19]), .B(n13), .Y(SUM[19]) );
  NOR2X1 U14 ( .A(A[18]), .B(n14), .Y(n13) );
  XNOR2X1 U15 ( .A(A[18]), .B(n14), .Y(SUM[18]) );
  OAI21XL U16 ( .A0(n15), .A1(n2), .B0(n14), .Y(SUM[17]) );
  NAND2X1 U17 ( .A(n15), .B(n2), .Y(n14) );
  AO21X1 U18 ( .A0(n16), .A1(A[16]), .B0(n15), .Y(SUM[16]) );
  NOR2X1 U19 ( .A(n16), .B(A[16]), .Y(n15) );
  OAI2BB1X1 U20 ( .A0N(n17), .A1N(A[15]), .B0(n16), .Y(SUM[15]) );
  OR2X1 U21 ( .A(n17), .B(A[15]), .Y(n16) );
  OAI2BB1X1 U22 ( .A0N(n18), .A1N(A[14]), .B0(n17), .Y(SUM[14]) );
  OR2X1 U23 ( .A(n18), .B(A[14]), .Y(n17) );
  OAI2BB1X1 U24 ( .A0N(n19), .A1N(A[13]), .B0(n18), .Y(SUM[13]) );
  OR2X1 U25 ( .A(n19), .B(A[13]), .Y(n18) );
  OAI2BB1X1 U26 ( .A0N(n20), .A1N(A[12]), .B0(n19), .Y(SUM[12]) );
  OR2X1 U27 ( .A(n20), .B(A[12]), .Y(n19) );
  OAI2BB1X1 U28 ( .A0N(n21), .A1N(A[11]), .B0(n20), .Y(SUM[11]) );
  OR2X1 U29 ( .A(n21), .B(A[11]), .Y(n20) );
  OAI21XL U30 ( .A0(n5), .A1(n3), .B0(n21), .Y(SUM[10]) );
  NAND2X1 U31 ( .A(n5), .B(n3), .Y(n21) );
  NOR2X1 U32 ( .A(n4), .B(A[9]), .Y(n5) );
  OR2X1 U33 ( .A(n6), .B(A[8]), .Y(n4) );
  OR2X1 U34 ( .A(n7), .B(A[7]), .Y(n6) );
  OR2X1 U35 ( .A(n8), .B(A[6]), .Y(n7) );
  OR2X1 U36 ( .A(n9), .B(A[5]), .Y(n8) );
  OR2X1 U37 ( .A(n10), .B(A[4]), .Y(n9) );
  OR2X1 U38 ( .A(n11), .B(A[3]), .Y(n10) );
  OR2X1 U39 ( .A(n12), .B(A[2]), .Y(n11) );
  NAND2BX1 U40 ( .AN(A[1]), .B(SUM[0]), .Y(n12) );
endmodule


module IIR_DW01_inc_0 ( A, SUM );
  input [19:0] A;
  output [19:0] SUM;

  wire   [19:2] carry;

  ADDHXL U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  ADDHXL U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[19]), .B(A[19]), .Y(SUM[19]) );
endmodule


module IIR_DW01_add_68 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_64 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [21:1] carry;
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_63 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n1) );
endmodule


module IIR_DW01_add_62 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_61 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_58 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_57 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_56 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_55 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_54 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_53 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_52 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = B[0];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];

  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
endmodule


module IIR_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22;
  wire   [25:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n21), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n11), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n5), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n6), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n7), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n8), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n10), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n12), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n13), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n14), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n15), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n16), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n17), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_19 ( .A(A[19]), .B(n3), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n4), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n18), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n19), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n20), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n2), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n2), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n22) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n20) );
  CLKINVX1 U4 ( .A(B[3]), .Y(n19) );
  CLKINVX1 U5 ( .A(B[4]), .Y(n18) );
  CLKINVX1 U6 ( .A(B[18]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[19]), .Y(n3) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n17) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n16) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n15) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n14) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n13) );
  CLKINVX1 U13 ( .A(B[10]), .Y(n12) );
  CLKINVX1 U14 ( .A(B[12]), .Y(n10) );
  CLKINVX1 U15 ( .A(B[13]), .Y(n9) );
  CLKINVX1 U16 ( .A(B[14]), .Y(n8) );
  CLKINVX1 U17 ( .A(B[15]), .Y(n7) );
  CLKINVX1 U18 ( .A(B[16]), .Y(n6) );
  CLKINVX1 U19 ( .A(B[17]), .Y(n5) );
  CLKINVX1 U20 ( .A(B[11]), .Y(n11) );
  XNOR2X1 U21 ( .A(n22), .B(A[0]), .Y(DIFF[0]) );
  NAND2X1 U22 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U23 ( .A(B[1]), .Y(n21) );
  CLKINVX1 U24 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_51 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];
  assign SUM[11] = carry[11];
  assign SUM[10] = carry[10];

  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_48 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CLKINVX1 U1 ( .A(A[1]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
endmodule


module IIR_DW01_add_46 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  CLKINVX1 U1 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U2 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U3 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U5 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[23]), .Y(n3) );
  XNOR2X1 U7 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U8 ( .A(B[1]), .Y(n25) );
  NAND2X1 U9 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U10 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U11 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U12 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U13 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U14 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U15 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U16 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U17 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U19 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U20 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U21 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U22 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U23 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U24 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U25 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U26 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U27 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_DW01_add_45 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_44 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_43 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_41 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];

  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_40 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[4]), .B(n1), .Y(SUM[4]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(B[4]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[4]), .Y(n1) );
endmodule


module IIR_DW01_add_39 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_38 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];

  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[1]), .Y(n25) );
  NAND2X1 U2 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U4 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U5 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U14 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U15 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U16 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U17 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U18 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U19 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U20 ( .A(B[19]), .Y(n7) );
  CLKINVX1 U21 ( .A(B[20]), .Y(n6) );
  XNOR2X1 U22 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U23 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U24 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U25 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U26 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U27 ( .A(B[0]), .Y(n26) );
  CLKINVX1 U28 ( .A(B[24]), .Y(n2) );
endmodule


module IIR_DW01_add_37 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_36 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_34 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_33 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[2] = B[3];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  CLKINVX1 U1 ( .A(A[3]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[3]), .B(n1), .Y(SUM[3]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[4]) );
  CLKINVX1 U4 ( .A(B[3]), .Y(n2) );
endmodule


module IIR_DW01_add_32 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = A[1];
  assign SUM[0] = B[2];

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CLKINVX1 U1 ( .A(A[2]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U4 ( .A(B[2]), .Y(n2) );
endmodule


module IIR_DW01_add_31 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_30 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_29 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[0] = A[0];

  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[2]) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[1]), .B(n1), .Y(SUM[1]) );
  CLKINVX1 U4 ( .A(A[1]), .Y(n1) );
endmodule


module IIR_DW01_add_28 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U2 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_add_27 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_26 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  XNOR2X1 U1 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n1) );
endmodule


module IIR_DW01_add_25 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  XNOR2X1 U1 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[2]), .Y(n1) );
endmodule


module IIR_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [25:0] carry;
  assign DIFF[0] = A[0];

  ADDFXL U2_4 ( .A(A[4]), .B(n23), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n2), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n3), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n9), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n10), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n11), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n12), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n13), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n14), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n15), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n16), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n17), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n18), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n19), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n20), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n21), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n5), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n8), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n22), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n5), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n5), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n6), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n7), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[24]), .Y(n5) );
  CLKINVX1 U2 ( .A(B[20]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[21]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[5]), .Y(n22) );
  CLKINVX1 U5 ( .A(B[19]), .Y(n8) );
  CLKINVX1 U6 ( .A(B[6]), .Y(n21) );
  CLKINVX1 U7 ( .A(B[7]), .Y(n20) );
  CLKINVX1 U8 ( .A(B[8]), .Y(n19) );
  CLKINVX1 U9 ( .A(B[9]), .Y(n18) );
  CLKINVX1 U10 ( .A(B[10]), .Y(n17) );
  CLKINVX1 U11 ( .A(B[11]), .Y(n16) );
  CLKINVX1 U12 ( .A(B[12]), .Y(n15) );
  CLKINVX1 U13 ( .A(B[13]), .Y(n14) );
  CLKINVX1 U14 ( .A(B[14]), .Y(n13) );
  CLKINVX1 U15 ( .A(B[15]), .Y(n12) );
  CLKINVX1 U16 ( .A(B[16]), .Y(n11) );
  CLKINVX1 U17 ( .A(B[17]), .Y(n10) );
  CLKINVX1 U18 ( .A(B[18]), .Y(n9) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n3) );
  NAND2X1 U20 ( .A(B[1]), .B(n1), .Y(carry[2]) );
  CLKINVX1 U21 ( .A(B[3]), .Y(n2) );
  CLKINVX1 U22 ( .A(B[4]), .Y(n23) );
  CLKINVX1 U23 ( .A(A[1]), .Y(n1) );
  XNOR2X1 U24 ( .A(n4), .B(A[1]), .Y(DIFF[1]) );
  CLKINVX1 U25 ( .A(B[1]), .Y(n4) );
endmodule


module IIR_DW01_add_24 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_23 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_22 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [23:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_21 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_20 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[0]), .Y(n2) );
endmodule


module IIR_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_7 ( .A(A[7]), .B(n26), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_15 ( .A(A[15]), .B(n18), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n19), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n20), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n21), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n22), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n23), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n24), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n25), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  XOR3X1 U2_24 ( .A(A[24]), .B(n9), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n14), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n15), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n16), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n17), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n10), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n11), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n12), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n13), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n13) );
  CLKINVX1 U2 ( .A(B[21]), .Y(n12) );
  CLKINVX1 U3 ( .A(B[22]), .Y(n11) );
  CLKINVX1 U4 ( .A(B[23]), .Y(n10) );
  CLKINVX1 U5 ( .A(B[16]), .Y(n17) );
  CLKINVX1 U6 ( .A(B[17]), .Y(n16) );
  CLKINVX1 U7 ( .A(B[18]), .Y(n15) );
  CLKINVX1 U8 ( .A(B[19]), .Y(n14) );
  CLKINVX1 U9 ( .A(B[24]), .Y(n9) );
  XNOR2X1 U10 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n8) );
  NAND2X1 U12 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n7) );
  CLKINVX1 U14 ( .A(B[3]), .Y(n6) );
  CLKINVX1 U15 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U16 ( .A(B[4]), .Y(n5) );
  CLKINVX1 U17 ( .A(B[5]), .Y(n4) );
  CLKINVX1 U18 ( .A(B[6]), .Y(n3) );
  CLKINVX1 U19 ( .A(B[8]), .Y(n25) );
  CLKINVX1 U20 ( .A(B[9]), .Y(n24) );
  CLKINVX1 U21 ( .A(B[10]), .Y(n23) );
  CLKINVX1 U22 ( .A(B[11]), .Y(n22) );
  CLKINVX1 U23 ( .A(B[12]), .Y(n21) );
  CLKINVX1 U24 ( .A(B[13]), .Y(n20) );
  CLKINVX1 U25 ( .A(B[14]), .Y(n19) );
  CLKINVX1 U26 ( .A(B[15]), .Y(n18) );
  CLKINVX1 U27 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U28 ( .A(B[7]), .Y(n26) );
endmodule


module IIR_DW01_add_17 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[8] = B[8];
  assign SUM[7] = B[7];
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  XNOR2X1 U1 ( .A(B[9]), .B(n1), .Y(SUM[9]) );
  CLKINVX1 U2 ( .A(A[9]), .Y(n1) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[10]) );
  CLKINVX1 U4 ( .A(B[9]), .Y(n2) );
endmodule


module IIR_DW01_add_16 ( A, B, CI, SUM, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [22:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  XOR3X1 U1_22 ( .A(A[22]), .B(B[22]), .C(carry[22]), .Y(SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_14 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_13 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [25:0] carry;

  ADDFXL U2_16 ( .A(A[16]), .B(n9), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n10), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n11), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n12), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n13), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n14), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n15), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n16), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n17), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n18), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n19), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n20), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n21), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n22), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n23), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n24), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_23 ( .A(A[23]), .B(n2), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n3), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n4), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n5), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n6), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n7), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n8), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  CLKINVX1 U1 ( .A(B[17]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[18]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[19]), .Y(n6) );
  CLKINVX1 U4 ( .A(B[20]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[21]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[22]), .Y(n3) );
  XNOR2X1 U7 ( .A(n25), .B(A[0]), .Y(DIFF[0]) );
  NAND2X1 U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U9 ( .A(B[1]), .Y(n24) );
  CLKINVX1 U10 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U11 ( .A(B[2]), .Y(n23) );
  CLKINVX1 U12 ( .A(B[3]), .Y(n22) );
  CLKINVX1 U13 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U14 ( .A(B[4]), .Y(n21) );
  CLKINVX1 U15 ( .A(B[5]), .Y(n20) );
  CLKINVX1 U16 ( .A(B[6]), .Y(n19) );
  CLKINVX1 U17 ( .A(B[7]), .Y(n18) );
  CLKINVX1 U18 ( .A(B[8]), .Y(n17) );
  CLKINVX1 U19 ( .A(B[9]), .Y(n16) );
  CLKINVX1 U20 ( .A(B[10]), .Y(n15) );
  CLKINVX1 U21 ( .A(B[11]), .Y(n14) );
  CLKINVX1 U22 ( .A(B[12]), .Y(n13) );
  CLKINVX1 U23 ( .A(B[13]), .Y(n12) );
  CLKINVX1 U24 ( .A(B[14]), .Y(n11) );
  CLKINVX1 U25 ( .A(B[15]), .Y(n10) );
  CLKINVX1 U26 ( .A(B[16]), .Y(n9) );
  CLKINVX1 U27 ( .A(B[0]), .Y(n25) );
endmodule


module IIR_DW01_add_12 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];
  assign SUM[15] = carry[15];
  assign SUM[14] = carry[14];
  assign SUM[13] = carry[13];
  assign SUM[12] = carry[12];

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(n1) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_11 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_10 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_9 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_8 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_7 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module IIR_DW01_add_6 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_5 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;
  assign SUM[24] = carry[24];
  assign SUM[23] = carry[23];
  assign SUM[22] = carry[22];
  assign SUM[21] = carry[21];
  assign SUM[20] = carry[20];
  assign SUM[19] = carry[19];
  assign SUM[18] = carry[18];
  assign SUM[17] = carry[17];
  assign SUM[16] = carry[16];

  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  wire   [25:0] carry;

  ADDFXL U2_16 ( .A(A[16]), .B(n10), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n12), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n13), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n14), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n15), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_10 ( .A(A[10]), .B(n16), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n18), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n19), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n20), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n21), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  XOR3X1 U2_24 ( .A(A[24]), .B(n2), .C(carry[24]), .Y(DIFF[24]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n22), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n23), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_1 ( .A(A[1]), .B(n25), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_19 ( .A(A[19]), .B(n7), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n8), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n9), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_23 ( .A(A[23]), .B(n3), .CI(carry[23]), .CO(carry[24]), .S(
        DIFF[23]) );
  ADDFXL U2_22 ( .A(A[22]), .B(n4), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  ADDFXL U2_21 ( .A(A[21]), .B(n5), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n6), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n6) );
  CLKINVX1 U2 ( .A(B[21]), .Y(n5) );
  CLKINVX1 U3 ( .A(B[22]), .Y(n4) );
  CLKINVX1 U4 ( .A(B[23]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[17]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[18]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[19]), .Y(n7) );
  NAND2X1 U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U9 ( .A(B[1]), .Y(n25) );
  CLKINVX1 U10 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U11 ( .A(n26), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U12 ( .A(B[2]), .Y(n24) );
  CLKINVX1 U13 ( .A(B[3]), .Y(n23) );
  CLKINVX1 U14 ( .A(B[4]), .Y(n22) );
  CLKINVX1 U15 ( .A(B[24]), .Y(n2) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n21) );
  CLKINVX1 U17 ( .A(B[6]), .Y(n20) );
  CLKINVX1 U18 ( .A(B[7]), .Y(n19) );
  CLKINVX1 U19 ( .A(B[8]), .Y(n18) );
  CLKINVX1 U20 ( .A(B[9]), .Y(n17) );
  CLKINVX1 U21 ( .A(B[10]), .Y(n16) );
  CLKINVX1 U22 ( .A(B[11]), .Y(n15) );
  CLKINVX1 U23 ( .A(B[12]), .Y(n14) );
  CLKINVX1 U24 ( .A(B[13]), .Y(n13) );
  CLKINVX1 U25 ( .A(B[14]), .Y(n12) );
  CLKINVX1 U26 ( .A(B[15]), .Y(n11) );
  CLKINVX1 U27 ( .A(B[16]), .Y(n10) );
  CLKINVX1 U28 ( .A(B[0]), .Y(n26) );
endmodule


module IIR_DW01_add_4 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_3 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_2 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  XNOR2X1 U1 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_1 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [24:1] carry;

  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  XNOR2X1 U3 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
endmodule


module IIR_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [24:1] carry;

  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  OAI2BB1X1 U1 ( .A0N(n1), .A1N(A[6]), .B0(n2), .Y(carry[7]) );
  OAI21XL U2 ( .A0(A[6]), .A1(n1), .B0(B[6]), .Y(n2) );
  OAI2BB1X1 U3 ( .A0N(n3), .A1N(A[5]), .B0(n4), .Y(n1) );
  OAI21XL U4 ( .A0(A[5]), .A1(n3), .B0(B[5]), .Y(n4) );
  OAI2BB1X1 U5 ( .A0N(n5), .A1N(A[4]), .B0(n6), .Y(n3) );
  OAI21XL U6 ( .A0(A[4]), .A1(n5), .B0(B[4]), .Y(n6) );
  OAI2BB1X1 U7 ( .A0N(n7), .A1N(A[3]), .B0(n8), .Y(n5) );
  OAI21XL U8 ( .A0(A[3]), .A1(n7), .B0(B[3]), .Y(n8) );
  OAI2BB1X1 U9 ( .A0N(n9), .A1N(A[2]), .B0(n10), .Y(n7) );
  OAI21XL U10 ( .A0(A[2]), .A1(n9), .B0(B[2]), .Y(n10) );
  OAI2BB1X1 U11 ( .A0N(A[1]), .A1N(B[1]), .B0(n11), .Y(n9) );
  OAI211X1 U12 ( .A0(A[1]), .A1(B[1]), .B0(A[0]), .C0(B[0]), .Y(n11) );
  OAI2BB1X1 U13 ( .A0N(n12), .A1N(A[23]), .B0(n13), .Y(carry[24]) );
  OAI21XL U14 ( .A0(A[23]), .A1(n12), .B0(B[23]), .Y(n13) );
  OAI2BB1X1 U15 ( .A0N(A[22]), .A1N(B[22]), .B0(n14), .Y(n12) );
  OAI21XL U16 ( .A0(A[22]), .A1(B[22]), .B0(carry[22]), .Y(n14) );
endmodule


module IIR ( clk, rst, load, DIn, RAddr, data_done, WEN, Yn, WAddr, Finish );
  input [15:0] DIn;
  output [19:0] RAddr;
  output [15:0] Yn;
  output [19:0] WAddr;
  input clk, rst, data_done;
  output load, WEN, Finish;
  wire   \s[0][24] , \s[0][23] , \s[0][22] , \s[0][21] , \s[0][20] ,
         \s[0][19] , \s[0][18] , \s[0][17] , \s[0][16] , \s[0][15] ,
         \s[0][14] , \s[0][13] , \s[0][12] , \s[0][11] , \s[0][10] , \s[0][9] ,
         \s[0][8] , \s[0][7] , \s[1][24] , \s[1][23] , \s[1][22] , \s[1][21] ,
         \s[1][20] , \s[1][19] , \s[1][18] , \s[1][17] , \s[1][16] ,
         \s[1][15] , \s[1][14] , \s[1][13] , \s[1][12] , \s[1][11] ,
         \s[1][10] , \s[1][9] , \s[1][7] , \s[2][24] , \s[2][23] , \s[2][22] ,
         \s[2][21] , \s[2][20] , \s[2][19] , \s[2][18] , \s[2][17] ,
         \s[2][16] , \s[2][15] , \s[2][14] , \s[2][13] , \s[2][12] ,
         \s[2][11] , \s[2][10] , \s[2][9] , \s[2][8] , \s[2][7] , \s[3][24] ,
         \s[3][23] , \s[3][22] , \s[3][21] , \s[3][20] , \s[3][19] ,
         \s[3][18] , \s[3][17] , \s[3][16] , \s[3][15] , \s[3][14] ,
         \s[3][13] , \s[3][12] , \s[3][11] , \s[3][10] , \s[3][9] , \s[3][8] ,
         \s[3][7] , \s[4][24] , \s[4][23] , \s[4][22] , \s[4][21] , \s[4][20] ,
         \s[4][19] , \s[4][18] , \s[4][17] , \s[4][16] , \s[4][15] ,
         \s[4][14] , \s[4][13] , \s[4][12] , \s[4][11] , \s[4][10] , \s[4][9] ,
         \s[4][8] , \s[4][7] , \s[5][24] , \s[5][23] , \s[5][22] , \s[5][21] ,
         \s[5][20] , \s[5][19] , \s[5][18] , \s[5][17] , \s[5][16] ,
         \s[5][15] , \s[5][14] , \s[5][13] , \s[5][12] , \s[5][11] ,
         \s[5][10] , \s[5][9] , \s[5][8] , \s[5][7] , \s_new[0][24] ,
         \s_new[0][23] , \s_new[0][22] , \s_new[0][21] , \s_new[0][20] ,
         \s_new[0][19] , \s_new[0][18] , \s_new[0][17] , \s_new[0][16] ,
         \s_new[0][15] , \s_new[0][14] , \s_new[0][13] , \s_new[0][12] ,
         \s_new[0][11] , \s_new[0][10] , \s_new[0][9] , \s_new[0][8] ,
         \s_new[1][24] , \s_new[1][23] , \s_new[1][15] , \s_new[1][14] ,
         \s_new[1][13] , \s_new[1][12] , \s_new[1][11] , \s_new[1][10] ,
         \s_new[2][24] , \s_new[2][23] , \s_new[2][22] , \s_new[2][21] ,
         \s_new[2][20] , \s_new[2][19] , \s_new[2][18] , \s_new[2][17] ,
         \s_new[2][16] , \s_new[3][24] , \s_new[3][23] , \s_new[3][22] ,
         \s_new[3][21] , \s_new[3][20] , \s_new[3][19] , \s_new[3][18] ,
         \s_new[3][11] , \s_new[3][10] , \s_new[3][9] , \s_new[3][8] ,
         \s_new[3][7] , \s_new[4][24] , \s_new[4][23] , \s_new[4][22] ,
         \s_new[4][21] , \s_new[4][20] , N1396, N1397, N1398, N1399, N1400,
         N1401, N1402, N1403, N1404, N1405, N1406, N1407, N1408, N1409, N1410,
         N1411, N1412, N1413, N1414, N1415, N1416, N1417, N1418, N1419, N1420,
         N1421, N1422, N1423, N1424, N1425, N1426, N1427, N1428, N1429, N1430,
         N1431, N1432, N1433, N1434, N1435, n5, n6, n8, n9, \b_shift[4][9] ,
         \b_shift[4][8] , \b_shift[4][7] , \b_shift[4][6] , \b_shift[4][5] ,
         \b_shift[4][4] , \b_shift[4][3] , \b_shift[4][2] , \b_shift[4][24] ,
         \b_shift[4][23] , \b_shift[4][22] , \b_shift[4][21] ,
         \b_shift[4][20] , \b_shift[4][1] , \b_shift[4][19] , \b_shift[4][18] ,
         \b_shift[4][17] , \b_shift[4][16] , \b_shift[4][15] ,
         \b_shift[4][14] , \b_shift[4][13] , \b_shift[4][12] ,
         \b_shift[4][11] , \b_shift[4][10] , \b_shift[4][0] , \b_shift[3][9] ,
         \b_shift[3][8] , \b_shift[3][7] , \b_shift[3][6] , \b_shift[3][5] ,
         \b_shift[3][4] , \b_shift[3][3] , \b_shift[3][2] , \b_shift[3][24] ,
         \b_shift[3][23] , \b_shift[3][22] , \b_shift[3][21] ,
         \b_shift[3][20] , \b_shift[3][1] , \b_shift[3][19] , \b_shift[3][18] ,
         \b_shift[3][17] , \b_shift[3][16] , \b_shift[3][15] ,
         \b_shift[3][14] , \b_shift[3][13] , \b_shift[3][12] ,
         \b_shift[3][11] , \b_shift[3][10] , \b_shift[3][0] , \b_shift[2][9] ,
         \b_shift[2][8] , \b_shift[2][7] , \b_shift[2][6] , \b_shift[2][5] ,
         \b_shift[2][4] , \b_shift[2][3] , \b_shift[2][2] , \b_shift[2][24] ,
         \b_shift[2][23] , \b_shift[2][22] , \b_shift[2][21] ,
         \b_shift[2][20] , \b_shift[2][1] , \b_shift[2][19] , \b_shift[2][18] ,
         \b_shift[2][17] , \b_shift[2][16] , \b_shift[2][15] ,
         \b_shift[2][14] , \b_shift[2][13] , \b_shift[2][12] ,
         \b_shift[2][11] , \b_shift[2][10] , \b_shift[2][0] , \b_shift[1][9] ,
         \b_shift[1][8] , \b_shift[1][7] , \b_shift[1][6] , \b_shift[1][5] ,
         \b_shift[1][4] , \b_shift[1][3] , \b_shift[1][2] , \b_shift[1][24] ,
         \b_shift[1][23] , \b_shift[1][22] , \b_shift[1][21] ,
         \b_shift[1][20] , \b_shift[1][1] , \b_shift[1][19] , \b_shift[1][18] ,
         \b_shift[1][17] , \b_shift[1][16] , \b_shift[1][15] ,
         \b_shift[1][14] , \b_shift[1][13] , \b_shift[1][12] ,
         \b_shift[1][11] , \b_shift[1][10] , \b_shift[1][0] , \b_shift[0][9] ,
         \b_shift[0][8] , \b_shift[0][7] , \b_shift[0][6] , \b_shift[0][5] ,
         \b_shift[0][4] , \b_shift[0][3] , \b_shift[0][2] , \b_shift[0][24] ,
         \b_shift[0][23] , \b_shift[0][22] , \b_shift[0][21] ,
         \b_shift[0][20] , \b_shift[0][1] , \b_shift[0][19] , \b_shift[0][18] ,
         \b_shift[0][17] , \b_shift[0][16] , \b_shift[0][15] ,
         \b_shift[0][14] , \b_shift[0][13] , \b_shift[0][12] ,
         \b_shift[0][11] , \b_shift[0][10] , \b_shift[0][0] , \a_shift[5][9] ,
         \a_shift[5][8] , \a_shift[5][7] , \a_shift[5][6] , \a_shift[5][5] ,
         \a_shift[5][4] , \a_shift[5][3] , \a_shift[5][2] , \a_shift[5][24] ,
         \a_shift[5][23] , \a_shift[5][22] , \a_shift[5][21] ,
         \a_shift[5][20] , \a_shift[5][1] , \a_shift[5][19] , \a_shift[5][18] ,
         \a_shift[5][17] , \a_shift[5][16] , \a_shift[5][15] ,
         \a_shift[5][14] , \a_shift[5][13] , \a_shift[5][12] ,
         \a_shift[5][11] , \a_shift[5][10] , \a_shift[5][0] , \a_shift[4][9] ,
         \a_shift[4][8] , \a_shift[4][7] , \a_shift[4][6] , \a_shift[4][5] ,
         \a_shift[4][4] , \a_shift[4][3] , \a_shift[4][2] , \a_shift[4][24] ,
         \a_shift[4][23] , \a_shift[4][22] , \a_shift[4][21] ,
         \a_shift[4][20] , \a_shift[4][1] , \a_shift[4][19] , \a_shift[4][18] ,
         \a_shift[4][17] , \a_shift[4][16] , \a_shift[4][15] ,
         \a_shift[4][14] , \a_shift[4][13] , \a_shift[4][12] ,
         \a_shift[4][11] , \a_shift[4][10] , \a_shift[4][0] , \a_shift[3][9] ,
         \a_shift[3][8] , \a_shift[3][7] , \a_shift[3][6] , \a_shift[3][5] ,
         \a_shift[3][4] , \a_shift[3][3] , \a_shift[3][2] , \a_shift[3][24] ,
         \a_shift[3][23] , \a_shift[3][22] , \a_shift[3][21] ,
         \a_shift[3][20] , \a_shift[3][1] , \a_shift[3][19] , \a_shift[3][18] ,
         \a_shift[3][17] , \a_shift[3][16] , \a_shift[3][15] ,
         \a_shift[3][14] , \a_shift[3][13] , \a_shift[3][12] ,
         \a_shift[3][11] , \a_shift[3][10] , \a_shift[3][0] , \a_shift[2][9] ,
         \a_shift[2][8] , \a_shift[2][7] , \a_shift[2][6] , \a_shift[2][5] ,
         \a_shift[2][4] , \a_shift[2][3] , \a_shift[2][2] , \a_shift[2][24] ,
         \a_shift[2][23] , \a_shift[2][22] , \a_shift[2][21] ,
         \a_shift[2][20] , \a_shift[2][1] , \a_shift[2][19] , \a_shift[2][18] ,
         \a_shift[2][17] , \a_shift[2][16] , \a_shift[2][15] ,
         \a_shift[2][14] , \a_shift[2][13] , \a_shift[2][12] ,
         \a_shift[2][11] , \a_shift[2][10] , \a_shift[2][0] , \a_shift[0][9] ,
         \a_shift[0][8] , \a_shift[0][7] , \a_shift[0][6] , \a_shift[0][5] ,
         \a_shift[0][4] , \a_shift[0][3] , \a_shift[0][2] , \a_shift[0][24] ,
         \a_shift[0][23] , \a_shift[0][22] , \a_shift[0][21] ,
         \a_shift[0][20] , \a_shift[0][1] , \a_shift[0][19] , \a_shift[0][18] ,
         \a_shift[0][17] , \a_shift[0][16] , \a_shift[0][15] ,
         \a_shift[0][14] , \a_shift[0][13] , \a_shift[0][12] ,
         \a_shift[0][11] , \a_shift[0][10] , \a_shift[0][0] , N999, N998, N997,
         N994, N993, N992, N991, N990, N989, N988, N987, N986, N985, N984,
         N983, N982, N981, N980, N979, N978, N977, N976, N975, N974, N973,
         N972, N971, N970, N969, N968, N967, N966, N965, N964, N963, N962,
         N961, N960, N959, N958, N957, N956, N955, N954, N953, N952, N951,
         N950, N949, N948, N947, N946, N945, N944, N943, N942, N941, N940,
         N939, N938, N937, N936, N935, N934, N933, N932, N931, N930, N929,
         N928, N927, N921, N919, N918, N917, N916, N915, N914, N913, N912,
         N911, N910, N909, N908, N907, N906, N905, N904, N903, N902, N901,
         N900, N894, N893, N892, N891, N890, N889, N888, N887, N886, N885,
         N884, N883, N882, N881, N880, N879, N878, N877, N876, N875, N874,
         N873, N872, N871, N870, N869, N868, N867, N866, N865, N864, N863,
         N862, N861, N860, N859, N858, N857, N856, N855, N854, N853, N852,
         N851, N850, N849, N848, N847, N846, N845, N844, N843, N842, N841,
         N840, N839, N838, N837, N836, N835, N834, N833, N832, N831, N830,
         N829, N828, N827, N826, N825, N824, N823, N822, N821, N820, N819,
         N818, N817, N816, N815, N814, N813, N812, N811, N810, N809, N808,
         N807, N806, N805, N804, N803, N802, N801, N800, N799, N798, N797,
         N796, N795, N794, N793, N792, N791, N790, N789, N788, N787, N786,
         N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775,
         N774, N773, N772, N771, N770, N769, N768, N767, N766, N765, N764,
         N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, N753,
         N752, N751, N750, N744, N743, N742, N741, N740, N739, N738, N737,
         N736, N735, N734, N733, N732, N731, N730, N729, N728, N727, N726,
         N725, N724, N723, N722, N721, N720, N719, N718, N717, N716, N715,
         N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704,
         N703, N701, N700, N699, N698, N697, N696, N695, N694, N693, N692,
         N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681,
         N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670,
         N669, N668, N667, N666, N665, N664, N663, N662, N661, N660, N659,
         N658, N657, N656, N655, N654, N653, N652, N651, N650, N649, N648,
         N647, N646, N645, N644, N643, N642, N641, N640, N639, N638, N637,
         N636, N635, N634, N633, N632, N631, N630, N629, N628, N627, N626,
         N625, N624, N623, N622, N621, N620, N619, N618, N617, N616, N615,
         N614, N613, N612, N611, N610, N609, N608, N607, N606, N605, N604,
         N603, N602, N601, N600, N599, N598, N597, N596, N595, N594, N593,
         N592, N591, N590, N589, N588, N587, N586, N585, N584, N583, N582,
         N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571,
         N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560,
         N559, N558, N557, N556, N555, N554, N553, N552, N551, N550, N549,
         N548, N547, N546, N545, N544, N543, N542, N541, N540, N539, N538,
         N537, N536, N535, N534, N533, N532, N531, N530, N529, N528, N527,
         N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516,
         N515, N514, N469, N468, N467, N466, N465, N464, N463, N462, N461,
         N460, N459, N458, N457, N456, N455, N454, N453, N452, N451, N450,
         N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439,
         N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428,
         N427, N426, N425, N355, N347, N346, N345, N344, N343, N342, N341,
         N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330,
         N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319,
         N318, N317, N316, N315, N314, N313, N312, N311, N310, N309, N308,
         N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, N297,
         N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286,
         N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275,
         N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264,
         N263, N1588, N1587, N1586, N1585, N1584, N1583, N1582, N1581, N1580,
         N1579, N1578, N1577, N1576, N1575, N1574, N1573, N1572, N1571, N1570,
         N1569, N1568, N1567, N1566, N1565, N1564, N1563, N1562, N1561, N1560,
         N1559, N1558, N1557, N1556, N1555, N1554, N1553, N1552, N1551, N1550,
         N1549, N1548, N1547, N1546, N1545, N1544, N1543, N1542, N1541, N1540,
         N1539, N1538, N1537, N1536, N1535, N1534, N1533, N1532, N1531, N1530,
         N1529, N1528, N1527, N1526, N1525, N1524, N1523, N1522, N1521, N1520,
         N1519, N1518, N1517, N1516, N1515, N1514, N1513, N1512, N1511, N1510,
         N1509, N1508, N1507, N1506, N1505, N1504, N1503, N1502, N1501, N1500,
         N1499, N1498, N1497, N1496, N1495, N1494, N1493, N1492, N1491, N1490,
         N1489, N1488, N1487, N1486, N1485, N1484, N1483, N1482, N1481, N1480,
         N1479, N1478, N1477, N1476, N1475, N1474, N1473, N1472, N1471, N1470,
         N1469, N1468, N1467, N1466, N1465, N1464, N1463, N1462, N1461, N1460,
         N1459, N1458, N1457, N1456, N1455, N1454, N1453, N1452, N1451, N1450,
         N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, N1441, N1440,
         N1439, N1393, N1392, N1391, N1390, N1389, N1388, N1387, N1386, N1385,
         N1384, N1383, N1382, N1381, N1380, N1379, N1378, N1377, N1376, N1375,
         N1374, N1373, N1372, N1371, N1370, N1369, N1368, N1367, N1366, N1365,
         N1364, N1363, N1362, N1361, N1360, N1359, N1358, N1357, N1356, N1355,
         N1354, N1353, N1352, N1351, N1350, N1349, N1348, N1347, N1346, N1345,
         N1344, N1343, N1342, N1341, N1340, N1339, N1338, N1337, N1336, N1335,
         N1334, N1333, N1332, N1331, N1330, N1329, N1328, N1327, N1326, N1325,
         N1324, N1323, N1322, N1321, N1320, N1319, N1318, N1317, N1316, N1315,
         N1314, N1313, N1312, N1311, N1310, N1309, N1308, N1307, N1306, N1305,
         N1304, N1303, N1302, N1301, N1300, N1299, N1298, N1297, N1296, N1295,
         N1294, N1293, N1292, N1291, N1290, N1289, N1288, N1287, N1286, N1285,
         N1284, N1283, N1282, N1281, N1280, N1279, N1278, N1277, N1276, N1275,
         N1274, N1269, N1268, N1267, N1266, N1265, N1264, N1263, N1262, N1261,
         N1260, N1259, N1258, N1257, N1256, N1255, N1254, N1253, N1252, N1251,
         N1250, N1249, N1248, N1247, N1246, N1245, N1244, N1243, N1242, N1241,
         N1240, N1239, N1238, N1237, N1236, N1235, N1234, N1233, N1232, N1231,
         N1230, N1229, N1228, N1227, N1226, N1225, N1224, N1223, N1222, N1221,
         N1220, N1219, N1218, N1217, N1216, N1215, N1214, N1213, N1212, N1211,
         N1210, N1209, N1208, N1207, N1206, N1205, N1204, N1203, N1202, N1201,
         N1200, N1199, N1198, N1197, N1196, N1195, N1194, N1193, N1192, N1191,
         N1190, N1189, N1188, N1187, N1186, N1185, N1184, N1183, N1182, N1181,
         N1180, N1179, N1178, N1177, N1176, N1175, N1174, N1173, N1172, N1171,
         N1170, N1169, N1168, N1167, N1166, N1165, N1164, N1163, N1162, N1161,
         N1160, N1159, N1158, N1157, N1156, N1155, N1154, N1153, N1152, N1151,
         N1150, N1149, N1148, N1147, N1146, N1145, N1144, N1143, N1142, N1141,
         N1140, N1139, N1138, N1137, N1136, N1135, N1134, N1133, N1132, N1131,
         N1130, N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122, N1121,
         N1120, N1119, N1118, N1117, N1116, N1115, N1114, N1113, N1112, N1111,
         N1110, N1109, N1108, N1107, N1106, N1105, N1104, N1103, N1102, N1101,
         N1100, N1099, N1098, N1097, N1096, N1095, N1094, N1093, N1092, N1091,
         N1090, N1089, N1088, N1087, N1086, N1085, N1084, N1083, N1082, N1081,
         N1080, N1079, N1078, N1077, N1076, N1075, N1074, N1073, N1072, N1071,
         N1070, N1069, N1068, N1067, N1066, N1065, N1064, N1063, N1062, N1061,
         N1060, N1059, N1058, N1057, N1056, N1055, N1054, N1053, N1052, N1051,
         N1050, N1049, N1048, N1047, N1046, N1045, N1044, N1043, N1042, N1041,
         N1040, N1039, N1038, N1037, N1036, N1035, N1034, N1033, N1032, N1031,
         N1030, N1029, N1028, N1027, N1026, N1025, N1024, N1023, N1022, N1021,
         N1020, N1019, N1018, N1017, N1016, N1015, N1014, N1013, N1012, N1011,
         N1010, N1009, N1008, N1007, N1006, N1005, N1004, N1003, N1002, N1001,
         N1000, \add_43_root_add_3_root_sub_139_5/carry[8] ,
         \add_43_root_add_3_root_sub_139_5/carry[9] ,
         \add_43_root_add_3_root_sub_139_5/carry[10] ,
         \add_43_root_add_3_root_sub_139_5/carry[11] ,
         \add_43_root_add_3_root_sub_139_5/carry[12] ,
         \add_43_root_add_3_root_sub_139_5/carry[13] ,
         \add_43_root_add_3_root_sub_139_5/carry[14] ,
         \add_43_root_add_3_root_sub_139_5/carry[15] ,
         \add_43_root_add_3_root_sub_139_5/carry[16] ,
         \add_43_root_add_3_root_sub_139_5/carry[17] ,
         \add_43_root_add_3_root_sub_139_5/carry[18] ,
         \add_43_root_add_3_root_sub_139_5/carry[19] ,
         \add_43_root_add_3_root_sub_139_5/carry[20] ,
         \add_43_root_add_3_root_sub_139_5/carry[21] ,
         \add_43_root_add_3_root_sub_139_5/carry[22] ,
         \add_43_root_add_3_root_sub_139_5/carry[23] ,
         \add_2_root_add_0_root_add_72_5/carry[6] ,
         \add_2_root_add_0_root_add_72_5/carry[7] ,
         \add_2_root_add_0_root_add_72_5/carry[8] ,
         \add_2_root_add_0_root_add_72_5/carry[9] ,
         \add_2_root_add_0_root_add_72_5/carry[10] ,
         \add_2_root_add_0_root_add_72_5/carry[11] ,
         \add_2_root_add_0_root_add_72_5/carry[12] ,
         \add_2_root_add_0_root_add_72_5/carry[13] ,
         \add_2_root_add_0_root_add_72_5/carry[14] ,
         \add_2_root_add_0_root_add_72_5/carry[15] ,
         \add_2_root_add_0_root_add_72_5/carry[16] ,
         \add_2_root_add_0_root_add_72_5/carry[17] ,
         \add_2_root_add_0_root_add_72_5/carry[18] ,
         \add_2_root_add_0_root_add_72_5/carry[19] ,
         \add_2_root_add_0_root_add_72_5/carry[20] ,
         \add_2_root_add_0_root_add_72_5/carry[21] ,
         \add_4_root_add_82_5/carry[6] , \add_4_root_add_82_5/carry[7] ,
         \add_4_root_add_82_5/carry[8] , \add_4_root_add_82_5/carry[9] ,
         \add_4_root_add_82_5/carry[10] , \add_4_root_add_82_5/carry[11] ,
         \add_4_root_add_82_5/carry[12] , \add_4_root_add_82_5/carry[13] ,
         \add_4_root_add_82_5/carry[14] , \add_4_root_add_82_5/carry[15] ,
         \add_4_root_add_82_5/carry[16] , \add_4_root_add_82_5/carry[17] ,
         \add_4_root_add_82_5/carry[18] , \add_4_root_add_82_5/carry[19] ,
         \add_4_root_add_82_5/carry[20] , \add_4_root_add_82_5/carry[21] ,
         \add_3_root_add_0_root_add_77_7/carry[6] ,
         \add_3_root_add_0_root_add_77_7/carry[7] ,
         \add_3_root_add_0_root_add_77_7/carry[8] ,
         \add_3_root_add_0_root_add_77_7/carry[9] ,
         \add_3_root_add_0_root_add_77_7/carry[10] ,
         \add_3_root_add_0_root_add_77_7/carry[11] ,
         \add_3_root_add_0_root_add_77_7/carry[12] ,
         \add_3_root_add_0_root_add_77_7/carry[13] ,
         \add_3_root_add_0_root_add_77_7/carry[14] ,
         \add_3_root_add_0_root_add_77_7/carry[15] ,
         \add_3_root_add_0_root_add_77_7/carry[16] ,
         \add_3_root_add_0_root_add_77_7/carry[17] ,
         \add_3_root_add_0_root_add_77_7/carry[18] ,
         \add_3_root_add_0_root_add_77_7/carry[19] ,
         \add_3_root_add_0_root_add_77_7/carry[20] ,
         \add_3_root_add_0_root_add_77_7/carry[21] ,
         \add_5_root_add_0_root_add_77_7/carry[8] ,
         \add_5_root_add_0_root_add_77_7/carry[9] ,
         \add_5_root_add_0_root_add_77_7/carry[10] ,
         \add_5_root_add_0_root_add_77_7/carry[11] ,
         \add_5_root_add_0_root_add_77_7/carry[12] ,
         \add_5_root_add_0_root_add_77_7/carry[13] ,
         \add_5_root_add_0_root_add_77_7/carry[14] ,
         \add_5_root_add_0_root_add_77_7/carry[15] ,
         \add_5_root_add_0_root_add_77_7/carry[16] ,
         \add_5_root_add_0_root_add_77_7/carry[17] ,
         \add_5_root_add_0_root_add_77_7/carry[18] ,
         \add_5_root_add_0_root_add_77_7/carry[19] ,
         \add_5_root_add_0_root_add_77_7/carry[20] ,
         \add_5_root_add_0_root_add_77_7/carry[21] ,
         \add_5_root_add_0_root_add_77_7/carry[22] ,
         \add_5_root_add_0_root_add_77_7/carry[23] ,
         \add_3_root_add_0_root_add_72_5/carry[7] ,
         \add_3_root_add_0_root_add_72_5/carry[8] ,
         \add_3_root_add_0_root_add_72_5/carry[9] ,
         \add_3_root_add_0_root_add_72_5/carry[10] ,
         \add_3_root_add_0_root_add_72_5/carry[11] ,
         \add_3_root_add_0_root_add_72_5/carry[12] ,
         \add_3_root_add_0_root_add_72_5/carry[13] ,
         \add_3_root_add_0_root_add_72_5/carry[14] ,
         \add_3_root_add_0_root_add_72_5/carry[15] ,
         \add_3_root_add_0_root_add_72_5/carry[16] ,
         \add_3_root_add_0_root_add_72_5/carry[17] ,
         \add_3_root_add_0_root_add_72_5/carry[18] ,
         \add_3_root_add_0_root_add_72_5/carry[19] ,
         \add_3_root_add_0_root_add_72_5/carry[20] ,
         \add_3_root_add_0_root_add_72_5/carry[21] ,
         \add_3_root_add_0_root_add_72_5/carry[22] ,
         \add_44_root_sub_139_5/carry[1] , \add_44_root_sub_139_5/carry[2] ,
         \add_44_root_sub_139_5/carry[3] , \add_44_root_sub_139_5/carry[4] ,
         \add_44_root_sub_139_5/carry[5] , \add_44_root_sub_139_5/carry[6] ,
         \add_44_root_sub_139_5/carry[7] , \add_44_root_sub_139_5/carry[8] ,
         \add_44_root_sub_139_5/carry[9] , \add_44_root_sub_139_5/carry[10] ,
         \add_44_root_sub_139_5/carry[11] , \add_44_root_sub_139_5/carry[12] ,
         \add_44_root_sub_139_5/carry[13] , \add_45_root_sub_139_5/carry[2] ,
         \add_45_root_sub_139_5/carry[3] , \add_45_root_sub_139_5/carry[4] ,
         \add_45_root_sub_139_5/carry[5] , \add_45_root_sub_139_5/carry[6] ,
         \add_45_root_sub_139_5/carry[7] , \add_45_root_sub_139_5/carry[8] ,
         \add_45_root_sub_139_5/carry[9] , \add_45_root_sub_139_5/carry[10] ,
         \add_45_root_sub_139_5/carry[11] , \add_45_root_sub_139_5/carry[12] ,
         \add_45_root_sub_139_5/carry[13] , \add_45_root_sub_139_5/carry[14] ,
         \add_45_root_sub_139_5/carry[15] , \add_45_root_sub_139_5/carry[16] ,
         \add_45_root_sub_139_5/carry[17] , \add_36_root_sub_139_5/carry[5] ,
         \add_36_root_sub_139_5/carry[6] , \add_36_root_sub_139_5/carry[7] ,
         \add_36_root_sub_139_5/carry[8] , \add_36_root_sub_139_5/carry[9] ,
         \add_36_root_sub_139_5/carry[10] , \add_36_root_sub_139_5/carry[11] ,
         \add_36_root_sub_139_5/carry[12] , \add_36_root_sub_139_5/carry[13] ,
         \add_36_root_sub_139_5/carry[14] , \add_36_root_sub_139_5/carry[15] ,
         \add_36_root_sub_139_5/carry[16] , \add_36_root_sub_139_5/carry[17] ,
         \add_36_root_sub_139_5/carry[18] , \add_36_root_sub_139_5/carry[19] ,
         \add_36_root_sub_139_5/carry[20] , \add_39_root_sub_139_5/carry[1] ,
         \add_39_root_sub_139_5/carry[2] , \add_39_root_sub_139_5/carry[3] ,
         \add_39_root_sub_139_5/carry[4] , \add_39_root_sub_139_5/carry[5] ,
         \add_39_root_sub_139_5/carry[6] , \add_39_root_sub_139_5/carry[7] ,
         \add_39_root_sub_139_5/carry[8] , \add_39_root_sub_139_5/carry[9] ,
         \add_39_root_sub_139_5/carry[10] , \add_33_root_sub_139_5/carry[1] ,
         \add_33_root_sub_139_5/carry[2] , \add_33_root_sub_139_5/carry[3] ,
         \add_33_root_sub_139_5/carry[4] , \add_33_root_sub_139_5/carry[5] ,
         \add_33_root_sub_139_5/carry[6] , \add_33_root_sub_139_5/carry[7] ,
         \add_33_root_sub_139_5/carry[8] , \add_33_root_sub_139_5/carry[9] ,
         \add_33_root_sub_139_5/carry[10] , \add_33_root_sub_139_5/carry[11] ,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570;
  wire   [24:1] \add_44_root_add_3_root_sub_139_5/carry ;
  wire   [24:1] \add_6_root_add_0_root_add_77_7/carry ;
  wire   [24:1] \add_4_root_add_0_root_add_72_5/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10;
  assign WEN = 1'b1;
  assign load = 1'b1;

  IIR_DW01_dec_0 sub_101 ( .A({N1415, N1414, N1413, N1412, N1411, N1410, N1409, 
        N1408, N1407, N1406, N1405, N1404, N1403, N1402, N1401, N1400, N1399, 
        N1398, N1397, N1396}), .SUM({N1435, N1434, N1433, N1432, N1431, N1430, 
        N1429, N1428, N1427, N1426, N1425, N1424, N1423, N1422, N1421, N1420, 
        N1419, N1418, N1417, N1416}) );
  IIR_DW01_inc_0 add_100 ( .A(RAddr), .SUM({N1415, N1414, N1413, N1412, N1411, 
        N1410, N1409, N1408, N1407, N1406, N1405, N1404, N1403, N1402, N1401, 
        N1400, N1399, N1398, N1397, N1396}) );
  IIR_DW01_add_68 add_35_root_sub_139_5 ( .A({n82, n82, n82, n82, n82, n82, 
        n82, n41, n39, n37, n35, n33, n31, n29, n27, n25, n23, n21, n19, n17, 
        n15, N516, N515, N514}), .B({n82, n81, n81, n81, n81, n81, n81, n81, 
        n41, n39, n37, n35, n33, n31, n29, n27, n25, n23, n21, n19, n17, n15, 
        N516, N515}), .CI(1'b0), .SUM({N559, N558, N557, N556, N555, N554, 
        N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, 
        N541, N540, N539, N538, N537, N536}) );
  IIR_DW01_add_64 add_43_root_sub_139_5 ( .A({n111, n111, n110, n111, n111, 
        n110, n110, n110, n110, n110, n110, n110, \s[1][23] , \s[1][22] , 
        \s[1][21] , \s[1][20] , \s[1][19] , \s[1][18] , \s[1][17] , \s[1][16] , 
        \s[1][15] , \s[1][14] }), .B({n111, n110, n110, n110, n110, n110, n110, 
        n110, n110, n110, n109, n109, n109, \s[1][23] , \s[1][22] , \s[1][21] , 
        \s[1][20] , \s[1][19] , \s[1][18] , \s[1][17] , \s[1][16] , \s[1][15] }), .CI(1'b0), .SUM({N622, N621, N620, N619, N618, N617, N616, N615, N614, N613, 
        N612, N611, N610, N609, N608, N607, N606, N605, N604, N603, N602, N601}) );
  IIR_DW01_add_63 add_42_root_sub_139_5 ( .A({n111, n111, n111, n111, n111, 
        n111, n111, n111, n111, n111, n111, n111, n111, n111, n111, \s[1][23] , 
        \s[1][22] , \s[1][21] , \s[1][20] , \s[1][19] , \s[1][18] , \s[1][17] , 
        \s[1][16] }), .B({n114, n114, n114, n113, n114, \s[0][23] , \s[0][22] , 
        \s[0][21] , \s[0][20] , \s[0][19] , \s[0][18] , \s[0][17] , \s[0][16] , 
        \s[0][15] , \s[0][14] , \s[0][13] , \s[0][12] , \s[0][11] , \s[0][10] , 
        \s[0][9] , \s[0][8] , \s[0][7] , 1'b0}), .CI(1'b0), .SUM({N645, N644, 
        N643, N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, 
        N631, N630, N629, N628, N627, N626, N625, N624, N623}) );
  IIR_DW01_add_62 add_41_root_sub_139_5 ( .A({n115, n115, n115, n115, n115, 
        n115, n115, n115, n115, \s[0][23] , \s[0][22] , \s[0][21] , \s[0][20] , 
        \s[0][19] , \s[0][18] , \s[0][17] , \s[0][16] , \s[0][15] , \s[0][14] , 
        \s[0][13] , \s[0][12] , \s[0][11] , \s[0][10] , \s[0][9] }), .B({n115, 
        n113, n113, n114, n114, n114, n114, n114, n114, n114, \s[0][23] , 
        \s[0][22] , \s[0][21] , \s[0][20] , \s[0][19] , \s[0][18] , \s[0][17] , 
        \s[0][16] , \s[0][15] , \s[0][14] , \s[0][13] , \s[0][12] , \s[0][11] , 
        \s[0][10] }), .CI(1'b0), .SUM({N669, N668, N667, N666, N665, N664, 
        N663, N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, 
        N651, N650, N649, N648, N647, N646}) );
  IIR_DW01_add_61 add_33_root_add_3_root_sub_139_5 ( .A({n108, n107, n106, 
        n106, n106, n106, n106, n106, n107, \s[2][23] , \s[2][22] , \s[2][21] , 
        \s[2][20] , \s[2][19] , \s[2][18] , \s[2][17] , \s[2][16] , \s[2][15] , 
        \s[2][14] , \s[2][13] , \s[2][12] , \s[2][11] , \s[2][10] , \s[2][9] , 
        \s[2][8] }), .B({n108, n104, n104, n104, n104, n104, n104, n104, n104, 
        n104, n104, n104, \s[2][23] , \s[2][22] , \s[2][21] , \s[2][20] , 
        \s[2][19] , \s[2][18] , \s[2][17] , \s[2][16] , \s[2][15] , \s[2][14] , 
        \s[2][13] , \s[2][12] , \s[2][11] }), .CI(1'b0), .SUM({
        \a_shift[0][24] , \a_shift[0][23] , \a_shift[0][22] , \a_shift[0][21] , 
        \a_shift[0][20] , \a_shift[0][19] , \a_shift[0][18] , \a_shift[0][17] , 
        \a_shift[0][16] , \a_shift[0][15] , \a_shift[0][14] , \a_shift[0][13] , 
        \a_shift[0][12] , \a_shift[0][11] , \a_shift[0][10] , \a_shift[0][9] , 
        \a_shift[0][8] , \a_shift[0][7] , \a_shift[0][6] , \a_shift[0][5] , 
        \a_shift[0][4] , \a_shift[0][3] , \a_shift[0][2] , \a_shift[0][1] , 
        \a_shift[0][0] }) );
  IIR_DW01_add_58 add_1_root_add_0_root_add_72_5 ( .A({N719, N718, N717, N716, 
        N715, N714, N713, N712, N711, N710, N709, N708, N707, N706, N705, N704, 
        N703, N670, N701, N700, N699, N698, N697, N696, N695}), .B({N694, N693, 
        N692, N691, N690, N689, N688, N687, N686, N685, N684, N683, N682, N681, 
        N680, N679, N678, N677, N676, N675, N674, N673, N672, N671, N670}), 
        .CI(1'b0), .SUM({N744, N743, N742, N741, N740, N739, N738, N737, N736, 
        N735, N734, N733, N732, N731, N730, N729, N728, N727, N726, N725, N724, 
        N723, N722, N721, N720}) );
  IIR_DW01_add_57 add_28_root_add_3_root_sub_139_5 ( .A({n95, n94, n94, n94, 
        n94, n94, n94, n94, n94, n94, n94, n94, n94, n94, n94, n94, \s[4][23] , 
        \s[4][22] , \s[4][21] , \s[4][20] , \s[4][19] , \s[4][18] , \s[4][17] , 
        \s[4][16] , \s[4][15] }), .B({n95, n91, n91, n91, n91, n91, n91, n91, 
        n91, n91, n91, \s[4][23] , \s[4][22] , \s[4][21] , \s[4][20] , 
        \s[4][19] , \s[4][18] , \s[4][17] , \s[4][16] , \s[4][15] , \s[4][14] , 
        \s[4][13] , \s[4][12] , \s[4][11] , \s[4][10] }), .CI(1'b0), .SUM({
        \b_shift[4][24] , \b_shift[4][23] , \b_shift[4][22] , \b_shift[4][21] , 
        \b_shift[4][20] , \b_shift[4][19] , \b_shift[4][18] , \b_shift[4][17] , 
        \b_shift[4][16] , \b_shift[4][15] , \b_shift[4][14] , \b_shift[4][13] , 
        \b_shift[4][12] , \b_shift[4][11] , \b_shift[4][10] , \b_shift[4][9] , 
        \b_shift[4][8] , \b_shift[4][7] , \b_shift[4][6] , \b_shift[4][5] , 
        \b_shift[4][4] , \b_shift[4][3] , \b_shift[4][2] , \b_shift[4][1] , 
        \b_shift[4][0] }) );
  IIR_DW01_add_56 add_36_root_add_3_root_sub_139_5 ( .A({n103, n102, n102, 
        n102, n102, n102, n102, n102, n102, n102, n102, n102, \s[3][23] , 
        \s[3][22] , \s[3][21] , \s[3][20] , \s[3][19] , \s[3][18] , \s[3][17] , 
        \s[3][16] , \s[3][15] , \s[3][14] , \s[3][13] , \s[3][12] , \s[3][11] }), .B({n103, n99, n98, n98, n98, n98, n98, n98, n98, n98, n98, n98, n98, n98, 
        n98, \s[3][23] , \s[3][22] , \s[3][21] , \s[3][20] , \s[3][19] , 
        \s[3][18] , \s[3][17] , \s[3][16] , \s[3][15] , \s[3][14] }), .CI(1'b0), .SUM({n120, n231, n318, n429, n466, n477, n488, n499, n510, n121, n132, n143, 
        n154, n165, n176, n187, n198, n209, n220, n232, n243, n254, n265, n276, 
        n287}) );
  IIR_DW01_add_55 add_39_root_add_3_root_sub_139_5 ( .A({n90, n88, n88, n88, 
        n88, n88, n88, n88, n88, n88, n88, n88, \s[5][23] , \s[5][22] , 
        \s[5][21] , \s[5][20] , \s[5][19] , \s[5][18] , \s[5][17] , \s[5][16] , 
        \s[5][15] , \s[5][14] , \s[5][13] , \s[5][12] , \s[5][11] }), .B({n90, 
        n86, n86, n86, n86, n86, n86, n86, n86, n86, n86, \s[5][23] , 
        \s[5][22] , \s[5][21] , \s[5][20] , \s[5][19] , \s[5][18] , \s[5][17] , 
        \s[5][16] , \s[5][15] , \s[5][14] , \s[5][13] , \s[5][12] , \s[5][11] , 
        \s[5][10] }), .CI(1'b0), .SUM({N1538, N1537, N1536, N1535, N1534, 
        N1533, N1532, N1531, N1530, N1529, N1528, N1527, N1526, N1525, N1524, 
        N1523, N1522, N1521, N1520, N1519, N1518, N1517, N1516, N1515, N1514})
         );
  IIR_DW01_add_54 add_21_root_add_3_root_sub_139_5 ( .A({n120, n231, n318, 
        n429, n466, n477, n488, n499, n510, n121, n132, n143, n154, n165, n176, 
        n187, n198, n209, n220, n232, n243, n254, n265, n276, n287}), .B({
        N1538, N1537, N1536, N1535, N1534, N1533, N1532, N1531, N1530, N1529, 
        N1528, N1527, N1526, N1525, N1524, N1523, N1522, N1521, N1520, N1519, 
        N1518, N1517, N1516, N1515, N1514}), .CI(1'b0), .SUM({N819, N818, N817, 
        N816, N815, N814, N813, N812, N811, N810, N809, N808, N807, N806, N805, 
        N804, N803, N802, N801, N800, N799, N798, N797, N796, N795}) );
  IIR_DW01_add_53 add_23_root_add_3_root_sub_139_5 ( .A({N669, N669, N668, 
        N667, N666, N665, N664, N663, N662, N661, N660, N659, N658, N657, N656, 
        N655, N654, N653, N652, N651, N650, N649, N648, N647, N646}), .B({
        \a_shift[0][24] , \a_shift[0][23] , \a_shift[0][22] , \a_shift[0][21] , 
        \a_shift[0][20] , \a_shift[0][19] , \a_shift[0][18] , \a_shift[0][17] , 
        \a_shift[0][16] , \a_shift[0][15] , \a_shift[0][14] , \a_shift[0][13] , 
        \a_shift[0][12] , \a_shift[0][11] , \a_shift[0][10] , \a_shift[0][9] , 
        \a_shift[0][8] , \a_shift[0][7] , \a_shift[0][6] , \a_shift[0][5] , 
        \a_shift[0][4] , \a_shift[0][3] , \a_shift[0][2] , \a_shift[0][1] , 
        \a_shift[0][0] }), .CI(1'b0), .SUM({N844, N843, N842, N841, N840, N839, 
        N838, N837, N836, N835, N834, N833, N832, N831, N830, N829, N828, N827, 
        N826, N825, N824, N823, N822, N821, N820}) );
  IIR_DW01_add_52 add_40_root_add_3_root_sub_139_5 ( .A({n90, n88, n88, n88, 
        n88, n88, n88, \s[5][23] , \s[5][22] , \s[5][21] , \s[5][20] , 
        \s[5][19] , \s[5][18] , \s[5][17] , \s[5][16] , \s[5][15] , \s[5][14] , 
        \s[5][13] , \s[5][12] , \s[5][11] , \s[5][10] , \s[5][9] , \s[5][8] , 
        \s[5][7] , 1'b0}), .B({n90, n88, n88, n88, n87, n87, n88, n88, n87, 
        n87, \s[5][23] , \s[5][22] , \s[5][21] , \s[5][20] , \s[5][19] , 
        \s[5][18] , \s[5][17] , \s[5][16] , \s[5][15] , \s[5][14] , \s[5][13] , 
        \s[5][12] , \s[5][11] , \s[5][10] , \s[5][9] }), .CI(1'b0), .SUM({n432, 
        n433, n434, n435, n436, n437, n438, n439, n440, n442, n443, n444, n445, 
        n446, n447, n448, n449, n450, n451, n453, n454, n455, n456, n457, n458}) );
  IIR_DW01_sub_6 sub_24_root_add_3_root_sub_139_5 ( .A({n432, n433, n434, n435, 
        n436, n437, n438, n439, n440, n442, n443, n444, n445, n446, n447, n448, 
        n449, n450, n451, n453, n454, n455, n456, n457, n458}), .B({N355, N355, 
        N355, N355, N355, N355, N355, N355, N355, N355, N355, N355, N347, N346, 
        N345, N344, N343, N342, N341, N340, N339, N338, N337, N336, N335}), 
        .CI(1'b0), .DIFF({N869, N868, N867, N866, N865, N864, N863, N862, N861, 
        N860, N859, N858, N857, N856, N855, N854, N853, N852, N851, N850, N849, 
        N848, N847, N846, N845}) );
  IIR_DW01_add_51 add_27_root_add_3_root_sub_139_5 ( .A({n95, n95, n95, n95, 
        n94, n95, n95, n95, n95, n95, n95, n95, n95, n94, n95, \s[4][23] , 
        \s[4][22] , \s[4][21] , \s[4][20] , \s[4][19] , \s[4][18] , \s[4][17] , 
        \s[4][16] , \s[4][15] , \s[4][14] }), .B({n95, n93, n93, n93, n93, n93, 
        n94, n93, n94, n93, n93, n93, n94, n94, n94, n93, n93, \s[4][23] , 
        \s[4][22] , \s[4][21] , \s[4][20] , \s[4][19] , \s[4][18] , \s[4][17] , 
        \s[4][16] }), .CI(1'b0), .SUM({\b_shift[3][24] , \b_shift[3][23] , 
        \b_shift[3][22] , \b_shift[3][21] , \b_shift[3][20] , \b_shift[3][19] , 
        \b_shift[3][18] , \b_shift[3][17] , \b_shift[3][16] , \b_shift[3][15] , 
        \b_shift[3][14] , \b_shift[3][13] , \b_shift[3][12] , \b_shift[3][11] , 
        \b_shift[3][10] , \b_shift[3][9] , \b_shift[3][8] , \b_shift[3][7] , 
        \b_shift[3][6] , \b_shift[3][5] , \b_shift[3][4] , \b_shift[3][3] , 
        \b_shift[3][2] , \b_shift[3][1] , \b_shift[3][0] }) );
  IIR_DW01_add_48 add_2_root_add_0_root_add_77_7 ( .A({N969, N968, N967, N966, 
        N965, N964, N963, N962, N961, N960, N959, N958, N957, N956, N955, N954, 
        N953, n26, n24, n22, n20, n18, n16, n14, n13}), .B({N944, N943, N942, 
        N941, N940, N939, N938, N937, N936, N935, N934, N933, N932, N931, N930, 
        N929, N928, N927, n20, n18, n16, n14, n13, N921, 1'b0}), .CI(1'b0), 
        .SUM({N894, N893, N892, N891, N890, N889, N888, N887, N886, N885, N884, 
        N883, N882, N881, N880, N879, N878, N877, N876, N875, N874, N873, N872, 
        N871, N870}) );
  IIR_DW01_add_46 add_45_root_add_3_root_sub_139_5 ( .A({n75, n75, n75, n75, 
        n75, n74, n74, n74, n74, n74, n74, \s_new[3][23] , \s_new[3][22] , 
        \s_new[3][21] , \s_new[3][20] , \s_new[3][19] , \s_new[3][18] , 
        \a_shift[5][5] , \a_shift[5][4] , \a_shift[5][3] , \a_shift[5][2] , 
        \a_shift[5][1] , \a_shift[5][0] , \s_new[3][11] , \s_new[3][10] }), 
        .B({n75, n73, n73, n74, n74, n74, n74, n73, \s_new[3][23] , 
        \s_new[3][22] , \s_new[3][21] , \s_new[3][20] , \s_new[3][19] , 
        \s_new[3][18] , \a_shift[5][5] , \a_shift[5][4] , \a_shift[5][3] , 
        \a_shift[5][2] , \a_shift[5][1] , \a_shift[5][0] , \s_new[3][11] , 
        \s_new[3][10] , \s_new[3][9] , \s_new[3][8] , \s_new[3][7] }), .CI(
        1'b0), .SUM({n261, n262, n263, n264, n266, n267, n268, n269, n270, 
        n271, n272, n273, n274, n275, n277, n278, n279, n280, n281, n282, n283, 
        n284, n285, n286, n288}) );
  IIR_DW01_sub_5 sub_20_root_add_3_root_sub_139_5 ( .A({\b_shift[4][24] , 
        \b_shift[4][23] , \b_shift[4][22] , \b_shift[4][21] , \b_shift[4][20] , 
        \b_shift[4][19] , \b_shift[4][18] , \b_shift[4][17] , \b_shift[4][16] , 
        \b_shift[4][15] , \b_shift[4][14] , \b_shift[4][13] , \b_shift[4][12] , 
        \b_shift[4][11] , \b_shift[4][10] , \b_shift[4][9] , \b_shift[4][8] , 
        \b_shift[4][7] , \b_shift[4][6] , \b_shift[4][5] , \b_shift[4][4] , 
        \b_shift[4][3] , \b_shift[4][2] , \b_shift[4][1] , \b_shift[4][0] }), 
        .B({n261, n262, n263, n264, n266, n267, n268, n269, n270, n271, n272, 
        n273, n274, n275, n277, n278, n279, n280, n281, n282, n283, n284, n285, 
        n286, n288}), .CI(1'b0), .DIFF({\b_shift[2][24] , \b_shift[2][23] , 
        \b_shift[2][22] , \b_shift[2][21] , \b_shift[2][20] , \b_shift[2][19] , 
        \b_shift[2][18] , \b_shift[2][17] , \b_shift[2][16] , \b_shift[2][15] , 
        \b_shift[2][14] , \b_shift[2][13] , \b_shift[2][12] , \b_shift[2][11] , 
        \b_shift[2][10] , \b_shift[2][9] , \b_shift[2][8] , \b_shift[2][7] , 
        \b_shift[2][6] , \b_shift[2][5] , \b_shift[2][4] , \b_shift[2][3] , 
        \b_shift[2][2] , \b_shift[2][1] , \b_shift[2][0] }) );
  IIR_DW01_add_45 add_41_root_add_3_root_sub_139_5 ( .A({n115, n115, n115, 
        n115, n115, n115, n115, n115, n115, n115, n115, n115, \s[0][23] , 
        \s[0][22] , \s[0][21] , \s[0][20] , \s[0][19] , \s[0][18] , \s[0][17] , 
        \s[0][16] , \s[0][15] , \s[0][14] , \s[0][13] , \s[0][12] , \s[0][11] }), .B({n115, n112, n113, n113, n112, n113, n113, n113, n113, n113, n113, n113, 
        n113, \s[0][23] , \s[0][22] , \s[0][21] , \s[0][20] , \s[0][19] , 
        \s[0][18] , \s[0][17] , \s[0][16] , \s[0][15] , \s[0][14] , \s[0][13] , 
        \s[0][12] }), .CI(1'b0), .SUM({n234, n235, n236, n237, n238, n239, 
        n240, n241, n242, n244, n245, n246, n247, n248, n249, n250, n251, n252, 
        n253, n255, n256, n257, n258, n259, n260}) );
  IIR_DW01_add_44 add_19_root_add_3_root_sub_139_5 ( .A({N469, N469, N469, 
        N469, N469, N469, N468, N467, N466, N465, N464, N463, N462, N461, N460, 
        N459, N458, N457, N456, N455, N454, N453, N452, N451, N450}), .B({n234, 
        n235, n236, n237, n238, n239, n240, n241, n242, n244, n245, n246, n247, 
        n248, n249, n250, n251, n252, n253, n255, n256, n257, n258, n259, n260}), .CI(1'b0), .SUM({\a_shift[2][24] , \a_shift[2][23] , \a_shift[2][22] , 
        \a_shift[2][21] , \a_shift[2][20] , \a_shift[2][19] , \a_shift[2][18] , 
        \a_shift[2][17] , \a_shift[2][16] , \a_shift[2][15] , \a_shift[2][14] , 
        \a_shift[2][13] , \a_shift[2][12] , \a_shift[2][11] , \a_shift[2][10] , 
        \a_shift[2][9] , \a_shift[2][8] , \a_shift[2][7] , \a_shift[2][6] , 
        \a_shift[2][5] , \a_shift[2][4] , \a_shift[2][3] , \a_shift[2][2] , 
        \a_shift[2][1] , \a_shift[2][0] }) );
  IIR_DW01_add_43 add_2_root_add_0_root_add_82_5 ( .A({n85, n85, n85, n85, n85, 
        n85, n84, n84, n84, n84, n84, n84, n84, n84, n84, \s_new[0][23] , 
        \s_new[0][22] , \s_new[0][21] , \s_new[0][20] , \s_new[0][19] , 
        \s_new[0][18] , \s_new[0][17] , \s_new[0][16] , \s_new[0][15] , 
        \s_new[0][14] }), .B({n85, n83, n83, n83, n83, n83, n83, n83, n83, 
        \s_new[0][23] , \s_new[0][22] , \s_new[0][21] , \s_new[0][20] , 
        \s_new[0][19] , \s_new[0][18] , \s_new[0][17] , \s_new[0][16] , 
        \s_new[0][15] , \s_new[0][14] , \s_new[0][13] , \s_new[0][12] , 
        \s_new[0][11] , \s_new[0][10] , \s_new[0][9] , \s_new[0][8] }), .CI(
        1'b0), .SUM({N1368, N1367, N1366, N1365, N1364, N1363, N1362, N1361, 
        N1360, N1359, N1358, N1357, N1356, N1355, N1354, N1353, N1352, N1351, 
        N1350, N1349, N1348, N1347, N1346, N1345, N1344}) );
  IIR_DW01_add_41 add_3_root_add_0_root_add_82_5 ( .A({n85, n85, n85, n85, n85, 
        n85, n85, n85, n85, n85, n85, n85, n85, n85, \s_new[0][23] , 
        \s_new[0][22] , \s_new[0][21] , \s_new[0][20] , \s_new[0][19] , 
        \s_new[0][18] , \s_new[0][17] , \s_new[0][16] , \s_new[0][15] , 
        \s_new[0][14] , \s_new[0][13] }), .B({n85, n83, n83, n84, n84, n84, 
        n83, n84, n84, n84, n84, n84, \s_new[0][23] , \s_new[0][22] , 
        \s_new[0][21] , \s_new[0][20] , \s_new[0][19] , \s_new[0][18] , 
        \s_new[0][17] , \s_new[0][16] , \s_new[0][15] , \s_new[0][14] , 
        \s_new[0][13] , \s_new[0][12] , \s_new[0][11] }), .CI(1'b0), .SUM({
        N1318, N1317, N1316, N1315, N1314, N1313, N1312, N1311, N1310, N1309, 
        N1308, N1307, N1306, N1305, N1304, N1303, N1302, N1301, N1300, N1299, 
        N1298, N1297, N1296, N1295, N1294}) );
  IIR_DW01_add_40 add_1_root_add_0_root_add_82_5 ( .A({N1293, N1293, N1292, 
        N1291, N1290, N1289, N1288, N1287, N1286, N1285, N1284, N1283, N1282, 
        N1281, N1280, N1279, N1278, N1277, N1276, N1275, N1274, 1'b0, 1'b0, 
        1'b0, 1'b0}), .B({N1318, N1317, N1316, N1315, N1314, N1313, N1312, 
        N1311, N1310, N1309, N1308, N1307, N1306, N1305, N1304, N1303, N1302, 
        N1301, N1300, N1299, N1298, N1297, N1296, N1295, N1294}), .CI(1'b0), 
        .SUM({N1343, N1342, N1341, N1340, N1339, N1338, N1337, N1336, N1335, 
        N1334, N1333, N1332, N1331, N1330, N1329, N1328, N1327, N1326, N1325, 
        N1324, N1323, N1322, N1321, N1320, N1319}) );
  IIR_DW01_add_39 add_0_root_add_0_root_add_82_5 ( .A({N1368, N1367, N1366, 
        N1365, N1364, N1363, N1362, N1361, N1360, N1359, N1358, N1357, N1356, 
        N1355, N1354, N1353, N1352, N1351, N1350, N1349, N1348, N1347, N1346, 
        N1345, N1344}), .B({N1343, N1342, N1341, N1340, N1339, N1338, N1337, 
        N1336, N1335, N1334, N1333, N1332, N1331, N1330, N1329, N1328, N1327, 
        N1326, N1325, N1324, N1323, N1322, N1321, N1320, N1319}), .CI(1'b0), 
        .SUM({N1393, N1392, N1391, N1390, N1389, N1388, N1387, N1386, N1385, 
        N1384, N1383, N1382, N1381, N1380, N1379, N1378, N1377, N1376, N1375, 
        N1374, N1373, N1372, N1371, N1370, N1369}) );
  IIR_DW01_add_38 add_42_root_add_3_root_sub_139_5 ( .A({n82, n82, n82, n82, 
        n82, n82, n82, n82, n82, N355, n82, n82, n41, n39, n37, n35, n33, n31, 
        n29, n27, n25, n23, n21, n19, n17}), .B({n82, n80, n80, n80, n80, n80, 
        n80, n80, n80, n80, n80, n41, n39, n37, n35, n33, n31, n29, n27, n25, 
        n23, n21, n19, n17, n15}), .CI(1'b0), .SUM({\b_shift[0][24] , 
        \b_shift[0][23] , \b_shift[0][22] , \b_shift[0][21] , \b_shift[0][20] , 
        \b_shift[0][19] , \b_shift[0][18] , \b_shift[0][17] , \b_shift[0][16] , 
        \b_shift[0][15] , \b_shift[0][14] , \b_shift[0][13] , \b_shift[0][12] , 
        \b_shift[0][11] , \b_shift[0][10] , \b_shift[0][9] , \b_shift[0][8] , 
        \b_shift[0][7] , \b_shift[0][6] , \b_shift[0][5] , \b_shift[0][4] , 
        \b_shift[0][3] , \b_shift[0][2] , \b_shift[0][1] , \b_shift[0][0] })
         );
  IIR_DW01_sub_4 sub_14_root_add_3_root_sub_139_5 ( .A({N1393, N1392, N1391, 
        N1390, N1389, N1388, N1387, N1386, N1385, N1384, N1383, N1382, N1381, 
        N1380, N1379, N1378, N1377, N1376, N1375, N1374, N1373, N1372, N1371, 
        N1370, N1369}), .B({\b_shift[0][24] , \b_shift[0][23] , 
        \b_shift[0][22] , \b_shift[0][21] , \b_shift[0][20] , \b_shift[0][19] , 
        \b_shift[0][18] , \b_shift[0][17] , \b_shift[0][16] , \b_shift[0][15] , 
        \b_shift[0][14] , \b_shift[0][13] , \b_shift[0][12] , \b_shift[0][11] , 
        \b_shift[0][10] , \b_shift[0][9] , \b_shift[0][8] , \b_shift[0][7] , 
        \b_shift[0][6] , \b_shift[0][5] , \b_shift[0][4] , \b_shift[0][3] , 
        \b_shift[0][2] , \b_shift[0][1] , \b_shift[0][0] }), .CI(1'b0), .DIFF(
        {N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, 
        N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, 
        N426, N425}) );
  IIR_DW01_add_37 add_8_root_add_3_root_sub_139_5 ( .A({\a_shift[2][24] , 
        \a_shift[2][23] , \a_shift[2][22] , \a_shift[2][21] , \a_shift[2][20] , 
        \a_shift[2][19] , \a_shift[2][18] , \a_shift[2][17] , \a_shift[2][16] , 
        \a_shift[2][15] , \a_shift[2][14] , \a_shift[2][13] , \a_shift[2][12] , 
        \a_shift[2][11] , \a_shift[2][10] , \a_shift[2][9] , \a_shift[2][8] , 
        \a_shift[2][7] , \a_shift[2][6] , \a_shift[2][5] , \a_shift[2][4] , 
        \a_shift[2][3] , \a_shift[2][2] , \a_shift[2][1] , \a_shift[2][0] }), 
        .B({N449, N448, N447, N446, N445, N444, N443, N442, N441, N440, N439, 
        N438, N437, N436, N435, N434, N433, N432, N431, N430, N429, N428, N427, 
        N426, N425}), .CI(1'b0), .SUM({N1169, N1168, N1167, N1166, N1165, 
        N1164, N1163, N1162, N1161, N1160, N1159, N1158, N1157, N1156, N1155, 
        N1154, N1153, N1152, N1151, N1150, N1149, N1148, N1147, N1146, N1145})
         );
  IIR_DW01_add_36 add_5_root_add_3_root_sub_139_5 ( .A({N1169, N1168, N1167, 
        N1166, N1165, N1164, N1163, N1162, N1161, N1160, N1159, N1158, N1157, 
        N1156, N1155, N1154, N1153, N1152, N1151, N1150, N1149, N1148, N1147, 
        N1146, N1145}), .B({\b_shift[2][24] , \b_shift[2][23] , 
        \b_shift[2][22] , \b_shift[2][21] , \b_shift[2][20] , \b_shift[2][19] , 
        \b_shift[2][18] , \b_shift[2][17] , \b_shift[2][16] , \b_shift[2][15] , 
        \b_shift[2][14] , \b_shift[2][13] , \b_shift[2][12] , \b_shift[2][11] , 
        \b_shift[2][10] , \b_shift[2][9] , \b_shift[2][8] , \b_shift[2][7] , 
        \b_shift[2][6] , \b_shift[2][5] , \b_shift[2][4] , \b_shift[2][3] , 
        \b_shift[2][2] , \b_shift[2][1] , \b_shift[2][0] }), .CI(1'b0), .SUM({
        N1119, N1118, N1117, N1116, N1115, N1114, N1113, N1112, N1111, N1110, 
        N1109, N1108, N1107, N1106, N1105, N1104, N1103, N1102, N1101, N1100, 
        N1099, N1098, N1097, N1096, N1095}) );
  IIR_DW01_add_34 add_0_root_add_0_root_add_72_5 ( .A({N769, N768, N767, N766, 
        N765, N764, N763, N762, N761, N760, N759, N758, N757, N756, N755, N754, 
        N753, N752, N751, N750, N673, N672, N671, N670, N701}), .B({N744, N743, 
        N742, N741, N740, N739, N738, N737, N736, N735, N734, N733, N732, N731, 
        N730, N729, N728, N727, N726, N725, N724, N723, N722, N721, N720}), 
        .CI(1'b0), .SUM({N794, N793, N792, N791, N790, N789, N788, N787, N786, 
        N785, N784, N783, N782, N781, N780, N779, N778, N777, N776, N775, N774, 
        N773, N772, N771, N770}) );
  IIR_DW01_add_33 add_4_root_add_0_root_add_77_7 ( .A({n78, n78, n77, n77, n77, 
        n77, n42, n40, n38, n36, n34, n32, n30, n28, n26, n24, n22, n20, n18, 
        n16, n14, n13, N921, 1'b0, 1'b0}), .B({n78, n76, n76, n76, n76, n42, 
        n40, n38, n36, n34, n32, n30, n28, n26, n24, n22, n20, n18, n16, n14, 
        n13, N921, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N1019, N1018, N1017, 
        N1016, N1015, N1014, N1013, N1012, N1011, N1010, N1009, N1008, N1007, 
        N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, N997, 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1}) );
  IIR_DW01_add_32 add_1_root_add_0_root_add_77_7 ( .A({N919, N918, N917, N916, 
        N915, N914, N913, N912, N911, N910, N909, N908, N907, N906, N905, N904, 
        N903, N902, N901, N900, n18, n16, n14, n13, N921}), .B({N1019, N1018, 
        N1017, N1016, N1015, N1014, N1013, N1012, N1011, N1010, N1009, N1008, 
        N1007, N1006, N1005, N1004, N1003, N1002, N1001, N1000, N999, N998, 
        N997, 1'b0, 1'b0}), .CI(1'b0), .SUM({N994, N993, N992, N991, N990, 
        N989, N988, N987, N986, N985, N984, N983, N982, N981, N980, N979, N978, 
        N977, N976, N975, N974, N973, N972, N971, N970}) );
  IIR_DW01_add_31 add_0_root_add_0_root_add_77_7 ( .A({N994, N993, N992, N991, 
        N990, N989, N988, N987, N986, N985, N984, N983, N982, N981, N980, N979, 
        N978, N977, N976, N975, N974, N973, N972, N971, N970}), .B({N894, N893, 
        N892, N891, N890, N889, N888, N887, N886, N885, N884, N883, N882, N881, 
        N880, N879, N878, N877, N876, N875, N874, N873, N872, N871, N870}), 
        .CI(1'b0), .SUM({N1044, N1043, N1042, N1041, N1040, N1039, N1038, 
        N1037, N1036, N1035, N1034, N1033, N1032, N1031, N1030, N1029, N1028, 
        N1027, N1026, N1025, N1024, N1023, N1022, N1021, N1020}) );
  IIR_DW01_add_30 add_15_root_add_3_root_sub_139_5 ( .A({N794, N793, N792, 
        N791, N790, N789, N788, N787, N786, N785, N784, N783, N782, N781, N780, 
        N779, N778, N777, N776, N775, N774, N773, N772, N771, N770}), .B({
        N1044, N1043, N1042, N1041, N1040, N1039, N1038, N1037, N1036, N1035, 
        N1034, N1033, N1032, N1031, N1030, N1029, N1028, N1027, N1026, N1025, 
        N1024, N1023, N1022, N1021, N1020}), .CI(1'b0), .SUM({N1269, N1268, 
        N1267, N1266, N1265, N1264, N1263, N1262, N1261, N1260, N1259, N1258, 
        N1257, N1256, N1255, N1254, N1253, N1252, N1251, N1250, N1249, N1248, 
        N1247, N1246, N1245}) );
  IIR_DW01_add_29 add_30_root_add_3_root_sub_139_5 ( .A({n107, n107, n107, 
        n107, n107, n107, n107, n107, n107, n107, n107, n106, n107, n106, n106, 
        n106, n107, \s[2][23] , \s[2][22] , \s[2][21] , \s[2][20] , \s[2][19] , 
        \s[2][18] , \s[2][17] , \s[2][16] }), .B({n92, n92, n92, n92, n92, n93, 
        n93, \s[4][23] , \s[4][22] , \s[4][21] , \s[4][20] , \s[4][19] , 
        \s[4][18] , \s[4][17] , \s[4][16] , \s[4][15] , \s[4][14] , \s[4][13] , 
        \s[4][12] , \s[4][11] , \s[4][10] , \s[4][9] , \s[4][8] , \s[4][7] , 
        1'b0}), .CI(1'b0), .SUM({N1513, N1512, N1511, N1510, N1509, N1508, 
        N1507, N1506, N1505, N1504, N1503, N1502, N1501, N1500, N1499, N1498, 
        N1497, N1496, N1495, N1494, N1493, N1492, N1491, N1490, N1489}) );
  IIR_DW01_add_28 add_12_root_add_3_root_sub_139_5 ( .A({N1269, N1268, N1267, 
        N1266, N1265, N1264, N1263, N1262, N1261, N1260, N1259, N1258, N1257, 
        N1256, N1255, N1254, N1253, N1252, N1251, N1250, N1249, N1248, N1247, 
        N1246, N1245}), .B({N1513, N1512, N1511, N1510, N1509, N1508, N1507, 
        N1506, N1505, N1504, N1503, N1502, N1501, N1500, N1499, N1498, N1497, 
        N1496, N1495, N1494, N1493, N1492, N1491, N1490, N1489}), .CI(1'b0), 
        .SUM({N1219, N1218, N1217, N1216, N1215, N1214, N1213, N1212, N1211, 
        N1210, N1209, N1208, N1207, N1206, N1205, N1204, N1203, N1202, N1201, 
        N1200, N1199, N1198, N1197, N1196, N1195}) );
  IIR_DW01_add_27 add_6_root_add_3_root_sub_139_5 ( .A({N869, N868, N867, N866, 
        N865, N864, N863, N862, N861, N860, N859, N858, N857, N856, N855, N854, 
        N853, N852, N851, N850, N849, N848, N847, N846, N845}), .B({N1219, 
        N1218, N1217, N1216, N1215, N1214, N1213, N1212, N1211, N1210, N1209, 
        N1208, N1207, N1206, N1205, N1204, N1203, N1202, N1201, N1200, N1199, 
        N1198, N1197, N1196, N1195}), .CI(1'b0), .SUM({N1144, N1143, N1142, 
        N1141, N1140, N1139, N1138, N1137, N1136, N1135, N1134, N1133, N1132, 
        N1131, N1130, N1129, N1128, N1127, N1126, N1125, N1124, N1123, N1122, 
        N1121, N1120}) );
  IIR_DW01_add_26 add_34_root_add_3_root_sub_139_5 ( .A({n103, n102, n102, 
        n102, n102, n102, \s[3][23] , \s[3][22] , \s[3][21] , \s[3][20] , 
        \s[3][19] , \s[3][18] , \s[3][17] , \s[3][16] , \s[3][15] , \s[3][14] , 
        \s[3][13] , \s[3][12] , \s[3][11] , \s[3][10] , \s[3][9] , \s[3][8] , 
        \s[3][7] , 1'b0, 1'b0}), .B({n103, n100, n100, n100, n100, n99, n99, 
        n99, n99, n99, n99, n99, n99, n99, n99, n99, n99, \s[3][23] , 
        \s[3][22] , \s[3][21] , \s[3][20] , \s[3][19] , \s[3][18] , \s[3][17] , 
        \s[3][16] }), .CI(1'b0), .SUM({n403, n404, n405, n406, n408, n409, 
        n410, n411, n412, n413, n414, n415, n416, n417, n419, n420, n421, n422, 
        n423, n424, n425, n426, n427, n428, n431}) );
  IIR_DW01_add_25 add_32_root_add_3_root_sub_139_5 ( .A({n108, n107, n107, 
        n107, n107, n107, \s[2][23] , \s[2][22] , \s[2][21] , \s[2][20] , 
        \s[2][19] , \s[2][18] , \s[2][17] , \s[2][16] , \s[2][15] , \s[2][14] , 
        \s[2][13] , \s[2][12] , \s[2][11] , \s[2][10] , \s[2][9] , \s[2][8] , 
        \s[2][7] , 1'b0, 1'b0}), .B({n108, n105, n105, n105, n106, n106, n106, 
        n105, n106, n105, n106, n105, n106, n106, n106, \s[2][23] , \s[2][22] , 
        \s[2][21] , \s[2][20] , \s[2][19] , \s[2][18] , \s[2][17] , \s[2][16] , 
        \s[2][15] , \s[2][14] }), .CI(1'b0), .SUM({N334, N333, N332, N331, 
        N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, 
        N318, N317, N316, N315, N314, N313, N312, N311, N310}) );
  IIR_DW01_sub_3 sub_25_root_add_3_root_sub_139_5 ( .A({N334, N333, N332, N331, 
        N330, N329, N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, 
        N318, N317, N316, N315, N314, N313, N312, N311, N310}), .B({N535, N535, 
        N535, N534, N533, N532, N531, N530, N529, N528, N527, N526, N525, N524, 
        N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, 1'b0}), 
        .CI(1'b0), .DIFF({n348, n349, n350, n351, n353, n354, n355, n356, n357, 
        n358, n359, n360, n361, n362, n364, n365, n366, n367, n368, n369, n370, 
        n371, n372, n373, n375}) );
  IIR_DW01_add_24 add_9_root_add_3_root_sub_139_5 ( .A({n403, n404, n405, n406, 
        n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n419, n420, 
        n421, n422, n423, n424, n425, n426, n427, n428, n431}), .B({n348, n349, 
        n350, n351, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, 
        n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n375}), 
        .CI(1'b0), .SUM({N1194, N1193, N1192, N1191, N1190, N1189, N1188, 
        N1187, N1186, N1185, N1184, N1183, N1182, N1181, N1180, N1179, N1178, 
        N1177, N1176, N1175, N1174, N1173, N1172, N1171, N1170}) );
  IIR_DW01_add_23 add_37_root_add_3_root_sub_139_5 ( .A({n89, n89, n89, n89, 
        n89, n89, n89, n89, n89, n89, n89, n89, n89, n89, n89, n89, n89, 
        \s[5][23] , \s[5][22] , \s[5][21] , \s[5][20] , \s[5][19] , \s[5][18] , 
        \s[5][17] , \s[5][16] }), .B({n101, n101, n100, n101, n101, n100, n100, 
        n100, n100, n100, \s[3][23] , \s[3][22] , \s[3][21] , \s[3][20] , 
        \s[3][19] , \s[3][18] , \s[3][17] , \s[3][16] , \s[3][15] , \s[3][14] , 
        \s[3][13] , \s[3][12] , \s[3][11] , \s[3][10] , \s[3][9] }), .CI(1'b0), 
        .SUM({n205, n206, n207, n208, n210, n211, n212, n213, n214, n215, n216, 
        n217, n218, n219, n221, n222, n223, n224, n225, n226, n227, n228, n229, 
        n230, n233}) );
  IIR_DW01_add_22 add_24_root_sub_139_5 ( .A({N622, N622, N622, N621, N620, 
        N619, N618, N617, N616, N615, N614, N613, N612, N611, N610, N609, N608, 
        N607, N606, N605, N604, N603, N602, N601}), .B({N645, N645, N644, N643, 
        N642, N641, N640, N639, N638, N637, N636, N635, N634, N633, N632, N631, 
        N630, N629, N628, N627, N626, N625, N624, N623}), .CI(1'b0), .SUM({
        N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, 
        N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286}) );
  IIR_DW01_add_21 add_13_root_add_3_root_sub_139_5 ( .A({n205, n206, n207, 
        n208, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n221, 
        n222, n223, n224, n225, n226, n227, n228, n229, n230, n233}), .B({N309, 
        N309, N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, 
        N297, N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286}), .CI(1'b0), .SUM({N1244, N1243, N1242, N1241, N1240, N1239, N1238, N1237, 
        N1236, N1235, N1234, N1233, N1232, N1231, N1230, N1229, N1228, N1227, 
        N1226, N1225, N1224, N1223, N1222, N1221, N1220}) );
  IIR_DW01_add_20 add_31_root_add_3_root_sub_139_5 ( .A({n108, n108, n108, 
        n108, n107, n108, n107, n108, n107, n108, n107, n107, n107, n107, n107, 
        n107, \s[2][23] , \s[2][22] , \s[2][21] , \s[2][20] , \s[2][19] , 
        \s[2][18] , \s[2][17] , \s[2][16] , \s[2][15] }), .B({n108, n105, n105, 
        n104, n105, n104, n105, n105, n105, n105, \s[2][23] , \s[2][22] , 
        \s[2][21] , \s[2][20] , \s[2][19] , \s[2][18] , \s[2][17] , \s[2][16] , 
        \s[2][15] , \s[2][14] , \s[2][13] , \s[2][12] , \s[2][11] , \s[2][10] , 
        \s[2][9] }), .CI(1'b0), .SUM({n376, n377, n378, n379, n380, n381, n382, 
        n383, n384, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, 
        n397, n398, n399, n400, n401, n402}) );
  IIR_DW01_sub_2 sub_16_root_add_3_root_sub_139_5 ( .A({n376, n377, n378, n379, 
        n380, n381, n382, n383, n384, n386, n387, n388, n389, n390, n391, n392, 
        n393, n394, n395, n397, n398, n399, n400, n401, n402}), .B({N1069, 
        N1068, N1067, N1066, N1065, N1064, N1063, N1062, N1061, N1060, N1059, 
        N1058, N1057, N1056, N1055, N1054, N1053, N1052, n39, n37, n35, n33, 
        n31, n29, n27}), .CI(1'b0), .DIFF({\b_shift[1][24] , \b_shift[1][23] , 
        \b_shift[1][22] , \b_shift[1][21] , \b_shift[1][20] , \b_shift[1][19] , 
        \b_shift[1][18] , \b_shift[1][17] , \b_shift[1][16] , \b_shift[1][15] , 
        \b_shift[1][14] , \b_shift[1][13] , \b_shift[1][12] , \b_shift[1][11] , 
        \b_shift[1][10] , \b_shift[1][9] , \b_shift[1][8] , \b_shift[1][7] , 
        \b_shift[1][6] , \b_shift[1][5] , \b_shift[1][4] , \b_shift[1][3] , 
        \b_shift[1][2] , \b_shift[1][1] , \b_shift[1][0] }) );
  IIR_DW01_add_17 add_46_root_add_3_root_sub_139_5 ( .A({\s_new[3][22] , 
        \s_new[3][21] , \s_new[3][20] , \s_new[3][19] , \s_new[3][18] , 
        \a_shift[5][5] , \a_shift[5][4] , \a_shift[5][3] , \a_shift[5][2] , 
        \a_shift[5][1] , \a_shift[5][0] , \s_new[3][11] , \s_new[3][10] , 
        \s_new[3][9] , \s_new[3][8] , \s_new[3][7] , 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({n73, n73, n73, n73, n73, n73, n73, 
        n73, n73, n73, \s_new[3][23] , \s_new[3][22] , \s_new[3][21] , 
        \s_new[3][20] , \s_new[3][19] , \s_new[3][18] , \a_shift[5][5] , 
        \a_shift[5][4] , \a_shift[5][3] , \a_shift[5][2] , \a_shift[5][1] , 
        \a_shift[5][0] , \s_new[3][11] , \s_new[3][10] , \s_new[3][9] }), .CI(
        1'b0), .SUM({N1094, N1093, N1092, N1091, N1090, N1089, N1088, N1087, 
        N1086, N1085, N1084, N1083, N1082, N1081, N1080, N1079, N1078, N1077, 
        N1076, N1075, N1074, N1073, N1072, N1071, N1070}) );
  IIR_DW01_add_16 add_25_root_sub_139_5 ( .A({N579, N579, N579, N579, N578, 
        N577, N576, N575, N574, N573, N572, N571, N570, N569, N568, N567, N566, 
        N565, N564, N563, N562, N561, N560}), .B({N600, N600, N600, N599, N598, 
        N597, N596, N595, N594, N593, N592, N591, N590, N589, N588, N587, N586, 
        N585, N584, N583, N582, N581, N580}), .CI(1'b0), .SUM({N285, N284, 
        N283, N282, N281, N280, N279, N278, N277, N276, N275, N274, N273, N272, 
        N271, N270, N269, N268, N267, N266, N265, N264, N263}) );
  IIR_DW01_add_14 add_26_root_add_3_root_sub_139_5 ( .A({N1094, N1093, N1092, 
        N1091, N1090, N1089, N1088, N1087, N1086, N1085, N1084, N1083, N1082, 
        N1081, N1080, N1079, N1078, N1077, N1076, N1075, N1074, N1073, N1072, 
        N1071, N1070}), .B({\a_shift[5][24] , \a_shift[5][23] , 
        \a_shift[5][22] , \a_shift[5][21] , \a_shift[5][20] , \a_shift[5][19] , 
        \a_shift[5][18] , \a_shift[5][17] , \a_shift[5][16] , \a_shift[5][15] , 
        \a_shift[5][14] , \a_shift[5][13] , \a_shift[5][12] , \a_shift[5][11] , 
        \a_shift[5][10] , \a_shift[5][9] , \a_shift[5][8] , \a_shift[5][7] , 
        \a_shift[5][6] , \a_shift[5][5] , \a_shift[5][4] , \a_shift[5][3] , 
        \a_shift[5][2] , \a_shift[5][1] , \a_shift[5][0] }), .CI(1'b0), .SUM({
        n178, n179, n180, n181, n182, n183, n184, n185, n186, n188, n189, n190, 
        n191, n192, n193, n194, n195, n196, n197, n199, n200, n201, n202, n203, 
        n204}) );
  IIR_DW01_add_13 add_29_root_add_3_root_sub_139_5 ( .A({n95, n95, n95, n95, 
        n95, n95, n95, n95, n95, \s[4][23] , \s[4][22] , \s[4][21] , 
        \s[4][20] , \s[4][19] , \s[4][18] , \s[4][17] , \s[4][16] , \s[4][15] , 
        \s[4][14] , \s[4][13] , \s[4][12] , \s[4][11] , \s[4][10] , \s[4][9] , 
        \s[4][8] }), .B({n95, n91, n91, n91, n92, n92, n92, n92, n92, n92, n92, 
        n92, \s[4][23] , \s[4][22] , \s[4][21] , \s[4][20] , \s[4][19] , 
        \s[4][18] , \s[4][17] , \s[4][16] , \s[4][15] , \s[4][14] , \s[4][13] , 
        \s[4][12] , \s[4][11] }), .CI(1'b0), .SUM({N1588, N1587, N1586, N1585, 
        N1584, N1583, N1582, N1581, N1580, N1579, N1578, N1577, N1576, N1575, 
        N1574, N1573, N1572, N1571, N1570, N1569, N1568, N1567, N1566, N1565, 
        N1564}) );
  IIR_DW01_sub_1 sub_22_root_add_3_root_sub_139_5 ( .A({N1588, N1587, N1586, 
        N1585, N1584, N1583, N1582, N1581, N1580, N1579, N1578, N1577, N1576, 
        N1575, N1574, N1573, N1572, N1571, N1570, N1569, N1568, N1567, N1566, 
        N1565, N1564}), .B({N559, N559, N558, N557, N556, N555, N554, N553, 
        N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, 
        N540, N539, N538, N537, N536}), .CI(1'b0), .DIFF({n150, n151, n152, 
        n153, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n166, 
        n167, n168, n169, n170, n171, n172, n173, n174, n175, n177}) );
  IIR_DW01_add_12 add_38_root_add_3_root_sub_139_5 ( .A({n90, n90, n89, n89, 
        n89, n89, n89, n89, n89, n89, n89, n89, n89, n89, \s[5][23] , 
        \s[5][22] , \s[5][21] , \s[5][20] , \s[5][19] , \s[5][18] , \s[5][17] , 
        \s[5][16] , \s[5][15] , \s[5][14] , \s[5][13] }), .B({n90, n86, n86, 
        n86, n87, n87, n87, n87, n87, n87, n87, n87, n87, \s[5][23] , 
        \s[5][22] , \s[5][21] , \s[5][20] , \s[5][19] , \s[5][18] , \s[5][17] , 
        \s[5][16] , \s[5][15] , \s[5][14] , \s[5][13] , \s[5][12] }), .CI(1'b0), .SUM({n289, n290, n296, n307, n319, n330, n341, n352, n363, n374, n385, n396, 
        n407, n418, n430, n441, n452, n459, n460, n461, n462, n463, n464, n465, 
        n467}) );
  IIR_DW01_add_11 add_18_root_add_3_root_sub_139_5 ( .A({n289, n290, n296, 
        n307, n319, n330, n341, n352, n363, n374, n385, n396, n407, n418, n430, 
        n441, n452, n459, n460, n461, n462, n463, n464, n465, n467}), .B({N285, 
        N285, N285, N284, N283, N282, N281, N280, N279, N278, N277, N276, N275, 
        N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263}), .CI(1'b0), .SUM({n321, n322, n323, n324, n325, n326, n327, n328, n329, n331, 
        n332, n333, n334, n335, n336, n337, n338, n339, n340, n342, n343, n344, 
        n345, n346, n347}) );
  IIR_DW01_add_10 add_10_root_add_3_root_sub_139_5 ( .A({n321, n322, n323, 
        n324, n325, n326, n327, n328, n329, n331, n332, n333, n334, n335, n336, 
        n337, n338, n339, n340, n342, n343, n344, n345, n346, n347}), .B({n150, 
        n151, n152, n153, n155, n156, n157, n158, n159, n160, n161, n162, n163, 
        n164, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n177}), .CI(1'b0), .SUM({\a_shift[4][24] , \a_shift[4][23] , \a_shift[4][22] , 
        \a_shift[4][21] , \a_shift[4][20] , \a_shift[4][19] , \a_shift[4][18] , 
        \a_shift[4][17] , \a_shift[4][16] , \a_shift[4][15] , \a_shift[4][14] , 
        \a_shift[4][13] , \a_shift[4][12] , \a_shift[4][11] , \a_shift[4][10] , 
        \a_shift[4][9] , \a_shift[4][8] , \a_shift[4][7] , \a_shift[4][6] , 
        \a_shift[4][5] , \a_shift[4][4] , \a_shift[4][3] , \a_shift[4][2] , 
        \a_shift[4][1] , \a_shift[4][0] }) );
  IIR_DW01_add_9 add_7_root_add_3_root_sub_139_5 ( .A({\a_shift[4][24] , 
        \a_shift[4][23] , \a_shift[4][22] , \a_shift[4][21] , \a_shift[4][20] , 
        \a_shift[4][19] , \a_shift[4][18] , \a_shift[4][17] , \a_shift[4][16] , 
        \a_shift[4][15] , \a_shift[4][14] , \a_shift[4][13] , \a_shift[4][12] , 
        \a_shift[4][11] , \a_shift[4][10] , \a_shift[4][9] , \a_shift[4][8] , 
        \a_shift[4][7] , \a_shift[4][6] , \a_shift[4][5] , \a_shift[4][4] , 
        \a_shift[4][3] , \a_shift[4][2] , \a_shift[4][1] , \a_shift[4][0] }), 
        .B({N1244, N1243, N1242, N1241, N1240, N1239, N1238, N1237, N1236, 
        N1235, N1234, N1233, N1232, N1231, N1230, N1229, N1228, N1227, N1226, 
        N1225, N1224, N1223, N1222, N1221, N1220}), .CI(1'b0), .SUM({n495, 
        n496, n497, n498, n500, n501, n502, n503, n504, n505, n506, n507, n508, 
        n509, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n122}) );
  IIR_DW01_add_8 add_4_root_add_3_root_sub_139_5 ( .A({n495, n496, n497, n498, 
        n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n511, n512, 
        n513, n514, n515, n516, n517, n518, n519, n520, n122}), .B({N819, N818, 
        N817, N816, N815, N814, N813, N812, N811, N810, N809, N808, N807, N806, 
        N805, N804, N803, N802, N801, N800, N799, N798, N797, N796, N795}), 
        .CI(1'b0), .SUM({n468, n469, n470, n471, n472, n473, n474, n475, n476, 
        n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n489, n490, 
        n491, n492, n493, n494}) );
  IIR_DW01_add_7 add_11_root_add_3_root_sub_139_5 ( .A({N844, N843, N842, N841, 
        N840, N839, N838, N837, N836, N835, N834, N833, N832, N831, N830, N829, 
        N828, N827, N826, N825, N824, N823, N822, N821, N820}), .B({
        \b_shift[3][24] , \b_shift[3][23] , \b_shift[3][22] , \b_shift[3][21] , 
        \b_shift[3][20] , \b_shift[3][19] , \b_shift[3][18] , \b_shift[3][17] , 
        \b_shift[3][16] , \b_shift[3][15] , \b_shift[3][14] , \b_shift[3][13] , 
        \b_shift[3][12] , \b_shift[3][11] , \b_shift[3][10] , \b_shift[3][9] , 
        \b_shift[3][8] , \b_shift[3][7] , \b_shift[3][6] , \b_shift[3][5] , 
        \b_shift[3][4] , \b_shift[3][3] , \b_shift[3][2] , \b_shift[3][1] , 
        \b_shift[3][0] }), .CI(1'b0), .SUM({n123, n124, n125, n126, n127, n128, 
        n129, n130, n131, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
        n142, n144, n145, n146, n147, n148, n149}) );
  IIR_DW01_add_6 add_3_root_add_3_root_sub_139_5 ( .A({n123, n124, n125, n126, 
        n127, n128, n129, n130, n131, n133, n134, n135, n136, n137, n138, n139, 
        n140, n141, n142, n144, n145, n146, n147, n148, n149}), .B({N1144, 
        N1143, N1142, N1141, N1140, N1139, N1138, N1137, N1136, N1135, N1134, 
        N1133, N1132, N1131, N1130, N1129, N1128, N1127, N1126, N1125, N1124, 
        N1123, N1122, N1121, N1120}), .CI(1'b0), .SUM({n292, n293, n294, n295, 
        n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n308, n309, 
        n310, n311, n312, n313, n314, n315, n316, n317, n320}) );
  IIR_DW01_add_5 add_35_root_add_3_root_sub_139_5 ( .A({n103, n103, n103, n102, 
        n102, n102, n102, n102, n102, \s[3][23] , \s[3][22] , \s[3][21] , 
        \s[3][20] , \s[3][19] , \s[3][18] , \s[3][17] , \s[3][16] , \s[3][15] , 
        \s[3][14] , \s[3][13] , \s[3][12] , \s[3][11] , \s[3][10] , \s[3][9] , 
        \s[3][8] }), .B({n103, n101, n102, n101, n102, n102, n101, n101, n100, 
        n101, n101, n100, n101, n101, n100, n101, \s[3][23] , \s[3][22] , 
        \s[3][21] , \s[3][20] , \s[3][19] , \s[3][18] , \s[3][17] , \s[3][16] , 
        \s[3][15] }), .CI(1'b0), .SUM({\a_shift[3][24] , \a_shift[3][23] , 
        \a_shift[3][22] , \a_shift[3][21] , \a_shift[3][20] , \a_shift[3][19] , 
        \a_shift[3][18] , \a_shift[3][17] , \a_shift[3][16] , \a_shift[3][15] , 
        \a_shift[3][14] , \a_shift[3][13] , \a_shift[3][12] , \a_shift[3][11] , 
        \a_shift[3][10] , \a_shift[3][9] , \a_shift[3][8] , \a_shift[3][7] , 
        \a_shift[3][6] , \a_shift[3][5] , \a_shift[3][4] , \a_shift[3][3] , 
        \a_shift[3][2] , \a_shift[3][1] , \a_shift[3][0] }) );
  IIR_DW01_sub_0 sub_17_root_add_3_root_sub_139_5 ( .A({\a_shift[3][24] , 
        \a_shift[3][23] , \a_shift[3][22] , \a_shift[3][21] , \a_shift[3][20] , 
        \a_shift[3][19] , \a_shift[3][18] , \a_shift[3][17] , \a_shift[3][16] , 
        \a_shift[3][15] , \a_shift[3][14] , \a_shift[3][13] , \a_shift[3][12] , 
        \a_shift[3][11] , \a_shift[3][10] , \a_shift[3][9] , \a_shift[3][8] , 
        \a_shift[3][7] , \a_shift[3][6] , \a_shift[3][5] , \a_shift[3][4] , 
        \a_shift[3][3] , \a_shift[3][2] , \a_shift[3][1] , \a_shift[3][0] }), 
        .B({n178, n179, n180, n181, n182, n183, n184, n185, n186, n188, n189, 
        n190, n191, n192, n193, n194, n195, n196, n197, n199, n200, n201, n202, 
        n203, n204}), .CI(1'b0), .DIFF({N1488, N1487, N1486, N1485, N1484, 
        N1483, N1482, N1481, N1480, N1479, N1478, N1477, N1476, N1475, N1474, 
        N1473, N1472, N1471, N1470, N1469, N1468, N1467, N1466, N1465, N1464})
         );
  IIR_DW01_add_4 add_2_root_add_3_root_sub_139_5 ( .A({\b_shift[1][24] , 
        \b_shift[1][23] , \b_shift[1][22] , \b_shift[1][21] , \b_shift[1][20] , 
        \b_shift[1][19] , \b_shift[1][18] , \b_shift[1][17] , \b_shift[1][16] , 
        \b_shift[1][15] , \b_shift[1][14] , \b_shift[1][13] , \b_shift[1][12] , 
        \b_shift[1][11] , \b_shift[1][10] , \b_shift[1][9] , \b_shift[1][8] , 
        \b_shift[1][7] , \b_shift[1][6] , \b_shift[1][5] , \b_shift[1][4] , 
        \b_shift[1][3] , \b_shift[1][2] , \b_shift[1][1] , \b_shift[1][0] }), 
        .B({N1488, N1487, N1486, N1485, N1484, N1483, N1482, N1481, N1480, 
        N1479, N1478, N1477, N1476, N1475, N1474, N1473, N1472, N1471, N1470, 
        N1469, N1468, N1467, N1466, N1465, N1464}), .CI(1'b0), .SUM({N1463, 
        N1462, N1461, N1460, N1459, N1458, N1457, N1456, N1455, N1454, N1453, 
        N1452, N1451, N1450, N1449, N1448, N1447, N1446, N1445, N1444, N1443, 
        N1442, N1441, N1440, N1439}) );
  IIR_DW01_add_3 add_1_root_add_3_root_sub_139_5 ( .A({N1119, N1118, N1117, 
        N1116, N1115, N1114, N1113, N1112, N1111, N1110, N1109, N1108, N1107, 
        N1106, N1105, N1104, N1103, N1102, N1101, N1100, N1099, N1098, N1097, 
        N1096, N1095}), .B({n468, n469, n470, n471, n472, n473, n474, n475, 
        n476, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n489, 
        n490, n491, n492, n493, n494}), .CI(1'b0), .SUM({N1563, N1562, N1561, 
        N1560, N1559, N1558, N1557, N1556, N1555, N1554, N1553, N1552, N1551, 
        N1550, N1549, N1548, N1547, N1546, N1545, N1544, N1543, N1542, N1541, 
        N1540, N1539}) );
  IIR_DW01_add_2 add_49_root_add_3_root_sub_139_5 ( .A({N1194, N1193, N1192, 
        N1191, N1190, N1189, N1188, N1187, N1186, N1185, N1184, N1183, N1182, 
        N1181, N1180, N1179, N1178, N1177, N1176, N1175, N1174, N1173, N1172, 
        N1171, N1170}), .B({n292, n293, n294, n295, n297, n298, n299, n300, 
        n301, n302, n303, n304, n305, n306, n308, n309, n310, n311, n312, n313, 
        n314, n315, n316, n317, n320}), .CI(1'b0), .SUM({n545, n544, n543, 
        n542, n541, n540, n539, n538, n537, n536, n535, n534, n533, n532, n531, 
        n530, n529, n528, n527, n526, n525, n524, n523, n522, n521}) );
  IIR_DW01_add_1 add_50_root_add_3_root_sub_139_5 ( .A({N1463, N1462, N1461, 
        N1460, N1459, N1458, N1457, N1456, N1455, N1454, N1453, N1452, N1451, 
        N1450, N1449, N1448, N1447, N1446, N1445, N1444, N1443, N1442, N1441, 
        N1440, N1439}), .B({N1563, N1562, N1561, N1560, N1559, N1558, N1557, 
        N1556, N1555, N1554, N1553, N1552, N1551, N1550, N1549, N1548, N1547, 
        N1546, N1545, N1544, N1543, N1542, N1541, N1540, N1539}), .CI(1'b0), 
        .SUM({n570, n569, n568, n567, n566, n565, n564, n563, n562, n561, n560, 
        n559, n558, n557, n556, n555, n554, n553, n552, n551, n550, n549, n548, 
        n547, n546}) );
  IIR_DW01_add_0 add_0_root_add_3_root_sub_139_5 ( .A({n545, n544, n543, n542, 
        n541, n540, n539, n538, n537, n536, n535, n534, n533, n532, n531, n530, 
        n529, n528, n527, n526, n525, n524, n523, n522, n521}), .B({n570, n569, 
        n568, n567, n566, n565, n564, n563, n562, n561, n560, n559, n558, n557, 
        n556, n555, n554, n553, n552, n551, n550, n549, n548, n547, n546}), 
        .CI(1'b0), .SUM({Yn[15], SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, Yn[14:0], SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10}) );
  DFFRX1 \RAddr_reg[19]  ( .D(N1415), .CK(clk), .RN(n68), .Q(RAddr[19]) );
  DFFRX1 \flag_reg[0]  ( .D(n9), .CK(clk), .RN(n50), .Q(n11), .QN(n6) );
  DFFRX1 \flag_reg[1]  ( .D(n8), .CK(clk), .RN(n50), .Q(n12), .QN(n5) );
  DFFRX1 \RAddr_reg[14]  ( .D(N1410), .CK(clk), .RN(n67), .Q(RAddr[14]) );
  DFFRX1 \RAddr_reg[15]  ( .D(N1411), .CK(clk), .RN(n67), .Q(RAddr[15]) );
  DFFRX1 \RAddr_reg[16]  ( .D(N1412), .CK(clk), .RN(n68), .Q(RAddr[16]) );
  DFFRX1 \RAddr_reg[17]  ( .D(N1413), .CK(clk), .RN(n68), .Q(RAddr[17]) );
  DFFRX1 \RAddr_reg[18]  ( .D(N1414), .CK(clk), .RN(n68), .Q(RAddr[18]) );
  DFFRX1 \RAddr_reg[8]  ( .D(N1404), .CK(clk), .RN(n67), .Q(RAddr[8]) );
  DFFRX1 \RAddr_reg[9]  ( .D(N1405), .CK(clk), .RN(n67), .Q(RAddr[9]) );
  DFFRX1 \RAddr_reg[10]  ( .D(N1406), .CK(clk), .RN(n67), .Q(RAddr[10]) );
  DFFRX1 \RAddr_reg[11]  ( .D(N1407), .CK(clk), .RN(n67), .Q(RAddr[11]) );
  DFFRX1 \RAddr_reg[12]  ( .D(N1408), .CK(clk), .RN(n67), .Q(RAddr[12]) );
  DFFRX1 \RAddr_reg[13]  ( .D(N1409), .CK(clk), .RN(n67), .Q(RAddr[13]) );
  DFFRX1 \RAddr_reg[4]  ( .D(N1400), .CK(clk), .RN(n67), .Q(RAddr[4]) );
  DFFRX1 \RAddr_reg[5]  ( .D(N1401), .CK(clk), .RN(n67), .Q(RAddr[5]) );
  DFFRX1 \RAddr_reg[6]  ( .D(N1402), .CK(clk), .RN(n67), .Q(RAddr[6]) );
  DFFRX1 \RAddr_reg[7]  ( .D(N1403), .CK(clk), .RN(n67), .Q(RAddr[7]) );
  DFFRX1 \RAddr_reg[1]  ( .D(N1397), .CK(clk), .RN(n66), .Q(RAddr[1]) );
  DFFRX1 \RAddr_reg[2]  ( .D(N1398), .CK(clk), .RN(n66), .Q(RAddr[2]) );
  DFFRX1 \RAddr_reg[3]  ( .D(N1399), .CK(clk), .RN(n66), .Q(RAddr[3]) );
  DFFRX1 \RAddr_reg[0]  ( .D(N1396), .CK(clk), .RN(n66), .Q(RAddr[0]) );
  DFFRX1 \s_new_reg[2][23]  ( .D(\s_new[3][23] ), .CK(clk), .RN(n59), .Q(
        \s_new[2][23] ) );
  DFFRX1 \s_new_reg[1][23]  ( .D(n42), .CK(clk), .RN(n59), .Q(\s_new[1][23] )
         );
  DFFRX1 \s_new_reg[2][22]  ( .D(\s_new[3][22] ), .CK(clk), .RN(n60), .Q(
        \s_new[2][22] ) );
  DFFRX1 \s_new_reg[1][22]  ( .D(n40), .CK(clk), .RN(n60), .Q(N1051) );
  DFFRX1 \s_new_reg[2][21]  ( .D(\s_new[3][21] ), .CK(clk), .RN(n60), .Q(
        \s_new[2][21] ) );
  DFFRX1 \s_new_reg[1][21]  ( .D(n38), .CK(clk), .RN(n60), .Q(N1050) );
  DFFRX1 \s_reg[3][24]  ( .D(n95), .CK(clk), .RN(n50), .Q(\s[3][24] ) );
  DFFRX1 \s_new_reg[3][24]  ( .D(n72), .CK(clk), .RN(n59), .Q(\s_new[3][24] )
         );
  DFFRX1 \s_new_reg[2][24]  ( .D(n75), .CK(clk), .RN(n59), .Q(\s_new[2][24] )
         );
  DFFRX1 \s_new_reg[3][23]  ( .D(\s_new[4][23] ), .CK(clk), .RN(n59), .Q(
        \s_new[3][23] ) );
  DFFRX1 \s_reg[5][8]  ( .D(DIn[1]), .CK(clk), .RN(n58), .Q(\s[5][8] ) );
  DFFRX1 \s_new_reg[2][20]  ( .D(\s_new[3][20] ), .CK(clk), .RN(n61), .Q(
        \s_new[2][20] ) );
  DFFRX1 \s_new_reg[1][20]  ( .D(n36), .CK(clk), .RN(n61), .Q(N1049) );
  DFFRX1 \s_new_reg[2][19]  ( .D(\s_new[3][19] ), .CK(clk), .RN(n61), .Q(
        \s_new[2][19] ) );
  DFFRX1 \s_new_reg[1][19]  ( .D(n34), .CK(clk), .RN(n61), .Q(N1048) );
  DFFRX1 \s_new_reg[2][18]  ( .D(\s_new[3][18] ), .CK(clk), .RN(n61), .Q(
        \s_new[2][18] ) );
  DFFRX1 \s_new_reg[1][18]  ( .D(n32), .CK(clk), .RN(n61), .Q(N1047) );
  DFFRX1 \s_new_reg[2][17]  ( .D(\a_shift[5][5] ), .CK(clk), .RN(n62), .Q(
        \s_new[2][17] ) );
  DFFRX1 \s_new_reg[1][17]  ( .D(n30), .CK(clk), .RN(n62), .Q(N1046) );
  DFFRX1 \s_new_reg[2][16]  ( .D(\a_shift[5][4] ), .CK(clk), .RN(n62), .Q(
        \s_new[2][16] ) );
  DFFRX1 \s_new_reg[1][16]  ( .D(n28), .CK(clk), .RN(n62), .Q(N1045) );
  DFFRX1 \s_new_reg[2][15]  ( .D(\a_shift[5][3] ), .CK(clk), .RN(n63), .Q(N952) );
  DFFRX1 \s_new_reg[2][14]  ( .D(\a_shift[5][2] ), .CK(clk), .RN(n63), .Q(N951) );
  DFFRX1 \s_reg[3][7]  ( .D(\s[4][7] ), .CK(clk), .RN(n58), .Q(\s[3][7] ) );
  DFFRX1 \s_reg[2][7]  ( .D(\s[3][7] ), .CK(clk), .RN(n58), .Q(\s[2][7] ) );
  DFFRX1 \s_reg[3][8]  ( .D(\s[4][8] ), .CK(clk), .RN(n58), .Q(\s[3][8] ) );
  DFFRX1 \s_reg[5][9]  ( .D(DIn[2]), .CK(clk), .RN(n57), .Q(\s[5][9] ) );
  DFFRX1 \s_reg[1][24]  ( .D(n108), .CK(clk), .RN(n50), .Q(\s[1][24] ) );
  DFFRX1 \s_new_reg[4][24]  ( .D(Yn[15]), .CK(clk), .RN(n59), .Q(
        \s_new[4][24] ) );
  DFFRX1 \s_new_reg[0][24]  ( .D(n82), .CK(clk), .RN(n59), .Q(\s_new[0][24] )
         );
  DFFRX1 \s_reg[3][13]  ( .D(\s[4][13] ), .CK(clk), .RN(n55), .Q(\s[3][13] )
         );
  DFFRX1 \s_new_reg[4][12]  ( .D(Yn[5]), .CK(clk), .RN(n64), .Q(N700) );
  DFFRX1 \s_reg[0][24]  ( .D(n111), .CK(clk), .RN(n50), .Q(\s[0][24] ) );
  DFFRX1 \s_new_reg[1][15]  ( .D(n26), .CK(clk), .RN(n63), .Q(\s_new[1][15] )
         );
  DFFRX1 \s_new_reg[1][14]  ( .D(n24), .CK(clk), .RN(n63), .Q(\s_new[1][14] )
         );
  DFFRX1 \s_new_reg[2][13]  ( .D(\a_shift[5][1] ), .CK(clk), .RN(n63), .Q(N950) );
  DFFRX1 \s_new_reg[1][13]  ( .D(n22), .CK(clk), .RN(n64), .Q(\s_new[1][13] )
         );
  DFFRX1 \s_new_reg[2][12]  ( .D(\a_shift[5][0] ), .CK(clk), .RN(n64), .Q(N949) );
  DFFRX1 \s_new_reg[1][12]  ( .D(n20), .CK(clk), .RN(n64), .Q(\s_new[1][12] )
         );
  DFFRX1 \s_new_reg[2][11]  ( .D(\s_new[3][11] ), .CK(clk), .RN(n64), .Q(N948)
         );
  DFFRX1 \s_new_reg[1][11]  ( .D(n18), .CK(clk), .RN(n64), .Q(\s_new[1][11] )
         );
  DFFRX1 \s_new_reg[2][10]  ( .D(\s_new[3][10] ), .CK(clk), .RN(n65), .Q(N947)
         );
  DFFRX1 \s_new_reg[1][10]  ( .D(n16), .CK(clk), .RN(n65), .Q(\s_new[1][10] )
         );
  DFFRX1 \s_new_reg[2][9]  ( .D(\s_new[3][9] ), .CK(clk), .RN(n65), .Q(N946)
         );
  DFFRX1 \s_new_reg[2][8]  ( .D(\s_new[3][8] ), .CK(clk), .RN(n66), .Q(N945)
         );
  DFFRX1 \s_reg[5][7]  ( .D(DIn[0]), .CK(clk), .RN(n58), .Q(\s[5][7] ) );
  DFFRX1 \s_reg[0][8]  ( .D(N560), .CK(clk), .RN(n58), .Q(\s[0][8] ) );
  DFFRX1 \s_new_reg[0][7]  ( .D(N514), .CK(clk), .RN(n66), .Q(N1274) );
  DFFRX1 \s_reg[0][7]  ( .D(\s[1][7] ), .CK(clk), .RN(n59), .Q(\s[0][7] ) );
  DFFRX1 \s_reg[4][7]  ( .D(\s[5][7] ), .CK(clk), .RN(n58), .Q(\s[4][7] ) );
  DFFRX1 \s_reg[2][8]  ( .D(\s[3][8] ), .CK(clk), .RN(n58), .Q(\s[2][8] ) );
  DFFRX1 \s_reg[1][8]  ( .D(\s[2][8] ), .CK(clk), .RN(n58), .Q(N560) );
  DFFRX1 \s_new_reg[4][7]  ( .D(Yn[0]), .CK(clk), .RN(n66), .Q(N695) );
  DFFRX1 \s_reg[4][9]  ( .D(\s[5][9] ), .CK(clk), .RN(n57), .Q(\s[4][9] ) );
  DFFRX1 \s_new_reg[3][8]  ( .D(N696), .CK(clk), .RN(n65), .Q(\s_new[3][8] )
         );
  DFFRX1 \s_new_reg[0][8]  ( .D(N515), .CK(clk), .RN(n66), .Q(\s_new[0][8] )
         );
  DFFRX1 \s_reg[0][9]  ( .D(\s[1][9] ), .CK(clk), .RN(n58), .Q(\s[0][9] ) );
  DFFRX1 \s_reg[3][10]  ( .D(\s[4][10] ), .CK(clk), .RN(n57), .Q(\s[3][10] )
         );
  DFFRX1 \s_reg[2][10]  ( .D(\s[3][10] ), .CK(clk), .RN(n57), .Q(\s[2][10] )
         );
  DFFRX1 \s_reg[4][8]  ( .D(\s[5][8] ), .CK(clk), .RN(n58), .Q(\s[4][8] ) );
  DFFRX1 \s_reg[3][9]  ( .D(\s[4][9] ), .CK(clk), .RN(n57), .Q(\s[3][9] ) );
  DFFRX1 \s_reg[2][9]  ( .D(\s[3][9] ), .CK(clk), .RN(n57), .Q(\s[2][9] ) );
  DFFRX1 \s_new_reg[3][7]  ( .D(N695), .CK(clk), .RN(n66), .Q(\s_new[3][7] )
         );
  DFFRX1 \s_new_reg[1][7]  ( .D(N921), .CK(clk), .RN(n66), .Q(N514) );
  DFFRX1 \s_reg[3][12]  ( .D(\s[4][12] ), .CK(clk), .RN(n56), .Q(\s[3][12] )
         );
  DFFRX1 \s_new_reg[4][11]  ( .D(Yn[4]), .CK(clk), .RN(n64), .Q(N699) );
  DFFRX1 \s_new_reg[3][11]  ( .D(N699), .CK(clk), .RN(n64), .Q(\s_new[3][11] )
         );
  DFFRX1 \s_new_reg[4][10]  ( .D(Yn[3]), .CK(clk), .RN(n65), .Q(N698) );
  DFFRX1 \s_new_reg[4][9]  ( .D(Yn[2]), .CK(clk), .RN(n65), .Q(N697) );
  DFFRX1 \s_new_reg[4][8]  ( .D(Yn[1]), .CK(clk), .RN(n65), .Q(N696) );
  DFFRX1 \s_new_reg[3][9]  ( .D(N697), .CK(clk), .RN(n65), .Q(\s_new[3][9] )
         );
  DFFRX1 \s_new_reg[0][10]  ( .D(n15), .CK(clk), .RN(n65), .Q(\s_new[0][10] )
         );
  DFFRX1 \s_new_reg[0][9]  ( .D(N516), .CK(clk), .RN(n65), .Q(\s_new[0][9] )
         );
  DFFRX1 \s_reg[0][10]  ( .D(\s[1][10] ), .CK(clk), .RN(n57), .Q(\s[0][10] )
         );
  DFFRX1 \s_reg[4][10]  ( .D(\s[5][10] ), .CK(clk), .RN(n57), .Q(\s[4][10] )
         );
  DFFRX1 \s_reg[5][10]  ( .D(DIn[3]), .CK(clk), .RN(n57), .Q(\s[5][10] ) );
  DFFRX1 \s_reg[3][11]  ( .D(\s[4][11] ), .CK(clk), .RN(n56), .Q(\s[3][11] )
         );
  DFFRX1 \s_new_reg[3][10]  ( .D(N698), .CK(clk), .RN(n65), .Q(\s_new[3][10] )
         );
  DFFRX1 \s_reg[1][7]  ( .D(\s[2][7] ), .CK(clk), .RN(n59), .Q(\s[1][7] ) );
  DFFRX1 \s_reg[1][9]  ( .D(\s[2][9] ), .CK(clk), .RN(n58), .Q(\s[1][9] ) );
  DFFRX1 \s_reg[1][10]  ( .D(\s[2][10] ), .CK(clk), .RN(n57), .Q(\s[1][10] )
         );
  DFFRX1 \s_reg[1][11]  ( .D(\s[2][11] ), .CK(clk), .RN(n57), .Q(\s[1][11] )
         );
  DFFRX1 \s_reg[1][12]  ( .D(\s[2][12] ), .CK(clk), .RN(n56), .Q(\s[1][12] )
         );
  DFFRX1 \s_new_reg[1][24]  ( .D(n78), .CK(clk), .RN(n59), .Q(\s_new[1][24] )
         );
  DFFRX1 \s_reg[4][24]  ( .D(n90), .CK(clk), .RN(n50), .Q(\s[4][24] ) );
  DFFRX1 \s_new_reg[0][23]  ( .D(n41), .CK(clk), .RN(n59), .Q(\s_new[0][23] )
         );
  DFFRX1 \s_new_reg[0][22]  ( .D(n39), .CK(clk), .RN(n60), .Q(\s_new[0][22] )
         );
  DFFRX1 \s_new_reg[0][21]  ( .D(n37), .CK(clk), .RN(n60), .Q(\s_new[0][21] )
         );
  DFFRX1 \s_new_reg[1][9]  ( .D(n14), .CK(clk), .RN(n65), .Q(N516) );
  DFFRX1 \s_new_reg[0][20]  ( .D(n35), .CK(clk), .RN(n61), .Q(\s_new[0][20] )
         );
  DFFRX1 \s_new_reg[0][19]  ( .D(n33), .CK(clk), .RN(n61), .Q(\s_new[0][19] )
         );
  DFFRX1 \s_new_reg[0][18]  ( .D(n31), .CK(clk), .RN(n62), .Q(\s_new[0][18] )
         );
  DFFRX1 \s_new_reg[0][17]  ( .D(n29), .CK(clk), .RN(n62), .Q(\s_new[0][17] )
         );
  DFFRX1 \s_new_reg[0][16]  ( .D(n27), .CK(clk), .RN(n62), .Q(\s_new[0][16] )
         );
  DFFRX1 \s_new_reg[1][8]  ( .D(n13), .CK(clk), .RN(n66), .Q(N515) );
  DFFRX1 \s_new_reg[0][12]  ( .D(n19), .CK(clk), .RN(n64), .Q(\s_new[0][12] )
         );
  DFFRX1 \s_new_reg[0][11]  ( .D(n17), .CK(clk), .RN(n64), .Q(\s_new[0][11] )
         );
  DFFRX1 \s_new_reg[0][15]  ( .D(n25), .CK(clk), .RN(n63), .Q(\s_new[0][15] )
         );
  DFFRX1 \s_new_reg[0][13]  ( .D(n21), .CK(clk), .RN(n64), .Q(\s_new[0][13] )
         );
  DFFRX1 \s_new_reg[0][14]  ( .D(n23), .CK(clk), .RN(n63), .Q(\s_new[0][14] )
         );
  DFFRX1 \WAddr_reg[0]  ( .D(N1416), .CK(clk), .RN(n68), .Q(WAddr[0]) );
  DFFRX1 \WAddr_reg[1]  ( .D(N1417), .CK(clk), .RN(n68), .Q(WAddr[1]) );
  DFFRX1 \WAddr_reg[2]  ( .D(N1418), .CK(clk), .RN(n68), .Q(WAddr[2]) );
  DFFRX1 \WAddr_reg[3]  ( .D(N1419), .CK(clk), .RN(n68), .Q(WAddr[3]) );
  DFFRX1 \WAddr_reg[4]  ( .D(N1420), .CK(clk), .RN(n68), .Q(WAddr[4]) );
  DFFRX1 \WAddr_reg[5]  ( .D(N1421), .CK(clk), .RN(n68), .Q(WAddr[5]) );
  DFFRX1 \WAddr_reg[6]  ( .D(N1422), .CK(clk), .RN(n68), .Q(WAddr[6]) );
  DFFRX1 \WAddr_reg[7]  ( .D(N1423), .CK(clk), .RN(n68), .Q(WAddr[7]) );
  DFFRX1 \WAddr_reg[8]  ( .D(N1424), .CK(clk), .RN(n69), .Q(WAddr[8]) );
  DFFRX1 \WAddr_reg[9]  ( .D(N1425), .CK(clk), .RN(n69), .Q(WAddr[9]) );
  DFFRX1 \WAddr_reg[11]  ( .D(N1427), .CK(clk), .RN(n69), .Q(WAddr[11]) );
  DFFRX1 \WAddr_reg[12]  ( .D(N1428), .CK(clk), .RN(n69), .Q(WAddr[12]) );
  DFFRX1 \WAddr_reg[13]  ( .D(N1429), .CK(clk), .RN(n69), .Q(WAddr[13]) );
  DFFRX1 \WAddr_reg[14]  ( .D(N1430), .CK(clk), .RN(n69), .Q(WAddr[14]) );
  DFFRX1 \WAddr_reg[15]  ( .D(N1431), .CK(clk), .RN(n69), .Q(WAddr[15]) );
  DFFRX1 \WAddr_reg[16]  ( .D(N1432), .CK(clk), .RN(n69), .Q(WAddr[16]) );
  DFFRX1 \WAddr_reg[18]  ( .D(N1434), .CK(clk), .RN(n69), .Q(WAddr[18]) );
  DFFRX1 \WAddr_reg[19]  ( .D(N1435), .CK(clk), .RN(n69), .Q(WAddr[19]) );
  DFFRX1 \s_reg[2][24]  ( .D(n103), .CK(clk), .RN(n50), .Q(\s[2][24] ) );
  DFFRX1 \WAddr_reg[10]  ( .D(N1426), .CK(clk), .RN(n69), .Q(WAddr[10]) );
  DFFRX1 \WAddr_reg[17]  ( .D(N1433), .CK(clk), .RN(n69), .Q(WAddr[17]) );
  DFFRX1 \s_new_reg[3][22]  ( .D(\s_new[4][22] ), .CK(clk), .RN(n60), .Q(
        \s_new[3][22] ) );
  DFFRX1 \s_new_reg[3][21]  ( .D(\s_new[4][21] ), .CK(clk), .RN(n60), .Q(
        \s_new[3][21] ) );
  DFFRX1 \s_new_reg[3][20]  ( .D(\s_new[4][20] ), .CK(clk), .RN(n60), .Q(
        \s_new[3][20] ) );
  DFFRX1 \s_reg[3][23]  ( .D(\s[4][23] ), .CK(clk), .RN(n50), .Q(\s[3][23] )
         );
  DFFRX1 \s_reg[3][22]  ( .D(\s[4][22] ), .CK(clk), .RN(n51), .Q(\s[3][22] )
         );
  DFFRX1 \s_new_reg[3][18]  ( .D(N674), .CK(clk), .RN(n61), .Q(\s_new[3][18] )
         );
  DFFRX1 \s_new_reg[3][19]  ( .D(N675), .CK(clk), .RN(n61), .Q(\s_new[3][19] )
         );
  DFFRX1 \s_new_reg[3][17]  ( .D(N673), .CK(clk), .RN(n62), .Q(\a_shift[5][5] ) );
  DFFRX1 \s_new_reg[3][16]  ( .D(N672), .CK(clk), .RN(n62), .Q(\a_shift[5][4] ) );
  DFFRX1 \s_new_reg[3][15]  ( .D(N671), .CK(clk), .RN(n63), .Q(\a_shift[5][3] ) );
  DFFRX1 \s_new_reg[3][14]  ( .D(N670), .CK(clk), .RN(n63), .Q(\a_shift[5][2] ) );
  DFFRX1 \s_reg[5][24]  ( .D(DIn[15]), .CK(clk), .RN(n50), .Q(\s[5][24] ) );
  DFFRX1 \s_reg[2][14]  ( .D(\s[3][14] ), .CK(clk), .RN(n55), .Q(\s[2][14] )
         );
  DFFRX1 \s_new_reg[4][23]  ( .D(Yn[15]), .CK(clk), .RN(n59), .Q(
        \s_new[4][23] ) );
  DFFRX1 \s_new_reg[4][22]  ( .D(Yn[15]), .CK(clk), .RN(n60), .Q(
        \s_new[4][22] ) );
  DFFRX1 \s_new_reg[4][21]  ( .D(Yn[14]), .CK(clk), .RN(n60), .Q(
        \s_new[4][21] ) );
  DFFRX1 \s_reg[5][23]  ( .D(DIn[15]), .CK(clk), .RN(n50), .Q(\s[5][23] ) );
  DFFRX1 \s_reg[2][23]  ( .D(\s[3][23] ), .CK(clk), .RN(n50), .Q(\s[2][23] )
         );
  DFFRX1 \s_reg[1][23]  ( .D(\s[2][23] ), .CK(clk), .RN(n51), .Q(\s[1][23] )
         );
  DFFRX1 \s_reg[5][22]  ( .D(DIn[15]), .CK(clk), .RN(n51), .Q(\s[5][22] ) );
  DFFRX1 \s_reg[2][22]  ( .D(\s[3][22] ), .CK(clk), .RN(n51), .Q(\s[2][22] )
         );
  DFFRX1 \s_reg[1][22]  ( .D(\s[2][22] ), .CK(clk), .RN(n51), .Q(\s[1][22] )
         );
  DFFRX1 \s_reg[5][21]  ( .D(DIn[14]), .CK(clk), .RN(n51), .Q(\s[5][21] ) );
  DFFRX1 \s_reg[2][21]  ( .D(\s[3][21] ), .CK(clk), .RN(n51), .Q(\s[2][21] )
         );
  DFFRX1 \s_reg[5][20]  ( .D(DIn[13]), .CK(clk), .RN(n52), .Q(\s[5][20] ) );
  DFFRX1 \s_reg[2][20]  ( .D(\s[3][20] ), .CK(clk), .RN(n52), .Q(\s[2][20] )
         );
  DFFRX1 \s_reg[2][19]  ( .D(\s[3][19] ), .CK(clk), .RN(n52), .Q(\s[2][19] )
         );
  DFFRX1 \s_reg[3][17]  ( .D(\s[4][17] ), .CK(clk), .RN(n53), .Q(\s[3][17] )
         );
  DFFRX1 \s_reg[0][23]  ( .D(\s[1][23] ), .CK(clk), .RN(n51), .Q(\s[0][23] )
         );
  DFFRX1 \s_reg[0][22]  ( .D(\s[1][22] ), .CK(clk), .RN(n51), .Q(\s[0][22] )
         );
  DFFRX1 \s_reg[0][21]  ( .D(\s[1][21] ), .CK(clk), .RN(n52), .Q(\s[0][21] )
         );
  DFFRX1 \s_reg[4][23]  ( .D(\s[5][23] ), .CK(clk), .RN(n50), .Q(\s[4][23] )
         );
  DFFRX1 \s_reg[4][22]  ( .D(\s[5][22] ), .CK(clk), .RN(n51), .Q(\s[4][22] )
         );
  DFFRX1 \s_reg[4][21]  ( .D(\s[5][21] ), .CK(clk), .RN(n51), .Q(\s[4][21] )
         );
  DFFRX1 \s_reg[3][21]  ( .D(\s[4][21] ), .CK(clk), .RN(n51), .Q(\s[3][21] )
         );
  DFFRX1 \s_reg[4][20]  ( .D(\s[5][20] ), .CK(clk), .RN(n52), .Q(\s[4][20] )
         );
  DFFRX1 \s_reg[3][20]  ( .D(\s[4][20] ), .CK(clk), .RN(n52), .Q(\s[3][20] )
         );
  DFFRX1 \s_reg[4][19]  ( .D(\s[5][19] ), .CK(clk), .RN(n52), .Q(\s[4][19] )
         );
  DFFRX1 \s_reg[3][19]  ( .D(\s[4][19] ), .CK(clk), .RN(n52), .Q(\s[3][19] )
         );
  DFFRX1 \s_reg[4][18]  ( .D(\s[5][18] ), .CK(clk), .RN(n53), .Q(\s[4][18] )
         );
  DFFRX1 \s_reg[3][18]  ( .D(\s[4][18] ), .CK(clk), .RN(n53), .Q(\s[3][18] )
         );
  DFFRX1 \s_reg[2][13]  ( .D(\s[3][13] ), .CK(clk), .RN(n55), .Q(\s[2][13] )
         );
  DFFRX1 \s_reg[1][13]  ( .D(\s[2][13] ), .CK(clk), .RN(n56), .Q(\s[1][13] )
         );
  DFFRX1 \s_reg[2][12]  ( .D(\s[3][12] ), .CK(clk), .RN(n56), .Q(\s[2][12] )
         );
  DFFRX1 \s_reg[2][11]  ( .D(\s[3][11] ), .CK(clk), .RN(n56), .Q(\s[2][11] )
         );
  DFFRX1 \s_new_reg[4][13]  ( .D(Yn[6]), .CK(clk), .RN(n63), .Q(N701) );
  DFFRX1 \s_reg[0][11]  ( .D(\s[1][11] ), .CK(clk), .RN(n57), .Q(\s[0][11] )
         );
  DFFRX1 \s_new_reg[3][13]  ( .D(N701), .CK(clk), .RN(n63), .Q(\a_shift[5][1] ) );
  DFFRX1 \s_reg[5][11]  ( .D(DIn[4]), .CK(clk), .RN(n56), .Q(\s[5][11] ) );
  DFFRX1 \s_reg[3][14]  ( .D(\s[4][14] ), .CK(clk), .RN(n55), .Q(\s[3][14] )
         );
  DFFRX1 \s_new_reg[3][12]  ( .D(N700), .CK(clk), .RN(n64), .Q(\a_shift[5][0] ) );
  DFFRX1 \s_reg[4][13]  ( .D(\s[5][13] ), .CK(clk), .RN(n55), .Q(\s[4][13] )
         );
  DFFRX1 \s_reg[4][12]  ( .D(\s[5][12] ), .CK(clk), .RN(n56), .Q(\s[4][12] )
         );
  DFFRX1 \s_new_reg[4][20]  ( .D(Yn[13]), .CK(clk), .RN(n60), .Q(
        \s_new[4][20] ) );
  DFFRX1 \s_new_reg[4][15]  ( .D(Yn[8]), .CK(clk), .RN(n62), .Q(N671) );
  DFFRX1 \s_reg[4][11]  ( .D(\s[5][11] ), .CK(clk), .RN(n56), .Q(\s[4][11] )
         );
  DFFRX1 \s_reg[1][14]  ( .D(\s[2][14] ), .CK(clk), .RN(n55), .Q(\s[1][14] )
         );
  DFFRX1 \s_new_reg[4][14]  ( .D(Yn[7]), .CK(clk), .RN(n63), .Q(N670) );
  DFFRX1 \s_reg[0][12]  ( .D(\s[1][12] ), .CK(clk), .RN(n56), .Q(\s[0][12] )
         );
  DFFRX1 \s_reg[0][13]  ( .D(\s[1][13] ), .CK(clk), .RN(n56), .Q(\s[0][13] )
         );
  DFFRX1 \s_reg[5][12]  ( .D(DIn[5]), .CK(clk), .RN(n56), .Q(\s[5][12] ) );
  DFFRX1 \s_new_reg[4][18]  ( .D(Yn[11]), .CK(clk), .RN(n61), .Q(N674) );
  DFFRX1 \s_reg[0][15]  ( .D(\s[1][15] ), .CK(clk), .RN(n55), .Q(\s[0][15] )
         );
  DFFRX1 \s_reg[0][14]  ( .D(\s[1][14] ), .CK(clk), .RN(n55), .Q(\s[0][14] )
         );
  DFFRX1 \s_reg[5][15]  ( .D(DIn[8]), .CK(clk), .RN(n54), .Q(\s[5][15] ) );
  DFFRX1 \s_new_reg[4][19]  ( .D(Yn[12]), .CK(clk), .RN(n61), .Q(N675) );
  DFFRX1 \s_new_reg[4][17]  ( .D(Yn[10]), .CK(clk), .RN(n62), .Q(N673) );
  DFFRX1 \s_new_reg[4][16]  ( .D(Yn[9]), .CK(clk), .RN(n62), .Q(N672) );
  DFFRX1 \s_reg[4][14]  ( .D(\s[5][14] ), .CK(clk), .RN(n55), .Q(\s[4][14] )
         );
  DFFRX1 \s_reg[0][16]  ( .D(\s[1][16] ), .CK(clk), .RN(n54), .Q(\s[0][16] )
         );
  DFFRX1 \s_reg[3][15]  ( .D(\s[4][15] ), .CK(clk), .RN(n54), .Q(\s[3][15] )
         );
  DFFRX1 \s_reg[1][15]  ( .D(\s[2][15] ), .CK(clk), .RN(n55), .Q(\s[1][15] )
         );
  DFFRX1 \s_reg[1][21]  ( .D(\s[2][21] ), .CK(clk), .RN(n52), .Q(\s[1][21] )
         );
  DFFRX1 \s_reg[1][20]  ( .D(\s[2][20] ), .CK(clk), .RN(n52), .Q(\s[1][20] )
         );
  DFFRX1 \s_reg[5][19]  ( .D(DIn[12]), .CK(clk), .RN(n52), .Q(\s[5][19] ) );
  DFFRX1 \s_reg[1][19]  ( .D(\s[2][19] ), .CK(clk), .RN(n53), .Q(\s[1][19] )
         );
  DFFRX1 \s_reg[5][18]  ( .D(DIn[11]), .CK(clk), .RN(n53), .Q(\s[5][18] ) );
  DFFRX1 \s_reg[2][18]  ( .D(\s[3][18] ), .CK(clk), .RN(n53), .Q(\s[2][18] )
         );
  DFFRX1 \s_reg[1][18]  ( .D(\s[2][18] ), .CK(clk), .RN(n53), .Q(\s[1][18] )
         );
  DFFRX1 \s_reg[5][17]  ( .D(DIn[10]), .CK(clk), .RN(n53), .Q(\s[5][17] ) );
  DFFRX1 \s_reg[4][15]  ( .D(\s[5][15] ), .CK(clk), .RN(n54), .Q(\s[4][15] )
         );
  DFFRX1 \s_new_reg[2][7]  ( .D(\s_new[3][7] ), .CK(clk), .RN(n66), .Q(N921)
         );
  DFFRX1 \s_reg[2][15]  ( .D(\s[3][15] ), .CK(clk), .RN(n54), .Q(\s[2][15] )
         );
  DFFRX1 \s_reg[2][17]  ( .D(\s[3][17] ), .CK(clk), .RN(n53), .Q(\s[2][17] )
         );
  DFFRX1 \s_reg[1][17]  ( .D(\s[2][17] ), .CK(clk), .RN(n54), .Q(\s[1][17] )
         );
  DFFRX1 \s_reg[5][16]  ( .D(DIn[9]), .CK(clk), .RN(n54), .Q(\s[5][16] ) );
  DFFRX1 \s_reg[3][16]  ( .D(\s[4][16] ), .CK(clk), .RN(n54), .Q(\s[3][16] )
         );
  DFFRX1 \s_reg[0][20]  ( .D(\s[1][20] ), .CK(clk), .RN(n52), .Q(\s[0][20] )
         );
  DFFRX1 \s_reg[0][19]  ( .D(\s[1][19] ), .CK(clk), .RN(n53), .Q(\s[0][19] )
         );
  DFFRX1 \s_reg[0][18]  ( .D(\s[1][18] ), .CK(clk), .RN(n53), .Q(\s[0][18] )
         );
  DFFRX1 \s_reg[0][17]  ( .D(\s[1][17] ), .CK(clk), .RN(n54), .Q(\s[0][17] )
         );
  DFFRX1 \s_reg[4][17]  ( .D(\s[5][17] ), .CK(clk), .RN(n53), .Q(\s[4][17] )
         );
  DFFRX1 \s_reg[4][16]  ( .D(\s[5][16] ), .CK(clk), .RN(n54), .Q(\s[4][16] )
         );
  DFFRX1 \s_reg[1][16]  ( .D(\s[2][16] ), .CK(clk), .RN(n54), .Q(\s[1][16] )
         );
  DFFRX1 \s_reg[2][16]  ( .D(\s[3][16] ), .CK(clk), .RN(n54), .Q(\s[2][16] )
         );
  DFFRX1 \s_reg[5][14]  ( .D(DIn[7]), .CK(clk), .RN(n55), .Q(\s[5][14] ) );
  DFFRX1 \s_reg[5][13]  ( .D(DIn[6]), .CK(clk), .RN(n55), .Q(\s[5][13] ) );
  ADDFXL U52 ( .A(n111), .B(n109), .CI(N599), .CO(N600) );
  ADDFXL U53 ( .A(n115), .B(n112), .CI(N468), .CO(N469) );
  ADDFXL U54 ( .A(n111), .B(n109), .CI(N578), .CO(N579) );
  CLKBUFX3 U55 ( .A(n96), .Y(n100) );
  CLKBUFX3 U56 ( .A(n96), .Y(n98) );
  CLKBUFX3 U57 ( .A(n97), .Y(n102) );
  CLKBUFX3 U58 ( .A(\s[1][24] ), .Y(n111) );
  CLKBUFX3 U59 ( .A(\s[5][24] ), .Y(n89) );
  CLKBUFX3 U60 ( .A(\s[1][24] ), .Y(n109) );
  CLKBUFX3 U61 ( .A(\s[2][24] ), .Y(n106) );
  CLKBUFX3 U62 ( .A(\s_new[0][24] ), .Y(n84) );
  CLKBUFX3 U63 ( .A(\s[1][24] ), .Y(n110) );
  CLKBUFX3 U64 ( .A(\s[0][24] ), .Y(n112) );
  CLKBUFX3 U65 ( .A(\s[0][24] ), .Y(n115) );
  CLKBUFX3 U66 ( .A(\s[4][24] ), .Y(n94) );
  CLKBUFX3 U67 ( .A(\s_new[1][24] ), .Y(n79) );
  CLKBUFX3 U68 ( .A(\s_new[2][24] ), .Y(n77) );
  CLKBUFX3 U69 ( .A(\s[0][24] ), .Y(n114) );
  CLKBUFX3 U70 ( .A(\s[4][24] ), .Y(n92) );
  CLKBUFX3 U71 ( .A(\s_new[2][24] ), .Y(n76) );
  CLKBUFX3 U72 ( .A(\s[5][24] ), .Y(n87) );
  CLKBUFX3 U73 ( .A(\s[4][24] ), .Y(n93) );
  CLKBUFX3 U74 ( .A(\s[0][24] ), .Y(n113) );
  CLKBUFX3 U75 ( .A(\s_new[3][24] ), .Y(n74) );
  CLKBUFX3 U76 ( .A(\s[5][24] ), .Y(n88) );
  CLKBUFX3 U77 ( .A(\s[4][24] ), .Y(n91) );
  CLKBUFX3 U78 ( .A(\s[5][24] ), .Y(n86) );
  CLKBUFX3 U79 ( .A(\s_new[1][24] ), .Y(n80) );
  CLKBUFX3 U80 ( .A(\s_new[1][24] ), .Y(n81) );
  CLKBUFX3 U81 ( .A(\s[2][24] ), .Y(n104) );
  CLKBUFX3 U82 ( .A(\s_new[0][24] ), .Y(n83) );
  CLKBUFX3 U83 ( .A(\s_new[3][24] ), .Y(n73) );
  CLKBUFX3 U84 ( .A(\s[2][24] ), .Y(n105) );
  CLKINVX1 U85 ( .A(rst), .Y(n116) );
  CLKBUFX3 U86 ( .A(n48), .Y(n67) );
  CLKBUFX3 U87 ( .A(n48), .Y(n66) );
  CLKBUFX3 U88 ( .A(n48), .Y(n65) );
  CLKBUFX3 U89 ( .A(n47), .Y(n64) );
  CLKBUFX3 U90 ( .A(n47), .Y(n63) );
  CLKBUFX3 U91 ( .A(n47), .Y(n62) );
  CLKBUFX3 U92 ( .A(n46), .Y(n61) );
  CLKBUFX3 U93 ( .A(n46), .Y(n60) );
  CLKBUFX3 U94 ( .A(n46), .Y(n59) );
  CLKBUFX3 U95 ( .A(n45), .Y(n58) );
  CLKBUFX3 U96 ( .A(n45), .Y(n57) );
  CLKBUFX3 U97 ( .A(n45), .Y(n56) );
  CLKBUFX3 U98 ( .A(n44), .Y(n55) );
  CLKBUFX3 U99 ( .A(n44), .Y(n54) );
  CLKBUFX3 U100 ( .A(n44), .Y(n53) );
  CLKBUFX3 U101 ( .A(n43), .Y(n52) );
  CLKBUFX3 U102 ( .A(n43), .Y(n51) );
  CLKBUFX3 U103 ( .A(n43), .Y(n50) );
  CLKBUFX3 U104 ( .A(n49), .Y(n69) );
  CLKBUFX3 U105 ( .A(n49), .Y(n68) );
  ADDFXL U106 ( .A(n111), .B(n109), .CI(N594), .CO(N595) );
  ADDFXL U107 ( .A(n111), .B(n109), .CI(N595), .CO(N596) );
  ADDFXL U108 ( .A(n111), .B(n109), .CI(N596), .CO(N597) );
  ADDFXL U109 ( .A(n111), .B(n109), .CI(N597), .CO(N598) );
  ADDFXL U110 ( .A(n111), .B(n109), .CI(N598), .CO(N599) );
  XOR3X1 U111 ( .A(n42), .B(n76), .C(
        \add_6_root_add_0_root_add_77_7/carry [24]), .Y(N969) );
  ADDFXL U112 ( .A(n36), .B(n24), .CI(
        \add_5_root_add_0_root_add_77_7/carry[14] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[15] ), .S(N934) );
  ADDFXL U113 ( .A(n21), .B(n23), .CI(\add_33_root_sub_139_5/carry[1] ), .CO(
        \add_33_root_sub_139_5/carry[2] ), .S(N336) );
  ADDFXL U114 ( .A(n23), .B(n25), .CI(\add_33_root_sub_139_5/carry[2] ), .CO(
        \add_33_root_sub_139_5/carry[3] ), .S(N337) );
  ADDFXL U115 ( .A(n25), .B(n27), .CI(\add_33_root_sub_139_5/carry[3] ), .CO(
        \add_33_root_sub_139_5/carry[4] ), .S(N338) );
  ADDFXL U116 ( .A(n41), .B(N355), .CI(\add_33_root_sub_139_5/carry[11] ), 
        .CO(N347), .S(N346) );
  ADDFXL U117 ( .A(n27), .B(n29), .CI(\add_33_root_sub_139_5/carry[4] ), .CO(
        \add_33_root_sub_139_5/carry[5] ), .S(N339) );
  ADDFXL U118 ( .A(n115), .B(n112), .CI(N462), .CO(N463) );
  ADDFXL U119 ( .A(n114), .B(n112), .CI(N463), .CO(N464) );
  ADDFXL U120 ( .A(n115), .B(n112), .CI(N464), .CO(N465) );
  ADDFXL U121 ( .A(n114), .B(n112), .CI(N465), .CO(N466) );
  ADDFXL U122 ( .A(n114), .B(n112), .CI(N461), .CO(N462) );
  ADDFXL U123 ( .A(n115), .B(n112), .CI(N466), .CO(N467) );
  ADDFXL U124 ( .A(n115), .B(n112), .CI(N467), .CO(N468) );
  ADDFXL U125 ( .A(n77), .B(n76), .CI(N918), .CO(N919) );
  ADDFXL U126 ( .A(n28), .B(n38), .CI(
        \add_3_root_add_0_root_add_77_7/carry[14] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[15] ), .S(N909) );
  ADDFXL U127 ( .A(n30), .B(n40), .CI(
        \add_3_root_add_0_root_add_77_7/carry[15] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[16] ), .S(N910) );
  ADDFXL U128 ( .A(n32), .B(n42), .CI(
        \add_3_root_add_0_root_add_77_7/carry[16] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[17] ), .S(N911) );
  ADDFXL U129 ( .A(n34), .B(n76), .CI(
        \add_3_root_add_0_root_add_77_7/carry[17] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[18] ), .S(N912) );
  ADDFXL U130 ( .A(n36), .B(n76), .CI(
        \add_3_root_add_0_root_add_77_7/carry[18] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[19] ), .S(N913) );
  ADDFXL U131 ( .A(n38), .B(n76), .CI(
        \add_3_root_add_0_root_add_77_7/carry[19] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[20] ), .S(N914) );
  ADDFXL U132 ( .A(n40), .B(n76), .CI(
        \add_3_root_add_0_root_add_77_7/carry[20] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[21] ), .S(N915) );
  ADDFXL U133 ( .A(n42), .B(n76), .CI(
        \add_3_root_add_0_root_add_77_7/carry[21] ), .CO(N917), .S(N916) );
  ADDFXL U134 ( .A(n14), .B(n24), .CI(
        \add_3_root_add_0_root_add_77_7/carry[7] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[8] ), .S(N902) );
  ADDFXL U135 ( .A(n29), .B(n31), .CI(\add_33_root_sub_139_5/carry[5] ), .CO(
        \add_33_root_sub_139_5/carry[6] ), .S(N340) );
  ADDFXL U136 ( .A(n16), .B(n26), .CI(
        \add_3_root_add_0_root_add_77_7/carry[8] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[9] ), .S(N903) );
  ADDFXL U137 ( .A(n31), .B(n33), .CI(\add_33_root_sub_139_5/carry[6] ), .CO(
        \add_33_root_sub_139_5/carry[7] ), .S(N341) );
  ADDFXL U138 ( .A(n18), .B(n28), .CI(
        \add_3_root_add_0_root_add_77_7/carry[9] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[10] ), .S(N904) );
  ADDFXL U139 ( .A(n26), .B(n14), .CI(
        \add_5_root_add_0_root_add_77_7/carry[9] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[10] ), .S(N929) );
  ADDFXL U140 ( .A(n33), .B(n35), .CI(\add_33_root_sub_139_5/carry[7] ), .CO(
        \add_33_root_sub_139_5/carry[8] ), .S(N342) );
  ADDFXL U141 ( .A(n20), .B(n30), .CI(
        \add_3_root_add_0_root_add_77_7/carry[10] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[11] ), .S(N905) );
  ADDFXL U142 ( .A(n28), .B(n16), .CI(
        \add_5_root_add_0_root_add_77_7/carry[10] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[11] ), .S(N930) );
  ADDFXL U143 ( .A(n35), .B(n37), .CI(\add_33_root_sub_139_5/carry[8] ), .CO(
        \add_33_root_sub_139_5/carry[9] ), .S(N343) );
  ADDFXL U144 ( .A(n22), .B(n32), .CI(
        \add_3_root_add_0_root_add_77_7/carry[11] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[12] ), .S(N906) );
  ADDFXL U145 ( .A(n30), .B(n18), .CI(
        \add_5_root_add_0_root_add_77_7/carry[11] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[12] ), .S(N931) );
  ADDFXL U146 ( .A(n37), .B(n39), .CI(\add_33_root_sub_139_5/carry[9] ), .CO(
        \add_33_root_sub_139_5/carry[10] ), .S(N344) );
  ADDFXL U147 ( .A(n24), .B(n34), .CI(
        \add_3_root_add_0_root_add_77_7/carry[12] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[13] ), .S(N907) );
  ADDFXL U148 ( .A(n32), .B(n20), .CI(
        \add_5_root_add_0_root_add_77_7/carry[12] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[13] ), .S(N932) );
  ADDFXL U149 ( .A(n39), .B(n41), .CI(\add_33_root_sub_139_5/carry[10] ), .CO(
        \add_33_root_sub_139_5/carry[11] ), .S(N345) );
  ADDFXL U150 ( .A(n26), .B(n36), .CI(
        \add_3_root_add_0_root_add_77_7/carry[13] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[14] ), .S(N908) );
  ADDFXL U151 ( .A(n34), .B(n22), .CI(
        \add_5_root_add_0_root_add_77_7/carry[13] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[14] ), .S(N933) );
  ADDFXL U152 ( .A(n38), .B(n26), .CI(
        \add_5_root_add_0_root_add_77_7/carry[15] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[16] ), .S(N935) );
  ADDFXL U153 ( .A(n40), .B(n28), .CI(
        \add_5_root_add_0_root_add_77_7/carry[16] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[17] ), .S(N936) );
  ADDFXL U154 ( .A(n42), .B(n30), .CI(
        \add_5_root_add_0_root_add_77_7/carry[17] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[18] ), .S(N937) );
  ADDFXL U155 ( .A(n74), .B(n21), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [12]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [13]), .S(\a_shift[5][12] ) );
  ADDFXL U156 ( .A(n74), .B(n25), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [14]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [15]), .S(\a_shift[5][14] ) );
  ADDFXL U157 ( .A(n77), .B(n32), .CI(
        \add_5_root_add_0_root_add_77_7/carry[18] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[19] ), .S(N938) );
  ADDFXL U158 ( .A(n77), .B(n34), .CI(
        \add_5_root_add_0_root_add_77_7/carry[19] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[20] ), .S(N939) );
  ADDFXL U159 ( .A(n74), .B(n33), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [18]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [19]), .S(\a_shift[5][18] ) );
  ADDFXL U160 ( .A(n77), .B(n36), .CI(
        \add_5_root_add_0_root_add_77_7/carry[20] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[21] ), .S(N940) );
  ADDFXL U161 ( .A(n74), .B(n35), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [19]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [20]), .S(\a_shift[5][19] ) );
  ADDFXL U162 ( .A(n77), .B(n38), .CI(
        \add_5_root_add_0_root_add_77_7/carry[21] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[22] ), .S(N941) );
  ADDFXL U163 ( .A(n74), .B(n37), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [20]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [21]), .S(\a_shift[5][20] ) );
  ADDFXL U164 ( .A(n77), .B(n40), .CI(
        \add_5_root_add_0_root_add_77_7/carry[22] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[23] ), .S(N942) );
  ADDFXL U165 ( .A(n77), .B(n42), .CI(
        \add_5_root_add_0_root_add_77_7/carry[23] ), .CO(N944), .S(N943) );
  ADDFXL U166 ( .A(n72), .B(n71), .CI(N693), .CO(N694) );
  ADDFXL U167 ( .A(n41), .B(n81), .CI(\add_36_root_sub_139_5/carry[20] ), .CO(
        N534), .S(N533) );
  ADDFXL U168 ( .A(n37), .B(n81), .CI(\add_36_root_sub_139_5/carry[18] ), .CO(
        \add_36_root_sub_139_5/carry[19] ), .S(N531) );
  ADDFXL U169 ( .A(n39), .B(n81), .CI(\add_36_root_sub_139_5/carry[19] ), .CO(
        \add_36_root_sub_139_5/carry[20] ), .S(N532) );
  ADDFXL U170 ( .A(n84), .B(n83), .CI(N1292), .CO(N1293) );
  ADDFXL U171 ( .A(n77), .B(n76), .CI(N917), .CO(N918) );
  ADDFXL U172 ( .A(n71), .B(n70), .CI(N767), .CO(N768) );
  ADDFXL U173 ( .A(n22), .B(n40), .CI(
        \add_6_root_add_0_root_add_77_7/carry [14]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [15]), .S(N959) );
  ADDFXL U174 ( .A(n28), .B(n77), .CI(
        \add_6_root_add_0_root_add_77_7/carry [17]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [18]), .S(N962) );
  ADDFXL U175 ( .A(n24), .B(n42), .CI(
        \add_6_root_add_0_root_add_77_7/carry [15]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [16]), .S(N960) );
  ADDFXL U176 ( .A(n26), .B(n77), .CI(
        \add_6_root_add_0_root_add_77_7/carry [16]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [17]), .S(N961) );
  ADDFXL U177 ( .A(n30), .B(n77), .CI(
        \add_6_root_add_0_root_add_77_7/carry [18]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [19]), .S(N963) );
  ADDFXL U178 ( .A(n32), .B(n77), .CI(
        \add_6_root_add_0_root_add_77_7/carry [19]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [20]), .S(N964) );
  ADDFXL U179 ( .A(n34), .B(n77), .CI(
        \add_6_root_add_0_root_add_77_7/carry [20]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [21]), .S(N965) );
  ADDFXL U180 ( .A(n36), .B(n77), .CI(
        \add_6_root_add_0_root_add_77_7/carry [21]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [22]), .S(N966) );
  ADDFXL U181 ( .A(n38), .B(n77), .CI(
        \add_6_root_add_0_root_add_77_7/carry [22]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [23]), .S(N967) );
  ADDFXL U182 ( .A(n40), .B(n76), .CI(
        \add_6_root_add_0_root_add_77_7/carry [23]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [24]), .S(N968) );
  ADDFXL U183 ( .A(n14), .B(n32), .CI(
        \add_6_root_add_0_root_add_77_7/carry [10]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [11]), .S(N955) );
  ADDFXL U184 ( .A(n15), .B(n21), .CI(\add_36_root_sub_139_5/carry[7] ), .CO(
        \add_36_root_sub_139_5/carry[8] ), .S(N520) );
  ADDFXL U185 ( .A(n16), .B(n34), .CI(
        \add_6_root_add_0_root_add_77_7/carry [11]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [12]), .S(N956) );
  ADDFXL U186 ( .A(n17), .B(n23), .CI(\add_36_root_sub_139_5/carry[8] ), .CO(
        \add_36_root_sub_139_5/carry[9] ), .S(N521) );
  ADDFXL U187 ( .A(n18), .B(n36), .CI(
        \add_6_root_add_0_root_add_77_7/carry [12]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [13]), .S(N957) );
  ADDFXL U188 ( .A(n19), .B(n25), .CI(\add_36_root_sub_139_5/carry[9] ), .CO(
        \add_36_root_sub_139_5/carry[10] ), .S(N522) );
  ADDFXL U189 ( .A(n20), .B(n38), .CI(
        \add_6_root_add_0_root_add_77_7/carry [13]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [14]), .S(N958) );
  ADDFXL U190 ( .A(n21), .B(n27), .CI(\add_36_root_sub_139_5/carry[10] ), .CO(
        \add_36_root_sub_139_5/carry[11] ), .S(N523) );
  ADDFXL U191 ( .A(n23), .B(n29), .CI(\add_36_root_sub_139_5/carry[11] ), .CO(
        \add_36_root_sub_139_5/carry[12] ), .S(N524) );
  ADDFXL U192 ( .A(n74), .B(n23), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [13]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [14]), .S(\a_shift[5][13] ) );
  ADDFXL U193 ( .A(n25), .B(n31), .CI(\add_36_root_sub_139_5/carry[12] ), .CO(
        \add_36_root_sub_139_5/carry[13] ), .S(N525) );
  ADDFXL U194 ( .A(n27), .B(n33), .CI(\add_36_root_sub_139_5/carry[13] ), .CO(
        \add_36_root_sub_139_5/carry[14] ), .S(N526) );
  ADDFXL U195 ( .A(n74), .B(n27), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [15]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [16]), .S(\a_shift[5][15] ) );
  ADDFXL U196 ( .A(n29), .B(n35), .CI(\add_36_root_sub_139_5/carry[14] ), .CO(
        \add_36_root_sub_139_5/carry[15] ), .S(N527) );
  ADDFXL U197 ( .A(n74), .B(n29), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [16]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [17]), .S(\a_shift[5][16] ) );
  ADDFXL U198 ( .A(n31), .B(n37), .CI(\add_36_root_sub_139_5/carry[15] ), .CO(
        \add_36_root_sub_139_5/carry[16] ), .S(N528) );
  ADDFXL U199 ( .A(n74), .B(n31), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [17]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [18]), .S(\a_shift[5][17] ) );
  ADDFXL U200 ( .A(n33), .B(n39), .CI(\add_36_root_sub_139_5/carry[16] ), .CO(
        \add_36_root_sub_139_5/carry[17] ), .S(N529) );
  ADDFXL U201 ( .A(n35), .B(n41), .CI(\add_36_root_sub_139_5/carry[17] ), .CO(
        \add_36_root_sub_139_5/carry[18] ), .S(N530) );
  CLKBUFX3 U202 ( .A(n96), .Y(n99) );
  CLKBUFX3 U203 ( .A(n97), .Y(n101) );
  ADDFXL U204 ( .A(n74), .B(n39), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [21]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [22]), .S(\a_shift[5][21] ) );
  ADDFXL U205 ( .A(n74), .B(n41), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [22]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [23]), .S(\a_shift[5][22] ) );
  ADDFXL U206 ( .A(n74), .B(n79), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [23]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [24]), .S(\a_shift[5][23] ) );
  ADDFXL U207 ( .A(n41), .B(n81), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[23] ), .CO(N1069), .S(N1068)
         );
  ADDFXL U208 ( .A(n33), .B(n80), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[19] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[20] ), .S(N1064) );
  ADDFXL U209 ( .A(n35), .B(n80), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[20] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[21] ), .S(N1065) );
  ADDFXL U210 ( .A(n37), .B(n80), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[21] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[22] ), .S(N1066) );
  ADDFXL U211 ( .A(n39), .B(n81), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[22] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[23] ), .S(N1067) );
  ADDFXL U212 ( .A(N355), .B(n81), .CI(N534), .CO(N535) );
  ADDFXL U213 ( .A(n15), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[10] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[11] ), .S(N1055) );
  ADDFXL U214 ( .A(n17), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[11] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[12] ), .S(N1056) );
  ADDFXL U215 ( .A(n19), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[12] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[13] ), .S(N1057) );
  ADDFXL U216 ( .A(n21), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[13] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[14] ), .S(N1058) );
  ADDFXL U217 ( .A(n23), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[14] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[15] ), .S(N1059) );
  ADDFXL U218 ( .A(n25), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[15] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[16] ), .S(N1060) );
  ADDFXL U219 ( .A(n27), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[16] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[17] ), .S(N1061) );
  ADDFXL U220 ( .A(n29), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[17] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[18] ), .S(N1062) );
  ADDFXL U221 ( .A(n31), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[18] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[19] ), .S(N1063) );
  CLKBUFX3 U222 ( .A(n97), .Y(n103) );
  CLKBUFX3 U223 ( .A(n116), .Y(n48) );
  CLKBUFX3 U224 ( .A(n116), .Y(n47) );
  CLKBUFX3 U225 ( .A(n116), .Y(n46) );
  CLKBUFX3 U226 ( .A(n116), .Y(n45) );
  CLKBUFX3 U227 ( .A(n116), .Y(n44) );
  CLKBUFX3 U228 ( .A(n116), .Y(n43) );
  CLKBUFX3 U229 ( .A(n116), .Y(n49) );
  ADDFXL U230 ( .A(\s[1][23] ), .B(n109), .CI(
        \add_44_root_sub_139_5/carry[13] ), .CO(N594), .S(N593) );
  ADDFXL U231 ( .A(\s[1][11] ), .B(\s[1][12] ), .CI(
        \add_44_root_sub_139_5/carry[1] ), .CO(
        \add_44_root_sub_139_5/carry[2] ), .S(N581) );
  ADDFXL U232 ( .A(\s[1][12] ), .B(\s[1][13] ), .CI(
        \add_44_root_sub_139_5/carry[2] ), .CO(
        \add_44_root_sub_139_5/carry[3] ), .S(N582) );
  ADDFXL U233 ( .A(\s[1][13] ), .B(\s[1][14] ), .CI(
        \add_44_root_sub_139_5/carry[3] ), .CO(
        \add_44_root_sub_139_5/carry[4] ), .S(N583) );
  ADDFXL U234 ( .A(\s[1][14] ), .B(\s[1][15] ), .CI(
        \add_44_root_sub_139_5/carry[4] ), .CO(
        \add_44_root_sub_139_5/carry[5] ), .S(N584) );
  ADDFXL U235 ( .A(\s[1][15] ), .B(\s[1][16] ), .CI(
        \add_44_root_sub_139_5/carry[5] ), .CO(
        \add_44_root_sub_139_5/carry[6] ), .S(N585) );
  ADDFXL U236 ( .A(\s[1][16] ), .B(\s[1][17] ), .CI(
        \add_44_root_sub_139_5/carry[6] ), .CO(
        \add_44_root_sub_139_5/carry[7] ), .S(N586) );
  ADDFXL U237 ( .A(\s[1][17] ), .B(\s[1][18] ), .CI(
        \add_44_root_sub_139_5/carry[7] ), .CO(
        \add_44_root_sub_139_5/carry[8] ), .S(N587) );
  ADDFXL U238 ( .A(\s[1][18] ), .B(\s[1][19] ), .CI(
        \add_44_root_sub_139_5/carry[8] ), .CO(
        \add_44_root_sub_139_5/carry[9] ), .S(N588) );
  ADDFXL U239 ( .A(\s[1][19] ), .B(\s[1][20] ), .CI(
        \add_44_root_sub_139_5/carry[9] ), .CO(
        \add_44_root_sub_139_5/carry[10] ), .S(N589) );
  ADDFXL U240 ( .A(\s[1][20] ), .B(\s[1][21] ), .CI(
        \add_44_root_sub_139_5/carry[10] ), .CO(
        \add_44_root_sub_139_5/carry[11] ), .S(N590) );
  ADDFXL U241 ( .A(\s[1][21] ), .B(\s[1][22] ), .CI(
        \add_44_root_sub_139_5/carry[11] ), .CO(
        \add_44_root_sub_139_5/carry[12] ), .S(N591) );
  ADDFXL U242 ( .A(\s[1][22] ), .B(\s[1][23] ), .CI(
        \add_44_root_sub_139_5/carry[12] ), .CO(
        \add_44_root_sub_139_5/carry[13] ), .S(N592) );
  ADDFXL U243 ( .A(N672), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[15] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[16] ), .S(N685) );
  ADDFXL U244 ( .A(N673), .B(n70), .CI(
        \add_3_root_add_0_root_add_72_5/carry[16] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[17] ), .S(N686) );
  ADDFXL U245 ( .A(N675), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[18] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[19] ), .S(N688) );
  ADDFXL U246 ( .A(N674), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[17] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[18] ), .S(N687) );
  ADDFXL U247 ( .A(N670), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[13] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[14] ), .S(N683) );
  ADDFXL U248 ( .A(N671), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[14] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[15] ), .S(N684) );
  ADDFXL U249 ( .A(N696), .B(\s_new[4][21] ), .CI(
        \add_3_root_add_0_root_add_72_5/carry[7] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[8] ), .S(N677) );
  ADDFXL U250 ( .A(n24), .B(n13), .CI(
        \add_5_root_add_0_root_add_77_7/carry[8] ), .CO(
        \add_5_root_add_0_root_add_77_7/carry[9] ), .S(N928) );
  CLKBUFX3 U251 ( .A(\s_new[1][14] ), .Y(n23) );
  CLKBUFX3 U252 ( .A(\s_new[1][15] ), .Y(n25) );
  CLKBUFX3 U253 ( .A(\s_new[1][13] ), .Y(n21) );
  CLKBUFX3 U254 ( .A(N945), .Y(n13) );
  CLKBUFX3 U255 ( .A(\s_new[1][11] ), .Y(n17) );
  ADDFXL U256 ( .A(\s[0][23] ), .B(n112), .CI(
        \add_39_root_sub_139_5/carry[10] ), .CO(N461), .S(N460) );
  CLKBUFX3 U257 ( .A(N946), .Y(n14) );
  CLKBUFX3 U258 ( .A(\s_new[1][12] ), .Y(n19) );
  CLKBUFX3 U259 ( .A(N947), .Y(n16) );
  CLKBUFX3 U260 ( .A(N948), .Y(n18) );
  CLKBUFX3 U261 ( .A(N949), .Y(n20) );
  CLKBUFX3 U262 ( .A(N950), .Y(n22) );
  CLKBUFX3 U263 ( .A(\s_new[1][10] ), .Y(n15) );
  ADDFXL U264 ( .A(\s[1][18] ), .B(\s[1][20] ), .CI(
        \add_45_root_sub_139_5/carry[12] ), .CO(
        \add_45_root_sub_139_5/carry[13] ), .S(N572) );
  ADDFXL U265 ( .A(\s[1][21] ), .B(\s[1][23] ), .CI(
        \add_45_root_sub_139_5/carry[15] ), .CO(
        \add_45_root_sub_139_5/carry[16] ), .S(N575) );
  ADDFXL U266 ( .A(\s[1][22] ), .B(n109), .CI(
        \add_45_root_sub_139_5/carry[16] ), .CO(
        \add_45_root_sub_139_5/carry[17] ), .S(N576) );
  ADDFXL U267 ( .A(\s[1][23] ), .B(n109), .CI(
        \add_45_root_sub_139_5/carry[17] ), .CO(N578), .S(N577) );
  ADDFXL U268 ( .A(N675), .B(N696), .CI(
        \add_2_root_add_0_root_add_72_5/carry[6] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[7] ), .S(N751) );
  ADDFXL U269 ( .A(\s[0][14] ), .B(\s[0][17] ), .CI(
        \add_39_root_sub_139_5/carry[1] ), .CO(
        \add_39_root_sub_139_5/carry[2] ), .S(N451) );
  ADDFXL U270 ( .A(\s[0][15] ), .B(\s[0][18] ), .CI(
        \add_39_root_sub_139_5/carry[2] ), .CO(
        \add_39_root_sub_139_5/carry[3] ), .S(N452) );
  ADDFXL U271 ( .A(\s_new[0][13] ), .B(\s_new[0][14] ), .CI(
        \add_4_root_add_82_5/carry[11] ), .CO(\add_4_root_add_82_5/carry[12] ), 
        .S(N1281) );
  ADDFXL U272 ( .A(\s_new[0][17] ), .B(\s_new[0][18] ), .CI(
        \add_4_root_add_82_5/carry[15] ), .CO(\add_4_root_add_82_5/carry[16] ), 
        .S(N1285) );
  ADDFXL U273 ( .A(\s_new[0][18] ), .B(\s_new[0][19] ), .CI(
        \add_4_root_add_82_5/carry[16] ), .CO(\add_4_root_add_82_5/carry[17] ), 
        .S(N1286) );
  ADDFXL U274 ( .A(\s_new[0][19] ), .B(\s_new[0][20] ), .CI(
        \add_4_root_add_82_5/carry[17] ), .CO(\add_4_root_add_82_5/carry[18] ), 
        .S(N1287) );
  ADDFXL U275 ( .A(\s_new[0][20] ), .B(\s_new[0][21] ), .CI(
        \add_4_root_add_82_5/carry[18] ), .CO(\add_4_root_add_82_5/carry[19] ), 
        .S(N1288) );
  ADDFXL U276 ( .A(\s_new[0][21] ), .B(\s_new[0][22] ), .CI(
        \add_4_root_add_82_5/carry[19] ), .CO(\add_4_root_add_82_5/carry[20] ), 
        .S(N1289) );
  ADDFXL U277 ( .A(\s_new[0][22] ), .B(\s_new[0][23] ), .CI(
        \add_4_root_add_82_5/carry[20] ), .CO(\add_4_root_add_82_5/carry[21] ), 
        .S(N1290) );
  ADDFXL U278 ( .A(\s_new[0][12] ), .B(\s_new[0][13] ), .CI(
        \add_4_root_add_82_5/carry[10] ), .CO(\add_4_root_add_82_5/carry[11] ), 
        .S(N1280) );
  ADDFXL U279 ( .A(n71), .B(n70), .CI(N768), .CO(N769) );
  XOR3X1 U280 ( .A(\s_new[4][23] ), .B(n70), .C(
        \add_4_root_add_0_root_add_72_5/carry [24]), .Y(N719) );
  ADDFXL U281 ( .A(\s_new[0][8] ), .B(\s_new[0][9] ), .CI(
        \add_4_root_add_82_5/carry[6] ), .CO(\add_4_root_add_82_5/carry[7] ), 
        .S(N1276) );
  ADDFXL U282 ( .A(n72), .B(N673), .CI(
        \add_2_root_add_0_root_add_72_5/carry[15] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[16] ), .S(N760) );
  ADDFXL U283 ( .A(n72), .B(N674), .CI(
        \add_2_root_add_0_root_add_72_5/carry[16] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[17] ), .S(N761) );
  ADDFXL U284 ( .A(N560), .B(\s[1][10] ), .CI(\add_45_root_sub_139_5/carry[2] ), .CO(\add_45_root_sub_139_5/carry[3] ), .S(N562) );
  ADDFXL U285 ( .A(n13), .B(n22), .CI(
        \add_3_root_add_0_root_add_77_7/carry[6] ), .CO(
        \add_3_root_add_0_root_add_77_7/carry[7] ), .S(N901) );
  ADDFXL U286 ( .A(\s[1][9] ), .B(\s[1][11] ), .CI(
        \add_45_root_sub_139_5/carry[3] ), .CO(
        \add_45_root_sub_139_5/carry[4] ), .S(N563) );
  ADDFXL U287 ( .A(\s[1][10] ), .B(\s[1][12] ), .CI(
        \add_45_root_sub_139_5/carry[4] ), .CO(
        \add_45_root_sub_139_5/carry[5] ), .S(N564) );
  ADDFXL U288 ( .A(\s[1][11] ), .B(\s[1][13] ), .CI(
        \add_45_root_sub_139_5/carry[5] ), .CO(
        \add_45_root_sub_139_5/carry[6] ), .S(N565) );
  ADDFXL U289 ( .A(\s[0][16] ), .B(\s[0][19] ), .CI(
        \add_39_root_sub_139_5/carry[3] ), .CO(
        \add_39_root_sub_139_5/carry[4] ), .S(N453) );
  ADDFXL U290 ( .A(\s[1][12] ), .B(\s[1][14] ), .CI(
        \add_45_root_sub_139_5/carry[6] ), .CO(
        \add_45_root_sub_139_5/carry[7] ), .S(N566) );
  ADDFXL U291 ( .A(\s[0][17] ), .B(\s[0][20] ), .CI(
        \add_39_root_sub_139_5/carry[4] ), .CO(
        \add_39_root_sub_139_5/carry[5] ), .S(N454) );
  ADDFXL U292 ( .A(\s[1][13] ), .B(\s[1][15] ), .CI(
        \add_45_root_sub_139_5/carry[7] ), .CO(
        \add_45_root_sub_139_5/carry[8] ), .S(N567) );
  ADDFXL U293 ( .A(\s_new[0][9] ), .B(\s_new[0][10] ), .CI(
        \add_4_root_add_82_5/carry[7] ), .CO(\add_4_root_add_82_5/carry[8] ), 
        .S(N1277) );
  ADDFXL U294 ( .A(\s[0][18] ), .B(\s[0][21] ), .CI(
        \add_39_root_sub_139_5/carry[5] ), .CO(
        \add_39_root_sub_139_5/carry[6] ), .S(N455) );
  ADDFXL U295 ( .A(\s[1][14] ), .B(\s[1][16] ), .CI(
        \add_45_root_sub_139_5/carry[8] ), .CO(
        \add_45_root_sub_139_5/carry[9] ), .S(N568) );
  ADDFXL U296 ( .A(\s_new[0][10] ), .B(\s_new[0][11] ), .CI(
        \add_4_root_add_82_5/carry[8] ), .CO(\add_4_root_add_82_5/carry[9] ), 
        .S(N1278) );
  ADDFXL U297 ( .A(\s[0][19] ), .B(\s[0][22] ), .CI(
        \add_39_root_sub_139_5/carry[6] ), .CO(
        \add_39_root_sub_139_5/carry[7] ), .S(N456) );
  ADDFXL U298 ( .A(\s_new[4][20] ), .B(N697), .CI(
        \add_2_root_add_0_root_add_72_5/carry[7] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[8] ), .S(N752) );
  ADDFXL U299 ( .A(N697), .B(\s_new[4][22] ), .CI(
        \add_3_root_add_0_root_add_72_5/carry[8] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[9] ), .S(N678) );
  ADDFXL U300 ( .A(\s[1][15] ), .B(\s[1][17] ), .CI(
        \add_45_root_sub_139_5/carry[9] ), .CO(
        \add_45_root_sub_139_5/carry[10] ), .S(N569) );
  ADDFXL U301 ( .A(\s_new[0][11] ), .B(\s_new[0][12] ), .CI(
        \add_4_root_add_82_5/carry[9] ), .CO(\add_4_root_add_82_5/carry[10] ), 
        .S(N1279) );
  ADDFXL U302 ( .A(\s[0][20] ), .B(\s[0][23] ), .CI(
        \add_39_root_sub_139_5/carry[7] ), .CO(
        \add_39_root_sub_139_5/carry[8] ), .S(N457) );
  ADDFXL U303 ( .A(\s_new[4][21] ), .B(N698), .CI(
        \add_2_root_add_0_root_add_72_5/carry[8] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[9] ), .S(N753) );
  ADDFXL U304 ( .A(N698), .B(\s_new[4][23] ), .CI(
        \add_3_root_add_0_root_add_72_5/carry[9] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[10] ), .S(N679) );
  ADDFXL U305 ( .A(\s[1][16] ), .B(\s[1][18] ), .CI(
        \add_45_root_sub_139_5/carry[10] ), .CO(
        \add_45_root_sub_139_5/carry[11] ), .S(N570) );
  ADDFXL U306 ( .A(\s[0][21] ), .B(n112), .CI(\add_39_root_sub_139_5/carry[8] ), .CO(\add_39_root_sub_139_5/carry[9] ), .S(N458) );
  ADDFXL U307 ( .A(\s_new[4][22] ), .B(N699), .CI(
        \add_2_root_add_0_root_add_72_5/carry[9] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[10] ), .S(N754) );
  ADDFXL U308 ( .A(N699), .B(n70), .CI(
        \add_3_root_add_0_root_add_72_5/carry[10] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[11] ), .S(N680) );
  ADDFXL U309 ( .A(\s[1][17] ), .B(\s[1][19] ), .CI(
        \add_45_root_sub_139_5/carry[11] ), .CO(
        \add_45_root_sub_139_5/carry[12] ), .S(N571) );
  ADDFXL U310 ( .A(\s[0][22] ), .B(n112), .CI(\add_39_root_sub_139_5/carry[9] ), .CO(\add_39_root_sub_139_5/carry[10] ), .S(N459) );
  ADDFXL U311 ( .A(\s_new[4][23] ), .B(N700), .CI(
        \add_2_root_add_0_root_add_72_5/carry[10] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[11] ), .S(N755) );
  ADDFXL U312 ( .A(N700), .B(n70), .CI(
        \add_3_root_add_0_root_add_72_5/carry[11] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[12] ), .S(N681) );
  ADDFXL U313 ( .A(\s_new[0][14] ), .B(\s_new[0][15] ), .CI(
        \add_4_root_add_82_5/carry[12] ), .CO(\add_4_root_add_82_5/carry[13] ), 
        .S(N1282) );
  ADDFXL U314 ( .A(n72), .B(N701), .CI(
        \add_2_root_add_0_root_add_72_5/carry[11] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[12] ), .S(N756) );
  ADDFXL U315 ( .A(N701), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[12] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[13] ), .S(N682) );
  ADDFXL U316 ( .A(\s[1][19] ), .B(\s[1][21] ), .CI(
        \add_45_root_sub_139_5/carry[13] ), .CO(
        \add_45_root_sub_139_5/carry[14] ), .S(N573) );
  ADDFXL U317 ( .A(\s_new[0][15] ), .B(\s_new[0][16] ), .CI(
        \add_4_root_add_82_5/carry[13] ), .CO(\add_4_root_add_82_5/carry[14] ), 
        .S(N1283) );
  ADDFXL U318 ( .A(n72), .B(N670), .CI(
        \add_2_root_add_0_root_add_72_5/carry[12] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[13] ), .S(N757) );
  ADDFXL U319 ( .A(\s[1][20] ), .B(\s[1][22] ), .CI(
        \add_45_root_sub_139_5/carry[14] ), .CO(
        \add_45_root_sub_139_5/carry[15] ), .S(N574) );
  ADDFXL U320 ( .A(\s_new[0][16] ), .B(\s_new[0][17] ), .CI(
        \add_4_root_add_82_5/carry[14] ), .CO(\add_4_root_add_82_5/carry[15] ), 
        .S(N1284) );
  ADDFXL U321 ( .A(n72), .B(N671), .CI(
        \add_2_root_add_0_root_add_72_5/carry[13] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[14] ), .S(N758) );
  ADDFXL U322 ( .A(n72), .B(N672), .CI(
        \add_2_root_add_0_root_add_72_5/carry[14] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[15] ), .S(N759) );
  CLKBUFX3 U323 ( .A(\s_new[4][24] ), .Y(n70) );
  CLKBUFX3 U324 ( .A(\s[2][24] ), .Y(n107) );
  CLKBUFX3 U325 ( .A(\s_new[4][24] ), .Y(n71) );
  ADDFXL U326 ( .A(\s_new[4][21] ), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[20] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[21] ), .S(N690) );
  ADDFXL U327 ( .A(\s_new[4][22] ), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[21] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[22] ), .S(N691) );
  ADDFXL U328 ( .A(\s_new[4][23] ), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[22] ), .CO(N693), .S(N692) );
  ADDFXL U329 ( .A(\s_new[4][20] ), .B(n71), .CI(
        \add_3_root_add_0_root_add_72_5/carry[19] ), .CO(
        \add_3_root_add_0_root_add_72_5/carry[20] ), .S(N689) );
  ADDFXL U330 ( .A(\s_new[3][19] ), .B(N515), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [7]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [8]), .S(\a_shift[5][7] ) );
  ADDFXL U331 ( .A(\s_new[3][22] ), .B(n17), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [10]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [11]), .S(\a_shift[5][10] ) );
  ADDFXL U332 ( .A(\s_new[3][23] ), .B(n19), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [11]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [12]), .S(\a_shift[5][11] ) );
  CLKBUFX3 U333 ( .A(N1045), .Y(n27) );
  CLKBUFX3 U334 ( .A(N1046), .Y(n29) );
  CLKBUFX3 U335 ( .A(N1047), .Y(n31) );
  CLKBUFX3 U336 ( .A(N1048), .Y(n33) );
  CLKBUFX3 U337 ( .A(N1049), .Y(n35) );
  CLKBUFX3 U338 ( .A(\s_new[0][24] ), .Y(n85) );
  XOR3X1 U339 ( .A(n74), .B(n79), .C(
        \add_44_root_add_3_root_sub_139_5/carry [24]), .Y(\a_shift[5][24] ) );
  CLKBUFX3 U340 ( .A(\s_new[2][17] ), .Y(n30) );
  CLKBUFX3 U341 ( .A(\s_new[2][18] ), .Y(n32) );
  CLKBUFX3 U342 ( .A(\s_new[2][19] ), .Y(n34) );
  CLKBUFX3 U343 ( .A(\s_new[2][20] ), .Y(n36) );
  CLKBUFX3 U344 ( .A(N951), .Y(n24) );
  CLKBUFX3 U345 ( .A(N952), .Y(n26) );
  CLKBUFX3 U346 ( .A(\s_new[2][16] ), .Y(n28) );
  CLKBUFX3 U347 ( .A(\s_new[4][24] ), .Y(n72) );
  ADDFXL U348 ( .A(N672), .B(n70), .CI(
        \add_4_root_add_0_root_add_72_5/carry [17]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [18]), .S(N712) );
  ADDFXL U349 ( .A(N673), .B(n70), .CI(
        \add_4_root_add_0_root_add_72_5/carry [18]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [19]), .S(N713) );
  ADDFXL U350 ( .A(N675), .B(n70), .CI(
        \add_4_root_add_0_root_add_72_5/carry [20]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [21]), .S(N715) );
  ADDFXL U351 ( .A(\s_new[4][21] ), .B(n70), .CI(
        \add_4_root_add_0_root_add_72_5/carry [22]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [23]), .S(N717) );
  ADDFXL U352 ( .A(\s_new[4][22] ), .B(n70), .CI(
        \add_4_root_add_0_root_add_72_5/carry [23]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [24]), .S(N718) );
  ADDFXL U353 ( .A(\s_new[0][23] ), .B(n83), .CI(
        \add_4_root_add_82_5/carry[21] ), .CO(N1292), .S(N1291) );
  ADDFXL U354 ( .A(N674), .B(n70), .CI(
        \add_4_root_add_0_root_add_72_5/carry [19]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [20]), .S(N714) );
  ADDFXL U355 ( .A(N670), .B(\s_new[4][22] ), .CI(
        \add_4_root_add_0_root_add_72_5/carry [15]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [16]), .S(N710) );
  ADDFXL U356 ( .A(N671), .B(\s_new[4][23] ), .CI(
        \add_4_root_add_0_root_add_72_5/carry [16]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [17]), .S(N711) );
  ADDFXL U357 ( .A(\s_new[4][20] ), .B(n70), .CI(
        \add_4_root_add_0_root_add_72_5/carry [21]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [22]), .S(N716) );
  ADDFXL U358 ( .A(N701), .B(\s_new[4][21] ), .CI(
        \add_4_root_add_0_root_add_72_5/carry [14]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [15]), .S(N709) );
  ADDFXL U359 ( .A(N696), .B(N672), .CI(
        \add_4_root_add_0_root_add_72_5/carry [9]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [10]), .S(N704) );
  ADDFXL U360 ( .A(N697), .B(N673), .CI(
        \add_4_root_add_0_root_add_72_5/carry [10]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [11]), .S(N705) );
  ADDFXL U361 ( .A(n72), .B(N675), .CI(
        \add_2_root_add_0_root_add_72_5/carry[17] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[18] ), .S(N762) );
  ADDFXL U362 ( .A(n72), .B(\s_new[4][20] ), .CI(
        \add_2_root_add_0_root_add_72_5/carry[18] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[19] ), .S(N763) );
  ADDFXL U363 ( .A(n72), .B(\s_new[4][21] ), .CI(
        \add_2_root_add_0_root_add_72_5/carry[19] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[20] ), .S(N764) );
  ADDFXL U364 ( .A(n72), .B(\s_new[4][22] ), .CI(
        \add_2_root_add_0_root_add_72_5/carry[20] ), .CO(
        \add_2_root_add_0_root_add_72_5/carry[21] ), .S(N765) );
  ADDFXL U365 ( .A(n71), .B(\s_new[4][23] ), .CI(
        \add_2_root_add_0_root_add_72_5/carry[21] ), .CO(N767), .S(N766) );
  ADDFXL U366 ( .A(n13), .B(n30), .CI(
        \add_6_root_add_0_root_add_77_7/carry [9]), .CO(
        \add_6_root_add_0_root_add_77_7/carry [10]), .S(N954) );
  ADDFXL U367 ( .A(N515), .B(n17), .CI(\add_36_root_sub_139_5/carry[5] ), .CO(
        \add_36_root_sub_139_5/carry[6] ), .S(N518) );
  ADDFXL U368 ( .A(N516), .B(n19), .CI(\add_36_root_sub_139_5/carry[6] ), .CO(
        \add_36_root_sub_139_5/carry[7] ), .S(N519) );
  ADDFXL U369 ( .A(\s_new[3][20] ), .B(N516), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [8]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [9]), .S(\a_shift[5][8] ) );
  ADDFXL U370 ( .A(\s_new[3][21] ), .B(n15), .CI(
        \add_44_root_add_3_root_sub_139_5/carry [9]), .CO(
        \add_44_root_add_3_root_sub_139_5/carry [10]), .S(\a_shift[5][9] ) );
  ADDFXL U371 ( .A(N698), .B(N674), .CI(
        \add_4_root_add_0_root_add_72_5/carry [11]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [12]), .S(N706) );
  ADDFXL U372 ( .A(N699), .B(N675), .CI(
        \add_4_root_add_0_root_add_72_5/carry [12]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [13]), .S(N707) );
  ADDFXL U373 ( .A(N700), .B(\s_new[4][20] ), .CI(
        \add_4_root_add_0_root_add_72_5/carry [13]), .CO(
        \add_4_root_add_0_root_add_72_5/carry [14]), .S(N708) );
  CLKBUFX3 U374 ( .A(\s_new[1][24] ), .Y(N355) );
  CLKBUFX3 U375 ( .A(\s[4][24] ), .Y(n95) );
  CLKBUFX3 U376 ( .A(N1050), .Y(n37) );
  CLKBUFX3 U377 ( .A(N1051), .Y(n39) );
  CLKBUFX3 U378 ( .A(\s_new[1][23] ), .Y(n41) );
  CLKBUFX3 U379 ( .A(\s_new[1][24] ), .Y(n82) );
  CLKBUFX3 U380 ( .A(\s_new[2][21] ), .Y(n38) );
  CLKBUFX3 U381 ( .A(\s_new[2][22] ), .Y(n40) );
  CLKBUFX3 U382 ( .A(\s_new[2][23] ), .Y(n42) );
  ADDFXL U383 ( .A(N515), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[8] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[9] ), .S(N1053) );
  ADDFXL U384 ( .A(N516), .B(n79), .CI(
        \add_43_root_add_3_root_sub_139_5/carry[9] ), .CO(
        \add_43_root_add_3_root_sub_139_5/carry[10] ), .S(N1054) );
  CLKBUFX3 U385 ( .A(\s[3][24] ), .Y(n96) );
  CLKBUFX3 U386 ( .A(\s[3][24] ), .Y(n97) );
  CLKBUFX3 U387 ( .A(\s[2][24] ), .Y(n108) );
  CLKBUFX3 U388 ( .A(\s_new[3][24] ), .Y(n75) );
  CLKBUFX3 U389 ( .A(\s[5][24] ), .Y(n90) );
  CLKBUFX3 U390 ( .A(\s_new[2][24] ), .Y(n78) );
  NOR2X1 U391 ( .A(n11), .B(n5), .Y(Finish) );
  OAI32X1 U392 ( .A0(data_done), .A1(n5), .A2(n6), .B0(n11), .B1(n117), .Y(n9)
         );
  CLKINVX1 U393 ( .A(data_done), .Y(n117) );
  OAI221XL U394 ( .A0(n5), .A1(data_done), .B0(n6), .B1(n12), .C0(n118), .Y(n8) );
  CLKINVX1 U395 ( .A(Finish), .Y(n118) );
  AND2X1 U396 ( .A(\s[1][10] ), .B(\s[1][11] ), .Y(
        \add_44_root_sub_139_5/carry[1] ) );
  XOR2X1 U397 ( .A(\s[1][11] ), .B(\s[1][10] ), .Y(N580) );
  AND2X1 U398 ( .A(\s[1][7] ), .B(\s[1][9] ), .Y(
        \add_45_root_sub_139_5/carry[2] ) );
  XOR2X1 U399 ( .A(\s[1][9] ), .B(\s[1][7] ), .Y(N561) );
  AND2X1 U400 ( .A(N1274), .B(\s_new[0][8] ), .Y(
        \add_4_root_add_82_5/carry[6] ) );
  XOR2X1 U401 ( .A(\s_new[0][8] ), .B(N1274), .Y(N1275) );
  AND2X1 U402 ( .A(\s[0][13] ), .B(\s[0][16] ), .Y(
        \add_39_root_sub_139_5/carry[1] ) );
  XOR2X1 U403 ( .A(\s[0][16] ), .B(\s[0][13] ), .Y(N450) );
  AND2X1 U404 ( .A(\s_new[3][18] ), .B(N514), .Y(
        \add_44_root_add_3_root_sub_139_5/carry [7]) );
  XOR2X1 U405 ( .A(N514), .B(\s_new[3][18] ), .Y(\a_shift[5][6] ) );
  AND2X1 U406 ( .A(N514), .B(n41), .Y(
        \add_43_root_add_3_root_sub_139_5/carry[8] ) );
  XOR2X1 U407 ( .A(n41), .B(N514), .Y(N1052) );
  AND2X1 U408 ( .A(n22), .B(N921), .Y(
        \add_5_root_add_0_root_add_77_7/carry[8] ) );
  XOR2X1 U409 ( .A(N921), .B(n22), .Y(N927) );
  AND2X1 U410 ( .A(N921), .B(n28), .Y(
        \add_6_root_add_0_root_add_77_7/carry [9]) );
  XOR2X1 U411 ( .A(n28), .B(N921), .Y(N953) );
  AND2X1 U412 ( .A(N921), .B(n20), .Y(
        \add_3_root_add_0_root_add_77_7/carry[6] ) );
  XOR2X1 U413 ( .A(n20), .B(N921), .Y(N900) );
  AND2X1 U414 ( .A(N695), .B(\s_new[4][20] ), .Y(
        \add_3_root_add_0_root_add_72_5/carry[7] ) );
  XOR2X1 U415 ( .A(\s_new[4][20] ), .B(N695), .Y(N676) );
  AND2X1 U416 ( .A(N695), .B(N671), .Y(
        \add_4_root_add_0_root_add_72_5/carry [9]) );
  XOR2X1 U417 ( .A(N671), .B(N695), .Y(N703) );
  AND2X1 U418 ( .A(N674), .B(N695), .Y(
        \add_2_root_add_0_root_add_72_5/carry[6] ) );
  XOR2X1 U419 ( .A(N695), .B(N674), .Y(N750) );
  AND2X1 U420 ( .A(n19), .B(n21), .Y(\add_33_root_sub_139_5/carry[1] ) );
  XOR2X1 U421 ( .A(n21), .B(n19), .Y(N335) );
  AND2X1 U422 ( .A(N514), .B(n15), .Y(\add_36_root_sub_139_5/carry[5] ) );
  XOR2X1 U423 ( .A(n15), .B(N514), .Y(N517) );
endmodule

