/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Fri May  5 07:16:47 2023
/////////////////////////////////////////////////////////////


module gf22mul_scaling_0 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  XNOR2_X1 U1 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U2 ( .A(in0[1]), .B(in0[0]), .ZN(n6) );
  NOR2_X1 U3 ( .A1(n7), .A2(n6), .ZN(n8) );
  NAND2_X1 U4 ( .A1(in1[0]), .A2(in0[0]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(n8), .B(n10), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in1[1]), .A2(in0[1]), .ZN(n9) );
  XOR2_X1 U7 ( .A(n10), .B(n9), .Z(out0[0]) );
endmodule


module gf22mul_0 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf22mul_7 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf24mul_0 ( in0, in1, out0 );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out0;

  wire   [1:0] a1;
  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scaling_0 mul0 ( .in0(a1), .in1(a0), .out0(p2) );
  gf22mul_0 mul1 ( .in0(in0[3:2]), .in1(in1[3:2]), .out0(p1) );
  gf22mul_7 mul2 ( .in0(in0[1:0]), .in1(in1[1:0]), .out0(p0) );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in1[1]), .B(in1[3]), .Z(a1[1]) );
  XOR2_X1 U6 ( .A(in1[0]), .B(in1[2]), .Z(a1[0]) );
  XOR2_X1 U7 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U8 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module SqSc_0 ( in0, out0 );
  input [3:0] in0;
  output [3:0] out0;


  XOR2_X1 U1 ( .A(in0[0]), .B(in0[2]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(in0[1]), .B(in0[3]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .Z(out0[1]) );
endmodule


module gf22mul_1 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf22mul_2 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf22mul_scaling_1 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  XNOR2_X1 U1 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U2 ( .A(in0[1]), .B(in0[0]), .ZN(n6) );
  NOR2_X1 U3 ( .A1(n7), .A2(n6), .ZN(n8) );
  NAND2_X1 U4 ( .A1(in1[0]), .A2(in0[0]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(n8), .B(n10), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in1[1]), .A2(in0[1]), .ZN(n9) );
  XOR2_X1 U7 ( .A(n10), .B(n9), .Z(out0[0]) );
endmodule


module gf24mul_1 ( in0, in1, out0 );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out0;

  wire   [1:0] a1;
  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scaling_1 mul0 ( .in0(a1), .in1(a0), .out0(p2) );
  gf22mul_2 mul1 ( .in0(in0[3:2]), .in1(in1[3:2]), .out0(p1) );
  gf22mul_1 mul2 ( .in0(in0[1:0]), .in1(in1[1:0]), .out0(p0) );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in1[1]), .B(in1[3]), .Z(a1[1]) );
  XOR2_X1 U6 ( .A(in1[0]), .B(in1[2]), .Z(a1[0]) );
  XOR2_X1 U7 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U8 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_3 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf22mul_4 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf22mul_scaling_2 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  XNOR2_X1 U1 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U2 ( .A(in0[1]), .B(in0[0]), .ZN(n6) );
  NOR2_X1 U3 ( .A1(n7), .A2(n6), .ZN(n8) );
  NAND2_X1 U4 ( .A1(in1[0]), .A2(in0[0]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(n8), .B(n10), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in1[1]), .A2(in0[1]), .ZN(n9) );
  XOR2_X1 U7 ( .A(n10), .B(n9), .Z(out0[0]) );
endmodule


module gf24mul_2 ( in0, in1, out0 );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out0;

  wire   [1:0] a1;
  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scaling_2 mul0 ( .in0(a1), .in1(a0), .out0(p2) );
  gf22mul_4 mul1 ( .in0(in0[3:2]), .in1(in1[3:2]), .out0(p1) );
  gf22mul_3 mul2 ( .in0(in0[1:0]), .in1(in1[1:0]), .out0(p0) );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in1[1]), .B(in1[3]), .Z(a1[1]) );
  XOR2_X1 U6 ( .A(in1[0]), .B(in1[2]), .Z(a1[0]) );
  XOR2_X1 U7 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U8 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_5 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf22mul_6 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  NAND2_X1 U1 ( .A1(in0[1]), .A2(in1[1]), .ZN(n8) );
  XNOR2_X1 U2 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n9) );
  XNOR2_X1 U5 ( .A(n8), .B(n9), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in0[0]), .A2(in1[0]), .ZN(n10) );
  XNOR2_X1 U7 ( .A(n10), .B(n9), .ZN(out0[0]) );
endmodule


module gf22mul_scaling_3 ( in0, in1, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  wire   n6, n7, n8, n9, n10;

  XNOR2_X1 U1 ( .A(in1[0]), .B(in1[1]), .ZN(n7) );
  XNOR2_X1 U2 ( .A(in0[1]), .B(in0[0]), .ZN(n6) );
  NOR2_X1 U3 ( .A1(n7), .A2(n6), .ZN(n8) );
  NAND2_X1 U4 ( .A1(in1[0]), .A2(in0[0]), .ZN(n10) );
  XNOR2_X1 U5 ( .A(n8), .B(n10), .ZN(out0[1]) );
  NAND2_X1 U6 ( .A1(in1[1]), .A2(in0[1]), .ZN(n9) );
  XOR2_X1 U7 ( .A(n10), .B(n9), .Z(out0[0]) );
endmodule


module gf24mul_3 ( in0, in1, out0 );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out0;

  wire   [1:0] a1;
  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scaling_3 mul0 ( .in0(a1), .in1(a0), .out0(p2) );
  gf22mul_6 mul1 ( .in0(in0[3:2]), .in1(in1[3:2]), .out0(p1) );
  gf22mul_5 mul2 ( .in0(in0[1:0]), .in1(in1[1:0]), .out0(p0) );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in1[1]), .B(in1[3]), .Z(a1[1]) );
  XOR2_X1 U6 ( .A(in1[0]), .B(in1[2]), .Z(a1[0]) );
  XOR2_X1 U7 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U8 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module SqSc_1 ( in0, out0 );
  input [3:0] in0;
  output [3:0] out0;


  XOR2_X1 U1 ( .A(in0[0]), .B(in0[2]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(in0[1]), .B(in0[3]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(in0[0]), .B(in0[1]), .Z(out0[1]) );
endmodule


module Stage1 ( in00, in01, in10, in11, out0, out1, out2, out3, r0, r1, r2 );
  input [3:0] in00;
  input [3:0] in01;
  input [3:0] in10;
  input [3:0] in11;
  output [3:0] out0;
  output [3:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  input [3:0] r0;
  input [3:0] r1;
  input [3:0] r2;
  wire   \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , \_1_net_[3] ,
         \_1_net_[2] , \_1_net_[1] , \_1_net_[0] , n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32;
  wire   [3:0] p0;
  wire   [3:0] p1;
  wire   [3:0] p2;
  wire   [3:0] p3;
  wire   [3:0] s0;
  wire   [3:0] s1;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  gf24mul_0 mul0 ( .in0(in00), .in1(in10), .out0(p0) );
  gf24mul_3 mul1 ( .in0(in00), .in1(in11), .out0(p1) );
  gf24mul_2 mul2 ( .in0(in01), .in1(in10), .out0(p2) );
  gf24mul_1 mul3 ( .in0(in01), .in1(in11), .out0(p3) );
  SqSc_0 SqSc0 ( .in0({\_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] }), .out0({s0[3:1], SYNOPSYS_UNCONNECTED__0}) );
  SqSc_1 SqSc1 ( .in0({\_1_net_[3] , \_1_net_[2] , \_1_net_[1] , \_1_net_[0] }), .out0({s1[3:1], SYNOPSYS_UNCONNECTED__1}) );
  XNOR2_X1 U1 ( .A(r2[3]), .B(p3[3]), .ZN(n17) );
  XNOR2_X1 U2 ( .A(n17), .B(s1[3]), .ZN(out3[3]) );
  XNOR2_X1 U3 ( .A(r2[2]), .B(p3[2]), .ZN(n18) );
  XNOR2_X1 U4 ( .A(n18), .B(s1[2]), .ZN(out3[2]) );
  XNOR2_X1 U5 ( .A(r2[1]), .B(p3[1]), .ZN(n19) );
  XNOR2_X1 U6 ( .A(n19), .B(s1[1]), .ZN(out3[1]) );
  XOR2_X1 U7 ( .A(in01[0]), .B(in11[0]), .Z(\_1_net_[0] ) );
  XNOR2_X1 U8 ( .A(\_1_net_[0] ), .B(r2[0]), .ZN(n20) );
  XNOR2_X1 U9 ( .A(n20), .B(p3[0]), .ZN(out3[0]) );
  XOR2_X1 U10 ( .A(p2[3]), .B(r1[3]), .Z(n22) );
  XNOR2_X1 U11 ( .A(r2[3]), .B(r0[3]), .ZN(n21) );
  XNOR2_X1 U12 ( .A(n22), .B(n21), .ZN(out2[3]) );
  XOR2_X1 U13 ( .A(p2[2]), .B(r1[2]), .Z(n24) );
  XNOR2_X1 U14 ( .A(r2[2]), .B(r0[2]), .ZN(n23) );
  XNOR2_X1 U15 ( .A(n24), .B(n23), .ZN(out2[2]) );
  XOR2_X1 U16 ( .A(p2[1]), .B(r1[1]), .Z(n26) );
  XNOR2_X1 U17 ( .A(r2[1]), .B(r0[1]), .ZN(n25) );
  XNOR2_X1 U18 ( .A(n26), .B(n25), .ZN(out2[1]) );
  XOR2_X1 U19 ( .A(p2[0]), .B(r1[0]), .Z(n28) );
  XNOR2_X1 U20 ( .A(r2[0]), .B(r0[0]), .ZN(n27) );
  XNOR2_X1 U21 ( .A(n28), .B(n27), .ZN(out2[0]) );
  XOR2_X1 U22 ( .A(r1[3]), .B(p1[3]), .Z(out1[3]) );
  XOR2_X1 U23 ( .A(r1[2]), .B(p1[2]), .Z(out1[2]) );
  XOR2_X1 U24 ( .A(r1[1]), .B(p1[1]), .Z(out1[1]) );
  XOR2_X1 U25 ( .A(r1[0]), .B(p1[0]), .Z(out1[0]) );
  XNOR2_X1 U26 ( .A(r0[3]), .B(p0[3]), .ZN(n29) );
  XNOR2_X1 U27 ( .A(n29), .B(s0[3]), .ZN(out0[3]) );
  XNOR2_X1 U28 ( .A(r0[2]), .B(p0[2]), .ZN(n30) );
  XNOR2_X1 U29 ( .A(n30), .B(s0[2]), .ZN(out0[2]) );
  XNOR2_X1 U30 ( .A(r0[1]), .B(p0[1]), .ZN(n31) );
  XNOR2_X1 U31 ( .A(n31), .B(s0[1]), .ZN(out0[1]) );
  XOR2_X1 U32 ( .A(in00[0]), .B(in10[0]), .Z(\_0_net_[0] ) );
  XNOR2_X1 U33 ( .A(r0[0]), .B(\_0_net_[0] ), .ZN(n32) );
  XNOR2_X1 U34 ( .A(n32), .B(p0[0]), .ZN(out0[0]) );
  XOR2_X1 U35 ( .A(in01[3]), .B(in11[3]), .Z(\_1_net_[3] ) );
  XOR2_X1 U36 ( .A(in01[2]), .B(in11[2]), .Z(\_1_net_[2] ) );
  XOR2_X1 U37 ( .A(in01[1]), .B(in11[1]), .Z(\_1_net_[1] ) );
  XOR2_X1 U38 ( .A(in00[3]), .B(in10[3]), .Z(\_0_net_[3] ) );
  XOR2_X1 U39 ( .A(in00[2]), .B(in10[2]), .Z(\_0_net_[2] ) );
  XOR2_X1 U40 ( .A(in00[1]), .B(in10[1]), .Z(\_0_net_[1] ) );
endmodule


module Stage2 ( in0, in1, in2, in3, out0, out1, out2, out3, out4, out5, out6, 
        out7, r0, r1, r2, r3, r4, r5, r6 );
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  output [3:0] out0;
  output [3:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  output [3:0] out4;
  output [3:0] out5;
  output [3:0] out6;
  output [3:0] out7;
  input [3:0] r0;
  input [3:0] r1;
  input [3:0] r2;
  input [3:0] r3;
  input [3:0] r4;
  input [3:0] r5;
  input [3:0] r6;
  wire   n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259;

  XNOR2_X1 U1 ( .A(in2[2]), .B(in3[2]), .ZN(n237) );
  XNOR2_X1 U2 ( .A(in2[1]), .B(in3[1]), .ZN(n224) );
  NOR2_X1 U3 ( .A1(n237), .A2(n224), .ZN(n144) );
  XOR2_X1 U4 ( .A(in2[0]), .B(in3[0]), .Z(n214) );
  NOR2_X1 U5 ( .A1(n144), .A2(n214), .ZN(n151) );
  XOR2_X1 U6 ( .A(r5[3]), .B(r4[3]), .Z(n146) );
  XNOR2_X1 U7 ( .A(r2[3]), .B(r3[3]), .ZN(n145) );
  XNOR2_X1 U8 ( .A(n146), .B(n145), .ZN(n147) );
  XOR2_X1 U9 ( .A(n147), .B(r6[3]), .Z(n149) );
  XNOR2_X1 U10 ( .A(r0[3]), .B(r1[3]), .ZN(n148) );
  XNOR2_X1 U11 ( .A(n149), .B(n148), .ZN(n150) );
  XNOR2_X1 U12 ( .A(n151), .B(n150), .ZN(out7[3]) );
  XOR2_X1 U13 ( .A(in2[3]), .B(in3[3]), .Z(n249) );
  INV_X1 U14 ( .A(n249), .ZN(n243) );
  NOR2_X1 U15 ( .A1(n243), .A2(n224), .ZN(n208) );
  NOR2_X1 U16 ( .A1(n208), .A2(n214), .ZN(n158) );
  XOR2_X1 U17 ( .A(r3[2]), .B(r4[2]), .Z(n153) );
  XNOR2_X1 U18 ( .A(r5[2]), .B(r2[2]), .ZN(n152) );
  XNOR2_X1 U19 ( .A(n153), .B(n152), .ZN(n154) );
  XOR2_X1 U20 ( .A(n154), .B(r6[2]), .Z(n156) );
  XNOR2_X1 U21 ( .A(r0[2]), .B(r1[2]), .ZN(n155) );
  XNOR2_X1 U22 ( .A(n156), .B(n155), .ZN(n157) );
  XNOR2_X1 U23 ( .A(n158), .B(n157), .ZN(out7[2]) );
  XOR2_X1 U24 ( .A(r2[1]), .B(r3[1]), .Z(n160) );
  XNOR2_X1 U25 ( .A(r5[1]), .B(r4[1]), .ZN(n159) );
  XNOR2_X1 U26 ( .A(n160), .B(n159), .ZN(n161) );
  XOR2_X1 U27 ( .A(n161), .B(r6[1]), .Z(n163) );
  XNOR2_X1 U28 ( .A(r0[1]), .B(r1[1]), .ZN(n162) );
  XNOR2_X1 U29 ( .A(n163), .B(n162), .ZN(n164) );
  NAND2_X1 U30 ( .A1(n214), .A2(n249), .ZN(n217) );
  NAND2_X1 U31 ( .A1(n237), .A2(n217), .ZN(n182) );
  XOR2_X1 U32 ( .A(n164), .B(n182), .Z(out7[1]) );
  INV_X1 U33 ( .A(n237), .ZN(n234) );
  NOR2_X1 U34 ( .A1(n208), .A2(n234), .ZN(n171) );
  XOR2_X1 U35 ( .A(r5[0]), .B(r4[0]), .Z(n166) );
  XNOR2_X1 U36 ( .A(r2[0]), .B(r3[0]), .ZN(n165) );
  XNOR2_X1 U37 ( .A(n166), .B(n165), .ZN(n167) );
  XOR2_X1 U38 ( .A(n167), .B(r6[0]), .Z(n169) );
  XNOR2_X1 U39 ( .A(r1[0]), .B(r0[0]), .ZN(n168) );
  XNOR2_X1 U40 ( .A(n169), .B(n168), .ZN(n170) );
  XNOR2_X1 U41 ( .A(n171), .B(n170), .ZN(out7[0]) );
  NOR2_X1 U42 ( .A1(n214), .A2(n224), .ZN(n172) );
  XOR2_X1 U43 ( .A(in0[2]), .B(in1[2]), .Z(n258) );
  NAND2_X1 U44 ( .A1(n172), .A2(n258), .ZN(n173) );
  XNOR2_X1 U45 ( .A(n173), .B(r6[3]), .ZN(out6[3]) );
  XNOR2_X1 U46 ( .A(in0[3]), .B(in1[3]), .ZN(n231) );
  NOR2_X1 U47 ( .A1(n224), .A2(n231), .ZN(n200) );
  INV_X1 U48 ( .A(n214), .ZN(n174) );
  NAND2_X1 U49 ( .A1(n200), .A2(n174), .ZN(n175) );
  XNOR2_X1 U50 ( .A(r6[2]), .B(n175), .ZN(out6[2]) );
  INV_X1 U51 ( .A(n231), .ZN(n204) );
  NAND2_X1 U52 ( .A1(n214), .A2(n204), .ZN(n177) );
  NOR2_X1 U53 ( .A1(n234), .A2(n177), .ZN(n176) );
  XOR2_X1 U54 ( .A(r6[1]), .B(n176), .Z(out6[1]) );
  NAND2_X1 U55 ( .A1(n237), .A2(n200), .ZN(n178) );
  XNOR2_X1 U56 ( .A(n178), .B(n177), .ZN(n179) );
  XNOR2_X1 U57 ( .A(r6[0]), .B(n179), .ZN(out6[0]) );
  NAND2_X1 U58 ( .A1(n234), .A2(n214), .ZN(n184) );
  XNOR2_X1 U59 ( .A(n184), .B(n231), .ZN(n180) );
  XOR2_X1 U60 ( .A(in0[1]), .B(in1[1]), .Z(n239) );
  NAND2_X1 U61 ( .A1(n180), .A2(n239), .ZN(n181) );
  XNOR2_X1 U62 ( .A(r5[3]), .B(n181), .ZN(out5[3]) );
  NAND2_X1 U63 ( .A1(n182), .A2(n239), .ZN(n183) );
  NAND2_X1 U64 ( .A1(n183), .A2(n184), .ZN(n187) );
  NOR2_X1 U65 ( .A1(n249), .A2(n184), .ZN(n185) );
  NAND2_X1 U66 ( .A1(n185), .A2(n239), .ZN(n186) );
  NAND2_X1 U67 ( .A1(n187), .A2(n186), .ZN(n188) );
  XNOR2_X1 U68 ( .A(r5[2]), .B(n188), .ZN(out5[2]) );
  NAND2_X1 U69 ( .A1(n214), .A2(n258), .ZN(n192) );
  XNOR2_X1 U70 ( .A(n224), .B(n192), .ZN(n198) );
  NAND2_X1 U71 ( .A1(n249), .A2(n198), .ZN(n189) );
  XNOR2_X1 U72 ( .A(r5[1]), .B(n189), .ZN(out5[1]) );
  XNOR2_X1 U73 ( .A(n192), .B(r5[0]), .ZN(n191) );
  NAND2_X1 U74 ( .A1(n208), .A2(n258), .ZN(n190) );
  XNOR2_X1 U75 ( .A(n191), .B(n190), .ZN(out5[0]) );
  INV_X1 U76 ( .A(n239), .ZN(n246) );
  NOR2_X1 U77 ( .A1(n246), .A2(n243), .ZN(n241) );
  XNOR2_X1 U78 ( .A(n241), .B(r4[3]), .ZN(n194) );
  NOR2_X1 U79 ( .A1(n192), .A2(n246), .ZN(n193) );
  XNOR2_X1 U80 ( .A(n194), .B(n193), .ZN(out4[3]) );
  INV_X1 U81 ( .A(n258), .ZN(n222) );
  NOR2_X1 U82 ( .A1(n246), .A2(n231), .ZN(n257) );
  XNOR2_X1 U83 ( .A(n222), .B(n257), .ZN(n195) );
  NAND2_X1 U84 ( .A1(n195), .A2(n214), .ZN(n196) );
  XNOR2_X1 U85 ( .A(n196), .B(r4[2]), .ZN(n197) );
  NAND2_X1 U86 ( .A1(n239), .A2(n258), .ZN(n252) );
  XNOR2_X1 U87 ( .A(n197), .B(n252), .ZN(out4[2]) );
  NOR2_X1 U88 ( .A1(n231), .A2(n198), .ZN(n199) );
  XOR2_X1 U89 ( .A(r4[1]), .B(n199), .Z(out4[1]) );
  XNOR2_X1 U90 ( .A(in0[0]), .B(in1[0]), .ZN(n251) );
  NOR2_X1 U91 ( .A1(n251), .A2(n231), .ZN(n227) );
  XOR2_X1 U92 ( .A(n200), .B(n251), .Z(n201) );
  NOR2_X1 U93 ( .A1(n222), .A2(n201), .ZN(n202) );
  XNOR2_X1 U94 ( .A(n202), .B(r4[0]), .ZN(n203) );
  XNOR2_X1 U95 ( .A(n227), .B(n203), .ZN(out4[0]) );
  INV_X1 U96 ( .A(n251), .ZN(n254) );
  NAND2_X1 U97 ( .A1(n234), .A2(n254), .ZN(n212) );
  XOR2_X1 U98 ( .A(n204), .B(n212), .Z(n205) );
  NOR2_X1 U99 ( .A1(n224), .A2(n205), .ZN(n206) );
  XOR2_X1 U100 ( .A(r3[3]), .B(n206), .Z(out3[3]) );
  XNOR2_X1 U101 ( .A(n254), .B(n224), .ZN(n207) );
  NAND2_X1 U102 ( .A1(n207), .A2(n234), .ZN(n210) );
  NAND2_X1 U103 ( .A1(n254), .A2(n208), .ZN(n209) );
  NAND2_X1 U104 ( .A1(n210), .A2(n209), .ZN(n211) );
  XOR2_X1 U105 ( .A(r3[2]), .B(n211), .Z(out3[2]) );
  XNOR2_X1 U106 ( .A(n239), .B(n212), .ZN(n232) );
  NAND2_X1 U107 ( .A1(n232), .A2(n249), .ZN(n213) );
  XNOR2_X1 U108 ( .A(n213), .B(r3[1]), .ZN(out3[1]) );
  XNOR2_X1 U109 ( .A(n214), .B(n241), .ZN(n215) );
  NOR2_X1 U110 ( .A1(n215), .A2(n237), .ZN(n216) );
  XNOR2_X1 U111 ( .A(n216), .B(r3[0]), .ZN(n218) );
  XOR2_X1 U112 ( .A(n218), .B(n217), .Z(out3[0]) );
  NAND2_X1 U113 ( .A1(n258), .A2(n254), .ZN(n225) );
  XOR2_X1 U114 ( .A(n225), .B(n243), .Z(n219) );
  NOR2_X1 U115 ( .A1(n224), .A2(n219), .ZN(n220) );
  XOR2_X1 U116 ( .A(r2[3]), .B(n220), .Z(out2[3]) );
  INV_X1 U117 ( .A(n227), .ZN(n221) );
  NOR2_X1 U118 ( .A1(n222), .A2(n221), .ZN(n223) );
  NOR2_X1 U119 ( .A1(n224), .A2(n223), .ZN(n226) );
  XNOR2_X1 U120 ( .A(n226), .B(n225), .ZN(n229) );
  NOR2_X1 U121 ( .A1(n258), .A2(n227), .ZN(n256) );
  INV_X1 U122 ( .A(n256), .ZN(n228) );
  NAND2_X1 U123 ( .A1(n229), .A2(n228), .ZN(n230) );
  XNOR2_X1 U124 ( .A(r2[2]), .B(n230), .ZN(out2[2]) );
  NOR2_X1 U125 ( .A1(n232), .A2(n231), .ZN(n233) );
  XOR2_X1 U126 ( .A(r2[1]), .B(n233), .Z(out2[1]) );
  XNOR2_X1 U127 ( .A(n251), .B(n257), .ZN(n235) );
  NAND2_X1 U128 ( .A1(n235), .A2(n234), .ZN(n236) );
  XNOR2_X1 U129 ( .A(n236), .B(r2[0]), .ZN(out2[0]) );
  NOR2_X1 U130 ( .A1(n237), .A2(n254), .ZN(n238) );
  NAND2_X1 U131 ( .A1(n239), .A2(n238), .ZN(n240) );
  XNOR2_X1 U132 ( .A(r1[3]), .B(n240), .ZN(out1[3]) );
  NAND2_X1 U133 ( .A1(n241), .A2(n251), .ZN(n242) );
  XNOR2_X1 U134 ( .A(r1[2]), .B(n242), .ZN(out1[2]) );
  NOR2_X1 U135 ( .A1(n243), .A2(n258), .ZN(n244) );
  NAND2_X1 U136 ( .A1(n254), .A2(n244), .ZN(n245) );
  XNOR2_X1 U137 ( .A(r1[1]), .B(n245), .ZN(out1[1]) );
  NOR2_X1 U138 ( .A1(n258), .A2(n246), .ZN(n247) );
  XNOR2_X1 U139 ( .A(n247), .B(n251), .ZN(n248) );
  NAND2_X1 U140 ( .A1(n249), .A2(n248), .ZN(n250) );
  XNOR2_X1 U141 ( .A(r1[0]), .B(n250), .ZN(out1[0]) );
  NAND2_X1 U142 ( .A1(n252), .A2(n251), .ZN(n253) );
  XOR2_X1 U143 ( .A(r0[3]), .B(n253), .Z(out0[3]) );
  NOR2_X1 U144 ( .A1(n254), .A2(n257), .ZN(n255) );
  XNOR2_X1 U145 ( .A(n255), .B(r0[2]), .ZN(out0[2]) );
  XNOR2_X1 U146 ( .A(n256), .B(r0[1]), .ZN(out0[1]) );
  NOR2_X1 U147 ( .A1(n258), .A2(n257), .ZN(n259) );
  XNOR2_X1 U148 ( .A(n259), .B(r0[0]), .ZN(out0[0]) );
endmodule


module gf22mul_scl_factoring_0 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_0 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_15 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_0 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_0 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_0 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1)
         );
  gf22mul_factoring_15 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0) );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_factoring_1 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_2 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_scl_factoring_1 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_1 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_1 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_2 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1)
         );
  gf22mul_factoring_1 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0)
         );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_factoring_3 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_4 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_scl_factoring_2 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_2 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_2 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_4 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1)
         );
  gf22mul_factoring_3 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0)
         );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_factoring_5 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_6 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_scl_factoring_3 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_3 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_3 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_6 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1)
         );
  gf22mul_factoring_5 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0)
         );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_factoring_7 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_8 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_scl_factoring_4 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_4 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_4 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_8 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1)
         );
  gf22mul_factoring_7 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0)
         );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_factoring_9 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_10 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_scl_factoring_5 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_5 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_5 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_10 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1) );
  gf22mul_factoring_9 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0)
         );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_factoring_11 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_12 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_scl_factoring_6 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_6 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_6 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_12 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1) );
  gf22mul_factoring_11 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0) );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module gf22mul_factoring_13 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_factoring_14 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  XOR2_X1 U1 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U2 ( .A1(f), .A2(n5), .ZN(n8) );
  NAND2_X1 U3 ( .A1(in1[1]), .A2(in0[1]), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[0]), .A2(in0[0]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf22mul_scl_factoring_7 ( in0, in1, f, out0 );
  input [1:0] in0;
  input [1:0] in1;
  output [1:0] out0;
  input f;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(in0[0]), .A2(in1[0]), .ZN(n8) );
  XOR2_X1 U2 ( .A(in0[0]), .B(in0[1]), .Z(n5) );
  NAND2_X1 U3 ( .A1(n5), .A2(f), .ZN(n6) );
  XOR2_X1 U4 ( .A(n8), .B(n6), .Z(out0[1]) );
  NAND2_X1 U5 ( .A1(in1[1]), .A2(in0[1]), .ZN(n7) );
  XOR2_X1 U6 ( .A(n8), .B(n7), .Z(out0[0]) );
endmodule


module gf24mul_factoring_7 ( in0, in1, ff, f, h, l, out0 );
  input [3:0] in0;
  input [3:0] in1;
  input [1:0] ff;
  output [3:0] out0;
  input f, h, l;

  wire   [1:0] a0;
  wire   [1:0] p2;
  wire   [1:0] p1;
  wire   [1:0] p0;

  gf22mul_scl_factoring_7 mulf0 ( .in0(a0), .in1(ff), .f(f), .out0(p2) );
  gf22mul_factoring_14 mulf1 ( .in0(in0[3:2]), .in1(in1[3:2]), .f(h), .out0(p1) );
  gf22mul_factoring_13 mulf2 ( .in0(in0[1:0]), .in1(in1[1:0]), .f(l), .out0(p0) );
  XOR2_X1 U1 ( .A(p2[1]), .B(p1[1]), .Z(out0[3]) );
  XOR2_X1 U2 ( .A(p2[0]), .B(p1[0]), .Z(out0[2]) );
  XOR2_X1 U3 ( .A(p2[1]), .B(p0[1]), .Z(out0[1]) );
  XOR2_X1 U4 ( .A(p2[0]), .B(p0[0]), .Z(out0[0]) );
  XOR2_X1 U5 ( .A(in0[1]), .B(in0[3]), .Z(a0[1]) );
  XOR2_X1 U6 ( .A(in0[0]), .B(in0[2]), .Z(a0[0]) );
endmodule


module Stage3 ( inh0, inh1, inl0, inl1, in0, in1, in2, in3, in4, in5, in6, in7, 
        out0, out1, out2, out3, out4, out5, out6, out7, r0, r1, r2, r3, r4, r5
 );
  input [3:0] inh0;
  input [3:0] inh1;
  input [3:0] inl0;
  input [3:0] inl1;
  input [3:0] in0;
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [3:0] in4;
  input [3:0] in5;
  input [3:0] in6;
  input [3:0] in7;
  output [3:0] out0;
  output [3:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  output [3:0] out4;
  output [3:0] out5;
  output [3:0] out6;
  output [3:0] out7;
  input [3:0] r0;
  input [3:0] r1;
  input [3:0] r2;
  input [3:0] r3;
  input [3:0] r4;
  input [3:0] r5;
  wire   f0, l0, h0, f1, l1, h1, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76;
  wire   [3:0] z0;
  wire   [3:0] z1;
  wire   [3:0] z2;
  wire   [3:0] z3;
  wire   [3:0] z4;
  wire   [3:0] z5;
  wire   [3:0] z6;
  wire   [3:0] z7;

  gf24mul_factoring_0 mulf0 ( .in0(inl0), .in1({n34, n35, n37, n36}), .ff({n43, 
        n41}), .f(f0), .h(h0), .l(l0), .out0(z0) );
  gf24mul_factoring_7 mulf1 ( .in0(inl0), .in1({n40, n39, n38, n33}), .ff({n42, 
        n44}), .f(f1), .h(h1), .l(l1), .out0(z1) );
  gf24mul_factoring_6 mulf2 ( .in0(inl1), .in1({n34, n35, n37, n36}), .ff({n43, 
        n41}), .f(f0), .h(h0), .l(l0), .out0(z2) );
  gf24mul_factoring_5 mulf3 ( .in0(inl1), .in1({n40, n39, n38, n33}), .ff({n42, 
        n44}), .f(f1), .h(h1), .l(l1), .out0(z3) );
  gf24mul_factoring_4 mulf4 ( .in0(inh0), .in1({n34, n35, n37, n36}), .ff({n43, 
        n41}), .f(f0), .h(h0), .l(l0), .out0(z4) );
  gf24mul_factoring_3 mulf5 ( .in0(inh0), .in1({n40, n39, n38, n33}), .ff({n42, 
        n44}), .f(f1), .h(h1), .l(l1), .out0(z5) );
  gf24mul_factoring_2 mulf6 ( .in0(inh1), .in1({n34, n35, n37, n36}), .ff({n43, 
        n41}), .f(f0), .h(h0), .l(l0), .out0(z6) );
  gf24mul_factoring_1 mulf7 ( .in0(inh1), .in1({n40, n39, n38, n33}), .ff({n42, 
        n44}), .f(f1), .h(h1), .l(l1), .out0(z7) );
  XOR2_X1 U1 ( .A(z7[3]), .B(r5[3]), .Z(n46) );
  XNOR2_X1 U2 ( .A(r3[3]), .B(r4[3]), .ZN(n45) );
  XNOR2_X1 U3 ( .A(n46), .B(n45), .ZN(out7[3]) );
  XOR2_X1 U4 ( .A(z7[2]), .B(r5[2]), .Z(n48) );
  XNOR2_X1 U5 ( .A(r3[2]), .B(r4[2]), .ZN(n47) );
  XNOR2_X1 U6 ( .A(n48), .B(n47), .ZN(out7[2]) );
  XOR2_X1 U7 ( .A(z7[1]), .B(r5[1]), .Z(n50) );
  XNOR2_X1 U8 ( .A(r3[1]), .B(r4[1]), .ZN(n49) );
  XNOR2_X1 U9 ( .A(n50), .B(n49), .ZN(out7[1]) );
  XOR2_X1 U10 ( .A(z7[0]), .B(r5[0]), .Z(n52) );
  XNOR2_X1 U11 ( .A(r3[0]), .B(r4[0]), .ZN(n51) );
  XNOR2_X1 U12 ( .A(n52), .B(n51), .ZN(out7[0]) );
  XOR2_X1 U13 ( .A(r5[3]), .B(z6[3]), .Z(out6[3]) );
  XOR2_X1 U14 ( .A(r5[2]), .B(z6[2]), .Z(out6[2]) );
  XOR2_X1 U15 ( .A(r5[1]), .B(z6[1]), .Z(out6[1]) );
  XOR2_X1 U16 ( .A(r5[0]), .B(z6[0]), .Z(out6[0]) );
  XOR2_X1 U17 ( .A(r4[3]), .B(z5[3]), .Z(out5[3]) );
  XOR2_X1 U18 ( .A(r4[2]), .B(z5[2]), .Z(out5[2]) );
  XOR2_X1 U19 ( .A(r4[1]), .B(z5[1]), .Z(out5[1]) );
  XOR2_X1 U20 ( .A(r4[0]), .B(z5[0]), .Z(out5[0]) );
  XOR2_X1 U21 ( .A(r3[3]), .B(z4[3]), .Z(out4[3]) );
  XOR2_X1 U22 ( .A(r3[2]), .B(z4[2]), .Z(out4[2]) );
  XOR2_X1 U23 ( .A(r3[1]), .B(z4[1]), .Z(out4[1]) );
  XOR2_X1 U24 ( .A(r3[0]), .B(z4[0]), .Z(out4[0]) );
  XOR2_X1 U25 ( .A(z3[3]), .B(r2[3]), .Z(n54) );
  XNOR2_X1 U26 ( .A(r0[3]), .B(r1[3]), .ZN(n53) );
  XNOR2_X1 U27 ( .A(n54), .B(n53), .ZN(out3[3]) );
  XOR2_X1 U28 ( .A(z3[2]), .B(r2[2]), .Z(n56) );
  XNOR2_X1 U29 ( .A(r0[2]), .B(r1[2]), .ZN(n55) );
  XNOR2_X1 U30 ( .A(n56), .B(n55), .ZN(out3[2]) );
  XOR2_X1 U31 ( .A(z3[1]), .B(r2[1]), .Z(n58) );
  XNOR2_X1 U32 ( .A(r0[1]), .B(r1[1]), .ZN(n57) );
  XNOR2_X1 U33 ( .A(n58), .B(n57), .ZN(out3[1]) );
  XOR2_X1 U34 ( .A(z3[0]), .B(r2[0]), .Z(n60) );
  XNOR2_X1 U35 ( .A(r0[0]), .B(r1[0]), .ZN(n59) );
  XNOR2_X1 U36 ( .A(n60), .B(n59), .ZN(out3[0]) );
  XOR2_X1 U37 ( .A(r2[3]), .B(z2[3]), .Z(out2[3]) );
  XOR2_X1 U38 ( .A(r2[2]), .B(z2[2]), .Z(out2[2]) );
  XOR2_X1 U39 ( .A(r2[1]), .B(z2[1]), .Z(out2[1]) );
  XOR2_X1 U40 ( .A(r2[0]), .B(z2[0]), .Z(out2[0]) );
  XOR2_X1 U41 ( .A(r1[3]), .B(z1[3]), .Z(out1[3]) );
  XOR2_X1 U42 ( .A(r1[2]), .B(z1[2]), .Z(out1[2]) );
  XOR2_X1 U43 ( .A(r1[1]), .B(z1[1]), .Z(out1[1]) );
  XOR2_X1 U44 ( .A(r1[0]), .B(z1[0]), .Z(out1[0]) );
  XOR2_X1 U45 ( .A(r0[3]), .B(z0[3]), .Z(out0[3]) );
  XOR2_X1 U46 ( .A(r0[2]), .B(z0[2]), .Z(out0[2]) );
  XOR2_X1 U47 ( .A(r0[1]), .B(z0[1]), .Z(out0[1]) );
  XOR2_X1 U48 ( .A(r0[0]), .B(z0[0]), .Z(out0[0]) );
  XOR2_X1 U49 ( .A(in5[2]), .B(in7[2]), .Z(n62) );
  XNOR2_X1 U50 ( .A(in3[2]), .B(in1[2]), .ZN(n61) );
  XNOR2_X1 U51 ( .A(n62), .B(n61), .ZN(n39) );
  XOR2_X1 U52 ( .A(in5[3]), .B(in7[3]), .Z(n64) );
  XNOR2_X1 U53 ( .A(in3[3]), .B(in1[3]), .ZN(n63) );
  XNOR2_X1 U54 ( .A(n64), .B(n63), .ZN(n40) );
  XOR2_X1 U55 ( .A(n40), .B(n39), .Z(h1) );
  XOR2_X1 U56 ( .A(in1[0]), .B(in7[0]), .Z(n66) );
  XNOR2_X1 U57 ( .A(in5[0]), .B(in3[0]), .ZN(n65) );
  XNOR2_X1 U58 ( .A(n66), .B(n65), .ZN(n33) );
  XOR2_X1 U59 ( .A(in3[1]), .B(in5[1]), .Z(n68) );
  XNOR2_X1 U60 ( .A(in7[1]), .B(in1[1]), .ZN(n67) );
  XNOR2_X1 U61 ( .A(n68), .B(n67), .ZN(n38) );
  XOR2_X1 U62 ( .A(n38), .B(n33), .Z(l1) );
  XOR2_X1 U63 ( .A(n33), .B(n39), .Z(n44) );
  XOR2_X1 U64 ( .A(n38), .B(n40), .Z(n42) );
  XOR2_X1 U65 ( .A(n42), .B(n44), .Z(f1) );
  XOR2_X1 U66 ( .A(in4[1]), .B(in6[1]), .Z(n70) );
  XNOR2_X1 U67 ( .A(in2[1]), .B(in0[1]), .ZN(n69) );
  XNOR2_X1 U68 ( .A(n70), .B(n69), .ZN(n37) );
  XOR2_X1 U69 ( .A(in4[0]), .B(in6[0]), .Z(n72) );
  XNOR2_X1 U70 ( .A(in2[0]), .B(in0[0]), .ZN(n71) );
  XNOR2_X1 U71 ( .A(n72), .B(n71), .ZN(n36) );
  XOR2_X1 U72 ( .A(n36), .B(n37), .Z(l0) );
  XOR2_X1 U73 ( .A(in0[3]), .B(in2[3]), .Z(n74) );
  XNOR2_X1 U74 ( .A(in6[3]), .B(in4[3]), .ZN(n73) );
  XNOR2_X1 U75 ( .A(n74), .B(n73), .ZN(n34) );
  XOR2_X1 U76 ( .A(in4[2]), .B(in6[2]), .Z(n76) );
  XNOR2_X1 U77 ( .A(in2[2]), .B(in0[2]), .ZN(n75) );
  XNOR2_X1 U78 ( .A(n76), .B(n75), .ZN(n35) );
  XOR2_X1 U79 ( .A(n35), .B(n34), .Z(h0) );
  XOR2_X1 U80 ( .A(n34), .B(n37), .Z(n43) );
  XOR2_X1 U81 ( .A(n35), .B(n36), .Z(n41) );
  XOR2_X1 U82 ( .A(n41), .B(n43), .Z(f0) );
endmodule


module inversion_TI ( in0, in1, out0, out1, out2, out3, r, CLK );
(* SILVER="[7:0]_0" *)  input [7:0] in0;
(* SILVER="[7:0]_1" *)  input [7:0] in1;
(* SILVER="[7:0]_0" *)  output [7:0] out0;
(* SILVER="[7:0]_1" *)  output [7:0] out1;
(* SILVER="[7:0]_2" *)  output [7:0] out2;
(* SILVER="[7:0]_3" *)  output [7:0] out3;
(* SILVER="refresh" *)  input [63:0] r;
(* SILVER="clock" *)  input CLK;

  wire   [3:0] s0;
  wire   [3:0] s1;
  wire   [3:0] s2;
  wire   [3:0] s3;
  wire   [3:0] s0reg;
  wire   [3:0] s1reg;
  wire   [3:0] s2reg;
  wire   [3:0] s3reg;
  wire   [3:0] i0;
  wire   [3:0] i1;
  wire   [3:0] i2;
  wire   [3:0] i3;
  wire   [3:0] i4;
  wire   [3:0] i5;
  wire   [3:0] i6;
  wire   [3:0] i7;
  wire   [3:0] h10reg;
  wire   [3:0] h11reg;
  wire   [3:0] l10reg;
  wire   [3:0] l11reg;
  wire   [3:0] i0reg;
  wire   [3:0] i1reg;
  wire   [3:0] i2reg;
  wire   [3:0] i3reg;
  wire   [3:0] i4reg;
  wire   [3:0] i5reg;
  wire   [3:0] i6reg;
  wire   [3:0] i7reg;
  wire   [3:0] h00reg;
  wire   [3:0] h01reg;
  wire   [3:0] l00reg;
  wire   [3:0] l01reg;

  Stage1 S1 ( .in00(in0[3:0]), .in01(in1[3:0]), .in10(in0[7:4]), .in11(
        in1[7:4]), .out0(s0), .out1(s1), .out2(s2), .out3(s3), .r0(r[47:44]), 
        .r1(r[43:40]), .r2(r[39:36]) );
  Stage2 S2 ( .in0(s0reg), .in1(s1reg), .in2(s2reg), .in3(s3reg), .out0(i0), 
        .out1(i1), .out2(i2), .out3(i3), .out4(i4), .out5(i5), .out6(i6), 
        .out7(i7), .r0(r[35:32]), .r1(r[31:28]), .r2(r[27:24]), .r3(r[51:48]), 
        .r4(r[55:52]), .r5(r[59:56]), .r6(r[63:60]) );
  Stage3 S3 ( .inh0(h10reg), .inh1(h11reg), .inl0(l10reg), .inl1(l11reg), 
        .in0(i0reg), .in1(i1reg), .in2(i2reg), .in3(i3reg), .in4(i4reg), .in5(
        i5reg), .in6(i6reg), .in7(i7reg), .out0(out0[7:4]), .out1(out1[7:4]), 
        .out2(out2[7:4]), .out3(out3[7:4]), .out4(out0[3:0]), .out5(out1[3:0]), 
        .out6(out2[3:0]), .out7(out3[3:0]), .r0(r[23:20]), .r1(r[19:16]), .r2(
        r[15:12]), .r3(r[11:8]), .r4(r[7:4]), .r5(r[3:0]) );
  DFF_X1 \h00reg_reg[3]  ( .D(in0[7]), .CK(CLK), .Q(h00reg[3]) );
  DFF_X1 \h00reg_reg[2]  ( .D(in0[6]), .CK(CLK), .Q(h00reg[2]) );
  DFF_X1 \h00reg_reg[1]  ( .D(in0[5]), .CK(CLK), .Q(h00reg[1]) );
  DFF_X1 \h00reg_reg[0]  ( .D(in0[4]), .CK(CLK), .Q(h00reg[0]) );
  DFF_X1 \l01reg_reg[3]  ( .D(in1[3]), .CK(CLK), .Q(l01reg[3]) );
  DFF_X1 \l01reg_reg[2]  ( .D(in1[2]), .CK(CLK), .Q(l01reg[2]) );
  DFF_X1 \l01reg_reg[1]  ( .D(in1[1]), .CK(CLK), .Q(l01reg[1]) );
  DFF_X1 \l01reg_reg[0]  ( .D(in1[0]), .CK(CLK), .Q(l01reg[0]) );
  DFF_X1 \h01reg_reg[3]  ( .D(in1[7]), .CK(CLK), .Q(h01reg[3]) );
  DFF_X1 \h01reg_reg[2]  ( .D(in1[6]), .CK(CLK), .Q(h01reg[2]) );
  DFF_X1 \h01reg_reg[1]  ( .D(in1[5]), .CK(CLK), .Q(h01reg[1]) );
  DFF_X1 \h01reg_reg[0]  ( .D(in1[4]), .CK(CLK), .Q(h01reg[0]) );
  DFF_X1 \l00reg_reg[3]  ( .D(in0[3]), .CK(CLK), .Q(l00reg[3]) );
  DFF_X1 \l00reg_reg[2]  ( .D(in0[2]), .CK(CLK), .Q(l00reg[2]) );
  DFF_X1 \l00reg_reg[1]  ( .D(in0[1]), .CK(CLK), .Q(l00reg[1]) );
  DFF_X1 \l00reg_reg[0]  ( .D(in0[0]), .CK(CLK), .Q(l00reg[0]) );
  DFF_X1 \s0reg_reg[3]  ( .D(s0[3]), .CK(CLK), .Q(s0reg[3]) );
  DFF_X1 \s0reg_reg[2]  ( .D(s0[2]), .CK(CLK), .Q(s0reg[2]) );
  DFF_X1 \s0reg_reg[1]  ( .D(s0[1]), .CK(CLK), .Q(s0reg[1]) );
  DFF_X1 \s0reg_reg[0]  ( .D(s0[0]), .CK(CLK), .Q(s0reg[0]) );
  DFF_X1 \s1reg_reg[3]  ( .D(s1[3]), .CK(CLK), .Q(s1reg[3]) );
  DFF_X1 \s1reg_reg[2]  ( .D(s1[2]), .CK(CLK), .Q(s1reg[2]) );
  DFF_X1 \s1reg_reg[1]  ( .D(s1[1]), .CK(CLK), .Q(s1reg[1]) );
  DFF_X1 \s1reg_reg[0]  ( .D(s1[0]), .CK(CLK), .Q(s1reg[0]) );
  DFF_X1 \s2reg_reg[3]  ( .D(s2[3]), .CK(CLK), .Q(s2reg[3]) );
  DFF_X1 \s2reg_reg[2]  ( .D(s2[2]), .CK(CLK), .Q(s2reg[2]) );
  DFF_X1 \s2reg_reg[1]  ( .D(s2[1]), .CK(CLK), .Q(s2reg[1]) );
  DFF_X1 \s2reg_reg[0]  ( .D(s2[0]), .CK(CLK), .Q(s2reg[0]) );
  DFF_X1 \s3reg_reg[3]  ( .D(s3[3]), .CK(CLK), .Q(s3reg[3]) );
  DFF_X1 \s3reg_reg[2]  ( .D(s3[2]), .CK(CLK), .Q(s3reg[2]) );
  DFF_X1 \s3reg_reg[1]  ( .D(s3[1]), .CK(CLK), .Q(s3reg[1]) );
  DFF_X1 \s3reg_reg[0]  ( .D(s3[0]), .CK(CLK), .Q(s3reg[0]) );
  DFF_X1 \i0reg_reg[3]  ( .D(i0[3]), .CK(CLK), .Q(i0reg[3]) );
  DFF_X1 \i0reg_reg[2]  ( .D(i0[2]), .CK(CLK), .Q(i0reg[2]) );
  DFF_X1 \i0reg_reg[1]  ( .D(i0[1]), .CK(CLK), .Q(i0reg[1]) );
  DFF_X1 \i0reg_reg[0]  ( .D(i0[0]), .CK(CLK), .Q(i0reg[0]) );
  DFF_X1 \i1reg_reg[3]  ( .D(i1[3]), .CK(CLK), .Q(i1reg[3]) );
  DFF_X1 \i1reg_reg[2]  ( .D(i1[2]), .CK(CLK), .Q(i1reg[2]) );
  DFF_X1 \i1reg_reg[1]  ( .D(i1[1]), .CK(CLK), .Q(i1reg[1]) );
  DFF_X1 \i1reg_reg[0]  ( .D(i1[0]), .CK(CLK), .Q(i1reg[0]) );
  DFF_X1 \i2reg_reg[3]  ( .D(i2[3]), .CK(CLK), .Q(i2reg[3]) );
  DFF_X1 \i2reg_reg[2]  ( .D(i2[2]), .CK(CLK), .Q(i2reg[2]) );
  DFF_X1 \i2reg_reg[1]  ( .D(i2[1]), .CK(CLK), .Q(i2reg[1]) );
  DFF_X1 \i2reg_reg[0]  ( .D(i2[0]), .CK(CLK), .Q(i2reg[0]) );
  DFF_X1 \i3reg_reg[3]  ( .D(i3[3]), .CK(CLK), .Q(i3reg[3]) );
  DFF_X1 \i3reg_reg[2]  ( .D(i3[2]), .CK(CLK), .Q(i3reg[2]) );
  DFF_X1 \i3reg_reg[1]  ( .D(i3[1]), .CK(CLK), .Q(i3reg[1]) );
  DFF_X1 \i3reg_reg[0]  ( .D(i3[0]), .CK(CLK), .Q(i3reg[0]) );
  DFF_X1 \i4reg_reg[3]  ( .D(i4[3]), .CK(CLK), .Q(i4reg[3]) );
  DFF_X1 \i4reg_reg[2]  ( .D(i4[2]), .CK(CLK), .Q(i4reg[2]) );
  DFF_X1 \i4reg_reg[1]  ( .D(i4[1]), .CK(CLK), .Q(i4reg[1]) );
  DFF_X1 \i4reg_reg[0]  ( .D(i4[0]), .CK(CLK), .Q(i4reg[0]) );
  DFF_X1 \i5reg_reg[3]  ( .D(i5[3]), .CK(CLK), .Q(i5reg[3]) );
  DFF_X1 \i5reg_reg[2]  ( .D(i5[2]), .CK(CLK), .Q(i5reg[2]) );
  DFF_X1 \i5reg_reg[1]  ( .D(i5[1]), .CK(CLK), .Q(i5reg[1]) );
  DFF_X1 \i5reg_reg[0]  ( .D(i5[0]), .CK(CLK), .Q(i5reg[0]) );
  DFF_X1 \i6reg_reg[3]  ( .D(i6[3]), .CK(CLK), .Q(i6reg[3]) );
  DFF_X1 \i6reg_reg[2]  ( .D(i6[2]), .CK(CLK), .Q(i6reg[2]) );
  DFF_X1 \i6reg_reg[1]  ( .D(i6[1]), .CK(CLK), .Q(i6reg[1]) );
  DFF_X1 \i6reg_reg[0]  ( .D(i6[0]), .CK(CLK), .Q(i6reg[0]) );
  DFF_X1 \i7reg_reg[3]  ( .D(i7[3]), .CK(CLK), .Q(i7reg[3]) );
  DFF_X1 \i7reg_reg[2]  ( .D(i7[2]), .CK(CLK), .Q(i7reg[2]) );
  DFF_X1 \i7reg_reg[1]  ( .D(i7[1]), .CK(CLK), .Q(i7reg[1]) );
  DFF_X1 \i7reg_reg[0]  ( .D(i7[0]), .CK(CLK), .Q(i7reg[0]) );
  DFF_X1 \h10reg_reg[3]  ( .D(h00reg[3]), .CK(CLK), .Q(h10reg[3]) );
  DFF_X1 \h10reg_reg[2]  ( .D(h00reg[2]), .CK(CLK), .Q(h10reg[2]) );
  DFF_X1 \h10reg_reg[1]  ( .D(h00reg[1]), .CK(CLK), .Q(h10reg[1]) );
  DFF_X1 \h10reg_reg[0]  ( .D(h00reg[0]), .CK(CLK), .Q(h10reg[0]) );
  DFF_X1 \h11reg_reg[3]  ( .D(h01reg[3]), .CK(CLK), .Q(h11reg[3]) );
  DFF_X1 \h11reg_reg[2]  ( .D(h01reg[2]), .CK(CLK), .Q(h11reg[2]) );
  DFF_X1 \h11reg_reg[1]  ( .D(h01reg[1]), .CK(CLK), .Q(h11reg[1]) );
  DFF_X1 \h11reg_reg[0]  ( .D(h01reg[0]), .CK(CLK), .Q(h11reg[0]) );
  DFF_X1 \l10reg_reg[3]  ( .D(l00reg[3]), .CK(CLK), .Q(l10reg[3]) );
  DFF_X1 \l10reg_reg[2]  ( .D(l00reg[2]), .CK(CLK), .Q(l10reg[2]) );
  DFF_X1 \l10reg_reg[1]  ( .D(l00reg[1]), .CK(CLK), .Q(l10reg[1]) );
  DFF_X1 \l10reg_reg[0]  ( .D(l00reg[0]), .CK(CLK), .Q(l10reg[0]) );
  DFF_X1 \l11reg_reg[3]  ( .D(l01reg[3]), .CK(CLK), .Q(l11reg[3]) );
  DFF_X1 \l11reg_reg[2]  ( .D(l01reg[2]), .CK(CLK), .Q(l11reg[2]) );
  DFF_X1 \l11reg_reg[1]  ( .D(l01reg[1]), .CK(CLK), .Q(l11reg[1]) );
  DFF_X1 \l11reg_reg[0]  ( .D(l01reg[0]), .CK(CLK), .Q(l11reg[0]) );
endmodule

