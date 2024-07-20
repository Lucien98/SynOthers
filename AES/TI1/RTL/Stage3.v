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
module Stage3 (inh0, inh1, inl0, inl1, in0, in1, in2, in3, in4, in5, in6, in7,
               out0, out1, out2, out3, out4, out5, out6, out7, r0, r1, r2, r3, r4, r5);
  input [3:0] inh0, inh1, inl0, inl1,
              in0, in1, in2, in3, in4, in5, in6, in7;
  output [3:0] out0, out1, out2, out3, out4, out5, out6, out7;
  input [3:0] r0, r1, r2, r3, r4, r5;
  wire [3:0] a0, a1, z0, z1, z2, z3, z4, z5, z6, z7;

  // Compression
  assign a0 = in0 ^ in2 ^ in4 ^ in6;
  assign a1 = in1 ^ in3 ^ in5 ^ in7;

  wire [1:0] ff0, ff1;
  wire f0, f1, h0, l0, h1, l1;
  assign ff0 = a0[3:2] ^ a0[1:0];
  assign f0 = ^ff0;
  assign {h0, l0} = {a0[3]^a0[2], a0[1]^a0[0]};

  assign ff1 = a1[3:2] ^ a1[1:0];
  assign f1 = ^ff1;
  assign {h1, l1} = {a1[3]^a1[2], a1[1]^a1[0]};

  gf24mul_factoring mulf0 (.in0(inl0), .in1(a0), .ff(ff0), .f(f0), .h(h0), .l(l0), .out0(z0));
  gf24mul_factoring mulf1 (.in0(inl0), .in1(a1), .ff(ff1), .f(f1), .h(h1), .l(l1), .out0(z1));
  gf24mul_factoring mulf2 (.in0(inl1), .in1(a0), .ff(ff0), .f(f0), .h(h0), .l(l0), .out0(z2));
  gf24mul_factoring mulf3 (.in0(inl1), .in1(a1), .ff(ff1), .f(f1), .h(h1), .l(l1), .out0(z3));

  gf24mul_factoring mulf4 (.in0(inh0), .in1(a0), .ff(ff0), .f(f0), .h(h0), .l(l0), .out0(z4));
  gf24mul_factoring mulf5 (.in0(inh0), .in1(a1), .ff(ff1), .f(f1), .h(h1), .l(l1), .out0(z5));
  gf24mul_factoring mulf6 (.in0(inh1), .in1(a0), .ff(ff0), .f(f0), .h(h0), .l(l0), .out0(z6));
  gf24mul_factoring mulf7 (.in0(inh1), .in1(a1), .ff(ff1), .f(f1), .h(h1), .l(l1), .out0(z7));

  assign out0 = z0 ^ r0;
  assign out1 = z1 ^ r1;
  assign out2 = z2 ^ r2;
  assign out3 = z3 ^ r0 ^ r1 ^ r2;

  assign out4 = z4 ^ r3;
  assign out5 = z5 ^ r4;
  assign out6 = z6 ^ r5;
  assign out7 = z7 ^ r3 ^ r4 ^ r5;
endmodule // Stage3
