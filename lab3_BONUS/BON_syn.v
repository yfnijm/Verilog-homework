/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sat Apr 21 23:15:20 2018
/////////////////////////////////////////////////////////////


module BON_DW01_inc_0 ( A, SUM );
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


module BON_DW01_inc_1 ( A, SUM );
  input [9:0] A;
  output [9:0] SUM;

  wire   [9:2] carry;

  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[9]), .B(A[9]), .Y(SUM[9]) );
endmodule


module BON ( clk, rst, start, data, en, addr, flag, fin, result );
  input [9:0] data;
  output [9:0] addr;
  output [9:0] result;
  input clk, rst, start;
  output en, flag, fin;
  wire   same, N46, N47, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89,
         N113, N114, N115, n1, n3, n4, n6, n7, n8, n10, n12, n13, n14, n16,
         n17, n19, n21, n23, n24, n26, n27, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, N158, N157, N156, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82;
  wire   [2:0] state;
  wire   [9:0] next_num;
  assign en = 1'b1;
  assign fin = N115;

  BON_DW01_inc_0 add_82 ( .A(result), .SUM({N89, N88, N87, N86, N85, N84, N83, 
        N82, N81, N80}) );
  BON_DW01_inc_1 add_45 ( .A(addr), .SUM(next_num) );
  DFFSX1 \num_reg[9]  ( .D(next_num[9]), .CK(clk), .SN(n73), .Q(addr[9]), .QN(
        n40) );
  DFFRX1 \sum_reg[9]  ( .D(n52), .CK(clk), .RN(n73), .Q(result[9]), .QN(n41)
         );
  DFFRX1 \sum_reg[1]  ( .D(n60), .CK(clk), .RN(n73), .Q(result[1]), .QN(n49)
         );
  DFFRX1 \sum_reg[2]  ( .D(n59), .CK(clk), .RN(n73), .Q(result[2]), .QN(n48)
         );
  DFFRX1 \sum_reg[3]  ( .D(n58), .CK(clk), .RN(n73), .Q(result[3]), .QN(n47)
         );
  DFFRX1 \sum_reg[4]  ( .D(n57), .CK(clk), .RN(n73), .Q(result[4]), .QN(n46)
         );
  DFFRX1 \sum_reg[5]  ( .D(n56), .CK(clk), .RN(n73), .Q(result[5]), .QN(n45)
         );
  DFFRX1 \sum_reg[6]  ( .D(n55), .CK(clk), .RN(n73), .Q(result[6]), .QN(n44)
         );
  DFFRX1 \sum_reg[7]  ( .D(n54), .CK(clk), .RN(n73), .Q(result[7]), .QN(n43)
         );
  DFFRX1 \sum_reg[8]  ( .D(n53), .CK(clk), .RN(n73), .Q(result[8]), .QN(n42)
         );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n73), .Q(addr[1]), .QN(
        n37) );
  DFFSX1 \num_reg[4]  ( .D(next_num[4]), .CK(clk), .SN(n73), .Q(addr[4]), .QN(
        n39) );
  DFFRX1 \sum_reg[0]  ( .D(n61), .CK(clk), .RN(n73), .Q(result[0]), .QN(n50)
         );
  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n73), .Q(addr[0]), .QN(
        n38) );
  DFFSX1 \num_reg[6]  ( .D(next_num[6]), .CK(clk), .SN(n73), .Q(addr[6]) );
  DFFSX1 \num_reg[5]  ( .D(next_num[5]), .CK(clk), .SN(n73), .Q(addr[5]) );
  DFFSX1 \num_reg[8]  ( .D(next_num[8]), .CK(clk), .SN(n73), .Q(addr[8]) );
  DFFRX1 \state_reg[1]  ( .D(n64), .CK(clk), .RN(n73), .Q(state[1]), .QN(n69)
         );
  DFFRX1 same_reg ( .D(n62), .CK(clk), .RN(n73), .Q(same), .QN(n70) );
  DFFRX1 \state_reg[0]  ( .D(n65), .CK(clk), .RN(n73), .Q(state[0]), .QN(n67)
         );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n73), .Q(addr[2]) );
  DFFSX1 \num_reg[7]  ( .D(next_num[7]), .CK(clk), .SN(n73), .Q(addr[7]) );
  DFFSX1 \num_reg[3]  ( .D(next_num[3]), .CK(clk), .SN(n73), .Q(addr[3]) );
  DFFRX1 \state_reg[2]  ( .D(n63), .CK(clk), .RN(n73), .Q(state[2]), .QN(n68)
         );
  TLATX1 flag_reg ( .G(N113), .D(N114), .Q(flag) );
  OAI32X1 U58 ( .A0(n67), .A1(state[1]), .A2(n68), .B0(state[2]), .B1(state[0]), .Y(n19) );
  NAND3X1 U59 ( .A(state[1]), .B(n67), .C(state[2]), .Y(n12) );
  NOR4X1 U60 ( .A(n76), .B(n19), .C(n81), .D(n80), .Y(n3) );
  OAI22XL U61 ( .A0(n24), .A1(n70), .B0(n12), .B1(n13), .Y(n62) );
  AOI211X1 U62 ( .A0(n26), .A1(n78), .B0(n74), .C0(n27), .Y(n24) );
  OAI21XL U63 ( .A0(n29), .A1(n30), .B0(n7), .Y(n26) );
  NOR3X1 U64 ( .A(n19), .B(n80), .C(n81), .Y(n27) );
  XNOR2X1 U65 ( .A(N157), .B(n77), .Y(N46) );
  NOR3X1 U66 ( .A(n13), .B(n70), .C(n12), .Y(N114) );
  NAND2X1 U67 ( .A(n3), .B(n12), .Y(N113) );
  CLKINVX1 U68 ( .A(n12), .Y(n79) );
  NAND2X1 U69 ( .A(n7), .B(n12), .Y(n10) );
  CLKINVX1 U70 ( .A(n7), .Y(n80) );
  NOR2X1 U71 ( .A(n19), .B(n79), .Y(n8) );
  CLKINVX1 U72 ( .A(n30), .Y(n81) );
  AND2X2 U73 ( .A(N157), .B(N156), .Y(n82) );
  CLKINVX1 U74 ( .A(n14), .Y(n74) );
  CLKINVX1 U75 ( .A(N156), .Y(n77) );
  AOI21X1 U76 ( .A0(data[0]), .A1(n19), .B0(n76), .Y(n14) );
  NAND3X1 U77 ( .A(n67), .B(n69), .C(state[2]), .Y(n7) );
  INVX3 U78 ( .A(rst), .Y(n73) );
  NOR4X1 U79 ( .A(n34), .B(n35), .C(n40), .D(n76), .Y(N115) );
  NAND3X1 U80 ( .A(addr[6]), .B(addr[5]), .C(addr[8]), .Y(n35) );
  NAND4X1 U81 ( .A(addr[3]), .B(addr[2]), .C(addr[7]), .D(n36), .Y(n34) );
  NOR3X1 U82 ( .A(n39), .B(n37), .C(n38), .Y(n36) );
  AND4X1 U83 ( .A(n79), .B(n3), .C(same), .D(data[0]), .Y(n71) );
  AND4X1 U84 ( .A(n79), .B(n3), .C(same), .D(data[0]), .Y(n72) );
  AND4X1 U85 ( .A(n79), .B(n3), .C(same), .D(data[0]), .Y(n1) );
  OAI2BB2XL U86 ( .B0(n4), .B1(n76), .A0N(state[2]), .A1N(n6), .Y(n63) );
  AO21X1 U87 ( .A0(n7), .A1(n8), .B0(n74), .Y(n6) );
  AOI22X1 U88 ( .A0(n10), .A1(n78), .B0(N47), .B1(n81), .Y(n4) );
  XOR2X1 U89 ( .A(N158), .B(n82), .Y(N47) );
  OAI2BB2XL U90 ( .B0(n72), .B1(n41), .A0N(N89), .A1N(n71), .Y(n52) );
  OAI2BB2XL U91 ( .B0(n1), .B1(n42), .A0N(N88), .A1N(n1), .Y(n53) );
  OAI2BB2XL U92 ( .B0(n71), .B1(n43), .A0N(N87), .A1N(n1), .Y(n54) );
  OAI2BB2XL U93 ( .B0(n72), .B1(n44), .A0N(N86), .A1N(n71), .Y(n55) );
  OAI2BB2XL U94 ( .B0(n1), .B1(n45), .A0N(N85), .A1N(n71), .Y(n56) );
  OAI2BB2XL U95 ( .B0(n71), .B1(n46), .A0N(N84), .A1N(n1), .Y(n57) );
  OAI2BB2XL U96 ( .B0(n72), .B1(n47), .A0N(N83), .A1N(n71), .Y(n58) );
  OAI2BB2XL U97 ( .B0(n1), .B1(n48), .A0N(N82), .A1N(n72), .Y(n59) );
  OAI2BB2XL U98 ( .B0(n71), .B1(n49), .A0N(N81), .A1N(n1), .Y(n60) );
  OAI2BB2XL U99 ( .B0(n72), .B1(n50), .A0N(N80), .A1N(n71), .Y(n61) );
  NAND2X1 U100 ( .A(state[0]), .B(n68), .Y(n30) );
  NAND2X1 U101 ( .A(start), .B(data[0]), .Y(n13) );
  CLKINVX1 U102 ( .A(start), .Y(n76) );
  OAI21XL U103 ( .A0(n21), .A1(n67), .B0(n23), .Y(n65) );
  OAI211X1 U104 ( .A0(n8), .A1(data[0]), .B0(n67), .C0(start), .Y(n23) );
  AOI221XL U105 ( .A0(n8), .A1(state[2]), .B0(n77), .B1(n68), .C0(n76), .Y(n21) );
  AND2X2 U106 ( .A(state[0]), .B(n78), .Y(N156) );
  AOI31X1 U107 ( .A0(n31), .A1(n32), .A2(n33), .B0(state[1]), .Y(n29) );
  NOR2X1 U108 ( .A(data[6]), .B(data[5]), .Y(n31) );
  NOR3X1 U109 ( .A(data[7]), .B(data[9]), .C(data[8]), .Y(n32) );
  NOR4X1 U110 ( .A(data[4]), .B(data[3]), .C(data[2]), .D(data[1]), .Y(n33) );
  AND2X2 U111 ( .A(state[1]), .B(n78), .Y(N157) );
  CLKINVX1 U112 ( .A(data[0]), .Y(n78) );
  AND2X2 U113 ( .A(n78), .B(state[2]), .Y(N158) );
  OAI221XL U114 ( .A0(n13), .A1(n7), .B0(n14), .B1(n69), .C0(n16), .Y(n64) );
  AOI31X1 U115 ( .A0(state[0]), .A1(n17), .A2(start), .B0(n75), .Y(n16) );
  CLKINVX1 U116 ( .A(N113), .Y(n75) );
  AO22X1 U117 ( .A0(data[0]), .A1(n19), .B0(N46), .B1(n68), .Y(n17) );
endmodule

