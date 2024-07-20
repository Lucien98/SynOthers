/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Jun 14 04:33:57 2023
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


module AND_XOR_1_1_9 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_0_0_53 ( x, y, z, r, q );
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


module AND_XOR_1_1_3 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_4 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_5 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_6 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_7 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5, n6;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n6) );
  INV_X1 U2 ( .A(x), .ZN(n4) );
  NAND2_X1 U3 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U4 ( .A(n6), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_8 ( x, y, z, r, q );
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


module AND_XOR_0_1_2 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n4) );
  NAND2_X1 U2 ( .A1(x), .A2(y), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(q) );
endmodule


module AND_XOR_0_1_3 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n4) );
  NAND2_X1 U2 ( .A1(x), .A2(y), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(q) );
endmodule


module AND_XOR_0_1_4 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(r), .B(z), .Z(n4) );
  NAND2_X1 U2 ( .A1(x), .A2(y), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(q) );
endmodule


module AND_XOR_0_1_5 ( x, y, z, r, q );
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


module AND_XOR_1_0_2 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  INV_X1 U1 ( .A(x), .ZN(n3) );
  NAND2_X1 U2 ( .A1(y), .A2(n3), .ZN(n4) );
  XNOR2_X1 U3 ( .A(r), .B(n4), .ZN(q) );
endmodule


module AND_XOR_1_0_3 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  INV_X1 U1 ( .A(x), .ZN(n3) );
  NAND2_X1 U2 ( .A1(y), .A2(n3), .ZN(n4) );
  XNOR2_X1 U3 ( .A(r), .B(n4), .ZN(q) );
endmodule


module AND_XOR_1_0_4 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  INV_X1 U1 ( .A(x), .ZN(n3) );
  NAND2_X1 U2 ( .A1(y), .A2(n3), .ZN(n4) );
  XNOR2_X1 U3 ( .A(r), .B(n4), .ZN(q) );
endmodule


module AND_XOR_1_0_5 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n3, n4;

  INV_X1 U1 ( .A(x), .ZN(n3) );
  NAND2_X1 U2 ( .A1(y), .A2(n3), .ZN(n4) );
  XNOR2_X1 U3 ( .A(r), .B(n4), .ZN(q) );
endmodule


module AND_XOR_1_1_10 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_11 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_12 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n4, n5;

  INV_X1 U1 ( .A(x), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y), .A2(n4), .ZN(n5) );
  XNOR2_X1 U3 ( .A(z), .B(n5), .ZN(q) );
endmodule


module AND_XOR_1_1_13 ( x, y, z, r, q );
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


module AND_XOR_0_0_2 ( x, y, z, r, q );
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


module AND_XOR_0_0_7 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_8 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_9 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_10 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_11 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_12 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_13 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_14 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_16 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_17 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_18 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_19 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_20 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_21 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_22 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_26 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_27 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_28 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_29 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_30 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_32 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_33 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_34 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_35 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_36 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_37 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_38 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_39 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_40 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_41 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_42 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_43 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_48 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_50 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
endmodule


module AND_XOR_0_0_52 ( x, y, z, r, q );
  input x, y, z, r;
  output q;
  wire   n2;

  NAND2_X1 U1 ( .A1(x), .A2(y), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(r), .ZN(q) );
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


module AND_XOR_0_0_15 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_23 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_24 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_25 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_31 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_44 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_45 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_46 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_47 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_49 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module AND_XOR_0_0_51 ( x, y, z, r, q );
  input x, y, z, r;
  output q;


  AND2_X1 U1 ( .A1(x), .A2(y), .ZN(q) );
endmodule


module keccak_sbox ( aa, bb, cc, dd, ee, r, ap, bp, cp, dp, ep );
(* SILVER="0_[0:3]" *)  input [3:0] aa;
(* SILVER="1_[0:3]" *)  input [3:0] bb;
(* SILVER="2_[0:3]" *)  input [3:0] cc;
(* SILVER="3_[0:3]" *)  input [3:0] dd;
(* SILVER="4_[0:3]" *)  input [3:0] ee;
(* SILVER="refresh" *)  input [29:0] r;
(* SILVER="0_[0:15]" *)  output [15:0] ap;
(* SILVER="1_[0:15]" *)  output [15:0] bp;
(* SILVER="2_[0:15]" *)  output [15:0] cp;
(* SILVER="3_[0:15]" *)  output [15:0] dp;
(* SILVER="4_[0:15]" *)  output [15:0] ep;


  AND_XOR_1_1_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_a  ( 
        .x(bb[0]), .y(cc[0]), .z(aa[0]), .r(1'b0), .q(ap[0]) );
  AND_XOR_1_1_13 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_b  ( 
        .x(cc[0]), .y(dd[0]), .z(bb[0]), .r(1'b0), .q(bp[0]) );
  AND_XOR_1_1_12 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_c  ( 
        .x(dd[0]), .y(ee[0]), .z(cc[0]), .r(1'b0), .q(cp[0]) );
  AND_XOR_1_1_11 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_d  ( 
        .x(ee[0]), .y(aa[0]), .z(dd[0]), .r(1'b0), .q(dp[0]) );
  AND_XOR_1_1_10 \ComponentFunctionGen1[0].ComponentFunctionGen1[0].and_xor_inst_e  ( 
        .x(aa[0]), .y(bb[0]), .z(ee[0]), .r(1'b0), .q(ep[0]) );
  AND_XOR_1_0_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_a  ( 
        .x(bb[0]), .y(cc[1]), .z(1'b0), .r(r[0]), .q(ap[1]) );
  AND_XOR_0_0_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_b  ( 
        .x(cc[1]), .y(dd[0]), .z(1'b0), .r(r[6]), .q(bp[1]) );
  AND_XOR_1_1_9 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_c  ( 
        .x(dd[0]), .y(ee[1]), .z(cc[1]), .r(r[12]), .q(cp[1]) );
  AND_XOR_0_0_53 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_d  ( 
        .x(ee[1]), .y(aa[1]), .z(1'b0), .r(1'b0), .q(dp[1]) );
  AND_XOR_0_1_0 \ComponentFunctionGen1[0].ComponentFunctionGen1[1].and_xor_inst_e  ( 
        .x(aa[1]), .y(bb[0]), .z(ee[1]), .r(r[24]), .q(ep[1]) );
  AND_XOR_1_0_5 \ComponentFunctionGen1[0].ComponentFunctionGen1[2].and_xor_inst_a  ( 
        .x(bb[0]), .y(cc[2]), .z(1'b0), .r(r[1]), .q(ap[2]) );
  AND_XOR_0_0_52 \ComponentFunctionGen1[0].ComponentFunctionGen1[2].and_xor_inst_b  ( 
        .x(cc[2]), .y(dd[0]), .z(1'b0), .r(r[7]), .q(bp[2]) );
  AND_XOR_1_1_8 \ComponentFunctionGen1[0].ComponentFunctionGen1[2].and_xor_inst_c  ( 
        .x(dd[0]), .y(ee[2]), .z(cc[2]), .r(r[13]), .q(cp[2]) );
  AND_XOR_0_0_51 \ComponentFunctionGen1[0].ComponentFunctionGen1[2].and_xor_inst_d  ( 
        .x(ee[2]), .y(aa[2]), .z(1'b0), .r(1'b0), .q(dp[2]) );
  AND_XOR_0_1_5 \ComponentFunctionGen1[0].ComponentFunctionGen1[2].and_xor_inst_e  ( 
        .x(aa[2]), .y(bb[0]), .z(ee[2]), .r(r[25]), .q(ep[2]) );
  AND_XOR_1_0_4 \ComponentFunctionGen1[0].ComponentFunctionGen1[3].and_xor_inst_a  ( 
        .x(bb[0]), .y(cc[3]), .z(1'b0), .r(r[3]), .q(ap[3]) );
  AND_XOR_0_0_50 \ComponentFunctionGen1[0].ComponentFunctionGen1[3].and_xor_inst_b  ( 
        .x(cc[3]), .y(dd[0]), .z(1'b0), .r(r[9]), .q(bp[3]) );
  AND_XOR_1_1_7 \ComponentFunctionGen1[0].ComponentFunctionGen1[3].and_xor_inst_c  ( 
        .x(dd[0]), .y(ee[3]), .z(cc[3]), .r(r[15]), .q(cp[3]) );
  AND_XOR_0_0_49 \ComponentFunctionGen1[0].ComponentFunctionGen1[3].and_xor_inst_d  ( 
        .x(ee[3]), .y(aa[3]), .z(1'b0), .r(1'b0), .q(dp[3]) );
  AND_XOR_0_1_4 \ComponentFunctionGen1[0].ComponentFunctionGen1[3].and_xor_inst_e  ( 
        .x(aa[3]), .y(bb[0]), .z(ee[3]), .r(r[27]), .q(ep[3]) );
  AND_XOR_0_1_3 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_a  ( 
        .x(bb[1]), .y(cc[0]), .z(aa[1]), .r(r[0]), .q(ap[4]) );
  AND_XOR_1_1_6 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_b  ( 
        .x(cc[0]), .y(dd[1]), .z(bb[1]), .r(r[6]), .q(bp[4]) );
  AND_XOR_0_0_48 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_c  ( 
        .x(dd[1]), .y(ee[0]), .z(1'b0), .r(r[12]), .q(cp[4]) );
  AND_XOR_1_1_5 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_d  ( 
        .x(ee[0]), .y(aa[1]), .z(dd[1]), .r(r[18]), .q(dp[4]) );
  AND_XOR_0_0_47 \ComponentFunctionGen1[1].ComponentFunctionGen1[0].and_xor_inst_e  ( 
        .x(aa[1]), .y(bb[1]), .z(1'b0), .r(1'b0), .q(ep[4]) );
  AND_XOR_0_0_46 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_a  ( 
        .x(bb[1]), .y(cc[1]), .z(1'b0), .r(1'b0), .q(ap[5]) );
  AND_XOR_0_0_45 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_b  ( 
        .x(cc[1]), .y(dd[1]), .z(1'b0), .r(1'b0), .q(bp[5]) );
  AND_XOR_0_0_44 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_c  ( 
        .x(dd[1]), .y(ee[1]), .z(1'b0), .r(1'b0), .q(cp[5]) );
  AND_XOR_0_0_43 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_d  ( 
        .x(ee[1]), .y(aa[2]), .z(1'b0), .r(r[20]), .q(dp[5]) );
  AND_XOR_0_0_42 \ComponentFunctionGen1[1].ComponentFunctionGen1[1].and_xor_inst_e  ( 
        .x(aa[2]), .y(bb[1]), .z(1'b0), .r(r[26]), .q(ep[5]) );
  AND_XOR_0_0_41 \ComponentFunctionGen1[1].ComponentFunctionGen1[2].and_xor_inst_a  ( 
        .x(bb[1]), .y(cc[2]), .z(1'b0), .r(r[2]), .q(ap[6]) );
  AND_XOR_0_0_40 \ComponentFunctionGen1[1].ComponentFunctionGen1[2].and_xor_inst_b  ( 
        .x(cc[2]), .y(dd[1]), .z(1'b0), .r(r[8]), .q(bp[6]) );
  AND_XOR_0_0_39 \ComponentFunctionGen1[1].ComponentFunctionGen1[2].and_xor_inst_c  ( 
        .x(dd[1]), .y(ee[2]), .z(1'b0), .r(r[14]), .q(cp[6]) );
  AND_XOR_0_0_38 \ComponentFunctionGen1[1].ComponentFunctionGen1[2].and_xor_inst_d  ( 
        .x(ee[2]), .y(aa[3]), .z(1'b0), .r(r[23]), .q(dp[6]) );
  AND_XOR_0_0_37 \ComponentFunctionGen1[1].ComponentFunctionGen1[2].and_xor_inst_e  ( 
        .x(aa[3]), .y(bb[1]), .z(1'b0), .r(r[28]), .q(ep[6]) );
  AND_XOR_0_0_36 \ComponentFunctionGen1[1].ComponentFunctionGen1[3].and_xor_inst_a  ( 
        .x(bb[1]), .y(cc[3]), .z(1'b0), .r(r[4]), .q(ap[7]) );
  AND_XOR_0_0_35 \ComponentFunctionGen1[1].ComponentFunctionGen1[3].and_xor_inst_b  ( 
        .x(cc[3]), .y(dd[1]), .z(1'b0), .r(r[10]), .q(bp[7]) );
  AND_XOR_0_0_34 \ComponentFunctionGen1[1].ComponentFunctionGen1[3].and_xor_inst_c  ( 
        .x(dd[1]), .y(ee[3]), .z(1'b0), .r(r[16]), .q(cp[7]) );
  AND_XOR_0_0_33 \ComponentFunctionGen1[1].ComponentFunctionGen1[3].and_xor_inst_d  ( 
        .x(ee[3]), .y(aa[0]), .z(1'b0), .r(r[21]), .q(dp[7]) );
  AND_XOR_1_0_3 \ComponentFunctionGen1[1].ComponentFunctionGen1[3].and_xor_inst_e  ( 
        .x(aa[0]), .y(bb[1]), .z(1'b0), .r(r[24]), .q(ep[7]) );
  AND_XOR_0_1_2 \ComponentFunctionGen1[2].ComponentFunctionGen1[0].and_xor_inst_a  ( 
        .x(bb[2]), .y(cc[0]), .z(aa[2]), .r(r[1]), .q(ap[8]) );
  AND_XOR_1_1_4 \ComponentFunctionGen1[2].ComponentFunctionGen1[0].and_xor_inst_b  ( 
        .x(cc[0]), .y(dd[2]), .z(bb[2]), .r(r[7]), .q(bp[8]) );
  AND_XOR_0_0_32 \ComponentFunctionGen1[2].ComponentFunctionGen1[0].and_xor_inst_c  ( 
        .x(dd[2]), .y(ee[0]), .z(1'b0), .r(r[13]), .q(cp[8]) );
  AND_XOR_1_1_3 \ComponentFunctionGen1[2].ComponentFunctionGen1[0].and_xor_inst_d  ( 
        .x(ee[0]), .y(aa[2]), .z(dd[2]), .r(r[19]), .q(dp[8]) );
  AND_XOR_0_0_31 \ComponentFunctionGen1[2].ComponentFunctionGen1[0].and_xor_inst_e  ( 
        .x(aa[2]), .y(bb[2]), .z(1'b0), .r(1'b0), .q(ep[8]) );
  AND_XOR_0_0_30 \ComponentFunctionGen1[2].ComponentFunctionGen1[1].and_xor_inst_a  ( 
        .x(bb[2]), .y(cc[1]), .z(1'b0), .r(r[2]), .q(ap[9]) );
  AND_XOR_0_0_29 \ComponentFunctionGen1[2].ComponentFunctionGen1[1].and_xor_inst_b  ( 
        .x(cc[1]), .y(dd[2]), .z(1'b0), .r(r[8]), .q(bp[9]) );
  AND_XOR_0_0_28 \ComponentFunctionGen1[2].ComponentFunctionGen1[1].and_xor_inst_c  ( 
        .x(dd[2]), .y(ee[1]), .z(1'b0), .r(r[14]), .q(cp[9]) );
  AND_XOR_0_0_27 \ComponentFunctionGen1[2].ComponentFunctionGen1[1].and_xor_inst_d  ( 
        .x(ee[1]), .y(aa[3]), .z(1'b0), .r(r[22]), .q(dp[9]) );
  AND_XOR_0_0_26 \ComponentFunctionGen1[2].ComponentFunctionGen1[1].and_xor_inst_e  ( 
        .x(aa[3]), .y(bb[2]), .z(1'b0), .r(r[29]), .q(ep[9]) );
  AND_XOR_0_0_25 \ComponentFunctionGen1[2].ComponentFunctionGen1[2].and_xor_inst_a  ( 
        .x(bb[2]), .y(cc[2]), .z(1'b0), .r(1'b0), .q(ap[10]) );
  AND_XOR_0_0_24 \ComponentFunctionGen1[2].ComponentFunctionGen1[2].and_xor_inst_b  ( 
        .x(cc[2]), .y(dd[2]), .z(1'b0), .r(1'b0), .q(bp[10]) );
  AND_XOR_0_0_23 \ComponentFunctionGen1[2].ComponentFunctionGen1[2].and_xor_inst_c  ( 
        .x(dd[2]), .y(ee[2]), .z(1'b0), .r(1'b0), .q(cp[10]) );
  AND_XOR_0_0_22 \ComponentFunctionGen1[2].ComponentFunctionGen1[2].and_xor_inst_d  ( 
        .x(ee[2]), .y(aa[0]), .z(1'b0), .r(r[19]), .q(dp[10]) );
  AND_XOR_1_0_2 \ComponentFunctionGen1[2].ComponentFunctionGen1[2].and_xor_inst_e  ( 
        .x(aa[0]), .y(bb[2]), .z(1'b0), .r(r[25]), .q(ep[10]) );
  AND_XOR_0_0_21 \ComponentFunctionGen1[2].ComponentFunctionGen1[3].and_xor_inst_a  ( 
        .x(bb[2]), .y(cc[3]), .z(1'b0), .r(r[5]), .q(ap[11]) );
  AND_XOR_0_0_20 \ComponentFunctionGen1[2].ComponentFunctionGen1[3].and_xor_inst_b  ( 
        .x(cc[3]), .y(dd[2]), .z(1'b0), .r(r[11]), .q(bp[11]) );
  AND_XOR_0_0_19 \ComponentFunctionGen1[2].ComponentFunctionGen1[3].and_xor_inst_c  ( 
        .x(dd[2]), .y(ee[3]), .z(1'b0), .r(r[17]), .q(cp[11]) );
  AND_XOR_0_0_18 \ComponentFunctionGen1[2].ComponentFunctionGen1[3].and_xor_inst_d  ( 
        .x(ee[3]), .y(aa[1]), .z(1'b0), .r(r[22]), .q(dp[11]) );
  AND_XOR_0_0_17 \ComponentFunctionGen1[2].ComponentFunctionGen1[3].and_xor_inst_e  ( 
        .x(aa[1]), .y(bb[2]), .z(1'b0), .r(r[26]), .q(ep[11]) );
  AND_XOR_0_1_1 \ComponentFunctionGen1[3].ComponentFunctionGen1[0].and_xor_inst_a  ( 
        .x(bb[3]), .y(cc[0]), .z(aa[3]), .r(r[3]), .q(ap[12]) );
  AND_XOR_1_1_2 \ComponentFunctionGen1[3].ComponentFunctionGen1[0].and_xor_inst_b  ( 
        .x(cc[0]), .y(dd[3]), .z(bb[3]), .r(r[9]), .q(bp[12]) );
  AND_XOR_0_0_16 \ComponentFunctionGen1[3].ComponentFunctionGen1[0].and_xor_inst_c  ( 
        .x(dd[3]), .y(ee[0]), .z(1'b0), .r(r[15]), .q(cp[12]) );
  AND_XOR_1_1_1 \ComponentFunctionGen1[3].ComponentFunctionGen1[0].and_xor_inst_d  ( 
        .x(ee[0]), .y(aa[3]), .z(dd[3]), .r(r[21]), .q(dp[12]) );
  AND_XOR_0_0_15 \ComponentFunctionGen1[3].ComponentFunctionGen1[0].and_xor_inst_e  ( 
        .x(aa[3]), .y(bb[3]), .z(1'b0), .r(1'b0), .q(ep[12]) );
  AND_XOR_0_0_14 \ComponentFunctionGen1[3].ComponentFunctionGen1[1].and_xor_inst_a  ( 
        .x(bb[3]), .y(cc[1]), .z(1'b0), .r(r[4]), .q(ap[13]) );
  AND_XOR_0_0_13 \ComponentFunctionGen1[3].ComponentFunctionGen1[1].and_xor_inst_b  ( 
        .x(cc[1]), .y(dd[3]), .z(1'b0), .r(r[10]), .q(bp[13]) );
  AND_XOR_0_0_12 \ComponentFunctionGen1[3].ComponentFunctionGen1[1].and_xor_inst_c  ( 
        .x(dd[3]), .y(ee[1]), .z(1'b0), .r(r[16]), .q(cp[13]) );
  AND_XOR_0_0_11 \ComponentFunctionGen1[3].ComponentFunctionGen1[1].and_xor_inst_d  ( 
        .x(ee[1]), .y(aa[0]), .z(1'b0), .r(r[18]), .q(dp[13]) );
  AND_XOR_1_0_1 \ComponentFunctionGen1[3].ComponentFunctionGen1[1].and_xor_inst_e  ( 
        .x(aa[0]), .y(bb[3]), .z(1'b0), .r(r[27]), .q(ep[13]) );
  AND_XOR_0_0_10 \ComponentFunctionGen1[3].ComponentFunctionGen1[2].and_xor_inst_a  ( 
        .x(bb[3]), .y(cc[2]), .z(1'b0), .r(r[5]), .q(ap[14]) );
  AND_XOR_0_0_9 \ComponentFunctionGen1[3].ComponentFunctionGen1[2].and_xor_inst_b  ( 
        .x(cc[2]), .y(dd[3]), .z(1'b0), .r(r[11]), .q(bp[14]) );
  AND_XOR_0_0_8 \ComponentFunctionGen1[3].ComponentFunctionGen1[2].and_xor_inst_c  ( 
        .x(dd[3]), .y(ee[2]), .z(1'b0), .r(r[17]), .q(cp[14]) );
  AND_XOR_0_0_7 \ComponentFunctionGen1[3].ComponentFunctionGen1[2].and_xor_inst_d  ( 
        .x(ee[2]), .y(aa[1]), .z(1'b0), .r(r[20]), .q(dp[14]) );
  AND_XOR_0_0_6 \ComponentFunctionGen1[3].ComponentFunctionGen1[2].and_xor_inst_e  ( 
        .x(aa[1]), .y(bb[3]), .z(1'b0), .r(r[28]), .q(ep[14]) );
  AND_XOR_0_0_5 \ComponentFunctionGen1[3].ComponentFunctionGen1[3].and_xor_inst_a  ( 
        .x(bb[3]), .y(cc[3]), .z(1'b0), .r(1'b0), .q(ap[15]) );
  AND_XOR_0_0_4 \ComponentFunctionGen1[3].ComponentFunctionGen1[3].and_xor_inst_b  ( 
        .x(cc[3]), .y(dd[3]), .z(1'b0), .r(1'b0), .q(bp[15]) );
  AND_XOR_0_0_3 \ComponentFunctionGen1[3].ComponentFunctionGen1[3].and_xor_inst_c  ( 
        .x(dd[3]), .y(ee[3]), .z(1'b0), .r(1'b0), .q(cp[15]) );
  AND_XOR_0_0_2 \ComponentFunctionGen1[3].ComponentFunctionGen1[3].and_xor_inst_d  ( 
        .x(ee[3]), .y(aa[2]), .z(1'b0), .r(r[23]), .q(dp[15]) );
  AND_XOR_0_0_1 \ComponentFunctionGen1[3].ComponentFunctionGen1[3].and_xor_inst_e  ( 
        .x(aa[2]), .y(bb[3]), .z(1'b0), .r(r[29]), .q(ep[15]) );
endmodule

