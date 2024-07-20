/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jun 12 05:23:15 2023
/////////////////////////////////////////////////////////////


module NF_CF_1_num0_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31;

  XOR2_X1 U1 ( .A(r[1]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n19) );
  XNOR2_X1 U2 ( .A(b[0]), .B(r[0]), .ZN(n18) );
  XNOR2_X1 U3 ( .A(n19), .B(n18), .ZN(n31) );
  INV_X1 U4 ( .A(a[0]), .ZN(n21) );
  INV_X1 U5 ( .A(b[0]), .ZN(n23) );
  INV_X1 U6 ( .A(c[0]), .ZN(n24) );
  NAND2_X1 U7 ( .A1(n23), .A2(n24), .ZN(n20) );
  NAND2_X1 U8 ( .A1(n21), .A2(n20), .ZN(n22) );
  NAND2_X1 U9 ( .A1(n22), .A2(d[0]), .ZN(n29) );
  NAND2_X1 U10 ( .A1(a[0]), .A2(n23), .ZN(n25) );
  NAND2_X1 U11 ( .A1(n25), .A2(n24), .ZN(n27) );
  INV_X1 U12 ( .A(d[0]), .ZN(n26) );
  NAND2_X1 U13 ( .A1(n27), .A2(n26), .ZN(n28) );
  NAND2_X1 U14 ( .A1(n29), .A2(n28), .ZN(n30) );
  XOR2_X1 U15 ( .A(n31), .B(n30), .Z(q) );
endmodule


module NF_CF_1_num1_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[1]), .B(r[2]), .Z(n17) );
  INV_X1 U3 ( .A(c[1]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(a[0]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(c[1]), .A2(d[1]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[0]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num2_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[2]), .B(r[3]), .Z(n17) );
  INV_X1 U3 ( .A(c[2]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(a[0]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(c[2]), .A2(d[2]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[0]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num3_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[0]), .ZN(n15) );
  NAND2_X1 U2 ( .A1(c[1]), .A2(b[0]), .ZN(n14) );
  NOR2_X1 U3 ( .A1(n15), .A2(n14), .ZN(n19) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n17) );
  XNOR2_X1 U5 ( .A(r[3]), .B(r[4]), .ZN(n16) );
  XNOR2_X1 U6 ( .A(n17), .B(n16), .ZN(n18) );
  XOR2_X1 U7 ( .A(n19), .B(n18), .Z(n22) );
  XOR2_X1 U8 ( .A(b[0]), .B(d[0]), .Z(n20) );
  NAND2_X1 U9 ( .A1(n20), .A2(a[1]), .ZN(n21) );
  XNOR2_X1 U10 ( .A(n22), .B(n21), .ZN(q) );
endmodule


module NF_CF_1_num4_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[1]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[2]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[5]), .B(r[4]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num5_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[5]), .B(r[6]), .Z(n16) );
  INV_X1 U3 ( .A(b[0]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[0]), .A2(a[1]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[0]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num6_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22;

  INV_X1 U1 ( .A(c[0]), .ZN(n15) );
  NAND2_X1 U2 ( .A1(b[0]), .A2(d[1]), .ZN(n14) );
  NOR2_X1 U3 ( .A1(n15), .A2(n14), .ZN(n16) );
  XNOR2_X1 U4 ( .A(n16), .B(a[2]), .ZN(n18) );
  NOR2_X1 U5 ( .A1(c[0]), .A2(b[0]), .ZN(n17) );
  NOR2_X1 U6 ( .A1(n18), .A2(n17), .ZN(n22) );
  XOR2_X1 U7 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n20) );
  XNOR2_X1 U8 ( .A(r[6]), .B(r[7]), .ZN(n19) );
  XNOR2_X1 U9 ( .A(n20), .B(n19), .ZN(n21) );
  XOR2_X1 U10 ( .A(n22), .B(n21), .Z(q) );
endmodule


module NF_CF_1_num7_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[2]), .B(d[2]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[1]), .A2(b[0]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[8]), .B(r[7]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num8_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17;

  NAND2_X1 U1 ( .A1(b[0]), .A2(c[2]), .ZN(n11) );
  INV_X1 U2 ( .A(n11), .ZN(n9) );
  NOR2_X1 U3 ( .A1(n9), .A2(d[0]), .ZN(n10) );
  NAND2_X1 U4 ( .A1(a[2]), .A2(n10), .ZN(n14) );
  NOR2_X1 U5 ( .A1(a[2]), .A2(n11), .ZN(n12) );
  NAND2_X1 U6 ( .A1(d[0]), .A2(n12), .ZN(n13) );
  NAND2_X1 U7 ( .A1(n14), .A2(n13), .ZN(n17) );
  XOR2_X1 U8 ( .A(r[9]), .B(r[8]), .Z(n15) );
  XNOR2_X1 U9 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n15), .ZN(n16) );
  XNOR2_X1 U10 ( .A(n17), .B(n16), .ZN(q) );
endmodule


module NF_CF_1_num9_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n14, n15, n16, n17, n18, n19;
  assign n14 = b[1];

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[10]), .Z(n18) );
  XNOR2_X1 U2 ( .A(a[0]), .B(d[0]), .ZN(n15) );
  OR2_X1 U3 ( .A1(c[2]), .A2(n15), .ZN(n16) );
  NAND2_X1 U4 ( .A1(n14), .A2(n16), .ZN(n17) );
  XNOR2_X1 U5 ( .A(n18), .B(n17), .ZN(n19) );
  XOR2_X1 U6 ( .A(r[9]), .B(n19), .Z(q) );
endmodule


module NF_CF_1_num10_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .Z(n14) );
  XNOR2_X1 U2 ( .A(r[10]), .B(r[11]), .ZN(n13) );
  XNOR2_X1 U3 ( .A(n14), .B(n13), .ZN(n24) );
  INV_X1 U4 ( .A(d[1]), .ZN(n16) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(c[0]), .ZN(n15) );
  NAND2_X1 U6 ( .A1(n16), .A2(n15), .ZN(n17) );
  NAND2_X1 U7 ( .A1(d[1]), .A2(b[1]), .ZN(n19) );
  NAND2_X1 U8 ( .A1(n17), .A2(n19), .ZN(n18) );
  AND2_X1 U9 ( .A1(a[0]), .A2(n18), .ZN(n22) );
  NOR2_X1 U10 ( .A1(c[0]), .A2(n19), .ZN(n20) );
  NOR2_X1 U11 ( .A1(a[0]), .A2(n20), .ZN(n21) );
  NOR2_X1 U12 ( .A1(n22), .A2(n21), .ZN(n23) );
  XOR2_X1 U13 ( .A(n24), .B(n23), .Z(q) );
endmodule


module NF_CF_1_num11_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n15, n16, n17, n18, n19, n20, n21, n22;

  NAND2_X1 U1 ( .A1(c[1]), .A2(a[0]), .ZN(n15) );
  NOR2_X1 U2 ( .A1(n15), .A2(b[1]), .ZN(n18) );
  NAND2_X1 U3 ( .A1(b[1]), .A2(d[2]), .ZN(n16) );
  NOR2_X1 U4 ( .A1(n16), .A2(c[1]), .ZN(n17) );
  NOR2_X1 U5 ( .A1(n18), .A2(n17), .ZN(n22) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n20) );
  XNOR2_X1 U7 ( .A(r[11]), .B(r[12]), .ZN(n19) );
  XNOR2_X1 U8 ( .A(n20), .B(n19), .ZN(n21) );
  XNOR2_X1 U9 ( .A(n22), .B(n21), .ZN(q) );
endmodule


module NF_CF_1_num12_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[12]), .B(r[13]), .Z(n16) );
  INV_X1 U3 ( .A(c[2]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(c[2]), .A2(a[1]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(b[1]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num13_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[1]), .B(d[0]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[0]), .A2(b[1]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[14]), .B(r[13]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num14_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  XOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n18) );
  XNOR2_X1 U2 ( .A(r[14]), .B(r[15]), .ZN(n17) );
  XNOR2_X1 U3 ( .A(n18), .B(n17), .ZN(n26) );
  XOR2_X1 U4 ( .A(c[1]), .B(d[1]), .Z(n20) );
  INV_X1 U5 ( .A(a[1]), .ZN(n19) );
  NAND2_X1 U6 ( .A1(n20), .A2(n19), .ZN(n24) );
  NAND2_X1 U7 ( .A1(d[1]), .A2(a[1]), .ZN(n21) );
  AND2_X1 U8 ( .A1(n21), .A2(b[1]), .ZN(n22) );
  NAND2_X1 U9 ( .A1(c[1]), .A2(n22), .ZN(n23) );
  NAND2_X1 U10 ( .A1(n24), .A2(n23), .ZN(n25) );
  XOR2_X1 U11 ( .A(n26), .B(n25), .Z(q) );
endmodule


module NF_CF_1_num15_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[15]), .B(r[16]), .Z(n16) );
  INV_X1 U3 ( .A(c[0]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[2]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(c[0]), .A2(a[2]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(b[1]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num16_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[16]), .B(r[17]), .Z(n16) );
  INV_X1 U3 ( .A(b[1]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[0]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[1]), .A2(a[2]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[1]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num17_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17;

  NAND2_X1 U1 ( .A1(b[1]), .A2(c[2]), .ZN(n11) );
  INV_X1 U2 ( .A(n11), .ZN(n9) );
  NOR2_X1 U3 ( .A1(n9), .A2(d[1]), .ZN(n10) );
  NAND2_X1 U4 ( .A1(a[2]), .A2(n10), .ZN(n14) );
  NOR2_X1 U5 ( .A1(a[2]), .A2(n11), .ZN(n12) );
  NAND2_X1 U6 ( .A1(d[1]), .A2(n12), .ZN(n13) );
  NAND2_X1 U7 ( .A1(n14), .A2(n13), .ZN(n17) );
  XOR2_X1 U8 ( .A(r[18]), .B(r[17]), .Z(n15) );
  XNOR2_X1 U9 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n15), .ZN(n16) );
  XNOR2_X1 U10 ( .A(n17), .B(n16), .ZN(q) );
endmodule


module NF_CF_1_num18_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n4, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;
  assign n4 = b[2];

  NAND2_X1 U1 ( .A1(a[0]), .A2(n4), .ZN(n16) );
  NOR2_X1 U2 ( .A1(c[0]), .A2(n16), .ZN(n17) );
  NOR2_X1 U3 ( .A1(d[2]), .A2(n17), .ZN(n21) );
  INV_X1 U4 ( .A(n4), .ZN(n18) );
  NOR2_X1 U5 ( .A1(c[0]), .A2(n18), .ZN(n19) );
  NOR2_X1 U6 ( .A1(a[0]), .A2(n19), .ZN(n20) );
  NOR2_X1 U7 ( .A1(n21), .A2(n20), .ZN(n22) );
  XNOR2_X1 U8 ( .A(n22), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n26) );
  XOR2_X1 U9 ( .A(r[18]), .B(r[19]), .Z(n24) );
  XNOR2_X1 U10 ( .A(a[0]), .B(n4), .ZN(n23) );
  XNOR2_X1 U11 ( .A(n24), .B(n23), .ZN(n25) );
  XNOR2_X1 U12 ( .A(n26), .B(n25), .ZN(q) );
endmodule


module NF_CF_1_num19_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n19) );
  XOR2_X1 U2 ( .A(r[19]), .B(r[20]), .Z(n17) );
  INV_X1 U3 ( .A(c[1]), .ZN(n12) );
  NOR2_X1 U4 ( .A1(a[0]), .A2(n12), .ZN(n14) );
  NOR2_X1 U5 ( .A1(c[1]), .A2(d[0]), .ZN(n13) );
  NOR2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  NAND2_X1 U7 ( .A1(n15), .A2(b[2]), .ZN(n16) );
  XNOR2_X1 U8 ( .A(n17), .B(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num20_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n15, n16, n17, n18, n19, n20, n21, n22;

  NAND2_X1 U1 ( .A1(c[2]), .A2(a[0]), .ZN(n15) );
  NOR2_X1 U2 ( .A1(n15), .A2(b[2]), .ZN(n18) );
  NAND2_X1 U3 ( .A1(b[2]), .A2(d[1]), .ZN(n16) );
  NOR2_X1 U4 ( .A1(n16), .A2(c[2]), .ZN(n17) );
  NOR2_X1 U5 ( .A1(n18), .A2(n17), .ZN(n22) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n20) );
  XNOR2_X1 U7 ( .A(r[20]), .B(r[21]), .ZN(n19) );
  XNOR2_X1 U8 ( .A(n20), .B(n19), .ZN(n21) );
  XNOR2_X1 U9 ( .A(n22), .B(n21), .ZN(q) );
endmodule


module NF_CF_1_num21_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[21]), .B(r[22]), .Z(n16) );
  INV_X1 U3 ( .A(c[0]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(c[0]), .A2(a[1]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(b[2]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num22_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[22]), .B(r[23]), .Z(n16) );
  INV_X1 U3 ( .A(b[2]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[0]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(b[2]), .A2(a[1]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(c[2]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num23_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15, n16;

  XNOR2_X1 U1 ( .A(r[24]), .B(TwoSharesFromNeighbouringSbox[4]), .ZN(n9) );
  XNOR2_X1 U2 ( .A(n9), .B(TwoSharesFromNeighbouringSbox[5]), .ZN(n10) );
  XOR2_X1 U3 ( .A(r[23]), .B(n10), .Z(n16) );
  OR2_X1 U4 ( .A1(a[1]), .A2(d[2]), .ZN(n14) );
  NAND2_X1 U5 ( .A1(c[1]), .A2(b[2]), .ZN(n12) );
  NAND2_X1 U6 ( .A1(d[2]), .A2(a[1]), .ZN(n11) );
  NAND2_X1 U7 ( .A1(n12), .A2(n11), .ZN(n13) );
  NAND2_X1 U8 ( .A1(n14), .A2(n13), .ZN(n15) );
  XNOR2_X1 U9 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num24_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .ZN(n18) );
  XOR2_X1 U2 ( .A(r[24]), .B(r[25]), .Z(n16) );
  INV_X1 U3 ( .A(c[1]), .ZN(n11) );
  NOR2_X1 U4 ( .A1(d[1]), .A2(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(c[1]), .A2(a[2]), .ZN(n12) );
  NOR2_X1 U6 ( .A1(n13), .A2(n12), .ZN(n14) );
  NAND2_X1 U7 ( .A1(n14), .A2(b[2]), .ZN(n15) );
  XNOR2_X1 U8 ( .A(n16), .B(n15), .ZN(n17) );
  XNOR2_X1 U9 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num25_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XNOR2_X1 U1 ( .A(a[2]), .B(d[0]), .ZN(n9) );
  NAND2_X1 U2 ( .A1(c[0]), .A2(b[2]), .ZN(n8) );
  NOR2_X1 U3 ( .A1(n9), .A2(n8), .ZN(n13) );
  XOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n11) );
  XNOR2_X1 U5 ( .A(r[26]), .B(r[25]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XOR2_X1 U7 ( .A(n13), .B(n12), .Z(q) );
endmodule


module NF_CF_1_num26_Co_f0 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   r_0, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38;
  assign r_0 = r[0];

  INV_X1 U1 ( .A(a[2]), .ZN(n31) );
  INV_X1 U2 ( .A(b[2]), .ZN(n23) );
  NOR2_X1 U3 ( .A1(n23), .A2(d[2]), .ZN(n30) );
  OR2_X1 U4 ( .A1(n31), .A2(n30), .ZN(n26) );
  XNOR2_X1 U5 ( .A(c[2]), .B(d[2]), .ZN(n25) );
  NAND2_X1 U6 ( .A1(c[2]), .A2(b[2]), .ZN(n24) );
  NAND2_X1 U7 ( .A1(n25), .A2(n24), .ZN(n32) );
  NAND2_X1 U8 ( .A1(n26), .A2(n32), .ZN(n29) );
  XNOR2_X1 U9 ( .A(r_0), .B(TwoSharesFromNeighbouringSbox[7]), .ZN(n27) );
  XOR2_X1 U10 ( .A(n27), .B(r[26]), .Z(n36) );
  INV_X1 U11 ( .A(n36), .ZN(n28) );
  NAND2_X1 U12 ( .A1(n29), .A2(n28), .ZN(n38) );
  NAND2_X1 U13 ( .A1(c[2]), .A2(n30), .ZN(n34) );
  NAND2_X1 U14 ( .A1(n32), .A2(n31), .ZN(n33) );
  NAND2_X1 U15 ( .A1(n34), .A2(n33), .ZN(n35) );
  NAND2_X1 U16 ( .A1(n36), .A2(n35), .ZN(n37) );
  NAND2_X1 U17 ( .A1(n38), .A2(n37), .ZN(q) );
endmodule


module NF_CF_1_num0_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n4, n14, n15, n16, n17, n18;
  assign n4 = d[0];

  XNOR2_X1 U1 ( .A(r[28]), .B(r[27]), .ZN(n14) );
  XNOR2_X1 U2 ( .A(n14), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n18) );
  NOR2_X1 U3 ( .A1(n4), .A2(c[0]), .ZN(n15) );
  XOR2_X1 U4 ( .A(a[0]), .B(n15), .Z(n16) );
  NOR2_X1 U5 ( .A1(b[0]), .A2(n16), .ZN(n17) );
  XOR2_X1 U6 ( .A(n18), .B(n17), .Z(q) );
endmodule


module NF_CF_1_num1_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  OR2_X1 U1 ( .A1(d[1]), .A2(c[1]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[0]), .ZN(n10) );
  XOR2_X1 U3 ( .A(r[29]), .B(r[28]), .Z(n8) );
  XNOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[1]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num2_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n11, n12, n13, n14, n15, n16;

  XOR2_X1 U1 ( .A(r[29]), .B(TwoSharesFromNeighbouringSbox[1]), .Z(n13) );
  OR2_X1 U2 ( .A1(c[2]), .A2(d[2]), .ZN(n11) );
  NAND2_X1 U3 ( .A1(b[0]), .A2(n11), .ZN(n12) );
  XNOR2_X1 U4 ( .A(n13), .B(n12), .ZN(n14) );
  XOR2_X1 U5 ( .A(n14), .B(r[30]), .Z(n16) );
  XNOR2_X1 U6 ( .A(c[2]), .B(TwoSharesFromNeighbouringSbox[2]), .ZN(n15) );
  XNOR2_X1 U7 ( .A(n16), .B(n15), .ZN(q) );
endmodule


module NF_CF_1_num3_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n9, n10, n11, n12, n13, n14, n15;

  AND2_X1 U1 ( .A1(a[1]), .A2(b[0]), .ZN(n11) );
  NAND2_X1 U2 ( .A1(c[1]), .A2(d[0]), .ZN(n9) );
  NOR2_X1 U3 ( .A1(b[0]), .A2(n9), .ZN(n10) );
  NOR2_X1 U4 ( .A1(n11), .A2(n10), .ZN(n15) );
  XOR2_X1 U5 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n13) );
  XNOR2_X1 U6 ( .A(r[30]), .B(r[31]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(n14) );
  XNOR2_X1 U8 ( .A(n15), .B(n14), .ZN(q) );
endmodule


module NF_CF_1_num4_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(d[1]), .A2(b[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[2]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[31]), .B(r[32]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num5_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(d[2]), .A2(b[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[0]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[32]), .B(r[33]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num6_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[33]), .B(TwoSharesFromNeighbouringSbox[6]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(r[34]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n13) );
  NAND2_X1 U4 ( .A1(c[0]), .A2(d[1]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(a[2]), .B(n10), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(b[0]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num7_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(d[2]), .A2(b[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[1]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[34]), .B(r[35]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num8_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9;

  XOR2_X1 U1 ( .A(r[36]), .B(r[35]), .Z(n6) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n6), .ZN(n9) );
  NAND2_X1 U3 ( .A1(c[2]), .A2(d[0]), .ZN(n7) );
  NOR2_X1 U4 ( .A1(b[0]), .A2(n7), .ZN(n8) );
  XNOR2_X1 U5 ( .A(n9), .B(n8), .ZN(q) );
endmodule


module NF_CF_1_num9_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n10, n11, n12, n13, n14;

  NOR2_X1 U1 ( .A1(c[2]), .A2(d[0]), .ZN(n10) );
  XNOR2_X1 U2 ( .A(a[0]), .B(n10), .ZN(n11) );
  NAND2_X1 U3 ( .A1(n11), .A2(b[1]), .ZN(n14) );
  XNOR2_X1 U4 ( .A(r[36]), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n12) );
  XNOR2_X1 U5 ( .A(n12), .B(r[37]), .ZN(n13) );
  XNOR2_X1 U6 ( .A(n14), .B(n13), .ZN(q) );
endmodule


module NF_CF_1_num10_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(r[38]), .B(TwoSharesFromNeighbouringSbox[1]), .Z(n13) );
  XNOR2_X1 U2 ( .A(a[1]), .B(TwoSharesFromNeighbouringSbox[0]), .ZN(n12) );
  XNOR2_X1 U3 ( .A(n13), .B(n12), .ZN(n14) );
  XNOR2_X1 U4 ( .A(r[37]), .B(n14), .ZN(n19) );
  NAND2_X1 U5 ( .A1(b[1]), .A2(c[0]), .ZN(n17) );
  NOR2_X1 U6 ( .A1(c[0]), .A2(b[1]), .ZN(n15) );
  NAND2_X1 U7 ( .A1(d[1]), .A2(n15), .ZN(n16) );
  NAND2_X1 U8 ( .A1(n17), .A2(n16), .ZN(n18) );
  XNOR2_X1 U9 ( .A(n19), .B(n18), .ZN(q) );
endmodule


module NF_CF_1_num11_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  OR2_X1 U1 ( .A1(d[2]), .A2(c[1]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[1]), .ZN(n10) );
  XOR2_X1 U3 ( .A(r[39]), .B(r[38]), .Z(n8) );
  XNOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num12_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[39]), .B(TwoSharesFromNeighbouringSbox[3]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(r[40]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n13) );
  NAND2_X1 U4 ( .A1(c[2]), .A2(d[2]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(a[1]), .B(n10), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(b[1]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num13_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(d[0]), .A2(b[1]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[0]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[40]), .B(r[41]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num14_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[42]), .B(TwoSharesFromNeighbouringSbox[4]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[41]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(c[1]), .A2(d[1]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(b[1]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num15_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[42]), .B(TwoSharesFromNeighbouringSbox[6]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(r[43]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n13) );
  NAND2_X1 U4 ( .A1(c[0]), .A2(d[2]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(a[2]), .B(n10), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(b[1]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num16_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(d[0]), .A2(b[1]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[1]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[43]), .B(r[44]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num17_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  INV_X1 U1 ( .A(b[1]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(d[1]), .ZN(n7) );
  NAND2_X1 U3 ( .A1(n7), .A2(c[2]), .ZN(n10) );
  XNOR2_X1 U4 ( .A(r[45]), .B(r[44]), .ZN(n8) );
  XNOR2_X1 U5 ( .A(n8), .B(TwoSharesFromNeighbouringSbox[7]), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num18_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n12, n13, n14, n15, n16, n17, n18;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[45]), .ZN(n18) );
  XOR2_X1 U2 ( .A(c[0]), .B(a[0]), .Z(n12) );
  NAND2_X1 U3 ( .A1(n12), .A2(b[2]), .ZN(n13) );
  XNOR2_X1 U4 ( .A(n13), .B(d[2]), .ZN(n15) );
  OR2_X1 U5 ( .A1(c[0]), .A2(b[2]), .ZN(n14) );
  NAND2_X1 U6 ( .A1(n15), .A2(n14), .ZN(n16) );
  XNOR2_X1 U7 ( .A(n16), .B(r[46]), .ZN(n17) );
  XNOR2_X1 U8 ( .A(n18), .B(n17), .ZN(q) );
endmodule


module NF_CF_1_num19_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  OR2_X1 U1 ( .A1(d[0]), .A2(c[1]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[2]), .ZN(n10) );
  XOR2_X1 U3 ( .A(r[47]), .B(r[46]), .Z(n8) );
  XNOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[1]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num20_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  OR2_X1 U1 ( .A1(d[1]), .A2(c[2]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(b[2]), .ZN(n10) );
  XOR2_X1 U3 ( .A(r[48]), .B(r[47]), .Z(n8) );
  XNOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[2]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num21_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[48]), .B(TwoSharesFromNeighbouringSbox[3]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(r[49]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n13) );
  NAND2_X1 U4 ( .A1(c[0]), .A2(d[1]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(a[1]), .B(n10), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(b[2]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num22_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  AND2_X1 U1 ( .A1(d[0]), .A2(b[2]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[2]), .ZN(n10) );
  XOR2_X1 U3 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n8) );
  XNOR2_X1 U4 ( .A(r[49]), .B(r[50]), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num23_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[51]), .B(TwoSharesFromNeighbouringSbox[4]), .Z(n7) );
  XNOR2_X1 U2 ( .A(r[50]), .B(n7), .ZN(n10) );
  NAND2_X1 U3 ( .A1(c[1]), .A2(d[2]), .ZN(n8) );
  NOR2_X1 U4 ( .A1(b[2]), .A2(n8), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n10), .B(n9), .ZN(n11) );
  XOR2_X1 U6 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(n11), .Z(q) );
endmodule


module NF_CF_1_num24_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[51]), .B(TwoSharesFromNeighbouringSbox[6]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(r[52]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n13) );
  NAND2_X1 U4 ( .A1(c[1]), .A2(d[1]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(a[2]), .B(n10), .ZN(n11) );
  NAND2_X1 U6 ( .A1(n11), .A2(b[2]), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num25_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(b[2]), .A2(d[0]), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(c[0]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(n7), .B(TwoSharesFromNeighbouringSbox[6]), .ZN(n8) );
  XOR2_X1 U4 ( .A(n8), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n10) );
  XNOR2_X1 U5 ( .A(r[52]), .B(r[53]), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num26_Co_f1 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   r_27, n8, n9, n10, n11, n12, n13;
  assign r_27 = r[27];

  XNOR2_X1 U1 ( .A(a[2]), .B(r_27), .ZN(n13) );
  INV_X1 U2 ( .A(b[2]), .ZN(n8) );
  NAND2_X1 U3 ( .A1(n8), .A2(c[2]), .ZN(n9) );
  NAND2_X1 U4 ( .A1(n9), .A2(d[2]), .ZN(n11) );
  XOR2_X1 U5 ( .A(r[53]), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num0_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[54]), .B(TwoSharesFromNeighbouringSbox[1]), .Z(n10) );
  XNOR2_X1 U2 ( .A(r[55]), .B(d[0]), .ZN(n9) );
  XNOR2_X1 U3 ( .A(n10), .B(n9), .ZN(n11) );
  XNOR2_X1 U4 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n11), .ZN(n13) );
  NOR2_X1 U5 ( .A1(c[0]), .A2(b[0]), .ZN(n12) );
  XNOR2_X1 U6 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num1_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(r[55]), .B(TwoSharesFromNeighbouringSbox[1]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[56]), .B(TwoSharesFromNeighbouringSbox[2]), .Z(n6) );
  NAND2_X1 U3 ( .A1(b[0]), .A2(c[1]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num2_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   TwoSharesFromNeighbouringSbox_0, n5, n6, n7, n8;
  assign TwoSharesFromNeighbouringSbox_0 = TwoSharesFromNeighbouringSbox[0];

  XNOR2_X1 U1 ( .A(r[56]), .B(TwoSharesFromNeighbouringSbox[2]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[57]), .B(TwoSharesFromNeighbouringSbox_0), .Z(n6) );
  NAND2_X1 U3 ( .A1(b[0]), .A2(c[2]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num3_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[57]), .B(d[1]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U4 ( .A(r[58]), .B(n10), .Z(n13) );
  INV_X1 U5 ( .A(c[0]), .ZN(n11) );
  NAND2_X1 U6 ( .A1(b[1]), .A2(n11), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num4_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(r[59]), .ZN(n10) );
  XOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(r[58]), .Z(n8) );
  INV_X1 U3 ( .A(b[1]), .ZN(n6) );
  NAND2_X1 U4 ( .A1(c[1]), .A2(n6), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num5_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   TwoSharesFromNeighbouringSbox_0, n5, n6, n7, n8;
  assign TwoSharesFromNeighbouringSbox_0 = TwoSharesFromNeighbouringSbox[0];

  XNOR2_X1 U1 ( .A(r[59]), .B(TwoSharesFromNeighbouringSbox[2]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[60]), .B(TwoSharesFromNeighbouringSbox_0), .Z(n6) );
  NAND2_X1 U3 ( .A1(b[1]), .A2(c[2]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num6_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[60]), .B(d[2]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U4 ( .A(r[61]), .B(n10), .Z(n13) );
  INV_X1 U5 ( .A(c[0]), .ZN(n11) );
  NAND2_X1 U6 ( .A1(b[2]), .A2(n11), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num7_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(r[61]), .B(TwoSharesFromNeighbouringSbox[1]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[62]), .B(TwoSharesFromNeighbouringSbox[2]), .Z(n6) );
  NAND2_X1 U3 ( .A1(b[2]), .A2(c[1]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num8_Co_f2 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   TwoSharesFromNeighbouringSbox_0, r_54, n6, n7, n8, n9, n10;
  assign TwoSharesFromNeighbouringSbox_0 = TwoSharesFromNeighbouringSbox[0];
  assign r_54 = r[54];

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox_0), .B(r_54), .ZN(n10) );
  XOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(r[62]), .Z(n8) );
  INV_X1 U3 ( .A(b[2]), .ZN(n6) );
  NAND2_X1 U4 ( .A1(c[2]), .A2(n6), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num0_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n7, n8, n9, n10, n11;

  XOR2_X1 U1 ( .A(r[63]), .B(a[0]), .Z(n8) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U4 ( .A(r[64]), .B(n9), .ZN(n11) );
  NOR2_X1 U5 ( .A1(d[0]), .A2(c[0]), .ZN(n10) );
  XNOR2_X1 U6 ( .A(n11), .B(n10), .ZN(q) );
endmodule


module NF_CF_1_num1_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(r[64]), .B(TwoSharesFromNeighbouringSbox[1]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[65]), .B(TwoSharesFromNeighbouringSbox[2]), .Z(n6) );
  NAND2_X1 U3 ( .A1(c[0]), .A2(d[1]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num2_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   TwoSharesFromNeighbouringSbox_0, n5, n6, n7, n8;
  assign TwoSharesFromNeighbouringSbox_0 = TwoSharesFromNeighbouringSbox[0];

  XNOR2_X1 U1 ( .A(r[65]), .B(TwoSharesFromNeighbouringSbox[2]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[66]), .B(TwoSharesFromNeighbouringSbox_0), .Z(n6) );
  NAND2_X1 U3 ( .A1(c[0]), .A2(d[2]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num3_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[66]), .B(a[1]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U4 ( .A(r[67]), .B(n10), .Z(n13) );
  INV_X1 U5 ( .A(d[0]), .ZN(n11) );
  NAND2_X1 U6 ( .A1(c[1]), .A2(n11), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num4_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n6, n7, n8, n9, n10;

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(r[68]), .ZN(n10) );
  XOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(r[67]), .Z(n8) );
  INV_X1 U3 ( .A(c[1]), .ZN(n6) );
  NAND2_X1 U4 ( .A1(d[1]), .A2(n6), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
endmodule


module NF_CF_1_num5_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   TwoSharesFromNeighbouringSbox_0, n5, n6, n7, n8;
  assign TwoSharesFromNeighbouringSbox_0 = TwoSharesFromNeighbouringSbox[0];

  XNOR2_X1 U1 ( .A(r[68]), .B(TwoSharesFromNeighbouringSbox[2]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[69]), .B(TwoSharesFromNeighbouringSbox_0), .Z(n6) );
  NAND2_X1 U3 ( .A1(c[1]), .A2(d[2]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num6_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n8, n9, n10, n11, n12, n13;

  XOR2_X1 U1 ( .A(r[69]), .B(a[2]), .Z(n9) );
  XNOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n8) );
  XNOR2_X1 U3 ( .A(n9), .B(n8), .ZN(n10) );
  XOR2_X1 U4 ( .A(r[70]), .B(n10), .Z(n13) );
  INV_X1 U5 ( .A(d[0]), .ZN(n11) );
  NAND2_X1 U6 ( .A1(c[2]), .A2(n11), .ZN(n12) );
  XNOR2_X1 U7 ( .A(n13), .B(n12), .ZN(q) );
endmodule


module NF_CF_1_num7_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   n5, n6, n7, n8;

  XNOR2_X1 U1 ( .A(r[70]), .B(TwoSharesFromNeighbouringSbox[1]), .ZN(n8) );
  XOR2_X1 U2 ( .A(r[71]), .B(TwoSharesFromNeighbouringSbox[2]), .Z(n6) );
  NAND2_X1 U3 ( .A1(c[2]), .A2(d[1]), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(q) );
endmodule


module NF_CF_1_num8_Co_f3 ( a, b, c, d, TwoSharesFromNeighbouringSbox, r, 
        dr1_1, dr1_2, dr1_3, q );
  input [2:0] a;
  input [2:0] b;
  input [2:0] c;
  input [2:0] d;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  input [3:0] dr1_1;
  input [3:0] dr1_2;
  input [3:0] dr1_3;
  output q;
  wire   TwoSharesFromNeighbouringSbox_0, r_63, n6, n7, n8, n9, n10;
  assign TwoSharesFromNeighbouringSbox_0 = TwoSharesFromNeighbouringSbox[0];
  assign r_63 = r[63];

  XNOR2_X1 U1 ( .A(TwoSharesFromNeighbouringSbox_0), .B(r_63), .ZN(n10) );
  XOR2_X1 U2 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(r[71]), .Z(n8) );
  INV_X1 U3 ( .A(c[2]), .ZN(n6) );
  NAND2_X1 U4 ( .A1(d[2]), .A2(n6), .ZN(n7) );
  XNOR2_X1 U5 ( .A(n8), .B(n7), .ZN(n9) );
  XNOR2_X1 U6 ( .A(n10), .B(n9), .ZN(q) );
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


module XOR_n_WIDTH3_0 ( x, q );
  input [2:0] x;
  output q;
  wire   n2;

  XNOR2_X1 U1 ( .A(x[2]), .B(x[0]), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(x[1]), .ZN(q) );
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


module XOR_n_WIDTH3_1 ( x, q );
  input [2:0] x;
  output q;
  wire   n2;

  XNOR2_X1 U1 ( .A(x[2]), .B(x[0]), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(x[1]), .ZN(q) );
endmodule


module XOR_n_WIDTH3_2 ( x, q );
  input [2:0] x;
  output q;
  wire   n2;

  XNOR2_X1 U1 ( .A(x[2]), .B(x[0]), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(x[1]), .ZN(q) );
endmodule


module XOR_n_WIDTH3_3 ( x, q );
  input [2:0] x;
  output q;
  wire   n2;

  XNOR2_X1 U1 ( .A(x[2]), .B(x[0]), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(x[1]), .ZN(q) );
endmodule


module XOR_n_WIDTH3_4 ( x, q );
  input [2:0] x;
  output q;
  wire   n2;

  XNOR2_X1 U1 ( .A(x[2]), .B(x[0]), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(x[1]), .ZN(q) );
endmodule


module XOR_n_WIDTH3_5 ( x, q );
  input [2:0] x;
  output q;
  wire   n2;

  XNOR2_X1 U1 ( .A(x[2]), .B(x[0]), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(x[1]), .ZN(q) );
endmodule


module SKINNY_SBOX ( clk, in1, in2, in3, TwoSharesFromNeighbouringSbox, r, 
        out1, out2, out3 );
(* SILVER="[3:0]_0" *)  input [3:0] in1;
(* SILVER="[3:0]_1" *)  input [3:0] in2;
(* SILVER="[3:0]_2" *)  input [3:0] in3;
(* SILVER="refresh" *)  input [7:0] TwoSharesFromNeighbouringSbox;
(* SILVER="refresh" *)  input [71:0] r;
(* SILVER="[3:0]_0" *)  output [3:0] out1;
(* SILVER="[3:0]_1" *)  output [3:0] out2;
(* SILVER="[3:0]_2" *)  output [3:0] out3;
(* SILVER="clock" *)  input clk;
  wire   \CF_Out[1][26] , \CF_Out[1][25] , \CF_Out[1][24] , \CF_Out[1][23] ,
         \CF_Out[1][22] , \CF_Out[1][21] , \CF_Out[1][20] , \CF_Out[1][19] ,
         \CF_Out[1][18] , \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] ,
         \CF_Out[1][14] , \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][11] ,
         \CF_Out[1][10] , \CF_Out[1][9] , \CF_Out[1][8] , \CF_Out[1][7] ,
         \CF_Out[1][6] , \CF_Out[1][5] , \CF_Out[1][4] , \CF_Out[1][3] ,
         \CF_Out[1][2] , \CF_Out[1][1] , \CF_Out[1][0] , \CF_Out[0][26] ,
         \CF_Out[0][25] , \CF_Out[0][24] , \CF_Out[0][23] , \CF_Out[0][22] ,
         \CF_Out[0][21] , \CF_Out[0][20] , \CF_Out[0][19] , \CF_Out[0][18] ,
         \CF_Out[0][17] , \CF_Out[0][16] , \CF_Out[0][15] , \CF_Out[0][14] ,
         \CF_Out[0][13] , \CF_Out[0][12] , \CF_Out[0][11] , \CF_Out[0][10] ,
         \CF_Out[0][9] , \CF_Out[0][8] , \CF_Out[0][7] , \CF_Out[0][6] ,
         \CF_Out[0][5] , \CF_Out[0][4] , \CF_Out[0][3] , \CF_Out[0][2] ,
         \CF_Out[0][1] , \CF_Out[0][0] , \CF_Out34[3][8] , \CF_Out34[3][7] ,
         \CF_Out34[3][6] , \CF_Out34[3][5] , \CF_Out34[3][4] ,
         \CF_Out34[3][3] , \CF_Out34[3][2] , \CF_Out34[3][1] ,
         \CF_Out34[3][0] , \CF_Out34[2][8] , \CF_Out34[2][7] ,
         \CF_Out34[2][6] , \CF_Out34[2][5] , \CF_Out34[2][4] ,
         \CF_Out34[2][3] , \CF_Out34[2][2] , \CF_Out34[2][1] ,
         \CF_Out34[2][0] , \CF_Reg[1][26] , \CF_Reg[1][25] , \CF_Reg[1][24] ,
         \CF_Reg[1][23] , \CF_Reg[1][22] , \CF_Reg[1][21] , \CF_Reg[1][20] ,
         \CF_Reg[1][19] , \CF_Reg[1][18] , \CF_Reg[1][17] , \CF_Reg[1][16] ,
         \CF_Reg[1][15] , \CF_Reg[1][14] , \CF_Reg[1][13] , \CF_Reg[1][12] ,
         \CF_Reg[1][11] , \CF_Reg[1][10] , \CF_Reg[1][9] , \CF_Reg[1][8] ,
         \CF_Reg[1][7] , \CF_Reg[1][6] , \CF_Reg[1][5] , \CF_Reg[1][4] ,
         \CF_Reg[1][3] , \CF_Reg[1][2] , \CF_Reg[1][1] , \CF_Reg[1][0] ,
         \CF_Reg[0][26] , \CF_Reg[0][25] , \CF_Reg[0][24] , \CF_Reg[0][23] ,
         \CF_Reg[0][22] , \CF_Reg[0][21] , \CF_Reg[0][20] , \CF_Reg[0][19] ,
         \CF_Reg[0][18] , \CF_Reg[0][17] , \CF_Reg[0][16] , \CF_Reg[0][15] ,
         \CF_Reg[0][14] , \CF_Reg[0][13] , \CF_Reg[0][12] , \CF_Reg[0][11] ,
         \CF_Reg[0][10] , \CF_Reg[0][9] , \CF_Reg[0][8] , \CF_Reg[0][7] ,
         \CF_Reg[0][6] , \CF_Reg[0][5] , \CF_Reg[0][4] , \CF_Reg[0][3] ,
         \CF_Reg[0][2] , \CF_Reg[0][1] , \CF_Reg[0][0] , \CF_Reg34[3][8] ,
         \CF_Reg34[3][7] , \CF_Reg34[3][6] , \CF_Reg34[3][5] ,
         \CF_Reg34[3][4] , \CF_Reg34[3][3] , \CF_Reg34[3][2] ,
         \CF_Reg34[3][1] , \CF_Reg34[3][0] , \CF_Reg34[2][8] ,
         \CF_Reg34[2][7] , \CF_Reg34[2][6] , \CF_Reg34[2][5] ,
         \CF_Reg34[2][4] , \CF_Reg34[2][3] , \CF_Reg34[2][2] ,
         \CF_Reg34[2][1] , \CF_Reg34[2][0] ;

  NF_CF_1_num0_Co_f0 \Coordinate_function_num1[0].Component_function_num1[0].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[1:0]}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[0][0] ) );
  NF_CF_1_num1_Co_f0 \Coordinate_function_num1[0].Component_function_num1[1].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[2:1], 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][1] ) );
  NF_CF_1_num2_Co_f0 \Coordinate_function_num1[0].Component_function_num1[2].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[3:2], 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][2] ) );
  NF_CF_1_num3_Co_f0 \Coordinate_function_num1[0].Component_function_num1[3].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[4:3], 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][3] ) );
  NF_CF_1_num4_Co_f0 \Coordinate_function_num1[0].Component_function_num1[4].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[5:4], 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][4] ) );
  NF_CF_1_num5_Co_f0 \Coordinate_function_num1[0].Component_function_num1[5].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][5] ) );
  NF_CF_1_num6_Co_f0 \Coordinate_function_num1[0].Component_function_num1[6].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][6] ) );
  NF_CF_1_num7_Co_f0 \Coordinate_function_num1[0].Component_function_num1[7].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[8:7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][7] ) );
  NF_CF_1_num8_Co_f0 \Coordinate_function_num1[0].Component_function_num1[8].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[9:8], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][8] ) );
  NF_CF_1_num9_Co_f0 \Coordinate_function_num1[0].Component_function_num1[9].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[0]}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[10:9], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][9] ) );
  NF_CF_1_num10_Co_f0 \Coordinate_function_num1[0].Component_function_num1[10].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[11:10], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][10] ) );
  NF_CF_1_num11_Co_f0 \Coordinate_function_num1[0].Component_function_num1[11].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[12:11], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][11] ) );
  NF_CF_1_num12_Co_f0 \Coordinate_function_num1[0].Component_function_num1[12].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[13:12], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][12] ) );
  NF_CF_1_num13_Co_f0 \Coordinate_function_num1[0].Component_function_num1[13].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[14:13], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][13] ) );
  NF_CF_1_num14_Co_f0 \Coordinate_function_num1[0].Component_function_num1[14].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[15:14], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][14] ) );
  NF_CF_1_num15_Co_f0 \Coordinate_function_num1[0].Component_function_num1[15].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[16:15], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][15] ) );
  NF_CF_1_num16_Co_f0 \Coordinate_function_num1[0].Component_function_num1[16].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[17:16], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][16] ) );
  NF_CF_1_num17_Co_f0 \Coordinate_function_num1[0].Component_function_num1[17].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[18:17], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][17] ) );
  NF_CF_1_num18_Co_f0 \Coordinate_function_num1[0].Component_function_num1[18].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[19:18], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 
        1'b0, 1'b0}), .q(\CF_Out[0][18] ) );
  NF_CF_1_num19_Co_f0 \Coordinate_function_num1[0].Component_function_num1[19].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[20:19], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][19] ) );
  NF_CF_1_num20_Co_f0 \Coordinate_function_num1[0].Component_function_num1[20].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[21:20], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][20] ) );
  NF_CF_1_num21_Co_f0 \Coordinate_function_num1[0].Component_function_num1[21].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[22:21], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][21] ) );
  NF_CF_1_num22_Co_f0 \Coordinate_function_num1[0].Component_function_num1[22].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[23:22], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][22] ) );
  NF_CF_1_num23_Co_f0 \Coordinate_function_num1[0].Component_function_num1[23].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[24:23], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][23] ) );
  NF_CF_1_num24_Co_f0 \Coordinate_function_num1[0].Component_function_num1[24].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[25:24], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][24] ) );
  NF_CF_1_num25_Co_f0 \Coordinate_function_num1[0].Component_function_num1[25].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[26:25], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[0][25] ) );
  NF_CF_1_num26_Co_f0 \Coordinate_function_num1[0].Component_function_num1[26].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[26], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[0]}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({
        1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(
        \CF_Out[0][26] ) );
  NF_CF_1_num0_Co_f1 \Coordinate_function_num1[1].Component_function_num1[0].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[28:27], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 
        1'b0}), .q(\CF_Out[1][0] ) );
  NF_CF_1_num1_Co_f1 \Coordinate_function_num1[1].Component_function_num1[1].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[29:28], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][1] ) );
  NF_CF_1_num2_Co_f1 \Coordinate_function_num1[1].Component_function_num1[2].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[30:29], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][2] ) );
  NF_CF_1_num3_Co_f1 \Coordinate_function_num1[1].Component_function_num1[3].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[31:30], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][3] ) );
  NF_CF_1_num4_Co_f1 \Coordinate_function_num1[1].Component_function_num1[4].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[32:31], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][4] ) );
  NF_CF_1_num5_Co_f1 \Coordinate_function_num1[1].Component_function_num1[5].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, r[33:32], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][5] ) );
  NF_CF_1_num6_Co_f1 \Coordinate_function_num1[1].Component_function_num1[6].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[34:33], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][6] ) );
  NF_CF_1_num7_Co_f1 \Coordinate_function_num1[1].Component_function_num1[7].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[35:34], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][7] ) );
  NF_CF_1_num8_Co_f1 \Coordinate_function_num1[1].Component_function_num1[8].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[36:35], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][8] ) );
  NF_CF_1_num9_Co_f1 \Coordinate_function_num1[1].Component_function_num1[9].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[0]}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[37:36], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][9] ) );
  NF_CF_1_num10_Co_f1 \Coordinate_function_num1[1].Component_function_num1[10].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[38:37], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][10] ) );
  NF_CF_1_num11_Co_f1 \Coordinate_function_num1[1].Component_function_num1[11].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[39:38], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][11] ) );
  NF_CF_1_num12_Co_f1 \Coordinate_function_num1[1].Component_function_num1[12].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[40:39], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][12] ) );
  NF_CF_1_num13_Co_f1 \Coordinate_function_num1[1].Component_function_num1[13].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[41:40], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][13] ) );
  NF_CF_1_num14_Co_f1 \Coordinate_function_num1[1].Component_function_num1[14].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[42:41], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][14] ) );
  NF_CF_1_num15_Co_f1 \Coordinate_function_num1[1].Component_function_num1[15].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[43:42], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][15] ) );
  NF_CF_1_num16_Co_f1 \Coordinate_function_num1[1].Component_function_num1[16].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[44:43], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][16] ) );
  NF_CF_1_num17_Co_f1 \Coordinate_function_num1[1].Component_function_num1[17].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[45:44], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][17] ) );
  NF_CF_1_num18_Co_f1 \Coordinate_function_num1[1].Component_function_num1[18].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[46:45], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 
        1'b0}), .q(\CF_Out[1][18] ) );
  NF_CF_1_num19_Co_f1 \Coordinate_function_num1[1].Component_function_num1[19].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[47:46], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][19] ) );
  NF_CF_1_num20_Co_f1 \Coordinate_function_num1[1].Component_function_num1[20].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[48:47], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][20] ) );
  NF_CF_1_num21_Co_f1 \Coordinate_function_num1[1].Component_function_num1[21].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[3:2], 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[49:48], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][21] ) );
  NF_CF_1_num22_Co_f1 \Coordinate_function_num1[1].Component_function_num1[22].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[4:3], 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[50:49], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][22] ) );
  NF_CF_1_num23_Co_f1 \Coordinate_function_num1[1].Component_function_num1[23].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, TwoSharesFromNeighbouringSbox[5:4], 1'b0, 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[51:50], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][23] ) );
  NF_CF_1_num24_Co_f1 \Coordinate_function_num1[1].Component_function_num1[24].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        TwoSharesFromNeighbouringSbox[6:5], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[52:51], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][24] ) );
  NF_CF_1_num25_Co_f1 \Coordinate_function_num1[1].Component_function_num1[25].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7:6], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[53:52], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out[1][25] ) );
  NF_CF_1_num26_Co_f1 \Coordinate_function_num1[1].Component_function_num1[26].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        TwoSharesFromNeighbouringSbox[7], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[53], 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[27], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), 
        .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), 
        .q(\CF_Out[1][26] ) );
  NF_CF_1_num0_Co_f2 \Coordinate_function_num2[2].Component_function_num2[0].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[55:54], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[2][0] ) );
  NF_CF_1_num1_Co_f2 \Coordinate_function_num2[2].Component_function_num2[1].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[56:55], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[2][1] ) );
  NF_CF_1_num2_Co_f2 \Coordinate_function_num2[2].Component_function_num2[2].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, in1[1]}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2], 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[57:56], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 
        1'b0}), .q(\CF_Out34[2][2] ) );
  NF_CF_1_num3_Co_f2 \Coordinate_function_num2[2].Component_function_num2[3].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[58:57], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[2][3] ) );
  NF_CF_1_num4_Co_f2 \Coordinate_function_num2[2].Component_function_num2[4].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[59:58], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[2][4] ) );
  NF_CF_1_num5_Co_f2 \Coordinate_function_num2[2].Component_function_num2[5].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, in2[1], 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2], 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[60:59], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 
        1'b0}), .q(\CF_Out34[2][5] ) );
  NF_CF_1_num6_Co_f2 \Coordinate_function_num2[2].Component_function_num2[6].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[61:60], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[2][6] ) );
  NF_CF_1_num7_Co_f2 \Coordinate_function_num2[2].Component_function_num2[7].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[62:61], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[2][7] ) );
  NF_CF_1_num8_Co_f2 \Coordinate_function_num2[2].Component_function_num2[8].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({in3[1], 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2], 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[62], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, r[54], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 
        1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 
        1'b0, 1'b0, 1'b0}), .q(\CF_Out34[2][8] ) );
  NF_CF_1_num0_Co_f3 \Coordinate_function_num2[3].Component_function_num2[0].CF_Inst  ( 
        .a({1'b0, 1'b0, in1[0]}), .b({1'b0, 1'b0, 1'b0}), .c({1'b0, 1'b0, 
        in1[2]}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, r[64:63], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3(
        {1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[3][0] ) );
  NF_CF_1_num1_Co_f3 \Coordinate_function_num2[3].Component_function_num2[1].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({1'b0, 1'b0, in1[2]}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .r({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, r[65:64], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({
        1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({
        1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[3][1] ) );
  NF_CF_1_num2_Co_f3 \Coordinate_function_num2[3].Component_function_num2[2].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({1'b0, 1'b0, in1[2]}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2], 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        r[66:65], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 
        1'b0}), .q(\CF_Out34[3][2] ) );
  NF_CF_1_num3_Co_f3 \Coordinate_function_num2[3].Component_function_num2[3].CF_Inst  ( 
        .a({1'b0, in2[0], 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({1'b0, in2[2], 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), 
        .r({1'b0, 1'b0, 1'b0, 1'b0, r[67:66], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[3][3] ) );
  NF_CF_1_num4_Co_f3 \Coordinate_function_num2[3].Component_function_num2[4].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({1'b0, in2[2], 1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .r({1'b0, 1'b0, 
        1'b0, r[68:67], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({
        1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({
        1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[3][4] ) );
  NF_CF_1_num5_Co_f3 \Coordinate_function_num2[3].Component_function_num2[5].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({1'b0, in2[2], 1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2], 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({1'b0, 1'b0, r[69:68], 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 
        1'b0}), .q(\CF_Out34[3][5] ) );
  NF_CF_1_num6_Co_f3 \Coordinate_function_num2[3].Component_function_num2[6].CF_Inst  ( 
        .a({in3[0], 1'b0, 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({in3[2], 1'b0, 
        1'b0}), .d({1'b0, 1'b0, in1[3]}), .TwoSharesFromNeighbouringSbox({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, TwoSharesFromNeighbouringSbox[1:0]}), 
        .r({1'b0, r[70:69], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_1({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 
        1'b0}), .dr1_3({1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[3][6] ) );
  NF_CF_1_num7_Co_f3 \Coordinate_function_num2[3].Component_function_num2[7].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({in3[2], 1'b0, 1'b0}), .d({1'b0, in2[3], 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2:1], 1'b0}), .r({r[71:70], 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({
        1'b0, 1'b0, 1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({
        1'b0, 1'b0, 1'b0, 1'b0}), .q(\CF_Out34[3][7] ) );
  NF_CF_1_num8_Co_f3 \Coordinate_function_num2[3].Component_function_num2[8].CF_Inst  ( 
        .a({1'b0, 1'b0, 1'b0}), .b({1'b0, 1'b0, 1'b0}), .c({in3[2], 1'b0, 1'b0}), .d({in3[3], 1'b0, 1'b0}), .TwoSharesFromNeighbouringSbox({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, TwoSharesFromNeighbouringSbox[2], 1'b0, 
        TwoSharesFromNeighbouringSbox[0]}), .r({r[71], 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, r[63], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dr1_1({1'b0, 1'b0, 
        1'b0, 1'b0}), .dr1_2({1'b0, 1'b0, 1'b0, 1'b0}), .dr1_3({1'b0, 1'b0, 
        1'b0, 1'b0}), .q(\CF_Out34[3][8] ) );
  XOR_n_WIDTH9_0 \InstXOR_LSB[0].Compression0_LSB  ( .x({\CF_Reg[0][8] , 
        \CF_Reg[0][7] , \CF_Reg[0][6] , \CF_Reg[0][5] , \CF_Reg[0][4] , 
        \CF_Reg[0][3] , \CF_Reg[0][2] , \CF_Reg[0][1] , \CF_Reg[0][0] }), .q(
        out1[0]) );
  XOR_n_WIDTH9_5 \InstXOR_LSB[0].Compression1_LSB  ( .x({\CF_Reg[0][17] , 
        \CF_Reg[0][16] , \CF_Reg[0][15] , \CF_Reg[0][14] , \CF_Reg[0][13] , 
        \CF_Reg[0][12] , \CF_Reg[0][11] , \CF_Reg[0][10] , \CF_Reg[0][9] }), 
        .q(out2[0]) );
  XOR_n_WIDTH9_4 \InstXOR_LSB[0].Compression2_LSB  ( .x({\CF_Reg[0][26] , 
        \CF_Reg[0][25] , \CF_Reg[0][24] , \CF_Reg[0][23] , \CF_Reg[0][22] , 
        \CF_Reg[0][21] , \CF_Reg[0][20] , \CF_Reg[0][19] , \CF_Reg[0][18] }), 
        .q(out3[0]) );
  XOR_n_WIDTH9_3 \InstXOR_LSB[1].Compression0_LSB  ( .x({\CF_Reg[1][8] , 
        \CF_Reg[1][7] , \CF_Reg[1][6] , \CF_Reg[1][5] , \CF_Reg[1][4] , 
        \CF_Reg[1][3] , \CF_Reg[1][2] , \CF_Reg[1][1] , \CF_Reg[1][0] }), .q(
        out1[1]) );
  XOR_n_WIDTH9_2 \InstXOR_LSB[1].Compression1_LSB  ( .x({\CF_Reg[1][17] , 
        \CF_Reg[1][16] , \CF_Reg[1][15] , \CF_Reg[1][14] , \CF_Reg[1][13] , 
        \CF_Reg[1][12] , \CF_Reg[1][11] , \CF_Reg[1][10] , \CF_Reg[1][9] }), 
        .q(out2[1]) );
  XOR_n_WIDTH9_1 \InstXOR_LSB[1].Compression2_LSB  ( .x({\CF_Reg[1][26] , 
        \CF_Reg[1][25] , \CF_Reg[1][24] , \CF_Reg[1][23] , \CF_Reg[1][22] , 
        \CF_Reg[1][21] , \CF_Reg[1][20] , \CF_Reg[1][19] , \CF_Reg[1][18] }), 
        .q(out3[1]) );
  XOR_n_WIDTH3_0 \InstXOR_MSB[2].Compression0_MSB  ( .x({\CF_Reg34[2][2] , 
        \CF_Reg34[2][1] , \CF_Reg34[2][0] }), .q(out1[2]) );
  XOR_n_WIDTH3_5 \InstXOR_MSB[2].Compression1_MSB  ( .x({\CF_Reg34[2][5] , 
        \CF_Reg34[2][4] , \CF_Reg34[2][3] }), .q(out2[2]) );
  XOR_n_WIDTH3_4 \InstXOR_MSB[2].Compression2_MSB  ( .x({\CF_Reg34[2][8] , 
        \CF_Reg34[2][7] , \CF_Reg34[2][6] }), .q(out3[2]) );
  XOR_n_WIDTH3_3 \InstXOR_MSB[3].Compression0_MSB  ( .x({\CF_Reg34[3][2] , 
        \CF_Reg34[3][1] , \CF_Reg34[3][0] }), .q(out1[3]) );
  XOR_n_WIDTH3_2 \InstXOR_MSB[3].Compression1_MSB  ( .x({\CF_Reg34[3][5] , 
        \CF_Reg34[3][4] , \CF_Reg34[3][3] }), .q(out2[3]) );
  XOR_n_WIDTH3_1 \InstXOR_MSB[3].Compression2_MSB  ( .x({\CF_Reg34[3][8] , 
        \CF_Reg34[3][7] , \CF_Reg34[3][6] }), .q(out3[3]) );
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
  DFF_X1 \CF_Reg34_reg[3][8]  ( .D(\CF_Out34[3][8] ), .CK(clk), .Q(
        \CF_Reg34[3][8] ) );
  DFF_X1 \CF_Reg34_reg[3][7]  ( .D(\CF_Out34[3][7] ), .CK(clk), .Q(
        \CF_Reg34[3][7] ) );
  DFF_X1 \CF_Reg34_reg[3][6]  ( .D(\CF_Out34[3][6] ), .CK(clk), .Q(
        \CF_Reg34[3][6] ) );
  DFF_X1 \CF_Reg34_reg[3][5]  ( .D(\CF_Out34[3][5] ), .CK(clk), .Q(
        \CF_Reg34[3][5] ) );
  DFF_X1 \CF_Reg34_reg[3][4]  ( .D(\CF_Out34[3][4] ), .CK(clk), .Q(
        \CF_Reg34[3][4] ) );
  DFF_X1 \CF_Reg34_reg[3][3]  ( .D(\CF_Out34[3][3] ), .CK(clk), .Q(
        \CF_Reg34[3][3] ) );
  DFF_X1 \CF_Reg34_reg[3][2]  ( .D(\CF_Out34[3][2] ), .CK(clk), .Q(
        \CF_Reg34[3][2] ) );
  DFF_X1 \CF_Reg34_reg[3][1]  ( .D(\CF_Out34[3][1] ), .CK(clk), .Q(
        \CF_Reg34[3][1] ) );
  DFF_X1 \CF_Reg34_reg[3][0]  ( .D(\CF_Out34[3][0] ), .CK(clk), .Q(
        \CF_Reg34[3][0] ) );
  DFF_X1 \CF_Reg34_reg[2][8]  ( .D(\CF_Out34[2][8] ), .CK(clk), .Q(
        \CF_Reg34[2][8] ) );
  DFF_X1 \CF_Reg34_reg[2][7]  ( .D(\CF_Out34[2][7] ), .CK(clk), .Q(
        \CF_Reg34[2][7] ) );
  DFF_X1 \CF_Reg34_reg[2][6]  ( .D(\CF_Out34[2][6] ), .CK(clk), .Q(
        \CF_Reg34[2][6] ) );
  DFF_X1 \CF_Reg34_reg[2][5]  ( .D(\CF_Out34[2][5] ), .CK(clk), .Q(
        \CF_Reg34[2][5] ) );
  DFF_X1 \CF_Reg34_reg[2][4]  ( .D(\CF_Out34[2][4] ), .CK(clk), .Q(
        \CF_Reg34[2][4] ) );
  DFF_X1 \CF_Reg34_reg[2][3]  ( .D(\CF_Out34[2][3] ), .CK(clk), .Q(
        \CF_Reg34[2][3] ) );
  DFF_X1 \CF_Reg34_reg[2][2]  ( .D(\CF_Out34[2][2] ), .CK(clk), .Q(
        \CF_Reg34[2][2] ) );
  DFF_X1 \CF_Reg34_reg[2][1]  ( .D(\CF_Out34[2][1] ), .CK(clk), .Q(
        \CF_Reg34[2][1] ) );
  DFF_X1 \CF_Reg34_reg[2][0]  ( .D(\CF_Out34[2][0] ), .CK(clk), .Q(
        \CF_Reg34[2][0] ) );
endmodule

