/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jul  1 04:24:45 2024
/////////////////////////////////////////////////////////////


module AffineInput_Unit_0 ( A, Z );
  input [7:0] A;
  output [7:0] Z;
  wire   n8, n9, n10, n11, n12, n13;
  assign Z[2] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[3]), .Z(n10) );
  XOR2_X1 U2 ( .A(n10), .B(A[4]), .Z(n9) );
  XNOR2_X1 U3 ( .A(A[0]), .B(A[7]), .ZN(n8) );
  XNOR2_X1 U4 ( .A(n9), .B(n8), .ZN(Z[3]) );
  XNOR2_X1 U5 ( .A(A[6]), .B(A[0]), .ZN(n12) );
  XOR2_X1 U6 ( .A(A[2]), .B(n10), .Z(n11) );
  XNOR2_X1 U7 ( .A(n12), .B(n11), .ZN(Z[0]) );
  XNOR2_X1 U8 ( .A(A[5]), .B(n12), .ZN(Z[1]) );
  XOR2_X1 U9 ( .A(Z[1]), .B(A[7]), .Z(Z[4]) );
  XOR2_X1 U10 ( .A(Z[1]), .B(A[4]), .Z(Z[6]) );
  XOR2_X1 U11 ( .A(A[1]), .B(Z[1]), .Z(Z[5]) );
  XNOR2_X1 U12 ( .A(Z[5]), .B(A[2]), .ZN(n13) );
  XNOR2_X1 U13 ( .A(n13), .B(A[7]), .ZN(Z[7]) );
endmodule


module AffineInput_Unit_3 ( A, Z );
  input [7:0] A;
  output [7:0] Z;
  wire   n15, n16, n17, n18, n19, n20;
  assign Z[2] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[3]), .Z(n17) );
  XOR2_X1 U2 ( .A(n17), .B(A[4]), .Z(n16) );
  XNOR2_X1 U3 ( .A(A[0]), .B(A[7]), .ZN(n15) );
  XNOR2_X1 U4 ( .A(n16), .B(n15), .ZN(Z[3]) );
  XNOR2_X1 U5 ( .A(A[6]), .B(A[0]), .ZN(n19) );
  XOR2_X1 U6 ( .A(A[2]), .B(n17), .Z(n18) );
  XNOR2_X1 U7 ( .A(n19), .B(n18), .ZN(Z[0]) );
  XNOR2_X1 U8 ( .A(A[5]), .B(n19), .ZN(Z[1]) );
  XOR2_X1 U9 ( .A(Z[1]), .B(A[7]), .Z(Z[4]) );
  XOR2_X1 U10 ( .A(Z[1]), .B(A[4]), .Z(Z[6]) );
  XOR2_X1 U11 ( .A(A[1]), .B(Z[1]), .Z(Z[5]) );
  XNOR2_X1 U12 ( .A(Z[5]), .B(A[2]), .ZN(n20) );
  XNOR2_X1 U13 ( .A(n20), .B(A[7]), .ZN(Z[7]) );
endmodule


module GF16MulXorSqSc_Unit ( clk, ha0ga0fa0ea0, ha1ga1fa1ea1, da0ca0ba0aa0, 
        da1ca1ba1aa1, xa, ya, za, ta, hb0gb0fb0eb0, hb1gb1fb1eb1, db0cb0bb0ab0, 
        db1cb1bb1ab1, xb, yb, zb, tb );
  input [3:0] ha0ga0fa0ea0;
  input [3:0] ha1ga1fa1ea1;
  input [3:0] da0ca0ba0aa0;
  input [3:0] da1ca1ba1aa1;
  output [1:0] xa;
  output [1:0] ya;
  output [1:0] za;
  output [1:0] ta;
  input [3:0] hb0gb0fb0eb0;
  input [3:0] hb1gb1fb1eb1;
  input [3:0] db0cb0bb0ab0;
  input [3:0] db1cb1bb1ab1;
  output [1:0] xb;
  output [1:0] yb;
  output [1:0] zb;
  output [1:0] tb;
  input clk;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N20, N21, N22, N23, N24, N26, N27, N28, N29, N31, n354,
         n355, n356, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711, n712, n713, n714,
         n715, n716, n717, n718, n719, n720, n721, n722, n723, n724, n725,
         n726, n727, n728, n729, n730, n731, n732, n733, n734, n735, n736,
         n737, n738, n739, n740, n741, n742, n743, n744, n745, n746, n747,
         n748, n749, n750, n751, n752, n753, n754, n755, n756, n757, n758,
         n759, n760, n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781;
  wire   [3:0] xa_r;
  wire   [3:0] ya_r;
  wire   [3:0] za_r;
  wire   [3:0] ta_r;
  wire   [3:0] xb_r;
  wire   [3:0] yb_r;
  wire   [3:0] zb_r;
  wire   [3:0] tb_r;

  DFF_X1 \xa_r_reg[3]  ( .D(N3), .CK(clk), .Q(xa_r[3]) );
  DFF_X1 \xa_r_reg[2]  ( .D(N2), .CK(clk), .Q(xa_r[2]) );
  DFF_X1 \xa_r_reg[1]  ( .D(N1), .CK(clk), .Q(xa_r[1]) );
  DFF_X1 \xa_r_reg[0]  ( .D(N0), .CK(clk), .Q(xa_r[0]) );
  DFF_X1 \ya_r_reg[3]  ( .D(N7), .CK(clk), .Q(ya_r[3]) );
  DFF_X1 \ya_r_reg[2]  ( .D(N6), .CK(clk), .Q(ya_r[2]) );
  DFF_X1 \ya_r_reg[1]  ( .D(N5), .CK(clk), .Q(ya_r[1]) );
  DFF_X1 \ya_r_reg[0]  ( .D(N4), .CK(clk), .Q(ya_r[0]) );
  DFF_X1 \za_r_reg[3]  ( .D(N11), .CK(clk), .Q(za_r[3]) );
  DFF_X1 \za_r_reg[2]  ( .D(N10), .CK(clk), .Q(za_r[2]) );
  DFF_X1 \za_r_reg[1]  ( .D(n354), .CK(clk), .Q(za_r[1]) );
  DFF_X1 \za_r_reg[0]  ( .D(N8), .CK(clk), .Q(za_r[0]) );
  DFF_X1 \ta_r_reg[3]  ( .D(N15), .CK(clk), .Q(ta_r[3]) );
  DFF_X1 \ta_r_reg[2]  ( .D(N14), .CK(clk), .Q(ta_r[2]) );
  DFF_X1 \ta_r_reg[1]  ( .D(N13), .CK(clk), .Q(ta_r[1]) );
  DFF_X1 \ta_r_reg[0]  ( .D(N12), .CK(clk), .Q(ta_r[0]) );
  DFF_X1 \xb_r_reg[3]  ( .D(N19), .CK(clk), .Q(xb_r[3]) );
  DFF_X1 \xb_r_reg[2]  ( .D(N18), .CK(clk), .Q(xb_r[2]) );
  DFF_X1 \xb_r_reg[1]  ( .D(N17), .CK(clk), .Q(xb_r[1]) );
  DFF_X1 \xb_r_reg[0]  ( .D(N16), .CK(clk), .Q(xb_r[0]) );
  DFF_X1 \yb_r_reg[3]  ( .D(N23), .CK(clk), .Q(yb_r[3]) );
  DFF_X1 \yb_r_reg[2]  ( .D(N22), .CK(clk), .Q(yb_r[2]) );
  DFF_X1 \yb_r_reg[1]  ( .D(N21), .CK(clk), .Q(yb_r[1]) );
  DFF_X1 \yb_r_reg[0]  ( .D(N20), .CK(clk), .Q(yb_r[0]) );
  DFF_X1 \zb_r_reg[3]  ( .D(N27), .CK(clk), .Q(zb_r[3]) );
  DFF_X1 \zb_r_reg[2]  ( .D(N26), .CK(clk), .Q(zb_r[2]) );
  DFF_X1 \zb_r_reg[1]  ( .D(n356), .CK(clk), .Q(zb_r[1]) );
  DFF_X1 \zb_r_reg[0]  ( .D(N24), .CK(clk), .Q(zb_r[0]) );
  DFF_X1 \tb_r_reg[3]  ( .D(N31), .CK(clk), .Q(tb_r[3]) );
  DFF_X1 \tb_r_reg[2]  ( .D(n355), .CK(clk), .Q(tb_r[2]) );
  DFF_X1 \tb_r_reg[1]  ( .D(N29), .CK(clk), .Q(tb_r[1]) );
  DFF_X1 \tb_r_reg[0]  ( .D(N28), .CK(clk), .Q(tb_r[0]) );
  XOR2_X1 U3 ( .A(yb_r[0]), .B(yb_r[1]), .Z(yb[0]) );
  XOR2_X1 U4 ( .A(tb_r[2]), .B(tb_r[3]), .Z(tb[1]) );
  XOR2_X1 U5 ( .A(zb_r[2]), .B(zb_r[3]), .Z(zb[1]) );
  XOR2_X1 U6 ( .A(zb_r[0]), .B(zb_r[1]), .Z(zb[0]) );
  XOR2_X1 U7 ( .A(za_r[2]), .B(za_r[3]), .Z(za[1]) );
  XOR2_X1 U8 ( .A(za_r[0]), .B(za_r[1]), .Z(za[0]) );
  XOR2_X1 U9 ( .A(yb_r[2]), .B(yb_r[3]), .Z(yb[1]) );
  XOR2_X1 U10 ( .A(ya_r[2]), .B(ya_r[3]), .Z(ya[1]) );
  XOR2_X1 U11 ( .A(ya_r[0]), .B(ya_r[1]), .Z(ya[0]) );
  XOR2_X1 U12 ( .A(xb_r[2]), .B(xb_r[3]), .Z(xb[1]) );
  XOR2_X1 U13 ( .A(xb_r[0]), .B(xb_r[1]), .Z(xb[0]) );
  XOR2_X1 U14 ( .A(xa_r[2]), .B(xa_r[3]), .Z(xa[1]) );
  XOR2_X1 U15 ( .A(xa_r[0]), .B(xa_r[1]), .Z(xa[0]) );
  XOR2_X1 U16 ( .A(tb_r[0]), .B(tb_r[1]), .Z(tb[0]) );
  XOR2_X1 U17 ( .A(ta_r[2]), .B(ta_r[3]), .Z(ta[1]) );
  XOR2_X1 U18 ( .A(ta_r[0]), .B(ta_r[1]), .Z(ta[0]) );
  NAND2_X1 U19 ( .A1(da0ca0ba0aa0[3]), .A2(ha1ga1fa1ea1[3]), .ZN(n423) );
  NAND2_X1 U20 ( .A1(ha1ga1fa1ea1[3]), .A2(da0ca0ba0aa0[1]), .ZN(n421) );
  NAND2_X1 U21 ( .A1(da0ca0ba0aa0[3]), .A2(ha1ga1fa1ea1[1]), .ZN(n420) );
  XNOR2_X1 U22 ( .A(n421), .B(n420), .ZN(n422) );
  XNOR2_X1 U23 ( .A(da0ca0ba0aa0[0]), .B(n422), .ZN(n774) );
  XNOR2_X1 U24 ( .A(n423), .B(n774), .ZN(n516) );
  INV_X1 U25 ( .A(ha1ga1fa1ea1[2]), .ZN(n779) );
  XOR2_X1 U26 ( .A(n779), .B(ha1ga1fa1ea1[0]), .Z(n425) );
  XNOR2_X1 U27 ( .A(da0ca0ba0aa0[2]), .B(da0ca0ba0aa0[0]), .ZN(n424) );
  NOR2_X1 U28 ( .A1(n425), .A2(n424), .ZN(n775) );
  INV_X1 U29 ( .A(db0cb0bb0ab0[0]), .ZN(n705) );
  XNOR2_X1 U30 ( .A(n775), .B(n705), .ZN(n429) );
  INV_X1 U31 ( .A(ha1ga1fa1ea1[0]), .ZN(n576) );
  NAND2_X1 U32 ( .A1(da0ca0ba0aa0[1]), .A2(ha1ga1fa1ea1[0]), .ZN(n427) );
  NAND2_X1 U33 ( .A1(da0ca0ba0aa0[0]), .A2(ha1ga1fa1ea1[1]), .ZN(n426) );
  XOR2_X1 U34 ( .A(n427), .B(n426), .Z(n521) );
  XOR2_X1 U35 ( .A(n576), .B(n521), .Z(n428) );
  XNOR2_X1 U36 ( .A(n429), .B(n428), .ZN(n430) );
  XOR2_X1 U37 ( .A(n516), .B(n430), .Z(N1) );
  NAND2_X1 U38 ( .A1(da0ca0ba0aa0[2]), .A2(ha0ga0fa0ea0[2]), .ZN(n455) );
  NAND2_X1 U39 ( .A1(ha0ga0fa0ea0[2]), .A2(da0ca0ba0aa0[0]), .ZN(n432) );
  NAND2_X1 U40 ( .A1(ha0ga0fa0ea0[0]), .A2(da0ca0ba0aa0[2]), .ZN(n431) );
  NAND2_X1 U41 ( .A1(n432), .A2(n431), .ZN(n434) );
  NAND2_X1 U42 ( .A1(n455), .A2(n434), .ZN(n433) );
  NAND2_X1 U43 ( .A1(da0ca0ba0aa0[0]), .A2(ha0ga0fa0ea0[0]), .ZN(n435) );
  INV_X1 U44 ( .A(n435), .ZN(n739) );
  NAND2_X1 U45 ( .A1(n433), .A2(n739), .ZN(n437) );
  NAND2_X1 U46 ( .A1(n435), .A2(n434), .ZN(n436) );
  NAND2_X1 U47 ( .A1(n437), .A2(n436), .ZN(n452) );
  NAND2_X1 U48 ( .A1(da0ca0ba0aa0[3]), .A2(ha0ga0fa0ea0[1]), .ZN(n439) );
  NAND2_X1 U49 ( .A1(ha0ga0fa0ea0[3]), .A2(da0ca0ba0aa0[1]), .ZN(n438) );
  XNOR2_X1 U50 ( .A(n439), .B(n438), .ZN(n449) );
  XNOR2_X1 U51 ( .A(n452), .B(n449), .ZN(n446) );
  NAND2_X1 U52 ( .A1(da0ca0ba0aa0[3]), .A2(ha0ga0fa0ea0[3]), .ZN(n443) );
  NAND2_X1 U53 ( .A1(da0ca0ba0aa0[0]), .A2(ha0ga0fa0ea0[1]), .ZN(n441) );
  NAND2_X1 U54 ( .A1(ha0ga0fa0ea0[0]), .A2(da0ca0ba0aa0[1]), .ZN(n440) );
  XNOR2_X1 U55 ( .A(n441), .B(n440), .ZN(n442) );
  XNOR2_X1 U56 ( .A(n455), .B(n442), .ZN(n537) );
  XNOR2_X1 U57 ( .A(n443), .B(n537), .ZN(n444) );
  XOR2_X1 U58 ( .A(n444), .B(db0cb0bb0ab0[0]), .Z(n445) );
  XNOR2_X1 U59 ( .A(n446), .B(n445), .ZN(N0) );
  NAND2_X1 U60 ( .A1(ha0ga0fa0ea0[2]), .A2(da0ca0ba0aa0[3]), .ZN(n448) );
  NAND2_X1 U61 ( .A1(ha0ga0fa0ea0[3]), .A2(da0ca0ba0aa0[2]), .ZN(n447) );
  XOR2_X1 U62 ( .A(n448), .B(n447), .Z(n451) );
  NAND2_X1 U63 ( .A1(ha0ga0fa0ea0[1]), .A2(da0ca0ba0aa0[1]), .ZN(n450) );
  XNOR2_X1 U64 ( .A(n450), .B(n449), .ZN(n536) );
  XNOR2_X1 U65 ( .A(n451), .B(n536), .ZN(n738) );
  XOR2_X1 U66 ( .A(n452), .B(n738), .Z(n454) );
  INV_X1 U67 ( .A(db0cb0bb0ab0[2]), .ZN(n777) );
  XOR2_X1 U68 ( .A(da0ca0ba0aa0[0]), .B(n777), .Z(n453) );
  XNOR2_X1 U69 ( .A(n454), .B(n453), .ZN(n456) );
  XNOR2_X1 U70 ( .A(n456), .B(n455), .ZN(N8) );
  INV_X1 U71 ( .A(db1cb1bb1ab1[0]), .ZN(n652) );
  XOR2_X1 U72 ( .A(n652), .B(db1cb1bb1ab1[2]), .Z(n458) );
  INV_X1 U73 ( .A(hb0gb0fb0eb0[0]), .ZN(n495) );
  XOR2_X1 U74 ( .A(n495), .B(hb0gb0fb0eb0[2]), .Z(n457) );
  NOR2_X1 U75 ( .A1(n458), .A2(n457), .ZN(n487) );
  NAND2_X1 U76 ( .A1(hb0gb0fb0eb0[1]), .A2(db1cb1bb1ab1[0]), .ZN(n461) );
  INV_X1 U77 ( .A(db1cb1bb1ab1[1]), .ZN(n689) );
  NAND2_X1 U78 ( .A1(n689), .A2(hb0gb0fb0eb0[0]), .ZN(n459) );
  NAND2_X1 U79 ( .A1(hb0gb0fb0eb0[3]), .A2(db1cb1bb1ab1[3]), .ZN(n482) );
  XNOR2_X1 U80 ( .A(n459), .B(n482), .ZN(n460) );
  XNOR2_X1 U81 ( .A(n461), .B(n460), .ZN(n771) );
  XNOR2_X1 U82 ( .A(n487), .B(n771), .ZN(n462) );
  INV_X1 U83 ( .A(db1cb1bb1ab1[3]), .ZN(n665) );
  XOR2_X1 U84 ( .A(n665), .B(da0ca0ba0aa0[0]), .Z(n655) );
  XNOR2_X1 U85 ( .A(n462), .B(n655), .ZN(n465) );
  NAND2_X1 U86 ( .A1(hb0gb0fb0eb0[1]), .A2(db1cb1bb1ab1[3]), .ZN(n464) );
  NAND2_X1 U87 ( .A1(db1cb1bb1ab1[1]), .A2(hb0gb0fb0eb0[3]), .ZN(n463) );
  XNOR2_X1 U88 ( .A(n464), .B(n463), .ZN(n472) );
  XNOR2_X1 U89 ( .A(n465), .B(n472), .ZN(N18) );
  NAND2_X1 U90 ( .A1(db1cb1bb1ab1[2]), .A2(hb0gb0fb0eb0[1]), .ZN(n467) );
  NAND2_X1 U91 ( .A1(hb0gb0fb0eb0[0]), .A2(db1cb1bb1ab1[3]), .ZN(n466) );
  XOR2_X1 U92 ( .A(n467), .B(n466), .Z(n471) );
  NAND2_X1 U93 ( .A1(hb0gb0fb0eb0[2]), .A2(db1cb1bb1ab1[1]), .ZN(n469) );
  NAND2_X1 U94 ( .A1(hb0gb0fb0eb0[3]), .A2(db1cb1bb1ab1[0]), .ZN(n468) );
  XNOR2_X1 U95 ( .A(n469), .B(n468), .ZN(n470) );
  XNOR2_X1 U96 ( .A(n471), .B(n470), .ZN(n770) );
  NOR2_X1 U97 ( .A1(hb0gb0fb0eb0[1]), .A2(n689), .ZN(n474) );
  INV_X1 U98 ( .A(n474), .ZN(n473) );
  NAND2_X1 U99 ( .A1(n473), .A2(n472), .ZN(n476) );
  NAND2_X1 U100 ( .A1(hb0gb0fb0eb0[3]), .A2(n474), .ZN(n475) );
  NAND2_X1 U101 ( .A1(n476), .A2(n475), .ZN(n477) );
  XOR2_X1 U102 ( .A(n477), .B(n652), .Z(n766) );
  XNOR2_X1 U103 ( .A(hb0gb0fb0eb0[1]), .B(n766), .ZN(n481) );
  NAND2_X1 U104 ( .A1(db1cb1bb1ab1[3]), .A2(hb0gb0fb0eb0[2]), .ZN(n479) );
  NAND2_X1 U105 ( .A1(db1cb1bb1ab1[2]), .A2(hb0gb0fb0eb0[3]), .ZN(n478) );
  XOR2_X1 U106 ( .A(n479), .B(n478), .Z(n480) );
  XNOR2_X1 U107 ( .A(n481), .B(n480), .ZN(n491) );
  XNOR2_X1 U108 ( .A(n770), .B(n491), .ZN(n486) );
  NOR2_X1 U109 ( .A1(n495), .A2(db1cb1bb1ab1[0]), .ZN(n484) );
  XOR2_X1 U110 ( .A(n482), .B(da0ca0ba0aa0[1]), .Z(n483) );
  XNOR2_X1 U111 ( .A(n484), .B(n483), .ZN(n485) );
  XNOR2_X1 U112 ( .A(n486), .B(n485), .ZN(N22) );
  XOR2_X1 U113 ( .A(n487), .B(da0ca0ba0aa0[2]), .Z(n489) );
  XOR2_X1 U114 ( .A(hb0gb0fb0eb0[3]), .B(n665), .Z(n488) );
  XNOR2_X1 U115 ( .A(n489), .B(n488), .ZN(n490) );
  XOR2_X1 U116 ( .A(n491), .B(n490), .Z(N26) );
  NAND2_X1 U117 ( .A1(hb0gb0fb0eb0[3]), .A2(db0cb0bb0ab0[3]), .ZN(n504) );
  NAND2_X1 U118 ( .A1(hb0gb0fb0eb0[0]), .A2(db0cb0bb0ab0[0]), .ZN(n508) );
  NAND2_X1 U119 ( .A1(db0cb0bb0ab0[3]), .A2(hb0gb0fb0eb0[1]), .ZN(n493) );
  NAND2_X1 U120 ( .A1(db0cb0bb0ab0[1]), .A2(hb0gb0fb0eb0[3]), .ZN(n492) );
  XOR2_X1 U121 ( .A(n493), .B(n492), .Z(n548) );
  NAND2_X1 U122 ( .A1(hb0gb0fb0eb0[2]), .A2(db0cb0bb0ab0[2]), .ZN(n494) );
  XNOR2_X1 U123 ( .A(n548), .B(n494), .ZN(n749) );
  NOR2_X1 U124 ( .A1(n777), .A2(n495), .ZN(n497) );
  NAND2_X1 U125 ( .A1(db0cb0bb0ab0[0]), .A2(hb0gb0fb0eb0[2]), .ZN(n496) );
  XOR2_X1 U126 ( .A(n497), .B(n496), .Z(n498) );
  XNOR2_X1 U127 ( .A(n749), .B(n498), .ZN(n510) );
  XNOR2_X1 U128 ( .A(n508), .B(n510), .ZN(n502) );
  NAND2_X1 U129 ( .A1(db0cb0bb0ab0[0]), .A2(hb0gb0fb0eb0[1]), .ZN(n500) );
  NAND2_X1 U130 ( .A1(hb0gb0fb0eb0[0]), .A2(db0cb0bb0ab0[1]), .ZN(n499) );
  XOR2_X1 U131 ( .A(n500), .B(n499), .Z(n753) );
  XNOR2_X1 U132 ( .A(da0ca0ba0aa0[0]), .B(n753), .ZN(n501) );
  XNOR2_X1 U133 ( .A(n502), .B(n501), .ZN(n503) );
  XNOR2_X1 U134 ( .A(n504), .B(n503), .ZN(N16) );
  NAND2_X1 U135 ( .A1(db0cb0bb0ab0[2]), .A2(hb0gb0fb0eb0[3]), .ZN(n506) );
  NAND2_X1 U136 ( .A1(hb0gb0fb0eb0[2]), .A2(db0cb0bb0ab0[3]), .ZN(n505) );
  XOR2_X1 U137 ( .A(n506), .B(n505), .Z(n507) );
  NAND2_X1 U138 ( .A1(db0cb0bb0ab0[1]), .A2(hb0gb0fb0eb0[1]), .ZN(n751) );
  XNOR2_X1 U139 ( .A(n507), .B(n751), .ZN(n509) );
  XNOR2_X1 U140 ( .A(n509), .B(n508), .ZN(n550) );
  XOR2_X1 U141 ( .A(n510), .B(n550), .Z(n512) );
  XOR2_X1 U142 ( .A(da0ca0ba0aa0[2]), .B(n705), .Z(n511) );
  XNOR2_X1 U143 ( .A(n512), .B(n511), .ZN(N24) );
  NAND2_X1 U144 ( .A1(da0ca0ba0aa0[3]), .A2(ha1ga1fa1ea1[0]), .ZN(n514) );
  NAND2_X1 U145 ( .A1(da0ca0ba0aa0[1]), .A2(ha1ga1fa1ea1[2]), .ZN(n513) );
  XOR2_X1 U146 ( .A(n514), .B(n513), .Z(n515) );
  XNOR2_X1 U147 ( .A(n516), .B(n515), .ZN(n520) );
  NAND2_X1 U148 ( .A1(da0ca0ba0aa0[0]), .A2(ha1ga1fa1ea1[3]), .ZN(n518) );
  NAND2_X1 U149 ( .A1(da0ca0ba0aa0[2]), .A2(ha1ga1fa1ea1[1]), .ZN(n517) );
  XOR2_X1 U150 ( .A(n518), .B(n517), .Z(n519) );
  XNOR2_X1 U151 ( .A(n520), .B(n519), .ZN(n731) );
  XNOR2_X1 U152 ( .A(n731), .B(n521), .ZN(n528) );
  NAND2_X1 U153 ( .A1(ha1ga1fa1ea1[1]), .A2(da0ca0ba0aa0[1]), .ZN(n524) );
  INV_X1 U154 ( .A(ha1ga1fa1ea1[3]), .ZN(n589) );
  XOR2_X1 U155 ( .A(n589), .B(da0ca0ba0aa0[2]), .Z(n522) );
  XOR2_X1 U156 ( .A(db0cb0bb0ab0[3]), .B(da0ca0ba0aa0[1]), .Z(n724) );
  XNOR2_X1 U157 ( .A(n522), .B(n724), .ZN(n523) );
  XNOR2_X1 U158 ( .A(n524), .B(n523), .ZN(n526) );
  NAND2_X1 U159 ( .A1(da0ca0ba0aa0[2]), .A2(ha1ga1fa1ea1[2]), .ZN(n525) );
  XNOR2_X1 U160 ( .A(n526), .B(n525), .ZN(n527) );
  XNOR2_X1 U161 ( .A(n528), .B(n527), .ZN(N13) );
  NAND2_X1 U162 ( .A1(ha0ga0fa0ea0[2]), .A2(da0ca0ba0aa0[1]), .ZN(n535) );
  XOR2_X1 U163 ( .A(ha0ga0fa0ea0[0]), .B(ha0ga0fa0ea0[3]), .Z(n529) );
  NAND2_X1 U164 ( .A1(n529), .A2(da0ca0ba0aa0[3]), .ZN(n533) );
  NAND2_X1 U165 ( .A1(ha0ga0fa0ea0[3]), .A2(da0ca0ba0aa0[0]), .ZN(n531) );
  NAND2_X1 U166 ( .A1(ha0ga0fa0ea0[1]), .A2(da0ca0ba0aa0[2]), .ZN(n530) );
  XNOR2_X1 U167 ( .A(n531), .B(n530), .ZN(n532) );
  XNOR2_X1 U168 ( .A(n533), .B(n532), .ZN(n534) );
  XNOR2_X1 U169 ( .A(n535), .B(n534), .ZN(n742) );
  XNOR2_X1 U170 ( .A(n536), .B(n742), .ZN(n538) );
  XNOR2_X1 U171 ( .A(n538), .B(n537), .ZN(n539) );
  XNOR2_X1 U172 ( .A(n724), .B(n539), .ZN(N12) );
  NAND2_X1 U173 ( .A1(db0cb0bb0ab0[2]), .A2(hb0gb0fb0eb0[1]), .ZN(n541) );
  NAND2_X1 U174 ( .A1(hb0gb0fb0eb0[0]), .A2(db0cb0bb0ab0[3]), .ZN(n540) );
  XOR2_X1 U175 ( .A(n541), .B(n540), .Z(n546) );
  XNOR2_X1 U176 ( .A(db0cb0bb0ab0[3]), .B(n705), .ZN(n542) );
  NAND2_X1 U177 ( .A1(n542), .A2(hb0gb0fb0eb0[3]), .ZN(n544) );
  NAND2_X1 U178 ( .A1(hb0gb0fb0eb0[2]), .A2(db0cb0bb0ab0[1]), .ZN(n543) );
  XNOR2_X1 U179 ( .A(n544), .B(n543), .ZN(n545) );
  XNOR2_X1 U180 ( .A(n546), .B(n545), .ZN(n750) );
  XOR2_X1 U181 ( .A(n724), .B(n750), .Z(n547) );
  XNOR2_X1 U182 ( .A(n548), .B(n547), .ZN(n549) );
  XNOR2_X1 U183 ( .A(n550), .B(n549), .ZN(N20) );
  NAND2_X1 U184 ( .A1(ha1ga1fa1ea1[2]), .A2(da1ca1ba1aa1[2]), .ZN(n553) );
  NAND2_X1 U185 ( .A1(da1ca1ba1aa1[1]), .A2(ha1ga1fa1ea1[3]), .ZN(n552) );
  NAND2_X1 U186 ( .A1(da1ca1ba1aa1[3]), .A2(ha1ga1fa1ea1[1]), .ZN(n551) );
  XOR2_X1 U187 ( .A(n552), .B(n551), .Z(n588) );
  XNOR2_X1 U188 ( .A(n553), .B(n588), .ZN(n568) );
  INV_X1 U189 ( .A(da1ca1ba1aa1[0]), .ZN(n617) );
  NOR2_X1 U190 ( .A1(n617), .A2(n576), .ZN(n573) );
  INV_X1 U191 ( .A(da1ca1ba1aa1[1]), .ZN(n635) );
  NOR2_X1 U192 ( .A1(n635), .A2(n576), .ZN(n555) );
  INV_X1 U193 ( .A(ha1ga1fa1ea1[1]), .ZN(n733) );
  NOR2_X1 U194 ( .A1(n617), .A2(n733), .ZN(n554) );
  NOR2_X1 U195 ( .A1(n555), .A2(n554), .ZN(n557) );
  NOR2_X1 U196 ( .A1(n573), .A2(n557), .ZN(n560) );
  INV_X1 U197 ( .A(n573), .ZN(n558) );
  NAND2_X1 U198 ( .A1(ha1ga1fa1ea1[1]), .A2(da1ca1ba1aa1[1]), .ZN(n571) );
  NOR2_X1 U199 ( .A1(n558), .A2(n571), .ZN(n556) );
  NOR2_X1 U200 ( .A1(n557), .A2(n556), .ZN(n599) );
  NOR2_X1 U201 ( .A1(n599), .A2(n558), .ZN(n559) );
  NOR2_X1 U202 ( .A1(n560), .A2(n559), .ZN(n563) );
  NOR2_X1 U203 ( .A1(n617), .A2(ha1ga1fa1ea1[2]), .ZN(n562) );
  NAND2_X1 U204 ( .A1(da1ca1ba1aa1[2]), .A2(ha1ga1fa1ea1[0]), .ZN(n561) );
  XOR2_X1 U205 ( .A(n562), .B(n561), .Z(n595) );
  XNOR2_X1 U206 ( .A(n563), .B(n595), .ZN(n564) );
  XNOR2_X1 U207 ( .A(n705), .B(n564), .ZN(n566) );
  NAND2_X1 U208 ( .A1(da1ca1ba1aa1[3]), .A2(n589), .ZN(n565) );
  XNOR2_X1 U209 ( .A(n566), .B(n565), .ZN(n567) );
  XNOR2_X1 U210 ( .A(n568), .B(n567), .ZN(N3) );
  NAND2_X1 U211 ( .A1(ha1ga1fa1ea1[2]), .A2(da1ca1ba1aa1[3]), .ZN(n570) );
  NAND2_X1 U212 ( .A1(ha1ga1fa1ea1[3]), .A2(da1ca1ba1aa1[2]), .ZN(n569) );
  XOR2_X1 U213 ( .A(n570), .B(n569), .Z(n572) );
  XNOR2_X1 U214 ( .A(n572), .B(n571), .ZN(n574) );
  XOR2_X1 U215 ( .A(n574), .B(n573), .Z(n592) );
  XOR2_X1 U216 ( .A(n592), .B(n588), .Z(n587) );
  INV_X1 U217 ( .A(db0cb0bb0ab0[1]), .ZN(n734) );
  NAND2_X1 U218 ( .A1(da1ca1ba1aa1[2]), .A2(ha1ga1fa1ea1[1]), .ZN(n585) );
  NAND2_X1 U219 ( .A1(ha1ga1fa1ea1[2]), .A2(da1ca1ba1aa1[1]), .ZN(n579) );
  NAND2_X1 U220 ( .A1(ha1ga1fa1ea1[3]), .A2(da1ca1ba1aa1[0]), .ZN(n575) );
  XNOR2_X1 U221 ( .A(n579), .B(n575), .ZN(n577) );
  XOR2_X1 U222 ( .A(n577), .B(n576), .Z(n578) );
  INV_X1 U223 ( .A(da1ca1ba1aa1[3]), .ZN(n640) );
  NAND2_X1 U224 ( .A1(n578), .A2(n640), .ZN(n583) );
  NOR2_X1 U225 ( .A1(n589), .A2(da1ca1ba1aa1[0]), .ZN(n580) );
  XNOR2_X1 U226 ( .A(n580), .B(n579), .ZN(n581) );
  NAND2_X1 U227 ( .A1(da1ca1ba1aa1[3]), .A2(n581), .ZN(n582) );
  NAND2_X1 U228 ( .A1(n583), .A2(n582), .ZN(n584) );
  XNOR2_X1 U229 ( .A(n585), .B(n584), .ZN(n598) );
  XOR2_X1 U230 ( .A(n734), .B(n598), .Z(n586) );
  XNOR2_X1 U231 ( .A(n587), .B(n586), .ZN(N7) );
  XOR2_X1 U232 ( .A(n589), .B(n588), .Z(n591) );
  NOR2_X1 U233 ( .A1(n779), .A2(da1ca1ba1aa1[2]), .ZN(n590) );
  XNOR2_X1 U234 ( .A(n591), .B(n590), .ZN(n597) );
  XNOR2_X1 U235 ( .A(n777), .B(n597), .ZN(n594) );
  XOR2_X1 U236 ( .A(n733), .B(n592), .Z(n593) );
  XNOR2_X1 U237 ( .A(n594), .B(n593), .ZN(n596) );
  XNOR2_X1 U238 ( .A(n596), .B(n595), .ZN(N11) );
  XNOR2_X1 U239 ( .A(n598), .B(n597), .ZN(n603) );
  XOR2_X1 U240 ( .A(n599), .B(db0cb0bb0ab0[3]), .Z(n601) );
  NAND2_X1 U241 ( .A1(da1ca1ba1aa1[1]), .A2(n733), .ZN(n600) );
  XNOR2_X1 U242 ( .A(n601), .B(n600), .ZN(n602) );
  XNOR2_X1 U243 ( .A(n603), .B(n602), .ZN(N15) );
  NAND2_X1 U244 ( .A1(da1ca1ba1aa1[3]), .A2(ha0ga0fa0ea0[3]), .ZN(n618) );
  NAND2_X1 U245 ( .A1(ha0ga0fa0ea0[0]), .A2(da1ca1ba1aa1[2]), .ZN(n606) );
  XNOR2_X1 U246 ( .A(ha0ga0fa0ea0[0]), .B(ha0ga0fa0ea0[2]), .ZN(n604) );
  NOR2_X1 U247 ( .A1(n604), .A2(n617), .ZN(n605) );
  XNOR2_X1 U248 ( .A(n606), .B(n605), .ZN(n638) );
  XNOR2_X1 U249 ( .A(n618), .B(n638), .ZN(n614) );
  NAND2_X1 U250 ( .A1(ha0ga0fa0ea0[3]), .A2(da1ca1ba1aa1[1]), .ZN(n608) );
  NAND2_X1 U251 ( .A1(ha0ga0fa0ea0[1]), .A2(da1ca1ba1aa1[3]), .ZN(n607) );
  XOR2_X1 U252 ( .A(n608), .B(n607), .Z(n630) );
  NAND2_X1 U253 ( .A1(da1ca1ba1aa1[2]), .A2(ha0ga0fa0ea0[2]), .ZN(n609) );
  XNOR2_X1 U254 ( .A(n630), .B(n609), .ZN(n644) );
  NAND2_X1 U255 ( .A1(da1ca1ba1aa1[0]), .A2(ha0ga0fa0ea0[1]), .ZN(n611) );
  NAND2_X1 U256 ( .A1(ha0ga0fa0ea0[0]), .A2(da1ca1ba1aa1[1]), .ZN(n610) );
  XNOR2_X1 U257 ( .A(n611), .B(n610), .ZN(n612) );
  XNOR2_X1 U258 ( .A(n644), .B(n612), .ZN(n647) );
  XNOR2_X1 U259 ( .A(ha0ga0fa0ea0[0]), .B(n647), .ZN(n613) );
  XNOR2_X1 U260 ( .A(n614), .B(n613), .ZN(n616) );
  XOR2_X1 U261 ( .A(n640), .B(db0cb0bb0ab0[0]), .Z(n615) );
  XNOR2_X1 U262 ( .A(n616), .B(n615), .ZN(N2) );
  OR2_X1 U263 ( .A1(n617), .A2(ha0ga0fa0ea0[3]), .ZN(n619) );
  NAND2_X1 U264 ( .A1(n619), .A2(n618), .ZN(n626) );
  XNOR2_X1 U265 ( .A(ha0ga0fa0ea0[1]), .B(ha0ga0fa0ea0[2]), .ZN(n620) );
  NAND2_X1 U266 ( .A1(n620), .A2(da1ca1ba1aa1[1]), .ZN(n624) );
  NAND2_X1 U267 ( .A1(ha0ga0fa0ea0[1]), .A2(da1ca1ba1aa1[2]), .ZN(n622) );
  NAND2_X1 U268 ( .A1(ha0ga0fa0ea0[0]), .A2(n640), .ZN(n621) );
  XOR2_X1 U269 ( .A(n622), .B(n621), .Z(n623) );
  XNOR2_X1 U270 ( .A(n624), .B(n623), .ZN(n625) );
  XNOR2_X1 U271 ( .A(n626), .B(n625), .ZN(n648) );
  XNOR2_X1 U272 ( .A(n734), .B(n648), .ZN(n628) );
  NAND2_X1 U273 ( .A1(ha0ga0fa0ea0[0]), .A2(da1ca1ba1aa1[0]), .ZN(n627) );
  XNOR2_X1 U274 ( .A(n628), .B(n627), .ZN(n629) );
  XNOR2_X1 U275 ( .A(n630), .B(n629), .ZN(n634) );
  NAND2_X1 U276 ( .A1(ha0ga0fa0ea0[2]), .A2(da1ca1ba1aa1[3]), .ZN(n632) );
  NAND2_X1 U277 ( .A1(ha0ga0fa0ea0[3]), .A2(da1ca1ba1aa1[2]), .ZN(n631) );
  XOR2_X1 U278 ( .A(n632), .B(n631), .Z(n633) );
  XNOR2_X1 U279 ( .A(ha0ga0fa0ea0[1]), .B(n633), .ZN(n645) );
  XNOR2_X1 U280 ( .A(n634), .B(n645), .ZN(N6) );
  XOR2_X1 U281 ( .A(da1ca1ba1aa1[0]), .B(ha0ga0fa0ea0[3]), .Z(n637) );
  NOR2_X1 U282 ( .A1(n635), .A2(ha0ga0fa0ea0[1]), .ZN(n636) );
  XNOR2_X1 U283 ( .A(n637), .B(n636), .ZN(n639) );
  XOR2_X1 U284 ( .A(n639), .B(n638), .Z(n642) );
  XOR2_X1 U285 ( .A(n640), .B(db0cb0bb0ab0[2]), .Z(n641) );
  XNOR2_X1 U286 ( .A(n642), .B(n641), .ZN(n643) );
  XNOR2_X1 U287 ( .A(n644), .B(n643), .ZN(n646) );
  XNOR2_X1 U288 ( .A(n646), .B(n645), .ZN(N10) );
  XOR2_X1 U289 ( .A(n648), .B(n647), .Z(n650) );
  XNOR2_X1 U290 ( .A(da1ca1ba1aa1[2]), .B(ha0ga0fa0ea0[2]), .ZN(n649) );
  XNOR2_X1 U291 ( .A(n650), .B(n649), .ZN(n651) );
  XNOR2_X1 U292 ( .A(db0cb0bb0ab0[3]), .B(n651), .ZN(N14) );
  NOR2_X1 U293 ( .A1(hb1gb1fb1eb1[2]), .A2(n652), .ZN(n654) );
  NAND2_X1 U294 ( .A1(db1cb1bb1ab1[2]), .A2(hb1gb1fb1eb1[0]), .ZN(n653) );
  XNOR2_X1 U295 ( .A(n654), .B(n653), .ZN(n679) );
  XNOR2_X1 U296 ( .A(n655), .B(n679), .ZN(n664) );
  NAND2_X1 U297 ( .A1(hb1gb1fb1eb1[1]), .A2(db1cb1bb1ab1[3]), .ZN(n657) );
  NAND2_X1 U298 ( .A1(hb1gb1fb1eb1[3]), .A2(db1cb1bb1ab1[1]), .ZN(n656) );
  XOR2_X1 U299 ( .A(n657), .B(n656), .Z(n688) );
  NAND2_X1 U300 ( .A1(db1cb1bb1ab1[0]), .A2(hb1gb1fb1eb1[0]), .ZN(n658) );
  XNOR2_X1 U301 ( .A(n688), .B(n658), .ZN(n675) );
  NAND2_X1 U302 ( .A1(hb1gb1fb1eb1[0]), .A2(db1cb1bb1ab1[1]), .ZN(n660) );
  NAND2_X1 U303 ( .A1(hb1gb1fb1eb1[1]), .A2(db1cb1bb1ab1[0]), .ZN(n659) );
  XOR2_X1 U304 ( .A(n660), .B(n659), .Z(n661) );
  NAND2_X1 U305 ( .A1(db1cb1bb1ab1[3]), .A2(hb1gb1fb1eb1[3]), .ZN(n676) );
  XNOR2_X1 U306 ( .A(n661), .B(n676), .ZN(n662) );
  NAND2_X1 U307 ( .A1(db1cb1bb1ab1[2]), .A2(hb1gb1fb1eb1[2]), .ZN(n683) );
  XNOR2_X1 U308 ( .A(n662), .B(n683), .ZN(n687) );
  XNOR2_X1 U309 ( .A(n675), .B(n687), .ZN(n663) );
  XNOR2_X1 U310 ( .A(n664), .B(n663), .ZN(N19) );
  NAND2_X1 U311 ( .A1(hb1gb1fb1eb1[1]), .A2(db1cb1bb1ab1[2]), .ZN(n667) );
  NAND2_X1 U312 ( .A1(hb1gb1fb1eb1[0]), .A2(n665), .ZN(n666) );
  XOR2_X1 U313 ( .A(n667), .B(n666), .Z(n671) );
  XNOR2_X1 U314 ( .A(hb1gb1fb1eb1[1]), .B(hb1gb1fb1eb1[2]), .ZN(n714) );
  NOR2_X1 U315 ( .A1(n689), .A2(n714), .ZN(n669) );
  NAND2_X1 U316 ( .A1(hb1gb1fb1eb1[3]), .A2(db1cb1bb1ab1[0]), .ZN(n668) );
  XOR2_X1 U317 ( .A(n669), .B(n668), .Z(n670) );
  XNOR2_X1 U318 ( .A(n671), .B(n670), .ZN(n695) );
  NAND2_X1 U319 ( .A1(db1cb1bb1ab1[2]), .A2(hb1gb1fb1eb1[3]), .ZN(n673) );
  NAND2_X1 U320 ( .A1(hb1gb1fb1eb1[2]), .A2(db1cb1bb1ab1[3]), .ZN(n672) );
  XNOR2_X1 U321 ( .A(n673), .B(n672), .ZN(n674) );
  XNOR2_X1 U322 ( .A(n675), .B(n674), .ZN(n684) );
  XNOR2_X1 U323 ( .A(n695), .B(n684), .ZN(n677) );
  XNOR2_X1 U324 ( .A(n677), .B(n676), .ZN(n678) );
  XNOR2_X1 U325 ( .A(da0ca0ba0aa0[1]), .B(n678), .ZN(N23) );
  XNOR2_X1 U326 ( .A(hb1gb1fb1eb1[3]), .B(hb1gb1fb1eb1[2]), .ZN(n690) );
  XNOR2_X1 U327 ( .A(n690), .B(n679), .ZN(n681) );
  NAND2_X1 U328 ( .A1(n689), .A2(hb1gb1fb1eb1[1]), .ZN(n680) );
  XNOR2_X1 U329 ( .A(n681), .B(n680), .ZN(n682) );
  XNOR2_X1 U330 ( .A(n683), .B(n682), .ZN(n686) );
  XNOR2_X1 U331 ( .A(da0ca0ba0aa0[2]), .B(n684), .ZN(n685) );
  XNOR2_X1 U332 ( .A(n686), .B(n685), .ZN(N27) );
  XNOR2_X1 U333 ( .A(n688), .B(n687), .ZN(n693) );
  XOR2_X1 U334 ( .A(n689), .B(da0ca0ba0aa0[3]), .Z(n691) );
  XNOR2_X1 U335 ( .A(n691), .B(n690), .ZN(n692) );
  XNOR2_X1 U336 ( .A(n693), .B(n692), .ZN(n694) );
  XNOR2_X1 U337 ( .A(n695), .B(n694), .ZN(N31) );
  NAND2_X1 U338 ( .A1(hb1gb1fb1eb1[3]), .A2(db0cb0bb0ab0[3]), .ZN(n699) );
  NAND2_X1 U339 ( .A1(hb1gb1fb1eb1[1]), .A2(db0cb0bb0ab0[3]), .ZN(n697) );
  NAND2_X1 U340 ( .A1(hb1gb1fb1eb1[3]), .A2(db0cb0bb0ab0[1]), .ZN(n696) );
  XNOR2_X1 U341 ( .A(n697), .B(n696), .ZN(n698) );
  XOR2_X1 U342 ( .A(n705), .B(n698), .Z(n758) );
  XNOR2_X1 U343 ( .A(n699), .B(n758), .ZN(n713) );
  NAND2_X1 U344 ( .A1(db0cb0bb0ab0[0]), .A2(hb1gb1fb1eb1[1]), .ZN(n701) );
  NAND2_X1 U345 ( .A1(hb1gb1fb1eb1[0]), .A2(db0cb0bb0ab0[1]), .ZN(n700) );
  XNOR2_X1 U346 ( .A(n701), .B(n700), .ZN(n747) );
  XNOR2_X1 U347 ( .A(n713), .B(n747), .ZN(n709) );
  XOR2_X1 U348 ( .A(n705), .B(n777), .Z(n702) );
  NAND2_X1 U349 ( .A1(n702), .A2(hb1gb1fb1eb1[2]), .ZN(n704) );
  NAND2_X1 U350 ( .A1(db0cb0bb0ab0[2]), .A2(hb1gb1fb1eb1[0]), .ZN(n703) );
  XOR2_X1 U351 ( .A(n704), .B(n703), .Z(n760) );
  XNOR2_X1 U352 ( .A(da0ca0ba0aa0[0]), .B(n760), .ZN(n707) );
  NAND2_X1 U353 ( .A1(hb1gb1fb1eb1[0]), .A2(n705), .ZN(n706) );
  XNOR2_X1 U354 ( .A(n707), .B(n706), .ZN(n708) );
  XNOR2_X1 U355 ( .A(n709), .B(n708), .ZN(N17) );
  NAND2_X1 U356 ( .A1(db0cb0bb0ab0[0]), .A2(hb1gb1fb1eb1[3]), .ZN(n711) );
  NAND2_X1 U357 ( .A1(hb1gb1fb1eb1[0]), .A2(db0cb0bb0ab0[3]), .ZN(n710) );
  XOR2_X1 U358 ( .A(n711), .B(n710), .Z(n712) );
  XNOR2_X1 U359 ( .A(n713), .B(n712), .ZN(n718) );
  NOR2_X1 U360 ( .A1(n734), .A2(n714), .ZN(n716) );
  NAND2_X1 U361 ( .A1(db0cb0bb0ab0[2]), .A2(hb1gb1fb1eb1[1]), .ZN(n715) );
  XNOR2_X1 U362 ( .A(n716), .B(n715), .ZN(n717) );
  XNOR2_X1 U363 ( .A(n718), .B(n717), .ZN(n743) );
  NAND2_X1 U364 ( .A1(db0cb0bb0ab0[3]), .A2(hb1gb1fb1eb1[2]), .ZN(n719) );
  XOR2_X1 U365 ( .A(n734), .B(n719), .Z(n723) );
  NAND2_X1 U366 ( .A1(db0cb0bb0ab0[0]), .A2(hb1gb1fb1eb1[0]), .ZN(n721) );
  NAND2_X1 U367 ( .A1(db0cb0bb0ab0[2]), .A2(hb1gb1fb1eb1[3]), .ZN(n720) );
  XNOR2_X1 U368 ( .A(n721), .B(n720), .ZN(n722) );
  XNOR2_X1 U369 ( .A(n723), .B(n722), .ZN(n759) );
  XOR2_X1 U370 ( .A(n743), .B(n759), .Z(n726) );
  XNOR2_X1 U371 ( .A(n724), .B(hb1gb1fb1eb1[1]), .ZN(n725) );
  XNOR2_X1 U372 ( .A(n726), .B(n725), .ZN(N21) );
  NAND2_X1 U373 ( .A1(da0ca0ba0aa0[1]), .A2(n733), .ZN(n730) );
  NAND2_X1 U374 ( .A1(ha1ga1fa1ea1[3]), .A2(da0ca0ba0aa0[2]), .ZN(n728) );
  NAND2_X1 U375 ( .A1(ha1ga1fa1ea1[2]), .A2(da0ca0ba0aa0[3]), .ZN(n727) );
  XOR2_X1 U376 ( .A(n728), .B(n727), .Z(n729) );
  XNOR2_X1 U377 ( .A(n730), .B(n729), .ZN(n773) );
  XNOR2_X1 U378 ( .A(n731), .B(n773), .ZN(n737) );
  NAND2_X1 U379 ( .A1(ha1ga1fa1ea1[0]), .A2(da0ca0ba0aa0[0]), .ZN(n732) );
  XOR2_X1 U380 ( .A(n733), .B(n732), .Z(n735) );
  XOR2_X1 U381 ( .A(n734), .B(da0ca0ba0aa0[3]), .Z(n752) );
  XNOR2_X1 U382 ( .A(n735), .B(n752), .ZN(n736) );
  XNOR2_X1 U383 ( .A(n737), .B(n736), .ZN(N5) );
  XNOR2_X1 U384 ( .A(n738), .B(n752), .ZN(n740) );
  XOR2_X1 U385 ( .A(n740), .B(n739), .Z(n741) );
  XNOR2_X1 U386 ( .A(n742), .B(n741), .ZN(N4) );
  XNOR2_X1 U387 ( .A(hb1gb1fb1eb1[3]), .B(n743), .ZN(n745) );
  NOR2_X1 U388 ( .A1(n777), .A2(hb1gb1fb1eb1[2]), .ZN(n744) );
  XNOR2_X1 U389 ( .A(n745), .B(n744), .ZN(n746) );
  XNOR2_X1 U390 ( .A(n746), .B(n752), .ZN(n748) );
  XNOR2_X1 U391 ( .A(n748), .B(n747), .ZN(N29) );
  XNOR2_X1 U392 ( .A(n750), .B(n749), .ZN(n756) );
  XNOR2_X1 U393 ( .A(n752), .B(n751), .ZN(n754) );
  XNOR2_X1 U394 ( .A(n754), .B(n753), .ZN(n755) );
  XNOR2_X1 U395 ( .A(n756), .B(n755), .ZN(N28) );
  XNOR2_X1 U396 ( .A(db0cb0bb0ab0[3]), .B(da0ca0ba0aa0[2]), .ZN(n757) );
  XNOR2_X1 U397 ( .A(n757), .B(hb1gb1fb1eb1[2]), .ZN(n763) );
  XNOR2_X1 U398 ( .A(n759), .B(n758), .ZN(n761) );
  XNOR2_X1 U399 ( .A(n761), .B(n760), .ZN(n762) );
  XOR2_X1 U400 ( .A(n763), .B(n762), .Z(n765) );
  NAND2_X1 U401 ( .A1(hb1gb1fb1eb1[1]), .A2(db0cb0bb0ab0[1]), .ZN(n764) );
  XNOR2_X1 U402 ( .A(n765), .B(n764), .ZN(n356) );
  XNOR2_X1 U403 ( .A(n766), .B(da0ca0ba0aa0[3]), .ZN(n768) );
  NOR2_X1 U404 ( .A1(hb0gb0fb0eb0[2]), .A2(db1cb1bb1ab1[2]), .ZN(n767) );
  XNOR2_X1 U405 ( .A(n768), .B(n767), .ZN(n769) );
  XNOR2_X1 U406 ( .A(n770), .B(n769), .ZN(n772) );
  XNOR2_X1 U407 ( .A(n772), .B(n771), .ZN(n355) );
  XNOR2_X1 U408 ( .A(n774), .B(n773), .ZN(n776) );
  XNOR2_X1 U409 ( .A(n776), .B(n775), .ZN(n778) );
  XNOR2_X1 U410 ( .A(n778), .B(n777), .ZN(n781) );
  XOR2_X1 U411 ( .A(n779), .B(da0ca0ba0aa0[3]), .Z(n780) );
  XNOR2_X1 U412 ( .A(n781), .B(n780), .ZN(n354) );
endmodule


module GF4MulXorSqSc_Unit ( clk, da0ca0ba0aa0, da1ca1ba1aa1, ra3ra2ra1ra0, xa, 
        ya, za, ta, db0cb0bb0ab0, db1cb1bb1ab1, rb3rb2rb1rb0, xb, yb, zb, tb, 
        random );
  input [3:0] da0ca0ba0aa0;
  input [3:0] da1ca1ba1aa1;
  input [3:0] ra3ra2ra1ra0;
  output [1:0] xa;
  output [1:0] ya;
  output [1:0] za;
  output [1:0] ta;
  input [3:0] db0cb0bb0ab0;
  input [3:0] db1cb1bb1ab1;
  input [3:0] rb3rb2rb1rb0;
  output [1:0] xb;
  output [1:0] yb;
  output [1:0] zb;
  output [1:0] tb;
  input [7:0] random;
  input clk;
  wire   N0, N1, N3, N4, N5, N7, N8, N9, N11, N12, N13, N15, N16, N17, N19,
         N20, N21, N23, N24, N25, N27, N28, N29, N31, n95, n96, n97, n98, n99,
         n100, n101, n102, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237;
  wire   [3:0] xa_r;
  wire   [3:0] ya_r;
  wire   [3:0] za_r;
  wire   [3:0] ta_r;
  wire   [3:0] xb_r;
  wire   [3:0] yb_r;
  wire   [3:0] zb_r;
  wire   [3:0] tb_r;

  DFF_X1 \xa_r_reg[3]  ( .D(N3), .CK(clk), .Q(xa_r[3]) );
  DFF_X1 \xa_r_reg[2]  ( .D(n97), .CK(clk), .Q(xa_r[2]) );
  DFF_X1 \xa_r_reg[1]  ( .D(N1), .CK(clk), .Q(xa_r[1]) );
  DFF_X1 \xa_r_reg[0]  ( .D(N0), .CK(clk), .Q(xa_r[0]) );
  DFF_X1 \ya_r_reg[3]  ( .D(N7), .CK(clk), .Q(ya_r[3]) );
  DFF_X1 \ya_r_reg[2]  ( .D(n95), .CK(clk), .Q(ya_r[2]) );
  DFF_X1 \ya_r_reg[1]  ( .D(N5), .CK(clk), .Q(ya_r[1]) );
  DFF_X1 \ya_r_reg[0]  ( .D(N4), .CK(clk), .Q(ya_r[0]) );
  DFF_X1 \za_r_reg[3]  ( .D(N11), .CK(clk), .Q(za_r[3]) );
  DFF_X1 \za_r_reg[2]  ( .D(n98), .CK(clk), .Q(za_r[2]) );
  DFF_X1 \za_r_reg[1]  ( .D(N9), .CK(clk), .Q(za_r[1]) );
  DFF_X1 \za_r_reg[0]  ( .D(N8), .CK(clk), .Q(za_r[0]) );
  DFF_X1 \ta_r_reg[3]  ( .D(N15), .CK(clk), .Q(ta_r[3]) );
  DFF_X1 \ta_r_reg[2]  ( .D(n96), .CK(clk), .Q(ta_r[2]) );
  DFF_X1 \ta_r_reg[1]  ( .D(N13), .CK(clk), .Q(ta_r[1]) );
  DFF_X1 \ta_r_reg[0]  ( .D(N12), .CK(clk), .Q(ta_r[0]) );
  DFF_X1 \xb_r_reg[3]  ( .D(N19), .CK(clk), .Q(xb_r[3]) );
  DFF_X1 \xb_r_reg[2]  ( .D(n99), .CK(clk), .Q(xb_r[2]) );
  DFF_X1 \xb_r_reg[1]  ( .D(N17), .CK(clk), .Q(xb_r[1]) );
  DFF_X1 \xb_r_reg[0]  ( .D(N16), .CK(clk), .Q(xb_r[0]) );
  DFF_X1 \yb_r_reg[3]  ( .D(N23), .CK(clk), .Q(yb_r[3]) );
  DFF_X1 \yb_r_reg[2]  ( .D(n100), .CK(clk), .Q(yb_r[2]) );
  DFF_X1 \yb_r_reg[1]  ( .D(N21), .CK(clk), .Q(yb_r[1]) );
  DFF_X1 \yb_r_reg[0]  ( .D(N20), .CK(clk), .Q(yb_r[0]) );
  DFF_X1 \zb_r_reg[3]  ( .D(N27), .CK(clk), .Q(zb_r[3]) );
  DFF_X1 \zb_r_reg[2]  ( .D(n101), .CK(clk), .Q(zb_r[2]) );
  DFF_X1 \zb_r_reg[1]  ( .D(N25), .CK(clk), .Q(zb_r[1]) );
  DFF_X1 \zb_r_reg[0]  ( .D(N24), .CK(clk), .Q(zb_r[0]) );
  DFF_X1 \tb_r_reg[3]  ( .D(N31), .CK(clk), .Q(tb_r[3]) );
  DFF_X1 \tb_r_reg[2]  ( .D(n102), .CK(clk), .Q(tb_r[2]) );
  DFF_X1 \tb_r_reg[1]  ( .D(N29), .CK(clk), .Q(tb_r[1]) );
  DFF_X1 \tb_r_reg[0]  ( .D(N28), .CK(clk), .Q(tb_r[0]) );
  XOR2_X1 U3 ( .A(zb_r[2]), .B(zb_r[3]), .Z(zb[1]) );
  XOR2_X1 U4 ( .A(zb_r[0]), .B(zb_r[1]), .Z(zb[0]) );
  XOR2_X1 U5 ( .A(za_r[2]), .B(za_r[3]), .Z(za[1]) );
  XOR2_X1 U6 ( .A(za_r[0]), .B(za_r[1]), .Z(za[0]) );
  XOR2_X1 U7 ( .A(yb_r[2]), .B(yb_r[3]), .Z(yb[1]) );
  XOR2_X1 U8 ( .A(yb_r[0]), .B(yb_r[1]), .Z(yb[0]) );
  XOR2_X1 U9 ( .A(ya_r[2]), .B(ya_r[3]), .Z(ya[1]) );
  XOR2_X1 U10 ( .A(ya_r[0]), .B(ya_r[1]), .Z(ya[0]) );
  XOR2_X1 U11 ( .A(xb_r[2]), .B(xb_r[3]), .Z(xb[1]) );
  XOR2_X1 U12 ( .A(xb_r[0]), .B(xb_r[1]), .Z(xb[0]) );
  XOR2_X1 U13 ( .A(xa_r[2]), .B(xa_r[3]), .Z(xa[1]) );
  XOR2_X1 U14 ( .A(xa_r[0]), .B(xa_r[1]), .Z(xa[0]) );
  XOR2_X1 U15 ( .A(tb_r[2]), .B(tb_r[3]), .Z(tb[1]) );
  XOR2_X1 U16 ( .A(tb_r[0]), .B(tb_r[1]), .Z(tb[0]) );
  XOR2_X1 U17 ( .A(ta_r[2]), .B(ta_r[3]), .Z(ta[1]) );
  XOR2_X1 U18 ( .A(ta_r[0]), .B(ta_r[1]), .Z(ta[0]) );
  INV_X1 U19 ( .A(da1ca1ba1aa1[3]), .ZN(n138) );
  NOR2_X1 U20 ( .A1(da1ca1ba1aa1[0]), .A2(n138), .ZN(n136) );
  NOR2_X1 U21 ( .A1(n136), .A2(da1ca1ba1aa1[2]), .ZN(n135) );
  INV_X1 U22 ( .A(da1ca1ba1aa1[0]), .ZN(n226) );
  NAND2_X1 U23 ( .A1(da1ca1ba1aa1[3]), .A2(da1ca1ba1aa1[2]), .ZN(n130) );
  NAND2_X1 U24 ( .A1(n226), .A2(n130), .ZN(n131) );
  NAND2_X1 U25 ( .A1(da1ca1ba1aa1[1]), .A2(n131), .ZN(n133) );
  NOR2_X1 U26 ( .A1(da1ca1ba1aa1[1]), .A2(da1ca1ba1aa1[0]), .ZN(n223) );
  NAND2_X1 U27 ( .A1(n223), .A2(n138), .ZN(n132) );
  NAND2_X1 U28 ( .A1(n133), .A2(n132), .ZN(n134) );
  NOR2_X1 U29 ( .A1(n135), .A2(n134), .ZN(n141) );
  XOR2_X1 U30 ( .A(rb3rb2rb1rb0[3]), .B(n141), .Z(N3) );
  NOR2_X1 U31 ( .A1(da1ca1ba1aa1[1]), .A2(da1ca1ba1aa1[2]), .ZN(n137) );
  XNOR2_X1 U32 ( .A(n137), .B(n136), .ZN(n140) );
  NAND2_X1 U33 ( .A1(da1ca1ba1aa1[1]), .A2(n138), .ZN(n139) );
  NAND2_X1 U34 ( .A1(n140), .A2(n139), .ZN(n142) );
  XNOR2_X1 U35 ( .A(rb3rb2rb1rb0[2]), .B(n142), .ZN(N7) );
  XOR2_X1 U36 ( .A(rb3rb2rb1rb0[1]), .B(n141), .Z(N11) );
  XNOR2_X1 U37 ( .A(rb3rb2rb1rb0[0]), .B(n142), .ZN(N15) );
  NAND2_X1 U38 ( .A1(db1cb1bb1ab1[1]), .A2(db1cb1bb1ab1[2]), .ZN(n143) );
  INV_X1 U39 ( .A(db1cb1bb1ab1[3]), .ZN(n151) );
  NOR2_X1 U40 ( .A1(db1cb1bb1ab1[0]), .A2(n151), .ZN(n149) );
  NAND2_X1 U41 ( .A1(n143), .A2(n149), .ZN(n148) );
  INV_X1 U42 ( .A(db1cb1bb1ab1[2]), .ZN(n144) );
  NOR2_X1 U43 ( .A1(n149), .A2(n144), .ZN(n146) );
  INV_X1 U44 ( .A(db1cb1bb1ab1[0]), .ZN(n201) );
  XNOR2_X1 U45 ( .A(db1cb1bb1ab1[1]), .B(n201), .ZN(n145) );
  NAND2_X1 U46 ( .A1(n146), .A2(n145), .ZN(n147) );
  NAND2_X1 U47 ( .A1(n148), .A2(n147), .ZN(n154) );
  XOR2_X1 U48 ( .A(ra3ra2ra1ra0[3]), .B(n154), .Z(N19) );
  NOR2_X1 U49 ( .A1(db1cb1bb1ab1[1]), .A2(db1cb1bb1ab1[2]), .ZN(n150) );
  XNOR2_X1 U50 ( .A(n150), .B(n149), .ZN(n153) );
  NAND2_X1 U51 ( .A1(db1cb1bb1ab1[1]), .A2(n151), .ZN(n152) );
  NAND2_X1 U52 ( .A1(n153), .A2(n152), .ZN(n155) );
  XNOR2_X1 U53 ( .A(ra3ra2ra1ra0[2]), .B(n155), .ZN(N23) );
  XOR2_X1 U54 ( .A(ra3ra2ra1ra0[1]), .B(n154), .Z(N27) );
  XNOR2_X1 U55 ( .A(ra3ra2ra1ra0[0]), .B(n155), .ZN(N31) );
  NAND2_X1 U56 ( .A1(da1ca1ba1aa1[2]), .A2(da0ca0ba0aa0[1]), .ZN(n157) );
  NAND2_X1 U57 ( .A1(da0ca0ba0aa0[0]), .A2(da1ca1ba1aa1[3]), .ZN(n156) );
  XNOR2_X1 U58 ( .A(n157), .B(n156), .ZN(n159) );
  NAND2_X1 U59 ( .A1(da1ca1ba1aa1[2]), .A2(da0ca0ba0aa0[0]), .ZN(n158) );
  XNOR2_X1 U60 ( .A(n159), .B(n158), .ZN(n161) );
  XNOR2_X1 U61 ( .A(rb3rb2rb1rb0[3]), .B(n161), .ZN(N1) );
  NAND2_X1 U62 ( .A1(da0ca0ba0aa0[1]), .A2(da1ca1ba1aa1[3]), .ZN(n160) );
  XNOR2_X1 U63 ( .A(n160), .B(n159), .ZN(n162) );
  XNOR2_X1 U64 ( .A(rb3rb2rb1rb0[2]), .B(n162), .ZN(N5) );
  XNOR2_X1 U65 ( .A(rb3rb2rb1rb0[1]), .B(n161), .ZN(N9) );
  XNOR2_X1 U66 ( .A(rb3rb2rb1rb0[0]), .B(n162), .ZN(N13) );
  INV_X1 U67 ( .A(da0ca0ba0aa0[1]), .ZN(n171) );
  NOR2_X1 U68 ( .A1(da0ca0ba0aa0[2]), .A2(n171), .ZN(n169) );
  NOR2_X1 U69 ( .A1(n169), .A2(da0ca0ba0aa0[0]), .ZN(n168) );
  INV_X1 U70 ( .A(da0ca0ba0aa0[2]), .ZN(n230) );
  NAND2_X1 U71 ( .A1(da0ca0ba0aa0[1]), .A2(da0ca0ba0aa0[0]), .ZN(n163) );
  NAND2_X1 U72 ( .A1(n230), .A2(n163), .ZN(n164) );
  NAND2_X1 U73 ( .A1(n164), .A2(da0ca0ba0aa0[3]), .ZN(n166) );
  NOR2_X1 U74 ( .A1(da0ca0ba0aa0[3]), .A2(da0ca0ba0aa0[2]), .ZN(n216) );
  NAND2_X1 U75 ( .A1(n216), .A2(n171), .ZN(n165) );
  NAND2_X1 U76 ( .A1(n166), .A2(n165), .ZN(n167) );
  NOR2_X1 U77 ( .A1(n168), .A2(n167), .ZN(n174) );
  XNOR2_X1 U78 ( .A(rb3rb2rb1rb0[3]), .B(random[0]), .ZN(n221) );
  XNOR2_X1 U79 ( .A(n174), .B(n221), .ZN(N0) );
  XOR2_X1 U80 ( .A(rb3rb2rb1rb0[2]), .B(random[1]), .Z(n237) );
  NOR2_X1 U81 ( .A1(da0ca0ba0aa0[3]), .A2(da0ca0ba0aa0[0]), .ZN(n170) );
  XNOR2_X1 U82 ( .A(n170), .B(n169), .ZN(n173) );
  NAND2_X1 U83 ( .A1(da0ca0ba0aa0[3]), .A2(n171), .ZN(n172) );
  NAND2_X1 U84 ( .A1(n173), .A2(n172), .ZN(n175) );
  XNOR2_X1 U85 ( .A(n237), .B(n175), .ZN(N4) );
  XNOR2_X1 U86 ( .A(rb3rb2rb1rb0[1]), .B(random[2]), .ZN(n220) );
  XNOR2_X1 U87 ( .A(n174), .B(n220), .ZN(N8) );
  XOR2_X1 U88 ( .A(rb3rb2rb1rb0[0]), .B(random[3]), .Z(n235) );
  XNOR2_X1 U89 ( .A(n235), .B(n175), .ZN(N12) );
  NAND2_X1 U90 ( .A1(db1cb1bb1ab1[2]), .A2(db0cb0bb0ab0[1]), .ZN(n177) );
  NAND2_X1 U91 ( .A1(db0cb0bb0ab0[0]), .A2(db1cb1bb1ab1[3]), .ZN(n176) );
  XNOR2_X1 U92 ( .A(n177), .B(n176), .ZN(n179) );
  NAND2_X1 U93 ( .A1(db1cb1bb1ab1[2]), .A2(db0cb0bb0ab0[0]), .ZN(n178) );
  XNOR2_X1 U94 ( .A(n179), .B(n178), .ZN(n181) );
  XNOR2_X1 U95 ( .A(ra3ra2ra1ra0[3]), .B(n181), .ZN(N17) );
  NAND2_X1 U96 ( .A1(db0cb0bb0ab0[1]), .A2(db1cb1bb1ab1[3]), .ZN(n180) );
  XNOR2_X1 U97 ( .A(n180), .B(n179), .ZN(n182) );
  XNOR2_X1 U98 ( .A(ra3ra2ra1ra0[2]), .B(n182), .ZN(N21) );
  XNOR2_X1 U99 ( .A(ra3ra2ra1ra0[1]), .B(n181), .ZN(N25) );
  XNOR2_X1 U100 ( .A(ra3ra2ra1ra0[0]), .B(n182), .ZN(N29) );
  XNOR2_X1 U101 ( .A(ra3ra2ra1ra0[3]), .B(random[4]), .ZN(n213) );
  NAND2_X1 U102 ( .A1(db0cb0bb0ab0[3]), .A2(db0cb0bb0ab0[0]), .ZN(n183) );
  INV_X1 U103 ( .A(db0cb0bb0ab0[1]), .ZN(n191) );
  NOR2_X1 U104 ( .A1(db0cb0bb0ab0[2]), .A2(n191), .ZN(n189) );
  NAND2_X1 U105 ( .A1(n183), .A2(n189), .ZN(n188) );
  INV_X1 U106 ( .A(db0cb0bb0ab0[0]), .ZN(n184) );
  NOR2_X1 U107 ( .A1(n189), .A2(n184), .ZN(n186) );
  INV_X1 U108 ( .A(db0cb0bb0ab0[2]), .ZN(n206) );
  XNOR2_X1 U109 ( .A(db0cb0bb0ab0[3]), .B(n206), .ZN(n185) );
  NAND2_X1 U110 ( .A1(n186), .A2(n185), .ZN(n187) );
  NAND2_X1 U111 ( .A1(n188), .A2(n187), .ZN(n194) );
  XNOR2_X1 U112 ( .A(n213), .B(n194), .ZN(N16) );
  XOR2_X1 U113 ( .A(ra3ra2ra1ra0[2]), .B(random[5]), .Z(n212) );
  NOR2_X1 U114 ( .A1(db0cb0bb0ab0[3]), .A2(db0cb0bb0ab0[0]), .ZN(n190) );
  XNOR2_X1 U115 ( .A(n190), .B(n189), .ZN(n193) );
  NAND2_X1 U116 ( .A1(db0cb0bb0ab0[3]), .A2(n191), .ZN(n192) );
  NAND2_X1 U117 ( .A1(n193), .A2(n192), .ZN(n195) );
  XNOR2_X1 U118 ( .A(n212), .B(n195), .ZN(N20) );
  XNOR2_X1 U119 ( .A(ra3ra2ra1ra0[1]), .B(random[6]), .ZN(n210) );
  XNOR2_X1 U120 ( .A(n194), .B(n210), .ZN(N24) );
  XOR2_X1 U121 ( .A(ra3ra2ra1ra0[0]), .B(random[7]), .Z(n199) );
  XNOR2_X1 U122 ( .A(n199), .B(n195), .ZN(N28) );
  NOR2_X1 U123 ( .A1(db1cb1bb1ab1[1]), .A2(db0cb0bb0ab0[2]), .ZN(n196) );
  NOR2_X1 U124 ( .A1(db1cb1bb1ab1[0]), .A2(db0cb0bb0ab0[3]), .ZN(n207) );
  XNOR2_X1 U125 ( .A(n196), .B(n207), .ZN(n198) );
  NAND2_X1 U126 ( .A1(db0cb0bb0ab0[3]), .A2(db1cb1bb1ab1[1]), .ZN(n197) );
  NAND2_X1 U127 ( .A1(n198), .A2(n197), .ZN(n211) );
  XOR2_X1 U128 ( .A(n199), .B(n211), .Z(n102) );
  AND2_X1 U129 ( .A1(n201), .A2(db0cb0bb0ab0[3]), .ZN(n200) );
  NOR2_X1 U130 ( .A1(db1cb1bb1ab1[1]), .A2(n200), .ZN(n205) );
  NOR2_X1 U131 ( .A1(db0cb0bb0ab0[3]), .A2(db0cb0bb0ab0[2]), .ZN(n203) );
  NAND2_X1 U132 ( .A1(db1cb1bb1ab1[1]), .A2(n201), .ZN(n202) );
  NOR2_X1 U133 ( .A1(n203), .A2(n202), .ZN(n204) );
  NOR2_X1 U134 ( .A1(n205), .A2(n204), .ZN(n209) );
  NOR2_X1 U135 ( .A1(n207), .A2(n206), .ZN(n208) );
  NOR2_X1 U136 ( .A1(n209), .A2(n208), .ZN(n214) );
  XOR2_X1 U137 ( .A(n214), .B(n210), .Z(n101) );
  XOR2_X1 U138 ( .A(n212), .B(n211), .Z(n100) );
  XOR2_X1 U139 ( .A(n214), .B(n213), .Z(n99) );
  INV_X1 U140 ( .A(da0ca0ba0aa0[3]), .ZN(n232) );
  NOR2_X1 U141 ( .A1(da0ca0ba0aa0[2]), .A2(n223), .ZN(n215) );
  NOR2_X1 U142 ( .A1(n232), .A2(n215), .ZN(n219) );
  NOR2_X1 U143 ( .A1(da1ca1ba1aa1[1]), .A2(da0ca0ba0aa0[2]), .ZN(n227) );
  NOR2_X1 U144 ( .A1(da1ca1ba1aa1[0]), .A2(n216), .ZN(n217) );
  NOR2_X1 U145 ( .A1(n227), .A2(n217), .ZN(n218) );
  NOR2_X1 U146 ( .A1(n219), .A2(n218), .ZN(n222) );
  XOR2_X1 U147 ( .A(n222), .B(n220), .Z(n98) );
  XOR2_X1 U148 ( .A(n222), .B(n221), .Z(n97) );
  INV_X1 U149 ( .A(n223), .ZN(n225) );
  NOR2_X1 U150 ( .A1(da0ca0ba0aa0[3]), .A2(n230), .ZN(n224) );
  NOR2_X1 U151 ( .A1(n225), .A2(n224), .ZN(n229) );
  NOR2_X1 U152 ( .A1(n227), .A2(n226), .ZN(n228) );
  NOR2_X1 U153 ( .A1(n229), .A2(n228), .ZN(n234) );
  NOR2_X1 U154 ( .A1(n230), .A2(da1ca1ba1aa1[1]), .ZN(n231) );
  NOR2_X1 U155 ( .A1(n232), .A2(n231), .ZN(n233) );
  NOR2_X1 U156 ( .A1(n234), .A2(n233), .ZN(n236) );
  XNOR2_X1 U157 ( .A(n235), .B(n236), .ZN(n96) );
  XNOR2_X1 U158 ( .A(n237), .B(n236), .ZN(n95) );
endmodule


module GF4Mul_Unit ( clk, da0ca0ba0aa0, da1ca1ba1aa1, ha0ga0fa0ea0, 
        ha1ga1fa1ea1, ra3ra2ra1ra0, xa, ya, za, ta, db0cb0bb0ab0, db1cb1bb1ab1, 
        hb0gb0fb0eb0, hb1gb1fb1eb1, rb3rb2rb1rb0, xb, yb, zb, tb );
  input [3:0] da0ca0ba0aa0;
  input [3:0] da1ca1ba1aa1;
  input [3:0] ha0ga0fa0ea0;
  input [3:0] ha1ga1fa1ea1;
  input [3:0] ra3ra2ra1ra0;
  output [1:0] xa;
  output [1:0] ya;
  output [1:0] za;
  output [1:0] ta;
  input [3:0] db0cb0bb0ab0;
  input [3:0] db1cb1bb1ab1;
  input [3:0] hb0gb0fb0eb0;
  input [3:0] hb1gb1fb1eb1;
  input [3:0] rb3rb2rb1rb0;
  output [1:0] xb;
  output [1:0] yb;
  output [1:0] zb;
  output [1:0] tb;
  input clk;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, n141, n142, n143, n144, n145, n146, n147, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280;
  wire   [3:0] xa_r;
  wire   [3:0] ya_r;
  wire   [3:0] za_r;
  wire   [3:0] ta_r;
  wire   [3:0] xb_r;
  wire   [3:0] yb_r;
  wire   [3:0] zb_r;
  wire   [3:0] tb_r;

  DFF_X1 \xa_r_reg[3]  ( .D(N3), .CK(clk), .Q(xa_r[3]) );
  DFF_X1 \xa_r_reg[2]  ( .D(N2), .CK(clk), .Q(xa_r[2]) );
  DFF_X1 \xa_r_reg[1]  ( .D(N1), .CK(clk), .Q(xa_r[1]) );
  DFF_X1 \xa_r_reg[0]  ( .D(N0), .CK(clk), .Q(xa_r[0]) );
  DFF_X1 \ya_r_reg[3]  ( .D(N7), .CK(clk), .Q(ya_r[3]) );
  DFF_X1 \ya_r_reg[2]  ( .D(N6), .CK(clk), .Q(ya_r[2]) );
  DFF_X1 \ya_r_reg[1]  ( .D(N5), .CK(clk), .Q(ya_r[1]) );
  DFF_X1 \ya_r_reg[0]  ( .D(N4), .CK(clk), .Q(ya_r[0]) );
  DFF_X1 \za_r_reg[3]  ( .D(N11), .CK(clk), .Q(za_r[3]) );
  DFF_X1 \za_r_reg[2]  ( .D(N10), .CK(clk), .Q(za_r[2]) );
  DFF_X1 \za_r_reg[1]  ( .D(N9), .CK(clk), .Q(za_r[1]) );
  DFF_X1 \za_r_reg[0]  ( .D(N8), .CK(clk), .Q(za_r[0]) );
  DFF_X1 \ta_r_reg[3]  ( .D(N15), .CK(clk), .Q(ta_r[3]) );
  DFF_X1 \ta_r_reg[2]  ( .D(N14), .CK(clk), .Q(ta_r[2]) );
  DFF_X1 \ta_r_reg[1]  ( .D(N13), .CK(clk), .Q(ta_r[1]) );
  DFF_X1 \ta_r_reg[0]  ( .D(N12), .CK(clk), .Q(ta_r[0]) );
  DFF_X1 \xb_r_reg[3]  ( .D(N19), .CK(clk), .Q(xb_r[3]) );
  DFF_X1 \xb_r_reg[2]  ( .D(N18), .CK(clk), .Q(xb_r[2]) );
  DFF_X1 \xb_r_reg[1]  ( .D(N17), .CK(clk), .Q(xb_r[1]) );
  DFF_X1 \xb_r_reg[0]  ( .D(N16), .CK(clk), .Q(xb_r[0]) );
  DFF_X1 \yb_r_reg[3]  ( .D(N23), .CK(clk), .Q(yb_r[3]) );
  DFF_X1 \yb_r_reg[2]  ( .D(N22), .CK(clk), .Q(yb_r[2]) );
  DFF_X1 \yb_r_reg[1]  ( .D(N21), .CK(clk), .Q(yb_r[1]) );
  DFF_X1 \yb_r_reg[0]  ( .D(N20), .CK(clk), .Q(yb_r[0]) );
  DFF_X1 \zb_r_reg[3]  ( .D(N27), .CK(clk), .Q(zb_r[3]) );
  DFF_X1 \zb_r_reg[2]  ( .D(N26), .CK(clk), .Q(zb_r[2]) );
  DFF_X1 \zb_r_reg[1]  ( .D(N25), .CK(clk), .Q(zb_r[1]) );
  DFF_X1 \zb_r_reg[0]  ( .D(N24), .CK(clk), .Q(zb_r[0]) );
  DFF_X1 \tb_r_reg[3]  ( .D(N31), .CK(clk), .Q(tb_r[3]) );
  DFF_X1 \tb_r_reg[2]  ( .D(N30), .CK(clk), .Q(tb_r[2]) );
  DFF_X1 \tb_r_reg[1]  ( .D(N29), .CK(clk), .Q(tb_r[1]) );
  DFF_X1 \tb_r_reg[0]  ( .D(N28), .CK(clk), .Q(tb_r[0]) );
  XNOR2_X1 U3 ( .A(ta_r[2]), .B(ta_r[3]), .ZN(n141) );
  XNOR2_X1 U4 ( .A(yb_r[2]), .B(yb_r[3]), .ZN(n142) );
  XNOR2_X1 U5 ( .A(zb_r[0]), .B(zb_r[1]), .ZN(n143) );
  XNOR2_X1 U6 ( .A(za_r[0]), .B(za_r[1]), .ZN(n144) );
  XNOR2_X1 U7 ( .A(za_r[2]), .B(za_r[3]), .ZN(n145) );
  XNOR2_X1 U8 ( .A(xb_r[0]), .B(xb_r[1]), .ZN(n146) );
  XNOR2_X1 U9 ( .A(zb_r[2]), .B(zb_r[3]), .ZN(n147) );
  INV_X1 U10 ( .A(n147), .ZN(zb[1]) );
  INV_X1 U11 ( .A(n146), .ZN(xb[0]) );
  INV_X1 U12 ( .A(n145), .ZN(za[1]) );
  INV_X1 U13 ( .A(n144), .ZN(za[0]) );
  INV_X1 U14 ( .A(n143), .ZN(zb[0]) );
  INV_X1 U15 ( .A(n142), .ZN(yb[1]) );
  INV_X1 U16 ( .A(n141), .ZN(ta[1]) );
  XOR2_X2 U17 ( .A(ya_r[2]), .B(ya_r[3]), .Z(ya[1]) );
  XOR2_X2 U18 ( .A(xa_r[0]), .B(xa_r[1]), .Z(xa[0]) );
  XOR2_X2 U19 ( .A(ta_r[0]), .B(ta_r[1]), .Z(ta[0]) );
  XOR2_X2 U20 ( .A(tb_r[2]), .B(tb_r[3]), .Z(tb[1]) );
  XOR2_X2 U21 ( .A(tb_r[0]), .B(tb_r[1]), .Z(tb[0]) );
  XOR2_X2 U22 ( .A(ya_r[0]), .B(ya_r[1]), .Z(ya[0]) );
  XOR2_X2 U23 ( .A(xb_r[2]), .B(xb_r[3]), .Z(xb[1]) );
  XOR2_X2 U24 ( .A(yb_r[0]), .B(yb_r[1]), .Z(yb[0]) );
  XOR2_X2 U25 ( .A(xa_r[2]), .B(xa_r[3]), .Z(xa[1]) );
  NAND2_X1 U26 ( .A1(db1cb1bb1ab1[0]), .A2(hb1gb1fb1eb1[1]), .ZN(n156) );
  NAND2_X1 U27 ( .A1(db1cb1bb1ab1[1]), .A2(hb1gb1fb1eb1[0]), .ZN(n155) );
  XOR2_X1 U28 ( .A(n156), .B(n155), .Z(n206) );
  XOR2_X1 U29 ( .A(ra3ra2ra1ra0[1]), .B(n206), .Z(n159) );
  INV_X1 U30 ( .A(db1cb1bb1ab1[1]), .ZN(n157) );
  NAND2_X1 U31 ( .A1(hb1gb1fb1eb1[1]), .A2(n157), .ZN(n158) );
  XNOR2_X1 U32 ( .A(n159), .B(n158), .ZN(N27) );
  NAND2_X1 U33 ( .A1(ha0ga0fa0ea0[1]), .A2(da0ca0ba0aa0[0]), .ZN(n161) );
  NAND2_X1 U34 ( .A1(ha0ga0fa0ea0[0]), .A2(da0ca0ba0aa0[1]), .ZN(n160) );
  XOR2_X1 U35 ( .A(n161), .B(n160), .Z(n164) );
  XOR2_X1 U36 ( .A(rb3rb2rb1rb0[1]), .B(n164), .Z(n163) );
  NAND2_X1 U37 ( .A1(ha0ga0fa0ea0[1]), .A2(da0ca0ba0aa0[1]), .ZN(n162) );
  XNOR2_X1 U38 ( .A(n163), .B(n162), .ZN(N8) );
  XOR2_X1 U39 ( .A(n164), .B(rb3rb2rb1rb0[0]), .Z(n166) );
  NAND2_X1 U40 ( .A1(da0ca0ba0aa0[0]), .A2(ha0ga0fa0ea0[0]), .ZN(n165) );
  XNOR2_X1 U41 ( .A(n166), .B(n165), .ZN(N12) );
  NAND2_X1 U42 ( .A1(da1ca1ba1aa1[0]), .A2(ha0ga0fa0ea0[1]), .ZN(n168) );
  NAND2_X1 U43 ( .A1(da1ca1ba1aa1[1]), .A2(ha0ga0fa0ea0[0]), .ZN(n167) );
  XOR2_X1 U44 ( .A(n168), .B(n167), .Z(n171) );
  XOR2_X1 U45 ( .A(rb3rb2rb1rb0[1]), .B(n171), .Z(n170) );
  NAND2_X1 U46 ( .A1(da1ca1ba1aa1[1]), .A2(ha0ga0fa0ea0[1]), .ZN(n169) );
  XNOR2_X1 U47 ( .A(n170), .B(n169), .ZN(N10) );
  XOR2_X1 U48 ( .A(rb3rb2rb1rb0[0]), .B(n171), .Z(n173) );
  NAND2_X1 U49 ( .A1(da1ca1ba1aa1[0]), .A2(ha0ga0fa0ea0[0]), .ZN(n172) );
  XNOR2_X1 U50 ( .A(n173), .B(n172), .ZN(N14) );
  NAND2_X1 U51 ( .A1(hb0gb0fb0eb0[1]), .A2(db1cb1bb1ab1[0]), .ZN(n175) );
  NAND2_X1 U52 ( .A1(hb0gb0fb0eb0[0]), .A2(db1cb1bb1ab1[1]), .ZN(n174) );
  XOR2_X1 U53 ( .A(n175), .B(n174), .Z(n178) );
  XOR2_X1 U54 ( .A(ra3ra2ra1ra0[1]), .B(n178), .Z(n177) );
  NAND2_X1 U55 ( .A1(hb0gb0fb0eb0[1]), .A2(db1cb1bb1ab1[1]), .ZN(n176) );
  XNOR2_X1 U56 ( .A(n177), .B(n176), .ZN(N26) );
  XOR2_X1 U57 ( .A(n178), .B(ra3ra2ra1ra0[0]), .Z(n180) );
  NAND2_X1 U58 ( .A1(hb0gb0fb0eb0[0]), .A2(db1cb1bb1ab1[0]), .ZN(n179) );
  XNOR2_X1 U59 ( .A(n180), .B(n179), .ZN(N30) );
  INV_X1 U60 ( .A(ha1ga1fa1ea1[3]), .ZN(n197) );
  NOR2_X1 U61 ( .A1(da0ca0ba0aa0[3]), .A2(n197), .ZN(n181) );
  XNOR2_X1 U62 ( .A(rb3rb2rb1rb0[3]), .B(n181), .ZN(n184) );
  NAND2_X1 U63 ( .A1(da0ca0ba0aa0[2]), .A2(ha1ga1fa1ea1[3]), .ZN(n183) );
  NAND2_X1 U64 ( .A1(ha1ga1fa1ea1[2]), .A2(da0ca0ba0aa0[3]), .ZN(n182) );
  XOR2_X1 U65 ( .A(n183), .B(n182), .Z(n215) );
  XNOR2_X1 U66 ( .A(n184), .B(n215), .ZN(N1) );
  NAND2_X1 U67 ( .A1(db1cb1bb1ab1[2]), .A2(hb1gb1fb1eb1[3]), .ZN(n186) );
  NAND2_X1 U68 ( .A1(db1cb1bb1ab1[3]), .A2(hb1gb1fb1eb1[2]), .ZN(n185) );
  XOR2_X1 U69 ( .A(n186), .B(n185), .Z(n202) );
  XOR2_X1 U70 ( .A(ra3ra2ra1ra0[3]), .B(n202), .Z(n189) );
  INV_X1 U71 ( .A(db1cb1bb1ab1[3]), .ZN(n187) );
  NAND2_X1 U72 ( .A1(hb1gb1fb1eb1[3]), .A2(n187), .ZN(n188) );
  XNOR2_X1 U73 ( .A(n189), .B(n188), .ZN(N19) );
  NAND2_X1 U74 ( .A1(hb0gb0fb0eb0[3]), .A2(db1cb1bb1ab1[2]), .ZN(n191) );
  NAND2_X1 U75 ( .A1(hb0gb0fb0eb0[2]), .A2(db1cb1bb1ab1[3]), .ZN(n190) );
  XOR2_X1 U76 ( .A(n191), .B(n190), .Z(n194) );
  XOR2_X1 U77 ( .A(ra3ra2ra1ra0[3]), .B(n194), .Z(n193) );
  NAND2_X1 U78 ( .A1(hb0gb0fb0eb0[3]), .A2(db1cb1bb1ab1[3]), .ZN(n192) );
  XNOR2_X1 U79 ( .A(n193), .B(n192), .ZN(N18) );
  XOR2_X1 U80 ( .A(n194), .B(ra3ra2ra1ra0[2]), .Z(n196) );
  NAND2_X1 U81 ( .A1(hb0gb0fb0eb0[2]), .A2(db1cb1bb1ab1[2]), .ZN(n195) );
  XNOR2_X1 U82 ( .A(n196), .B(n195), .ZN(N22) );
  NOR2_X1 U83 ( .A1(da1ca1ba1aa1[3]), .A2(n197), .ZN(n198) );
  XNOR2_X1 U84 ( .A(rb3rb2rb1rb0[3]), .B(n198), .ZN(n201) );
  NAND2_X1 U85 ( .A1(da1ca1ba1aa1[3]), .A2(ha1ga1fa1ea1[2]), .ZN(n200) );
  NAND2_X1 U86 ( .A1(da1ca1ba1aa1[2]), .A2(ha1ga1fa1ea1[3]), .ZN(n199) );
  XOR2_X1 U87 ( .A(n200), .B(n199), .Z(n211) );
  XNOR2_X1 U88 ( .A(n201), .B(n211), .ZN(N3) );
  XOR2_X1 U89 ( .A(n202), .B(ra3ra2ra1ra0[2]), .Z(n205) );
  INV_X1 U90 ( .A(db1cb1bb1ab1[2]), .ZN(n203) );
  NAND2_X1 U91 ( .A1(hb1gb1fb1eb1[2]), .A2(n203), .ZN(n204) );
  XNOR2_X1 U92 ( .A(n205), .B(n204), .ZN(N23) );
  XOR2_X1 U93 ( .A(n206), .B(ra3ra2ra1ra0[0]), .Z(n209) );
  INV_X1 U94 ( .A(db1cb1bb1ab1[0]), .ZN(n207) );
  NAND2_X1 U95 ( .A1(hb1gb1fb1eb1[0]), .A2(n207), .ZN(n208) );
  XNOR2_X1 U96 ( .A(n209), .B(n208), .ZN(N31) );
  INV_X1 U97 ( .A(ha1ga1fa1ea1[2]), .ZN(n213) );
  NOR2_X1 U98 ( .A1(da1ca1ba1aa1[2]), .A2(n213), .ZN(n210) );
  XNOR2_X1 U99 ( .A(n210), .B(rb3rb2rb1rb0[2]), .ZN(n212) );
  XNOR2_X1 U100 ( .A(n212), .B(n211), .ZN(N7) );
  NOR2_X1 U101 ( .A1(da0ca0ba0aa0[2]), .A2(n213), .ZN(n214) );
  XNOR2_X1 U102 ( .A(n214), .B(rb3rb2rb1rb0[2]), .ZN(n216) );
  XNOR2_X1 U103 ( .A(n216), .B(n215), .ZN(N5) );
  NAND2_X1 U104 ( .A1(ha0ga0fa0ea0[3]), .A2(da0ca0ba0aa0[2]), .ZN(n218) );
  NAND2_X1 U105 ( .A1(ha0ga0fa0ea0[2]), .A2(da0ca0ba0aa0[3]), .ZN(n217) );
  XOR2_X1 U106 ( .A(n218), .B(n217), .Z(n221) );
  XOR2_X1 U107 ( .A(rb3rb2rb1rb0[3]), .B(n221), .Z(n220) );
  NAND2_X1 U108 ( .A1(ha0ga0fa0ea0[3]), .A2(da0ca0ba0aa0[3]), .ZN(n219) );
  XNOR2_X1 U109 ( .A(n220), .B(n219), .ZN(N0) );
  XOR2_X1 U110 ( .A(rb3rb2rb1rb0[2]), .B(n221), .Z(n223) );
  NAND2_X1 U111 ( .A1(ha0ga0fa0ea0[2]), .A2(da0ca0ba0aa0[2]), .ZN(n222) );
  XNOR2_X1 U112 ( .A(n223), .B(n222), .ZN(N4) );
  NAND2_X1 U113 ( .A1(db0cb0bb0ab0[2]), .A2(hb1gb1fb1eb1[3]), .ZN(n225) );
  NAND2_X1 U114 ( .A1(db0cb0bb0ab0[3]), .A2(hb1gb1fb1eb1[2]), .ZN(n224) );
  XOR2_X1 U115 ( .A(n225), .B(n224), .Z(n229) );
  XOR2_X1 U116 ( .A(ra3ra2ra1ra0[3]), .B(n229), .Z(n228) );
  INV_X1 U117 ( .A(db0cb0bb0ab0[3]), .ZN(n226) );
  NAND2_X1 U118 ( .A1(hb1gb1fb1eb1[3]), .A2(n226), .ZN(n227) );
  XNOR2_X1 U119 ( .A(n228), .B(n227), .ZN(N17) );
  XOR2_X1 U120 ( .A(ra3ra2ra1ra0[2]), .B(n229), .Z(n232) );
  INV_X1 U121 ( .A(db0cb0bb0ab0[2]), .ZN(n230) );
  NAND2_X1 U122 ( .A1(hb1gb1fb1eb1[2]), .A2(n230), .ZN(n231) );
  XNOR2_X1 U123 ( .A(n232), .B(n231), .ZN(N21) );
  NAND2_X1 U124 ( .A1(ha0ga0fa0ea0[3]), .A2(da1ca1ba1aa1[2]), .ZN(n234) );
  NAND2_X1 U125 ( .A1(ha0ga0fa0ea0[2]), .A2(da1ca1ba1aa1[3]), .ZN(n233) );
  XOR2_X1 U126 ( .A(n234), .B(n233), .Z(n237) );
  XOR2_X1 U127 ( .A(rb3rb2rb1rb0[3]), .B(n237), .Z(n236) );
  NAND2_X1 U128 ( .A1(ha0ga0fa0ea0[3]), .A2(da1ca1ba1aa1[3]), .ZN(n235) );
  XNOR2_X1 U129 ( .A(n236), .B(n235), .ZN(N2) );
  XOR2_X1 U130 ( .A(rb3rb2rb1rb0[2]), .B(n237), .Z(n239) );
  NAND2_X1 U131 ( .A1(ha0ga0fa0ea0[2]), .A2(da1ca1ba1aa1[2]), .ZN(n238) );
  XNOR2_X1 U132 ( .A(n239), .B(n238), .ZN(N6) );
  NAND2_X1 U133 ( .A1(ha1ga1fa1ea1[1]), .A2(da1ca1ba1aa1[0]), .ZN(n241) );
  NAND2_X1 U134 ( .A1(ha1ga1fa1ea1[0]), .A2(da1ca1ba1aa1[1]), .ZN(n240) );
  XOR2_X1 U135 ( .A(n241), .B(n240), .Z(n245) );
  XOR2_X1 U136 ( .A(rb3rb2rb1rb0[1]), .B(n245), .Z(n244) );
  INV_X1 U137 ( .A(da1ca1ba1aa1[1]), .ZN(n242) );
  NAND2_X1 U138 ( .A1(ha1ga1fa1ea1[1]), .A2(n242), .ZN(n243) );
  XNOR2_X1 U139 ( .A(n244), .B(n243), .ZN(N11) );
  XOR2_X1 U140 ( .A(rb3rb2rb1rb0[0]), .B(n245), .Z(n248) );
  INV_X1 U141 ( .A(da1ca1ba1aa1[0]), .ZN(n246) );
  NAND2_X1 U142 ( .A1(ha1ga1fa1ea1[0]), .A2(n246), .ZN(n247) );
  XNOR2_X1 U143 ( .A(n248), .B(n247), .ZN(N15) );
  NAND2_X1 U144 ( .A1(db0cb0bb0ab0[2]), .A2(hb0gb0fb0eb0[3]), .ZN(n250) );
  NAND2_X1 U145 ( .A1(db0cb0bb0ab0[3]), .A2(hb0gb0fb0eb0[2]), .ZN(n249) );
  XOR2_X1 U146 ( .A(n250), .B(n249), .Z(n253) );
  XOR2_X1 U147 ( .A(ra3ra2ra1ra0[3]), .B(n253), .Z(n252) );
  NAND2_X1 U148 ( .A1(db0cb0bb0ab0[3]), .A2(hb0gb0fb0eb0[3]), .ZN(n251) );
  XNOR2_X1 U149 ( .A(n252), .B(n251), .ZN(N16) );
  XOR2_X1 U150 ( .A(ra3ra2ra1ra0[2]), .B(n253), .Z(n255) );
  NAND2_X1 U151 ( .A1(db0cb0bb0ab0[2]), .A2(hb0gb0fb0eb0[2]), .ZN(n254) );
  XNOR2_X1 U152 ( .A(n255), .B(n254), .ZN(N20) );
  NAND2_X1 U153 ( .A1(db0cb0bb0ab0[0]), .A2(hb1gb1fb1eb1[1]), .ZN(n257) );
  NAND2_X1 U154 ( .A1(db0cb0bb0ab0[1]), .A2(hb1gb1fb1eb1[0]), .ZN(n256) );
  XOR2_X1 U155 ( .A(n257), .B(n256), .Z(n261) );
  XOR2_X1 U156 ( .A(ra3ra2ra1ra0[1]), .B(n261), .Z(n260) );
  INV_X1 U157 ( .A(db0cb0bb0ab0[1]), .ZN(n258) );
  NAND2_X1 U158 ( .A1(hb1gb1fb1eb1[1]), .A2(n258), .ZN(n259) );
  XNOR2_X1 U159 ( .A(n260), .B(n259), .ZN(N25) );
  XOR2_X1 U160 ( .A(ra3ra2ra1ra0[0]), .B(n261), .Z(n264) );
  INV_X1 U161 ( .A(db0cb0bb0ab0[0]), .ZN(n262) );
  NAND2_X1 U162 ( .A1(hb1gb1fb1eb1[0]), .A2(n262), .ZN(n263) );
  XNOR2_X1 U163 ( .A(n264), .B(n263), .ZN(N29) );
  NAND2_X1 U164 ( .A1(ha1ga1fa1ea1[1]), .A2(da0ca0ba0aa0[0]), .ZN(n266) );
  NAND2_X1 U165 ( .A1(ha1ga1fa1ea1[0]), .A2(da0ca0ba0aa0[1]), .ZN(n265) );
  XOR2_X1 U166 ( .A(n266), .B(n265), .Z(n270) );
  XOR2_X1 U167 ( .A(rb3rb2rb1rb0[1]), .B(n270), .Z(n269) );
  INV_X1 U168 ( .A(da0ca0ba0aa0[1]), .ZN(n267) );
  NAND2_X1 U169 ( .A1(ha1ga1fa1ea1[1]), .A2(n267), .ZN(n268) );
  XNOR2_X1 U170 ( .A(n269), .B(n268), .ZN(N9) );
  XOR2_X1 U171 ( .A(rb3rb2rb1rb0[0]), .B(n270), .Z(n273) );
  INV_X1 U172 ( .A(da0ca0ba0aa0[0]), .ZN(n271) );
  NAND2_X1 U173 ( .A1(ha1ga1fa1ea1[0]), .A2(n271), .ZN(n272) );
  XNOR2_X1 U174 ( .A(n273), .B(n272), .ZN(N13) );
  NAND2_X1 U175 ( .A1(db0cb0bb0ab0[0]), .A2(hb0gb0fb0eb0[1]), .ZN(n275) );
  NAND2_X1 U176 ( .A1(db0cb0bb0ab0[1]), .A2(hb0gb0fb0eb0[0]), .ZN(n274) );
  XOR2_X1 U177 ( .A(n275), .B(n274), .Z(n278) );
  XOR2_X1 U178 ( .A(ra3ra2ra1ra0[1]), .B(n278), .Z(n277) );
  NAND2_X1 U179 ( .A1(db0cb0bb0ab0[1]), .A2(hb0gb0fb0eb0[1]), .ZN(n276) );
  XNOR2_X1 U180 ( .A(n277), .B(n276), .ZN(N24) );
  XOR2_X1 U181 ( .A(ra3ra2ra1ra0[0]), .B(n278), .Z(n280) );
  NAND2_X1 U182 ( .A1(db0cb0bb0ab0[0]), .A2(hb0gb0fb0eb0[0]), .ZN(n279) );
  XNOR2_X1 U183 ( .A(n280), .B(n279), .ZN(N28) );
endmodule


module GF16Mul_Unit ( clk, da0ca0ba0aa0, da1ca1ba1aa1, ha0ga0fa0ea0, 
        ha1ga1fa1ea1, qa0pa0na0ma0, qa1pa1na1ma1, xa, ya, za, ta, ra, sa, ua, 
        va, db0cb0bb0ab0, db1cb1bb1ab1, hb0gb0fb0eb0, hb1gb1fb1eb1, 
        qb0pb0nb0mb0, qb1pb1nb1mb1, xb, yb, zb, tb, rb, sb, ub, vb );
  input [3:0] da0ca0ba0aa0;
  input [3:0] da1ca1ba1aa1;
  input [3:0] ha0ga0fa0ea0;
  input [3:0] ha1ga1fa1ea1;
  input [3:0] qa0pa0na0ma0;
  input [3:0] qa1pa1na1ma1;
  output [1:0] xa;
  output [1:0] ya;
  output [1:0] za;
  output [1:0] ta;
  output [1:0] ra;
  output [1:0] sa;
  output [1:0] ua;
  output [1:0] va;
  input [3:0] db0cb0bb0ab0;
  input [3:0] db1cb1bb1ab1;
  input [3:0] hb0gb0fb0eb0;
  input [3:0] hb1gb1fb1eb1;
  input [3:0] qb0pb0nb0mb0;
  input [3:0] qb1pb1nb1mb1;
  output [1:0] xb;
  output [1:0] yb;
  output [1:0] zb;
  output [1:0] tb;
  output [1:0] rb;
  output [1:0] sb;
  output [1:0] ub;
  output [1:0] vb;
  input clk;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N16, N17, N18,
         N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32,
         N33, N34, N35, N38, N39, N40, N41, N42, N43, N44, N45, N47, N48, N49,
         N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65,
         N66, N67, N68, N69, N70, N71, n688, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
         n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
         n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174,
         n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184,
         n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324,
         n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334,
         n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374,
         n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384,
         n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394,
         n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404,
         n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414,
         n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424,
         n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434,
         n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444,
         n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454,
         n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464,
         n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474,
         n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484,
         n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494;
  wire   [3:0] xa_r;
  wire   [3:0] ya_r;
  wire   [3:0] za_r;
  wire   [3:0] ta_r;
  wire   [3:0] ra_r;
  wire   [3:0] sa_r;
  wire   [3:0] ua_r;
  wire   [3:0] va_r;
  wire   [3:0] xb_r;
  wire   [3:0] yb_r;
  wire   [3:0] zb_r;
  wire   [3:0] tb_r;
  wire   [3:0] rb_r;
  wire   [3:0] sb_r;
  wire   [3:0] ub_r;
  wire   [3:0] vb_r;

  DFF_X1 \xa_r_reg[3]  ( .D(N5), .CK(clk), .Q(xa_r[3]) );
  DFF_X1 \xa_r_reg[2]  ( .D(N4), .CK(clk), .Q(xa_r[2]) );
  DFF_X1 \xa_r_reg[1]  ( .D(N3), .CK(clk), .Q(xa_r[1]) );
  DFF_X1 \xa_r_reg[0]  ( .D(N2), .CK(clk), .Q(xa_r[0]) );
  DFF_X1 \ya_r_reg[3]  ( .D(N9), .CK(clk), .Q(ya_r[3]) );
  DFF_X1 \ya_r_reg[2]  ( .D(N8), .CK(clk), .Q(ya_r[2]) );
  DFF_X1 \ya_r_reg[1]  ( .D(N7), .CK(clk), .Q(ya_r[1]) );
  DFF_X1 \ya_r_reg[0]  ( .D(N6), .CK(clk), .Q(ya_r[0]) );
  DFF_X1 \za_r_reg[3]  ( .D(N13), .CK(clk), .Q(za_r[3]) );
  DFF_X1 \za_r_reg[2]  ( .D(N12), .CK(clk), .Q(za_r[2]) );
  DFF_X1 \za_r_reg[1]  ( .D(N11), .CK(clk), .Q(za_r[1]) );
  DFF_X1 \za_r_reg[0]  ( .D(N10), .CK(clk), .Q(za_r[0]) );
  DFF_X1 \ta_r_reg[3]  ( .D(N19), .CK(clk), .Q(ta_r[3]) );
  DFF_X1 \ta_r_reg[2]  ( .D(N18), .CK(clk), .Q(ta_r[2]) );
  DFF_X1 \ta_r_reg[1]  ( .D(N17), .CK(clk), .Q(ta_r[1]) );
  DFF_X1 \ta_r_reg[0]  ( .D(N16), .CK(clk), .Q(ta_r[0]) );
  DFF_X1 \ra_r_reg[3]  ( .D(N23), .CK(clk), .Q(ra_r[3]) );
  DFF_X1 \ra_r_reg[2]  ( .D(N22), .CK(clk), .Q(ra_r[2]) );
  DFF_X1 \ra_r_reg[1]  ( .D(N21), .CK(clk), .Q(ra_r[1]) );
  DFF_X1 \ra_r_reg[0]  ( .D(N20), .CK(clk), .Q(ra_r[0]) );
  DFF_X1 \sa_r_reg[3]  ( .D(N27), .CK(clk), .Q(sa_r[3]) );
  DFF_X1 \sa_r_reg[2]  ( .D(N26), .CK(clk), .Q(sa_r[2]) );
  DFF_X1 \sa_r_reg[1]  ( .D(N25), .CK(clk), .Q(sa_r[1]) );
  DFF_X1 \sa_r_reg[0]  ( .D(N24), .CK(clk), .Q(sa_r[0]) );
  DFF_X1 \ua_r_reg[3]  ( .D(N31), .CK(clk), .Q(ua_r[3]) );
  DFF_X1 \ua_r_reg[2]  ( .D(N30), .CK(clk), .Q(ua_r[2]) );
  DFF_X1 \ua_r_reg[1]  ( .D(N29), .CK(clk), .Q(ua_r[1]) );
  DFF_X1 \ua_r_reg[0]  ( .D(N28), .CK(clk), .Q(ua_r[0]) );
  DFF_X1 \va_r_reg[3]  ( .D(N35), .CK(clk), .Q(va_r[3]) );
  DFF_X1 \va_r_reg[2]  ( .D(N34), .CK(clk), .Q(va_r[2]) );
  DFF_X1 \va_r_reg[1]  ( .D(N33), .CK(clk), .Q(va_r[1]) );
  DFF_X1 \va_r_reg[0]  ( .D(N32), .CK(clk), .Q(va_r[0]) );
  DFF_X1 \xb_r_reg[3]  ( .D(N41), .CK(clk), .Q(xb_r[3]) );
  DFF_X1 \xb_r_reg[2]  ( .D(N40), .CK(clk), .Q(xb_r[2]) );
  DFF_X1 \xb_r_reg[1]  ( .D(N39), .CK(clk), .Q(xb_r[1]) );
  DFF_X1 \xb_r_reg[0]  ( .D(N38), .CK(clk), .Q(xb_r[0]) );
  DFF_X1 \yb_r_reg[3]  ( .D(N45), .CK(clk), .Q(yb_r[3]) );
  DFF_X1 \yb_r_reg[2]  ( .D(N44), .CK(clk), .Q(yb_r[2]) );
  DFF_X1 \yb_r_reg[1]  ( .D(N43), .CK(clk), .Q(yb_r[1]) );
  DFF_X1 \yb_r_reg[0]  ( .D(N42), .CK(clk), .Q(yb_r[0]) );
  DFF_X1 \zb_r_reg[3]  ( .D(N49), .CK(clk), .Q(zb_r[3]) );
  DFF_X1 \zb_r_reg[2]  ( .D(N48), .CK(clk), .Q(zb_r[2]) );
  DFF_X1 \zb_r_reg[1]  ( .D(N47), .CK(clk), .Q(zb_r[1]) );
  DFF_X1 \zb_r_reg[0]  ( .D(n688), .CK(clk), .Q(zb_r[0]) );
  DFF_X1 \tb_r_reg[3]  ( .D(N55), .CK(clk), .Q(tb_r[3]) );
  DFF_X1 \tb_r_reg[2]  ( .D(N54), .CK(clk), .Q(tb_r[2]) );
  DFF_X1 \tb_r_reg[1]  ( .D(N53), .CK(clk), .Q(tb_r[1]) );
  DFF_X1 \tb_r_reg[0]  ( .D(N52), .CK(clk), .Q(tb_r[0]) );
  DFF_X1 \rb_r_reg[3]  ( .D(N59), .CK(clk), .Q(rb_r[3]) );
  DFF_X1 \rb_r_reg[2]  ( .D(N58), .CK(clk), .Q(rb_r[2]) );
  DFF_X1 \rb_r_reg[1]  ( .D(N57), .CK(clk), .Q(rb_r[1]) );
  DFF_X1 \rb_r_reg[0]  ( .D(N56), .CK(clk), .Q(rb_r[0]) );
  DFF_X1 \sb_r_reg[3]  ( .D(N63), .CK(clk), .Q(sb_r[3]) );
  DFF_X1 \sb_r_reg[2]  ( .D(N62), .CK(clk), .Q(sb_r[2]) );
  DFF_X1 \sb_r_reg[1]  ( .D(N61), .CK(clk), .Q(sb_r[1]) );
  DFF_X1 \sb_r_reg[0]  ( .D(N60), .CK(clk), .Q(sb_r[0]) );
  DFF_X1 \ub_r_reg[3]  ( .D(N67), .CK(clk), .Q(ub_r[3]) );
  DFF_X1 \ub_r_reg[2]  ( .D(N66), .CK(clk), .Q(ub_r[2]) );
  DFF_X1 \ub_r_reg[1]  ( .D(N65), .CK(clk), .Q(ub_r[1]) );
  DFF_X1 \ub_r_reg[0]  ( .D(N64), .CK(clk), .Q(ub_r[0]) );
  DFF_X1 \vb_r_reg[3]  ( .D(N71), .CK(clk), .Q(vb_r[3]) );
  DFF_X1 \vb_r_reg[2]  ( .D(N70), .CK(clk), .Q(vb_r[2]) );
  DFF_X1 \vb_r_reg[1]  ( .D(N69), .CK(clk), .Q(vb_r[1]) );
  DFF_X1 \vb_r_reg[0]  ( .D(N68), .CK(clk), .Q(vb_r[0]) );
  XOR2_X1 U3 ( .A(zb_r[2]), .B(zb_r[3]), .Z(zb[1]) );
  XOR2_X1 U4 ( .A(zb_r[0]), .B(zb_r[1]), .Z(zb[0]) );
  XOR2_X1 U5 ( .A(za_r[2]), .B(za_r[3]), .Z(za[1]) );
  XOR2_X1 U6 ( .A(za_r[0]), .B(za_r[1]), .Z(za[0]) );
  XOR2_X1 U7 ( .A(yb_r[2]), .B(yb_r[3]), .Z(yb[1]) );
  XOR2_X1 U8 ( .A(yb_r[0]), .B(yb_r[1]), .Z(yb[0]) );
  XOR2_X1 U9 ( .A(ya_r[2]), .B(ya_r[3]), .Z(ya[1]) );
  XOR2_X1 U10 ( .A(ya_r[0]), .B(ya_r[1]), .Z(ya[0]) );
  XOR2_X1 U11 ( .A(xb_r[2]), .B(xb_r[3]), .Z(xb[1]) );
  XOR2_X1 U12 ( .A(xb_r[0]), .B(xb_r[1]), .Z(xb[0]) );
  XOR2_X1 U13 ( .A(xa_r[2]), .B(xa_r[3]), .Z(xa[1]) );
  XOR2_X1 U14 ( .A(xa_r[0]), .B(xa_r[1]), .Z(xa[0]) );
  XOR2_X1 U15 ( .A(vb_r[2]), .B(vb_r[3]), .Z(vb[1]) );
  XOR2_X1 U16 ( .A(vb_r[0]), .B(vb_r[1]), .Z(vb[0]) );
  XOR2_X1 U17 ( .A(va_r[2]), .B(va_r[3]), .Z(va[1]) );
  XOR2_X1 U18 ( .A(va_r[0]), .B(va_r[1]), .Z(va[0]) );
  XOR2_X1 U19 ( .A(ub_r[2]), .B(ub_r[3]), .Z(ub[1]) );
  XOR2_X1 U20 ( .A(ub_r[0]), .B(ub_r[1]), .Z(ub[0]) );
  XOR2_X1 U21 ( .A(ua_r[2]), .B(ua_r[3]), .Z(ua[1]) );
  XOR2_X1 U22 ( .A(ua_r[0]), .B(ua_r[1]), .Z(ua[0]) );
  XOR2_X1 U23 ( .A(tb_r[2]), .B(tb_r[3]), .Z(tb[1]) );
  XOR2_X1 U24 ( .A(tb_r[0]), .B(tb_r[1]), .Z(tb[0]) );
  XOR2_X1 U25 ( .A(ta_r[2]), .B(ta_r[3]), .Z(ta[1]) );
  XOR2_X1 U26 ( .A(ta_r[0]), .B(ta_r[1]), .Z(ta[0]) );
  XOR2_X1 U27 ( .A(sb_r[2]), .B(sb_r[3]), .Z(sb[1]) );
  XOR2_X1 U28 ( .A(sb_r[0]), .B(sb_r[1]), .Z(sb[0]) );
  XOR2_X1 U29 ( .A(sa_r[2]), .B(sa_r[3]), .Z(sa[1]) );
  XOR2_X1 U30 ( .A(sa_r[0]), .B(sa_r[1]), .Z(sa[0]) );
  XOR2_X1 U31 ( .A(rb_r[2]), .B(rb_r[3]), .Z(rb[1]) );
  XOR2_X1 U32 ( .A(rb_r[0]), .B(rb_r[1]), .Z(rb[0]) );
  XOR2_X1 U33 ( .A(ra_r[2]), .B(ra_r[3]), .Z(ra[1]) );
  XOR2_X1 U34 ( .A(ra_r[0]), .B(ra_r[1]), .Z(ra[0]) );
  NAND2_X1 U35 ( .A1(da1ca1ba1aa1[3]), .A2(qa0pa0na0ma0[1]), .ZN(n771) );
  NAND2_X1 U36 ( .A1(da1ca1ba1aa1[1]), .A2(qa0pa0na0ma0[3]), .ZN(n770) );
  XNOR2_X1 U37 ( .A(n771), .B(n770), .ZN(n821) );
  NAND2_X1 U38 ( .A1(da1ca1ba1aa1[0]), .A2(qa0pa0na0ma0[3]), .ZN(n773) );
  INV_X1 U39 ( .A(qa0pa0na0ma0[1]), .ZN(n1371) );
  NAND2_X1 U40 ( .A1(da1ca1ba1aa1[2]), .A2(n1371), .ZN(n772) );
  XOR2_X1 U41 ( .A(n773), .B(n772), .Z(n778) );
  XOR2_X1 U42 ( .A(qa0pa0na0ma0[3]), .B(qa0pa0na0ma0[0]), .Z(n774) );
  NAND2_X1 U43 ( .A1(n774), .A2(da1ca1ba1aa1[3]), .ZN(n776) );
  NAND2_X1 U44 ( .A1(da1ca1ba1aa1[1]), .A2(qa0pa0na0ma0[2]), .ZN(n775) );
  XNOR2_X1 U45 ( .A(n776), .B(n775), .ZN(n777) );
  XNOR2_X1 U46 ( .A(n778), .B(n777), .ZN(n1062) );
  XNOR2_X1 U47 ( .A(qa0pa0na0ma0[1]), .B(ha0ga0fa0ea0[1]), .ZN(n1101) );
  NAND2_X1 U48 ( .A1(qa0pa0na0ma0[1]), .A2(da1ca1ba1aa1[1]), .ZN(n779) );
  NAND2_X1 U49 ( .A1(qa0pa0na0ma0[0]), .A2(da1ca1ba1aa1[0]), .ZN(n919) );
  XNOR2_X1 U50 ( .A(n779), .B(n919), .ZN(n783) );
  NAND2_X1 U51 ( .A1(da1ca1ba1aa1[3]), .A2(qa0pa0na0ma0[2]), .ZN(n781) );
  NAND2_X1 U52 ( .A1(da1ca1ba1aa1[2]), .A2(qa0pa0na0ma0[3]), .ZN(n780) );
  XNOR2_X1 U53 ( .A(n781), .B(n780), .ZN(n782) );
  XNOR2_X1 U54 ( .A(n783), .B(n782), .ZN(n818) );
  XNOR2_X1 U55 ( .A(n1101), .B(n818), .ZN(n784) );
  XNOR2_X1 U56 ( .A(n1062), .B(n784), .ZN(n785) );
  XNOR2_X1 U57 ( .A(n821), .B(n785), .ZN(N25) );
  INV_X1 U58 ( .A(db0cb0bb0ab0[1]), .ZN(n1269) );
  INV_X1 U59 ( .A(qb1pb1nb1mb1[1]), .ZN(n809) );
  NOR2_X1 U60 ( .A1(n1269), .A2(n809), .ZN(n840) );
  NAND2_X1 U61 ( .A1(db0cb0bb0ab0[3]), .A2(qb1pb1nb1mb1[1]), .ZN(n838) );
  XNOR2_X1 U62 ( .A(n840), .B(n838), .ZN(n799) );
  NAND2_X1 U63 ( .A1(db0cb0bb0ab0[1]), .A2(qb1pb1nb1mb1[3]), .ZN(n837) );
  NAND2_X1 U64 ( .A1(db0cb0bb0ab0[2]), .A2(qb1pb1nb1mb1[2]), .ZN(n1137) );
  XNOR2_X1 U65 ( .A(n837), .B(n1137), .ZN(n797) );
  NAND2_X1 U66 ( .A1(db0cb0bb0ab0[2]), .A2(qb1pb1nb1mb1[0]), .ZN(n787) );
  NAND2_X1 U67 ( .A1(db0cb0bb0ab0[0]), .A2(qb1pb1nb1mb1[2]), .ZN(n786) );
  NAND2_X1 U68 ( .A1(n787), .A2(n786), .ZN(n790) );
  NAND2_X1 U69 ( .A1(n1137), .A2(n790), .ZN(n789) );
  NAND2_X1 U70 ( .A1(db0cb0bb0ab0[0]), .A2(qb1pb1nb1mb1[0]), .ZN(n852) );
  INV_X1 U71 ( .A(n852), .ZN(n788) );
  NAND2_X1 U72 ( .A1(n789), .A2(n788), .ZN(n792) );
  NAND2_X1 U73 ( .A1(n852), .A2(n790), .ZN(n791) );
  NAND2_X1 U74 ( .A1(n792), .A2(n791), .ZN(n1134) );
  INV_X1 U75 ( .A(qb1pb1nb1mb1[0]), .ZN(n1439) );
  XNOR2_X1 U76 ( .A(hb0gb0fb0eb0[2]), .B(n1439), .ZN(n824) );
  XNOR2_X1 U77 ( .A(n1134), .B(n824), .ZN(n795) );
  NAND2_X1 U78 ( .A1(db0cb0bb0ab0[2]), .A2(qb1pb1nb1mb1[3]), .ZN(n794) );
  NAND2_X1 U79 ( .A1(qb1pb1nb1mb1[2]), .A2(db0cb0bb0ab0[3]), .ZN(n793) );
  XNOR2_X1 U80 ( .A(n794), .B(n793), .ZN(n854) );
  XNOR2_X1 U81 ( .A(n795), .B(n854), .ZN(n796) );
  XNOR2_X1 U82 ( .A(n797), .B(n796), .ZN(n798) );
  XNOR2_X1 U83 ( .A(n799), .B(n798), .ZN(N66) );
  NAND2_X1 U84 ( .A1(qb1pb1nb1mb1[0]), .A2(db1cb1bb1ab1[0]), .ZN(n1126) );
  INV_X1 U85 ( .A(n1126), .ZN(n1123) );
  NAND2_X1 U86 ( .A1(db1cb1bb1ab1[3]), .A2(qb1pb1nb1mb1[2]), .ZN(n801) );
  NAND2_X1 U87 ( .A1(db1cb1bb1ab1[2]), .A2(qb1pb1nb1mb1[3]), .ZN(n800) );
  XNOR2_X1 U88 ( .A(n801), .B(n800), .ZN(n802) );
  XNOR2_X1 U89 ( .A(n1123), .B(n802), .ZN(n827) );
  XNOR2_X1 U90 ( .A(hb0gb0fb0eb0[1]), .B(n809), .ZN(n853) );
  XOR2_X1 U91 ( .A(n827), .B(n853), .Z(n815) );
  NAND2_X1 U92 ( .A1(db1cb1bb1ab1[1]), .A2(qb1pb1nb1mb1[3]), .ZN(n804) );
  NAND2_X1 U93 ( .A1(db1cb1bb1ab1[3]), .A2(qb1pb1nb1mb1[1]), .ZN(n803) );
  XOR2_X1 U94 ( .A(n804), .B(n803), .Z(n829) );
  XOR2_X1 U95 ( .A(qb1pb1nb1mb1[1]), .B(qb1pb1nb1mb1[2]), .Z(n805) );
  NAND2_X1 U96 ( .A1(n805), .A2(db1cb1bb1ab1[1]), .ZN(n813) );
  NAND2_X1 U97 ( .A1(qb1pb1nb1mb1[3]), .A2(db1cb1bb1ab1[3]), .ZN(n1121) );
  NAND2_X1 U98 ( .A1(db1cb1bb1ab1[3]), .A2(qb1pb1nb1mb1[0]), .ZN(n807) );
  NAND2_X1 U99 ( .A1(db1cb1bb1ab1[0]), .A2(qb1pb1nb1mb1[3]), .ZN(n806) );
  XOR2_X1 U100 ( .A(n807), .B(n806), .Z(n808) );
  XNOR2_X1 U101 ( .A(n1121), .B(n808), .ZN(n811) );
  NAND2_X1 U102 ( .A1(n809), .A2(db1cb1bb1ab1[2]), .ZN(n810) );
  XNOR2_X1 U103 ( .A(n811), .B(n810), .ZN(n812) );
  XNOR2_X1 U104 ( .A(n813), .B(n812), .ZN(n950) );
  XNOR2_X1 U105 ( .A(n829), .B(n950), .ZN(n814) );
  XNOR2_X1 U106 ( .A(n815), .B(n814), .ZN(N63) );
  NAND2_X1 U107 ( .A1(da1ca1ba1aa1[2]), .A2(qa0pa0na0ma0[0]), .ZN(n817) );
  NAND2_X1 U108 ( .A1(da1ca1ba1aa1[0]), .A2(qa0pa0na0ma0[2]), .ZN(n816) );
  XOR2_X1 U109 ( .A(n817), .B(n816), .Z(n918) );
  XNOR2_X1 U110 ( .A(n818), .B(n918), .ZN(n820) );
  XOR2_X1 U111 ( .A(qa0pa0na0ma0[0]), .B(ha0ga0fa0ea0[2]), .Z(n1109) );
  XNOR2_X1 U112 ( .A(da1ca1ba1aa1[3]), .B(n1109), .ZN(n819) );
  XNOR2_X1 U113 ( .A(n820), .B(n819), .ZN(n823) );
  NAND2_X1 U114 ( .A1(da1ca1ba1aa1[2]), .A2(qa0pa0na0ma0[2]), .ZN(n822) );
  XNOR2_X1 U115 ( .A(n822), .B(n821), .ZN(n925) );
  XNOR2_X1 U116 ( .A(n823), .B(n925), .ZN(N29) );
  XOR2_X1 U117 ( .A(db1cb1bb1ab1[3]), .B(n824), .Z(n826) );
  NAND2_X1 U118 ( .A1(db1cb1bb1ab1[1]), .A2(qb1pb1nb1mb1[1]), .ZN(n825) );
  XNOR2_X1 U119 ( .A(n826), .B(n825), .ZN(n828) );
  XOR2_X1 U120 ( .A(n828), .B(n827), .Z(n836) );
  NAND2_X1 U121 ( .A1(qb1pb1nb1mb1[2]), .A2(db1cb1bb1ab1[2]), .ZN(n1122) );
  XNOR2_X1 U122 ( .A(n829), .B(n1122), .ZN(n949) );
  NAND2_X1 U123 ( .A1(db1cb1bb1ab1[0]), .A2(qb1pb1nb1mb1[2]), .ZN(n831) );
  NAND2_X1 U124 ( .A1(db1cb1bb1ab1[2]), .A2(qb1pb1nb1mb1[0]), .ZN(n830) );
  NAND2_X1 U125 ( .A1(n831), .A2(n830), .ZN(n1125) );
  INV_X1 U126 ( .A(n1125), .ZN(n833) );
  NOR2_X1 U127 ( .A1(n1122), .A2(n1126), .ZN(n832) );
  NOR2_X1 U128 ( .A1(n833), .A2(n832), .ZN(n834) );
  XNOR2_X1 U129 ( .A(n949), .B(n834), .ZN(n835) );
  XNOR2_X1 U130 ( .A(n836), .B(n835), .ZN(N67) );
  INV_X1 U131 ( .A(db0cb0bb0ab0[3]), .ZN(n1181) );
  INV_X1 U132 ( .A(qb1pb1nb1mb1[3]), .ZN(n1400) );
  NOR2_X1 U133 ( .A1(n1181), .A2(n1400), .ZN(n841) );
  NAND2_X1 U134 ( .A1(n838), .A2(n837), .ZN(n839) );
  XNOR2_X1 U135 ( .A(n841), .B(n839), .ZN(n843) );
  NAND2_X1 U136 ( .A1(n841), .A2(n840), .ZN(n842) );
  NAND2_X1 U137 ( .A1(n843), .A2(n842), .ZN(n1139) );
  XNOR2_X1 U138 ( .A(db0cb0bb0ab0[1]), .B(db0cb0bb0ab0[2]), .ZN(n1193) );
  INV_X1 U139 ( .A(n1193), .ZN(n844) );
  NAND2_X1 U140 ( .A1(n844), .A2(qb1pb1nb1mb1[1]), .ZN(n848) );
  NAND2_X1 U141 ( .A1(db0cb0bb0ab0[0]), .A2(qb1pb1nb1mb1[3]), .ZN(n846) );
  NAND2_X1 U142 ( .A1(qb1pb1nb1mb1[0]), .A2(db0cb0bb0ab0[3]), .ZN(n845) );
  XNOR2_X1 U143 ( .A(n846), .B(n845), .ZN(n847) );
  XNOR2_X1 U144 ( .A(n848), .B(n847), .ZN(n849) );
  XOR2_X1 U145 ( .A(n1139), .B(n849), .Z(n851) );
  NAND2_X1 U146 ( .A1(qb1pb1nb1mb1[2]), .A2(db0cb0bb0ab0[1]), .ZN(n850) );
  XNOR2_X1 U147 ( .A(n851), .B(n850), .ZN(n1478) );
  XNOR2_X1 U148 ( .A(n853), .B(n852), .ZN(n855) );
  XNOR2_X1 U149 ( .A(n855), .B(n854), .ZN(n856) );
  XNOR2_X1 U150 ( .A(n1478), .B(n856), .ZN(N62) );
  INV_X1 U151 ( .A(ha1ga1fa1ea1[1]), .ZN(n910) );
  NOR2_X1 U152 ( .A1(n1371), .A2(n910), .ZN(n859) );
  NAND2_X1 U153 ( .A1(ha1ga1fa1ea1[3]), .A2(qa0pa0na0ma0[1]), .ZN(n858) );
  NAND2_X1 U154 ( .A1(ha1ga1fa1ea1[1]), .A2(qa0pa0na0ma0[3]), .ZN(n857) );
  NAND2_X1 U155 ( .A1(n858), .A2(n857), .ZN(n908) );
  XNOR2_X1 U156 ( .A(n859), .B(n908), .ZN(n860) );
  NAND2_X1 U157 ( .A1(qa0pa0na0ma0[3]), .A2(ha1ga1fa1ea1[3]), .ZN(n871) );
  INV_X1 U158 ( .A(n871), .ZN(n914) );
  NAND2_X1 U159 ( .A1(n914), .A2(n859), .ZN(n909) );
  NAND2_X1 U160 ( .A1(n860), .A2(n909), .ZN(n881) );
  NAND2_X1 U161 ( .A1(ha1ga1fa1ea1[1]), .A2(qa0pa0na0ma0[2]), .ZN(n862) );
  NAND2_X1 U162 ( .A1(ha1ga1fa1ea1[0]), .A2(qa0pa0na0ma0[3]), .ZN(n861) );
  XOR2_X1 U163 ( .A(n862), .B(n861), .Z(n863) );
  XNOR2_X1 U164 ( .A(n881), .B(n863), .ZN(n867) );
  NAND2_X1 U165 ( .A1(n1371), .A2(ha1ga1fa1ea1[2]), .ZN(n865) );
  NAND2_X1 U166 ( .A1(ha1ga1fa1ea1[3]), .A2(qa0pa0na0ma0[0]), .ZN(n864) );
  XNOR2_X1 U167 ( .A(n865), .B(n864), .ZN(n866) );
  XNOR2_X1 U168 ( .A(n867), .B(n866), .ZN(n1057) );
  INV_X1 U169 ( .A(da0ca0ba0aa0[1]), .ZN(n868) );
  XNOR2_X1 U170 ( .A(qa0pa0na0ma0[1]), .B(n868), .ZN(n1370) );
  NAND2_X1 U171 ( .A1(ha1ga1fa1ea1[3]), .A2(qa0pa0na0ma0[2]), .ZN(n870) );
  NAND2_X1 U172 ( .A1(ha1ga1fa1ea1[2]), .A2(qa0pa0na0ma0[3]), .ZN(n869) );
  XOR2_X1 U173 ( .A(n870), .B(n869), .Z(n877) );
  XNOR2_X1 U174 ( .A(n871), .B(n877), .ZN(n873) );
  NAND2_X1 U175 ( .A1(ha1ga1fa1ea1[0]), .A2(qa0pa0na0ma0[0]), .ZN(n872) );
  XNOR2_X1 U176 ( .A(n873), .B(n872), .ZN(n874) );
  XOR2_X1 U177 ( .A(n1370), .B(n874), .Z(n875) );
  XNOR2_X1 U178 ( .A(n1057), .B(n875), .ZN(N7) );
  XOR2_X1 U179 ( .A(qa0pa0na0ma0[2]), .B(qa0pa0na0ma0[0]), .Z(n1071) );
  XOR2_X1 U180 ( .A(ha1ga1fa1ea1[0]), .B(ha1ga1fa1ea1[2]), .Z(n876) );
  NAND2_X1 U181 ( .A1(n1071), .A2(n876), .ZN(n907) );
  XOR2_X1 U182 ( .A(da0ca0ba0aa0[2]), .B(ha1ga1fa1ea1[3]), .Z(n1244) );
  XNOR2_X1 U183 ( .A(n907), .B(n1244), .ZN(n879) );
  XNOR2_X1 U184 ( .A(qa0pa0na0ma0[0]), .B(n877), .ZN(n878) );
  XNOR2_X1 U185 ( .A(n879), .B(n878), .ZN(n880) );
  XOR2_X1 U186 ( .A(n881), .B(n880), .Z(N11) );
  NAND2_X1 U187 ( .A1(hb1gb1fb1eb1[0]), .A2(qb0pb0nb0mb0[3]), .ZN(n889) );
  INV_X1 U188 ( .A(qb0pb0nb0mb0[1]), .ZN(n1192) );
  XNOR2_X1 U189 ( .A(n1192), .B(qb0pb0nb0mb0[2]), .ZN(n882) );
  NAND2_X1 U190 ( .A1(n882), .A2(hb1gb1fb1eb1[1]), .ZN(n887) );
  INV_X1 U191 ( .A(qb0pb0nb0mb0[3]), .ZN(n1456) );
  XNOR2_X1 U192 ( .A(n1456), .B(qb0pb0nb0mb0[0]), .ZN(n883) );
  NAND2_X1 U193 ( .A1(n883), .A2(hb1gb1fb1eb1[3]), .ZN(n885) );
  INV_X1 U194 ( .A(hb1gb1fb1eb1[2]), .ZN(n1297) );
  NOR2_X1 U195 ( .A1(qb0pb0nb0mb0[1]), .A2(n1297), .ZN(n884) );
  XNOR2_X1 U196 ( .A(n885), .B(n884), .ZN(n886) );
  XNOR2_X1 U197 ( .A(n887), .B(n886), .ZN(n888) );
  XNOR2_X1 U198 ( .A(n889), .B(n888), .ZN(n1449) );
  XNOR2_X1 U199 ( .A(db0cb0bb0ab0[1]), .B(qb0pb0nb0mb0[1]), .ZN(n943) );
  NAND2_X1 U200 ( .A1(hb1gb1fb1eb1[3]), .A2(qb0pb0nb0mb0[1]), .ZN(n891) );
  NAND2_X1 U201 ( .A1(hb1gb1fb1eb1[1]), .A2(qb0pb0nb0mb0[3]), .ZN(n890) );
  XOR2_X1 U202 ( .A(n891), .B(n890), .Z(n1444) );
  NAND2_X1 U203 ( .A1(qb0pb0nb0mb0[0]), .A2(hb1gb1fb1eb1[0]), .ZN(n892) );
  XOR2_X1 U204 ( .A(n1444), .B(n892), .Z(n903) );
  XNOR2_X1 U205 ( .A(n943), .B(n903), .ZN(n895) );
  NAND2_X1 U206 ( .A1(hb1gb1fb1eb1[3]), .A2(qb0pb0nb0mb0[2]), .ZN(n894) );
  NAND2_X1 U207 ( .A1(hb1gb1fb1eb1[2]), .A2(qb0pb0nb0mb0[3]), .ZN(n893) );
  XNOR2_X1 U208 ( .A(n894), .B(n893), .ZN(n898) );
  XNOR2_X1 U209 ( .A(n895), .B(n898), .ZN(n896) );
  XNOR2_X1 U210 ( .A(n1449), .B(n896), .ZN(N43) );
  NAND2_X1 U211 ( .A1(qb0pb0nb0mb0[1]), .A2(hb1gb1fb1eb1[1]), .ZN(n897) );
  XNOR2_X1 U212 ( .A(qb0pb0nb0mb0[0]), .B(n897), .ZN(n899) );
  XNOR2_X1 U213 ( .A(n899), .B(n898), .ZN(n900) );
  XOR2_X1 U214 ( .A(db0cb0bb0ab0[2]), .B(hb1gb1fb1eb1[3]), .Z(n1290) );
  XOR2_X1 U215 ( .A(n900), .B(n1290), .Z(n906) );
  INV_X1 U216 ( .A(qb0pb0nb0mb0[2]), .ZN(n1484) );
  NOR2_X1 U217 ( .A1(n1484), .A2(n1297), .ZN(n1146) );
  NAND2_X1 U218 ( .A1(hb1gb1fb1eb1[0]), .A2(qb0pb0nb0mb0[2]), .ZN(n902) );
  NAND2_X1 U219 ( .A1(hb1gb1fb1eb1[2]), .A2(qb0pb0nb0mb0[0]), .ZN(n901) );
  XOR2_X1 U220 ( .A(n902), .B(n901), .Z(n904) );
  XNOR2_X1 U221 ( .A(n904), .B(n903), .ZN(n1142) );
  XNOR2_X1 U222 ( .A(n1146), .B(n1142), .ZN(n905) );
  XNOR2_X1 U223 ( .A(n906), .B(n905), .ZN(N47) );
  XNOR2_X1 U224 ( .A(qa0pa0na0ma0[0]), .B(n1371), .ZN(n1074) );
  XOR2_X1 U225 ( .A(da0ca0ba0aa0[0]), .B(n1074), .Z(n1356) );
  XNOR2_X1 U226 ( .A(n1356), .B(n907), .ZN(n917) );
  NAND2_X1 U227 ( .A1(n909), .A2(n908), .ZN(n915) );
  NOR2_X1 U228 ( .A1(qa0pa0na0ma0[0]), .A2(n910), .ZN(n912) );
  NAND2_X1 U229 ( .A1(ha1ga1fa1ea1[0]), .A2(qa0pa0na0ma0[1]), .ZN(n911) );
  XNOR2_X1 U230 ( .A(n912), .B(n911), .ZN(n913) );
  XNOR2_X1 U231 ( .A(n914), .B(n913), .ZN(n1059) );
  XNOR2_X1 U232 ( .A(n915), .B(n1059), .ZN(n916) );
  XNOR2_X1 U233 ( .A(n917), .B(n916), .ZN(N3) );
  XNOR2_X1 U234 ( .A(n919), .B(n918), .ZN(n921) );
  NAND2_X1 U235 ( .A1(qa0pa0na0ma0[3]), .A2(da1ca1ba1aa1[3]), .ZN(n920) );
  XNOR2_X1 U236 ( .A(n921), .B(n920), .ZN(n922) );
  XOR2_X1 U237 ( .A(n922), .B(n1074), .Z(n928) );
  NAND2_X1 U238 ( .A1(qa0pa0na0ma0[0]), .A2(da1ca1ba1aa1[1]), .ZN(n924) );
  NAND2_X1 U239 ( .A1(da1ca1ba1aa1[0]), .A2(qa0pa0na0ma0[1]), .ZN(n923) );
  XOR2_X1 U240 ( .A(n924), .B(n923), .Z(n926) );
  XNOR2_X1 U241 ( .A(n926), .B(n925), .ZN(n1061) );
  XOR2_X1 U242 ( .A(ha0ga0fa0ea0[0]), .B(da1ca1ba1aa1[1]), .Z(n957) );
  XNOR2_X1 U243 ( .A(n1061), .B(n957), .ZN(n927) );
  XNOR2_X1 U244 ( .A(n928), .B(n927), .ZN(N21) );
  NAND2_X1 U245 ( .A1(hb0gb0fb0eb0[2]), .A2(qb0pb0nb0mb0[1]), .ZN(n930) );
  NAND2_X1 U246 ( .A1(hb0gb0fb0eb0[0]), .A2(qb0pb0nb0mb0[3]), .ZN(n929) );
  XOR2_X1 U247 ( .A(n930), .B(n929), .Z(n934) );
  NAND2_X1 U248 ( .A1(qb0pb0nb0mb0[2]), .A2(hb0gb0fb0eb0[1]), .ZN(n932) );
  NAND2_X1 U249 ( .A1(hb0gb0fb0eb0[3]), .A2(qb0pb0nb0mb0[0]), .ZN(n931) );
  XNOR2_X1 U250 ( .A(n932), .B(n931), .ZN(n933) );
  XNOR2_X1 U251 ( .A(n934), .B(n933), .ZN(n1474) );
  NAND2_X1 U252 ( .A1(hb0gb0fb0eb0[3]), .A2(qb0pb0nb0mb0[1]), .ZN(n936) );
  NAND2_X1 U253 ( .A1(hb0gb0fb0eb0[1]), .A2(qb0pb0nb0mb0[3]), .ZN(n935) );
  XNOR2_X1 U254 ( .A(n936), .B(n935), .ZN(n1156) );
  INV_X1 U255 ( .A(qb0pb0nb0mb0[0]), .ZN(n1164) );
  INV_X1 U256 ( .A(hb0gb0fb0eb0[0]), .ZN(n1407) );
  NOR2_X1 U257 ( .A1(n1164), .A2(n1407), .ZN(n941) );
  NAND2_X1 U258 ( .A1(qb0pb0nb0mb0[3]), .A2(hb0gb0fb0eb0[3]), .ZN(n1150) );
  INV_X1 U259 ( .A(hb0gb0fb0eb0[3]), .ZN(n1399) );
  NOR2_X1 U260 ( .A1(n1399), .A2(n1484), .ZN(n938) );
  NAND2_X1 U261 ( .A1(qb0pb0nb0mb0[3]), .A2(hb0gb0fb0eb0[2]), .ZN(n937) );
  XNOR2_X1 U262 ( .A(n938), .B(n937), .ZN(n939) );
  NAND2_X1 U263 ( .A1(qb0pb0nb0mb0[1]), .A2(hb0gb0fb0eb0[1]), .ZN(n1469) );
  XNOR2_X1 U264 ( .A(n939), .B(n1469), .ZN(n1494) );
  XOR2_X1 U265 ( .A(n1150), .B(n1494), .Z(n940) );
  XNOR2_X1 U266 ( .A(n941), .B(n940), .ZN(n942) );
  XOR2_X1 U267 ( .A(n943), .B(n942), .Z(n944) );
  XNOR2_X1 U268 ( .A(n1156), .B(n944), .ZN(n945) );
  XNOR2_X1 U269 ( .A(n1474), .B(n945), .ZN(N42) );
  NAND2_X1 U270 ( .A1(n1439), .A2(db1cb1bb1ab1[1]), .ZN(n947) );
  NAND2_X1 U271 ( .A1(db1cb1bb1ab1[0]), .A2(qb1pb1nb1mb1[1]), .ZN(n946) );
  XNOR2_X1 U272 ( .A(n947), .B(n946), .ZN(n948) );
  XNOR2_X1 U273 ( .A(n949), .B(n948), .ZN(n1132) );
  XOR2_X1 U274 ( .A(n950), .B(n1132), .Z(n952) );
  XOR2_X1 U275 ( .A(qb1pb1nb1mb1[3]), .B(qb1pb1nb1mb1[2]), .Z(n1482) );
  XNOR2_X1 U276 ( .A(n1482), .B(hb0gb0fb0eb0[3]), .ZN(n951) );
  XNOR2_X1 U277 ( .A(n952), .B(n951), .ZN(N71) );
  NAND2_X1 U278 ( .A1(qa1pa1na1ma1[0]), .A2(da1ca1ba1aa1[2]), .ZN(n954) );
  NAND2_X1 U279 ( .A1(qa1pa1na1ma1[2]), .A2(da1ca1ba1aa1[0]), .ZN(n953) );
  XOR2_X1 U280 ( .A(n954), .B(n953), .Z(n986) );
  INV_X1 U281 ( .A(qa1pa1na1ma1[0]), .ZN(n1344) );
  XNOR2_X1 U282 ( .A(qa1pa1na1ma1[1]), .B(n1344), .ZN(n1213) );
  AND2_X1 U283 ( .A1(da1ca1ba1aa1[1]), .A2(qa1pa1na1ma1[1]), .ZN(n977) );
  NAND2_X1 U284 ( .A1(da1ca1ba1aa1[3]), .A2(qa1pa1na1ma1[3]), .ZN(n985) );
  INV_X1 U285 ( .A(n985), .ZN(n960) );
  NAND2_X1 U286 ( .A1(n977), .A2(n960), .ZN(n978) );
  NAND2_X1 U287 ( .A1(qa1pa1na1ma1[1]), .A2(da1ca1ba1aa1[3]), .ZN(n956) );
  NAND2_X1 U288 ( .A1(qa1pa1na1ma1[3]), .A2(da1ca1ba1aa1[1]), .ZN(n955) );
  NAND2_X1 U289 ( .A1(n956), .A2(n955), .ZN(n976) );
  NAND2_X1 U290 ( .A1(n978), .A2(n976), .ZN(n958) );
  XNOR2_X1 U291 ( .A(n958), .B(n957), .ZN(n959) );
  XNOR2_X1 U292 ( .A(n1213), .B(n959), .ZN(n966) );
  NAND2_X1 U293 ( .A1(da1ca1ba1aa1[0]), .A2(qa1pa1na1ma1[0]), .ZN(n981) );
  NAND2_X1 U294 ( .A1(da1ca1ba1aa1[2]), .A2(qa1pa1na1ma1[2]), .ZN(n987) );
  XNOR2_X1 U295 ( .A(n960), .B(n987), .ZN(n964) );
  NAND2_X1 U296 ( .A1(da1ca1ba1aa1[0]), .A2(qa1pa1na1ma1[1]), .ZN(n962) );
  NAND2_X1 U297 ( .A1(qa1pa1na1ma1[0]), .A2(da1ca1ba1aa1[1]), .ZN(n961) );
  XNOR2_X1 U298 ( .A(n962), .B(n961), .ZN(n963) );
  XNOR2_X1 U299 ( .A(n964), .B(n963), .ZN(n992) );
  XNOR2_X1 U300 ( .A(n981), .B(n992), .ZN(n965) );
  XNOR2_X1 U301 ( .A(n966), .B(n965), .ZN(n967) );
  XOR2_X1 U302 ( .A(n986), .B(n967), .Z(N23) );
  NAND2_X1 U303 ( .A1(qa1pa1na1ma1[0]), .A2(da1ca1ba1aa1[3]), .ZN(n969) );
  NAND2_X1 U304 ( .A1(qa1pa1na1ma1[3]), .A2(da1ca1ba1aa1[0]), .ZN(n968) );
  XOR2_X1 U305 ( .A(n969), .B(n968), .Z(n973) );
  INV_X1 U306 ( .A(qa1pa1na1ma1[1]), .ZN(n1229) );
  NAND2_X1 U307 ( .A1(n1229), .A2(da1ca1ba1aa1[2]), .ZN(n971) );
  NAND2_X1 U308 ( .A1(qa1pa1na1ma1[2]), .A2(da1ca1ba1aa1[1]), .ZN(n970) );
  XNOR2_X1 U309 ( .A(n971), .B(n970), .ZN(n972) );
  XNOR2_X1 U310 ( .A(n973), .B(n972), .ZN(n996) );
  NAND2_X1 U311 ( .A1(qa1pa1na1ma1[2]), .A2(da1ca1ba1aa1[3]), .ZN(n975) );
  NAND2_X1 U312 ( .A1(qa1pa1na1ma1[3]), .A2(da1ca1ba1aa1[2]), .ZN(n974) );
  XOR2_X1 U313 ( .A(n975), .B(n974), .Z(n980) );
  XNOR2_X1 U314 ( .A(n977), .B(n976), .ZN(n979) );
  NAND2_X1 U315 ( .A1(n979), .A2(n978), .ZN(n997) );
  XNOR2_X1 U316 ( .A(n980), .B(n997), .ZN(n982) );
  XNOR2_X1 U317 ( .A(n982), .B(n981), .ZN(n991) );
  XNOR2_X1 U318 ( .A(n996), .B(n991), .ZN(n983) );
  XNOR2_X1 U319 ( .A(qa1pa1na1ma1[1]), .B(ha0ga0fa0ea0[1]), .ZN(n1021) );
  XNOR2_X1 U320 ( .A(n983), .B(n1021), .ZN(n984) );
  XNOR2_X1 U321 ( .A(n985), .B(n984), .ZN(N27) );
  XNOR2_X1 U322 ( .A(n987), .B(n986), .ZN(n989) );
  XNOR2_X1 U323 ( .A(ha0ga0fa0ea0[2]), .B(n1344), .ZN(n1026) );
  XNOR2_X1 U324 ( .A(da1ca1ba1aa1[3]), .B(n1026), .ZN(n988) );
  XNOR2_X1 U325 ( .A(n989), .B(n988), .ZN(n990) );
  XNOR2_X1 U326 ( .A(n991), .B(n990), .ZN(N31) );
  XNOR2_X1 U327 ( .A(qa1pa1na1ma1[2]), .B(qa1pa1na1ma1[3]), .ZN(n1252) );
  XNOR2_X1 U328 ( .A(n1252), .B(n992), .ZN(n994) );
  XNOR2_X1 U329 ( .A(da1ca1ba1aa1[1]), .B(ha0ga0fa0ea0[3]), .ZN(n993) );
  XNOR2_X1 U330 ( .A(n994), .B(n993), .ZN(n995) );
  XNOR2_X1 U331 ( .A(n996), .B(n995), .ZN(n998) );
  XNOR2_X1 U332 ( .A(n998), .B(n997), .ZN(N35) );
  NAND2_X1 U333 ( .A1(da0ca0ba0aa0[0]), .A2(qa1pa1na1ma1[0]), .ZN(n1020) );
  NAND2_X1 U334 ( .A1(qa1pa1na1ma1[2]), .A2(da0ca0ba0aa0[0]), .ZN(n999) );
  XOR2_X1 U335 ( .A(n1020), .B(n999), .Z(n1001) );
  NAND2_X1 U336 ( .A1(qa1pa1na1ma1[0]), .A2(da0ca0ba0aa0[2]), .ZN(n1000) );
  XNOR2_X1 U337 ( .A(n1001), .B(n1000), .ZN(n1025) );
  XOR2_X1 U338 ( .A(n1025), .B(n1213), .Z(n1010) );
  NAND2_X1 U339 ( .A1(qa1pa1na1ma1[0]), .A2(da0ca0ba0aa0[1]), .ZN(n1003) );
  NAND2_X1 U340 ( .A1(qa1pa1na1ma1[1]), .A2(da0ca0ba0aa0[0]), .ZN(n1002) );
  XOR2_X1 U341 ( .A(n1003), .B(n1002), .Z(n1007) );
  NAND2_X1 U342 ( .A1(qa1pa1na1ma1[3]), .A2(da0ca0ba0aa0[3]), .ZN(n1006) );
  NAND2_X1 U343 ( .A1(da0ca0ba0aa0[1]), .A2(qa1pa1na1ma1[3]), .ZN(n1005) );
  NAND2_X1 U344 ( .A1(qa1pa1na1ma1[1]), .A2(da0ca0ba0aa0[3]), .ZN(n1004) );
  XNOR2_X1 U345 ( .A(n1005), .B(n1004), .ZN(n1028) );
  XNOR2_X1 U346 ( .A(n1006), .B(n1028), .ZN(n1013) );
  XNOR2_X1 U347 ( .A(n1007), .B(n1013), .ZN(n1008) );
  NAND2_X1 U348 ( .A1(qa1pa1na1ma1[2]), .A2(da0ca0ba0aa0[2]), .ZN(n1031) );
  XNOR2_X1 U349 ( .A(n1008), .B(n1031), .ZN(n1067) );
  XNOR2_X1 U350 ( .A(n1067), .B(ha0ga0fa0ea0[0]), .ZN(n1009) );
  XNOR2_X1 U351 ( .A(n1010), .B(n1009), .ZN(N22) );
  NAND2_X1 U352 ( .A1(da0ca0ba0aa0[2]), .A2(qa1pa1na1ma1[3]), .ZN(n1012) );
  NAND2_X1 U353 ( .A1(qa1pa1na1ma1[2]), .A2(da0ca0ba0aa0[3]), .ZN(n1011) );
  XOR2_X1 U354 ( .A(n1012), .B(n1011), .Z(n1027) );
  XNOR2_X1 U355 ( .A(n1027), .B(n1013), .ZN(n1024) );
  NAND2_X1 U356 ( .A1(da0ca0ba0aa0[1]), .A2(qa1pa1na1ma1[2]), .ZN(n1015) );
  NAND2_X1 U357 ( .A1(qa1pa1na1ma1[3]), .A2(da0ca0ba0aa0[0]), .ZN(n1014) );
  XOR2_X1 U358 ( .A(n1015), .B(n1014), .Z(n1019) );
  XOR2_X1 U359 ( .A(da0ca0ba0aa0[1]), .B(da0ca0ba0aa0[2]), .Z(n1086) );
  NAND2_X1 U360 ( .A1(n1086), .A2(qa1pa1na1ma1[1]), .ZN(n1017) );
  NAND2_X1 U361 ( .A1(qa1pa1na1ma1[0]), .A2(da0ca0ba0aa0[3]), .ZN(n1016) );
  XOR2_X1 U362 ( .A(n1017), .B(n1016), .Z(n1018) );
  XNOR2_X1 U363 ( .A(n1019), .B(n1018), .ZN(n1068) );
  XNOR2_X1 U364 ( .A(n1068), .B(n1020), .ZN(n1022) );
  XNOR2_X1 U365 ( .A(n1022), .B(n1021), .ZN(n1023) );
  XNOR2_X1 U366 ( .A(n1024), .B(n1023), .ZN(N26) );
  XNOR2_X1 U367 ( .A(n1026), .B(n1025), .ZN(n1030) );
  XNOR2_X1 U368 ( .A(n1028), .B(n1027), .ZN(n1029) );
  XNOR2_X1 U369 ( .A(n1030), .B(n1029), .ZN(n1032) );
  XNOR2_X1 U370 ( .A(n1032), .B(n1031), .ZN(n1034) );
  NAND2_X1 U371 ( .A1(qa1pa1na1ma1[1]), .A2(da0ca0ba0aa0[1]), .ZN(n1033) );
  XNOR2_X1 U372 ( .A(n1034), .B(n1033), .ZN(N30) );
  NAND2_X1 U373 ( .A1(db1cb1bb1ab1[3]), .A2(qb0pb0nb0mb0[0]), .ZN(n1041) );
  XNOR2_X1 U374 ( .A(db1cb1bb1ab1[3]), .B(db1cb1bb1ab1[0]), .ZN(n1035) );
  NOR2_X1 U375 ( .A1(n1035), .A2(n1456), .ZN(n1039) );
  NAND2_X1 U376 ( .A1(db1cb1bb1ab1[1]), .A2(qb0pb0nb0mb0[2]), .ZN(n1037) );
  NAND2_X1 U377 ( .A1(db1cb1bb1ab1[2]), .A2(n1192), .ZN(n1036) );
  XOR2_X1 U378 ( .A(n1037), .B(n1036), .Z(n1038) );
  XNOR2_X1 U379 ( .A(n1039), .B(n1038), .ZN(n1040) );
  XNOR2_X1 U380 ( .A(n1041), .B(n1040), .ZN(n1452) );
  NAND2_X1 U381 ( .A1(db1cb1bb1ab1[3]), .A2(qb0pb0nb0mb0[1]), .ZN(n1043) );
  NAND2_X1 U382 ( .A1(db1cb1bb1ab1[1]), .A2(qb0pb0nb0mb0[3]), .ZN(n1042) );
  XOR2_X1 U383 ( .A(n1043), .B(n1042), .Z(n1460) );
  NAND2_X1 U384 ( .A1(qb0pb0nb0mb0[0]), .A2(db1cb1bb1ab1[0]), .ZN(n1044) );
  XNOR2_X1 U385 ( .A(n1460), .B(n1044), .ZN(n1171) );
  NAND2_X1 U386 ( .A1(qb0pb0nb0mb0[1]), .A2(db1cb1bb1ab1[1]), .ZN(n1451) );
  XNOR2_X1 U387 ( .A(n1171), .B(n1451), .ZN(n1048) );
  NAND2_X1 U388 ( .A1(db1cb1bb1ab1[3]), .A2(qb0pb0nb0mb0[2]), .ZN(n1046) );
  NAND2_X1 U389 ( .A1(db1cb1bb1ab1[2]), .A2(qb0pb0nb0mb0[3]), .ZN(n1045) );
  XNOR2_X1 U390 ( .A(n1046), .B(n1045), .ZN(n1047) );
  XNOR2_X1 U391 ( .A(n1048), .B(n1047), .ZN(n1052) );
  XNOR2_X1 U392 ( .A(n1452), .B(n1052), .ZN(n1049) );
  XNOR2_X1 U393 ( .A(qb0pb0nb0mb0[1]), .B(hb0gb0fb0eb0[1]), .ZN(n1191) );
  XNOR2_X1 U394 ( .A(n1049), .B(n1191), .ZN(N61) );
  XNOR2_X1 U395 ( .A(qb0pb0nb0mb0[0]), .B(n1484), .ZN(n1155) );
  NAND2_X1 U396 ( .A1(n1155), .A2(db1cb1bb1ab1[2]), .ZN(n1051) );
  NAND2_X1 U397 ( .A1(db1cb1bb1ab1[0]), .A2(qb0pb0nb0mb0[2]), .ZN(n1050) );
  XOR2_X1 U398 ( .A(n1051), .B(n1050), .Z(n1163) );
  XNOR2_X1 U399 ( .A(hb0gb0fb0eb0[2]), .B(n1164), .ZN(n1203) );
  XOR2_X1 U400 ( .A(n1163), .B(n1203), .Z(n1054) );
  XNOR2_X1 U401 ( .A(db1cb1bb1ab1[3]), .B(n1052), .ZN(n1053) );
  XNOR2_X1 U402 ( .A(n1054), .B(n1053), .ZN(N65) );
  XOR2_X1 U403 ( .A(qa0pa0na0ma0[3]), .B(qa0pa0na0ma0[2]), .Z(n1118) );
  XOR2_X1 U404 ( .A(da0ca0ba0aa0[3]), .B(n1118), .Z(n1056) );
  NAND2_X1 U405 ( .A1(ha1ga1fa1ea1[2]), .A2(qa0pa0na0ma0[2]), .ZN(n1055) );
  XNOR2_X1 U406 ( .A(n1056), .B(n1055), .ZN(n1058) );
  XNOR2_X1 U407 ( .A(n1058), .B(n1057), .ZN(n1060) );
  XNOR2_X1 U408 ( .A(n1060), .B(n1059), .ZN(N17) );
  XNOR2_X1 U409 ( .A(n1118), .B(n1061), .ZN(n1066) );
  XOR2_X1 U410 ( .A(n1062), .B(ha0ga0fa0ea0[3]), .Z(n1064) );
  NAND2_X1 U411 ( .A1(da1ca1ba1aa1[1]), .A2(n1371), .ZN(n1063) );
  XNOR2_X1 U412 ( .A(n1064), .B(n1063), .ZN(n1065) );
  XNOR2_X1 U413 ( .A(n1066), .B(n1065), .ZN(N33) );
  XOR2_X1 U414 ( .A(ha0ga0fa0ea0[3]), .B(da0ca0ba0aa0[3]), .Z(n1117) );
  XNOR2_X1 U415 ( .A(n1117), .B(n1252), .ZN(n1351) );
  XNOR2_X1 U416 ( .A(n1351), .B(n1067), .ZN(n1069) );
  XNOR2_X1 U417 ( .A(n1069), .B(n1068), .ZN(n1070) );
  XNOR2_X1 U418 ( .A(da0ca0ba0aa0[0]), .B(n1070), .ZN(N34) );
  NAND2_X1 U419 ( .A1(qa0pa0na0ma0[0]), .A2(da0ca0ba0aa0[2]), .ZN(n1073) );
  NAND2_X1 U420 ( .A1(da0ca0ba0aa0[0]), .A2(n1071), .ZN(n1072) );
  XOR2_X1 U421 ( .A(n1073), .B(n1072), .Z(n1108) );
  XOR2_X1 U422 ( .A(n1108), .B(n1074), .Z(n1081) );
  NAND2_X1 U423 ( .A1(da0ca0ba0aa0[3]), .A2(qa0pa0na0ma0[1]), .ZN(n1092) );
  NAND2_X1 U424 ( .A1(da0ca0ba0aa0[1]), .A2(qa0pa0na0ma0[3]), .ZN(n1091) );
  XOR2_X1 U425 ( .A(n1092), .B(n1091), .Z(n1098) );
  NAND2_X1 U426 ( .A1(qa0pa0na0ma0[2]), .A2(da0ca0ba0aa0[2]), .ZN(n1075) );
  XNOR2_X1 U427 ( .A(n1098), .B(n1075), .ZN(n1110) );
  NAND2_X1 U428 ( .A1(qa0pa0na0ma0[3]), .A2(da0ca0ba0aa0[3]), .ZN(n1097) );
  XNOR2_X1 U429 ( .A(n1110), .B(n1097), .ZN(n1079) );
  NAND2_X1 U430 ( .A1(da0ca0ba0aa0[1]), .A2(qa0pa0na0ma0[0]), .ZN(n1077) );
  NAND2_X1 U431 ( .A1(da0ca0ba0aa0[0]), .A2(qa0pa0na0ma0[1]), .ZN(n1076) );
  XNOR2_X1 U432 ( .A(n1077), .B(n1076), .ZN(n1078) );
  XNOR2_X1 U433 ( .A(n1079), .B(n1078), .ZN(n1115) );
  XNOR2_X1 U434 ( .A(n1115), .B(ha0ga0fa0ea0[0]), .ZN(n1080) );
  XNOR2_X1 U435 ( .A(n1081), .B(n1080), .ZN(N20) );
  NAND2_X1 U436 ( .A1(qa0pa0na0ma0[2]), .A2(da0ca0ba0aa0[3]), .ZN(n1083) );
  NAND2_X1 U437 ( .A1(da0ca0ba0aa0[2]), .A2(qa0pa0na0ma0[3]), .ZN(n1082) );
  XNOR2_X1 U438 ( .A(n1083), .B(n1082), .ZN(n1107) );
  NAND2_X1 U439 ( .A1(da0ca0ba0aa0[3]), .A2(qa0pa0na0ma0[0]), .ZN(n1085) );
  NAND2_X1 U440 ( .A1(da0ca0ba0aa0[1]), .A2(qa0pa0na0ma0[2]), .ZN(n1084) );
  XOR2_X1 U441 ( .A(n1085), .B(n1084), .Z(n1090) );
  NAND2_X1 U442 ( .A1(n1086), .A2(qa0pa0na0ma0[1]), .ZN(n1088) );
  NAND2_X1 U443 ( .A1(da0ca0ba0aa0[0]), .A2(qa0pa0na0ma0[3]), .ZN(n1087) );
  XNOR2_X1 U444 ( .A(n1088), .B(n1087), .ZN(n1089) );
  XNOR2_X1 U445 ( .A(n1090), .B(n1089), .ZN(n1116) );
  INV_X1 U446 ( .A(n1097), .ZN(n1096) );
  INV_X1 U447 ( .A(n1091), .ZN(n1094) );
  INV_X1 U448 ( .A(n1092), .ZN(n1093) );
  NOR2_X1 U449 ( .A1(n1094), .A2(n1093), .ZN(n1095) );
  NOR2_X1 U450 ( .A1(n1096), .A2(n1095), .ZN(n1100) );
  NOR2_X1 U451 ( .A1(n1098), .A2(n1097), .ZN(n1099) );
  NOR2_X1 U452 ( .A1(n1100), .A2(n1099), .ZN(n1102) );
  XOR2_X1 U453 ( .A(n1102), .B(n1101), .Z(n1104) );
  NAND2_X1 U454 ( .A1(da0ca0ba0aa0[0]), .A2(qa0pa0na0ma0[0]), .ZN(n1103) );
  XNOR2_X1 U455 ( .A(n1104), .B(n1103), .ZN(n1105) );
  XOR2_X1 U456 ( .A(n1116), .B(n1105), .Z(n1106) );
  XNOR2_X1 U457 ( .A(n1107), .B(n1106), .ZN(N24) );
  XNOR2_X1 U458 ( .A(n1108), .B(n1107), .ZN(n1114) );
  XNOR2_X1 U459 ( .A(n1110), .B(n1109), .ZN(n1112) );
  NAND2_X1 U460 ( .A1(qa0pa0na0ma0[1]), .A2(da0ca0ba0aa0[1]), .ZN(n1111) );
  XNOR2_X1 U461 ( .A(n1112), .B(n1111), .ZN(n1113) );
  XNOR2_X1 U462 ( .A(n1114), .B(n1113), .ZN(N28) );
  XOR2_X1 U463 ( .A(n1116), .B(n1115), .Z(n1120) );
  XOR2_X1 U464 ( .A(n1118), .B(n1117), .Z(n1396) );
  XNOR2_X1 U465 ( .A(da0ca0ba0aa0[0]), .B(n1396), .ZN(n1119) );
  XNOR2_X1 U466 ( .A(n1120), .B(n1119), .ZN(N32) );
  XNOR2_X1 U467 ( .A(qb1pb1nb1mb1[1]), .B(qb1pb1nb1mb1[0]), .ZN(n1264) );
  XNOR2_X1 U468 ( .A(hb0gb0fb0eb0[0]), .B(n1264), .ZN(n1133) );
  XNOR2_X1 U469 ( .A(n1133), .B(n1121), .ZN(n1130) );
  NAND2_X1 U470 ( .A1(n1122), .A2(n1125), .ZN(n1124) );
  NAND2_X1 U471 ( .A1(n1124), .A2(n1123), .ZN(n1128) );
  NAND2_X1 U472 ( .A1(n1126), .A2(n1125), .ZN(n1127) );
  NAND2_X1 U473 ( .A1(n1128), .A2(n1127), .ZN(n1129) );
  XNOR2_X1 U474 ( .A(n1130), .B(n1129), .ZN(n1131) );
  XNOR2_X1 U475 ( .A(n1132), .B(n1131), .ZN(N59) );
  XOR2_X1 U476 ( .A(n1134), .B(n1133), .Z(n1141) );
  NAND2_X1 U477 ( .A1(qb1pb1nb1mb1[1]), .A2(db0cb0bb0ab0[0]), .ZN(n1136) );
  NAND2_X1 U478 ( .A1(qb1pb1nb1mb1[0]), .A2(db0cb0bb0ab0[1]), .ZN(n1135) );
  XOR2_X1 U479 ( .A(n1136), .B(n1135), .Z(n1138) );
  XNOR2_X1 U480 ( .A(n1138), .B(n1137), .ZN(n1479) );
  XNOR2_X1 U481 ( .A(n1139), .B(n1479), .ZN(n1140) );
  XNOR2_X1 U482 ( .A(n1141), .B(n1140), .ZN(N58) );
  XNOR2_X1 U483 ( .A(qb0pb0nb0mb0[1]), .B(qb0pb0nb0mb0[0]), .ZN(n1162) );
  XNOR2_X1 U484 ( .A(db0cb0bb0ab0[0]), .B(n1162), .ZN(n1154) );
  XNOR2_X1 U485 ( .A(n1154), .B(n1142), .ZN(n1149) );
  NAND2_X1 U486 ( .A1(qb0pb0nb0mb0[3]), .A2(hb1gb1fb1eb1[3]), .ZN(n1147) );
  NAND2_X1 U487 ( .A1(n1164), .A2(hb1gb1fb1eb1[1]), .ZN(n1144) );
  NAND2_X1 U488 ( .A1(hb1gb1fb1eb1[0]), .A2(qb0pb0nb0mb0[1]), .ZN(n1143) );
  XNOR2_X1 U489 ( .A(n1144), .B(n1143), .ZN(n1145) );
  XNOR2_X1 U490 ( .A(n1146), .B(n1145), .ZN(n1445) );
  XNOR2_X1 U491 ( .A(n1147), .B(n1445), .ZN(n1148) );
  XNOR2_X1 U492 ( .A(n1149), .B(n1148), .ZN(N39) );
  NAND2_X1 U493 ( .A1(qb0pb0nb0mb0[1]), .A2(hb0gb0fb0eb0[0]), .ZN(n1153) );
  NAND2_X1 U494 ( .A1(hb0gb0fb0eb0[1]), .A2(qb0pb0nb0mb0[0]), .ZN(n1151) );
  XNOR2_X1 U495 ( .A(n1151), .B(n1150), .ZN(n1152) );
  XNOR2_X1 U496 ( .A(n1153), .B(n1152), .ZN(n1472) );
  XNOR2_X1 U497 ( .A(n1154), .B(n1472), .ZN(n1161) );
  NAND2_X1 U498 ( .A1(qb0pb0nb0mb0[0]), .A2(hb0gb0fb0eb0[2]), .ZN(n1160) );
  NAND2_X1 U499 ( .A1(n1155), .A2(hb0gb0fb0eb0[0]), .ZN(n1158) );
  NAND2_X1 U500 ( .A1(hb0gb0fb0eb0[2]), .A2(qb0pb0nb0mb0[2]), .ZN(n1157) );
  XNOR2_X1 U501 ( .A(n1157), .B(n1156), .ZN(n1476) );
  XNOR2_X1 U502 ( .A(n1158), .B(n1476), .ZN(n1159) );
  XNOR2_X1 U503 ( .A(n1160), .B(n1159), .ZN(n1491) );
  XNOR2_X1 U504 ( .A(n1161), .B(n1491), .ZN(N38) );
  XNOR2_X1 U505 ( .A(hb0gb0fb0eb0[0]), .B(n1162), .ZN(n1176) );
  XNOR2_X1 U506 ( .A(n1176), .B(n1163), .ZN(n1169) );
  NAND2_X1 U507 ( .A1(qb0pb0nb0mb0[3]), .A2(db1cb1bb1ab1[3]), .ZN(n1167) );
  NAND2_X1 U508 ( .A1(db1cb1bb1ab1[0]), .A2(qb0pb0nb0mb0[1]), .ZN(n1166) );
  NAND2_X1 U509 ( .A1(db1cb1bb1ab1[1]), .A2(n1164), .ZN(n1165) );
  XOR2_X1 U510 ( .A(n1166), .B(n1165), .Z(n1450) );
  XNOR2_X1 U511 ( .A(n1167), .B(n1450), .ZN(n1168) );
  XNOR2_X1 U512 ( .A(n1169), .B(n1168), .ZN(n1170) );
  XOR2_X1 U513 ( .A(n1171), .B(n1170), .Z(N57) );
  NAND2_X1 U514 ( .A1(db0cb0bb0ab0[2]), .A2(qb0pb0nb0mb0[0]), .ZN(n1175) );
  NAND2_X1 U515 ( .A1(qb0pb0nb0mb0[2]), .A2(db0cb0bb0ab0[0]), .ZN(n1173) );
  NAND2_X1 U516 ( .A1(db0cb0bb0ab0[2]), .A2(qb0pb0nb0mb0[2]), .ZN(n1172) );
  XOR2_X1 U517 ( .A(n1173), .B(n1172), .Z(n1174) );
  XNOR2_X1 U518 ( .A(n1175), .B(n1174), .ZN(n1204) );
  NAND2_X1 U519 ( .A1(qb0pb0nb0mb0[0]), .A2(db0cb0bb0ab0[0]), .ZN(n1190) );
  XNOR2_X1 U520 ( .A(n1176), .B(n1190), .ZN(n1179) );
  NAND2_X1 U521 ( .A1(db0cb0bb0ab0[0]), .A2(qb0pb0nb0mb0[1]), .ZN(n1178) );
  NAND2_X1 U522 ( .A1(qb0pb0nb0mb0[0]), .A2(db0cb0bb0ab0[1]), .ZN(n1177) );
  XNOR2_X1 U523 ( .A(n1178), .B(n1177), .ZN(n1490) );
  XNOR2_X1 U524 ( .A(n1179), .B(n1490), .ZN(n1180) );
  XNOR2_X1 U525 ( .A(n1204), .B(n1180), .ZN(n1186) );
  NOR2_X1 U526 ( .A1(n1456), .A2(n1181), .ZN(n1184) );
  NAND2_X1 U527 ( .A1(qb0pb0nb0mb0[3]), .A2(db0cb0bb0ab0[1]), .ZN(n1183) );
  NAND2_X1 U528 ( .A1(qb0pb0nb0mb0[1]), .A2(db0cb0bb0ab0[3]), .ZN(n1182) );
  NAND2_X1 U529 ( .A1(n1183), .A2(n1182), .ZN(n1205) );
  XNOR2_X1 U530 ( .A(n1184), .B(n1205), .ZN(n1185) );
  NOR2_X1 U531 ( .A1(n1269), .A2(n1192), .ZN(n1206) );
  NAND2_X1 U532 ( .A1(n1206), .A2(n1184), .ZN(n1207) );
  NAND2_X1 U533 ( .A1(n1185), .A2(n1207), .ZN(n1197) );
  XNOR2_X1 U534 ( .A(n1186), .B(n1197), .ZN(N56) );
  NAND2_X1 U535 ( .A1(qb0pb0nb0mb0[2]), .A2(db0cb0bb0ab0[3]), .ZN(n1188) );
  NAND2_X1 U536 ( .A1(db0cb0bb0ab0[2]), .A2(qb0pb0nb0mb0[3]), .ZN(n1187) );
  XNOR2_X1 U537 ( .A(n1188), .B(n1187), .ZN(n1189) );
  XNOR2_X1 U538 ( .A(n1190), .B(n1189), .ZN(n1212) );
  XNOR2_X1 U539 ( .A(n1212), .B(n1191), .ZN(n1202) );
  NOR2_X1 U540 ( .A1(n1193), .A2(n1192), .ZN(n1201) );
  NAND2_X1 U541 ( .A1(qb0pb0nb0mb0[2]), .A2(db0cb0bb0ab0[1]), .ZN(n1195) );
  NAND2_X1 U542 ( .A1(db0cb0bb0ab0[0]), .A2(qb0pb0nb0mb0[3]), .ZN(n1194) );
  XOR2_X1 U543 ( .A(n1195), .B(n1194), .Z(n1196) );
  XNOR2_X1 U544 ( .A(n1197), .B(n1196), .ZN(n1199) );
  NAND2_X1 U545 ( .A1(db0cb0bb0ab0[3]), .A2(qb0pb0nb0mb0[0]), .ZN(n1198) );
  XNOR2_X1 U546 ( .A(n1199), .B(n1198), .ZN(n1200) );
  XNOR2_X1 U547 ( .A(n1201), .B(n1200), .ZN(n1488) );
  XNOR2_X1 U548 ( .A(n1202), .B(n1488), .ZN(N60) );
  XNOR2_X1 U549 ( .A(n1204), .B(n1203), .ZN(n1210) );
  XNOR2_X1 U550 ( .A(n1206), .B(n1205), .ZN(n1208) );
  NAND2_X1 U551 ( .A1(n1208), .A2(n1207), .ZN(n1209) );
  XNOR2_X1 U552 ( .A(n1210), .B(n1209), .ZN(n1211) );
  XNOR2_X1 U553 ( .A(n1212), .B(n1211), .ZN(N64) );
  XOR2_X1 U554 ( .A(da0ca0ba0aa0[0]), .B(n1213), .Z(n1307) );
  NAND2_X1 U555 ( .A1(qa1pa1na1ma1[0]), .A2(ha1ga1fa1ea1[0]), .ZN(n1223) );
  NAND2_X1 U556 ( .A1(ha1ga1fa1ea1[2]), .A2(qa1pa1na1ma1[0]), .ZN(n1215) );
  NAND2_X1 U557 ( .A1(ha1ga1fa1ea1[0]), .A2(qa1pa1na1ma1[2]), .ZN(n1214) );
  NAND2_X1 U558 ( .A1(n1215), .A2(n1214), .ZN(n1218) );
  NAND2_X1 U559 ( .A1(n1223), .A2(n1218), .ZN(n1217) );
  NAND2_X1 U560 ( .A1(qa1pa1na1ma1[2]), .A2(ha1ga1fa1ea1[2]), .ZN(n1251) );
  INV_X1 U561 ( .A(n1251), .ZN(n1216) );
  NAND2_X1 U562 ( .A1(n1217), .A2(n1216), .ZN(n1220) );
  NAND2_X1 U563 ( .A1(n1251), .A2(n1218), .ZN(n1219) );
  NAND2_X1 U564 ( .A1(n1220), .A2(n1219), .ZN(n1246) );
  XNOR2_X1 U565 ( .A(n1307), .B(n1246), .ZN(n1228) );
  NAND2_X1 U566 ( .A1(qa1pa1na1ma1[1]), .A2(ha1ga1fa1ea1[3]), .ZN(n1222) );
  NAND2_X1 U567 ( .A1(ha1ga1fa1ea1[1]), .A2(qa1pa1na1ma1[3]), .ZN(n1221) );
  XNOR2_X1 U568 ( .A(n1222), .B(n1221), .ZN(n1255) );
  XNOR2_X1 U569 ( .A(n1223), .B(n1255), .ZN(n1239) );
  NAND2_X1 U570 ( .A1(ha1ga1fa1ea1[0]), .A2(qa1pa1na1ma1[1]), .ZN(n1225) );
  NAND2_X1 U571 ( .A1(ha1ga1fa1ea1[1]), .A2(n1344), .ZN(n1224) );
  XOR2_X1 U572 ( .A(n1225), .B(n1224), .Z(n1226) );
  NAND2_X1 U573 ( .A1(qa1pa1na1ma1[3]), .A2(ha1ga1fa1ea1[3]), .ZN(n1242) );
  XNOR2_X1 U574 ( .A(n1226), .B(n1242), .ZN(n1259) );
  XNOR2_X1 U575 ( .A(n1239), .B(n1259), .ZN(n1227) );
  XNOR2_X1 U576 ( .A(n1228), .B(n1227), .ZN(N5) );
  XOR2_X1 U577 ( .A(qa1pa1na1ma1[1]), .B(da0ca0ba0aa0[1]), .Z(n1330) );
  NAND2_X1 U578 ( .A1(ha1ga1fa1ea1[1]), .A2(qa1pa1na1ma1[2]), .ZN(n1236) );
  NAND2_X1 U579 ( .A1(n1229), .A2(ha1ga1fa1ea1[2]), .ZN(n1230) );
  NAND2_X1 U580 ( .A1(qa1pa1na1ma1[1]), .A2(ha1ga1fa1ea1[1]), .ZN(n1247) );
  NAND2_X1 U581 ( .A1(n1230), .A2(n1247), .ZN(n1234) );
  NAND2_X1 U582 ( .A1(ha1ga1fa1ea1[3]), .A2(qa1pa1na1ma1[0]), .ZN(n1232) );
  NAND2_X1 U583 ( .A1(ha1ga1fa1ea1[0]), .A2(qa1pa1na1ma1[3]), .ZN(n1231) );
  XOR2_X1 U584 ( .A(n1232), .B(n1231), .Z(n1233) );
  XNOR2_X1 U585 ( .A(n1234), .B(n1233), .ZN(n1235) );
  XNOR2_X1 U586 ( .A(n1236), .B(n1235), .ZN(n1253) );
  NAND2_X1 U587 ( .A1(ha1ga1fa1ea1[2]), .A2(qa1pa1na1ma1[3]), .ZN(n1238) );
  NAND2_X1 U588 ( .A1(ha1ga1fa1ea1[3]), .A2(qa1pa1na1ma1[2]), .ZN(n1237) );
  XOR2_X1 U589 ( .A(n1238), .B(n1237), .Z(n1240) );
  XNOR2_X1 U590 ( .A(n1240), .B(n1239), .ZN(n1245) );
  XOR2_X1 U591 ( .A(n1253), .B(n1245), .Z(n1241) );
  XNOR2_X1 U592 ( .A(n1242), .B(n1241), .ZN(n1243) );
  XNOR2_X1 U593 ( .A(n1330), .B(n1243), .ZN(N9) );
  XNOR2_X1 U594 ( .A(n1245), .B(n1244), .ZN(n1250) );
  XNOR2_X1 U595 ( .A(n1246), .B(n1344), .ZN(n1248) );
  XNOR2_X1 U596 ( .A(n1248), .B(n1247), .ZN(n1249) );
  XNOR2_X1 U597 ( .A(n1250), .B(n1249), .ZN(N13) );
  XNOR2_X1 U598 ( .A(da0ca0ba0aa0[3]), .B(n1251), .ZN(n1257) );
  XOR2_X1 U599 ( .A(n1253), .B(n1252), .Z(n1254) );
  XNOR2_X1 U600 ( .A(n1255), .B(n1254), .ZN(n1256) );
  XNOR2_X1 U601 ( .A(n1257), .B(n1256), .ZN(n1258) );
  XNOR2_X1 U602 ( .A(n1259), .B(n1258), .ZN(N19) );
  NAND2_X1 U603 ( .A1(qb1pb1nb1mb1[3]), .A2(hb1gb1fb1eb1[1]), .ZN(n1270) );
  NAND2_X1 U604 ( .A1(qb1pb1nb1mb1[1]), .A2(hb1gb1fb1eb1[3]), .ZN(n1260) );
  XOR2_X1 U605 ( .A(n1270), .B(n1260), .Z(n1272) );
  NAND2_X1 U606 ( .A1(qb1pb1nb1mb1[3]), .A2(hb1gb1fb1eb1[3]), .ZN(n1286) );
  NAND2_X1 U607 ( .A1(n1439), .A2(hb1gb1fb1eb1[1]), .ZN(n1262) );
  NAND2_X1 U608 ( .A1(hb1gb1fb1eb1[0]), .A2(qb1pb1nb1mb1[1]), .ZN(n1261) );
  XNOR2_X1 U609 ( .A(n1262), .B(n1261), .ZN(n1263) );
  XNOR2_X1 U610 ( .A(n1286), .B(n1263), .ZN(n1302) );
  XOR2_X1 U611 ( .A(db0cb0bb0ab0[0]), .B(n1264), .Z(n1413) );
  XNOR2_X1 U612 ( .A(n1302), .B(n1413), .ZN(n1267) );
  XNOR2_X1 U613 ( .A(n1439), .B(qb1pb1nb1mb1[2]), .ZN(n1266) );
  XNOR2_X1 U614 ( .A(n1297), .B(hb1gb1fb1eb1[0]), .ZN(n1265) );
  NAND2_X1 U615 ( .A1(n1266), .A2(n1265), .ZN(n1295) );
  XNOR2_X1 U616 ( .A(n1267), .B(n1295), .ZN(n1268) );
  XNOR2_X1 U617 ( .A(n1272), .B(n1268), .ZN(N41) );
  XNOR2_X1 U618 ( .A(qb1pb1nb1mb1[1]), .B(n1269), .ZN(n1430) );
  NAND2_X1 U619 ( .A1(qb1pb1nb1mb1[0]), .A2(hb1gb1fb1eb1[3]), .ZN(n1282) );
  NOR2_X1 U620 ( .A1(qb1pb1nb1mb1[1]), .A2(n1297), .ZN(n1273) );
  NAND2_X1 U621 ( .A1(n1270), .A2(n1273), .ZN(n1276) );
  NAND2_X1 U622 ( .A1(qb1pb1nb1mb1[1]), .A2(hb1gb1fb1eb1[1]), .ZN(n1271) );
  XNOR2_X1 U623 ( .A(n1272), .B(n1271), .ZN(n1292) );
  INV_X1 U624 ( .A(n1273), .ZN(n1274) );
  NAND2_X1 U625 ( .A1(n1292), .A2(n1274), .ZN(n1275) );
  NAND2_X1 U626 ( .A1(n1276), .A2(n1275), .ZN(n1280) );
  NAND2_X1 U627 ( .A1(qb1pb1nb1mb1[2]), .A2(hb1gb1fb1eb1[1]), .ZN(n1278) );
  NAND2_X1 U628 ( .A1(hb1gb1fb1eb1[0]), .A2(qb1pb1nb1mb1[3]), .ZN(n1277) );
  XOR2_X1 U629 ( .A(n1278), .B(n1277), .Z(n1279) );
  XNOR2_X1 U630 ( .A(n1280), .B(n1279), .ZN(n1281) );
  XNOR2_X1 U631 ( .A(n1282), .B(n1281), .ZN(n1301) );
  NAND2_X1 U632 ( .A1(qb1pb1nb1mb1[2]), .A2(hb1gb1fb1eb1[3]), .ZN(n1284) );
  NAND2_X1 U633 ( .A1(hb1gb1fb1eb1[2]), .A2(qb1pb1nb1mb1[3]), .ZN(n1283) );
  XNOR2_X1 U634 ( .A(n1284), .B(n1283), .ZN(n1291) );
  XNOR2_X1 U635 ( .A(n1301), .B(n1291), .ZN(n1285) );
  XNOR2_X1 U636 ( .A(n1286), .B(n1285), .ZN(n1288) );
  NAND2_X1 U637 ( .A1(hb1gb1fb1eb1[0]), .A2(qb1pb1nb1mb1[0]), .ZN(n1287) );
  XNOR2_X1 U638 ( .A(n1288), .B(n1287), .ZN(n1289) );
  XNOR2_X1 U639 ( .A(n1430), .B(n1289), .ZN(N45) );
  XNOR2_X1 U640 ( .A(n1291), .B(n1290), .ZN(n1294) );
  XNOR2_X1 U641 ( .A(n1292), .B(qb1pb1nb1mb1[0]), .ZN(n1293) );
  XNOR2_X1 U642 ( .A(n1294), .B(n1293), .ZN(n1296) );
  XNOR2_X1 U643 ( .A(n1296), .B(n1295), .ZN(N49) );
  XOR2_X1 U644 ( .A(qb1pb1nb1mb1[3]), .B(db0cb0bb0ab0[3]), .Z(n1299) );
  NAND2_X1 U645 ( .A1(qb1pb1nb1mb1[2]), .A2(n1297), .ZN(n1298) );
  XNOR2_X1 U646 ( .A(n1299), .B(n1298), .ZN(n1300) );
  XNOR2_X1 U647 ( .A(n1301), .B(n1300), .ZN(n1303) );
  XNOR2_X1 U648 ( .A(n1303), .B(n1302), .ZN(N55) );
  NAND2_X1 U649 ( .A1(ha0ga0fa0ea0[1]), .A2(qa1pa1na1ma1[0]), .ZN(n1305) );
  NAND2_X1 U650 ( .A1(ha0ga0fa0ea0[0]), .A2(qa1pa1na1ma1[1]), .ZN(n1304) );
  XOR2_X1 U651 ( .A(n1305), .B(n1304), .Z(n1306) );
  NAND2_X1 U652 ( .A1(qa1pa1na1ma1[2]), .A2(ha0ga0fa0ea0[2]), .ZN(n1336) );
  XNOR2_X1 U653 ( .A(n1306), .B(n1336), .ZN(n1349) );
  XNOR2_X1 U654 ( .A(n1349), .B(n1307), .ZN(n1319) );
  NAND2_X1 U655 ( .A1(ha0ga0fa0ea0[1]), .A2(qa1pa1na1ma1[3]), .ZN(n1309) );
  NAND2_X1 U656 ( .A1(qa1pa1na1ma1[1]), .A2(ha0ga0fa0ea0[3]), .ZN(n1308) );
  XOR2_X1 U657 ( .A(n1309), .B(n1308), .Z(n1323) );
  NAND2_X1 U658 ( .A1(qa1pa1na1ma1[0]), .A2(ha0ga0fa0ea0[2]), .ZN(n1311) );
  NAND2_X1 U659 ( .A1(qa1pa1na1ma1[2]), .A2(ha0ga0fa0ea0[0]), .ZN(n1310) );
  NAND2_X1 U660 ( .A1(n1311), .A2(n1310), .ZN(n1337) );
  NAND2_X1 U661 ( .A1(n1336), .A2(n1337), .ZN(n1312) );
  NAND2_X1 U662 ( .A1(qa1pa1na1ma1[0]), .A2(ha0ga0fa0ea0[0]), .ZN(n1334) );
  INV_X1 U663 ( .A(n1334), .ZN(n1338) );
  NAND2_X1 U664 ( .A1(n1312), .A2(n1338), .ZN(n1314) );
  NAND2_X1 U665 ( .A1(n1334), .A2(n1337), .ZN(n1313) );
  NAND2_X1 U666 ( .A1(n1314), .A2(n1313), .ZN(n1315) );
  XOR2_X1 U667 ( .A(n1323), .B(n1315), .Z(n1317) );
  NAND2_X1 U668 ( .A1(qa1pa1na1ma1[3]), .A2(ha0ga0fa0ea0[3]), .ZN(n1316) );
  XNOR2_X1 U669 ( .A(n1317), .B(n1316), .ZN(n1318) );
  XNOR2_X1 U670 ( .A(n1319), .B(n1318), .ZN(N4) );
  NAND2_X1 U671 ( .A1(ha0ga0fa0ea0[2]), .A2(qa1pa1na1ma1[1]), .ZN(n1321) );
  NAND2_X1 U672 ( .A1(ha0ga0fa0ea0[1]), .A2(qa1pa1na1ma1[2]), .ZN(n1320) );
  XOR2_X1 U673 ( .A(n1321), .B(n1320), .Z(n1324) );
  NAND2_X1 U674 ( .A1(qa1pa1na1ma1[1]), .A2(ha0ga0fa0ea0[1]), .ZN(n1322) );
  XNOR2_X1 U675 ( .A(n1323), .B(n1322), .ZN(n1343) );
  XOR2_X1 U676 ( .A(n1324), .B(n1343), .Z(n1326) );
  NAND2_X1 U677 ( .A1(qa1pa1na1ma1[0]), .A2(ha0ga0fa0ea0[3]), .ZN(n1325) );
  XNOR2_X1 U678 ( .A(n1326), .B(n1325), .ZN(n1329) );
  XOR2_X1 U679 ( .A(ha0ga0fa0ea0[3]), .B(ha0ga0fa0ea0[0]), .Z(n1327) );
  NAND2_X1 U680 ( .A1(n1327), .A2(qa1pa1na1ma1[3]), .ZN(n1328) );
  XOR2_X1 U681 ( .A(n1329), .B(n1328), .Z(n1350) );
  XNOR2_X1 U682 ( .A(n1330), .B(n1350), .ZN(n1335) );
  NAND2_X1 U683 ( .A1(ha0ga0fa0ea0[2]), .A2(qa1pa1na1ma1[3]), .ZN(n1332) );
  NAND2_X1 U684 ( .A1(qa1pa1na1ma1[2]), .A2(ha0ga0fa0ea0[3]), .ZN(n1331) );
  XNOR2_X1 U685 ( .A(n1332), .B(n1331), .ZN(n1333) );
  XNOR2_X1 U686 ( .A(n1334), .B(n1333), .ZN(n1345) );
  XNOR2_X1 U687 ( .A(n1335), .B(n1345), .ZN(N8) );
  INV_X1 U688 ( .A(n1336), .ZN(n1339) );
  XNOR2_X1 U689 ( .A(n1339), .B(n1337), .ZN(n1341) );
  NAND2_X1 U690 ( .A1(n1339), .A2(n1338), .ZN(n1340) );
  NAND2_X1 U691 ( .A1(n1341), .A2(n1340), .ZN(n1342) );
  XNOR2_X1 U692 ( .A(n1343), .B(n1342), .ZN(n1348) );
  XNOR2_X1 U693 ( .A(da0ca0ba0aa0[2]), .B(n1344), .ZN(n1346) );
  XNOR2_X1 U694 ( .A(n1346), .B(n1345), .ZN(n1347) );
  XNOR2_X1 U695 ( .A(n1348), .B(n1347), .ZN(N12) );
  XNOR2_X1 U696 ( .A(n1350), .B(n1349), .ZN(n1353) );
  XNOR2_X1 U697 ( .A(n1351), .B(ha0ga0fa0ea0[0]), .ZN(n1352) );
  XNOR2_X1 U698 ( .A(n1353), .B(n1352), .ZN(N18) );
  NAND2_X1 U699 ( .A1(qa0pa0na0ma0[0]), .A2(ha0ga0fa0ea0[2]), .ZN(n1355) );
  NAND2_X1 U700 ( .A1(qa0pa0na0ma0[2]), .A2(ha0ga0fa0ea0[0]), .ZN(n1354) );
  XOR2_X1 U701 ( .A(n1355), .B(n1354), .Z(n1384) );
  XNOR2_X1 U702 ( .A(n1384), .B(n1356), .ZN(n1365) );
  NAND2_X1 U703 ( .A1(qa0pa0na0ma0[0]), .A2(ha0ga0fa0ea0[0]), .ZN(n1368) );
  NAND2_X1 U704 ( .A1(ha0ga0fa0ea0[1]), .A2(qa0pa0na0ma0[0]), .ZN(n1358) );
  NAND2_X1 U705 ( .A1(ha0ga0fa0ea0[0]), .A2(qa0pa0na0ma0[1]), .ZN(n1357) );
  XOR2_X1 U706 ( .A(n1358), .B(n1357), .Z(n1359) );
  NAND2_X1 U707 ( .A1(qa0pa0na0ma0[3]), .A2(ha0ga0fa0ea0[3]), .ZN(n1379) );
  XNOR2_X1 U708 ( .A(n1359), .B(n1379), .ZN(n1363) );
  NAND2_X1 U709 ( .A1(ha0ga0fa0ea0[2]), .A2(qa0pa0na0ma0[2]), .ZN(n1362) );
  NAND2_X1 U710 ( .A1(qa0pa0na0ma0[1]), .A2(ha0ga0fa0ea0[3]), .ZN(n1361) );
  NAND2_X1 U711 ( .A1(ha0ga0fa0ea0[1]), .A2(qa0pa0na0ma0[3]), .ZN(n1360) );
  XNOR2_X1 U712 ( .A(n1361), .B(n1360), .ZN(n1382) );
  XNOR2_X1 U713 ( .A(n1362), .B(n1382), .ZN(n1387) );
  XNOR2_X1 U714 ( .A(n1363), .B(n1387), .ZN(n1392) );
  XNOR2_X1 U715 ( .A(n1368), .B(n1392), .ZN(n1364) );
  XNOR2_X1 U716 ( .A(n1365), .B(n1364), .ZN(N2) );
  NAND2_X1 U717 ( .A1(ha0ga0fa0ea0[3]), .A2(qa0pa0na0ma0[2]), .ZN(n1367) );
  NAND2_X1 U718 ( .A1(ha0ga0fa0ea0[2]), .A2(qa0pa0na0ma0[3]), .ZN(n1366) );
  XOR2_X1 U719 ( .A(n1367), .B(n1366), .Z(n1369) );
  XNOR2_X1 U720 ( .A(n1369), .B(n1368), .ZN(n1385) );
  XNOR2_X1 U721 ( .A(n1385), .B(n1370), .ZN(n1381) );
  NAND2_X1 U722 ( .A1(ha0ga0fa0ea0[3]), .A2(qa0pa0na0ma0[0]), .ZN(n1378) );
  XNOR2_X1 U723 ( .A(ha0ga0fa0ea0[2]), .B(ha0ga0fa0ea0[1]), .ZN(n1372) );
  NOR2_X1 U724 ( .A1(n1372), .A2(n1371), .ZN(n1376) );
  NAND2_X1 U725 ( .A1(ha0ga0fa0ea0[1]), .A2(qa0pa0na0ma0[2]), .ZN(n1374) );
  NAND2_X1 U726 ( .A1(ha0ga0fa0ea0[0]), .A2(qa0pa0na0ma0[3]), .ZN(n1373) );
  XOR2_X1 U727 ( .A(n1374), .B(n1373), .Z(n1375) );
  XNOR2_X1 U728 ( .A(n1376), .B(n1375), .ZN(n1377) );
  XNOR2_X1 U729 ( .A(n1378), .B(n1377), .ZN(n1393) );
  XNOR2_X1 U730 ( .A(n1379), .B(n1393), .ZN(n1380) );
  XNOR2_X1 U731 ( .A(n1381), .B(n1380), .ZN(n1383) );
  XOR2_X1 U732 ( .A(n1383), .B(n1382), .Z(N6) );
  NAND2_X1 U733 ( .A1(qa0pa0na0ma0[1]), .A2(ha0ga0fa0ea0[1]), .ZN(n1389) );
  XOR2_X1 U734 ( .A(n1385), .B(n1384), .Z(n1386) );
  XNOR2_X1 U735 ( .A(n1387), .B(n1386), .ZN(n1388) );
  XNOR2_X1 U736 ( .A(n1389), .B(n1388), .ZN(n1391) );
  XNOR2_X1 U737 ( .A(qa0pa0na0ma0[0]), .B(da0ca0ba0aa0[2]), .ZN(n1390) );
  XNOR2_X1 U738 ( .A(n1391), .B(n1390), .ZN(N10) );
  XNOR2_X1 U739 ( .A(ha0ga0fa0ea0[0]), .B(n1392), .ZN(n1394) );
  XNOR2_X1 U740 ( .A(n1394), .B(n1393), .ZN(n1395) );
  XNOR2_X1 U741 ( .A(n1396), .B(n1395), .ZN(N16) );
  NAND2_X1 U742 ( .A1(hb0gb0fb0eb0[0]), .A2(qb1pb1nb1mb1[1]), .ZN(n1398) );
  NAND2_X1 U743 ( .A1(qb1pb1nb1mb1[0]), .A2(hb0gb0fb0eb0[1]), .ZN(n1397) );
  XOR2_X1 U744 ( .A(n1398), .B(n1397), .Z(n1405) );
  NOR2_X1 U745 ( .A1(n1400), .A2(n1399), .ZN(n1402) );
  NAND2_X1 U746 ( .A1(hb0gb0fb0eb0[3]), .A2(qb1pb1nb1mb1[1]), .ZN(n1436) );
  NAND2_X1 U747 ( .A1(qb1pb1nb1mb1[3]), .A2(hb0gb0fb0eb0[1]), .ZN(n1435) );
  NAND2_X1 U748 ( .A1(n1436), .A2(n1435), .ZN(n1401) );
  XNOR2_X1 U749 ( .A(n1402), .B(n1401), .ZN(n1404) );
  NAND2_X1 U750 ( .A1(hb0gb0fb0eb0[1]), .A2(qb1pb1nb1mb1[1]), .ZN(n1463) );
  INV_X1 U751 ( .A(n1463), .ZN(n1423) );
  NAND2_X1 U752 ( .A1(n1402), .A2(n1423), .ZN(n1403) );
  NAND2_X1 U753 ( .A1(n1404), .A2(n1403), .ZN(n1421) );
  XNOR2_X1 U754 ( .A(n1405), .B(n1421), .ZN(n1406) );
  NAND2_X1 U755 ( .A1(qb1pb1nb1mb1[2]), .A2(hb0gb0fb0eb0[2]), .ZN(n1410) );
  XNOR2_X1 U756 ( .A(n1406), .B(n1410), .ZN(n1462) );
  NOR2_X1 U757 ( .A1(n1439), .A2(n1407), .ZN(n1422) );
  NAND2_X1 U758 ( .A1(qb1pb1nb1mb1[2]), .A2(hb0gb0fb0eb0[0]), .ZN(n1409) );
  NAND2_X1 U759 ( .A1(qb1pb1nb1mb1[0]), .A2(hb0gb0fb0eb0[2]), .ZN(n1408) );
  NAND2_X1 U760 ( .A1(n1409), .A2(n1408), .ZN(n1431) );
  XNOR2_X1 U761 ( .A(n1422), .B(n1431), .ZN(n1411) );
  INV_X1 U762 ( .A(n1410), .ZN(n1432) );
  NAND2_X1 U763 ( .A1(n1422), .A2(n1432), .ZN(n1433) );
  NAND2_X1 U764 ( .A1(n1411), .A2(n1433), .ZN(n1412) );
  XNOR2_X1 U765 ( .A(n1462), .B(n1412), .ZN(n1414) );
  XNOR2_X1 U766 ( .A(n1414), .B(n1413), .ZN(N40) );
  NAND2_X1 U767 ( .A1(hb0gb0fb0eb0[2]), .A2(qb1pb1nb1mb1[1]), .ZN(n1416) );
  NAND2_X1 U768 ( .A1(qb1pb1nb1mb1[2]), .A2(hb0gb0fb0eb0[1]), .ZN(n1415) );
  XOR2_X1 U769 ( .A(n1416), .B(n1415), .Z(n1420) );
  NAND2_X1 U770 ( .A1(qb1pb1nb1mb1[0]), .A2(hb0gb0fb0eb0[3]), .ZN(n1418) );
  NAND2_X1 U771 ( .A1(hb0gb0fb0eb0[0]), .A2(qb1pb1nb1mb1[3]), .ZN(n1417) );
  XNOR2_X1 U772 ( .A(n1418), .B(n1417), .ZN(n1419) );
  XNOR2_X1 U773 ( .A(n1420), .B(n1419), .ZN(n1461) );
  XNOR2_X1 U774 ( .A(n1461), .B(n1421), .ZN(n1428) );
  XNOR2_X1 U775 ( .A(n1423), .B(n1422), .ZN(n1427) );
  NAND2_X1 U776 ( .A1(qb1pb1nb1mb1[2]), .A2(hb0gb0fb0eb0[3]), .ZN(n1425) );
  NAND2_X1 U777 ( .A1(hb0gb0fb0eb0[2]), .A2(qb1pb1nb1mb1[3]), .ZN(n1424) );
  XNOR2_X1 U778 ( .A(n1425), .B(n1424), .ZN(n1426) );
  XNOR2_X1 U779 ( .A(n1427), .B(n1426), .ZN(n1440) );
  XNOR2_X1 U780 ( .A(n1428), .B(n1440), .ZN(n1429) );
  XNOR2_X1 U781 ( .A(n1430), .B(n1429), .ZN(N44) );
  XNOR2_X1 U782 ( .A(n1432), .B(n1431), .ZN(n1434) );
  NAND2_X1 U783 ( .A1(n1434), .A2(n1433), .ZN(n1438) );
  XOR2_X1 U784 ( .A(n1436), .B(n1435), .Z(n1437) );
  XNOR2_X1 U785 ( .A(n1438), .B(n1437), .ZN(n1443) );
  XNOR2_X1 U786 ( .A(db0cb0bb0ab0[2]), .B(n1439), .ZN(n1441) );
  XNOR2_X1 U787 ( .A(n1441), .B(n1440), .ZN(n1442) );
  XNOR2_X1 U788 ( .A(n1443), .B(n1442), .ZN(N48) );
  XOR2_X1 U789 ( .A(n1445), .B(n1444), .Z(n1447) );
  XNOR2_X1 U790 ( .A(qb0pb0nb0mb0[3]), .B(qb0pb0nb0mb0[2]), .ZN(n1468) );
  XNOR2_X1 U791 ( .A(db0cb0bb0ab0[3]), .B(n1468), .ZN(n1446) );
  XNOR2_X1 U792 ( .A(n1447), .B(n1446), .ZN(n1448) );
  XNOR2_X1 U793 ( .A(n1449), .B(n1448), .ZN(N53) );
  XNOR2_X1 U794 ( .A(n1451), .B(n1450), .ZN(n1454) );
  XNOR2_X1 U795 ( .A(hb0gb0fb0eb0[3]), .B(n1452), .ZN(n1453) );
  XNOR2_X1 U796 ( .A(n1454), .B(n1453), .ZN(n1455) );
  XNOR2_X1 U797 ( .A(n1456), .B(n1455), .ZN(n1458) );
  NOR2_X1 U798 ( .A1(n1484), .A2(db1cb1bb1ab1[2]), .ZN(n1457) );
  XNOR2_X1 U799 ( .A(n1458), .B(n1457), .ZN(n1459) );
  XOR2_X1 U800 ( .A(n1460), .B(n1459), .Z(N69) );
  XNOR2_X1 U801 ( .A(db0cb0bb0ab0[3]), .B(hb0gb0fb0eb0[3]), .ZN(n1477) );
  XNOR2_X1 U802 ( .A(hb0gb0fb0eb0[0]), .B(n1477), .ZN(n1467) );
  XNOR2_X1 U803 ( .A(n1467), .B(n1461), .ZN(n1466) );
  XNOR2_X1 U804 ( .A(n1482), .B(n1462), .ZN(n1464) );
  XNOR2_X1 U805 ( .A(n1464), .B(n1463), .ZN(n1465) );
  XNOR2_X1 U806 ( .A(n1466), .B(n1465), .ZN(N54) );
  XNOR2_X1 U807 ( .A(n1468), .B(n1467), .ZN(n1470) );
  XNOR2_X1 U808 ( .A(n1470), .B(n1469), .ZN(n1471) );
  XOR2_X1 U809 ( .A(n1472), .B(n1471), .Z(n1473) );
  XNOR2_X1 U810 ( .A(n1474), .B(n1473), .ZN(n1475) );
  XNOR2_X1 U811 ( .A(n1476), .B(n1475), .ZN(N52) );
  XNOR2_X1 U812 ( .A(db0cb0bb0ab0[0]), .B(n1477), .ZN(n1483) );
  XNOR2_X1 U813 ( .A(n1483), .B(n1478), .ZN(n1480) );
  XNOR2_X1 U814 ( .A(n1480), .B(n1479), .ZN(n1481) );
  XNOR2_X1 U815 ( .A(n1482), .B(n1481), .ZN(N70) );
  XNOR2_X1 U816 ( .A(qb0pb0nb0mb0[3]), .B(n1483), .ZN(n1486) );
  NOR2_X1 U817 ( .A1(n1484), .A2(db0cb0bb0ab0[2]), .ZN(n1485) );
  XNOR2_X1 U818 ( .A(n1486), .B(n1485), .ZN(n1487) );
  XOR2_X1 U819 ( .A(n1488), .B(n1487), .Z(n1489) );
  XNOR2_X1 U820 ( .A(n1490), .B(n1489), .ZN(N68) );
  XNOR2_X1 U821 ( .A(db0cb0bb0ab0[2]), .B(qb0pb0nb0mb0[0]), .ZN(n1492) );
  XNOR2_X1 U822 ( .A(n1492), .B(n1491), .ZN(n1493) );
  XNOR2_X1 U823 ( .A(n1494), .B(n1493), .ZN(n688) );
endmodule


module AffineInput_Unit_1 ( A, Z );
  input [7:0] A;
  output [7:0] Z;
  wire   n15, n16, n17, n18, n19, n20;
  assign Z[2] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[3]), .Z(n17) );
  XOR2_X1 U2 ( .A(n17), .B(A[4]), .Z(n16) );
  XNOR2_X1 U3 ( .A(A[0]), .B(A[7]), .ZN(n15) );
  XNOR2_X1 U4 ( .A(n16), .B(n15), .ZN(Z[3]) );
  XNOR2_X1 U5 ( .A(A[6]), .B(A[0]), .ZN(n19) );
  XOR2_X1 U6 ( .A(A[2]), .B(n17), .Z(n18) );
  XNOR2_X1 U7 ( .A(n19), .B(n18), .ZN(Z[0]) );
  XNOR2_X1 U8 ( .A(A[5]), .B(n19), .ZN(Z[1]) );
  XOR2_X1 U9 ( .A(Z[1]), .B(A[7]), .Z(Z[4]) );
  XOR2_X1 U10 ( .A(Z[1]), .B(A[4]), .Z(Z[6]) );
  XOR2_X1 U11 ( .A(A[1]), .B(Z[1]), .Z(Z[5]) );
  XNOR2_X1 U12 ( .A(Z[5]), .B(A[2]), .ZN(n20) );
  XNOR2_X1 U13 ( .A(n20), .B(A[7]), .ZN(Z[7]) );
endmodule


module AffineInput_Unit_2 ( A, Z );
  input [7:0] A;
  output [7:0] Z;
  wire   n15, n16, n17, n18, n19, n20;
  assign Z[2] = A[0];

  XOR2_X1 U1 ( .A(A[1]), .B(A[3]), .Z(n17) );
  XOR2_X1 U2 ( .A(n17), .B(A[4]), .Z(n16) );
  XNOR2_X1 U3 ( .A(A[0]), .B(A[7]), .ZN(n15) );
  XNOR2_X1 U4 ( .A(n16), .B(n15), .ZN(Z[3]) );
  XNOR2_X1 U5 ( .A(A[6]), .B(A[0]), .ZN(n19) );
  XOR2_X1 U6 ( .A(A[2]), .B(n17), .Z(n18) );
  XNOR2_X1 U7 ( .A(n19), .B(n18), .ZN(Z[0]) );
  XNOR2_X1 U8 ( .A(A[5]), .B(n19), .ZN(Z[1]) );
  XOR2_X1 U9 ( .A(Z[1]), .B(A[7]), .Z(Z[4]) );
  XOR2_X1 U10 ( .A(Z[1]), .B(A[4]), .Z(Z[6]) );
  XOR2_X1 U11 ( .A(A[1]), .B(Z[1]), .Z(Z[5]) );
  XNOR2_X1 U12 ( .A(Z[5]), .B(A[2]), .ZN(n20) );
  XNOR2_X1 U13 ( .A(n20), .B(A[7]), .ZN(Z[7]) );
endmodule


module GF256Inv_Unit ( clk, ha0ga0fa0ea0da0ca0ba0aa0, ha1ga1fa1ea1da1ca1ba1aa1, 
        va0ua0sa0ra0ta0za0ya0xa0, va1ua1sa1ra1ta1za1ya1xa1, 
        hb0gb0fb0eb0db0cb0bb0ab0, hb1gb1fb1eb1db1cb1bb1ab1, 
        vb0ub0sb0rb0tb0zb0yb0xb0, vb1ub1sb1rb1tb1zb1yb1xb1, random );
(* SILVER="[7:0]_0" *)  input [7:0] ha0ga0fa0ea0da0ca0ba0aa0;
(* SILVER="[7:0]_1" *)  input [7:0] ha1ga1fa1ea1da1ca1ba1aa1;
(* SILVER="[7:0]_0" *)  output [7:0] va0ua0sa0ra0ta0za0ya0xa0;
(* SILVER="[7:0]_1" *)  output [7:0] va1ua1sa1ra1ta1za1ya1xa1;
(* SILVER="[15:8]_0" *)  input [7:0] hb0gb0fb0eb0db0cb0bb0ab0;
(* SILVER="[15:8]_1" *)  input [7:0] hb1gb1fb1eb1db1cb1bb1ab1;
(* SILVER="[15:8]_0" *)  output [7:0] vb0ub0sb0rb0tb0zb0yb0xb0;
(* SILVER="[15:8]_1" *)  output [7:0] vb1ub1sb1rb1tb1zb1yb1xb1;
(* SILVER="refresh" *)  input [7:0] random;
(* SILVER="clock" *)  input clk;

  wire   [7:0] AffineInputASh0_r;
  wire   [7:0] AffineInputASh0;
  wire   [7:0] AffineInputASh1_r;
  wire   [7:0] AffineInputASh1;
  wire   [7:0] AffineInputBSh0_r;
  wire   [7:0] AffineInputBSh0;
  wire   [7:0] AffineInputBSh1_r;
  wire   [7:0] AffineInputBSh1;
  wire   [7:0] AffineInputASh0_r0;
  wire   [7:0] AffineInputASh1_r0;
  wire   [7:0] AffineInputBSh0_r0;
  wire   [7:0] AffineInputBSh1_r0;
  wire   [7:0] AffineInputASh0_r1;
  wire   [7:0] AffineInputASh1_r1;
  wire   [7:0] AffineInputBSh0_r1;
  wire   [7:0] AffineInputBSh1_r1;
  wire   [7:0] AffineInputASh0_r2;
  wire   [7:0] AffineInputASh1_r2;
  wire   [7:0] AffineInputBSh0_r2;
  wire   [7:0] AffineInputBSh1_r2;
  wire   [3:0] Gf16MulXorSqScASh0_r;
  wire   [3:0] Gf16MulXorSqScASh0;
  wire   [3:0] Gf16MulXorSqScASh1_r;
  wire   [3:0] Gf16MulXorSqScASh1;
  wire   [3:0] Gf16MulXorSqScBSh0_r;
  wire   [3:0] Gf16MulXorSqScBSh0;
  wire   [3:0] Gf16MulXorSqScBSh1_r;
  wire   [3:0] Gf16MulXorSqScBSh1;
  wire   [1:0] GF4MulXorSqScB1Sh0;
  wire   [1:0] GF4MulXorSqScB1Sh1;
  wire   [1:0] GF4MulXorSqScB0Sh0;
  wire   [1:0] GF4MulXorSqScB0Sh1;
  wire   [1:0] GF4MulXorSqScA1Sh0;
  wire   [1:0] GF4MulXorSqScA1Sh1;
  wire   [1:0] GF4MulXorSqScA0Sh0;
  wire   [1:0] GF4MulXorSqScA0Sh1;
  wire   [3:0] GF4MulBSh0;
  wire   [3:0] GF4MulBSh1;
  wire   [3:0] GF4MulASh0;
  wire   [3:0] GF4MulASh1;

  AffineInput_Unit_0 Inst_AffineInputA_Unit0 ( .A(ha0ga0fa0ea0da0ca0ba0aa0), 
        .Z(AffineInputASh0) );
  AffineInput_Unit_3 Inst_AffineInputA_Unit1 ( .A(ha1ga1fa1ea1da1ca1ba1aa1), 
        .Z(AffineInputASh1) );
  AffineInput_Unit_2 Inst_AffineInputB_Unit0 ( .A(hb0gb0fb0eb0db0cb0bb0ab0), 
        .Z(AffineInputBSh0) );
  AffineInput_Unit_1 Inst_AffineInputB_Unit1 ( .A(hb1gb1fb1eb1db1cb1bb1ab1), 
        .Z(AffineInputBSh1) );
  GF16MulXorSqSc_Unit Inst_GF16MulXorSqSc_Unit ( .clk(clk), .ha0ga0fa0ea0(
        AffineInputASh0_r[7:4]), .ha1ga1fa1ea1(AffineInputASh1_r[7:4]), 
        .da0ca0ba0aa0(AffineInputASh0_r[3:0]), .da1ca1ba1aa1(
        AffineInputASh1_r[3:0]), .xa({Gf16MulXorSqScASh0[0], 
        Gf16MulXorSqScASh1[0]}), .ya({Gf16MulXorSqScASh0[1], 
        Gf16MulXorSqScASh1[1]}), .za({Gf16MulXorSqScASh0[2], 
        Gf16MulXorSqScASh1[2]}), .ta({Gf16MulXorSqScASh0[3], 
        Gf16MulXorSqScASh1[3]}), .hb0gb0fb0eb0(AffineInputBSh0_r[7:4]), 
        .hb1gb1fb1eb1(AffineInputBSh1_r[7:4]), .db0cb0bb0ab0(
        AffineInputBSh0_r[3:0]), .db1cb1bb1ab1(AffineInputBSh1_r[3:0]), .xb({
        Gf16MulXorSqScBSh0[0], Gf16MulXorSqScBSh1[0]}), .yb({
        Gf16MulXorSqScBSh0[1], Gf16MulXorSqScBSh1[1]}), .zb({
        Gf16MulXorSqScBSh0[2], Gf16MulXorSqScBSh1[2]}), .tb({
        Gf16MulXorSqScBSh0[3], Gf16MulXorSqScBSh1[3]}) );
  GF4MulXorSqSc_Unit Inst_GF4MulXorSqSc_Unit ( .clk(clk), .da0ca0ba0aa0(
        Gf16MulXorSqScASh0), .da1ca1ba1aa1(Gf16MulXorSqScASh1), .ra3ra2ra1ra0(
        AffineInputASh0_r0[7:4]), .xa({GF4MulXorSqScA0Sh0[0], 
        GF4MulXorSqScA0Sh1[0]}), .ya({GF4MulXorSqScA0Sh0[1], 
        GF4MulXorSqScA0Sh1[1]}), .za({GF4MulXorSqScA1Sh0[0], 
        GF4MulXorSqScA1Sh1[0]}), .ta({GF4MulXorSqScA1Sh0[1], 
        GF4MulXorSqScA1Sh1[1]}), .db0cb0bb0ab0(Gf16MulXorSqScBSh0), 
        .db1cb1bb1ab1(Gf16MulXorSqScBSh1), .rb3rb2rb1rb0(
        AffineInputBSh0_r0[7:4]), .xb({GF4MulXorSqScB0Sh0[0], 
        GF4MulXorSqScB0Sh1[0]}), .yb({GF4MulXorSqScB0Sh0[1], 
        GF4MulXorSqScB0Sh1[1]}), .zb({GF4MulXorSqScB1Sh0[0], 
        GF4MulXorSqScB1Sh1[0]}), .tb({GF4MulXorSqScB1Sh0[1], 
        GF4MulXorSqScB1Sh1[1]}), .random(random) );
  GF4Mul_Unit Inst_GF4Mul_Unit ( .clk(clk), .da0ca0ba0aa0(Gf16MulXorSqScASh0_r), .da1ca1ba1aa1(Gf16MulXorSqScASh1_r), .ha0ga0fa0ea0({GF4MulXorSqScA1Sh0, 
        GF4MulXorSqScA0Sh0}), .ha1ga1fa1ea1({GF4MulXorSqScA1Sh1, 
        GF4MulXorSqScA0Sh1}), .ra3ra2ra1ra0(AffineInputASh0_r1[3:0]), .xa({
        GF4MulASh0[0], GF4MulASh1[0]}), .ya({GF4MulASh0[1], GF4MulASh1[1]}), 
        .za({GF4MulASh0[2], GF4MulASh1[2]}), .ta({GF4MulASh0[3], GF4MulASh1[3]}), .db0cb0bb0ab0(Gf16MulXorSqScBSh0_r), .db1cb1bb1ab1(Gf16MulXorSqScBSh1_r), 
        .hb0gb0fb0eb0({GF4MulXorSqScB1Sh0, GF4MulXorSqScB0Sh0}), 
        .hb1gb1fb1eb1({GF4MulXorSqScB1Sh1, GF4MulXorSqScB0Sh1}), 
        .rb3rb2rb1rb0(AffineInputBSh0_r1[3:0]), .xb({GF4MulBSh0[0], 
        GF4MulBSh1[0]}), .yb({GF4MulBSh0[1], GF4MulBSh1[1]}), .zb({
        GF4MulBSh0[2], GF4MulBSh1[2]}), .tb({GF4MulBSh0[3], GF4MulBSh1[3]}) );
  GF16Mul_Unit Inst_GF16Mul_Unit ( .clk(clk), .da0ca0ba0aa0(
        AffineInputASh0_r2[3:0]), .da1ca1ba1aa1(AffineInputASh1_r2[3:0]), 
        .ha0ga0fa0ea0(AffineInputASh0_r2[7:4]), .ha1ga1fa1ea1(
        AffineInputASh1_r2[7:4]), .qa0pa0na0ma0(GF4MulASh0), .qa1pa1na1ma1(
        GF4MulASh1), .xa({va0ua0sa0ra0ta0za0ya0xa0[0], 
        va1ua1sa1ra1ta1za1ya1xa1[0]}), .ya({va0ua0sa0ra0ta0za0ya0xa0[1], 
        va1ua1sa1ra1ta1za1ya1xa1[1]}), .za({va0ua0sa0ra0ta0za0ya0xa0[2], 
        va1ua1sa1ra1ta1za1ya1xa1[2]}), .ta({va0ua0sa0ra0ta0za0ya0xa0[3], 
        va1ua1sa1ra1ta1za1ya1xa1[3]}), .ra({va0ua0sa0ra0ta0za0ya0xa0[4], 
        va1ua1sa1ra1ta1za1ya1xa1[4]}), .sa({va0ua0sa0ra0ta0za0ya0xa0[5], 
        va1ua1sa1ra1ta1za1ya1xa1[5]}), .ua({va0ua0sa0ra0ta0za0ya0xa0[6], 
        va1ua1sa1ra1ta1za1ya1xa1[6]}), .va({va0ua0sa0ra0ta0za0ya0xa0[7], 
        va1ua1sa1ra1ta1za1ya1xa1[7]}), .db0cb0bb0ab0(AffineInputBSh0_r2[3:0]), 
        .db1cb1bb1ab1(AffineInputBSh1_r2[3:0]), .hb0gb0fb0eb0(
        AffineInputBSh0_r2[7:4]), .hb1gb1fb1eb1(AffineInputBSh1_r2[7:4]), 
        .qb0pb0nb0mb0(GF4MulBSh0), .qb1pb1nb1mb1(GF4MulBSh1), .xb({
        vb0ub0sb0rb0tb0zb0yb0xb0[0], vb1ub1sb1rb1tb1zb1yb1xb1[0]}), .yb({
        vb0ub0sb0rb0tb0zb0yb0xb0[1], vb1ub1sb1rb1tb1zb1yb1xb1[1]}), .zb({
        vb0ub0sb0rb0tb0zb0yb0xb0[2], vb1ub1sb1rb1tb1zb1yb1xb1[2]}), .tb({
        vb0ub0sb0rb0tb0zb0yb0xb0[3], vb1ub1sb1rb1tb1zb1yb1xb1[3]}), .rb({
        vb0ub0sb0rb0tb0zb0yb0xb0[4], vb1ub1sb1rb1tb1zb1yb1xb1[4]}), .sb({
        vb0ub0sb0rb0tb0zb0yb0xb0[5], vb1ub1sb1rb1tb1zb1yb1xb1[5]}), .ub({
        vb0ub0sb0rb0tb0zb0yb0xb0[6], vb1ub1sb1rb1tb1zb1yb1xb1[6]}), .vb({
        vb0ub0sb0rb0tb0zb0yb0xb0[7], vb1ub1sb1rb1tb1zb1yb1xb1[7]}) );
  DFF_X1 \AffineInputASh0_r_reg[7]  ( .D(AffineInputASh0[7]), .CK(clk), .Q(
        AffineInputASh0_r[7]) );
  DFF_X1 \AffineInputASh0_r_reg[6]  ( .D(AffineInputASh0[6]), .CK(clk), .Q(
        AffineInputASh0_r[6]) );
  DFF_X1 \AffineInputASh0_r_reg[5]  ( .D(AffineInputASh0[5]), .CK(clk), .Q(
        AffineInputASh0_r[5]) );
  DFF_X1 \AffineInputASh0_r_reg[4]  ( .D(AffineInputASh0[4]), .CK(clk), .Q(
        AffineInputASh0_r[4]) );
  DFF_X1 \AffineInputASh0_r_reg[3]  ( .D(AffineInputASh0[3]), .CK(clk), .Q(
        AffineInputASh0_r[3]) );
  DFF_X1 \AffineInputASh0_r_reg[2]  ( .D(AffineInputASh0[2]), .CK(clk), .Q(
        AffineInputASh0_r[2]) );
  DFF_X1 \AffineInputASh0_r_reg[1]  ( .D(AffineInputASh0[1]), .CK(clk), .Q(
        AffineInputASh0_r[1]) );
  DFF_X1 \AffineInputASh0_r_reg[0]  ( .D(AffineInputASh0[0]), .CK(clk), .Q(
        AffineInputASh0_r[0]) );
  DFF_X1 \AffineInputASh1_r_reg[7]  ( .D(AffineInputASh1[7]), .CK(clk), .Q(
        AffineInputASh1_r[7]) );
  DFF_X1 \AffineInputASh1_r_reg[6]  ( .D(AffineInputASh1[6]), .CK(clk), .Q(
        AffineInputASh1_r[6]) );
  DFF_X1 \AffineInputASh1_r_reg[5]  ( .D(AffineInputASh1[5]), .CK(clk), .Q(
        AffineInputASh1_r[5]) );
  DFF_X1 \AffineInputASh1_r_reg[4]  ( .D(AffineInputASh1[4]), .CK(clk), .Q(
        AffineInputASh1_r[4]) );
  DFF_X1 \AffineInputASh1_r_reg[3]  ( .D(AffineInputASh1[3]), .CK(clk), .Q(
        AffineInputASh1_r[3]) );
  DFF_X1 \AffineInputASh1_r_reg[2]  ( .D(AffineInputASh1[2]), .CK(clk), .Q(
        AffineInputASh1_r[2]) );
  DFF_X1 \AffineInputASh1_r_reg[1]  ( .D(AffineInputASh1[1]), .CK(clk), .Q(
        AffineInputASh1_r[1]) );
  DFF_X1 \AffineInputASh1_r_reg[0]  ( .D(AffineInputASh1[0]), .CK(clk), .Q(
        AffineInputASh1_r[0]) );
  DFF_X1 \AffineInputBSh0_r_reg[7]  ( .D(AffineInputBSh0[7]), .CK(clk), .Q(
        AffineInputBSh0_r[7]) );
  DFF_X1 \AffineInputBSh0_r_reg[6]  ( .D(AffineInputBSh0[6]), .CK(clk), .Q(
        AffineInputBSh0_r[6]) );
  DFF_X1 \AffineInputBSh0_r_reg[5]  ( .D(AffineInputBSh0[5]), .CK(clk), .Q(
        AffineInputBSh0_r[5]) );
  DFF_X1 \AffineInputBSh0_r_reg[4]  ( .D(AffineInputBSh0[4]), .CK(clk), .Q(
        AffineInputBSh0_r[4]) );
  DFF_X1 \AffineInputBSh0_r_reg[3]  ( .D(AffineInputBSh0[3]), .CK(clk), .Q(
        AffineInputBSh0_r[3]) );
  DFF_X1 \AffineInputBSh0_r_reg[2]  ( .D(AffineInputBSh0[2]), .CK(clk), .Q(
        AffineInputBSh0_r[2]) );
  DFF_X1 \AffineInputBSh0_r_reg[1]  ( .D(AffineInputBSh0[1]), .CK(clk), .Q(
        AffineInputBSh0_r[1]) );
  DFF_X1 \AffineInputBSh0_r_reg[0]  ( .D(AffineInputBSh0[0]), .CK(clk), .Q(
        AffineInputBSh0_r[0]) );
  DFF_X1 \AffineInputBSh1_r_reg[7]  ( .D(AffineInputBSh1[7]), .CK(clk), .Q(
        AffineInputBSh1_r[7]) );
  DFF_X1 \AffineInputBSh1_r_reg[6]  ( .D(AffineInputBSh1[6]), .CK(clk), .Q(
        AffineInputBSh1_r[6]) );
  DFF_X1 \AffineInputBSh1_r_reg[5]  ( .D(AffineInputBSh1[5]), .CK(clk), .Q(
        AffineInputBSh1_r[5]) );
  DFF_X1 \AffineInputBSh1_r_reg[4]  ( .D(AffineInputBSh1[4]), .CK(clk), .Q(
        AffineInputBSh1_r[4]) );
  DFF_X1 \AffineInputBSh1_r_reg[3]  ( .D(AffineInputBSh1[3]), .CK(clk), .Q(
        AffineInputBSh1_r[3]) );
  DFF_X1 \AffineInputBSh1_r_reg[2]  ( .D(AffineInputBSh1[2]), .CK(clk), .Q(
        AffineInputBSh1_r[2]) );
  DFF_X1 \AffineInputBSh1_r_reg[1]  ( .D(AffineInputBSh1[1]), .CK(clk), .Q(
        AffineInputBSh1_r[1]) );
  DFF_X1 \AffineInputBSh1_r_reg[0]  ( .D(AffineInputBSh1[0]), .CK(clk), .Q(
        AffineInputBSh1_r[0]) );
  DFF_X1 \AffineInputASh0_r0_reg[7]  ( .D(AffineInputASh0_r[7]), .CK(clk), .Q(
        AffineInputASh0_r0[7]) );
  DFF_X1 \AffineInputASh0_r0_reg[6]  ( .D(AffineInputASh0_r[6]), .CK(clk), .Q(
        AffineInputASh0_r0[6]) );
  DFF_X1 \AffineInputASh0_r0_reg[5]  ( .D(AffineInputASh0_r[5]), .CK(clk), .Q(
        AffineInputASh0_r0[5]) );
  DFF_X1 \AffineInputASh0_r0_reg[4]  ( .D(AffineInputASh0_r[4]), .CK(clk), .Q(
        AffineInputASh0_r0[4]) );
  DFF_X1 \AffineInputASh0_r0_reg[3]  ( .D(AffineInputASh0_r[3]), .CK(clk), .Q(
        AffineInputASh0_r0[3]) );
  DFF_X1 \AffineInputASh0_r0_reg[2]  ( .D(AffineInputASh0_r[2]), .CK(clk), .Q(
        AffineInputASh0_r0[2]) );
  DFF_X1 \AffineInputASh0_r0_reg[1]  ( .D(AffineInputASh0_r[1]), .CK(clk), .Q(
        AffineInputASh0_r0[1]) );
  DFF_X1 \AffineInputASh0_r0_reg[0]  ( .D(AffineInputASh0_r[0]), .CK(clk), .Q(
        AffineInputASh0_r0[0]) );
  DFF_X1 \AffineInputASh1_r0_reg[7]  ( .D(AffineInputASh1_r[7]), .CK(clk), .Q(
        AffineInputASh1_r0[7]) );
  DFF_X1 \AffineInputASh1_r0_reg[6]  ( .D(AffineInputASh1_r[6]), .CK(clk), .Q(
        AffineInputASh1_r0[6]) );
  DFF_X1 \AffineInputASh1_r0_reg[5]  ( .D(AffineInputASh1_r[5]), .CK(clk), .Q(
        AffineInputASh1_r0[5]) );
  DFF_X1 \AffineInputASh1_r0_reg[4]  ( .D(AffineInputASh1_r[4]), .CK(clk), .Q(
        AffineInputASh1_r0[4]) );
  DFF_X1 \AffineInputASh1_r0_reg[3]  ( .D(AffineInputASh1_r[3]), .CK(clk), .Q(
        AffineInputASh1_r0[3]) );
  DFF_X1 \AffineInputASh1_r0_reg[2]  ( .D(AffineInputASh1_r[2]), .CK(clk), .Q(
        AffineInputASh1_r0[2]) );
  DFF_X1 \AffineInputASh1_r0_reg[1]  ( .D(AffineInputASh1_r[1]), .CK(clk), .Q(
        AffineInputASh1_r0[1]) );
  DFF_X1 \AffineInputASh1_r0_reg[0]  ( .D(AffineInputASh1_r[0]), .CK(clk), .Q(
        AffineInputASh1_r0[0]) );
  DFF_X1 \AffineInputBSh0_r0_reg[7]  ( .D(AffineInputBSh0_r[7]), .CK(clk), .Q(
        AffineInputBSh0_r0[7]) );
  DFF_X1 \AffineInputBSh0_r0_reg[6]  ( .D(AffineInputBSh0_r[6]), .CK(clk), .Q(
        AffineInputBSh0_r0[6]) );
  DFF_X1 \AffineInputBSh0_r0_reg[5]  ( .D(AffineInputBSh0_r[5]), .CK(clk), .Q(
        AffineInputBSh0_r0[5]) );
  DFF_X1 \AffineInputBSh0_r0_reg[4]  ( .D(AffineInputBSh0_r[4]), .CK(clk), .Q(
        AffineInputBSh0_r0[4]) );
  DFF_X1 \AffineInputBSh0_r0_reg[3]  ( .D(AffineInputBSh0_r[3]), .CK(clk), .Q(
        AffineInputBSh0_r0[3]) );
  DFF_X1 \AffineInputBSh0_r0_reg[2]  ( .D(AffineInputBSh0_r[2]), .CK(clk), .Q(
        AffineInputBSh0_r0[2]) );
  DFF_X1 \AffineInputBSh0_r0_reg[1]  ( .D(AffineInputBSh0_r[1]), .CK(clk), .Q(
        AffineInputBSh0_r0[1]) );
  DFF_X1 \AffineInputBSh0_r0_reg[0]  ( .D(AffineInputBSh0_r[0]), .CK(clk), .Q(
        AffineInputBSh0_r0[0]) );
  DFF_X1 \AffineInputBSh1_r0_reg[7]  ( .D(AffineInputBSh1_r[7]), .CK(clk), .Q(
        AffineInputBSh1_r0[7]) );
  DFF_X1 \AffineInputBSh1_r0_reg[6]  ( .D(AffineInputBSh1_r[6]), .CK(clk), .Q(
        AffineInputBSh1_r0[6]) );
  DFF_X1 \AffineInputBSh1_r0_reg[5]  ( .D(AffineInputBSh1_r[5]), .CK(clk), .Q(
        AffineInputBSh1_r0[5]) );
  DFF_X1 \AffineInputBSh1_r0_reg[4]  ( .D(AffineInputBSh1_r[4]), .CK(clk), .Q(
        AffineInputBSh1_r0[4]) );
  DFF_X1 \AffineInputBSh1_r0_reg[3]  ( .D(AffineInputBSh1_r[3]), .CK(clk), .Q(
        AffineInputBSh1_r0[3]) );
  DFF_X1 \AffineInputBSh1_r0_reg[2]  ( .D(AffineInputBSh1_r[2]), .CK(clk), .Q(
        AffineInputBSh1_r0[2]) );
  DFF_X1 \AffineInputBSh1_r0_reg[1]  ( .D(AffineInputBSh1_r[1]), .CK(clk), .Q(
        AffineInputBSh1_r0[1]) );
  DFF_X1 \AffineInputBSh1_r0_reg[0]  ( .D(AffineInputBSh1_r[0]), .CK(clk), .Q(
        AffineInputBSh1_r0[0]) );
  DFF_X1 \AffineInputASh0_r1_reg[7]  ( .D(AffineInputASh0_r0[7]), .CK(clk), 
        .Q(AffineInputASh0_r1[7]) );
  DFF_X1 \AffineInputASh0_r1_reg[6]  ( .D(AffineInputASh0_r0[6]), .CK(clk), 
        .Q(AffineInputASh0_r1[6]) );
  DFF_X1 \AffineInputASh0_r1_reg[5]  ( .D(AffineInputASh0_r0[5]), .CK(clk), 
        .Q(AffineInputASh0_r1[5]) );
  DFF_X1 \AffineInputASh0_r1_reg[4]  ( .D(AffineInputASh0_r0[4]), .CK(clk), 
        .Q(AffineInputASh0_r1[4]) );
  DFF_X1 \AffineInputASh0_r1_reg[3]  ( .D(AffineInputASh0_r0[3]), .CK(clk), 
        .Q(AffineInputASh0_r1[3]) );
  DFF_X1 \AffineInputASh0_r1_reg[2]  ( .D(AffineInputASh0_r0[2]), .CK(clk), 
        .Q(AffineInputASh0_r1[2]) );
  DFF_X1 \AffineInputASh0_r1_reg[1]  ( .D(AffineInputASh0_r0[1]), .CK(clk), 
        .Q(AffineInputASh0_r1[1]) );
  DFF_X1 \AffineInputASh0_r1_reg[0]  ( .D(AffineInputASh0_r0[0]), .CK(clk), 
        .Q(AffineInputASh0_r1[0]) );
  DFF_X1 \AffineInputASh1_r1_reg[7]  ( .D(AffineInputASh1_r0[7]), .CK(clk), 
        .Q(AffineInputASh1_r1[7]) );
  DFF_X1 \AffineInputASh1_r1_reg[6]  ( .D(AffineInputASh1_r0[6]), .CK(clk), 
        .Q(AffineInputASh1_r1[6]) );
  DFF_X1 \AffineInputASh1_r1_reg[5]  ( .D(AffineInputASh1_r0[5]), .CK(clk), 
        .Q(AffineInputASh1_r1[5]) );
  DFF_X1 \AffineInputASh1_r1_reg[4]  ( .D(AffineInputASh1_r0[4]), .CK(clk), 
        .Q(AffineInputASh1_r1[4]) );
  DFF_X1 \AffineInputASh1_r1_reg[3]  ( .D(AffineInputASh1_r0[3]), .CK(clk), 
        .Q(AffineInputASh1_r1[3]) );
  DFF_X1 \AffineInputASh1_r1_reg[2]  ( .D(AffineInputASh1_r0[2]), .CK(clk), 
        .Q(AffineInputASh1_r1[2]) );
  DFF_X1 \AffineInputASh1_r1_reg[1]  ( .D(AffineInputASh1_r0[1]), .CK(clk), 
        .Q(AffineInputASh1_r1[1]) );
  DFF_X1 \AffineInputASh1_r1_reg[0]  ( .D(AffineInputASh1_r0[0]), .CK(clk), 
        .Q(AffineInputASh1_r1[0]) );
  DFF_X1 \AffineInputBSh0_r1_reg[7]  ( .D(AffineInputBSh0_r0[7]), .CK(clk), 
        .Q(AffineInputBSh0_r1[7]) );
  DFF_X1 \AffineInputBSh0_r1_reg[6]  ( .D(AffineInputBSh0_r0[6]), .CK(clk), 
        .Q(AffineInputBSh0_r1[6]) );
  DFF_X1 \AffineInputBSh0_r1_reg[5]  ( .D(AffineInputBSh0_r0[5]), .CK(clk), 
        .Q(AffineInputBSh0_r1[5]) );
  DFF_X1 \AffineInputBSh0_r1_reg[4]  ( .D(AffineInputBSh0_r0[4]), .CK(clk), 
        .Q(AffineInputBSh0_r1[4]) );
  DFF_X1 \AffineInputBSh0_r1_reg[3]  ( .D(AffineInputBSh0_r0[3]), .CK(clk), 
        .Q(AffineInputBSh0_r1[3]) );
  DFF_X1 \AffineInputBSh0_r1_reg[2]  ( .D(AffineInputBSh0_r0[2]), .CK(clk), 
        .Q(AffineInputBSh0_r1[2]) );
  DFF_X1 \AffineInputBSh0_r1_reg[1]  ( .D(AffineInputBSh0_r0[1]), .CK(clk), 
        .Q(AffineInputBSh0_r1[1]) );
  DFF_X1 \AffineInputBSh0_r1_reg[0]  ( .D(AffineInputBSh0_r0[0]), .CK(clk), 
        .Q(AffineInputBSh0_r1[0]) );
  DFF_X1 \AffineInputBSh1_r1_reg[7]  ( .D(AffineInputBSh1_r0[7]), .CK(clk), 
        .Q(AffineInputBSh1_r1[7]) );
  DFF_X1 \AffineInputBSh1_r1_reg[6]  ( .D(AffineInputBSh1_r0[6]), .CK(clk), 
        .Q(AffineInputBSh1_r1[6]) );
  DFF_X1 \AffineInputBSh1_r1_reg[5]  ( .D(AffineInputBSh1_r0[5]), .CK(clk), 
        .Q(AffineInputBSh1_r1[5]) );
  DFF_X1 \AffineInputBSh1_r1_reg[4]  ( .D(AffineInputBSh1_r0[4]), .CK(clk), 
        .Q(AffineInputBSh1_r1[4]) );
  DFF_X1 \AffineInputBSh1_r1_reg[3]  ( .D(AffineInputBSh1_r0[3]), .CK(clk), 
        .Q(AffineInputBSh1_r1[3]) );
  DFF_X1 \AffineInputBSh1_r1_reg[2]  ( .D(AffineInputBSh1_r0[2]), .CK(clk), 
        .Q(AffineInputBSh1_r1[2]) );
  DFF_X1 \AffineInputBSh1_r1_reg[1]  ( .D(AffineInputBSh1_r0[1]), .CK(clk), 
        .Q(AffineInputBSh1_r1[1]) );
  DFF_X1 \AffineInputBSh1_r1_reg[0]  ( .D(AffineInputBSh1_r0[0]), .CK(clk), 
        .Q(AffineInputBSh1_r1[0]) );
  DFF_X1 \AffineInputASh0_r2_reg[7]  ( .D(AffineInputASh0_r1[7]), .CK(clk), 
        .Q(AffineInputASh0_r2[7]) );
  DFF_X1 \AffineInputASh0_r2_reg[6]  ( .D(AffineInputASh0_r1[6]), .CK(clk), 
        .Q(AffineInputASh0_r2[6]) );
  DFF_X1 \AffineInputASh0_r2_reg[5]  ( .D(AffineInputASh0_r1[5]), .CK(clk), 
        .Q(AffineInputASh0_r2[5]) );
  DFF_X1 \AffineInputASh0_r2_reg[4]  ( .D(AffineInputASh0_r1[4]), .CK(clk), 
        .Q(AffineInputASh0_r2[4]) );
  DFF_X1 \AffineInputASh0_r2_reg[3]  ( .D(AffineInputASh0_r1[3]), .CK(clk), 
        .Q(AffineInputASh0_r2[3]) );
  DFF_X1 \AffineInputASh0_r2_reg[2]  ( .D(AffineInputASh0_r1[2]), .CK(clk), 
        .Q(AffineInputASh0_r2[2]) );
  DFF_X1 \AffineInputASh0_r2_reg[1]  ( .D(AffineInputASh0_r1[1]), .CK(clk), 
        .Q(AffineInputASh0_r2[1]) );
  DFF_X1 \AffineInputASh0_r2_reg[0]  ( .D(AffineInputASh0_r1[0]), .CK(clk), 
        .Q(AffineInputASh0_r2[0]) );
  DFF_X1 \AffineInputASh1_r2_reg[7]  ( .D(AffineInputASh1_r1[7]), .CK(clk), 
        .Q(AffineInputASh1_r2[7]) );
  DFF_X1 \AffineInputASh1_r2_reg[6]  ( .D(AffineInputASh1_r1[6]), .CK(clk), 
        .Q(AffineInputASh1_r2[6]) );
  DFF_X1 \AffineInputASh1_r2_reg[5]  ( .D(AffineInputASh1_r1[5]), .CK(clk), 
        .Q(AffineInputASh1_r2[5]) );
  DFF_X1 \AffineInputASh1_r2_reg[4]  ( .D(AffineInputASh1_r1[4]), .CK(clk), 
        .Q(AffineInputASh1_r2[4]) );
  DFF_X1 \AffineInputASh1_r2_reg[3]  ( .D(AffineInputASh1_r1[3]), .CK(clk), 
        .Q(AffineInputASh1_r2[3]) );
  DFF_X1 \AffineInputASh1_r2_reg[2]  ( .D(AffineInputASh1_r1[2]), .CK(clk), 
        .Q(AffineInputASh1_r2[2]) );
  DFF_X1 \AffineInputASh1_r2_reg[1]  ( .D(AffineInputASh1_r1[1]), .CK(clk), 
        .Q(AffineInputASh1_r2[1]) );
  DFF_X1 \AffineInputASh1_r2_reg[0]  ( .D(AffineInputASh1_r1[0]), .CK(clk), 
        .Q(AffineInputASh1_r2[0]) );
  DFF_X1 \AffineInputBSh0_r2_reg[7]  ( .D(AffineInputBSh0_r1[7]), .CK(clk), 
        .Q(AffineInputBSh0_r2[7]) );
  DFF_X1 \AffineInputBSh0_r2_reg[6]  ( .D(AffineInputBSh0_r1[6]), .CK(clk), 
        .Q(AffineInputBSh0_r2[6]) );
  DFF_X1 \AffineInputBSh0_r2_reg[5]  ( .D(AffineInputBSh0_r1[5]), .CK(clk), 
        .Q(AffineInputBSh0_r2[5]) );
  DFF_X1 \AffineInputBSh0_r2_reg[4]  ( .D(AffineInputBSh0_r1[4]), .CK(clk), 
        .Q(AffineInputBSh0_r2[4]) );
  DFF_X1 \AffineInputBSh0_r2_reg[3]  ( .D(AffineInputBSh0_r1[3]), .CK(clk), 
        .Q(AffineInputBSh0_r2[3]) );
  DFF_X1 \AffineInputBSh0_r2_reg[2]  ( .D(AffineInputBSh0_r1[2]), .CK(clk), 
        .Q(AffineInputBSh0_r2[2]) );
  DFF_X1 \AffineInputBSh0_r2_reg[1]  ( .D(AffineInputBSh0_r1[1]), .CK(clk), 
        .Q(AffineInputBSh0_r2[1]) );
  DFF_X1 \AffineInputBSh0_r2_reg[0]  ( .D(AffineInputBSh0_r1[0]), .CK(clk), 
        .Q(AffineInputBSh0_r2[0]) );
  DFF_X1 \AffineInputBSh1_r2_reg[7]  ( .D(AffineInputBSh1_r1[7]), .CK(clk), 
        .Q(AffineInputBSh1_r2[7]) );
  DFF_X1 \AffineInputBSh1_r2_reg[6]  ( .D(AffineInputBSh1_r1[6]), .CK(clk), 
        .Q(AffineInputBSh1_r2[6]) );
  DFF_X1 \AffineInputBSh1_r2_reg[5]  ( .D(AffineInputBSh1_r1[5]), .CK(clk), 
        .Q(AffineInputBSh1_r2[5]) );
  DFF_X1 \AffineInputBSh1_r2_reg[4]  ( .D(AffineInputBSh1_r1[4]), .CK(clk), 
        .Q(AffineInputBSh1_r2[4]) );
  DFF_X1 \AffineInputBSh1_r2_reg[3]  ( .D(AffineInputBSh1_r1[3]), .CK(clk), 
        .Q(AffineInputBSh1_r2[3]) );
  DFF_X1 \AffineInputBSh1_r2_reg[2]  ( .D(AffineInputBSh1_r1[2]), .CK(clk), 
        .Q(AffineInputBSh1_r2[2]) );
  DFF_X1 \AffineInputBSh1_r2_reg[1]  ( .D(AffineInputBSh1_r1[1]), .CK(clk), 
        .Q(AffineInputBSh1_r2[1]) );
  DFF_X1 \AffineInputBSh1_r2_reg[0]  ( .D(AffineInputBSh1_r1[0]), .CK(clk), 
        .Q(AffineInputBSh1_r2[0]) );
  DFF_X1 \Gf16MulXorSqScASh0_r_reg[3]  ( .D(Gf16MulXorSqScASh0[3]), .CK(clk), 
        .Q(Gf16MulXorSqScASh0_r[3]) );
  DFF_X1 \Gf16MulXorSqScASh0_r_reg[2]  ( .D(Gf16MulXorSqScASh0[2]), .CK(clk), 
        .Q(Gf16MulXorSqScASh0_r[2]) );
  DFF_X1 \Gf16MulXorSqScASh0_r_reg[1]  ( .D(Gf16MulXorSqScASh0[1]), .CK(clk), 
        .Q(Gf16MulXorSqScASh0_r[1]) );
  DFF_X1 \Gf16MulXorSqScASh0_r_reg[0]  ( .D(Gf16MulXorSqScASh0[0]), .CK(clk), 
        .Q(Gf16MulXorSqScASh0_r[0]) );
  DFF_X1 \Gf16MulXorSqScASh1_r_reg[3]  ( .D(Gf16MulXorSqScASh1[3]), .CK(clk), 
        .Q(Gf16MulXorSqScASh1_r[3]) );
  DFF_X1 \Gf16MulXorSqScASh1_r_reg[2]  ( .D(Gf16MulXorSqScASh1[2]), .CK(clk), 
        .Q(Gf16MulXorSqScASh1_r[2]) );
  DFF_X1 \Gf16MulXorSqScASh1_r_reg[1]  ( .D(Gf16MulXorSqScASh1[1]), .CK(clk), 
        .Q(Gf16MulXorSqScASh1_r[1]) );
  DFF_X1 \Gf16MulXorSqScASh1_r_reg[0]  ( .D(Gf16MulXorSqScASh1[0]), .CK(clk), 
        .Q(Gf16MulXorSqScASh1_r[0]) );
  DFF_X1 \Gf16MulXorSqScBSh0_r_reg[3]  ( .D(Gf16MulXorSqScBSh0[3]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh0_r[3]) );
  DFF_X1 \Gf16MulXorSqScBSh0_r_reg[2]  ( .D(Gf16MulXorSqScBSh0[2]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh0_r[2]) );
  DFF_X1 \Gf16MulXorSqScBSh0_r_reg[1]  ( .D(Gf16MulXorSqScBSh0[1]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh0_r[1]) );
  DFF_X1 \Gf16MulXorSqScBSh0_r_reg[0]  ( .D(Gf16MulXorSqScBSh0[0]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh0_r[0]) );
  DFF_X1 \Gf16MulXorSqScBSh1_r_reg[3]  ( .D(Gf16MulXorSqScBSh1[3]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh1_r[3]) );
  DFF_X1 \Gf16MulXorSqScBSh1_r_reg[2]  ( .D(Gf16MulXorSqScBSh1[2]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh1_r[2]) );
  DFF_X1 \Gf16MulXorSqScBSh1_r_reg[1]  ( .D(Gf16MulXorSqScBSh1[1]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh1_r[1]) );
  DFF_X1 \Gf16MulXorSqScBSh1_r_reg[0]  ( .D(Gf16MulXorSqScBSh1[0]), .CK(clk), 
        .Q(Gf16MulXorSqScBSh1_r[0]) );
endmodule

