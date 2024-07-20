/* -----------------------------------------------------------------------------------------
 Masked AES hardware macro based on 2-share threshold implementation

  This circuit works only with AES_Comp.
  Compatibility for another cipher module may be provided in future release.

  File name   : AES_TI_core.v
  Version     : 2.1
  Created     : December 1, 2016
  Last update : October 4, 2021
  Desgined by : Rei Ueno

  Copyright (C) 2021 Tohoku University

  By using this code, you agree to the following terms and conditions.

  This code is copyrighted by Tohoku University ("us").

  Permission is hereby granted to copy, reproduce, redistribute or
  otherwise use this code as long as: there is no monetary profit gained
  specifically from the use or reproduction of this code, it is not sold,
  rented, traded or otherwise marketed, and this copyright notice is
  included prominently in any copy made.

  We shall not be liable for any damages, including without limitation
  direct, indirect, incidental, special or consequential damages arising
  from the use of this code.

  When you publish any results arising from the use of this code, we will
  appreciate it if you can cite our paper.

  Rei Ueno, Naofumi Homma, and Takafumi Aoki,
  "Towards More DPA-Resistant AES Hardware Architecture Based on Threshold Implementation,"
  In: Silvain Guilley (eds.) International Workshop on Constructive Side-Channel Analysis and Secure Design (COSADE),
  pp. 50--64, Lecture Note in Computer Science, Vol. 10348, Springer,
  doi: https://doi.org/10.1007/978-3-319-64647-3_4
----------------------------------------------------------------------------------------- */

/* ---------------------------------------------------------------------------------------------------
 About this architecture:

 This architecture completes one block encryption within 219 clock cycles.
 The I/O and behavior of this arcthiecture basically follow the SASEBO AES core at
 http://www.aoki.ecei.tohoku.ac.jp/crypto/
 except for the number of encryption clock cylces and trigger.
 Although the original architecture presented in the above paper has byte-serial I/O for data and key,
 we employ a 128-bit wise I/O for the ease of trace acquisition.

 The initial masking is performed immediately after data input, and unmasking is performed just before data output.
 This arcthiecture does NOT protect the round key and key scheduling datapath, as it causes no DPA leakage.
 (However it of course causes leakage for the TVLA or input distinguishing attack unless the key is fixed.)
 Roundness is generated using four 128-bit XOR-shifts (each of which generates 32-bit randomness per clock)
 with a hard-coded seed.

 The linear mappings in this architecture is optimized using a technique named "multiplicative-offset."
 See https://ieeexplore.ieee.org/document/8922779 .

 To use this AES core, you require a non-masked S-box hardware (for mudule "GF_INV_8") provided at
 https://faculty.nps.edu/drcanrig/pub/index.html .
 If you use this non-masked S-box, you MUST follow the terms and considtions specified for its use.
---------------------------------------------------------------------------------------------------- */
module Stage2 (in0, in1, in2, in3,
               out0, out1, out2, out3, out4, out5, out6, out7,
               r0, r1, r2, r3, r4, r5, r6);
  input [3:0] in0, in1, in2, in3;
  output [3:0] out0, out1, out2, out3, out4, out5, out6, out7;
  // input [3:0] r0, r1, r2, r3, r4, r5, r6;
  input [3:0] r0, r1, r2;
  input [3:0] r3, r4, r5, r6;
  wire a0, a1, a2, a3, b0, b1, b2, b3;
  wire aa02, aa03, aa12, aa13;
  wire ab02, ab03, ab12, ab13;
  wire ba02, ba03, ba12, ba13;
  wire bb02, bb03, bb12, bb13;
  wire aba013, aba123;
  wire abb012, abb013;
  wire baa012, baa013;
  wire bab013, bab123;
  wire aab123, bba123;
  wire [3:0] z000, z001, z010, z011, z100, z101, z110, z111;

  // Compression
  assign {a3, a2, a1, a0} = in0 ^ in1;
  assign {b3, b2, b1, b0} = in2 ^ in3;

  // Nonlinear layer
  /* assign aa01 = a0 & a1; assign ab01 = a0 & b1; assign ba01 = b0 & a1; assign bb01 = b0 & b1; */
  assign aa02 = a0 & a2;  assign ab02 = a0 & b2;  assign ba02 = b0 & a2;  assign bb02 = b0 & b2;
  assign aa03 = a0 & a3;  assign ab03 = a0 & b3;  assign ba03 = b0 & a3;  assign bb03 = b0 & b3;
  assign aa12 = a1 & a2;  assign ab12 = a1 & b2;  assign ba12 = b1 & a2;  assign bb12 = b1 & b2;
  assign aa13 = a1 & a3;  assign ab13 = a1 & b3;  assign ba13 = b1 & a3;  assign bb13 = b1 & b3;
  /* assign aa23 = a2 & a3;  assign ab23 = a2 & b3;  assign ba23 = b2 & a3;  assign bb23 = b2 & b3; */

  /* assign aaa012 = aa01&a2; assign aaa013 = aa13&a0; assign aaa023 = aa02&a3; assign aaa123 = aa23&a1; */
  /* assign aab012 = aa01&b2; assign aab013 = ab13&a0; assign aab023 = aa02&b3; */ assign aab123 = ab13&a2;
  /* assign aba012 = ab01&a2; */ assign aba013 = aa03&b1; /* assign aba023 = ab02&a3; */ assign aba123 = aa13&b2;
  assign abb012 = bb12&a0; assign abb013 = ab03&b1; /* assign abb023 = ab02&b3; assign abb123 = bb23&a1; */
  assign baa012 = aa12&b0; assign baa013 = ba03&a1; /* assign baa023 = ba02&a3; assign baa123 = aa23&b1; */
  /* assign bab012 = ba01&b2; */ assign bab013 = bb03&a1; /* assign bab023 = ba02&b3; */ assign bab123 = bb13&a2;
  /* assign bba012 = bb01&a2; assign bba013 = ba13&b0; assign bba023 = bb02&a3; */ assign bba123 = ba13&b2;
  /* assign bbb012 = bb01&b2; assign bbb013 = bb13&b0; assign bbb023 = bb02&b3; assign bbb123 = bb23&b1; */

  // // Linear layer
  assign z000 = {aa12|a0, aa13|a0, aa03|a2, aa13|a2};
  assign z001 = {ab12&(~a0), ab13&(~a0), ab03&(~a2), ab13&(~a2)^ab03};
  assign z010 = {b1&(~aa02^b3), aba013^ba12^aa02, a3&(~ab02^a1), aba123^ab02};
  assign z011 = {abb012^ba13, abb013^ab02^bb12, b3&(ab02^a1), b2&(ab13^b0)^bb03};
  assign z100 = {baa012^ab13, baa013^ba02^aa12, a3&(ba02^b1), a2&(ba13^a0)^aa03};
  assign z101 = {a1&(~bb02^a3), bab013^ab12^bb02, b3&(~ba02^b1), bab123^ba02};
  assign z110 = {ba12&(~b0), ba13&(~b0), ba03&(~b2), ba13&(~b2)^ba03};
  assign z111 = {bb12|b0, bb13|b0, bb03|b2, bb13|b2};

  // // Refreshing layer
  assign out0 = z000 ^ r0;
  assign out1 = z001 ^ r1;
  assign out2 = z010 ^ r2;
  assign out3 = z011 ^ r3;
  assign out4 = z100 ^ r4;
  assign out5 = z101 ^ r5;
  assign out6 = z110 ^ r6;
  assign out7 = z111 ^ r0 ^ r1 ^ r2 ^ r3 ^ r4 ^ r5 ^ r6;
endmodule // Stage2

