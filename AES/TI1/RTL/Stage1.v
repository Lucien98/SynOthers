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

module Stage1 (in00, in01, in10, in11, out0, out1, out2, out3, r0, r1, r2);
  input [3:0] in00, in01, in10, in11; // in0 = in00 + in01, in1 = in10 + in11
  output [3:0] out0, out1, out2, out3;
  input [3:0] r0, r1, r2; // fresh masks
  wire [3:0] p0, p1, p2, p3, s0, s1;

  gf24mul mul0 (.in0(in00), .in1(in10), .out0(p0));
  gf24mul mul1 (.in0(in00), .in1(in11), .out0(p1));
  gf24mul mul2 (.in0(in01), .in1(in10), .out0(p2));
  gf24mul mul3 (.in0(in01), .in1(in11), .out0(p3));

  SqSc SqSc0 (.in0(in00^in10), .out0(s0));
  SqSc SqSc1 (.in0(in01^in11), .out0(s1));

  assign out0 = p0 ^ r0 ^ s0;
  assign out1 = p1 ^ r1;
  assign out2 = p2 ^ (r0 ^ r1 ^ r2);
  assign out3 = p3 ^ s1 ^ r2;
endmodule // Stage1

