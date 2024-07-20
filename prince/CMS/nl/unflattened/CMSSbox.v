/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon May 29 06:58:37 2023
/////////////////////////////////////////////////////////////


module s_bit1_sh1 ( w1, z1, y1, x1, out1 );
  input w1, z1, y1, x1;
  output out1;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XOR2_X1 U1 ( .A(z1), .B(x1), .Z(n10) );
  NAND2_X1 U2 ( .A1(n10), .A2(w1), .ZN(n14) );
  INV_X1 U3 ( .A(y1), .ZN(n11) );
  NOR2_X1 U4 ( .A1(w1), .A2(n11), .ZN(n12) );
  NAND2_X1 U5 ( .A1(z1), .A2(n12), .ZN(n13) );
  NAND2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n16) );
  NOR2_X1 U7 ( .A1(y1), .A2(x1), .ZN(n15) );
  NOR2_X1 U8 ( .A1(n16), .A2(n15), .ZN(n19) );
  NAND2_X1 U9 ( .A1(z1), .A2(w1), .ZN(n17) );
  NOR2_X1 U10 ( .A1(y1), .A2(n17), .ZN(n18) );
  NOR2_X1 U11 ( .A1(n19), .A2(n18), .ZN(out1) );
endmodule


module s_bit1_sh2 ( w2, z2, y1, x1, out2 );
  input w2, z2, y1, x1;
  output out2;
  wire   n7, n8, n9;

  NAND2_X1 U1 ( .A1(w2), .A2(x1), .ZN(n7) );
  XOR2_X1 U2 ( .A(z2), .B(n7), .Z(n9) );
  NOR2_X1 U3 ( .A1(y1), .A2(w2), .ZN(n8) );
  NOR2_X1 U4 ( .A1(n9), .A2(n8), .ZN(out2) );
endmodule


module s_bit1_sh3 ( y2, z1, w2, x1, out3 );
  input y2, z1, w2, x1;
  output out3;
  wire   n6, n7, n8, n9, n10;

  XNOR2_X1 U1 ( .A(x1), .B(z1), .ZN(n6) );
  NAND2_X1 U2 ( .A1(n6), .A2(y2), .ZN(n10) );
  INV_X1 U3 ( .A(z1), .ZN(n7) );
  NOR2_X1 U4 ( .A1(y2), .A2(n7), .ZN(n8) );
  NAND2_X1 U5 ( .A1(w2), .A2(n8), .ZN(n9) );
  NAND2_X1 U6 ( .A1(n10), .A2(n9), .ZN(out3) );
endmodule


module s_bit1_sh4 ( y2, w1, z2, out4 );
  input y2, w1, z2;
  output out4;
  wire   n2;

  OR2_X1 U1 ( .A1(w1), .A2(y2), .ZN(n2) );
  AND2_X1 U2 ( .A1(z2), .A2(n2), .ZN(out4) );
endmodule


module s_bit1_sh5 ( x2, w2, y1, z1, out5 );
  input x2, w2, y1, z1;
  output out5;
  wire   n4, n5, n6;

  NAND2_X1 U1 ( .A1(w2), .A2(z1), .ZN(n4) );
  XOR2_X1 U2 ( .A(x2), .B(n4), .Z(n6) );
  XOR2_X1 U3 ( .A(y1), .B(w2), .Z(n5) );
  NOR2_X1 U4 ( .A1(n6), .A2(n5), .ZN(out5) );
endmodule


module s_bit1_sh6 ( x2, w1, y1, z2, out6 );
  input x2, w1, y1, z2;
  output out6;
  wire   n4, n5;

  NAND2_X1 U1 ( .A1(z2), .A2(y1), .ZN(n4) );
  XNOR2_X1 U2 ( .A(x2), .B(n4), .ZN(n5) );
  AND2_X1 U3 ( .A1(n5), .A2(w1), .ZN(out6) );
endmodule


module s_bit1_sh7 ( x2, y2, w1, z1, out7 );
  input x2, y2, w1, z1;
  output out7;
  wire   n4, n5;

  NAND2_X1 U1 ( .A1(z1), .A2(w1), .ZN(n4) );
  XNOR2_X1 U2 ( .A(x2), .B(n4), .ZN(n5) );
  AND2_X1 U3 ( .A1(n5), .A2(y2), .ZN(out7) );
endmodule


module s_bit1_sh8 ( y2, w2, z2, out8 );
  input y2, w2, z2;
  output out8;
  wire   n2, n3;

  INV_X1 U1 ( .A(z2), .ZN(n3) );
  NAND2_X1 U2 ( .A1(w2), .A2(y2), .ZN(n2) );
  NOR2_X1 U3 ( .A1(n3), .A2(n2), .ZN(out8) );
endmodule


module s_bit1 ( in1, in2, out );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] out;


  s_bit1_sh1 s_bit11_inst ( .w1(in1[0]), .z1(in1[1]), .y1(in1[2]), .x1(in1[3]), 
        .out1(out[0]) );
  s_bit1_sh2 s_bit12_inst ( .w2(in2[0]), .z2(in2[1]), .y1(in1[2]), .x1(in1[3]), 
        .out2(out[1]) );
  s_bit1_sh3 s_bit13_inst ( .y2(in2[2]), .z1(in1[1]), .w2(in2[0]), .x1(in1[3]), 
        .out3(out[2]) );
  s_bit1_sh4 s_bit14_inst ( .y2(in2[2]), .w1(in1[0]), .z2(in2[1]), .out4(
        out[3]) );
  s_bit1_sh5 s_bit15_inst ( .x2(in2[3]), .w2(in2[0]), .y1(in1[2]), .z1(in1[1]), 
        .out5(out[4]) );
  s_bit1_sh6 s_bit16_inst ( .x2(in2[3]), .w1(in1[0]), .y1(in1[2]), .z2(in2[1]), 
        .out6(out[5]) );
  s_bit1_sh7 s_bit17_inst ( .x2(in2[3]), .y2(in2[2]), .w1(in1[0]), .z1(in1[1]), 
        .out7(out[6]) );
  s_bit1_sh8 s_bit18_inst ( .y2(in2[2]), .w2(in2[0]), .z2(in2[1]), .out8(
        out[7]) );
endmodule


module s_bit2_sh1 ( w1, z1, y1, x1, out1 );
  input w1, z1, y1, x1;
  output out1;
  wire   n4, n5, n6;

  AND2_X1 U1 ( .A1(z1), .A2(x1), .ZN(n4) );
  NOR2_X1 U2 ( .A1(y1), .A2(n4), .ZN(n6) );
  NOR2_X1 U3 ( .A1(z1), .A2(w1), .ZN(n5) );
  OR2_X1 U4 ( .A1(n6), .A2(n5), .ZN(out1) );
endmodule


module s_bit2_sh2 ( w2, y1, z2, x1, out2 );
  input w2, y1, z2, x1;
  output out2;
  wire   n4, n5, n6;

  OR2_X1 U1 ( .A1(w2), .A2(z2), .ZN(n4) );
  NAND2_X1 U2 ( .A1(y1), .A2(n4), .ZN(n6) );
  NAND2_X1 U3 ( .A1(z2), .A2(x1), .ZN(n5) );
  NAND2_X1 U4 ( .A1(n6), .A2(n5), .ZN(out2) );
endmodule


module s_bit2_sh3 ( y2, w2, z1, x1, out3 );
  input y2, w2, z1, x1;
  output out3;
  wire   n6, n7, n8;

  NAND2_X1 U1 ( .A1(x1), .A2(z1), .ZN(n6) );
  NAND2_X1 U2 ( .A1(y2), .A2(n6), .ZN(n8) );
  NOR2_X1 U3 ( .A1(z1), .A2(w2), .ZN(n7) );
  NOR2_X1 U4 ( .A1(n8), .A2(n7), .ZN(out3) );
endmodule


module s_bit2_sh4 ( y2, w1, z2, x1, out4 );
  input y2, w1, z2, x1;
  output out4;
  wire   n6, n7, n8;

  NAND2_X1 U1 ( .A1(x1), .A2(z2), .ZN(n6) );
  NAND2_X1 U2 ( .A1(y2), .A2(n6), .ZN(n8) );
  NOR2_X1 U3 ( .A1(z2), .A2(w1), .ZN(n7) );
  NOR2_X1 U4 ( .A1(n8), .A2(n7), .ZN(out4) );
endmodule


module s_bit2_sh5 ( x2, z1, y1, w2, out5 );
  input x2, z1, y1, w2;
  output out5;
  wire   n7, n8, n9, n10;

  INV_X1 U1 ( .A(y1), .ZN(n7) );
  NOR2_X1 U2 ( .A1(w2), .A2(n7), .ZN(n9) );
  NOR2_X1 U3 ( .A1(y1), .A2(x2), .ZN(n8) );
  NOR2_X1 U4 ( .A1(n9), .A2(n8), .ZN(n10) );
  AND2_X1 U5 ( .A1(z1), .A2(n10), .ZN(out5) );
endmodule


module s_bit2_sh6 ( x2, w1, z2, y1, out6 );
  input x2, w1, z2, y1;
  output out6;
  wire   n7, n8, n9, n10;

  INV_X1 U1 ( .A(y1), .ZN(n7) );
  NOR2_X1 U2 ( .A1(w1), .A2(n7), .ZN(n9) );
  NOR2_X1 U3 ( .A1(y1), .A2(x2), .ZN(n8) );
  NOR2_X1 U4 ( .A1(n9), .A2(n8), .ZN(n10) );
  AND2_X1 U5 ( .A1(z2), .A2(n10), .ZN(out6) );
endmodule


module s_bit2_sh7 ( x2, y2, w1, z1, out7 );
  input x2, y2, w1, z1;
  output out7;
  wire   n3, n4;

  XNOR2_X1 U1 ( .A(w1), .B(x2), .ZN(n4) );
  NAND2_X1 U2 ( .A1(z1), .A2(y2), .ZN(n3) );
  NOR2_X1 U3 ( .A1(n4), .A2(n3), .ZN(out7) );
endmodule


module s_bit2_sh8 ( x2, y2, w2, z2, out8 );
  input x2, y2, w2, z2;
  output out8;
  wire   n3, n4;

  XNOR2_X1 U1 ( .A(w2), .B(x2), .ZN(n4) );
  NAND2_X1 U2 ( .A1(z2), .A2(y2), .ZN(n3) );
  NOR2_X1 U3 ( .A1(n4), .A2(n3), .ZN(out8) );
endmodule


module s_bit2 ( in1, in2, out );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] out;


  s_bit2_sh1 s_bit21_inst ( .w1(in1[0]), .z1(in1[1]), .y1(in1[2]), .x1(in1[3]), 
        .out1(out[0]) );
  s_bit2_sh2 s_bit22_inst ( .w2(in2[0]), .y1(in1[2]), .z2(in2[1]), .x1(in1[3]), 
        .out2(out[1]) );
  s_bit2_sh3 s_bit23_inst ( .y2(in2[2]), .w2(in2[0]), .z1(in1[1]), .x1(in1[3]), 
        .out3(out[2]) );
  s_bit2_sh4 s_bit24_inst ( .y2(in2[2]), .w1(in1[0]), .z2(in2[1]), .x1(in1[3]), 
        .out4(out[3]) );
  s_bit2_sh5 s_bit25_inst ( .x2(in2[3]), .z1(in1[1]), .y1(in1[2]), .w2(in2[0]), 
        .out5(out[4]) );
  s_bit2_sh6 s_bit26_inst ( .x2(in2[3]), .w1(in1[0]), .z2(in2[1]), .y1(in1[2]), 
        .out6(out[5]) );
  s_bit2_sh7 s_bit27_inst ( .x2(in2[3]), .y2(in2[2]), .w1(in1[0]), .z1(in1[1]), 
        .out7(out[6]) );
  s_bit2_sh8 s_bit28_inst ( .x2(in2[3]), .y2(in2[2]), .w2(in2[0]), .z2(in2[1]), 
        .out8(out[7]) );
endmodule


module s_bit3_sh1 ( w1, z1, y1, x1, out1 );
  input w1, z1, y1, x1;
  output out1;
  wire   n9, n10, n11;

  NOR2_X1 U1 ( .A1(w1), .A2(x1), .ZN(n9) );
  OR2_X1 U2 ( .A1(z1), .A2(n9), .ZN(n11) );
  NAND2_X1 U3 ( .A1(x1), .A2(y1), .ZN(n10) );
  NAND2_X1 U4 ( .A1(n11), .A2(n10), .ZN(out1) );
endmodule


module s_bit3_sh2 ( w2, z2, y1, x1, out2 );
  input w2, z2, y1, x1;
  output out2;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(x1), .A2(z2), .ZN(n5) );
  OR2_X1 U2 ( .A1(y1), .A2(n5), .ZN(n8) );
  NOR2_X1 U3 ( .A1(x1), .A2(z2), .ZN(n6) );
  NAND2_X1 U4 ( .A1(w2), .A2(n6), .ZN(n7) );
  NAND2_X1 U5 ( .A1(n8), .A2(n7), .ZN(out2) );
endmodule


module s_bit3_sh3 ( y2, z1, w2, x1, out3 );
  input y2, z1, w2, x1;
  output out3;
  wire   n5, n6, n7, n8;

  INV_X1 U1 ( .A(x1), .ZN(n5) );
  NOR2_X1 U2 ( .A1(y2), .A2(n5), .ZN(n7) );
  NOR2_X1 U3 ( .A1(x1), .A2(w2), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n8) );
  AND2_X1 U5 ( .A1(z1), .A2(n8), .ZN(out3) );
endmodule


module s_bit3_sh4 ( y2, w1, z2, x1, out4 );
  input y2, w1, z2, x1;
  output out4;
  wire   n5, n6, n7, n8;

  INV_X1 U1 ( .A(x1), .ZN(n5) );
  NOR2_X1 U2 ( .A1(y2), .A2(n5), .ZN(n7) );
  NOR2_X1 U3 ( .A1(x1), .A2(w1), .ZN(n6) );
  NOR2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n8) );
  AND2_X1 U5 ( .A1(z2), .A2(n8), .ZN(out4) );
endmodule


module s_bit3_sh5 ( x2, w2, z1, y1, out5 );
  input x2, w2, z1, y1;
  output out5;
  wire   n7, n8, n9, n10;

  INV_X1 U1 ( .A(z1), .ZN(n8) );
  NAND2_X1 U2 ( .A1(w2), .A2(n8), .ZN(n7) );
  NAND2_X1 U3 ( .A1(x2), .A2(n7), .ZN(n10) );
  NOR2_X1 U4 ( .A1(y1), .A2(n8), .ZN(n9) );
  NOR2_X1 U5 ( .A1(n10), .A2(n9), .ZN(out5) );
endmodule


module s_bit3_sh6 ( x2, w1, z2, y1, out6 );
  input x2, w1, z2, y1;
  output out6;
  wire   n6, n7, n8;

  NAND2_X1 U1 ( .A1(y1), .A2(z2), .ZN(n6) );
  NAND2_X1 U2 ( .A1(x2), .A2(n6), .ZN(n8) );
  NOR2_X1 U3 ( .A1(z2), .A2(w1), .ZN(n7) );
  NOR2_X1 U4 ( .A1(n8), .A2(n7), .ZN(out6) );
endmodule


module s_bit3_sh7 ( x2, y2, w1, z1, out7 );
  input x2, y2, w1, z1;
  output out7;
  wire   n6, n7;

  XNOR2_X1 U1 ( .A(y2), .B(w1), .ZN(n7) );
  NAND2_X1 U2 ( .A1(x2), .A2(z1), .ZN(n6) );
  NOR2_X1 U3 ( .A1(n7), .A2(n6), .ZN(out7) );
endmodule


module s_bit3_sh8 ( x2, y2, w2, z2, out8 );
  input x2, y2, w2, z2;
  output out8;
  wire   n6, n7;

  XNOR2_X1 U1 ( .A(y2), .B(w2), .ZN(n7) );
  NAND2_X1 U2 ( .A1(x2), .A2(z2), .ZN(n6) );
  NOR2_X1 U3 ( .A1(n7), .A2(n6), .ZN(out8) );
endmodule


module s_bit3 ( in1, in2, out );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] out;


  s_bit3_sh1 s_bit31_inst ( .w1(in1[0]), .z1(in1[1]), .y1(in1[2]), .x1(in1[3]), 
        .out1(out[0]) );
  s_bit3_sh2 s_bit32_inst ( .w2(in2[0]), .z2(in2[1]), .y1(in1[2]), .x1(in1[3]), 
        .out2(out[1]) );
  s_bit3_sh3 s_bit33_inst ( .y2(in2[2]), .z1(in1[1]), .w2(in2[0]), .x1(in1[3]), 
        .out3(out[2]) );
  s_bit3_sh4 s_bit34_inst ( .y2(in2[2]), .w1(in1[0]), .z2(in2[1]), .x1(in1[3]), 
        .out4(out[3]) );
  s_bit3_sh5 s_bit35_inst ( .x2(in2[3]), .w2(in2[0]), .z1(in1[1]), .y1(in1[2]), 
        .out5(out[4]) );
  s_bit3_sh6 s_bit36_inst ( .x2(in2[3]), .w1(in1[0]), .z2(in2[1]), .y1(in1[2]), 
        .out6(out[5]) );
  s_bit3_sh7 s_bit37_inst ( .x2(in2[3]), .y2(in2[2]), .w1(in1[0]), .z1(in1[1]), 
        .out7(out[6]) );
  s_bit3_sh8 s_bit38_inst ( .x2(in2[3]), .y2(in2[2]), .w2(in2[0]), .z2(in2[1]), 
        .out8(out[7]) );
endmodule


module s_bit4_sh1 ( w1, z1, y1, x1, out1 );
  input w1, z1, y1, x1;
  output out1;
  wire   n5, n6, n7, n8;

  AND2_X1 U1 ( .A1(x1), .A2(z1), .ZN(n5) );
  NOR2_X1 U2 ( .A1(y1), .A2(n5), .ZN(n6) );
  NOR2_X1 U3 ( .A1(w1), .A2(n6), .ZN(n8) );
  NOR2_X1 U4 ( .A1(x1), .A2(z1), .ZN(n7) );
  OR2_X1 U5 ( .A1(n8), .A2(n7), .ZN(out1) );
endmodule


module s_bit4_sh2 ( w2, z2, y1, x1, out2 );
  input w2, z2, y1, x1;
  output out2;
  wire   n11, n12, n13, n14, n15, n16;

  INV_X1 U1 ( .A(w2), .ZN(n11) );
  NAND2_X1 U2 ( .A1(n11), .A2(y1), .ZN(n16) );
  NAND2_X1 U3 ( .A1(w2), .A2(x1), .ZN(n12) );
  NAND2_X1 U4 ( .A1(n12), .A2(z2), .ZN(n14) );
  NAND2_X1 U5 ( .A1(y1), .A2(x1), .ZN(n13) );
  NAND2_X1 U6 ( .A1(n14), .A2(n13), .ZN(n15) );
  AND2_X1 U7 ( .A1(n16), .A2(n15), .ZN(out2) );
endmodule


module s_bit4_sh3 ( y2, z1, w2, x1, out3 );
  input y2, z1, w2, x1;
  output out3;
  wire   n7, n8, n9, n10, n11;

  AND2_X1 U1 ( .A1(x1), .A2(z1), .ZN(n7) );
  NAND2_X1 U2 ( .A1(w2), .A2(n7), .ZN(n11) );
  XNOR2_X1 U3 ( .A(x1), .B(z1), .ZN(n8) );
  NOR2_X1 U4 ( .A1(n8), .A2(w2), .ZN(n9) );
  NAND2_X1 U5 ( .A1(y2), .A2(n9), .ZN(n10) );
  NAND2_X1 U6 ( .A1(n11), .A2(n10), .ZN(out3) );
endmodule


module s_bit4_sh4 ( y2, w1, z2, x1, out4 );
  input y2, w1, z2, x1;
  output out4;
  wire   n7, n8, n9, n10, n11;

  XNOR2_X1 U1 ( .A(y2), .B(z2), .ZN(n8) );
  NAND2_X1 U2 ( .A1(w1), .A2(x1), .ZN(n7) );
  NOR2_X1 U3 ( .A1(n8), .A2(n7), .ZN(n11) );
  NAND2_X1 U4 ( .A1(y2), .A2(z2), .ZN(n9) );
  NOR2_X1 U5 ( .A1(w1), .A2(n9), .ZN(n10) );
  OR2_X1 U6 ( .A1(n11), .A2(n10), .ZN(out4) );
endmodule


module s_bit4_sh5 ( x2, z1, y1, w2, out5 );
  input x2, z1, y1, w2;
  output out5;
  wire   n11, n12, n13, n14, n15, n16, n17, n18;

  INV_X1 U1 ( .A(x2), .ZN(n13) );
  NOR2_X1 U2 ( .A1(z1), .A2(y1), .ZN(n11) );
  NOR2_X1 U3 ( .A1(n13), .A2(n11), .ZN(n12) );
  NAND2_X1 U4 ( .A1(n12), .A2(w2), .ZN(n15) );
  OR2_X1 U5 ( .A1(n13), .A2(y1), .ZN(n14) );
  XNOR2_X1 U6 ( .A(n15), .B(n14), .ZN(n18) );
  AND2_X1 U7 ( .A1(z1), .A2(y1), .ZN(n16) );
  NAND2_X1 U8 ( .A1(n16), .A2(w2), .ZN(n17) );
  NAND2_X1 U9 ( .A1(n18), .A2(n17), .ZN(out5) );
endmodule


module s_bit4_sh6 ( x2, w1, y1, z2, out6 );
  input x2, w1, y1, z2;
  output out6;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(z2), .A2(y1), .ZN(n7) );
  OR2_X1 U2 ( .A1(z2), .A2(y1), .ZN(n5) );
  NAND2_X1 U3 ( .A1(x2), .A2(n5), .ZN(n6) );
  NAND2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n8) );
  AND2_X1 U5 ( .A1(n8), .A2(w1), .ZN(out6) );
endmodule


module s_bit4_sh7 ( x2, y2, w1, z1, out7 );
  input x2, y2, w1, z1;
  output out7;
  wire   n7, n8, n9, n10, n11;

  XNOR2_X1 U1 ( .A(x2), .B(y2), .ZN(n8) );
  NAND2_X1 U2 ( .A1(w1), .A2(z1), .ZN(n7) );
  NOR2_X1 U3 ( .A1(n8), .A2(n7), .ZN(n11) );
  NAND2_X1 U4 ( .A1(x2), .A2(y2), .ZN(n9) );
  NOR2_X1 U5 ( .A1(w1), .A2(n9), .ZN(n10) );
  OR2_X1 U6 ( .A1(n11), .A2(n10), .ZN(out7) );
endmodule


module s_bit4_sh8 ( x2, y2, w2, z2, out8 );
  input x2, y2, w2, z2;
  output out8;
  wire   n5, n6, n7, n8;

  NAND2_X1 U1 ( .A1(z2), .A2(y2), .ZN(n7) );
  OR2_X1 U2 ( .A1(z2), .A2(y2), .ZN(n5) );
  NAND2_X1 U3 ( .A1(x2), .A2(n5), .ZN(n6) );
  NAND2_X1 U4 ( .A1(n7), .A2(n6), .ZN(n8) );
  AND2_X1 U5 ( .A1(n8), .A2(w2), .ZN(out8) );
endmodule


module s_bit4 ( in1, in2, out );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] out;


  s_bit4_sh1 s_bit41_inst ( .w1(in1[0]), .z1(in1[1]), .y1(in1[2]), .x1(in1[3]), 
        .out1(out[0]) );
  s_bit4_sh2 s_bit42_inst ( .w2(in2[0]), .z2(in2[1]), .y1(in1[2]), .x1(in1[3]), 
        .out2(out[1]) );
  s_bit4_sh3 s_bit43_inst ( .y2(in2[2]), .z1(in1[1]), .w2(in2[0]), .x1(in1[3]), 
        .out3(out[2]) );
  s_bit4_sh4 s_bit44_inst ( .y2(in2[2]), .w1(in1[0]), .z2(in2[1]), .x1(in1[3]), 
        .out4(out[3]) );
  s_bit4_sh5 s_bit45_inst ( .x2(in2[3]), .z1(in1[1]), .y1(in1[2]), .w2(in2[0]), 
        .out5(out[4]) );
  s_bit4_sh6 s_bit46_inst ( .x2(in2[3]), .w1(in1[0]), .y1(in1[2]), .z2(in2[1]), 
        .out6(out[5]) );
  s_bit4_sh7 s_bit47_inst ( .x2(in2[3]), .y2(in2[2]), .w1(in1[0]), .z1(in1[1]), 
        .out7(out[6]) );
  s_bit4_sh8 s_bit48_inst ( .x2(in2[3]), .y2(in2[2]), .w2(in2[0]), .z2(in2[1]), 
        .out8(out[7]) );
endmodule


module s ( in1, in2, out1, out2, out3, out4 );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] out1;
  output [7:0] out2;
  output [7:0] out3;
  output [7:0] out4;


  s_bit1 sb1_inst ( .in1(in1), .in2(in2), .out(out1) );
  s_bit2 sb2_inst ( .in1(in1), .in2(in2), .out(out2) );
  s_bit3 sb3_inst ( .in1(in1), .in2(in2), .out(out3) );
  s_bit4 sb4_inst ( .in1(in1), .in2(in2), .out(out4) );
endmodule


module sbox_rmsk ( in1, in2, in3, in4, in_rand, out1, out2, out3, out4 );
  input [7:0] in1;
  input [7:0] in2;
  input [7:0] in3;
  input [7:0] in4;
  input [11:0] in_rand;
  output [7:0] out1;
  output [7:0] out2;
  output [7:0] out3;
  output [7:0] out4;
  wire   \in1[7] , \in1[0] , \in2[7] , \in2[0] , \in3[7] , \in3[0] , \in4[7] ,
         \in4[0] ;
  assign out1[7] = \in1[7] ;
  assign \in1[7]  = in1[7];
  assign out1[0] = \in1[0] ;
  assign \in1[0]  = in1[0];
  assign out2[7] = \in2[7] ;
  assign \in2[7]  = in2[7];
  assign out2[0] = \in2[0] ;
  assign \in2[0]  = in2[0];
  assign out3[7] = \in3[7] ;
  assign \in3[7]  = in3[7];
  assign out3[0] = \in3[0] ;
  assign \in3[0]  = in3[0];
  assign out4[7] = \in4[7] ;
  assign \in4[7]  = in4[7];
  assign out4[0] = \in4[0] ;
  assign \in4[0]  = in4[0];

  XOR2_X1 U1 ( .A(in_rand[11]), .B(in4[6]), .Z(out4[6]) );
  XOR2_X1 U2 ( .A(in_rand[10]), .B(in4[5]), .Z(out4[5]) );
  XOR2_X1 U3 ( .A(in_rand[9]), .B(in4[4]), .Z(out4[4]) );
  XOR2_X1 U4 ( .A(in_rand[9]), .B(in4[3]), .Z(out4[3]) );
  XOR2_X1 U5 ( .A(in_rand[10]), .B(in4[2]), .Z(out4[2]) );
  XOR2_X1 U6 ( .A(in_rand[11]), .B(in4[1]), .Z(out4[1]) );
  XOR2_X1 U7 ( .A(in_rand[8]), .B(in3[6]), .Z(out3[6]) );
  XOR2_X1 U8 ( .A(in_rand[7]), .B(in3[5]), .Z(out3[5]) );
  XOR2_X1 U9 ( .A(in_rand[6]), .B(in3[4]), .Z(out3[4]) );
  XOR2_X1 U10 ( .A(in_rand[6]), .B(in3[3]), .Z(out3[3]) );
  XOR2_X1 U11 ( .A(in_rand[7]), .B(in3[2]), .Z(out3[2]) );
  XOR2_X1 U12 ( .A(in_rand[8]), .B(in3[1]), .Z(out3[1]) );
  XOR2_X1 U13 ( .A(in_rand[5]), .B(in2[6]), .Z(out2[6]) );
  XOR2_X1 U14 ( .A(in_rand[4]), .B(in2[5]), .Z(out2[5]) );
  XOR2_X1 U15 ( .A(in_rand[3]), .B(in2[4]), .Z(out2[4]) );
  XOR2_X1 U16 ( .A(in_rand[3]), .B(in2[3]), .Z(out2[3]) );
  XOR2_X1 U17 ( .A(in_rand[4]), .B(in2[2]), .Z(out2[2]) );
  XOR2_X1 U18 ( .A(in_rand[5]), .B(in2[1]), .Z(out2[1]) );
  XOR2_X1 U19 ( .A(in_rand[2]), .B(in1[6]), .Z(out1[6]) );
  XOR2_X1 U20 ( .A(in_rand[1]), .B(in1[5]), .Z(out1[5]) );
  XOR2_X1 U21 ( .A(in_rand[0]), .B(in1[4]), .Z(out1[4]) );
  XOR2_X1 U22 ( .A(in_rand[0]), .B(in1[3]), .Z(out1[3]) );
  XOR2_X1 U23 ( .A(in_rand[1]), .B(in1[2]), .Z(out1[2]) );
  XOR2_X1 U24 ( .A(in_rand[2]), .B(in1[1]), .Z(out1[1]) );
endmodule


module share_reg_0 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module xor_cir4_0 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module affine_share1 ( i_in1, o_out1 );
  input [0:3] i_in1;
  output [0:3] o_out1;
  wire   \i_in1[1] , n2;
  assign o_out1[0] = \i_in1[1] ;
  assign \i_in1[1]  = i_in1[1];

  XNOR2_X1 U1 ( .A(i_in1[2]), .B(\i_in1[1] ), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(i_in1[3]), .ZN(o_out1[2]) );
  INV_X1 U3 ( .A(i_in1[2]), .ZN(o_out1[3]) );
  INV_X1 U4 ( .A(i_in1[0]), .ZN(o_out1[1]) );
endmodule


module affine_share2 ( i_in2, o_out2 );
  input [0:3] i_in2;
  output [0:3] o_out2;
  wire   \i_in2[1] , \i_in2[0] , \i_in2[2] , n2;
  assign o_out2[0] = \i_in2[1] ;
  assign \i_in2[1]  = i_in2[1];
  assign o_out2[1] = \i_in2[0] ;
  assign \i_in2[0]  = i_in2[0];
  assign o_out2[3] = \i_in2[2] ;
  assign \i_in2[2]  = i_in2[2];

  XNOR2_X1 U1 ( .A(\i_in2[1] ), .B(\i_in2[2] ), .ZN(n2) );
  XNOR2_X1 U2 ( .A(n2), .B(i_in2[3]), .ZN(o_out2[2]) );
endmodule


module affine_2sh ( in1, in2, out1, out2 );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] out1;
  output [3:0] out2;


  affine_share1 sh1 ( .i_in1(in1), .o_out1(out1) );
  affine_share2 sh2 ( .i_in2(in2), .o_out2(out2) );
endmodule


module xor_cir4_1 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module xor_cir4_2 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module xor_cir4_3 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module xor_cir4_4 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module xor_cir4_5 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module xor_cir4_6 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module xor_cir4_7 ( in1, in2, in3, in4, out );
  input [0:0] in1;
  input [0:0] in2;
  input [0:0] in3;
  input [0:0] in4;
  output [0:0] out;
  wire   n3, n4;

  XOR2_X1 U1 ( .A(in3[0]), .B(in4[0]), .Z(n4) );
  XNOR2_X1 U2 ( .A(in2[0]), .B(in1[0]), .ZN(n3) );
  XNOR2_X1 U3 ( .A(n4), .B(n3), .ZN(out[0]) );
endmodule


module share_reg_1 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_2 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_3 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_4 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_5 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_6 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_7 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_8 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_9 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_10 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_11 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_12 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_13 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_14 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_15 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_16 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_17 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_18 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_19 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_20 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_21 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_22 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_23 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_24 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_25 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_26 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_27 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_28 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_29 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_30 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module share_reg_31 ( i_clk, i_d, o_q );
  input i_clk, i_d;
  output o_q;


  DFF_X1 state_reg ( .D(i_d), .CK(i_clk), .Q(o_q) );
endmodule


module CMSSbox ( in_1, in_2, i_clk, i_r, out_1, out_2 );
(* SILVER="[3:0]_0" *)  input [3:0] in_1;
(* SILVER="[3:0]_1" *)  input [3:0] in_2;
(* SILVER="refresh" *)  input [11:0] i_r;
(* SILVER="[3:0]_0" *)  output [3:0] out_1;
(* SILVER="[3:0]_1" *)  output [3:0] out_2;
(* SILVER="clock" *)  input i_clk;
  wire   sbox_out8_b4, sbox_out7_b4, sbox_out6_b4, sbox_out5_b4, sbox_out4_b4,
         sbox_out3_b4, sbox_out2_b4, sbox_out1_b4, sbox_out8_b3, sbox_out7_b3,
         sbox_out6_b3, sbox_out5_b3, sbox_out4_b3, sbox_out3_b3, sbox_out2_b3,
         sbox_out1_b3, sbox_out8_b2, sbox_out7_b2, sbox_out6_b2, sbox_out5_b2,
         sbox_out4_b2, sbox_out3_b2, sbox_out2_b2, sbox_out1_b2, sbox_out8_b1,
         sbox_out7_b1, sbox_out6_b1, sbox_out5_b1, sbox_out4_b1, sbox_out3_b1,
         sbox_out2_b1, sbox_out1_b1, out_b4_reg_next8, out_b4_reg_next7,
         out_b4_reg_next6, out_b4_reg_next5, out_b4_reg_next4,
         out_b4_reg_next3, out_b4_reg_next2, out_b4_reg_next1,
         out_b3_reg_next8, out_b3_reg_next7, out_b3_reg_next6,
         out_b3_reg_next5, out_b3_reg_next4, out_b3_reg_next3,
         out_b3_reg_next2, out_b3_reg_next1, out_b2_reg_next8,
         out_b2_reg_next7, out_b2_reg_next6, out_b2_reg_next5,
         out_b2_reg_next4, out_b2_reg_next3, out_b2_reg_next2,
         out_b2_reg_next1, out_b1_reg_next8, out_b1_reg_next7,
         out_b1_reg_next6, out_b1_reg_next5, out_b1_reg_next4,
         out_b1_reg_next3, out_b1_reg_next2, out_b1_reg_next1, out_b1_reg_out1,
         out_b1_reg_out2, out_b1_reg_out3, out_b1_reg_out4, out_b1_reg_out5,
         out_b1_reg_out6, out_b1_reg_out7, out_b1_reg_out8, out_b2_reg_out1,
         out_b2_reg_out2, out_b2_reg_out3, out_b2_reg_out4, out_b2_reg_out5,
         out_b2_reg_out6, out_b2_reg_out7, out_b2_reg_out8, out_b3_reg_out1,
         out_b3_reg_out2, out_b3_reg_out3, out_b3_reg_out4, out_b3_reg_out5,
         out_b3_reg_out6, out_b3_reg_out7, out_b3_reg_out8, out_b4_reg_out1,
         out_b4_reg_out2, out_b4_reg_out3, out_b4_reg_out4, out_b4_reg_out5,
         out_b4_reg_out6, out_b4_reg_out7, out_b4_reg_out8;
  wire   [3:0] comp_sh1;
  wire   [3:0] comp_sh2;

  s SBOX_ITK ( .in1(in_1), .in2(in_2), .out1({sbox_out8_b1, sbox_out7_b1, 
        sbox_out6_b1, sbox_out5_b1, sbox_out4_b1, sbox_out3_b1, sbox_out2_b1, 
        sbox_out1_b1}), .out2({sbox_out8_b2, sbox_out7_b2, sbox_out6_b2, 
        sbox_out5_b2, sbox_out4_b2, sbox_out3_b2, sbox_out2_b2, sbox_out1_b2}), 
        .out3({sbox_out8_b3, sbox_out7_b3, sbox_out6_b3, sbox_out5_b3, 
        sbox_out4_b3, sbox_out3_b3, sbox_out2_b3, sbox_out1_b3}), .out4({
        sbox_out8_b4, sbox_out7_b4, sbox_out6_b4, sbox_out5_b4, sbox_out4_b4, 
        sbox_out3_b4, sbox_out2_b4, sbox_out1_b4}) );
  sbox_rmsk srmsk ( .in1({sbox_out8_b1, sbox_out7_b1, sbox_out6_b1, 
        sbox_out5_b1, sbox_out4_b1, sbox_out3_b1, sbox_out2_b1, sbox_out1_b1}), 
        .in2({sbox_out8_b2, sbox_out7_b2, sbox_out6_b2, sbox_out5_b2, 
        sbox_out4_b2, sbox_out3_b2, sbox_out2_b2, sbox_out1_b2}), .in3({
        sbox_out8_b3, sbox_out7_b3, sbox_out6_b3, sbox_out5_b3, sbox_out4_b3, 
        sbox_out3_b3, sbox_out2_b3, sbox_out1_b3}), .in4({sbox_out8_b4, 
        sbox_out7_b4, sbox_out6_b4, sbox_out5_b4, sbox_out4_b4, sbox_out3_b4, 
        sbox_out2_b4, sbox_out1_b4}), .in_rand(i_r), .out1({out_b1_reg_next8, 
        out_b1_reg_next7, out_b1_reg_next6, out_b1_reg_next5, out_b1_reg_next4, 
        out_b1_reg_next3, out_b1_reg_next2, out_b1_reg_next1}), .out2({
        out_b2_reg_next8, out_b2_reg_next7, out_b2_reg_next6, out_b2_reg_next5, 
        out_b2_reg_next4, out_b2_reg_next3, out_b2_reg_next2, out_b2_reg_next1}), .out3({out_b3_reg_next8, out_b3_reg_next7, out_b3_reg_next6, 
        out_b3_reg_next5, out_b3_reg_next4, out_b3_reg_next3, out_b3_reg_next2, 
        out_b3_reg_next1}), .out4({out_b4_reg_next8, out_b4_reg_next7, 
        out_b4_reg_next6, out_b4_reg_next5, out_b4_reg_next4, out_b4_reg_next3, 
        out_b4_reg_next2, out_b4_reg_next1}) );
  share_reg_0 out_reg_b1_s1 ( .i_clk(i_clk), .i_d(out_b1_reg_next1), .o_q(
        out_b1_reg_out1) );
  share_reg_31 out_reg_b1_s2 ( .i_clk(i_clk), .i_d(out_b1_reg_next2), .o_q(
        out_b1_reg_out2) );
  share_reg_30 out_reg_b1_s3 ( .i_clk(i_clk), .i_d(out_b1_reg_next3), .o_q(
        out_b1_reg_out3) );
  share_reg_29 out_reg_b1_s4 ( .i_clk(i_clk), .i_d(out_b1_reg_next4), .o_q(
        out_b1_reg_out4) );
  share_reg_28 out_reg_b1_s5 ( .i_clk(i_clk), .i_d(out_b1_reg_next5), .o_q(
        out_b1_reg_out5) );
  share_reg_27 out_reg_b1_s6 ( .i_clk(i_clk), .i_d(out_b1_reg_next6), .o_q(
        out_b1_reg_out6) );
  share_reg_26 out_reg_b1_s7 ( .i_clk(i_clk), .i_d(out_b1_reg_next7), .o_q(
        out_b1_reg_out7) );
  share_reg_25 out_reg_b1_s8 ( .i_clk(i_clk), .i_d(out_b1_reg_next8), .o_q(
        out_b1_reg_out8) );
  share_reg_24 out_reg_b2_s1 ( .i_clk(i_clk), .i_d(out_b2_reg_next1), .o_q(
        out_b2_reg_out1) );
  share_reg_23 out_reg_b2_s2 ( .i_clk(i_clk), .i_d(out_b2_reg_next2), .o_q(
        out_b2_reg_out2) );
  share_reg_22 out_reg_b2_s3 ( .i_clk(i_clk), .i_d(out_b2_reg_next3), .o_q(
        out_b2_reg_out3) );
  share_reg_21 out_reg_b2_s4 ( .i_clk(i_clk), .i_d(out_b2_reg_next4), .o_q(
        out_b2_reg_out4) );
  share_reg_20 out_reg_b2_s5 ( .i_clk(i_clk), .i_d(out_b2_reg_next5), .o_q(
        out_b2_reg_out5) );
  share_reg_19 out_reg_b2_s6 ( .i_clk(i_clk), .i_d(out_b2_reg_next6), .o_q(
        out_b2_reg_out6) );
  share_reg_18 out_reg_b2_s7 ( .i_clk(i_clk), .i_d(out_b2_reg_next7), .o_q(
        out_b2_reg_out7) );
  share_reg_17 out_reg_b2_s8 ( .i_clk(i_clk), .i_d(out_b2_reg_next8), .o_q(
        out_b2_reg_out8) );
  share_reg_16 out_reg_b3_s1 ( .i_clk(i_clk), .i_d(out_b3_reg_next1), .o_q(
        out_b3_reg_out1) );
  share_reg_15 out_reg_b3_s2 ( .i_clk(i_clk), .i_d(out_b3_reg_next2), .o_q(
        out_b3_reg_out2) );
  share_reg_14 out_reg_b3_s3 ( .i_clk(i_clk), .i_d(out_b3_reg_next3), .o_q(
        out_b3_reg_out3) );
  share_reg_13 out_reg_b3_s4 ( .i_clk(i_clk), .i_d(out_b3_reg_next4), .o_q(
        out_b3_reg_out4) );
  share_reg_12 out_reg_b3_s5 ( .i_clk(i_clk), .i_d(out_b3_reg_next5), .o_q(
        out_b3_reg_out5) );
  share_reg_11 out_reg_b3_s6 ( .i_clk(i_clk), .i_d(out_b3_reg_next6), .o_q(
        out_b3_reg_out6) );
  share_reg_10 out_reg_b3_s7 ( .i_clk(i_clk), .i_d(out_b3_reg_next7), .o_q(
        out_b3_reg_out7) );
  share_reg_9 out_reg_b3_s8 ( .i_clk(i_clk), .i_d(out_b3_reg_next8), .o_q(
        out_b3_reg_out8) );
  share_reg_8 out_reg_b4_s1 ( .i_clk(i_clk), .i_d(out_b4_reg_next1), .o_q(
        out_b4_reg_out1) );
  share_reg_7 out_reg_b4_s2 ( .i_clk(i_clk), .i_d(out_b4_reg_next2), .o_q(
        out_b4_reg_out2) );
  share_reg_6 out_reg_b4_s3 ( .i_clk(i_clk), .i_d(out_b4_reg_next3), .o_q(
        out_b4_reg_out3) );
  share_reg_5 out_reg_b4_s4 ( .i_clk(i_clk), .i_d(out_b4_reg_next4), .o_q(
        out_b4_reg_out4) );
  share_reg_4 out_reg_b4_s5 ( .i_clk(i_clk), .i_d(out_b4_reg_next5), .o_q(
        out_b4_reg_out5) );
  share_reg_3 out_reg_b4_s6 ( .i_clk(i_clk), .i_d(out_b4_reg_next6), .o_q(
        out_b4_reg_out6) );
  share_reg_2 out_reg_b4_s7 ( .i_clk(i_clk), .i_d(out_b4_reg_next7), .o_q(
        out_b4_reg_out7) );
  share_reg_1 out_reg_b4_s8 ( .i_clk(i_clk), .i_d(out_b4_reg_next8), .o_q(
        out_b4_reg_out8) );
  xor_cir4_0 comp_b1_s1 ( .in1(out_b1_reg_out1), .in2(out_b1_reg_out2), .in3(
        out_b1_reg_out3), .in4(out_b1_reg_out4), .out(comp_sh1[0]) );
  xor_cir4_7 comp_b1_s2 ( .in1(out_b1_reg_out5), .in2(out_b1_reg_out6), .in3(
        out_b1_reg_out7), .in4(out_b1_reg_out8), .out(comp_sh2[0]) );
  xor_cir4_6 comp_b2_s1 ( .in1(out_b2_reg_out1), .in2(out_b2_reg_out2), .in3(
        out_b2_reg_out3), .in4(out_b2_reg_out4), .out(comp_sh1[1]) );
  xor_cir4_5 comp_b2_s2 ( .in1(out_b2_reg_out5), .in2(out_b2_reg_out6), .in3(
        out_b2_reg_out7), .in4(out_b2_reg_out8), .out(comp_sh2[1]) );
  xor_cir4_4 comp_b3_s1 ( .in1(out_b3_reg_out1), .in2(out_b3_reg_out2), .in3(
        out_b3_reg_out3), .in4(out_b3_reg_out4), .out(comp_sh1[2]) );
  xor_cir4_3 comp_b3_s2 ( .in1(out_b3_reg_out5), .in2(out_b3_reg_out6), .in3(
        out_b3_reg_out7), .in4(out_b3_reg_out8), .out(comp_sh2[2]) );
  xor_cir4_2 comp_b4_s1 ( .in1(out_b4_reg_out1), .in2(out_b4_reg_out2), .in3(
        out_b4_reg_out3), .in4(out_b4_reg_out4), .out(comp_sh1[3]) );
  xor_cir4_1 comp_b4_s2 ( .in1(out_b4_reg_out5), .in2(out_b4_reg_out6), .in3(
        out_b4_reg_out7), .in4(out_b4_reg_out8), .out(comp_sh2[3]) );
  affine_2sh outaff ( .in1(comp_sh1), .in2(comp_sh2), .out1(out_1), .out2(
        out_2) );
endmodule

