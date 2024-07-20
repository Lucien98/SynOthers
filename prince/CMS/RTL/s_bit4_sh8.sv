// ----------------------------------------------------------------------------
// Provided by the authors of https://eprint.iacr.org/2018/922
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
// Copyright Message
// ----------------------------------------------------------------------------
//
// 
// COPYRIGHT (c) NXP B.V. 2018
//
// All rights are reserved.
//
// Author Du�an Bo�ilov
// ----------------------------------------------------------------------------

module s_bit4_sh8 (
  x2,
  y2,
  w2,
  z2,
  out8
);

    input wire x2;
    input wire y2;
    input wire w2;
    input wire z2;

    output wire out8;

    assign out8 = y2 & z2 & w2 ^ x2 & z2 & w2 ^ x2 & y2 & w2 ;

endmodule
