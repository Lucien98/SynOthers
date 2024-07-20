/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Jun 14 04:18:23 2023
/////////////////////////////////////////////////////////////


module AND_XOR_1_1_0 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_0_0 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  INV_X1 U1 ( .A(x), .ZN(n3) );
  NAND2_X1 U2 ( .A1(y), .A2(n3), .ZN(n4) );
  XNOR2_X1 U3 ( .A(r), .B(n4), .ZN(q) );
endmodule


module AND_XOR_0_0_0 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_1_1_3 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_0_0_7 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_1_0 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n4) );
  NAND2_X1 U2 ( .A1(x), .A2(y), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(q) );
endmodule


module AND_XOR_1_1_1 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_2 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_0_1_1 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n4) );
  NAND2_X1 U2 ( .A1(x), .A2(y), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(q) );
endmodule


module AND_XOR_1_0_1 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  INV_X1 U1 ( .A(x), .ZN(n3) );
  NAND2_X1 U2 ( .A1(y), .A2(n3), .ZN(n4) );
  XNOR2_X1 U3 ( .A(r), .B(n4), .ZN(q) );
endmodule


module AND_XOR_1_1_4 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_5 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_6 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_7 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_0_0_1 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_6 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_2 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_3 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_4 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_5 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module keccak_sbox ( aa, bb, cc, dd, ee, r, ap, bp, cp, dp, ep );
(* SILVER="0_0,0_1" *)  input [1:0] aa;
(* SILVER="1_0,1_1" *)  input [1:0] bb;
(* SILVER="2_0,2_1" *)  input [1:0] cc;
(* SILVER="3_0,3_1" *)  input [1:0] dd;
(* SILVER="4_0,4_1" *)  input [1:0] ee;
(* SILVER="refresh" *)  input [4:0] r;
(* SILVER="0_[0:3]" *)  output [3:0] ap;
(* SILVER="1_[0:3]" *)  output [3:0] bp;
(* SILVER="2_[0:3]" *)  output [3:0] cp;
(* SILVER="3_[0:3]" *)  output [3:0] dp;
(* SILVER="4_[0:3]" *)  output [3:0] ep;


  AND_XOR_1_1_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_a  ( 
        .x(bb[0]), .y(cc[0]), .z(aa[0]), .r(1'b0), .q(ap[0]) );
  AND_XOR_1_1_7 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_b  ( 
        .x(cc[0]), .y(dd[0]), .z(bb[0]), .r(1'b0), .q(bp[0]) );
  AND_XOR_1_1_6 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_c  ( 
        .x(dd[0]), .y(ee[0]), .z(cc[0]), .r(1'b0), .q(cp[0]) );
  AND_XOR_1_1_5 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_d  ( 
        .x(ee[0]), .y(aa[0]), .z(dd[0]), .r(1'b0), .q(dp[0]) );
  AND_XOR_1_1_4 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_e  ( 
        .x(aa[0]), .y(bb[0]), .z(ee[0]), .r(1'b0), .q(ep[0]) );
  AND_XOR_1_0_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_a  ( 
        .x(bb[0]), .y(cc[1]), .z(1'b0), .r(r[0]), .q(ap[1]) );
  AND_XOR_0_0_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_b  ( 
        .x(cc[1]), .y(dd[0]), .z(1'b0), .r(r[1]), .q(bp[1]) );
  AND_XOR_1_1_3 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_c  ( 
        .x(dd[0]), .y(ee[1]), .z(cc[1]), .r(r[2]), .q(cp[1]) );
  AND_XOR_0_0_7 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_d  ( 
        .x(ee[1]), .y(aa[1]), .z(1'b0), .r(1'b0), .q(dp[1]) );
  AND_XOR_0_1_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_e  ( 
        .x(aa[1]), .y(bb[0]), .z(ee[1]), .r(r[4]), .q(ep[1]) );
  AND_XOR_0_1_1 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_a  ( 
        .x(bb[1]), .y(cc[0]), .z(aa[1]), .r(r[0]), .q(ap[2]) );
  AND_XOR_1_1_2 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_b  ( 
        .x(cc[0]), .y(dd[1]), .z(bb[1]), .r(r[1]), .q(bp[2]) );
  AND_XOR_0_0_6 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_c  ( 
        .x(dd[1]), .y(ee[0]), .z(1'b0), .r(r[2]), .q(cp[2]) );
  AND_XOR_1_1_1 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_d  ( 
        .x(ee[0]), .y(aa[1]), .z(dd[1]), .r(r[3]), .q(dp[2]) );
  AND_XOR_0_0_5 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_e  ( 
        .x(aa[1]), .y(bb[1]), .z(1'b0), .r(1'b0), .q(ep[2]) );
  AND_XOR_0_0_4 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_a  ( 
        .x(bb[1]), .y(cc[1]), .z(1'b0), .r(1'b0), .q(ap[3]) );
  AND_XOR_0_0_3 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_b  ( 
        .x(cc[1]), .y(dd[1]), .z(1'b0), .r(1'b0), .q(bp[3]) );
  AND_XOR_0_0_2 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_c  ( 
        .x(dd[1]), .y(ee[1]), .z(1'b0), .r(1'b0), .q(cp[3]) );
  AND_XOR_0_0_1 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_d  ( 
        .x(ee[1]), .y(aa[0]), .z(1'b0), .r(r[3]), .q(dp[3]) );
  AND_XOR_1_0_1 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_e  ( 
        .x(aa[0]), .y(bb[1]), .z(1'b0), .r(r[4]), .q(ep[3]) );
endmodule

