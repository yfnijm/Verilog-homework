/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun Apr 15 15:10:36 2018
/////////////////////////////////////////////////////////////


module PTM_DW01_inc_0 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module PTM ( clk, rst, start, data, en, addr, flag, fin, result );
  input [9:0] data;
  output [9:0] addr;
  output [9:0] result;
  input clk, rst, start;
  output en, flag, fin;
  wire   N47, N48, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N110,
         N111, n1, n12, n13, n14, n15, n16, n17, n18, n20, n21, n23, n25, n26,
         n27, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, N140,
         N139, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n84,
         n85, n86, n87;
  wire   [2:0] state;
  wire   [9:0] sum;
  wire   [9:0] next_num;
  assign en = 1'b1;

  PTM_DW01_inc_0 add_72 ( .A(sum), .SUM({N87, N86, N85, N84, N83, N82, N81, 
        N80, N79, N78}) );
  PTM_DW01_inc_1 add_42 ( .A(addr), .SUM(next_num) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n82), .Q(addr[3]), .QN(
        n38) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n82), .Q(addr[4]), .QN(
        n36) );
  DFFSX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .SN(n82), .Q(addr[5]), .QN(
        n37) );
  DFFSX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .SN(n82), .Q(addr[6]), .QN(
        n40) );
  DFFSX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .SN(n82), .Q(addr[7]), .QN(
        n41) );
  DFFSX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .SN(n82), .Q(addr[8]), .QN(
        n39) );
  DFFRX1 \sum_reg[9]  ( .D(n43), .CK(clk), .RN(n82), .Q(sum[9]), .QN(n62) );
  DFFSX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .SN(n82), .Q(addr[9]) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n82), .Q(addr[2]) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n82), .Q(addr[1]) );
  DFFRX1 \state_reg[1]  ( .D(n54), .CK(clk), .RN(n82), .Q(state[1]), .QN(n60)
         );
  DFFRX1 \state_reg[0]  ( .D(n55), .CK(clk), .RN(n82), .Q(state[0]), .QN(n57)
         );
  DFFRX1 \sum_reg[1]  ( .D(n51), .CK(clk), .RN(n82), .Q(sum[1]), .QN(n63) );
  DFFRX1 \sum_reg[2]  ( .D(n50), .CK(clk), .RN(n82), .Q(sum[2]), .QN(n64) );
  DFFRX1 \sum_reg[3]  ( .D(n49), .CK(clk), .RN(n82), .Q(sum[3]), .QN(n65) );
  DFFRX1 \sum_reg[4]  ( .D(n48), .CK(clk), .RN(n82), .Q(sum[4]), .QN(n59) );
  DFFRX1 \sum_reg[5]  ( .D(n47), .CK(clk), .RN(n82), .Q(sum[5]), .QN(n66) );
  DFFRX1 \sum_reg[6]  ( .D(n46), .CK(clk), .RN(n82), .Q(sum[6]), .QN(n67) );
  DFFRX1 \sum_reg[7]  ( .D(n45), .CK(clk), .RN(n82), .Q(sum[7]), .QN(n68) );
  DFFRX1 \sum_reg[8]  ( .D(n44), .CK(clk), .RN(n82), .Q(sum[8]), .QN(n69) );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n82), .Q(addr[0]) );
  DFFRX1 \sum_reg[0]  ( .D(n52), .CK(clk), .RN(n82), .Q(sum[0]), .QN(n61) );
  OAI221XL U20 ( .A0(n23), .A1(n15), .B0(n21), .B1(n60), .C0(N110), .Y(n54) );
  OAI211X1 U25 ( .A0(n87), .A1(n25), .B0(n57), .C0(start), .Y(n29) );
  NAND4X1 U51 ( .A(start), .B(addr[9]), .C(n33), .D(n34), .Y(n32) );
  CLKINVX1 U56 ( .A(start), .Y(n15) );
  NOR3BXL U14 ( .AN(n12), .B(n85), .C(n13), .Y(n1) );
  DFFRX1 \state_reg[2]  ( .D(n53), .CK(clk), .RN(n82), .Q(state[2]), .QN(n58)
         );
  TLATX1 flag_reg ( .G(N110), .D(N111), .Q(flag) );
  NAND3X1 U66 ( .A(state[1]), .B(n57), .C(state[2]), .Y(n13) );
  CLKINVX1 U67 ( .A(n73), .Y(n75) );
  CLKINVX1 U68 ( .A(n73), .Y(n76) );
  CLKINVX1 U69 ( .A(n73), .Y(n77) );
  CLKINVX1 U70 ( .A(n74), .Y(n78) );
  CLKINVX1 U71 ( .A(n74), .Y(n79) );
  CLKINVX1 U72 ( .A(n74), .Y(n80) );
  CLKINVX1 U73 ( .A(n74), .Y(n81) );
  CLKINVX1 U74 ( .A(n1), .Y(n73) );
  CLKINVX1 U75 ( .A(n1), .Y(n74) );
  NOR3X1 U76 ( .A(n13), .B(n85), .C(n15), .Y(N111) );
  NAND2X1 U77 ( .A(n31), .B(n13), .Y(n16) );
  NOR2X1 U78 ( .A(n31), .B(n85), .Y(n25) );
  OAI2BB2XL U79 ( .B0(n79), .B1(n69), .A0N(N86), .A1N(n76), .Y(n44) );
  OAI2BB2XL U80 ( .B0(n76), .B1(n68), .A0N(N85), .A1N(n77), .Y(n45) );
  OAI2BB2XL U81 ( .B0(n81), .B1(n67), .A0N(N84), .A1N(n79), .Y(n46) );
  OAI2BB2XL U82 ( .B0(n80), .B1(n66), .A0N(N83), .A1N(n78), .Y(n47) );
  OAI2BB2XL U83 ( .B0(n75), .B1(n59), .A0N(N82), .A1N(n79), .Y(n48) );
  OAI2BB2XL U84 ( .B0(n75), .B1(n65), .A0N(N81), .A1N(n80), .Y(n49) );
  OAI2BB2XL U85 ( .B0(n76), .B1(n64), .A0N(N80), .A1N(n81), .Y(n50) );
  OAI2BB2XL U86 ( .B0(n77), .B1(n63), .A0N(N79), .A1N(n80), .Y(n51) );
  CLKINVX1 U87 ( .A(n13), .Y(n86) );
  NOR2X1 U88 ( .A(n15), .B(n25), .Y(n21) );
  NOR2X1 U89 ( .A(n61), .B(n72), .Y(result[0]) );
  NOR2X1 U90 ( .A(n63), .B(n72), .Y(result[1]) );
  NOR2X1 U91 ( .A(n64), .B(n72), .Y(result[2]) );
  NOR2X1 U92 ( .A(n65), .B(n72), .Y(result[3]) );
  NOR2X1 U93 ( .A(n59), .B(n72), .Y(result[4]) );
  NOR2X1 U94 ( .A(n66), .B(n72), .Y(result[5]) );
  NOR2X1 U95 ( .A(n67), .B(n72), .Y(result[6]) );
  NOR2X1 U96 ( .A(n68), .B(n72), .Y(result[7]) );
  NOR2X1 U97 ( .A(n69), .B(n72), .Y(result[8]) );
  NOR2X1 U98 ( .A(n62), .B(n72), .Y(result[9]) );
  CLKINVX1 U99 ( .A(n72), .Y(fin) );
  CLKINVX1 U100 ( .A(N139), .Y(n84) );
  NAND2X1 U101 ( .A(n12), .B(n13), .Y(N110) );
  AOI32X1 U102 ( .A0(state[0]), .A1(n60), .A2(state[2]), .B0(n58), .B1(n57), 
        .Y(n31) );
  CLKINVX1 U103 ( .A(rst), .Y(n82) );
  NAND3X1 U104 ( .A(n57), .B(n60), .C(state[2]), .Y(n20) );
  NAND3X1 U105 ( .A(addr[0]), .B(addr[2]), .C(addr[1]), .Y(n35) );
  CLKBUFX3 U106 ( .A(n32), .Y(n72) );
  NOR3X1 U107 ( .A(n41), .B(n39), .C(n40), .Y(n33) );
  NOR4X1 U108 ( .A(n35), .B(n38), .C(n36), .D(n37), .Y(n34) );
  CLKINVX1 U109 ( .A(data[0]), .Y(n85) );
  OAI2BB2XL U110 ( .B0(n78), .B1(n62), .A0N(N87), .A1N(n75), .Y(n43) );
  OAI2BB2XL U111 ( .B0(n78), .B1(n61), .A0N(N78), .A1N(n81), .Y(n52) );
  OAI21XL U112 ( .A0(n27), .A1(n57), .B0(n29), .Y(n55) );
  AOI221XL U113 ( .A0(n87), .A1(state[2]), .B0(n84), .B1(n58), .C0(n15), .Y(
        n27) );
  CLKINVX1 U114 ( .A(n16), .Y(n87) );
  AND4X1 U115 ( .A(start), .B(n31), .C(state[2]), .D(n20), .Y(n12) );
  AND2X2 U116 ( .A(state[0]), .B(n85), .Y(N139) );
  OAI222XL U117 ( .A0(n14), .A1(n15), .B0(n16), .B1(n17), .C0(n18), .C1(n58), 
        .Y(n53) );
  AOI32X1 U118 ( .A0(state[0]), .A1(n58), .A2(N48), .B0(n86), .B1(n85), .Y(n14) );
  OA21XL U119 ( .A0(n20), .A1(data[0]), .B0(n21), .Y(n18) );
  NAND2X1 U120 ( .A(n20), .B(state[2]), .Y(n17) );
  AND2X2 U121 ( .A(state[1]), .B(n85), .Y(N140) );
  AOI2BB2X1 U122 ( .B0(state[0]), .B1(n26), .A0N(n20), .A1N(n85), .Y(n23) );
  AO21X1 U123 ( .A0(N47), .A1(n58), .B0(n25), .Y(n26) );
  XNOR2X1 U124 ( .A(N140), .B(n84), .Y(N47) );
  XOR2X1 U125 ( .A(n70), .B(n71), .Y(N48) );
  NAND2X1 U126 ( .A(n85), .B(state[2]), .Y(n70) );
  NAND2X1 U127 ( .A(N140), .B(N139), .Y(n71) );
endmodule

