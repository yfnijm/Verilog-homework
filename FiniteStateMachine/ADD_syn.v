/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Sun Apr  1 13:50:52 2018
/////////////////////////////////////////////////////////////


module ADD ( clk, rst, start, data, en, addr, fin, result );
  input [2:0] data;
  output [2:0] addr;
  output [2:0] result;
  input clk, rst, start;
  output en, fin;
  wire   state, next_state, N16, n8, n9, n11, n13, n14, n15, n16, n17, n20,
         n21, n22, n23, n24, n25, n26, n28, n29, n30, n31, n32, n33, n34, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57;
  wire   [2:0] total;
  wire   [2:0] next_num;
  assign en = 1'b1;
  assign fin = N16;

  DFFSX1 \num_reg[0]  ( .D(next_num[0]), .CK(clk), .SN(n47), .Q(addr[0]), .QN(
        n41) );
  DFFSX1 \num_reg[1]  ( .D(next_num[1]), .CK(clk), .SN(n47), .Q(addr[1]), .QN(
        n44) );
  DFFSX1 \num_reg[2]  ( .D(next_num[2]), .CK(clk), .SN(n47), .Q(addr[2]), .QN(
        n45) );
  DFFRX1 \total_reg[2]  ( .D(n53), .CK(clk), .RN(n47), .Q(total[2]) );
  DFFRX1 \total_reg[0]  ( .D(n52), .CK(clk), .RN(n47), .Q(total[0]), .QN(n54)
         );
  DFFRX1 \total_reg[1]  ( .D(n51), .CK(clk), .RN(n47), .Q(total[1]), .QN(n57)
         );
  DFFRX1 \ans_reg[0]  ( .D(n50), .CK(clk), .RN(n47), .QN(n46) );
  DFFRX1 \ans_reg[1]  ( .D(n49), .CK(clk), .RN(n47), .Q(n56), .QN(n43) );
  DFFRX1 \ans_reg[2]  ( .D(n48), .CK(clk), .RN(n47), .QN(n42) );
  AO22X1 U3 ( .A0(n8), .A1(total[2]), .B0(n9), .B1(data[2]), .Y(n53) );
  CLKINVX1 U4 ( .A(rst), .Y(n47) );
  OAI22XL U5 ( .A0(n9), .A1(n57), .B0(n8), .B1(n11), .Y(n51) );
  AO22X1 U6 ( .A0(n8), .A1(total[0]), .B0(n9), .B1(data[0]), .Y(n52) );
  CLKINVX1 U7 ( .A(n8), .Y(n9) );
  NAND2X1 U8 ( .A(start), .B(n55), .Y(n8) );
  NOR2X1 U9 ( .A(n42), .B(n13), .Y(result[2]) );
  NOR2X1 U10 ( .A(n43), .B(n13), .Y(result[1]) );
  NOR2X1 U11 ( .A(n46), .B(n13), .Y(result[0]) );
  OAI21XL U12 ( .A0(n55), .A1(n14), .B0(n15), .Y(next_num[2]) );
  XOR2X1 U13 ( .A(n45), .B(n16), .Y(n14) );
  NOR2X1 U14 ( .A(n44), .B(n41), .Y(n16) );
  OAI21XL U15 ( .A0(n17), .A1(n55), .B0(n15), .Y(next_num[1]) );
  XOR2X1 U16 ( .A(addr[1]), .B(n41), .Y(n17) );
  OAI21XL U17 ( .A0(addr[0]), .A1(n55), .B0(n15), .Y(next_num[0]) );
  NAND2BX1 U18 ( .AN(start), .B(n55), .Y(n15) );
  XOR2X1 U20 ( .A(n20), .B(n42), .Y(n48) );
  NAND2X1 U21 ( .A(n21), .B(n22), .Y(n20) );
  XOR2X1 U22 ( .A(n23), .B(data[2]), .Y(n21) );
  NAND2BX1 U23 ( .AN(n24), .B(n25), .Y(n23) );
  OAI21XL U24 ( .A0(n26), .A1(data[1]), .B0(n56), .Y(n25) );
  CLKINVX1 U25 ( .A(n28), .Y(n26) );
  OAI32X1 U26 ( .A0(n56), .A1(n29), .A2(n30), .B0(n43), .B1(n31), .Y(n49) );
  AOI211X1 U27 ( .A0(n28), .A1(n11), .B0(n30), .C0(n24), .Y(n31) );
  NOR2X1 U28 ( .A(n28), .B(n11), .Y(n24) );
  CLKINVX1 U29 ( .A(data[1]), .Y(n11) );
  XOR2X1 U30 ( .A(n28), .B(data[1]), .Y(n29) );
  NAND2BX1 U31 ( .AN(n46), .B(data[0]), .Y(n28) );
  XOR2X1 U33 ( .A(n32), .B(n46), .Y(n50) );
  NAND2X1 U34 ( .A(n22), .B(data[0]), .Y(n32) );
  CLKINVX1 U35 ( .A(n30), .Y(n22) );
  NAND2X1 U36 ( .A(state), .B(n33), .Y(n30) );
  CLKINVX1 U37 ( .A(n13), .Y(N16) );
  NAND3BX1 U38 ( .AN(n33), .B(n34), .C(start), .Y(n13) );
  AOI221XL U39 ( .A0(addr[0]), .A1(n54), .B0(addr[1]), .B1(n57), .C0(n36), .Y(
        n34) );
  OAI2BB1X1 U41 ( .A0N(total[2]), .A1N(n45), .B0(n37), .Y(n33) );
  OAI211X1 U42 ( .A0(n38), .A1(total[1]), .B0(n39), .C0(n40), .Y(n37) );
  OAI21XL U43 ( .A0(n54), .A1(addr[0]), .B0(addr[1]), .Y(n40) );
  CLKINVX1 U44 ( .A(n36), .Y(n39) );
  NOR2X1 U45 ( .A(total[2]), .B(n45), .Y(n36) );
  NOR3X1 U46 ( .A(addr[0]), .B(n54), .C(addr[1]), .Y(n38) );
  DFFRX1 state_reg ( .D(next_state), .CK(clk), .RN(n47), .Q(state), .QN(n55)
         );
  TLATNX1 next_state_reg ( .D(start), .GN(state), .Q(next_state) );
endmodule

