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
module inversion_TI (in0, in1, out0, out1, out2, out3, r, CLK);
  input [7:0] in0, in1;
  output [7:0] out0, out1, out2, out3;
  input [63:0] r;
  input CLK;
  reg [3:0] s0reg, s1reg, s2reg, s3reg, i0reg, i1reg, i2reg, i3reg, i4reg, i5reg, i6reg, i7reg,
            h00reg, h01reg, h10reg, h11reg, l00reg, l01reg, l10reg, l11reg;

  wire [3:0] s0, s1, s2, s3;
  Stage1 S1 (.in00(in0[3:0]), .in01(in1[3:0]), .in10(in0[7:4]), .in11(in1[7:4]),
             .out0(s0), .out1(s1), .out2(s2), .out3(s3), .r0(r[47:44]), .r1(r[43:40]), .r2(r[39:36]));

  wire [3:0] i0, i1, i2, i3, i4, i5, i6, i7;
  Stage2 S2 (.in0(s0reg), .in1(s1reg), .in2(s2reg), .in3(s3reg),
             .out0(i0), .out1(i1), .out2(i2), .out3(i3), .out4(i4), .out5(i5), .out6(i6), .out7(i7),
             .r0(r[35:32]), .r1(r[31:28]), .r2(r[27:24]), .r3(r[51:48]), .r4(r[55:52]), .r5(r[59:56]), .r6(r[63:60]));

  wire [3:0] t0, t1, t2, t3, u0, u1, u2, u3;
  Stage3 S3 (.inh0(h10reg), .inh1(h11reg), .inl0(l10reg), .inl1(l11reg),
             .in0(i0reg), .in1(i1reg), .in2(i2reg), .in3(i3reg),
             .in4(i4reg), .in5(i5reg), .in6(i6reg), .in7(i7reg),
             .out0(out0[7:4]), .out1(out1[7:4]), .out2(out2[7:4]), .out3(out3[7:4]),
             .out4(out0[3:0]), .out5(out1[3:0]), .out6(out2[3:0]), .out7(out3[3:0]),
             .r0(r[23:20]), .r1(r[19:16]), .r2(r[15:12]), .r3(r[11:8]), .r4(r[7:4]), .r5(r[3:0]));

  always @(posedge CLK) begin
    s0reg <= s0; s1reg <= s1; s2reg <= s2; s3reg <= s3;
    i0reg <= i0; i1reg <= i1; i2reg <= i2; i3reg <= i3; i4reg <= i4; i5reg <= i5; i6reg <= i6; i7reg <= i7;
    h00reg <= in0[7:4]; h01reg <= in1[7:4]; l00reg <= in0[3:0]; l01reg <= in1[3:0];
    h10reg <= h00reg; h11reg <= h01reg; l10reg <= l00reg; l11reg <= l01reg;
  end
endmodule // Sbox_TI
