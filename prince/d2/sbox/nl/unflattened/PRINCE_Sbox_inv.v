/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jun 12 08:04:28 2023
/////////////////////////////////////////////////////////////


module NF_CF_1_num0_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  XNOR2_X1 U1 ( .A(d[0]), .B(b[0]), .ZN(n18) );
  OR2_X1 U2 ( .A1(a[0]), .A2(n18), .ZN(n21) );
  NAND2_X1 U3 ( .A1(a[0]), .A2(d[0]), .ZN(n19) );
  NAND2_X1 U4 ( .A1(n19), .A2(c[0]), .ZN(n20) );
  NAND2_X1 U5 ( .A1(n21), .A2(n20), .ZN(n26) );
  INV_X1 U6 ( .A(n26), .ZN(n23) );
  XNOR2_X1 U7 ( .A(r[1]), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n22) );
  XOR2_X1 U8 ( .A(n22), .B(r[0]), .Z(n24) );
  NAND2_X1 U9 ( .A1(n23), .A2(n24), .ZN(n28) );
  INV_X1 U10 ( .A(n24), .ZN(n25) );
  NAND2_X1 U11 ( .A1(n26), .A2(n25), .ZN(n27) );
  NAND2_X1 U12 ( .A1(n28), .A2(n27), .ZN(q) );
endmodule


module NF_CF_1_num1_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11, n12;

  XOR2_X1 U1 ( .A(d[1]), .B(r[2]), .Z(n8) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(n8), .B(n7), .ZN(n12) );
  NAND2_X1 U4 ( .A1(a[0]), .A2(b[0]), .ZN(n9) );
  NAND2_X1 U5 ( .A1(n9), .A2(c[1]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n10), .B(r[1]), .ZN(n11) );
  XOR2_X1 U7 ( .A(n12), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num2_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(c[2]), .A2(a[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[0]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[2]), .B(r[3]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num3_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[4]), .B(TwoSharesFromNeighbouringSbox[2]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[3]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(a[0]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(c[1]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num4_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(c[2]), .A2(a[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[1]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[4]), .B(r[5]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num5_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(r[6]), .B(r[5]), .Z(n13) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n12) );
  XNOR2_X1 U3 ( .A(n13), .B(n12), .ZN(n19) );
  XOR2_X1 U4 ( .A(a[0]), .B(c[0]), .Z(n17) );
  INV_X1 U5 ( .A(b[1]), .ZN(n14) );
  NOR2_X1 U6 ( .A1(a[0]), .A2(n14), .ZN(n15) );
  XOR2_X1 U7 ( .A(n15), .B(d[2]), .Z(n16) );
  NAND2_X1 U8 ( .A1(n17), .A2(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num6_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  NAND2_X1 U1 ( .A1(a[0]), .A2(c[0]), .ZN(n11) );
  NAND2_X1 U2 ( .A1(d[1]), .A2(n11), .ZN(n12) );
  XOR2_X1 U3 ( .A(b[2]), .B(n12), .Z(n14) );
  NOR2_X1 U4 ( .A1(a[0]), .A2(c[0]), .ZN(n13) );
  NOR2_X1 U5 ( .A1(n14), .A2(n13), .ZN(n18) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n16) );
  XNOR2_X1 U7 ( .A(r[6]), .B(r[7]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XOR2_X1 U9 ( .A(n18), .B(n17), .Z(q) );
endmodule


module NF_CF_1_num7_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(c[1]), .A2(a[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[2]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[7]), .B(r[8]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num8_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(r[9]), .B(r[8]), .Z(n7) );
  AND2_X1 U2 ( .A1(c[2]), .A2(a[0]), .ZN(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(b[2]), .ZN(n6) );
  XNOR2_X1 U4 ( .A(n7), .B(n6), .ZN(n8) );
  XOR2_X1 U5 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n8), .Z(q) );
endmodule


module NF_CF_1_num9_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[9]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[10]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(a[1]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(c[2]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(d[0]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num10_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(a[1]), .A2(b[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[0]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(n7), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n8) );
  XOR2_X1 U4 ( .A(n8), .B(TwoSharesFromNeighbouringSbox[1]), .Z(n10) );
  XNOR2_X1 U5 ( .A(r[10]), .B(r[11]), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num11_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(r[11]), .Z(n12) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(r[12]), .ZN(n11) );
  XNOR2_X1 U3 ( .A(n12), .B(n11), .ZN(n19) );
  XOR2_X1 U4 ( .A(d[2]), .B(b[0]), .Z(n14) );
  INV_X1 U5 ( .A(a[1]), .ZN(n13) );
  NAND2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(c[1]), .ZN(n17) );
  NAND2_X1 U8 ( .A1(d[2]), .A2(a[1]), .ZN(n16) );
  NAND2_X1 U9 ( .A1(n17), .A2(n16), .ZN(n18) );
  XOR2_X1 U10 ( .A(n19), .B(n18), .Z(q) );
endmodule


module NF_CF_1_num12_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[13]), .B(TwoSharesFromNeighbouringSbox[2]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[12]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(a[1]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(c[2]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num13_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(c[0]), .A2(a[1]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[1]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[13]), .B(r[14]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num14_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(r[15]), .B(r[14]), .Z(n13) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n12) );
  XNOR2_X1 U3 ( .A(n13), .B(n12), .ZN(n19) );
  XOR2_X1 U4 ( .A(a[1]), .B(c[1]), .Z(n17) );
  INV_X1 U5 ( .A(b[1]), .ZN(n14) );
  NOR2_X1 U6 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XOR2_X1 U7 ( .A(n15), .B(d[1]), .Z(n16) );
  NAND2_X1 U8 ( .A1(n17), .A2(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num15_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[16]), .B(TwoSharesFromNeighbouringSbox[5]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[15]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(a[1]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(c[0]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num16_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(r[17]), .B(r[16]), .Z(n13) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[7]), .ZN(n12) );
  XNOR2_X1 U3 ( .A(n13), .B(n12), .ZN(n19) );
  XOR2_X1 U4 ( .A(a[1]), .B(c[1]), .Z(n17) );
  INV_X1 U5 ( .A(b[2]), .ZN(n14) );
  NOR2_X1 U6 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XOR2_X1 U7 ( .A(n15), .B(d[0]), .Z(n16) );
  NAND2_X1 U8 ( .A1(n17), .A2(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num17_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(r[18]), .B(r[17]), .Z(n7) );
  AND2_X1 U2 ( .A1(c[2]), .A2(a[1]), .ZN(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(b[2]), .ZN(n6) );
  XNOR2_X1 U4 ( .A(n7), .B(n6), .ZN(n8) );
  XOR2_X1 U5 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n8), .Z(q) );
endmodule


module NF_CF_1_num18_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  INV_X1 U1 ( .A(c[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(a[2]), .ZN(n7) );
  NAND2_X1 U3 ( .A1(n7), .A2(b[0]), .ZN(n10) );
  XNOR2_X1 U4 ( .A(r[19]), .B(r[18]), .ZN(n8) );
  XNOR2_X1 U5 ( .A(n8), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num19_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11, n12;

  XOR2_X1 U1 ( .A(d[0]), .B(r[20]), .Z(n8) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(n8), .B(n7), .ZN(n12) );
  NAND2_X1 U4 ( .A1(a[2]), .A2(b[0]), .ZN(n9) );
  NAND2_X1 U5 ( .A1(n9), .A2(c[1]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n10), .B(r[19]), .ZN(n11) );
  XOR2_X1 U7 ( .A(n12), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num20_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(r[21]), .B(r[20]), .Z(n13) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n12) );
  XNOR2_X1 U3 ( .A(n13), .B(n12), .ZN(n19) );
  XOR2_X1 U4 ( .A(a[2]), .B(c[2]), .Z(n17) );
  INV_X1 U5 ( .A(b[0]), .ZN(n14) );
  NOR2_X1 U6 ( .A1(a[2]), .A2(n14), .ZN(n15) );
  XOR2_X1 U7 ( .A(n15), .B(d[1]), .Z(n16) );
  NAND2_X1 U8 ( .A1(n17), .A2(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num21_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[22]), .B(TwoSharesFromNeighbouringSbox[2]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[21]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(a[2]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(c[0]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num22_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(r[23]), .B(r[22]), .Z(n13) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n12) );
  XNOR2_X1 U3 ( .A(n13), .B(n12), .ZN(n19) );
  XOR2_X1 U4 ( .A(a[2]), .B(c[2]), .Z(n17) );
  INV_X1 U5 ( .A(b[1]), .ZN(n14) );
  NOR2_X1 U6 ( .A1(a[2]), .A2(n14), .ZN(n15) );
  XOR2_X1 U7 ( .A(n15), .B(d[0]), .Z(n16) );
  NAND2_X1 U8 ( .A1(n17), .A2(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num23_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(c[1]), .A2(a[2]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[1]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[23]), .B(r[24]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num24_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[25]), .B(TwoSharesFromNeighbouringSbox[5]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[24]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(a[2]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(c[1]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num25_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(a[2]), .A2(b[2]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[0]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(n7), .B(TwoSharesFromNeighbouringSbox[6]), .ZN(n8) );
  XOR2_X1 U4 ( .A(n8), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n10) );
  XNOR2_X1 U5 ( .A(r[25]), .B(r[26]), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num26_Co_f0 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   r_0, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36;
  assign r_0 = r[0];

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[26]), .Z(n21) );
  XOR2_X1 U2 ( .A(r_0), .B(n21), .Z(n31) );
  INV_X1 U3 ( .A(n31), .ZN(n29) );
  NAND2_X1 U4 ( .A1(a[2]), .A2(d[2]), .ZN(n22) );
  NOR2_X1 U5 ( .A1(n29), .A2(n22), .ZN(n28) );
  AND2_X1 U6 ( .A1(b[2]), .A2(c[2]), .ZN(n23) );
  XOR2_X1 U7 ( .A(n23), .B(n29), .Z(n25) );
  OR2_X1 U8 ( .A1(c[2]), .A2(d[2]), .ZN(n24) );
  NAND2_X1 U9 ( .A1(n25), .A2(n24), .ZN(n26) );
  NOR2_X1 U10 ( .A1(a[2]), .A2(n26), .ZN(n27) );
  NOR2_X1 U11 ( .A1(n28), .A2(n27), .ZN(n36) );
  NAND2_X1 U12 ( .A1(a[2]), .A2(n29), .ZN(n30) );
  NAND2_X1 U13 ( .A1(c[2]), .A2(n30), .ZN(n34) );
  NOR2_X1 U14 ( .A1(n31), .A2(c[2]), .ZN(n32) );
  NOR2_X1 U15 ( .A1(n32), .A2(d[2]), .ZN(n33) );
  NAND2_X1 U16 ( .A1(n34), .A2(n33), .ZN(n35) );
  NAND2_X1 U17 ( .A1(n36), .A2(n35), .ZN(q) );
endmodule


module NF_CF_1_num0_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  OR2_X1 U1 ( .A1(c[0]), .A2(d[0]), .ZN(n13) );
  NAND2_X1 U2 ( .A1(b[0]), .A2(n13), .ZN(n15) );
  XOR2_X1 U3 ( .A(r[82]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n14) );
  XNOR2_X1 U4 ( .A(r[81]), .B(n14), .ZN(n17) );
  XNOR2_X1 U5 ( .A(n15), .B(n17), .ZN(n16) );
  NAND2_X1 U6 ( .A1(c[0]), .A2(a[0]), .ZN(n18) );
  NAND2_X1 U7 ( .A1(n16), .A2(n18), .ZN(n22) );
  INV_X1 U8 ( .A(n17), .ZN(n20) );
  INV_X1 U9 ( .A(n18), .ZN(n19) );
  NAND2_X1 U10 ( .A1(n20), .A2(n19), .ZN(n21) );
  NAND2_X1 U11 ( .A1(n22), .A2(n21), .ZN(q) );
endmodule


module NF_CF_1_num1_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n13, n14, n15, n16, n17, n18, n19, n20;

  NAND2_X1 U1 ( .A1(a[0]), .A2(b[0]), .ZN(n13) );
  NAND2_X1 U2 ( .A1(n13), .A2(c[1]), .ZN(n20) );
  OR2_X1 U3 ( .A1(d[1]), .A2(c[1]), .ZN(n14) );
  NAND2_X1 U4 ( .A1(n14), .A2(b[0]), .ZN(n18) );
  XOR2_X1 U5 ( .A(r[82]), .B(TwoSharesFromNeighbouringSbox[1]), .Z(n16) );
  XNOR2_X1 U6 ( .A(r[83]), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n15) );
  XNOR2_X1 U7 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U8 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U9 ( .A(n20), .B(n19), .ZN(q) );
endmodule


module NF_CF_1_num2_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17;

  NAND2_X1 U1 ( .A1(a[0]), .A2(c[2]), .ZN(n11) );
  NAND2_X1 U2 ( .A1(b[0]), .A2(n11), .ZN(n13) );
  NOR2_X1 U3 ( .A1(c[2]), .A2(d[2]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(n13), .A2(n12), .ZN(n17) );
  XOR2_X1 U5 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n15) );
  XNOR2_X1 U6 ( .A(r[83]), .B(r[84]), .ZN(n14) );
  XNOR2_X1 U7 ( .A(n15), .B(n14), .ZN(n16) );
  XOR2_X1 U8 ( .A(n17), .B(n16), .Z(q) );
endmodule


module NF_CF_1_num3_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[0]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[1]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[85]), .B(r[84]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num4_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[2]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[86]), .B(r[85]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num5_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[86]), .B(r[87]), .Z(n16) );
  INV_X1 U3 ( .A(b[0]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[0]), .A2(a[1]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[0]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num6_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[87]), .B(r[88]), .Z(n16) );
  INV_X1 U3 ( .A(b[0]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[0]), .A2(a[2]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[0]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num7_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[2]), .B(d[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[1]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[89]), .B(r[88]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num8_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[90]), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n11) );
  XNOR2_X1 U2 ( .A(d[0]), .B(a[2]), .ZN(n8) );
  NAND2_X1 U3 ( .A1(b[0]), .A2(c[2]), .ZN(n7) );
  NOR2_X1 U4 ( .A1(n8), .A2(n7), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n9), .B(r[89]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(q) );
endmodule


module NF_CF_1_num9_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11, n12;

  NOR2_X1 U1 ( .A1(c[2]), .A2(d[0]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(a[0]), .A2(c[2]), .ZN(n7) );
  NAND2_X1 U3 ( .A1(b[1]), .A2(n7), .ZN(n8) );
  NOR2_X1 U4 ( .A1(n9), .A2(n8), .ZN(n12) );
  XOR2_X1 U5 ( .A(r[91]), .B(r[90]), .Z(n10) );
  XNOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n10), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(q) );
endmodule


module NF_CF_1_num10_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n13, n14, n15, n16, n17, n18, n19, n20;

  NAND2_X1 U1 ( .A1(a[0]), .A2(b[1]), .ZN(n13) );
  NAND2_X1 U2 ( .A1(n13), .A2(c[0]), .ZN(n20) );
  OR2_X1 U3 ( .A1(d[1]), .A2(c[0]), .ZN(n14) );
  NAND2_X1 U4 ( .A1(n14), .A2(b[1]), .ZN(n18) );
  XOR2_X1 U5 ( .A(r[91]), .B(TwoSharesFromNeighbouringSbox[1]), .Z(n16) );
  XNOR2_X1 U6 ( .A(r[92]), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n15) );
  XNOR2_X1 U7 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U8 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U9 ( .A(n20), .B(n19), .ZN(q) );
endmodule


module NF_CF_1_num11_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n15, n16, n17, n18, n19, n20, n21, n22;

  NOR2_X1 U1 ( .A1(b[1]), .A2(a[0]), .ZN(n15) );
  AND2_X1 U2 ( .A1(c[1]), .A2(n15), .ZN(n18) );
  NAND2_X1 U3 ( .A1(d[2]), .A2(b[1]), .ZN(n16) );
  NOR2_X1 U4 ( .A1(c[1]), .A2(n16), .ZN(n17) );
  NOR2_X1 U5 ( .A1(n18), .A2(n17), .ZN(n22) );
  XOR2_X1 U6 ( .A(r[92]), .B(r[93]), .Z(n20) );
  XNOR2_X1 U7 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n19) );
  XNOR2_X1 U8 ( .A(n20), .B(n19), .ZN(n21) );
  XNOR2_X1 U9 ( .A(n22), .B(n21), .ZN(q) );
endmodule


module NF_CF_1_num12_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[2]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[94]), .B(r[93]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num13_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[0]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[0]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[95]), .B(r[94]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num14_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[95]), .B(r[96]), .Z(n16) );
  INV_X1 U3 ( .A(b[1]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[1]), .A2(a[1]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[1]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num15_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[2]), .B(d[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[0]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[97]), .B(r[96]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num16_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[97]), .B(r[98]), .Z(n16) );
  INV_X1 U3 ( .A(b[1]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[0]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[1]), .A2(a[2]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[1]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num17_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[99]), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n11) );
  XNOR2_X1 U2 ( .A(d[1]), .B(a[2]), .ZN(n8) );
  NAND2_X1 U3 ( .A1(b[1]), .A2(c[2]), .ZN(n7) );
  NOR2_X1 U4 ( .A1(n8), .A2(n7), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n9), .B(r[98]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(q) );
endmodule


module NF_CF_1_num18_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  INV_X1 U1 ( .A(c[0]), .ZN(n13) );
  INV_X1 U2 ( .A(b[2]), .ZN(n11) );
  NOR2_X1 U3 ( .A1(a[0]), .A2(n11), .ZN(n12) );
  NOR2_X1 U4 ( .A1(n13), .A2(n12), .ZN(n16) );
  NAND2_X1 U5 ( .A1(b[2]), .A2(d[2]), .ZN(n14) );
  NOR2_X1 U6 ( .A1(c[0]), .A2(n14), .ZN(n15) );
  NOR2_X1 U7 ( .A1(n16), .A2(n15), .ZN(n19) );
  XNOR2_X1 U8 ( .A(r[99]), .B(r[100]), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n17), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n18) );
  XNOR2_X1 U10 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num19_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17;

  NAND2_X1 U1 ( .A1(a[0]), .A2(c[1]), .ZN(n11) );
  NAND2_X1 U2 ( .A1(b[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U3 ( .A1(c[1]), .A2(d[0]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(n13), .A2(n12), .ZN(n17) );
  XOR2_X1 U5 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .Z(n15) );
  XNOR2_X1 U6 ( .A(r[100]), .B(r[101]), .ZN(n14) );
  XNOR2_X1 U7 ( .A(n15), .B(n14), .ZN(n16) );
  XOR2_X1 U8 ( .A(n17), .B(n16), .Z(q) );
endmodule


module NF_CF_1_num20_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15;

  NAND2_X1 U1 ( .A1(d[1]), .A2(b[2]), .ZN(n11) );
  OR2_X1 U2 ( .A1(a[0]), .A2(b[2]), .ZN(n9) );
  NAND2_X1 U3 ( .A1(c[2]), .A2(n9), .ZN(n10) );
  NAND2_X1 U4 ( .A1(n11), .A2(n10), .ZN(n14) );
  XNOR2_X1 U5 ( .A(r[102]), .B(TwoSharesFromNeighbouringSbox[1]), .ZN(n12) );
  XNOR2_X1 U6 ( .A(n12), .B(r[101]), .ZN(n13) );
  XNOR2_X1 U7 ( .A(n14), .B(n13), .ZN(n15) );
  XNOR2_X1 U8 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num21_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[0]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[103]), .B(r[102]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num22_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[103]), .B(r[104]), .Z(n16) );
  INV_X1 U3 ( .A(b[2]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[0]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[2]), .A2(a[1]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[2]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num23_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[1]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[105]), .B(r[104]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num24_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[2]), .B(d[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[1]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[106]), .B(r[105]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num25_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[2]), .B(d[0]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[0]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[107]), .B(r[106]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num26_Co_f1 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   r_81, n8, n9, n10, n11, n12, n13, n14;
  assign r_81 = r[81];

  XOR2_X1 U1 ( .A(r_81), .B(r[107]), .Z(n13) );
  INV_X1 U2 ( .A(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(d[2]), .A2(n8), .ZN(n10) );
  NOR2_X1 U4 ( .A1(b[2]), .A2(a[2]), .ZN(n9) );
  NOR2_X1 U5 ( .A1(n10), .A2(n9), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(c[2]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(n14) );
  XOR2_X1 U8 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n14), .Z(q) );
endmodule


module NF_CF_1_num0_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23;

  NAND2_X1 U1 ( .A1(d[0]), .A2(c[0]), .ZN(n14) );
  NAND2_X1 U2 ( .A1(b[0]), .A2(n14), .ZN(n16) );
  XOR2_X1 U3 ( .A(r[28]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n15) );
  XNOR2_X1 U4 ( .A(r[27]), .B(n15), .ZN(n19) );
  XNOR2_X1 U5 ( .A(n16), .B(n19), .ZN(n18) );
  NOR2_X1 U6 ( .A1(d[0]), .A2(a[0]), .ZN(n20) );
  INV_X1 U7 ( .A(n20), .ZN(n17) );
  NAND2_X1 U8 ( .A1(n18), .A2(n17), .ZN(n23) );
  INV_X1 U9 ( .A(n19), .ZN(n21) );
  NAND2_X1 U10 ( .A1(n21), .A2(n20), .ZN(n22) );
  NAND2_X1 U11 ( .A1(n23), .A2(n22), .ZN(q) );
endmodule


module NF_CF_1_num1_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[29]), .B(r[28]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n14) );
  NAND2_X1 U4 ( .A1(b[0]), .A2(d[1]), .ZN(n12) );
  XOR2_X1 U5 ( .A(c[1]), .B(a[0]), .Z(n11) );
  NOR2_X1 U6 ( .A1(n12), .A2(n11), .ZN(n13) );
  XOR2_X1 U7 ( .A(n14), .B(n13), .Z(q) );
endmodule


module NF_CF_1_num2_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[30]), .B(r[29]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n14) );
  NAND2_X1 U4 ( .A1(b[0]), .A2(d[2]), .ZN(n12) );
  XOR2_X1 U5 ( .A(c[2]), .B(a[0]), .Z(n11) );
  NOR2_X1 U6 ( .A1(n12), .A2(n11), .ZN(n13) );
  XOR2_X1 U7 ( .A(n14), .B(n13), .Z(q) );
endmodule


module NF_CF_1_num3_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n13, n14, n15, n16, n17, n18, n19, n20;

  NOR2_X1 U1 ( .A1(d[0]), .A2(b[0]), .ZN(n13) );
  NAND2_X1 U2 ( .A1(n13), .A2(a[1]), .ZN(n16) );
  AND2_X1 U3 ( .A1(c[1]), .A2(b[0]), .ZN(n14) );
  NAND2_X1 U4 ( .A1(d[0]), .A2(n14), .ZN(n15) );
  NAND2_X1 U5 ( .A1(n16), .A2(n15), .ZN(n19) );
  XNOR2_X1 U6 ( .A(r[31]), .B(TwoSharesFromNeighbouringSbox[2]), .ZN(n17) );
  XNOR2_X1 U7 ( .A(n17), .B(TwoSharesFromNeighbouringSbox[3]), .ZN(n18) );
  XNOR2_X1 U8 ( .A(n19), .B(n18), .ZN(n20) );
  XNOR2_X1 U9 ( .A(r[30]), .B(n20), .ZN(q) );
endmodule


module NF_CF_1_num4_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(c[2]), .B(a[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(d[1]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[32]), .B(r[31]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num5_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(c[0]), .B(a[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(d[2]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[33]), .B(r[32]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num6_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[33]), .B(r[34]), .Z(n17) );
  INV_X1 U3 ( .A(d[1]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(c[0]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(d[1]), .A2(a[2]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[0]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num7_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(c[1]), .B(a[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(d[2]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[35]), .B(r[34]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num8_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2_X1 U1 ( .A(r[36]), .B(r[35]), .Z(n13) );
  INV_X1 U2 ( .A(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(c[2]), .A2(n8), .ZN(n10) );
  NOR2_X1 U4 ( .A1(b[0]), .A2(a[2]), .ZN(n9) );
  NOR2_X1 U5 ( .A1(n10), .A2(n9), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(d[0]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(n14) );
  XOR2_X1 U8 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n14), .Z(q) );
endmodule


module NF_CF_1_num9_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n7, n8, n9, n10, n11, n12;

  NOR2_X1 U1 ( .A1(d[0]), .A2(a[0]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[2]), .A2(d[0]), .ZN(n7) );
  NAND2_X1 U3 ( .A1(b[1]), .A2(n7), .ZN(n8) );
  NOR2_X1 U4 ( .A1(n9), .A2(n8), .ZN(n12) );
  XOR2_X1 U5 ( .A(r[37]), .B(r[36]), .Z(n10) );
  XNOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n10), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(q) );
endmodule


module NF_CF_1_num10_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n22, n23, n24, n25, n26, n27, n28, n29;

  XOR2_X1 U1 ( .A(r[37]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n23) );
  XNOR2_X1 U2 ( .A(r[38]), .B(TwoSharesFromNeighbouringSbox[1]), .ZN(n22) );
  XNOR2_X1 U3 ( .A(n23), .B(n22), .ZN(n29) );
  NAND2_X1 U4 ( .A1(c[0]), .A2(d[1]), .ZN(n24) );
  XOR2_X1 U5 ( .A(n24), .B(a[0]), .Z(n27) );
  INV_X1 U6 ( .A(b[1]), .ZN(n25) );
  NAND2_X1 U7 ( .A1(n25), .A2(d[1]), .ZN(n26) );
  NAND2_X1 U8 ( .A1(n27), .A2(n26), .ZN(n28) );
  XOR2_X1 U9 ( .A(n29), .B(n28), .Z(q) );
endmodule


module NF_CF_1_num11_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[39]), .B(r[38]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n14) );
  NAND2_X1 U4 ( .A1(b[1]), .A2(d[2]), .ZN(n12) );
  XOR2_X1 U5 ( .A(c[1]), .B(a[0]), .Z(n11) );
  NOR2_X1 U6 ( .A1(n12), .A2(n11), .ZN(n13) );
  XOR2_X1 U7 ( .A(n14), .B(n13), .Z(q) );
endmodule


module NF_CF_1_num12_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[39]), .B(r[40]), .Z(n17) );
  INV_X1 U3 ( .A(d[2]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(c[2]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(d[2]), .A2(a[1]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[1]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num13_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(c[0]), .B(a[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(d[0]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[41]), .B(r[40]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num14_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[41]), .B(r[42]), .Z(n17) );
  INV_X1 U3 ( .A(b[1]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(c[1]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(b[1]), .A2(a[1]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(d[1]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num15_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[42]), .B(r[43]), .Z(n17) );
  INV_X1 U3 ( .A(d[2]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(c[0]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(d[2]), .A2(a[2]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[1]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num16_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(c[1]), .B(a[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(d[0]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[44]), .B(r[43]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num17_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2_X1 U1 ( .A(r[45]), .B(r[44]), .Z(n13) );
  INV_X1 U2 ( .A(b[1]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(c[2]), .A2(n8), .ZN(n10) );
  NOR2_X1 U4 ( .A1(b[1]), .A2(a[2]), .ZN(n9) );
  NOR2_X1 U5 ( .A1(n10), .A2(n9), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(d[1]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(n14) );
  XOR2_X1 U8 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n14), .Z(q) );
endmodule


module NF_CF_1_num18_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n10, n11, n12, n13, n14, n15, n16;

  NOR2_X1 U1 ( .A1(d[2]), .A2(b[2]), .ZN(n10) );
  AND2_X1 U2 ( .A1(a[0]), .A2(n10), .ZN(n13) );
  NAND2_X1 U3 ( .A1(d[2]), .A2(b[2]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(c[0]), .A2(n11), .ZN(n12) );
  NOR2_X1 U5 ( .A1(n13), .A2(n12), .ZN(n16) );
  XNOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[46]), .ZN(n14) );
  XNOR2_X1 U7 ( .A(n14), .B(r[45]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num19_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[47]), .B(r[46]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n14) );
  NAND2_X1 U4 ( .A1(b[2]), .A2(d[0]), .ZN(n12) );
  XOR2_X1 U5 ( .A(c[1]), .B(a[0]), .Z(n11) );
  NOR2_X1 U6 ( .A1(n12), .A2(n11), .ZN(n13) );
  XOR2_X1 U7 ( .A(n14), .B(n13), .Z(q) );
endmodule


module NF_CF_1_num20_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[48]), .B(r[47]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n14) );
  NAND2_X1 U4 ( .A1(b[2]), .A2(d[1]), .ZN(n12) );
  XOR2_X1 U5 ( .A(c[2]), .B(a[0]), .Z(n11) );
  NOR2_X1 U6 ( .A1(n12), .A2(n11), .ZN(n13) );
  XOR2_X1 U7 ( .A(n14), .B(n13), .Z(q) );
endmodule


module NF_CF_1_num21_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[48]), .B(r[49]), .Z(n17) );
  INV_X1 U3 ( .A(d[1]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(c[0]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(d[1]), .A2(a[1]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[2]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num22_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(c[2]), .B(a[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(d[0]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[50]), .B(r[49]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num23_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[50]), .B(r[51]), .Z(n17) );
  INV_X1 U3 ( .A(b[2]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(c[1]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(b[2]), .A2(a[1]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(d[2]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num24_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[51]), .B(r[52]), .Z(n17) );
  INV_X1 U3 ( .A(d[1]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(c[1]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(d[1]), .A2(a[2]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[2]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num25_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(c[0]), .B(a[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(d[0]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[53]), .B(r[52]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num26_Co_f2 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   r_27, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31;
  assign r_27 = r[27];

  INV_X1 U1 ( .A(c[2]), .ZN(n22) );
  NAND2_X1 U2 ( .A1(n22), .A2(d[2]), .ZN(n23) );
  XOR2_X1 U3 ( .A(n23), .B(a[2]), .Z(n26) );
  INV_X1 U4 ( .A(b[2]), .ZN(n24) );
  NAND2_X1 U5 ( .A1(n24), .A2(d[2]), .ZN(n25) );
  NAND2_X1 U6 ( .A1(n26), .A2(n25), .ZN(n28) );
  XOR2_X1 U7 ( .A(r_27), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n27) );
  XNOR2_X1 U8 ( .A(r[53]), .B(n27), .ZN(n29) );
  OR2_X1 U9 ( .A1(n28), .A2(n29), .ZN(n31) );
  NAND2_X1 U10 ( .A1(n29), .A2(n28), .ZN(n30) );
  NAND2_X1 U11 ( .A1(n31), .A2(n30), .ZN(q) );
endmodule


module NF_CF_1_num0_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;

  INV_X1 U1 ( .A(b[0]), .ZN(n20) );
  INV_X1 U2 ( .A(c[0]), .ZN(n19) );
  NOR2_X1 U3 ( .A1(n19), .A2(a[0]), .ZN(n25) );
  NOR2_X1 U4 ( .A1(n20), .A2(n25), .ZN(n22) );
  NAND2_X1 U5 ( .A1(a[0]), .A2(d[0]), .ZN(n21) );
  NAND2_X1 U6 ( .A1(n22), .A2(n21), .ZN(n24) );
  XOR2_X1 U7 ( .A(r[55]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n23) );
  XNOR2_X1 U8 ( .A(r[54]), .B(n23), .ZN(n27) );
  XNOR2_X1 U9 ( .A(n24), .B(n27), .ZN(n26) );
  NAND2_X1 U10 ( .A1(n25), .A2(d[0]), .ZN(n28) );
  NAND2_X1 U11 ( .A1(n26), .A2(n28), .ZN(n32) );
  INV_X1 U12 ( .A(n27), .ZN(n30) );
  INV_X1 U13 ( .A(n28), .ZN(n29) );
  NAND2_X1 U14 ( .A1(n30), .A2(n29), .ZN(n31) );
  NAND2_X1 U15 ( .A1(n32), .A2(n31), .ZN(q) );
endmodule


module NF_CF_1_num1_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  NAND2_X1 U1 ( .A1(a[0]), .A2(d[1]), .ZN(n22) );
  XNOR2_X1 U2 ( .A(c[0]), .B(n22), .ZN(n16) );
  NAND2_X1 U3 ( .A1(n16), .A2(b[1]), .ZN(n20) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .Z(n18) );
  XNOR2_X1 U5 ( .A(r[55]), .B(r[56]), .ZN(n17) );
  XNOR2_X1 U6 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U7 ( .A(n20), .B(n19), .ZN(n25) );
  NAND2_X1 U8 ( .A1(a[0]), .A2(b[1]), .ZN(n21) );
  XOR2_X1 U9 ( .A(n22), .B(n21), .Z(n23) );
  NAND2_X1 U10 ( .A1(n23), .A2(c[0]), .ZN(n24) );
  XNOR2_X1 U11 ( .A(n25), .B(n24), .ZN(q) );
endmodule


module NF_CF_1_num2_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  NAND2_X1 U1 ( .A1(a[0]), .A2(d[2]), .ZN(n22) );
  XNOR2_X1 U2 ( .A(c[0]), .B(n22), .ZN(n16) );
  NAND2_X1 U3 ( .A1(n16), .A2(b[2]), .ZN(n20) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n18) );
  XNOR2_X1 U5 ( .A(r[56]), .B(r[57]), .ZN(n17) );
  XNOR2_X1 U6 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U7 ( .A(n20), .B(n19), .ZN(n25) );
  NAND2_X1 U8 ( .A1(a[0]), .A2(b[2]), .ZN(n21) );
  XOR2_X1 U9 ( .A(n22), .B(n21), .Z(n23) );
  NAND2_X1 U10 ( .A1(n23), .A2(c[0]), .ZN(n24) );
  XNOR2_X1 U11 ( .A(n25), .B(n24), .ZN(q) );
endmodule


module NF_CF_1_num9_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  NAND2_X1 U1 ( .A1(a[0]), .A2(b[1]), .ZN(n21) );
  XNOR2_X1 U2 ( .A(d[0]), .B(n21), .ZN(n15) );
  NAND2_X1 U3 ( .A1(n15), .A2(c[1]), .ZN(n19) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n17) );
  XNOR2_X1 U5 ( .A(r[57]), .B(r[58]), .ZN(n16) );
  XNOR2_X1 U6 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U7 ( .A(n19), .B(n18), .ZN(n24) );
  NAND2_X1 U8 ( .A1(a[0]), .A2(c[1]), .ZN(n20) );
  XOR2_X1 U9 ( .A(n21), .B(n20), .Z(n22) );
  NAND2_X1 U10 ( .A1(n22), .A2(d[0]), .ZN(n23) );
  XNOR2_X1 U11 ( .A(n24), .B(n23), .ZN(q) );
endmodule


module NF_CF_1_num10_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[58]), .B(r[59]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[1]), .A2(b[2]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[1]), .A2(b[2]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[0]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num11_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[59]), .B(r[60]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[2]), .A2(b[0]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[2]), .A2(b[0]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[0]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num12_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[60]), .B(r[61]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[1]), .A2(b[0]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[1]), .A2(b[0]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[0]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num13_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[61]), .B(r[62]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[2]), .A2(b[1]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[2]), .A2(b[1]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[0]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num14_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  NOR2_X1 U1 ( .A1(d[0]), .A2(c[2]), .ZN(n18) );
  INV_X1 U2 ( .A(a[0]), .ZN(n12) );
  NAND2_X1 U3 ( .A1(d[0]), .A2(c[2]), .ZN(n13) );
  NAND2_X1 U4 ( .A1(n12), .A2(n13), .ZN(n16) );
  NAND2_X1 U5 ( .A1(n13), .A2(b[2]), .ZN(n14) );
  NAND2_X1 U6 ( .A1(n14), .A2(a[0]), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n16), .A2(n15), .ZN(n17) );
  NOR2_X1 U8 ( .A1(n18), .A2(n17), .ZN(n21) );
  XOR2_X1 U9 ( .A(r[63]), .B(r[62]), .Z(n19) );
  XNOR2_X1 U10 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n19), .ZN(n20) );
  XNOR2_X1 U11 ( .A(n21), .B(n20), .ZN(q) );
endmodule


module NF_CF_1_num18_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  NAND2_X1 U1 ( .A1(a[1]), .A2(d[2]), .ZN(n22) );
  XNOR2_X1 U2 ( .A(c[1]), .B(n22), .ZN(n16) );
  NAND2_X1 U3 ( .A1(n16), .A2(b[2]), .ZN(n20) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n18) );
  XNOR2_X1 U5 ( .A(r[66]), .B(r[67]), .ZN(n17) );
  XNOR2_X1 U6 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U7 ( .A(n20), .B(n19), .ZN(n25) );
  NAND2_X1 U8 ( .A1(a[1]), .A2(b[2]), .ZN(n21) );
  XOR2_X1 U9 ( .A(n22), .B(n21), .Z(n23) );
  NAND2_X1 U10 ( .A1(n23), .A2(c[1]), .ZN(n24) );
  XNOR2_X1 U11 ( .A(n25), .B(n24), .ZN(q) );
endmodule


module NF_CF_1_num19_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  NAND2_X1 U1 ( .A1(a[1]), .A2(d[0]), .ZN(n22) );
  XNOR2_X1 U2 ( .A(c[1]), .B(n22), .ZN(n16) );
  NAND2_X1 U3 ( .A1(n16), .A2(b[0]), .ZN(n20) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n18) );
  XNOR2_X1 U5 ( .A(r[67]), .B(r[68]), .ZN(n17) );
  XNOR2_X1 U6 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U7 ( .A(n20), .B(n19), .ZN(n25) );
  NAND2_X1 U8 ( .A1(a[1]), .A2(b[0]), .ZN(n21) );
  XOR2_X1 U9 ( .A(n22), .B(n21), .Z(n23) );
  NAND2_X1 U10 ( .A1(n23), .A2(c[1]), .ZN(n24) );
  XNOR2_X1 U11 ( .A(n25), .B(n24), .ZN(q) );
endmodule


module NF_CF_1_num20_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n16, n17, n18, n19, n20, n21, n22, n23;

  AND2_X1 U1 ( .A1(d[1]), .A2(b[1]), .ZN(n16) );
  NOR2_X1 U2 ( .A1(c[1]), .A2(n16), .ZN(n17) );
  NOR2_X1 U3 ( .A1(a[1]), .A2(n17), .ZN(n19) );
  NOR2_X1 U4 ( .A1(d[1]), .A2(b[1]), .ZN(n18) );
  NOR2_X1 U5 ( .A1(n19), .A2(n18), .ZN(n23) );
  XOR2_X1 U6 ( .A(r[69]), .B(r[68]), .Z(n21) );
  XNOR2_X1 U7 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n20) );
  XNOR2_X1 U8 ( .A(n21), .B(n20), .ZN(n22) );
  XOR2_X1 U9 ( .A(n23), .B(n22), .Z(q) );
endmodule


module NF_CF_1_num24_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(r[64]), .B(r[63]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(n8), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n14) );
  AND2_X1 U3 ( .A1(d[0]), .A2(b[2]), .ZN(n9) );
  NOR2_X1 U4 ( .A1(c[0]), .A2(n9), .ZN(n11) );
  NOR2_X1 U5 ( .A1(d[0]), .A2(b[2]), .ZN(n10) );
  NOR2_X1 U6 ( .A1(n11), .A2(n10), .ZN(n12) );
  NAND2_X1 U7 ( .A1(a[1]), .A2(n12), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module NF_CF_1_num25_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  NAND2_X1 U1 ( .A1(a[1]), .A2(b[0]), .ZN(n21) );
  XNOR2_X1 U2 ( .A(d[1]), .B(n21), .ZN(n15) );
  NAND2_X1 U3 ( .A1(n15), .A2(c[0]), .ZN(n19) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .Z(n17) );
  XNOR2_X1 U5 ( .A(r[64]), .B(r[65]), .ZN(n16) );
  XNOR2_X1 U6 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U7 ( .A(n19), .B(n18), .ZN(n24) );
  NAND2_X1 U8 ( .A1(a[1]), .A2(c[0]), .ZN(n20) );
  XOR2_X1 U9 ( .A(n21), .B(n20), .Z(n22) );
  NAND2_X1 U10 ( .A1(n22), .A2(d[1]), .ZN(n23) );
  XNOR2_X1 U11 ( .A(n24), .B(n23), .ZN(q) );
endmodule


module NF_CF_1_num26_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[65]), .B(r[66]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[2]), .A2(b[1]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[0]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[2]), .A2(b[1]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num27_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[69]), .B(r[70]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[2]), .A2(b[0]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[2]), .A2(b[0]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num28_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[70]), .B(r[71]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[0]), .A2(b[1]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[0]), .A2(b[1]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[1]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num29_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  NOR2_X1 U1 ( .A1(d[1]), .A2(c[2]), .ZN(n18) );
  INV_X1 U2 ( .A(a[1]), .ZN(n12) );
  NAND2_X1 U3 ( .A1(d[1]), .A2(c[2]), .ZN(n13) );
  NAND2_X1 U4 ( .A1(n12), .A2(n13), .ZN(n16) );
  NAND2_X1 U5 ( .A1(n13), .A2(b[2]), .ZN(n14) );
  NAND2_X1 U6 ( .A1(n14), .A2(a[1]), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n16), .A2(n15), .ZN(n17) );
  NOR2_X1 U8 ( .A1(n18), .A2(n17), .ZN(n21) );
  XOR2_X1 U9 ( .A(r[72]), .B(r[71]), .Z(n19) );
  XNOR2_X1 U10 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n19), .ZN(n20) );
  XNOR2_X1 U11 ( .A(n21), .B(n20), .ZN(q) );
endmodule


module NF_CF_1_num36_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  NAND2_X1 U1 ( .A1(a[2]), .A2(d[1]), .ZN(n22) );
  XNOR2_X1 U2 ( .A(c[2]), .B(n22), .ZN(n16) );
  NAND2_X1 U3 ( .A1(n16), .A2(b[1]), .ZN(n20) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n18) );
  XNOR2_X1 U5 ( .A(r[78]), .B(r[79]), .ZN(n17) );
  XNOR2_X1 U6 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U7 ( .A(n20), .B(n19), .ZN(n25) );
  NAND2_X1 U8 ( .A1(a[2]), .A2(b[1]), .ZN(n21) );
  XOR2_X1 U9 ( .A(n22), .B(n21), .Z(n23) );
  NAND2_X1 U10 ( .A1(n23), .A2(c[2]), .ZN(n24) );
  XNOR2_X1 U11 ( .A(n25), .B(n24), .ZN(q) );
endmodule


module NF_CF_1_num37_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  NAND2_X1 U1 ( .A1(a[2]), .A2(d[0]), .ZN(n22) );
  XNOR2_X1 U2 ( .A(c[2]), .B(n22), .ZN(n16) );
  NAND2_X1 U3 ( .A1(n16), .A2(b[0]), .ZN(n20) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n18) );
  XNOR2_X1 U5 ( .A(r[79]), .B(r[80]), .ZN(n17) );
  XNOR2_X1 U6 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U7 ( .A(n20), .B(n19), .ZN(n25) );
  NAND2_X1 U8 ( .A1(a[2]), .A2(b[0]), .ZN(n21) );
  XOR2_X1 U9 ( .A(n22), .B(n21), .Z(n23) );
  NAND2_X1 U10 ( .A1(n23), .A2(c[2]), .ZN(n24) );
  XNOR2_X1 U11 ( .A(n25), .B(n24), .ZN(q) );
endmodule


module NF_CF_1_num38_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   r_54, n22, n23, n24, n25, n26, n27, n28;
  assign r_54 = r[54];

  AND2_X1 U1 ( .A1(b[2]), .A2(d[2]), .ZN(n22) );
  NOR2_X1 U2 ( .A1(c[2]), .A2(n22), .ZN(n23) );
  NOR2_X1 U3 ( .A1(a[2]), .A2(n23), .ZN(n25) );
  NOR2_X1 U4 ( .A1(b[2]), .A2(d[2]), .ZN(n24) );
  NOR2_X1 U5 ( .A1(n25), .A2(n24), .ZN(n28) );
  XOR2_X1 U6 ( .A(r_54), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n26) );
  XNOR2_X1 U7 ( .A(r[80]), .B(n26), .ZN(n27) );
  XNOR2_X1 U8 ( .A(n28), .B(n27), .ZN(q) );
endmodule


module NF_CF_1_num39_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[75]), .B(r[76]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[1]), .A2(b[0]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[1]), .A2(b[0]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[2]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num40_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[76]), .B(r[77]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[0]), .A2(b[2]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[0]), .A2(b[2]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[2]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num41_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  NAND2_X1 U1 ( .A1(a[2]), .A2(b[1]), .ZN(n21) );
  XNOR2_X1 U2 ( .A(d[2]), .B(n21), .ZN(n15) );
  NAND2_X1 U3 ( .A1(n15), .A2(c[1]), .ZN(n19) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n17) );
  XNOR2_X1 U5 ( .A(r[77]), .B(r[78]), .ZN(n16) );
  XNOR2_X1 U6 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U7 ( .A(n19), .B(n18), .ZN(n24) );
  NAND2_X1 U8 ( .A1(a[2]), .A2(c[1]), .ZN(n20) );
  XOR2_X1 U9 ( .A(n21), .B(n20), .Z(n22) );
  NAND2_X1 U10 ( .A1(n22), .A2(d[2]), .ZN(n23) );
  XNOR2_X1 U11 ( .A(n24), .B(n23), .ZN(q) );
endmodule


module NF_CF_1_num42_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  NOR2_X1 U1 ( .A1(d[2]), .A2(c[0]), .ZN(n18) );
  INV_X1 U2 ( .A(a[2]), .ZN(n12) );
  NAND2_X1 U3 ( .A1(d[2]), .A2(c[0]), .ZN(n13) );
  NAND2_X1 U4 ( .A1(n12), .A2(n13), .ZN(n16) );
  NAND2_X1 U5 ( .A1(n13), .A2(b[0]), .ZN(n14) );
  NAND2_X1 U6 ( .A1(n14), .A2(a[2]), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n16), .A2(n15), .ZN(n17) );
  NOR2_X1 U8 ( .A1(n18), .A2(n17), .ZN(n21) );
  XOR2_X1 U9 ( .A(r[73]), .B(r[72]), .Z(n19) );
  XNOR2_X1 U10 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n19), .ZN(n20) );
  XNOR2_X1 U11 ( .A(n21), .B(n20), .ZN(q) );
endmodule


module NF_CF_1_num43_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[73]), .Z(n15) );
  XNOR2_X1 U2 ( .A(r[74]), .B(TwoSharesFromNeighbouringSbox[1]), .ZN(n14) );
  XNOR2_X1 U3 ( .A(n15), .B(n14), .ZN(n22) );
  NAND2_X1 U4 ( .A1(b[1]), .A2(a[2]), .ZN(n17) );
  NAND2_X1 U5 ( .A1(n17), .A2(d[0]), .ZN(n20) );
  NAND2_X1 U6 ( .A1(a[2]), .A2(d[0]), .ZN(n16) );
  XOR2_X1 U7 ( .A(n17), .B(n16), .Z(n18) );
  NAND2_X1 U8 ( .A1(n18), .A2(c[0]), .ZN(n19) );
  XNOR2_X1 U9 ( .A(n20), .B(n19), .ZN(n21) );
  XNOR2_X1 U10 ( .A(n22), .B(n21), .ZN(q) );
endmodule


module NF_CF_1_num44_Co_f3 ( a, b, c, d, r, TwoSharesFromNeighbouringSbox, q
 );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[74]), .B(r[75]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n16) );
  AND2_X1 U4 ( .A1(d[1]), .A2(b[2]), .ZN(n11) );
  NOR2_X1 U5 ( .A1(c[0]), .A2(n11), .ZN(n13) );
  NOR2_X1 U6 ( .A1(d[1]), .A2(b[2]), .ZN(n12) );
  NOR2_X1 U7 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U8 ( .A1(a[2]), .A2(n14), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module XOR_n_WIDTH9_0 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH15_0 ( x, q );
  input [14:0] x;
  output q;
  wire   n14, n15, n16, n17, n18, n19, n20;

  XNOR2_X1 U1 ( .A(x[13]), .B(x[11]), .ZN(n20) );
  XOR2_X1 U2 ( .A(x[2]), .B(x[10]), .Z(n15) );
  XNOR2_X1 U3 ( .A(x[12]), .B(x[14]), .ZN(n14) );
  XNOR2_X1 U4 ( .A(n15), .B(n14), .ZN(n16) );
  XOR2_X1 U5 ( .A(n16), .B(x[1]), .Z(n18) );
  XNOR2_X1 U6 ( .A(x[9]), .B(x[0]), .ZN(n17) );
  XNOR2_X1 U7 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U8 ( .A(n20), .B(n19), .ZN(q) );
endmodule


module XOR_n_WIDTH15_2 ( x, q );
  input [14:0] x;
  output q;
  wire   n13, n14, n15, n16, n17, n18, n19, n20;
  assign n13 = x[5];

  XNOR2_X1 U1 ( .A(x[3]), .B(n13), .ZN(n20) );
  XOR2_X1 U2 ( .A(x[9]), .B(x[4]), .Z(n15) );
  XNOR2_X1 U3 ( .A(x[11]), .B(x[13]), .ZN(n14) );
  XNOR2_X1 U4 ( .A(n15), .B(n14), .ZN(n16) );
  XOR2_X1 U5 ( .A(n16), .B(x[12]), .Z(n18) );
  XNOR2_X1 U6 ( .A(x[10]), .B(x[14]), .ZN(n17) );
  XNOR2_X1 U7 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U8 ( .A(n20), .B(n19), .ZN(q) );
endmodule


module XOR_n_WIDTH15_1 ( x, q );
  input [14:0] x;
  output q;
  wire   n13, n14, n15, n16, n17, n18, n19, n20;
  assign n13 = x[6];

  XNOR2_X1 U1 ( .A(x[9]), .B(x[7]), .ZN(n20) );
  XOR2_X1 U2 ( .A(x[12]), .B(x[14]), .Z(n15) );
  XNOR2_X1 U3 ( .A(x[8]), .B(x[10]), .ZN(n14) );
  XNOR2_X1 U4 ( .A(n15), .B(n14), .ZN(n16) );
  XOR2_X1 U5 ( .A(n16), .B(n13), .Z(n18) );
  XNOR2_X1 U6 ( .A(x[11]), .B(x[13]), .ZN(n17) );
  XNOR2_X1 U7 ( .A(n18), .B(n17), .ZN(n19) );
  XNOR2_X1 U8 ( .A(n20), .B(n19), .ZN(q) );
endmodule


module XOR_n_WIDTH9_1 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH9_2 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH9_3 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH9_4 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH9_5 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH9_6 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH9_7 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module XOR_n_WIDTH9_8 ( x, q );
  input [8:0] x;
  output q;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XNOR2_X1 U1 ( .A(x[8]), .B(x[6]), .ZN(n14) );
  XOR2_X1 U2 ( .A(x[3]), .B(x[5]), .Z(n9) );
  XNOR2_X1 U3 ( .A(x[7]), .B(x[1]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U5 ( .A(n10), .B(x[0]), .Z(n12) );
  XNOR2_X1 U6 ( .A(x[2]), .B(x[4]), .ZN(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(n13) );
  XNOR2_X1 U8 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module PRINCE_Sbox_inv ( clk, in1, in2, in3, r, TwoSharesFromNeighbouringSbox, 
        out1, out2, out3 );
(* SILVER="[3:0]_0" *)  input [3:0] in1;
(* SILVER="[3:0]_1" *)  input [3:0] in2;
(* SILVER="[3:0]_2" *)  input [3:0] in3;
(* SILVER="refresh" *)  input [7:0] TwoSharesFromNeighbouringSbox;
(* SILVER="refresh" *)  input [107:0] r;
(* SILVER="[3:0]_0" *)  output [3:0] out1;
(* SILVER="[3:0]_1" *)  output [3:0] out2;
(* SILVER="[3:0]_2" *)  output [3:0] out3;
(* SILVER="clock" *)  input clk;
  wire   \CF_Out[2][26] , \CF_Out[2][25] , \CF_Out[2][24] , \CF_Out[2][23] ,
         \CF_Out[2][22] , \CF_Out[2][21] , \CF_Out[2][20] , \CF_Out[2][19] ,
         \CF_Out[2][18] , \CF_Out[2][17] , \CF_Out[2][16] , \CF_Out[2][15] ,
         \CF_Out[2][14] , \CF_Out[2][13] , \CF_Out[2][12] , \CF_Out[2][11] ,
         \CF_Out[2][10] , \CF_Out[2][9] , \CF_Out[2][8] , \CF_Out[2][7] ,
         \CF_Out[2][6] , \CF_Out[2][5] , \CF_Out[2][4] , \CF_Out[2][3] ,
         \CF_Out[2][2] , \CF_Out[2][1] , \CF_Out[2][0] , \CF_Out[1][26] ,
         \CF_Out[1][25] , \CF_Out[1][24] , \CF_Out[1][23] , \CF_Out[1][22] ,
         \CF_Out[1][21] , \CF_Out[1][20] , \CF_Out[1][19] , \CF_Out[1][18] ,
         \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] , \CF_Out[1][14] ,
         \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][11] , \CF_Out[1][10] ,
         \CF_Out[1][9] , \CF_Out[1][8] , \CF_Out[1][7] , \CF_Out[1][6] ,
         \CF_Out[1][5] , \CF_Out[1][4] , \CF_Out[1][3] , \CF_Out[1][2] ,
         \CF_Out[1][1] , \CF_Out[1][0] , \CF_Out[0][26] , \CF_Out[0][25] ,
         \CF_Out[0][24] , \CF_Out[0][23] , \CF_Out[0][22] , \CF_Out[0][21] ,
         \CF_Out[0][20] , \CF_Out[0][19] , \CF_Out[0][18] , \CF_Out[0][17] ,
         \CF_Out[0][16] , \CF_Out[0][15] , \CF_Out[0][14] , \CF_Out[0][13] ,
         \CF_Out[0][12] , \CF_Out[0][11] , \CF_Out[0][10] , \CF_Out[0][9] ,
         \CF_Out[0][8] , \CF_Out[0][7] , \CF_Out[0][6] , \CF_Out[0][5] ,
         \CF_Out[0][4] , \CF_Out[0][3] , \CF_Out[0][2] , \CF_Out[0][1] ,
         \CF_Out[0][0] , \CF_Reg[2][26] , \CF_Reg[2][25] , \CF_Reg[2][24] ,
         \CF_Reg[2][23] , \CF_Reg[2][22] , \CF_Reg[2][21] , \CF_Reg[2][20] ,
         \CF_Reg[2][19] , \CF_Reg[2][18] , \CF_Reg[2][17] , \CF_Reg[2][16] ,
         \CF_Reg[2][15] , \CF_Reg[2][14] , \CF_Reg[2][13] , \CF_Reg[2][12] ,
         \CF_Reg[2][11] , \CF_Reg[2][10] , \CF_Reg[2][9] , \CF_Reg[2][8] ,
         \CF_Reg[2][7] , \CF_Reg[2][6] , \CF_Reg[2][5] , \CF_Reg[2][4] ,
         \CF_Reg[2][3] , \CF_Reg[2][2] , \CF_Reg[2][1] , \CF_Reg[2][0] ,
         \CF_Reg[1][26] , \CF_Reg[1][25] , \CF_Reg[1][24] , \CF_Reg[1][23] ,
         \CF_Reg[1][22] , \CF_Reg[1][21] , \CF_Reg[1][20] , \CF_Reg[1][19] ,
         \CF_Reg[1][18] , \CF_Reg[1][17] , \CF_Reg[1][16] , \CF_Reg[1][15] ,
         \CF_Reg[1][14] , \CF_Reg[1][13] , \CF_Reg[1][12] , \CF_Reg[1][11] ,
         \CF_Reg[1][10] , \CF_Reg[1][9] , \CF_Reg[1][8] , \CF_Reg[1][7] ,
         \CF_Reg[1][6] , \CF_Reg[1][5] , \CF_Reg[1][4] , \CF_Reg[1][3] ,
         \CF_Reg[1][2] , \CF_Reg[1][1] , \CF_Reg[1][0] , \CF_Reg[0][26] ,
         \CF_Reg[0][25] , \CF_Reg[0][24] , \CF_Reg[0][23] , \CF_Reg[0][22] ,
         \CF_Reg[0][21] , \CF_Reg[0][20] , \CF_Reg[0][19] , \CF_Reg[0][18] ,
         \CF_Reg[0][17] , \CF_Reg[0][16] , \CF_Reg[0][15] , \CF_Reg[0][14] ,
         \CF_Reg[0][13] , \CF_Reg[0][12] , \CF_Reg[0][11] , \CF_Reg[0][10] ,
         \CF_Reg[0][9] , \CF_Reg[0][8] , \CF_Reg[0][7] , \CF_Reg[0][6] ,
         \CF_Reg[0][5] , \CF_Reg[0][4] , \CF_Reg[0][3] , \CF_Reg[0][2] ,
         \CF_Reg[0][1] , \CF_Reg[0][0] ;
  wire   [44:0] CF_Out_MSB;
  wire   [44:0] CF_Reg_MSB;

  NF_CF_1_num0_Co_f0 \Coordinate_function_num[0].Component_function_num[0].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[1:0]}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[0][0] ) );
  NF_CF_1_num1_Co_f0 \Coordinate_function_num[0].Component_function_num[1].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[2:1], 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[0][1] ) );
  NF_CF_1_num2_Co_f0 \Coordinate_function_num[0].Component_function_num[2].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[3:2], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .q(\CF_Out[0][2] ) );
  NF_CF_1_num3_Co_f0 \Coordinate_function_num[0].Component_function_num[3].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[4:3], 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), 
        .q(\CF_Out[0][3] ) );
  NF_CF_1_num4_Co_f0 \Coordinate_function_num[0].Component_function_num[4].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[0][4] ) );
  NF_CF_1_num5_Co_f0 \Coordinate_function_num[0].Component_function_num[5].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[0][5] ) );
  NF_CF_1_num6_Co_f0 \Coordinate_function_num[0].Component_function_num[6].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[0][6] ) );
  NF_CF_1_num7_Co_f0 \Coordinate_function_num[0].Component_function_num[7].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[8:7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][7] ) );
  NF_CF_1_num8_Co_f0 \Coordinate_function_num[0].Component_function_num[8].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[9:8], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .q(\CF_Out[0][8] ) );
  NF_CF_1_num9_Co_f0 \Coordinate_function_num[0].Component_function_num[9].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[10:9], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[0][9] ) );
  NF_CF_1_num10_Co_f0 \Coordinate_function_num[0].Component_function_num[10].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[11:10], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[0][10] ) );
  NF_CF_1_num11_Co_f0 \Coordinate_function_num[0].Component_function_num[11].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[12:11], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[0][11] ) );
  NF_CF_1_num12_Co_f0 \Coordinate_function_num[0].Component_function_num[12].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[13:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[0][12] ) );
  NF_CF_1_num13_Co_f0 \Coordinate_function_num[0].Component_function_num[13].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[14:13], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[0][13] ) );
  NF_CF_1_num14_Co_f0 \Coordinate_function_num[0].Component_function_num[14].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[15:14], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[0][14] ) );
  NF_CF_1_num15_Co_f0 \Coordinate_function_num[0].Component_function_num[15].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[16:15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[0][15] ) );
  NF_CF_1_num16_Co_f0 \Coordinate_function_num[0].Component_function_num[16].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[17:16], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][16] ) );
  NF_CF_1_num17_Co_f0 \Coordinate_function_num[0].Component_function_num[17].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[18:17], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][17] ) );
  NF_CF_1_num18_Co_f0 \Coordinate_function_num[0].Component_function_num[18].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[19:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[0][18] ) );
  NF_CF_1_num19_Co_f0 \Coordinate_function_num[0].Component_function_num[19].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[20:19], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[0][19] ) );
  NF_CF_1_num20_Co_f0 \Coordinate_function_num[0].Component_function_num[20].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[21:20], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[0][20] ) );
  NF_CF_1_num21_Co_f0 \Coordinate_function_num[0].Component_function_num[21].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[22:21], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[0][21] )
         );
  NF_CF_1_num22_Co_f0 \Coordinate_function_num[0].Component_function_num[22].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[23:22], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[0][22] ) );
  NF_CF_1_num23_Co_f0 \Coordinate_function_num[0].Component_function_num[23].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[24:23], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][23] ) );
  NF_CF_1_num24_Co_f0 \Coordinate_function_num[0].Component_function_num[24].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[25:24], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][24] ) );
  NF_CF_1_num25_Co_f0 \Coordinate_function_num[0].Component_function_num[25].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[26:25], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][25] ) );
  NF_CF_1_num26_Co_f0 \Coordinate_function_num[0].Component_function_num[26].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[26], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[0]}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][26] ) );
  NF_CF_1_num0_Co_f1 \Coordinate_function_num[1].Component_function_num[0].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[82:81], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[1][0] ) );
  NF_CF_1_num1_Co_f1 \Coordinate_function_num[1].Component_function_num[1].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[83:82], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[1][1] ) );
  NF_CF_1_num2_Co_f1 \Coordinate_function_num[1].Component_function_num[2].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[84:83], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[1][2] ) );
  NF_CF_1_num3_Co_f1 \Coordinate_function_num[1].Component_function_num[3].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[85:84], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[1][3] )
         );
  NF_CF_1_num4_Co_f1 \Coordinate_function_num[1].Component_function_num[4].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[86:85], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[1][4] ) );
  NF_CF_1_num5_Co_f1 \Coordinate_function_num[1].Component_function_num[5].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[87:86], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[1][5] ) );
  NF_CF_1_num6_Co_f1 \Coordinate_function_num[1].Component_function_num[6].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[88:87], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[1][6] ) );
  NF_CF_1_num7_Co_f1 \Coordinate_function_num[1].Component_function_num[7].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[89:88], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][7] ) );
  NF_CF_1_num8_Co_f1 \Coordinate_function_num[1].Component_function_num[8].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[90:89], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][8] ) );
  NF_CF_1_num9_Co_f1 \Coordinate_function_num[1].Component_function_num[9].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[91:90], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[1][9] ) );
  NF_CF_1_num10_Co_f1 \Coordinate_function_num[1].Component_function_num[10].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[92:91], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[1][10] ) );
  NF_CF_1_num11_Co_f1 \Coordinate_function_num[1].Component_function_num[11].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[93:92], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[1][11] ) );
  NF_CF_1_num12_Co_f1 \Coordinate_function_num[1].Component_function_num[12].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[94:93], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[1][12] )
         );
  NF_CF_1_num13_Co_f1 \Coordinate_function_num[1].Component_function_num[13].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[95:94], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[1][13] ) );
  NF_CF_1_num14_Co_f1 \Coordinate_function_num[1].Component_function_num[14].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[96:95], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[1][14] ) );
  NF_CF_1_num15_Co_f1 \Coordinate_function_num[1].Component_function_num[15].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[97:96], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[1][15] ) );
  NF_CF_1_num16_Co_f1 \Coordinate_function_num[1].Component_function_num[16].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[98:97], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][16] ) );
  NF_CF_1_num17_Co_f1 \Coordinate_function_num[1].Component_function_num[17].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[99:98], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][17] ) );
  NF_CF_1_num18_Co_f1 \Coordinate_function_num[1].Component_function_num[18].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[100:99], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[1][18] ) );
  NF_CF_1_num19_Co_f1 \Coordinate_function_num[1].Component_function_num[19].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[101:100], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[1][19] ) );
  NF_CF_1_num20_Co_f1 \Coordinate_function_num[1].Component_function_num[20].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[102:101], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[1][20] ) );
  NF_CF_1_num21_Co_f1 \Coordinate_function_num[1].Component_function_num[21].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 
        r[103:102], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[1][21] )
         );
  NF_CF_1_num22_Co_f1 \Coordinate_function_num[1].Component_function_num[22].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, r[104:103], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[1][22] ) );
  NF_CF_1_num23_Co_f1 \Coordinate_function_num[1].Component_function_num[23].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, r[105:104], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[1][23] ) );
  NF_CF_1_num24_Co_f1 \Coordinate_function_num[1].Component_function_num[24].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, r[106:105], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[1][24] ) );
  NF_CF_1_num25_Co_f1 \Coordinate_function_num[1].Component_function_num[25].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .r({r[107:106], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][25] ) );
  NF_CF_1_num26_Co_f1 \Coordinate_function_num[1].Component_function_num[26].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({r[107], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[81], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][26] ) );
  NF_CF_1_num0_Co_f2 \Coordinate_function_num[2].Component_function_num[0].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[28:27], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[2][0] ) );
  NF_CF_1_num1_Co_f2 \Coordinate_function_num[2].Component_function_num[1].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[29:28], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[2][1] ) );
  NF_CF_1_num2_Co_f2 \Coordinate_function_num[2].Component_function_num[2].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[30:29], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[2][2] ) );
  NF_CF_1_num3_Co_f2 \Coordinate_function_num[2].Component_function_num[3].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[31:30], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[2][3] )
         );
  NF_CF_1_num4_Co_f2 \Coordinate_function_num[2].Component_function_num[4].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[32:31], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[2][4] ) );
  NF_CF_1_num5_Co_f2 \Coordinate_function_num[2].Component_function_num[5].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[33:32], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[2][5] ) );
  NF_CF_1_num6_Co_f2 \Coordinate_function_num[2].Component_function_num[6].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[34:33], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[2][6] ) );
  NF_CF_1_num7_Co_f2 \Coordinate_function_num[2].Component_function_num[7].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[35:34], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[2][7] ) );
  NF_CF_1_num8_Co_f2 \Coordinate_function_num[2].Component_function_num[8].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[36:35], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[2][8] ) );
  NF_CF_1_num9_Co_f2 \Coordinate_function_num[2].Component_function_num[9].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[37:36], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[2][9] ) );
  NF_CF_1_num10_Co_f2 \Coordinate_function_num[2].Component_function_num[10].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[38:37], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[2][10] ) );
  NF_CF_1_num11_Co_f2 \Coordinate_function_num[2].Component_function_num[11].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[39:38], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[2][11] ) );
  NF_CF_1_num12_Co_f2 \Coordinate_function_num[2].Component_function_num[12].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[40:39], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[2][12] )
         );
  NF_CF_1_num13_Co_f2 \Coordinate_function_num[2].Component_function_num[13].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[41:40], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[2][13] ) );
  NF_CF_1_num14_Co_f2 \Coordinate_function_num[2].Component_function_num[14].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[42:41], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[2][14] ) );
  NF_CF_1_num15_Co_f2 \Coordinate_function_num[2].Component_function_num[15].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[43:42], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[2][15] ) );
  NF_CF_1_num16_Co_f2 \Coordinate_function_num[2].Component_function_num[16].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[44:43], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[2][16] ) );
  NF_CF_1_num17_Co_f2 \Coordinate_function_num[2].Component_function_num[17].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[45:44], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[2][17] ) );
  NF_CF_1_num18_Co_f2 \Coordinate_function_num[2].Component_function_num[18].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[46:45], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(\CF_Out[2][18] ) );
  NF_CF_1_num19_Co_f2 \Coordinate_function_num[2].Component_function_num[19].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[47:46], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[1:0]}), .q(\CF_Out[2][19] ) );
  NF_CF_1_num20_Co_f2 \Coordinate_function_num[2].Component_function_num[20].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[48:47], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .q(\CF_Out[2][20] ) );
  NF_CF_1_num21_Co_f2 \Coordinate_function_num[2].Component_function_num[21].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[49:48], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(\CF_Out[2][21] )
         );
  NF_CF_1_num22_Co_f2 \Coordinate_function_num[2].Component_function_num[22].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[50:49], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[2][22] ) );
  NF_CF_1_num23_Co_f2 \Coordinate_function_num[2].Component_function_num[23].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[51:50], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[2][23] ) );
  NF_CF_1_num24_Co_f2 \Coordinate_function_num[2].Component_function_num[24].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[52:51], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[2][24] ) );
  NF_CF_1_num25_Co_f2 \Coordinate_function_num[2].Component_function_num[25].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[53:52], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7:6], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[2][25] ) );
  NF_CF_1_num26_Co_f2 \Coordinate_function_num[2].Component_function_num[26].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[53], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[27], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[2][26] ) );
  NF_CF_1_num0_Co_f3 \Component_function_num_MSB[0].CF_Inst  ( .a({1'b0, 1'b0, 
        in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, in1[2]}), .d({1'b0, 
        1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[55:54], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[0]}), .q(
        CF_Out_MSB[0]) );
  NF_CF_1_num1_Co_f3 \Component_function_num_MSB[1].CF_Inst  ( .a({1'b0, 1'b0, 
        in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, in1[2]}), .d({1'b0, 
        in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[56:55], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .q(
        CF_Out_MSB[1]) );
  NF_CF_1_num2_Co_f3 \Component_function_num_MSB[2].CF_Inst  ( .a({1'b0, 1'b0, 
        in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, in1[2]}), .d({
        in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[57:56], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .q(CF_Out_MSB[2]) );
  NF_CF_1_num9_Co_f3 \Component_function_num_MSB[9].CF_Inst  ( .a({1'b0, 1'b0, 
        in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 1'b0}), .d({1'b0, 
        1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[58:57], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .q(
        CF_Out_MSB[9]) );
  NF_CF_1_num10_Co_f3 \Component_function_num_MSB[10].CF_Inst  ( .a({1'b0, 
        1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 1'b0}), 
        .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[59:58], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[10]) );
  NF_CF_1_num11_Co_f3 \Component_function_num_MSB[11].CF_Inst  ( .a({1'b0, 
        1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 1'b0}), 
        .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[60:59], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[11]) );
  NF_CF_1_num12_Co_f3 \Component_function_num_MSB[12].CF_Inst  ( .a({1'b0, 
        1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 1'b0}), 
        .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[61:60], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[12]) );
  NF_CF_1_num13_Co_f3 \Component_function_num_MSB[13].CF_Inst  ( .a({1'b0, 
        1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 1'b0}), 
        .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[62:61], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(CF_Out_MSB[13]) );
  NF_CF_1_num14_Co_f3 \Component_function_num_MSB[14].CF_Inst  ( .a({1'b0, 
        1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 1'b0}), 
        .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[63:62], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .q(CF_Out_MSB[14]) );
  NF_CF_1_num18_Co_f3 \Component_function_num_MSB[18].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 1'b0}), 
        .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[67:66], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), 
        .q(CF_Out_MSB[18]) );
  NF_CF_1_num19_Co_f3 \Component_function_num_MSB[19].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 1'b0}), 
        .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[68:67], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[19]) );
  NF_CF_1_num20_Co_f3 \Component_function_num_MSB[20].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 1'b0}), 
        .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[69:68], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[20]) );
  NF_CF_1_num24_Co_f3 \Component_function_num_MSB[24].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, in1[2]}), 
        .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[64:63], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[0]}), 
        .q(CF_Out_MSB[24]) );
  NF_CF_1_num25_Co_f3 \Component_function_num_MSB[25].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, in1[2]}), 
        .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[65:64], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .q(CF_Out_MSB[25]) );
  NF_CF_1_num26_Co_f3 \Component_function_num_MSB[26].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, in1[2]}), 
        .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[66:65], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .q(CF_Out_MSB[26]) );
  NF_CF_1_num27_Co_f3 \Component_function_num_MSB[27].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 1'b0}), 
        .d({in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[70:69], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[27]) );
  NF_CF_1_num28_Co_f3 \Component_function_num_MSB[28].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 1'b0}), 
        .d({1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[71:70], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(CF_Out_MSB[28]) );
  NF_CF_1_num29_Co_f3 \Component_function_num_MSB[29].CF_Inst  ( .a({1'b0, 
        in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 1'b0}), 
        .d({1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[72:71], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .q(CF_Out_MSB[29]) );
  NF_CF_1_num36_Co_f3 \Component_function_num_MSB[36].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 1'b0}), .d({
        1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[79:78], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[36]) );
  NF_CF_1_num37_Co_f3 \Component_function_num_MSB[37].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 1'b0}), .d({
        1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[80:79], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(CF_Out_MSB[37]) );
  NF_CF_1_num38_Co_f3 \Component_function_num_MSB[38].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 1'b0}), .d({
        in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[80], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[54], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .TwoSharesFromNeighbouringSbox({TwoSharesFromNeighbouringSbox[7], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .q(CF_Out_MSB[38]) );
  NF_CF_1_num39_Co_f3 \Component_function_num_MSB[39].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 1'b0}), .d({
        1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[76:75], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), 
        .q(CF_Out_MSB[39]) );
  NF_CF_1_num40_Co_f3 \Component_function_num_MSB[40].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 1'b0}), .d({
        1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[77:76], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .q(CF_Out_MSB[40]) );
  NF_CF_1_num41_Co_f3 \Component_function_num_MSB[41].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 1'b0}), .d({
        in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[78:77], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(CF_Out_MSB[41]) );
  NF_CF_1_num42_Co_f3 \Component_function_num_MSB[42].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, in1[2]}), .d({
        in3[3], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[73:72], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[0]}), 
        .q(CF_Out_MSB[42]) );
  NF_CF_1_num43_Co_f3 \Component_function_num_MSB[43].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, in1[2]}), .d({
        1'b0, 1'b0, in1[3]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[74:73], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), 
        .q(CF_Out_MSB[43]) );
  NF_CF_1_num44_Co_f3 \Component_function_num_MSB[44].CF_Inst  ( .a({in3[0], 
        1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, in1[2]}), .d({
        1'b0, in2[3], 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[75:74], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .q(CF_Out_MSB[44]) );
  XOR_n_WIDTH9_0 \InstXOR[0].Compression0  ( .x({\CF_Reg[0][8] , 
        \CF_Reg[0][7] , \CF_Reg[0][6] , \CF_Reg[0][5] , \CF_Reg[0][4] , 
        \CF_Reg[0][3] , \CF_Reg[0][2] , \CF_Reg[0][1] , \CF_Reg[0][0] }), .q(
        out1[0]) );
  XOR_n_WIDTH9_8 \InstXOR[0].Compression1  ( .x({\CF_Reg[0][17] , 
        \CF_Reg[0][16] , \CF_Reg[0][15] , \CF_Reg[0][14] , \CF_Reg[0][13] , 
        \CF_Reg[0][12] , \CF_Reg[0][11] , \CF_Reg[0][10] , \CF_Reg[0][9] }), 
        .q(out2[0]) );
  XOR_n_WIDTH9_7 \InstXOR[0].Compression2  ( .x({\CF_Reg[0][26] , 
        \CF_Reg[0][25] , \CF_Reg[0][24] , \CF_Reg[0][23] , \CF_Reg[0][22] , 
        \CF_Reg[0][21] , \CF_Reg[0][20] , \CF_Reg[0][19] , \CF_Reg[0][18] }), 
        .q(out3[0]) );
  XOR_n_WIDTH9_6 \InstXOR[1].Compression0  ( .x({\CF_Reg[1][8] , 
        \CF_Reg[1][7] , \CF_Reg[1][6] , \CF_Reg[1][5] , \CF_Reg[1][4] , 
        \CF_Reg[1][3] , \CF_Reg[1][2] , \CF_Reg[1][1] , \CF_Reg[1][0] }), .q(
        out1[1]) );
  XOR_n_WIDTH9_5 \InstXOR[1].Compression1  ( .x({\CF_Reg[1][17] , 
        \CF_Reg[1][16] , \CF_Reg[1][15] , \CF_Reg[1][14] , \CF_Reg[1][13] , 
        \CF_Reg[1][12] , \CF_Reg[1][11] , \CF_Reg[1][10] , \CF_Reg[1][9] }), 
        .q(out2[1]) );
  XOR_n_WIDTH9_4 \InstXOR[1].Compression2  ( .x({\CF_Reg[1][26] , 
        \CF_Reg[1][25] , \CF_Reg[1][24] , \CF_Reg[1][23] , \CF_Reg[1][22] , 
        \CF_Reg[1][21] , \CF_Reg[1][20] , \CF_Reg[1][19] , \CF_Reg[1][18] }), 
        .q(out3[1]) );
  XOR_n_WIDTH9_3 \InstXOR[2].Compression0  ( .x({\CF_Reg[2][8] , 
        \CF_Reg[2][7] , \CF_Reg[2][6] , \CF_Reg[2][5] , \CF_Reg[2][4] , 
        \CF_Reg[2][3] , \CF_Reg[2][2] , \CF_Reg[2][1] , \CF_Reg[2][0] }), .q(
        out1[2]) );
  XOR_n_WIDTH9_2 \InstXOR[2].Compression1  ( .x({\CF_Reg[2][17] , 
        \CF_Reg[2][16] , \CF_Reg[2][15] , \CF_Reg[2][14] , \CF_Reg[2][13] , 
        \CF_Reg[2][12] , \CF_Reg[2][11] , \CF_Reg[2][10] , \CF_Reg[2][9] }), 
        .q(out2[2]) );
  XOR_n_WIDTH9_1 \InstXOR[2].Compression2  ( .x({\CF_Reg[2][26] , 
        \CF_Reg[2][25] , \CF_Reg[2][24] , \CF_Reg[2][23] , \CF_Reg[2][22] , 
        \CF_Reg[2][21] , \CF_Reg[2][20] , \CF_Reg[2][19] , \CF_Reg[2][18] }), 
        .q(out3[2]) );
  XOR_n_WIDTH15_0 MSB_Compression0 ( .x({CF_Reg_MSB[14:9], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, CF_Reg_MSB[2:0]}), .q(out1[3]) );
  XOR_n_WIDTH15_2 MSB_Compression1 ( .x({CF_Reg_MSB[29:24], 1'b0, 1'b0, 1'b0, 
        CF_Reg_MSB[20:18], 1'b0, 1'b0, 1'b0}), .q(out2[3]) );
  XOR_n_WIDTH15_1 MSB_Compression2 ( .x({CF_Reg_MSB[44:36], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .q(out3[3]) );
  DFF_X1 \CF_Reg_reg[2][26]  ( .D(\CF_Out[2][26] ), .CK(clk), .Q(
        \CF_Reg[2][26] ) );
  DFF_X1 \CF_Reg_reg[2][25]  ( .D(\CF_Out[2][25] ), .CK(clk), .Q(
        \CF_Reg[2][25] ) );
  DFF_X1 \CF_Reg_reg[2][24]  ( .D(\CF_Out[2][24] ), .CK(clk), .Q(
        \CF_Reg[2][24] ) );
  DFF_X1 \CF_Reg_reg[2][23]  ( .D(\CF_Out[2][23] ), .CK(clk), .Q(
        \CF_Reg[2][23] ) );
  DFF_X1 \CF_Reg_reg[2][22]  ( .D(\CF_Out[2][22] ), .CK(clk), .Q(
        \CF_Reg[2][22] ) );
  DFF_X1 \CF_Reg_reg[2][21]  ( .D(\CF_Out[2][21] ), .CK(clk), .Q(
        \CF_Reg[2][21] ) );
  DFF_X1 \CF_Reg_reg[2][20]  ( .D(\CF_Out[2][20] ), .CK(clk), .Q(
        \CF_Reg[2][20] ) );
  DFF_X1 \CF_Reg_reg[2][19]  ( .D(\CF_Out[2][19] ), .CK(clk), .Q(
        \CF_Reg[2][19] ) );
  DFF_X1 \CF_Reg_reg[2][18]  ( .D(\CF_Out[2][18] ), .CK(clk), .Q(
        \CF_Reg[2][18] ) );
  DFF_X1 \CF_Reg_reg[2][17]  ( .D(\CF_Out[2][17] ), .CK(clk), .Q(
        \CF_Reg[2][17] ) );
  DFF_X1 \CF_Reg_reg[2][16]  ( .D(\CF_Out[2][16] ), .CK(clk), .Q(
        \CF_Reg[2][16] ) );
  DFF_X1 \CF_Reg_reg[2][15]  ( .D(\CF_Out[2][15] ), .CK(clk), .Q(
        \CF_Reg[2][15] ) );
  DFF_X1 \CF_Reg_reg[2][14]  ( .D(\CF_Out[2][14] ), .CK(clk), .Q(
        \CF_Reg[2][14] ) );
  DFF_X1 \CF_Reg_reg[2][13]  ( .D(\CF_Out[2][13] ), .CK(clk), .Q(
        \CF_Reg[2][13] ) );
  DFF_X1 \CF_Reg_reg[2][12]  ( .D(\CF_Out[2][12] ), .CK(clk), .Q(
        \CF_Reg[2][12] ) );
  DFF_X1 \CF_Reg_reg[2][11]  ( .D(\CF_Out[2][11] ), .CK(clk), .Q(
        \CF_Reg[2][11] ) );
  DFF_X1 \CF_Reg_reg[2][10]  ( .D(\CF_Out[2][10] ), .CK(clk), .Q(
        \CF_Reg[2][10] ) );
  DFF_X1 \CF_Reg_reg[2][9]  ( .D(\CF_Out[2][9] ), .CK(clk), .Q(\CF_Reg[2][9] )
         );
  DFF_X1 \CF_Reg_reg[2][8]  ( .D(\CF_Out[2][8] ), .CK(clk), .Q(\CF_Reg[2][8] )
         );
  DFF_X1 \CF_Reg_reg[2][7]  ( .D(\CF_Out[2][7] ), .CK(clk), .Q(\CF_Reg[2][7] )
         );
  DFF_X1 \CF_Reg_reg[2][6]  ( .D(\CF_Out[2][6] ), .CK(clk), .Q(\CF_Reg[2][6] )
         );
  DFF_X1 \CF_Reg_reg[2][5]  ( .D(\CF_Out[2][5] ), .CK(clk), .Q(\CF_Reg[2][5] )
         );
  DFF_X1 \CF_Reg_reg[2][4]  ( .D(\CF_Out[2][4] ), .CK(clk), .Q(\CF_Reg[2][4] )
         );
  DFF_X1 \CF_Reg_reg[2][3]  ( .D(\CF_Out[2][3] ), .CK(clk), .Q(\CF_Reg[2][3] )
         );
  DFF_X1 \CF_Reg_reg[2][2]  ( .D(\CF_Out[2][2] ), .CK(clk), .Q(\CF_Reg[2][2] )
         );
  DFF_X1 \CF_Reg_reg[2][1]  ( .D(\CF_Out[2][1] ), .CK(clk), .Q(\CF_Reg[2][1] )
         );
  DFF_X1 \CF_Reg_reg[2][0]  ( .D(\CF_Out[2][0] ), .CK(clk), .Q(\CF_Reg[2][0] )
         );
  DFF_X1 \CF_Reg_reg[1][26]  ( .D(\CF_Out[1][26] ), .CK(clk), .Q(
        \CF_Reg[1][26] ) );
  DFF_X1 \CF_Reg_reg[1][25]  ( .D(\CF_Out[1][25] ), .CK(clk), .Q(
        \CF_Reg[1][25] ) );
  DFF_X1 \CF_Reg_reg[1][24]  ( .D(\CF_Out[1][24] ), .CK(clk), .Q(
        \CF_Reg[1][24] ) );
  DFF_X1 \CF_Reg_reg[1][23]  ( .D(\CF_Out[1][23] ), .CK(clk), .Q(
        \CF_Reg[1][23] ) );
  DFF_X1 \CF_Reg_reg[1][22]  ( .D(\CF_Out[1][22] ), .CK(clk), .Q(
        \CF_Reg[1][22] ) );
  DFF_X1 \CF_Reg_reg[1][21]  ( .D(\CF_Out[1][21] ), .CK(clk), .Q(
        \CF_Reg[1][21] ) );
  DFF_X1 \CF_Reg_reg[1][20]  ( .D(\CF_Out[1][20] ), .CK(clk), .Q(
        \CF_Reg[1][20] ) );
  DFF_X1 \CF_Reg_reg[1][19]  ( .D(\CF_Out[1][19] ), .CK(clk), .Q(
        \CF_Reg[1][19] ) );
  DFF_X1 \CF_Reg_reg[1][18]  ( .D(\CF_Out[1][18] ), .CK(clk), .Q(
        \CF_Reg[1][18] ) );
  DFF_X1 \CF_Reg_reg[1][17]  ( .D(\CF_Out[1][17] ), .CK(clk), .Q(
        \CF_Reg[1][17] ) );
  DFF_X1 \CF_Reg_reg[1][16]  ( .D(\CF_Out[1][16] ), .CK(clk), .Q(
        \CF_Reg[1][16] ) );
  DFF_X1 \CF_Reg_reg[1][15]  ( .D(\CF_Out[1][15] ), .CK(clk), .Q(
        \CF_Reg[1][15] ) );
  DFF_X1 \CF_Reg_reg[1][14]  ( .D(\CF_Out[1][14] ), .CK(clk), .Q(
        \CF_Reg[1][14] ) );
  DFF_X1 \CF_Reg_reg[1][13]  ( .D(\CF_Out[1][13] ), .CK(clk), .Q(
        \CF_Reg[1][13] ) );
  DFF_X1 \CF_Reg_reg[1][12]  ( .D(\CF_Out[1][12] ), .CK(clk), .Q(
        \CF_Reg[1][12] ) );
  DFF_X1 \CF_Reg_reg[1][11]  ( .D(\CF_Out[1][11] ), .CK(clk), .Q(
        \CF_Reg[1][11] ) );
  DFF_X1 \CF_Reg_reg[1][10]  ( .D(\CF_Out[1][10] ), .CK(clk), .Q(
        \CF_Reg[1][10] ) );
  DFF_X1 \CF_Reg_reg[1][9]  ( .D(\CF_Out[1][9] ), .CK(clk), .Q(\CF_Reg[1][9] )
         );
  DFF_X1 \CF_Reg_reg[1][8]  ( .D(\CF_Out[1][8] ), .CK(clk), .Q(\CF_Reg[1][8] )
         );
  DFF_X1 \CF_Reg_reg[1][7]  ( .D(\CF_Out[1][7] ), .CK(clk), .Q(\CF_Reg[1][7] )
         );
  DFF_X1 \CF_Reg_reg[1][6]  ( .D(\CF_Out[1][6] ), .CK(clk), .Q(\CF_Reg[1][6] )
         );
  DFF_X1 \CF_Reg_reg[1][5]  ( .D(\CF_Out[1][5] ), .CK(clk), .Q(\CF_Reg[1][5] )
         );
  DFF_X1 \CF_Reg_reg[1][4]  ( .D(\CF_Out[1][4] ), .CK(clk), .Q(\CF_Reg[1][4] )
         );
  DFF_X1 \CF_Reg_reg[1][3]  ( .D(\CF_Out[1][3] ), .CK(clk), .Q(\CF_Reg[1][3] )
         );
  DFF_X1 \CF_Reg_reg[1][2]  ( .D(\CF_Out[1][2] ), .CK(clk), .Q(\CF_Reg[1][2] )
         );
  DFF_X1 \CF_Reg_reg[1][1]  ( .D(\CF_Out[1][1] ), .CK(clk), .Q(\CF_Reg[1][1] )
         );
  DFF_X1 \CF_Reg_reg[1][0]  ( .D(\CF_Out[1][0] ), .CK(clk), .Q(\CF_Reg[1][0] )
         );
  DFF_X1 \CF_Reg_reg[0][26]  ( .D(\CF_Out[0][26] ), .CK(clk), .Q(
        \CF_Reg[0][26] ) );
  DFF_X1 \CF_Reg_reg[0][25]  ( .D(\CF_Out[0][25] ), .CK(clk), .Q(
        \CF_Reg[0][25] ) );
  DFF_X1 \CF_Reg_reg[0][24]  ( .D(\CF_Out[0][24] ), .CK(clk), .Q(
        \CF_Reg[0][24] ) );
  DFF_X1 \CF_Reg_reg[0][23]  ( .D(\CF_Out[0][23] ), .CK(clk), .Q(
        \CF_Reg[0][23] ) );
  DFF_X1 \CF_Reg_reg[0][22]  ( .D(\CF_Out[0][22] ), .CK(clk), .Q(
        \CF_Reg[0][22] ) );
  DFF_X1 \CF_Reg_reg[0][21]  ( .D(\CF_Out[0][21] ), .CK(clk), .Q(
        \CF_Reg[0][21] ) );
  DFF_X1 \CF_Reg_reg[0][20]  ( .D(\CF_Out[0][20] ), .CK(clk), .Q(
        \CF_Reg[0][20] ) );
  DFF_X1 \CF_Reg_reg[0][19]  ( .D(\CF_Out[0][19] ), .CK(clk), .Q(
        \CF_Reg[0][19] ) );
  DFF_X1 \CF_Reg_reg[0][18]  ( .D(\CF_Out[0][18] ), .CK(clk), .Q(
        \CF_Reg[0][18] ) );
  DFF_X1 \CF_Reg_reg[0][17]  ( .D(\CF_Out[0][17] ), .CK(clk), .Q(
        \CF_Reg[0][17] ) );
  DFF_X1 \CF_Reg_reg[0][16]  ( .D(\CF_Out[0][16] ), .CK(clk), .Q(
        \CF_Reg[0][16] ) );
  DFF_X1 \CF_Reg_reg[0][15]  ( .D(\CF_Out[0][15] ), .CK(clk), .Q(
        \CF_Reg[0][15] ) );
  DFF_X1 \CF_Reg_reg[0][14]  ( .D(\CF_Out[0][14] ), .CK(clk), .Q(
        \CF_Reg[0][14] ) );
  DFF_X1 \CF_Reg_reg[0][13]  ( .D(\CF_Out[0][13] ), .CK(clk), .Q(
        \CF_Reg[0][13] ) );
  DFF_X1 \CF_Reg_reg[0][12]  ( .D(\CF_Out[0][12] ), .CK(clk), .Q(
        \CF_Reg[0][12] ) );
  DFF_X1 \CF_Reg_reg[0][11]  ( .D(\CF_Out[0][11] ), .CK(clk), .Q(
        \CF_Reg[0][11] ) );
  DFF_X1 \CF_Reg_reg[0][10]  ( .D(\CF_Out[0][10] ), .CK(clk), .Q(
        \CF_Reg[0][10] ) );
  DFF_X1 \CF_Reg_reg[0][9]  ( .D(\CF_Out[0][9] ), .CK(clk), .Q(\CF_Reg[0][9] )
         );
  DFF_X1 \CF_Reg_reg[0][8]  ( .D(\CF_Out[0][8] ), .CK(clk), .Q(\CF_Reg[0][8] )
         );
  DFF_X1 \CF_Reg_reg[0][7]  ( .D(\CF_Out[0][7] ), .CK(clk), .Q(\CF_Reg[0][7] )
         );
  DFF_X1 \CF_Reg_reg[0][6]  ( .D(\CF_Out[0][6] ), .CK(clk), .Q(\CF_Reg[0][6] )
         );
  DFF_X1 \CF_Reg_reg[0][5]  ( .D(\CF_Out[0][5] ), .CK(clk), .Q(\CF_Reg[0][5] )
         );
  DFF_X1 \CF_Reg_reg[0][4]  ( .D(\CF_Out[0][4] ), .CK(clk), .Q(\CF_Reg[0][4] )
         );
  DFF_X1 \CF_Reg_reg[0][3]  ( .D(\CF_Out[0][3] ), .CK(clk), .Q(\CF_Reg[0][3] )
         );
  DFF_X1 \CF_Reg_reg[0][2]  ( .D(\CF_Out[0][2] ), .CK(clk), .Q(\CF_Reg[0][2] )
         );
  DFF_X1 \CF_Reg_reg[0][1]  ( .D(\CF_Out[0][1] ), .CK(clk), .Q(\CF_Reg[0][1] )
         );
  DFF_X1 \CF_Reg_reg[0][0]  ( .D(\CF_Out[0][0] ), .CK(clk), .Q(\CF_Reg[0][0] )
         );
  DFF_X1 \CF_Reg_MSB_reg[44]  ( .D(CF_Out_MSB[44]), .CK(clk), .Q(
        CF_Reg_MSB[44]) );
  DFF_X1 \CF_Reg_MSB_reg[43]  ( .D(CF_Out_MSB[43]), .CK(clk), .Q(
        CF_Reg_MSB[43]) );
  DFF_X1 \CF_Reg_MSB_reg[42]  ( .D(CF_Out_MSB[42]), .CK(clk), .Q(
        CF_Reg_MSB[42]) );
  DFF_X1 \CF_Reg_MSB_reg[41]  ( .D(CF_Out_MSB[41]), .CK(clk), .Q(
        CF_Reg_MSB[41]) );
  DFF_X1 \CF_Reg_MSB_reg[40]  ( .D(CF_Out_MSB[40]), .CK(clk), .Q(
        CF_Reg_MSB[40]) );
  DFF_X1 \CF_Reg_MSB_reg[39]  ( .D(CF_Out_MSB[39]), .CK(clk), .Q(
        CF_Reg_MSB[39]) );
  DFF_X1 \CF_Reg_MSB_reg[38]  ( .D(CF_Out_MSB[38]), .CK(clk), .Q(
        CF_Reg_MSB[38]) );
  DFF_X1 \CF_Reg_MSB_reg[37]  ( .D(CF_Out_MSB[37]), .CK(clk), .Q(
        CF_Reg_MSB[37]) );
  DFF_X1 \CF_Reg_MSB_reg[36]  ( .D(CF_Out_MSB[36]), .CK(clk), .Q(
        CF_Reg_MSB[36]) );
  DFF_X1 \CF_Reg_MSB_reg[29]  ( .D(CF_Out_MSB[29]), .CK(clk), .Q(
        CF_Reg_MSB[29]) );
  DFF_X1 \CF_Reg_MSB_reg[28]  ( .D(CF_Out_MSB[28]), .CK(clk), .Q(
        CF_Reg_MSB[28]) );
  DFF_X1 \CF_Reg_MSB_reg[27]  ( .D(CF_Out_MSB[27]), .CK(clk), .Q(
        CF_Reg_MSB[27]) );
  DFF_X1 \CF_Reg_MSB_reg[26]  ( .D(CF_Out_MSB[26]), .CK(clk), .Q(
        CF_Reg_MSB[26]) );
  DFF_X1 \CF_Reg_MSB_reg[25]  ( .D(CF_Out_MSB[25]), .CK(clk), .Q(
        CF_Reg_MSB[25]) );
  DFF_X1 \CF_Reg_MSB_reg[24]  ( .D(CF_Out_MSB[24]), .CK(clk), .Q(
        CF_Reg_MSB[24]) );
  DFF_X1 \CF_Reg_MSB_reg[20]  ( .D(CF_Out_MSB[20]), .CK(clk), .Q(
        CF_Reg_MSB[20]) );
  DFF_X1 \CF_Reg_MSB_reg[19]  ( .D(CF_Out_MSB[19]), .CK(clk), .Q(
        CF_Reg_MSB[19]) );
  DFF_X1 \CF_Reg_MSB_reg[18]  ( .D(CF_Out_MSB[18]), .CK(clk), .Q(
        CF_Reg_MSB[18]) );
  DFF_X1 \CF_Reg_MSB_reg[14]  ( .D(CF_Out_MSB[14]), .CK(clk), .Q(
        CF_Reg_MSB[14]) );
  DFF_X1 \CF_Reg_MSB_reg[13]  ( .D(CF_Out_MSB[13]), .CK(clk), .Q(
        CF_Reg_MSB[13]) );
  DFF_X1 \CF_Reg_MSB_reg[12]  ( .D(CF_Out_MSB[12]), .CK(clk), .Q(
        CF_Reg_MSB[12]) );
  DFF_X1 \CF_Reg_MSB_reg[11]  ( .D(CF_Out_MSB[11]), .CK(clk), .Q(
        CF_Reg_MSB[11]) );
  DFF_X1 \CF_Reg_MSB_reg[10]  ( .D(CF_Out_MSB[10]), .CK(clk), .Q(
        CF_Reg_MSB[10]) );
  DFF_X1 \CF_Reg_MSB_reg[9]  ( .D(CF_Out_MSB[9]), .CK(clk), .Q(CF_Reg_MSB[9])
         );
  DFF_X1 \CF_Reg_MSB_reg[2]  ( .D(CF_Out_MSB[2]), .CK(clk), .Q(CF_Reg_MSB[2])
         );
  DFF_X1 \CF_Reg_MSB_reg[1]  ( .D(CF_Out_MSB[1]), .CK(clk), .Q(CF_Reg_MSB[1])
         );
  DFF_X1 \CF_Reg_MSB_reg[0]  ( .D(CF_Out_MSB[0]), .CK(clk), .Q(CF_Reg_MSB[0])
         );
endmodule

