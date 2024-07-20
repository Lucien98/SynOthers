/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jun 12 05:23:22 2023
/////////////////////////////////////////////////////////////


module SKINNY_SBOX_0 ( clk, in1, in2, in3, TwoSharesFromNeighbouringSbox, r, 
        out1, out2, out3 );
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  output [3:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  input clk;
  wire   \CF_Out[1][26] , \CF_Out[1][25] , \CF_Out[1][24] , \CF_Out[1][23] ,
         \CF_Out[1][22] , \CF_Out[1][21] , \CF_Out[1][20] , \CF_Out[1][18] ,
         \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] , \CF_Out[1][14] ,
         \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][11] , \CF_Out[1][9] ,
         \CF_Out[1][8] , \CF_Out[1][7] , \CF_Out[1][6] , \CF_Out[1][5] ,
         \CF_Out[1][4] , \CF_Out[1][0] , \CF_Out[0][26] , \CF_Out[0][25] ,
         \CF_Out[0][24] , \CF_Out[0][19] , \CF_Out[0][18] , \CF_Out[0][17] ,
         \CF_Out[0][13] , \CF_Out[0][12] , \CF_Out[0][10] , \CF_Out[0][9] ,
         \CF_Out[0][8] , \CF_Out[0][7] , \CF_Out[0][6] , \CF_Out[0][4] ,
         \CF_Out[0][3] , \CF_Out[0][2] , \CF_Out[0][1] , \CF_Out[0][0] ,
         \CF_Out34[3][8] , \CF_Out34[3][7] , \CF_Out34[3][6] ,
         \CF_Out34[3][5] , \CF_Out34[3][4] , \CF_Out34[3][3] ,
         \CF_Out34[3][2] , \CF_Out34[3][1] , \CF_Out34[2][8] ,
         \CF_Out34[2][7] , \CF_Out34[2][6] , \CF_Out34[2][5] ,
         \CF_Out34[2][4] , \CF_Out34[2][3] , \CF_Out34[2][2] ,
         \CF_Out34[2][1] , \CF_Out34[2][0] , n13522, n13530, n13538, n13546,
         n13554, n13562, n13563, n13565, n13567, n13569, n13571, n13573, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n13471, n13472, n13473, n13474, n13475,
         n13476, n13477, n13478, n13479, n13480, n13481, n13482, n13483,
         n13484, n13485, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n540, n541, n542, n543, n544, n545, n546, n547, n548, n549, n550,
         n551, n552, n553, n554, n555, n556, n557, n558, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887;

  DFF_X1 \CF_Reg_reg[1][26]  ( .D(\CF_Out[1][26] ), .CK(clk), .QN(n449) );
  DFF_X1 \CF_Reg_reg[1][25]  ( .D(\CF_Out[1][25] ), .CK(clk), .Q(n447) );
  DFF_X1 \CF_Reg_reg[1][24]  ( .D(\CF_Out[1][24] ), .CK(clk), .QN(n13562) );
  DFF_X1 \CF_Reg_reg[1][23]  ( .D(\CF_Out[1][23] ), .CK(clk), .Q(n446) );
  DFF_X1 \CF_Reg_reg[1][22]  ( .D(\CF_Out[1][22] ), .CK(clk), .Q(n445) );
  DFF_X1 \CF_Reg_reg[1][21]  ( .D(\CF_Out[1][21] ), .CK(clk), .Q(n448) );
  DFF_X1 \CF_Reg_reg[1][20]  ( .D(\CF_Out[1][20] ), .CK(clk), .Q(n444) );
  DFF_X1 \CF_Reg_reg[1][19]  ( .D(n13474), .CK(clk), .Q(n442) );
  DFF_X1 \CF_Reg_reg[1][18]  ( .D(\CF_Out[1][18] ), .CK(clk), .Q(n443) );
  DFF_X1 \CF_Reg_reg[1][17]  ( .D(\CF_Out[1][17] ), .CK(clk), .QN(n469) );
  DFF_X1 \CF_Reg_reg[1][16]  ( .D(\CF_Out[1][16] ), .CK(clk), .Q(n467) );
  DFF_X1 \CF_Reg_reg[1][15]  ( .D(\CF_Out[1][15] ), .CK(clk), .QN(n13554) );
  DFF_X1 \CF_Reg_reg[1][14]  ( .D(\CF_Out[1][14] ), .CK(clk), .Q(n466) );
  DFF_X1 \CF_Reg_reg[1][13]  ( .D(\CF_Out[1][13] ), .CK(clk), .Q(n465) );
  DFF_X1 \CF_Reg_reg[1][12]  ( .D(\CF_Out[1][12] ), .CK(clk), .Q(n468) );
  DFF_X1 \CF_Reg_reg[1][11]  ( .D(\CF_Out[1][11] ), .CK(clk), .Q(n464) );
  DFF_X1 \CF_Reg_reg[1][10]  ( .D(n13476), .CK(clk), .Q(n462) );
  DFF_X1 \CF_Reg_reg[1][9]  ( .D(\CF_Out[1][9] ), .CK(clk), .Q(n463) );
  DFF_X1 \CF_Reg_reg[1][8]  ( .D(\CF_Out[1][8] ), .CK(clk), .QN(n489) );
  DFF_X1 \CF_Reg_reg[1][7]  ( .D(\CF_Out[1][7] ), .CK(clk), .Q(n487) );
  DFF_X1 \CF_Reg_reg[1][6]  ( .D(\CF_Out[1][6] ), .CK(clk), .QN(n13546) );
  DFF_X1 \CF_Reg_reg[1][5]  ( .D(\CF_Out[1][5] ), .CK(clk), .Q(n486) );
  DFF_X1 \CF_Reg_reg[1][4]  ( .D(\CF_Out[1][4] ), .CK(clk), .Q(n485) );
  DFF_X1 \CF_Reg_reg[1][3]  ( .D(n13473), .CK(clk), .Q(n488) );
  DFF_X1 \CF_Reg_reg[1][2]  ( .D(n13481), .CK(clk), .Q(n484) );
  DFF_X1 \CF_Reg_reg[1][1]  ( .D(n13480), .CK(clk), .Q(n482) );
  DFF_X1 \CF_Reg_reg[1][0]  ( .D(\CF_Out[1][0] ), .CK(clk), .Q(n483) );
  DFF_X1 \CF_Reg_reg[0][26]  ( .D(\CF_Out[0][26] ), .CK(clk), .QN(n457) );
  DFF_X1 \CF_Reg_reg[0][25]  ( .D(\CF_Out[0][25] ), .CK(clk), .Q(n455) );
  DFF_X1 \CF_Reg_reg[0][24]  ( .D(\CF_Out[0][24] ), .CK(clk), .QN(n13538) );
  DFF_X1 \CF_Reg_reg[0][23]  ( .D(n13485), .CK(clk), .Q(n454) );
  DFF_X1 \CF_Reg_reg[0][22]  ( .D(n13475), .CK(clk), .Q(n453) );
  DFF_X1 \CF_Reg_reg[0][21]  ( .D(n13477), .CK(clk), .Q(n456) );
  DFF_X1 \CF_Reg_reg[0][20]  ( .D(n13482), .CK(clk), .Q(n452) );
  DFF_X1 \CF_Reg_reg[0][19]  ( .D(\CF_Out[0][19] ), .CK(clk), .Q(n450) );
  DFF_X1 \CF_Reg_reg[0][18]  ( .D(\CF_Out[0][18] ), .CK(clk), .Q(n451) );
  DFF_X1 \CF_Reg_reg[0][17]  ( .D(\CF_Out[0][17] ), .CK(clk), .QN(n477) );
  DFF_X1 \CF_Reg_reg[0][16]  ( .D(n13471), .CK(clk), .Q(n475) );
  DFF_X1 \CF_Reg_reg[0][15]  ( .D(n13478), .CK(clk), .QN(n13530) );
  DFF_X1 \CF_Reg_reg[0][14]  ( .D(n13484), .CK(clk), .Q(n474) );
  DFF_X1 \CF_Reg_reg[0][13]  ( .D(\CF_Out[0][13] ), .CK(clk), .Q(n473) );
  DFF_X1 \CF_Reg_reg[0][12]  ( .D(\CF_Out[0][12] ), .CK(clk), .Q(n476) );
  DFF_X1 \CF_Reg_reg[0][11]  ( .D(n13483), .CK(clk), .Q(n472) );
  DFF_X1 \CF_Reg_reg[0][10]  ( .D(\CF_Out[0][10] ), .CK(clk), .Q(n470) );
  DFF_X1 \CF_Reg_reg[0][9]  ( .D(\CF_Out[0][9] ), .CK(clk), .Q(n471) );
  DFF_X1 \CF_Reg_reg[0][8]  ( .D(\CF_Out[0][8] ), .CK(clk), .QN(n497) );
  DFF_X1 \CF_Reg_reg[0][7]  ( .D(\CF_Out[0][7] ), .CK(clk), .Q(n495) );
  DFF_X1 \CF_Reg_reg[0][6]  ( .D(\CF_Out[0][6] ), .CK(clk), .QN(n13522) );
  DFF_X1 \CF_Reg_reg[0][5]  ( .D(n13479), .CK(clk), .Q(n494) );
  DFF_X1 \CF_Reg_reg[0][4]  ( .D(\CF_Out[0][4] ), .CK(clk), .Q(n493) );
  DFF_X1 \CF_Reg_reg[0][3]  ( .D(\CF_Out[0][3] ), .CK(clk), .Q(n496) );
  DFF_X1 \CF_Reg_reg[0][2]  ( .D(\CF_Out[0][2] ), .CK(clk), .Q(n492) );
  DFF_X1 \CF_Reg_reg[0][1]  ( .D(\CF_Out[0][1] ), .CK(clk), .Q(n490) );
  DFF_X1 \CF_Reg_reg[0][0]  ( .D(\CF_Out[0][0] ), .CK(clk), .Q(n491) );
  DFF_X1 \CF_Reg34_reg[3][8]  ( .D(\CF_Out34[3][8] ), .CK(clk), .Q(n438) );
  DFF_X1 \CF_Reg34_reg[3][7]  ( .D(\CF_Out34[3][7] ), .CK(clk), .QN(n13573) );
  DFF_X1 \CF_Reg34_reg[3][6]  ( .D(\CF_Out34[3][6] ), .CK(clk), .QN(n439) );
  DFF_X1 \CF_Reg34_reg[3][5]  ( .D(\CF_Out34[3][5] ), .CK(clk), .Q(n458) );
  DFF_X1 \CF_Reg34_reg[3][4]  ( .D(\CF_Out34[3][4] ), .CK(clk), .QN(n13571) );
  DFF_X1 \CF_Reg34_reg[3][3]  ( .D(\CF_Out34[3][3] ), .CK(clk), .QN(n459) );
  DFF_X1 \CF_Reg34_reg[3][2]  ( .D(\CF_Out34[3][2] ), .CK(clk), .Q(n478) );
  DFF_X1 \CF_Reg34_reg[3][1]  ( .D(\CF_Out34[3][1] ), .CK(clk), .QN(n13569) );
  DFF_X1 \CF_Reg34_reg[3][0]  ( .D(n13472), .CK(clk), .QN(n479) );
  DFF_X1 \CF_Reg34_reg[2][8]  ( .D(\CF_Out34[2][8] ), .CK(clk), .Q(n440) );
  DFF_X1 \CF_Reg34_reg[2][7]  ( .D(\CF_Out34[2][7] ), .CK(clk), .QN(n13567) );
  DFF_X1 \CF_Reg34_reg[2][6]  ( .D(\CF_Out34[2][6] ), .CK(clk), .QN(n441) );
  DFF_X1 \CF_Reg34_reg[2][5]  ( .D(\CF_Out34[2][5] ), .CK(clk), .Q(n460) );
  DFF_X1 \CF_Reg34_reg[2][4]  ( .D(\CF_Out34[2][4] ), .CK(clk), .QN(n13565) );
  DFF_X1 \CF_Reg34_reg[2][3]  ( .D(\CF_Out34[2][3] ), .CK(clk), .QN(n461) );
  DFF_X1 \CF_Reg34_reg[2][2]  ( .D(\CF_Out34[2][2] ), .CK(clk), .Q(n480) );
  DFF_X1 \CF_Reg34_reg[2][1]  ( .D(\CF_Out34[2][1] ), .CK(clk), .QN(n13563) );
  DFF_X1 \CF_Reg34_reg[2][0]  ( .D(\CF_Out34[2][0] ), .CK(clk), .QN(n481) );
  XOR2_X2 U6973 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n877) );
  XNOR2_X1 U6974 ( .A(n13573), .B(n439), .ZN(n498) );
  XNOR2_X1 U6975 ( .A(n498), .B(n438), .ZN(out3[3]) );
  XNOR2_X1 U6976 ( .A(n13567), .B(n441), .ZN(n499) );
  XNOR2_X1 U6977 ( .A(n499), .B(n440), .ZN(out3[2]) );
  XNOR2_X1 U6978 ( .A(n449), .B(n13562), .ZN(n506) );
  XOR2_X1 U6979 ( .A(n444), .B(n447), .Z(n501) );
  XNOR2_X1 U6980 ( .A(n443), .B(n442), .ZN(n500) );
  XNOR2_X1 U6981 ( .A(n501), .B(n500), .ZN(n502) );
  XOR2_X1 U6982 ( .A(n502), .B(n445), .Z(n504) );
  XNOR2_X1 U6983 ( .A(n446), .B(n448), .ZN(n503) );
  XNOR2_X1 U6984 ( .A(n504), .B(n503), .ZN(n505) );
  XNOR2_X1 U6985 ( .A(n506), .B(n505), .ZN(out3[1]) );
  XNOR2_X1 U6986 ( .A(n457), .B(n13538), .ZN(n513) );
  XOR2_X1 U6987 ( .A(n452), .B(n455), .Z(n508) );
  XNOR2_X1 U6988 ( .A(n451), .B(n450), .ZN(n507) );
  XNOR2_X1 U6989 ( .A(n508), .B(n507), .ZN(n509) );
  XOR2_X1 U6990 ( .A(n509), .B(n453), .Z(n511) );
  XNOR2_X1 U6991 ( .A(n454), .B(n456), .ZN(n510) );
  XNOR2_X1 U6992 ( .A(n511), .B(n510), .ZN(n512) );
  XNOR2_X1 U6993 ( .A(n513), .B(n512), .ZN(out3[0]) );
  XNOR2_X1 U6994 ( .A(n13571), .B(n459), .ZN(n514) );
  XNOR2_X1 U6995 ( .A(n514), .B(n458), .ZN(out2[3]) );
  XNOR2_X1 U6996 ( .A(n13565), .B(n461), .ZN(n515) );
  XNOR2_X1 U6997 ( .A(n515), .B(n460), .ZN(out2[2]) );
  XNOR2_X1 U6998 ( .A(n469), .B(n13554), .ZN(n522) );
  XOR2_X1 U6999 ( .A(n464), .B(n467), .Z(n517) );
  XNOR2_X1 U7000 ( .A(n463), .B(n462), .ZN(n516) );
  XNOR2_X1 U7001 ( .A(n517), .B(n516), .ZN(n518) );
  XOR2_X1 U7002 ( .A(n518), .B(n465), .Z(n520) );
  XNOR2_X1 U7003 ( .A(n466), .B(n468), .ZN(n519) );
  XNOR2_X1 U7004 ( .A(n520), .B(n519), .ZN(n521) );
  XNOR2_X1 U7005 ( .A(n522), .B(n521), .ZN(out2[1]) );
  XNOR2_X1 U7006 ( .A(n477), .B(n13530), .ZN(n529) );
  XOR2_X1 U7007 ( .A(n472), .B(n475), .Z(n524) );
  XNOR2_X1 U7008 ( .A(n471), .B(n470), .ZN(n523) );
  XNOR2_X1 U7009 ( .A(n524), .B(n523), .ZN(n525) );
  XOR2_X1 U7010 ( .A(n525), .B(n473), .Z(n527) );
  XNOR2_X1 U7011 ( .A(n474), .B(n476), .ZN(n526) );
  XNOR2_X1 U7012 ( .A(n527), .B(n526), .ZN(n528) );
  XNOR2_X1 U7013 ( .A(n529), .B(n528), .ZN(out2[0]) );
  XNOR2_X1 U7014 ( .A(n13569), .B(n479), .ZN(n530) );
  XNOR2_X1 U7015 ( .A(n530), .B(n478), .ZN(out1[3]) );
  XNOR2_X1 U7016 ( .A(n13563), .B(n481), .ZN(n531) );
  XNOR2_X1 U7017 ( .A(n531), .B(n480), .ZN(out1[2]) );
  XNOR2_X1 U7018 ( .A(n489), .B(n13546), .ZN(n538) );
  XOR2_X1 U7019 ( .A(n484), .B(n487), .Z(n533) );
  XNOR2_X1 U7020 ( .A(n483), .B(n482), .ZN(n532) );
  XNOR2_X1 U7021 ( .A(n533), .B(n532), .ZN(n534) );
  XOR2_X1 U7022 ( .A(n534), .B(n485), .Z(n536) );
  XNOR2_X1 U7023 ( .A(n486), .B(n488), .ZN(n535) );
  XNOR2_X1 U7024 ( .A(n536), .B(n535), .ZN(n537) );
  XNOR2_X1 U7025 ( .A(n538), .B(n537), .ZN(out1[1]) );
  XNOR2_X1 U7026 ( .A(n497), .B(n13522), .ZN(n545) );
  XOR2_X1 U7027 ( .A(n492), .B(n495), .Z(n540) );
  XNOR2_X1 U7028 ( .A(n491), .B(n490), .ZN(n539) );
  XNOR2_X1 U7029 ( .A(n540), .B(n539), .ZN(n541) );
  XOR2_X1 U7030 ( .A(n541), .B(n493), .Z(n543) );
  XNOR2_X1 U7031 ( .A(n494), .B(n496), .ZN(n542) );
  XNOR2_X1 U7032 ( .A(n543), .B(n542), .ZN(n544) );
  XNOR2_X1 U7033 ( .A(n545), .B(n544), .ZN(out1[0]) );
  INV_X1 U7034 ( .A(in3[2]), .ZN(n809) );
  XOR2_X1 U7035 ( .A(in1[0]), .B(in1[3]), .Z(n546) );
  NAND2_X1 U7036 ( .A1(n809), .A2(n546), .ZN(n571) );
  INV_X1 U7037 ( .A(in1[0]), .ZN(n808) );
  NAND2_X1 U7038 ( .A1(in3[2]), .A2(n808), .ZN(n766) );
  NAND2_X1 U7039 ( .A1(n571), .A2(n766), .ZN(n547) );
  NAND2_X1 U7040 ( .A1(n547), .A2(in2[1]), .ZN(n550) );
  XNOR2_X1 U7041 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[37]), .ZN(n548)
         );
  XNOR2_X1 U7042 ( .A(n548), .B(r[36]), .ZN(n549) );
  XNOR2_X1 U7043 ( .A(n550), .B(n549), .ZN(\CF_Out[1][9] ) );
  XNOR2_X1 U7044 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[35]), .ZN(n553)
         );
  INV_X1 U7045 ( .A(in1[1]), .ZN(n868) );
  NAND2_X1 U7046 ( .A1(in1[3]), .A2(n868), .ZN(n551) );
  NOR2_X1 U7047 ( .A1(n551), .A2(n809), .ZN(n552) );
  XNOR2_X1 U7048 ( .A(n553), .B(n552), .ZN(n554) );
  XOR2_X1 U7049 ( .A(r[36]), .B(n554), .Z(\CF_Out[1][8] ) );
  XOR2_X1 U7050 ( .A(r[53]), .B(r[27]), .Z(n556) );
  XNOR2_X1 U7051 ( .A(in3[0]), .B(TwoSharesFromNeighbouringSbox[7]), .ZN(n555)
         );
  XNOR2_X1 U7052 ( .A(n556), .B(n555), .ZN(n557) );
  INV_X1 U7053 ( .A(in3[1]), .ZN(n845) );
  NAND2_X1 U7054 ( .A1(in3[2]), .A2(n845), .ZN(n858) );
  NAND2_X1 U7055 ( .A1(in3[3]), .A2(n858), .ZN(n582) );
  XNOR2_X1 U7056 ( .A(n557), .B(n582), .ZN(\CF_Out[1][26] ) );
  XOR2_X1 U7057 ( .A(in1[2]), .B(in1[0]), .Z(n558) );
  NAND2_X1 U7058 ( .A1(in3[1]), .A2(n558), .ZN(n559) );
  XOR2_X1 U7059 ( .A(in3[3]), .B(n559), .Z(n561) );
  NOR2_X1 U7060 ( .A1(in1[2]), .A2(in3[1]), .ZN(n560) );
  NOR2_X1 U7061 ( .A1(n561), .A2(n560), .ZN(n562) );
  XOR2_X1 U7062 ( .A(n562), .B(r[45]), .Z(n564) );
  XNOR2_X1 U7063 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[46]), .ZN(n563)
         );
  XNOR2_X1 U7064 ( .A(n564), .B(n563), .ZN(\CF_Out[1][18] ) );
  XNOR2_X1 U7065 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[44]), .ZN(n566)
         );
  INV_X1 U7066 ( .A(in2[3]), .ZN(n792) );
  NOR2_X1 U7067 ( .A1(in2[1]), .A2(n792), .ZN(n850) );
  NOR2_X1 U7068 ( .A1(n809), .A2(n850), .ZN(n565) );
  XNOR2_X1 U7069 ( .A(n566), .B(n565), .ZN(n567) );
  XOR2_X1 U7070 ( .A(r[45]), .B(n567), .Z(\CF_Out[1][17] ) );
  XNOR2_X1 U7071 ( .A(r[28]), .B(r[27]), .ZN(n569) );
  NOR2_X1 U7072 ( .A1(in1[2]), .A2(in1[3]), .ZN(n612) );
  XNOR2_X1 U7073 ( .A(n612), .B(n808), .ZN(n876) );
  NOR2_X1 U7074 ( .A1(in1[1]), .A2(n876), .ZN(n568) );
  XNOR2_X1 U7075 ( .A(n569), .B(n568), .ZN(n570) );
  XOR2_X1 U7076 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n570), .Z(
        \CF_Out[1][0] ) );
  XOR2_X1 U7077 ( .A(r[10]), .B(r[9]), .Z(n573) );
  NAND2_X1 U7078 ( .A1(in2[1]), .A2(n571), .ZN(n572) );
  XNOR2_X1 U7079 ( .A(n573), .B(n572), .ZN(n574) );
  XOR2_X1 U7080 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n574), .Z(
        \CF_Out[0][9] ) );
  NOR2_X1 U7081 ( .A1(n809), .A2(n868), .ZN(n819) );
  INV_X1 U7082 ( .A(in1[3]), .ZN(n736) );
  NAND2_X1 U7083 ( .A1(in3[0]), .A2(n736), .ZN(n628) );
  NOR2_X1 U7084 ( .A1(n819), .A2(n628), .ZN(n577) );
  INV_X1 U7085 ( .A(in3[0]), .ZN(n880) );
  NAND2_X1 U7086 ( .A1(in1[3]), .A2(n880), .ZN(n627) );
  INV_X1 U7087 ( .A(n819), .ZN(n575) );
  NOR2_X1 U7088 ( .A1(n627), .A2(n575), .ZN(n576) );
  NOR2_X1 U7089 ( .A1(n577), .A2(n576), .ZN(n580) );
  XNOR2_X1 U7090 ( .A(r[9]), .B(TwoSharesFromNeighbouringSbox[7]), .ZN(n578)
         );
  XNOR2_X1 U7091 ( .A(n578), .B(r[8]), .ZN(n579) );
  XNOR2_X1 U7092 ( .A(n580), .B(n579), .ZN(\CF_Out[0][8] ) );
  INV_X1 U7093 ( .A(in3[3]), .ZN(n816) );
  NAND2_X1 U7094 ( .A1(in3[2]), .A2(n816), .ZN(n696) );
  NOR2_X1 U7095 ( .A1(in3[1]), .A2(n880), .ZN(n581) );
  NOR2_X1 U7096 ( .A1(n696), .A2(n581), .ZN(n584) );
  NOR2_X1 U7097 ( .A1(in3[0]), .A2(n582), .ZN(n583) );
  NOR2_X1 U7098 ( .A1(n584), .A2(n583), .ZN(n587) );
  XNOR2_X1 U7099 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[26]), .ZN(n585)
         );
  XNOR2_X1 U7100 ( .A(n585), .B(r[0]), .ZN(n586) );
  XNOR2_X1 U7101 ( .A(n587), .B(n586), .ZN(\CF_Out[0][26] ) );
  XOR2_X1 U7102 ( .A(r[2]), .B(r[1]), .Z(n589) );
  NOR2_X1 U7103 ( .A1(in2[3]), .A2(in2[2]), .ZN(n795) );
  NOR2_X1 U7104 ( .A1(n795), .A2(n868), .ZN(n824) );
  NAND2_X1 U7105 ( .A1(in2[2]), .A2(n808), .ZN(n591) );
  NAND2_X1 U7106 ( .A1(n824), .A2(n591), .ZN(n588) );
  XNOR2_X1 U7107 ( .A(n589), .B(n588), .ZN(n590) );
  XOR2_X1 U7108 ( .A(n877), .B(n590), .Z(\CF_Out[0][1] ) );
  XOR2_X1 U7109 ( .A(r[19]), .B(r[20]), .Z(n593) );
  NAND2_X1 U7110 ( .A1(in3[1]), .A2(in2[2]), .ZN(n785) );
  NAND2_X1 U7111 ( .A1(in3[1]), .A2(in1[3]), .ZN(n669) );
  NAND2_X1 U7112 ( .A1(n785), .A2(n669), .ZN(n865) );
  NAND2_X1 U7113 ( .A1(n865), .A2(n591), .ZN(n592) );
  XNOR2_X1 U7114 ( .A(n593), .B(n592), .ZN(n594) );
  XOR2_X1 U7115 ( .A(n877), .B(n594), .Z(\CF_Out[0][19] ) );
  NOR2_X1 U7116 ( .A1(in1[2]), .A2(n845), .ZN(n740) );
  NAND2_X1 U7117 ( .A1(n816), .A2(n740), .ZN(n598) );
  NOR2_X1 U7118 ( .A1(in1[0]), .A2(n740), .ZN(n596) );
  NOR2_X1 U7119 ( .A1(n808), .A2(n816), .ZN(n595) );
  NOR2_X1 U7120 ( .A1(n596), .A2(n595), .ZN(n597) );
  NAND2_X1 U7121 ( .A1(n598), .A2(n597), .ZN(n599) );
  XNOR2_X1 U7122 ( .A(n599), .B(r[19]), .ZN(n600) );
  XOR2_X1 U7123 ( .A(n600), .B(r[18]), .Z(n602) );
  XNOR2_X1 U7124 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(in3[1]), .ZN(n601)
         );
  XNOR2_X1 U7125 ( .A(n602), .B(n601), .ZN(\CF_Out[0][18] ) );
  XNOR2_X1 U7126 ( .A(r[18]), .B(r[17]), .ZN(n608) );
  NAND2_X1 U7127 ( .A1(n792), .A2(in3[0]), .ZN(n603) );
  INV_X1 U7128 ( .A(in2[1]), .ZN(n837) );
  NOR2_X1 U7129 ( .A1(n837), .A2(n809), .ZN(n718) );
  INV_X1 U7130 ( .A(n718), .ZN(n694) );
  NAND2_X1 U7131 ( .A1(n603), .A2(n694), .ZN(n606) );
  NAND2_X1 U7132 ( .A1(in2[3]), .A2(n880), .ZN(n604) );
  NAND2_X1 U7133 ( .A1(n718), .A2(n604), .ZN(n605) );
  NAND2_X1 U7134 ( .A1(n606), .A2(n605), .ZN(n607) );
  XNOR2_X1 U7135 ( .A(n608), .B(n607), .ZN(n609) );
  XNOR2_X1 U7136 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n609), .ZN(
        \CF_Out[0][17] ) );
  NOR2_X1 U7137 ( .A1(in1[2]), .A2(in1[1]), .ZN(n751) );
  NAND2_X1 U7138 ( .A1(in1[3]), .A2(n808), .ZN(n610) );
  NOR2_X1 U7139 ( .A1(n751), .A2(n610), .ZN(n611) );
  NOR2_X1 U7140 ( .A1(n612), .A2(n611), .ZN(n614) );
  NOR2_X1 U7141 ( .A1(in1[1]), .A2(n808), .ZN(n613) );
  NOR2_X1 U7142 ( .A1(n614), .A2(n613), .ZN(n618) );
  XOR2_X1 U7143 ( .A(r[1]), .B(r[0]), .Z(n616) );
  XNOR2_X1 U7144 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(in1[1]), .ZN(n615)
         );
  XNOR2_X1 U7145 ( .A(n616), .B(n615), .ZN(n617) );
  XNOR2_X1 U7146 ( .A(n618), .B(n617), .ZN(\CF_Out[0][0] ) );
  XOR2_X1 U7147 ( .A(r[53]), .B(r[52]), .Z(n620) );
  NAND2_X1 U7148 ( .A1(in1[2]), .A2(n669), .ZN(n619) );
  XNOR2_X1 U7149 ( .A(n620), .B(n619), .ZN(n621) );
  XNOR2_X1 U7150 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[7]), .ZN(n884) );
  XNOR2_X1 U7151 ( .A(n621), .B(n884), .ZN(\CF_Out[1][25] ) );
  XNOR2_X1 U7152 ( .A(r[43]), .B(r[44]), .ZN(n622) );
  NAND2_X1 U7153 ( .A1(in1[3]), .A2(in2[2]), .ZN(n867) );
  NOR2_X1 U7154 ( .A1(n837), .A2(n867), .ZN(n882) );
  XNOR2_X1 U7155 ( .A(n622), .B(n882), .ZN(n623) );
  XNOR2_X1 U7156 ( .A(n623), .B(n884), .ZN(\CF_Out[1][16] ) );
  INV_X1 U7157 ( .A(in2[2]), .ZN(n801) );
  NOR2_X1 U7158 ( .A1(n816), .A2(n801), .ZN(n711) );
  NAND2_X1 U7159 ( .A1(in1[1]), .A2(n711), .ZN(n625) );
  XOR2_X1 U7160 ( .A(r[34]), .B(r[35]), .Z(n624) );
  XNOR2_X1 U7161 ( .A(n625), .B(n624), .ZN(n626) );
  XNOR2_X1 U7162 ( .A(n626), .B(n884), .ZN(\CF_Out[1][7] ) );
  NAND2_X1 U7163 ( .A1(n628), .A2(n627), .ZN(n630) );
  INV_X1 U7164 ( .A(in1[2]), .ZN(n849) );
  NOR2_X1 U7165 ( .A1(n849), .A2(n845), .ZN(n629) );
  NAND2_X1 U7166 ( .A1(n630), .A2(n629), .ZN(n631) );
  XNOR2_X1 U7167 ( .A(n631), .B(n884), .ZN(n633) );
  XOR2_X1 U7168 ( .A(r[26]), .B(r[25]), .Z(n632) );
  XNOR2_X1 U7169 ( .A(n633), .B(n632), .ZN(\CF_Out[0][25] ) );
  XNOR2_X1 U7170 ( .A(r[8]), .B(n884), .ZN(n636) );
  XNOR2_X1 U7171 ( .A(in3[0]), .B(in3[3]), .ZN(n634) );
  NAND2_X1 U7172 ( .A1(in2[2]), .A2(in1[1]), .ZN(n782) );
  NOR2_X1 U7173 ( .A1(n634), .A2(n782), .ZN(n635) );
  XNOR2_X1 U7174 ( .A(n636), .B(n635), .ZN(n637) );
  XNOR2_X1 U7175 ( .A(r[7]), .B(n637), .ZN(\CF_Out[0][7] ) );
  XOR2_X1 U7176 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n841) );
  XNOR2_X1 U7177 ( .A(r[52]), .B(r[51]), .ZN(n641) );
  NAND2_X1 U7178 ( .A1(in2[3]), .A2(in2[2]), .ZN(n651) );
  INV_X1 U7179 ( .A(n651), .ZN(n638) );
  XNOR2_X1 U7180 ( .A(n638), .B(n880), .ZN(n639) );
  NAND2_X1 U7181 ( .A1(in3[1]), .A2(n639), .ZN(n640) );
  XNOR2_X1 U7182 ( .A(n641), .B(n640), .ZN(n642) );
  XNOR2_X1 U7183 ( .A(n841), .B(n642), .ZN(\CF_Out[1][24] ) );
  NOR2_X1 U7184 ( .A1(n849), .A2(n816), .ZN(n835) );
  XNOR2_X1 U7185 ( .A(n880), .B(n835), .ZN(n643) );
  NAND2_X1 U7186 ( .A1(n643), .A2(in2[1]), .ZN(n646) );
  XNOR2_X1 U7187 ( .A(n841), .B(r[42]), .ZN(n644) );
  XNOR2_X1 U7188 ( .A(n644), .B(r[43]), .ZN(n645) );
  XNOR2_X1 U7189 ( .A(n646), .B(n645), .ZN(\CF_Out[1][15] ) );
  NOR2_X1 U7190 ( .A1(n849), .A2(n792), .ZN(n843) );
  XNOR2_X1 U7191 ( .A(n880), .B(n843), .ZN(n647) );
  NAND2_X1 U7192 ( .A1(in1[1]), .A2(n647), .ZN(n648) );
  XOR2_X1 U7193 ( .A(r[34]), .B(n648), .Z(n650) );
  XOR2_X1 U7194 ( .A(n841), .B(r[33]), .Z(n649) );
  XNOR2_X1 U7195 ( .A(n650), .B(n649), .ZN(\CF_Out[1][6] ) );
  XNOR2_X1 U7196 ( .A(r[24]), .B(r[25]), .ZN(n655) );
  NAND2_X1 U7197 ( .A1(in3[0]), .A2(n801), .ZN(n652) );
  NAND2_X1 U7198 ( .A1(n652), .A2(n651), .ZN(n653) );
  NAND2_X1 U7199 ( .A1(n653), .A2(in3[1]), .ZN(n654) );
  XNOR2_X1 U7200 ( .A(n655), .B(n654), .ZN(n656) );
  XNOR2_X1 U7201 ( .A(n841), .B(n656), .ZN(\CF_Out[0][24] ) );
  NAND2_X1 U7202 ( .A1(in1[1]), .A2(n843), .ZN(n657) );
  XOR2_X1 U7203 ( .A(in3[0]), .B(n657), .Z(n658) );
  NOR2_X1 U7204 ( .A1(n751), .A2(n658), .ZN(n659) );
  XOR2_X1 U7205 ( .A(r[7]), .B(n659), .Z(n661) );
  XNOR2_X1 U7206 ( .A(n841), .B(r[6]), .ZN(n660) );
  XNOR2_X1 U7207 ( .A(n661), .B(n660), .ZN(\CF_Out[0][6] ) );
  XOR2_X1 U7208 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n830) );
  XOR2_X1 U7209 ( .A(r[51]), .B(r[50]), .Z(n663) );
  NAND2_X1 U7210 ( .A1(n711), .A2(n845), .ZN(n662) );
  XNOR2_X1 U7211 ( .A(n663), .B(n662), .ZN(n664) );
  XOR2_X1 U7212 ( .A(n830), .B(n664), .Z(\CF_Out[1][23] ) );
  NAND2_X1 U7213 ( .A1(in2[2]), .A2(n837), .ZN(n881) );
  NOR2_X1 U7214 ( .A1(n792), .A2(n881), .ZN(n794) );
  XOR2_X1 U7215 ( .A(r[41]), .B(n794), .Z(n666) );
  XNOR2_X1 U7216 ( .A(r[42]), .B(n830), .ZN(n665) );
  XNOR2_X1 U7217 ( .A(n666), .B(n665), .ZN(\CF_Out[1][14] ) );
  NAND2_X1 U7218 ( .A1(in1[1]), .A2(n835), .ZN(n829) );
  XNOR2_X1 U7219 ( .A(n829), .B(r[32]), .ZN(n668) );
  XNOR2_X1 U7220 ( .A(r[33]), .B(n830), .ZN(n667) );
  XNOR2_X1 U7221 ( .A(n668), .B(n667), .ZN(\CF_Out[1][5] ) );
  XOR2_X1 U7222 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n857) );
  NOR2_X1 U7223 ( .A1(n809), .A2(n669), .ZN(n860) );
  XOR2_X1 U7224 ( .A(n857), .B(n860), .Z(n671) );
  XNOR2_X1 U7225 ( .A(r[49]), .B(r[50]), .ZN(n670) );
  XNOR2_X1 U7226 ( .A(n671), .B(n670), .ZN(\CF_Out[1][22] ) );
  XNOR2_X1 U7227 ( .A(n857), .B(r[40]), .ZN(n673) );
  NAND2_X1 U7228 ( .A1(in1[2]), .A2(in2[1]), .ZN(n851) );
  NOR2_X1 U7229 ( .A1(n851), .A2(n736), .ZN(n672) );
  XNOR2_X1 U7230 ( .A(n673), .B(n672), .ZN(n674) );
  XOR2_X1 U7231 ( .A(r[41]), .B(n674), .Z(\CF_Out[1][13] ) );
  XOR2_X1 U7232 ( .A(n857), .B(r[31]), .Z(n676) );
  NAND2_X1 U7233 ( .A1(n819), .A2(in2[3]), .ZN(n675) );
  XNOR2_X1 U7234 ( .A(n676), .B(n675), .ZN(n677) );
  XOR2_X1 U7235 ( .A(r[32]), .B(n677), .Z(\CF_Out[1][4] ) );
  XNOR2_X1 U7236 ( .A(n857), .B(r[13]), .ZN(n679) );
  XNOR2_X1 U7237 ( .A(in1[3]), .B(in2[0]), .ZN(n705) );
  NOR2_X1 U7238 ( .A1(n851), .A2(n705), .ZN(n678) );
  XNOR2_X1 U7239 ( .A(n679), .B(n678), .ZN(n680) );
  XOR2_X1 U7240 ( .A(r[14]), .B(n680), .Z(\CF_Out[0][13] ) );
  XNOR2_X1 U7241 ( .A(r[4]), .B(n857), .ZN(n684) );
  XNOR2_X1 U7242 ( .A(n792), .B(in2[0]), .ZN(n681) );
  NAND2_X1 U7243 ( .A1(n681), .A2(n819), .ZN(n682) );
  XNOR2_X1 U7244 ( .A(n682), .B(r[5]), .ZN(n683) );
  XNOR2_X1 U7245 ( .A(n684), .B(n683), .ZN(\CF_Out[0][4] ) );
  XNOR2_X1 U7246 ( .A(n843), .B(in2[0]), .ZN(n685) );
  NOR2_X1 U7247 ( .A1(n685), .A2(n845), .ZN(n686) );
  XOR2_X1 U7248 ( .A(r[49]), .B(n686), .Z(n688) );
  XOR2_X1 U7249 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n875) );
  XNOR2_X1 U7250 ( .A(n875), .B(r[48]), .ZN(n687) );
  XNOR2_X1 U7251 ( .A(n688), .B(n687), .ZN(\CF_Out[1][21] ) );
  XNOR2_X1 U7252 ( .A(r[40]), .B(r[39]), .ZN(n692) );
  NOR2_X1 U7253 ( .A1(n816), .A2(n809), .ZN(n689) );
  INV_X1 U7254 ( .A(in2[0]), .ZN(n869) );
  XNOR2_X1 U7255 ( .A(n689), .B(n869), .ZN(n690) );
  NAND2_X1 U7256 ( .A1(in2[1]), .A2(n690), .ZN(n691) );
  XNOR2_X1 U7257 ( .A(n692), .B(n691), .ZN(n693) );
  XNOR2_X1 U7258 ( .A(n875), .B(n693), .ZN(\CF_Out[1][12] ) );
  XNOR2_X1 U7259 ( .A(n875), .B(r[13]), .ZN(n700) );
  NAND2_X1 U7260 ( .A1(in2[1]), .A2(in2[0]), .ZN(n695) );
  NAND2_X1 U7261 ( .A1(n695), .A2(n694), .ZN(n697) );
  NAND2_X1 U7262 ( .A1(n697), .A2(n696), .ZN(n698) );
  XNOR2_X1 U7263 ( .A(n698), .B(r[12]), .ZN(n699) );
  XNOR2_X1 U7264 ( .A(n700), .B(n699), .ZN(\CF_Out[0][12] ) );
  XOR2_X1 U7265 ( .A(r[3]), .B(r[4]), .Z(n703) );
  XOR2_X1 U7266 ( .A(in1[3]), .B(in1[1]), .Z(n701) );
  NAND2_X1 U7267 ( .A1(in2[0]), .A2(n701), .ZN(n702) );
  XNOR2_X1 U7268 ( .A(n703), .B(n702), .ZN(n704) );
  XNOR2_X1 U7269 ( .A(n875), .B(n704), .ZN(n707) );
  NOR2_X1 U7270 ( .A1(n705), .A2(n782), .ZN(n706) );
  XNOR2_X1 U7271 ( .A(n707), .B(n706), .ZN(\CF_Out[0][3] ) );
  XOR2_X1 U7272 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n721) );
  XOR2_X1 U7273 ( .A(r[71]), .B(n721), .Z(n709) );
  NAND2_X1 U7274 ( .A1(in3[3]), .A2(n809), .ZN(n708) );
  XNOR2_X1 U7275 ( .A(n709), .B(n708), .ZN(n710) );
  XOR2_X1 U7276 ( .A(r[63]), .B(n710), .Z(\CF_Out34[3][8] ) );
  XOR2_X1 U7277 ( .A(r[69]), .B(r[68]), .Z(n713) );
  XNOR2_X1 U7278 ( .A(n711), .B(n721), .ZN(n712) );
  XNOR2_X1 U7279 ( .A(n713), .B(n712), .ZN(\CF_Out34[3][5] ) );
  XOR2_X1 U7280 ( .A(r[66]), .B(r[65]), .Z(n715) );
  XNOR2_X1 U7281 ( .A(n835), .B(n721), .ZN(n714) );
  XNOR2_X1 U7282 ( .A(n715), .B(n714), .ZN(\CF_Out34[3][2] ) );
  XNOR2_X1 U7283 ( .A(r[62]), .B(r[54]), .ZN(n717) );
  XNOR2_X1 U7284 ( .A(n858), .B(n721), .ZN(n716) );
  XNOR2_X1 U7285 ( .A(n717), .B(n716), .ZN(\CF_Out34[2][8] ) );
  XOR2_X1 U7286 ( .A(r[60]), .B(r[59]), .Z(n720) );
  XNOR2_X1 U7287 ( .A(n718), .B(n721), .ZN(n719) );
  XNOR2_X1 U7288 ( .A(n720), .B(n719), .ZN(\CF_Out34[2][5] ) );
  XOR2_X1 U7289 ( .A(r[57]), .B(r[56]), .Z(n723) );
  XNOR2_X1 U7290 ( .A(n819), .B(n721), .ZN(n722) );
  XNOR2_X1 U7291 ( .A(n723), .B(n722), .ZN(\CF_Out34[2][2] ) );
  NAND2_X1 U7292 ( .A1(in2[1]), .A2(n849), .ZN(n746) );
  NAND2_X1 U7293 ( .A1(n808), .A2(n746), .ZN(n725) );
  NAND2_X1 U7294 ( .A1(n792), .A2(n851), .ZN(n724) );
  NAND2_X1 U7295 ( .A1(n725), .A2(n724), .ZN(n728) );
  NAND2_X1 U7296 ( .A1(in2[1]), .A2(in2[3]), .ZN(n726) );
  NOR2_X1 U7297 ( .A1(n808), .A2(n726), .ZN(n727) );
  NOR2_X1 U7298 ( .A1(n728), .A2(n727), .ZN(n729) );
  XOR2_X1 U7299 ( .A(n729), .B(r[11]), .Z(n731) );
  XNOR2_X1 U7300 ( .A(n877), .B(r[10]), .ZN(n730) );
  XNOR2_X1 U7301 ( .A(n731), .B(n730), .ZN(\CF_Out[0][10] ) );
  XNOR2_X1 U7302 ( .A(n877), .B(r[69]), .ZN(n735) );
  XOR2_X1 U7303 ( .A(in3[0]), .B(r[70]), .Z(n733) );
  NAND2_X1 U7304 ( .A1(in3[2]), .A2(n736), .ZN(n732) );
  XNOR2_X1 U7305 ( .A(n733), .B(n732), .ZN(n734) );
  XNOR2_X1 U7306 ( .A(n735), .B(n734), .ZN(\CF_Out34[3][6] ) );
  XOR2_X1 U7307 ( .A(r[66]), .B(r[67]), .Z(n738) );
  NAND2_X1 U7308 ( .A1(in2[2]), .A2(n736), .ZN(n737) );
  XNOR2_X1 U7309 ( .A(n738), .B(n737), .ZN(n739) );
  XNOR2_X1 U7310 ( .A(in2[0]), .B(n877), .ZN(n853) );
  XNOR2_X1 U7311 ( .A(n739), .B(n853), .ZN(\CF_Out34[3][3] ) );
  XOR2_X1 U7312 ( .A(r[61]), .B(r[60]), .Z(n742) );
  XNOR2_X1 U7313 ( .A(in3[3]), .B(n740), .ZN(n741) );
  XNOR2_X1 U7314 ( .A(n742), .B(n741), .ZN(n743) );
  XOR2_X1 U7315 ( .A(n877), .B(n743), .Z(\CF_Out34[2][6] ) );
  XOR2_X1 U7316 ( .A(r[58]), .B(r[57]), .Z(n745) );
  XNOR2_X1 U7317 ( .A(in2[3]), .B(n877), .ZN(n744) );
  XNOR2_X1 U7318 ( .A(n745), .B(n744), .ZN(n747) );
  XNOR2_X1 U7319 ( .A(n747), .B(n746), .ZN(\CF_Out34[2][3] ) );
  XOR2_X1 U7320 ( .A(r[55]), .B(r[54]), .Z(n749) );
  XNOR2_X1 U7321 ( .A(in1[3]), .B(n877), .ZN(n748) );
  XNOR2_X1 U7322 ( .A(n749), .B(n748), .ZN(n750) );
  XOR2_X1 U7323 ( .A(n751), .B(n750), .Z(\CF_Out34[2][0] ) );
  XOR2_X2 U7324 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n821) );
  XNOR2_X1 U7325 ( .A(r[48]), .B(n821), .ZN(n755) );
  NAND2_X1 U7326 ( .A1(n792), .A2(n809), .ZN(n752) );
  NAND2_X1 U7327 ( .A1(n752), .A2(in3[1]), .ZN(n753) );
  XNOR2_X1 U7328 ( .A(n753), .B(r[47]), .ZN(n754) );
  XNOR2_X1 U7329 ( .A(n755), .B(n754), .ZN(\CF_Out[1][20] ) );
  XNOR2_X1 U7330 ( .A(r[38]), .B(n821), .ZN(n759) );
  NAND2_X1 U7331 ( .A1(n801), .A2(n816), .ZN(n756) );
  NAND2_X1 U7332 ( .A1(n756), .A2(in2[1]), .ZN(n757) );
  XNOR2_X1 U7333 ( .A(n757), .B(r[39]), .ZN(n758) );
  XNOR2_X1 U7334 ( .A(n759), .B(n758), .ZN(\CF_Out[1][11] ) );
  XNOR2_X1 U7335 ( .A(r[3]), .B(n821), .ZN(n760) );
  XNOR2_X1 U7336 ( .A(n760), .B(r[2]), .ZN(n765) );
  NOR2_X1 U7337 ( .A1(in3[3]), .A2(in3[2]), .ZN(n761) );
  NOR2_X1 U7338 ( .A1(n868), .A2(n761), .ZN(n763) );
  NAND2_X1 U7339 ( .A1(n763), .A2(n766), .ZN(n762) );
  NAND2_X1 U7340 ( .A1(n765), .A2(n762), .ZN(n769) );
  INV_X1 U7341 ( .A(n763), .ZN(n764) );
  NOR2_X1 U7342 ( .A1(n765), .A2(n764), .ZN(n767) );
  NAND2_X1 U7343 ( .A1(n767), .A2(n766), .ZN(n768) );
  NAND2_X1 U7344 ( .A1(n769), .A2(n768), .ZN(\CF_Out[0][2] ) );
  XOR2_X1 U7345 ( .A(r[71]), .B(r[70]), .Z(n771) );
  NAND2_X1 U7346 ( .A1(in2[3]), .A2(in3[2]), .ZN(n770) );
  XNOR2_X1 U7347 ( .A(n771), .B(n770), .ZN(n772) );
  XOR2_X1 U7348 ( .A(n821), .B(n772), .Z(\CF_Out34[3][7] ) );
  XOR2_X1 U7349 ( .A(r[68]), .B(r[67]), .Z(n774) );
  NAND2_X1 U7350 ( .A1(in2[3]), .A2(n801), .ZN(n773) );
  XNOR2_X1 U7351 ( .A(n774), .B(n773), .ZN(n775) );
  XOR2_X1 U7352 ( .A(n821), .B(n775), .Z(\CF_Out34[3][4] ) );
  XOR2_X1 U7353 ( .A(r[64]), .B(r[65]), .Z(n777) );
  XNOR2_X1 U7354 ( .A(n843), .B(n821), .ZN(n776) );
  XNOR2_X1 U7355 ( .A(n777), .B(n776), .ZN(\CF_Out34[3][1] ) );
  XNOR2_X1 U7356 ( .A(r[62]), .B(r[61]), .ZN(n779) );
  XNOR2_X1 U7357 ( .A(n785), .B(n821), .ZN(n778) );
  XNOR2_X1 U7358 ( .A(n779), .B(n778), .ZN(\CF_Out34[2][7] ) );
  XNOR2_X1 U7359 ( .A(r[59]), .B(r[58]), .ZN(n781) );
  XNOR2_X1 U7360 ( .A(n881), .B(n821), .ZN(n780) );
  XNOR2_X1 U7361 ( .A(n781), .B(n780), .ZN(\CF_Out34[2][4] ) );
  XNOR2_X1 U7362 ( .A(r[56]), .B(r[55]), .ZN(n784) );
  XNOR2_X1 U7363 ( .A(n782), .B(n821), .ZN(n783) );
  XNOR2_X1 U7364 ( .A(n784), .B(n783), .ZN(\CF_Out34[2][1] ) );
  NAND2_X1 U7365 ( .A1(n816), .A2(n869), .ZN(n788) );
  NAND2_X1 U7366 ( .A1(in3[3]), .A2(in2[0]), .ZN(n786) );
  NAND2_X1 U7367 ( .A1(n786), .A2(n785), .ZN(n787) );
  NAND2_X1 U7368 ( .A1(n788), .A2(n787), .ZN(n789) );
  XNOR2_X1 U7369 ( .A(n789), .B(r[24]), .ZN(n791) );
  XNOR2_X1 U7370 ( .A(r[23]), .B(n830), .ZN(n790) );
  XNOR2_X1 U7371 ( .A(n791), .B(n790), .ZN(n13485) );
  XNOR2_X1 U7372 ( .A(n830), .B(r[15]), .ZN(n800) );
  NAND2_X1 U7373 ( .A1(in2[1]), .A2(n792), .ZN(n793) );
  NAND2_X1 U7374 ( .A1(in2[0]), .A2(n793), .ZN(n797) );
  NOR2_X1 U7375 ( .A1(n795), .A2(n794), .ZN(n796) );
  NAND2_X1 U7376 ( .A1(n797), .A2(n796), .ZN(n798) );
  XNOR2_X1 U7377 ( .A(r[14]), .B(n798), .ZN(n799) );
  XNOR2_X1 U7378 ( .A(n800), .B(n799), .ZN(n13484) );
  XNOR2_X1 U7379 ( .A(n821), .B(r[12]), .ZN(n806) );
  NOR2_X1 U7380 ( .A1(n808), .A2(n881), .ZN(n804) );
  NAND2_X1 U7381 ( .A1(in2[1]), .A2(n801), .ZN(n802) );
  NOR2_X1 U7382 ( .A1(n816), .A2(n802), .ZN(n803) );
  NOR2_X1 U7383 ( .A1(n804), .A2(n803), .ZN(n805) );
  XNOR2_X1 U7384 ( .A(n806), .B(n805), .ZN(n807) );
  XNOR2_X1 U7385 ( .A(r[11]), .B(n807), .ZN(n13483) );
  XNOR2_X1 U7386 ( .A(r[20]), .B(r[21]), .ZN(n814) );
  NOR2_X1 U7387 ( .A1(n808), .A2(n858), .ZN(n812) );
  NAND2_X1 U7388 ( .A1(in2[3]), .A2(n809), .ZN(n810) );
  NOR2_X1 U7389 ( .A1(n845), .A2(n810), .ZN(n811) );
  NOR2_X1 U7390 ( .A1(n812), .A2(n811), .ZN(n813) );
  XNOR2_X1 U7391 ( .A(n814), .B(n813), .ZN(n815) );
  XNOR2_X1 U7392 ( .A(n821), .B(n815), .ZN(n13482) );
  NOR2_X1 U7393 ( .A1(n816), .A2(n868), .ZN(n817) );
  NOR2_X1 U7394 ( .A1(in3[2]), .A2(n817), .ZN(n818) );
  NOR2_X1 U7395 ( .A1(n819), .A2(n818), .ZN(n820) );
  XOR2_X1 U7396 ( .A(n820), .B(r[29]), .Z(n823) );
  XNOR2_X1 U7397 ( .A(n821), .B(r[30]), .ZN(n822) );
  XNOR2_X1 U7398 ( .A(n823), .B(n822), .ZN(n13481) );
  XOR2_X1 U7399 ( .A(r[29]), .B(n824), .Z(n826) );
  XNOR2_X1 U7400 ( .A(n877), .B(r[28]), .ZN(n825) );
  XNOR2_X1 U7401 ( .A(n826), .B(n825), .ZN(n13480) );
  NOR2_X1 U7402 ( .A1(in1[1]), .A2(n849), .ZN(n827) );
  NAND2_X1 U7403 ( .A1(in2[0]), .A2(n827), .ZN(n828) );
  NAND2_X1 U7404 ( .A1(n829), .A2(n828), .ZN(n832) );
  XOR2_X1 U7405 ( .A(n830), .B(r[5]), .Z(n831) );
  XNOR2_X1 U7406 ( .A(n832), .B(n831), .ZN(n833) );
  XNOR2_X1 U7407 ( .A(r[6]), .B(n833), .ZN(n13479) );
  NOR2_X1 U7408 ( .A1(in1[2]), .A2(n880), .ZN(n834) );
  NOR2_X1 U7409 ( .A1(n835), .A2(n834), .ZN(n836) );
  NOR2_X1 U7410 ( .A1(n837), .A2(n836), .ZN(n839) );
  XOR2_X1 U7411 ( .A(r[15]), .B(r[16]), .Z(n838) );
  XNOR2_X1 U7412 ( .A(n839), .B(n838), .ZN(n840) );
  XNOR2_X1 U7413 ( .A(n841), .B(n840), .ZN(n13478) );
  NOR2_X1 U7414 ( .A1(in1[2]), .A2(n869), .ZN(n842) );
  NOR2_X1 U7415 ( .A1(n843), .A2(n842), .ZN(n844) );
  NOR2_X1 U7416 ( .A1(n845), .A2(n844), .ZN(n847) );
  XOR2_X1 U7417 ( .A(r[21]), .B(r[22]), .Z(n846) );
  XNOR2_X1 U7418 ( .A(n847), .B(n846), .ZN(n848) );
  XNOR2_X1 U7419 ( .A(n875), .B(n848), .ZN(n13477) );
  XNOR2_X1 U7420 ( .A(r[37]), .B(r[38]), .ZN(n856) );
  NAND2_X1 U7421 ( .A1(n850), .A2(n849), .ZN(n852) );
  NAND2_X1 U7422 ( .A1(n852), .A2(n851), .ZN(n854) );
  XNOR2_X1 U7423 ( .A(n854), .B(n853), .ZN(n855) );
  XNOR2_X1 U7424 ( .A(n856), .B(n855), .ZN(n13476) );
  XNOR2_X1 U7425 ( .A(n857), .B(r[22]), .ZN(n862) );
  NOR2_X1 U7426 ( .A1(n858), .A2(n869), .ZN(n859) );
  NOR2_X1 U7427 ( .A1(n860), .A2(n859), .ZN(n861) );
  XNOR2_X1 U7428 ( .A(n862), .B(n861), .ZN(n863) );
  XNOR2_X1 U7429 ( .A(r[23]), .B(n863), .ZN(n13475) );
  XOR2_X1 U7430 ( .A(n877), .B(r[47]), .Z(n864) );
  XNOR2_X1 U7431 ( .A(n865), .B(n864), .ZN(n866) );
  XNOR2_X1 U7432 ( .A(r[46]), .B(n866), .ZN(n13474) );
  XNOR2_X1 U7433 ( .A(r[31]), .B(r[30]), .ZN(n873) );
  NOR2_X1 U7434 ( .A1(in1[1]), .A2(n867), .ZN(n871) );
  NOR2_X1 U7435 ( .A1(n869), .A2(n868), .ZN(n870) );
  NOR2_X1 U7436 ( .A1(n871), .A2(n870), .ZN(n872) );
  XNOR2_X1 U7437 ( .A(n873), .B(n872), .ZN(n874) );
  XNOR2_X1 U7438 ( .A(n875), .B(n874), .ZN(n13473) );
  XOR2_X1 U7439 ( .A(r[64]), .B(r[63]), .Z(n879) );
  XNOR2_X1 U7440 ( .A(n877), .B(n876), .ZN(n878) );
  XNOR2_X1 U7441 ( .A(n879), .B(n878), .ZN(n13472) );
  NOR2_X1 U7442 ( .A1(n881), .A2(n880), .ZN(n883) );
  NOR2_X1 U7443 ( .A1(n883), .A2(n882), .ZN(n885) );
  XNOR2_X1 U7444 ( .A(n885), .B(n884), .ZN(n887) );
  XOR2_X1 U7445 ( .A(r[17]), .B(r[16]), .Z(n886) );
  XNOR2_X1 U7446 ( .A(n887), .B(n886), .ZN(n13471) );
endmodule


module SKINNY_SBOX_1 ( clk, in1, in2, in3, TwoSharesFromNeighbouringSbox, r, 
        out1, out2, out3 );
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [7:0] TwoSharesFromNeighbouringSbox;
  input [71:0] r;
  output [3:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  input clk;
  wire   \CF_Out[1][26] , \CF_Out[1][25] , \CF_Out[1][24] , \CF_Out[1][23] ,
         \CF_Out[1][22] , \CF_Out[1][21] , \CF_Out[1][20] , \CF_Out[1][18] ,
         \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] , \CF_Out[1][14] ,
         \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][11] , \CF_Out[1][9] ,
         \CF_Out[1][8] , \CF_Out[1][7] , \CF_Out[1][6] , \CF_Out[1][5] ,
         \CF_Out[1][4] , \CF_Out[1][0] , \CF_Out[0][26] , \CF_Out[0][25] ,
         \CF_Out[0][24] , \CF_Out[0][19] , \CF_Out[0][18] , \CF_Out[0][17] ,
         \CF_Out[0][13] , \CF_Out[0][12] , \CF_Out[0][10] , \CF_Out[0][9] ,
         \CF_Out[0][8] , \CF_Out[0][7] , \CF_Out[0][6] , \CF_Out[0][4] ,
         \CF_Out[0][3] , \CF_Out[0][2] , \CF_Out[0][1] , \CF_Out[0][0] ,
         \CF_Out34[3][8] , \CF_Out34[3][7] , \CF_Out34[3][6] ,
         \CF_Out34[3][5] , \CF_Out34[3][4] , \CF_Out34[3][3] ,
         \CF_Out34[3][2] , \CF_Out34[3][1] , \CF_Out34[2][8] ,
         \CF_Out34[2][7] , \CF_Out34[2][6] , \CF_Out34[2][5] ,
         \CF_Out34[2][4] , \CF_Out34[2][3] , \CF_Out34[2][2] ,
         \CF_Out34[2][1] , \CF_Out34[2][0] , n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n13471, n13472, n13473, n13474, n13475, n13476, n13477, n13478,
         n13479, n13480, n13481, n13482, n13483, n13484, n13485, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899;

  DFF_X1 \CF_Reg_reg[1][26]  ( .D(\CF_Out[1][26] ), .CK(clk), .QN(n449) );
  DFF_X1 \CF_Reg_reg[1][25]  ( .D(\CF_Out[1][25] ), .CK(clk), .Q(n447) );
  DFF_X1 \CF_Reg_reg[1][24]  ( .D(\CF_Out[1][24] ), .CK(clk), .QN(n504) );
  DFF_X1 \CF_Reg_reg[1][23]  ( .D(\CF_Out[1][23] ), .CK(clk), .Q(n446) );
  DFF_X1 \CF_Reg_reg[1][22]  ( .D(\CF_Out[1][22] ), .CK(clk), .Q(n445) );
  DFF_X1 \CF_Reg_reg[1][21]  ( .D(\CF_Out[1][21] ), .CK(clk), .Q(n448) );
  DFF_X1 \CF_Reg_reg[1][20]  ( .D(\CF_Out[1][20] ), .CK(clk), .Q(n444) );
  DFF_X1 \CF_Reg_reg[1][19]  ( .D(n13474), .CK(clk), .Q(n442) );
  DFF_X1 \CF_Reg_reg[1][18]  ( .D(\CF_Out[1][18] ), .CK(clk), .Q(n443) );
  DFF_X1 \CF_Reg_reg[1][17]  ( .D(\CF_Out[1][17] ), .CK(clk), .QN(n469) );
  DFF_X1 \CF_Reg_reg[1][16]  ( .D(\CF_Out[1][16] ), .CK(clk), .Q(n467) );
  DFF_X1 \CF_Reg_reg[1][15]  ( .D(\CF_Out[1][15] ), .CK(clk), .QN(n505) );
  DFF_X1 \CF_Reg_reg[1][14]  ( .D(\CF_Out[1][14] ), .CK(clk), .Q(n466) );
  DFF_X1 \CF_Reg_reg[1][13]  ( .D(\CF_Out[1][13] ), .CK(clk), .Q(n465) );
  DFF_X1 \CF_Reg_reg[1][12]  ( .D(\CF_Out[1][12] ), .CK(clk), .Q(n468) );
  DFF_X1 \CF_Reg_reg[1][11]  ( .D(\CF_Out[1][11] ), .CK(clk), .Q(n464) );
  DFF_X1 \CF_Reg_reg[1][10]  ( .D(n13476), .CK(clk), .Q(n462) );
  DFF_X1 \CF_Reg_reg[1][9]  ( .D(\CF_Out[1][9] ), .CK(clk), .Q(n463) );
  DFF_X1 \CF_Reg_reg[1][8]  ( .D(\CF_Out[1][8] ), .CK(clk), .QN(n489) );
  DFF_X1 \CF_Reg_reg[1][7]  ( .D(\CF_Out[1][7] ), .CK(clk), .Q(n487) );
  DFF_X1 \CF_Reg_reg[1][6]  ( .D(\CF_Out[1][6] ), .CK(clk), .QN(n506) );
  DFF_X1 \CF_Reg_reg[1][5]  ( .D(\CF_Out[1][5] ), .CK(clk), .Q(n486) );
  DFF_X1 \CF_Reg_reg[1][4]  ( .D(\CF_Out[1][4] ), .CK(clk), .Q(n485) );
  DFF_X1 \CF_Reg_reg[1][3]  ( .D(n13473), .CK(clk), .Q(n488) );
  DFF_X1 \CF_Reg_reg[1][2]  ( .D(n13481), .CK(clk), .Q(n484) );
  DFF_X1 \CF_Reg_reg[1][1]  ( .D(n13480), .CK(clk), .Q(n482) );
  DFF_X1 \CF_Reg_reg[1][0]  ( .D(\CF_Out[1][0] ), .CK(clk), .Q(n483) );
  DFF_X1 \CF_Reg_reg[0][26]  ( .D(\CF_Out[0][26] ), .CK(clk), .QN(n457) );
  DFF_X1 \CF_Reg_reg[0][25]  ( .D(\CF_Out[0][25] ), .CK(clk), .Q(n455) );
  DFF_X1 \CF_Reg_reg[0][24]  ( .D(\CF_Out[0][24] ), .CK(clk), .QN(n507) );
  DFF_X1 \CF_Reg_reg[0][23]  ( .D(n13485), .CK(clk), .Q(n454) );
  DFF_X1 \CF_Reg_reg[0][22]  ( .D(n13475), .CK(clk), .Q(n453) );
  DFF_X1 \CF_Reg_reg[0][21]  ( .D(n13477), .CK(clk), .Q(n456) );
  DFF_X1 \CF_Reg_reg[0][20]  ( .D(n13482), .CK(clk), .Q(n452) );
  DFF_X1 \CF_Reg_reg[0][19]  ( .D(\CF_Out[0][19] ), .CK(clk), .Q(n450) );
  DFF_X1 \CF_Reg_reg[0][18]  ( .D(\CF_Out[0][18] ), .CK(clk), .Q(n451) );
  DFF_X1 \CF_Reg_reg[0][17]  ( .D(\CF_Out[0][17] ), .CK(clk), .QN(n477) );
  DFF_X1 \CF_Reg_reg[0][16]  ( .D(n13471), .CK(clk), .Q(n475) );
  DFF_X1 \CF_Reg_reg[0][15]  ( .D(n13478), .CK(clk), .QN(n508) );
  DFF_X1 \CF_Reg_reg[0][14]  ( .D(n13484), .CK(clk), .Q(n474) );
  DFF_X1 \CF_Reg_reg[0][13]  ( .D(\CF_Out[0][13] ), .CK(clk), .Q(n473) );
  DFF_X1 \CF_Reg_reg[0][12]  ( .D(\CF_Out[0][12] ), .CK(clk), .Q(n476) );
  DFF_X1 \CF_Reg_reg[0][11]  ( .D(n13483), .CK(clk), .Q(n472) );
  DFF_X1 \CF_Reg_reg[0][10]  ( .D(\CF_Out[0][10] ), .CK(clk), .Q(n470) );
  DFF_X1 \CF_Reg_reg[0][9]  ( .D(\CF_Out[0][9] ), .CK(clk), .Q(n471) );
  DFF_X1 \CF_Reg_reg[0][8]  ( .D(\CF_Out[0][8] ), .CK(clk), .QN(n497) );
  DFF_X1 \CF_Reg_reg[0][7]  ( .D(\CF_Out[0][7] ), .CK(clk), .Q(n495) );
  DFF_X1 \CF_Reg_reg[0][6]  ( .D(\CF_Out[0][6] ), .CK(clk), .QN(n509) );
  DFF_X1 \CF_Reg_reg[0][5]  ( .D(n13479), .CK(clk), .Q(n494) );
  DFF_X1 \CF_Reg_reg[0][4]  ( .D(\CF_Out[0][4] ), .CK(clk), .Q(n493) );
  DFF_X1 \CF_Reg_reg[0][3]  ( .D(\CF_Out[0][3] ), .CK(clk), .Q(n496) );
  DFF_X1 \CF_Reg_reg[0][2]  ( .D(\CF_Out[0][2] ), .CK(clk), .Q(n492) );
  DFF_X1 \CF_Reg_reg[0][1]  ( .D(\CF_Out[0][1] ), .CK(clk), .Q(n490) );
  DFF_X1 \CF_Reg_reg[0][0]  ( .D(\CF_Out[0][0] ), .CK(clk), .Q(n491) );
  DFF_X1 \CF_Reg34_reg[3][8]  ( .D(\CF_Out34[3][8] ), .CK(clk), .Q(n438) );
  DFF_X1 \CF_Reg34_reg[3][7]  ( .D(\CF_Out34[3][7] ), .CK(clk), .QN(n498) );
  DFF_X1 \CF_Reg34_reg[3][6]  ( .D(\CF_Out34[3][6] ), .CK(clk), .QN(n439) );
  DFF_X1 \CF_Reg34_reg[3][5]  ( .D(\CF_Out34[3][5] ), .CK(clk), .Q(n458) );
  DFF_X1 \CF_Reg34_reg[3][4]  ( .D(\CF_Out34[3][4] ), .CK(clk), .QN(n499) );
  DFF_X1 \CF_Reg34_reg[3][3]  ( .D(\CF_Out34[3][3] ), .CK(clk), .QN(n459) );
  DFF_X1 \CF_Reg34_reg[3][2]  ( .D(\CF_Out34[3][2] ), .CK(clk), .Q(n478) );
  DFF_X1 \CF_Reg34_reg[3][1]  ( .D(\CF_Out34[3][1] ), .CK(clk), .QN(n500) );
  DFF_X1 \CF_Reg34_reg[3][0]  ( .D(n13472), .CK(clk), .QN(n479) );
  DFF_X1 \CF_Reg34_reg[2][8]  ( .D(\CF_Out34[2][8] ), .CK(clk), .Q(n440) );
  DFF_X1 \CF_Reg34_reg[2][7]  ( .D(\CF_Out34[2][7] ), .CK(clk), .QN(n501) );
  DFF_X1 \CF_Reg34_reg[2][6]  ( .D(\CF_Out34[2][6] ), .CK(clk), .QN(n441) );
  DFF_X1 \CF_Reg34_reg[2][5]  ( .D(\CF_Out34[2][5] ), .CK(clk), .Q(n460) );
  DFF_X1 \CF_Reg34_reg[2][4]  ( .D(\CF_Out34[2][4] ), .CK(clk), .QN(n502) );
  DFF_X1 \CF_Reg34_reg[2][3]  ( .D(\CF_Out34[2][3] ), .CK(clk), .QN(n461) );
  DFF_X1 \CF_Reg34_reg[2][2]  ( .D(\CF_Out34[2][2] ), .CK(clk), .Q(n480) );
  DFF_X1 \CF_Reg34_reg[2][1]  ( .D(\CF_Out34[2][1] ), .CK(clk), .QN(n503) );
  DFF_X1 \CF_Reg34_reg[2][0]  ( .D(\CF_Out34[2][0] ), .CK(clk), .QN(n481) );
  XOR2_X2 U6973 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n889) );
  XNOR2_X1 U6974 ( .A(n498), .B(n439), .ZN(n510) );
  XNOR2_X1 U6975 ( .A(n510), .B(n438), .ZN(out3[3]) );
  XNOR2_X1 U6976 ( .A(n501), .B(n441), .ZN(n511) );
  XNOR2_X1 U6977 ( .A(n511), .B(n440), .ZN(out3[2]) );
  XNOR2_X1 U6978 ( .A(n449), .B(n504), .ZN(n518) );
  XOR2_X1 U6979 ( .A(n444), .B(n447), .Z(n513) );
  XNOR2_X1 U6980 ( .A(n443), .B(n442), .ZN(n512) );
  XNOR2_X1 U6981 ( .A(n513), .B(n512), .ZN(n514) );
  XOR2_X1 U6982 ( .A(n514), .B(n445), .Z(n516) );
  XNOR2_X1 U6983 ( .A(n446), .B(n448), .ZN(n515) );
  XNOR2_X1 U6984 ( .A(n516), .B(n515), .ZN(n517) );
  XNOR2_X1 U6985 ( .A(n518), .B(n517), .ZN(out3[1]) );
  XNOR2_X1 U6986 ( .A(n457), .B(n507), .ZN(n525) );
  XOR2_X1 U6987 ( .A(n452), .B(n455), .Z(n520) );
  XNOR2_X1 U6988 ( .A(n451), .B(n450), .ZN(n519) );
  XNOR2_X1 U6989 ( .A(n520), .B(n519), .ZN(n521) );
  XOR2_X1 U6990 ( .A(n521), .B(n453), .Z(n523) );
  XNOR2_X1 U6991 ( .A(n454), .B(n456), .ZN(n522) );
  XNOR2_X1 U6992 ( .A(n523), .B(n522), .ZN(n524) );
  XNOR2_X1 U6993 ( .A(n525), .B(n524), .ZN(out3[0]) );
  XNOR2_X1 U6994 ( .A(n499), .B(n459), .ZN(n526) );
  XNOR2_X1 U6995 ( .A(n526), .B(n458), .ZN(out2[3]) );
  XNOR2_X1 U6996 ( .A(n502), .B(n461), .ZN(n527) );
  XNOR2_X1 U6997 ( .A(n527), .B(n460), .ZN(out2[2]) );
  XNOR2_X1 U6998 ( .A(n469), .B(n505), .ZN(n534) );
  XOR2_X1 U6999 ( .A(n464), .B(n467), .Z(n529) );
  XNOR2_X1 U7000 ( .A(n463), .B(n462), .ZN(n528) );
  XNOR2_X1 U7001 ( .A(n529), .B(n528), .ZN(n530) );
  XOR2_X1 U7002 ( .A(n530), .B(n465), .Z(n532) );
  XNOR2_X1 U7003 ( .A(n466), .B(n468), .ZN(n531) );
  XNOR2_X1 U7004 ( .A(n532), .B(n531), .ZN(n533) );
  XNOR2_X1 U7005 ( .A(n534), .B(n533), .ZN(out2[1]) );
  XNOR2_X1 U7006 ( .A(n477), .B(n508), .ZN(n541) );
  XOR2_X1 U7007 ( .A(n472), .B(n475), .Z(n536) );
  XNOR2_X1 U7008 ( .A(n471), .B(n470), .ZN(n535) );
  XNOR2_X1 U7009 ( .A(n536), .B(n535), .ZN(n537) );
  XOR2_X1 U7010 ( .A(n537), .B(n473), .Z(n539) );
  XNOR2_X1 U7011 ( .A(n474), .B(n476), .ZN(n538) );
  XNOR2_X1 U7012 ( .A(n539), .B(n538), .ZN(n540) );
  XNOR2_X1 U7013 ( .A(n541), .B(n540), .ZN(out2[0]) );
  XNOR2_X1 U7014 ( .A(n500), .B(n479), .ZN(n542) );
  XNOR2_X1 U7015 ( .A(n542), .B(n478), .ZN(out1[3]) );
  XNOR2_X1 U7016 ( .A(n503), .B(n481), .ZN(n543) );
  XNOR2_X1 U7017 ( .A(n543), .B(n480), .ZN(out1[2]) );
  XNOR2_X1 U7018 ( .A(n489), .B(n506), .ZN(n550) );
  XOR2_X1 U7019 ( .A(n484), .B(n487), .Z(n545) );
  XNOR2_X1 U7020 ( .A(n483), .B(n482), .ZN(n544) );
  XNOR2_X1 U7021 ( .A(n545), .B(n544), .ZN(n546) );
  XOR2_X1 U7022 ( .A(n546), .B(n485), .Z(n548) );
  XNOR2_X1 U7023 ( .A(n486), .B(n488), .ZN(n547) );
  XNOR2_X1 U7024 ( .A(n548), .B(n547), .ZN(n549) );
  XNOR2_X1 U7025 ( .A(n550), .B(n549), .ZN(out1[1]) );
  XNOR2_X1 U7026 ( .A(n497), .B(n509), .ZN(n557) );
  XOR2_X1 U7027 ( .A(n492), .B(n495), .Z(n552) );
  XNOR2_X1 U7028 ( .A(n491), .B(n490), .ZN(n551) );
  XNOR2_X1 U7029 ( .A(n552), .B(n551), .ZN(n553) );
  XOR2_X1 U7030 ( .A(n553), .B(n493), .Z(n555) );
  XNOR2_X1 U7031 ( .A(n494), .B(n496), .ZN(n554) );
  XNOR2_X1 U7032 ( .A(n555), .B(n554), .ZN(n556) );
  XNOR2_X1 U7033 ( .A(n557), .B(n556), .ZN(out1[0]) );
  INV_X1 U7034 ( .A(in3[2]), .ZN(n821) );
  XOR2_X1 U7035 ( .A(in1[0]), .B(in1[3]), .Z(n558) );
  NAND2_X1 U7036 ( .A1(n821), .A2(n558), .ZN(n583) );
  INV_X1 U7037 ( .A(in1[0]), .ZN(n820) );
  NAND2_X1 U7038 ( .A1(in3[2]), .A2(n820), .ZN(n778) );
  NAND2_X1 U7039 ( .A1(n583), .A2(n778), .ZN(n559) );
  NAND2_X1 U7040 ( .A1(n559), .A2(in2[1]), .ZN(n562) );
  XNOR2_X1 U7041 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[37]), .ZN(n560)
         );
  XNOR2_X1 U7042 ( .A(n560), .B(r[36]), .ZN(n561) );
  XNOR2_X1 U7043 ( .A(n562), .B(n561), .ZN(\CF_Out[1][9] ) );
  XNOR2_X1 U7044 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[35]), .ZN(n565)
         );
  INV_X1 U7045 ( .A(in1[1]), .ZN(n880) );
  NAND2_X1 U7046 ( .A1(in1[3]), .A2(n880), .ZN(n563) );
  NOR2_X1 U7047 ( .A1(n563), .A2(n821), .ZN(n564) );
  XNOR2_X1 U7048 ( .A(n565), .B(n564), .ZN(n566) );
  XOR2_X1 U7049 ( .A(r[36]), .B(n566), .Z(\CF_Out[1][8] ) );
  XOR2_X1 U7050 ( .A(r[53]), .B(r[27]), .Z(n568) );
  XNOR2_X1 U7051 ( .A(in3[0]), .B(TwoSharesFromNeighbouringSbox[7]), .ZN(n567)
         );
  XNOR2_X1 U7052 ( .A(n568), .B(n567), .ZN(n569) );
  INV_X1 U7053 ( .A(in3[1]), .ZN(n857) );
  NAND2_X1 U7054 ( .A1(in3[2]), .A2(n857), .ZN(n870) );
  NAND2_X1 U7055 ( .A1(in3[3]), .A2(n870), .ZN(n594) );
  XNOR2_X1 U7056 ( .A(n569), .B(n594), .ZN(\CF_Out[1][26] ) );
  XOR2_X1 U7057 ( .A(in1[2]), .B(in1[0]), .Z(n570) );
  NAND2_X1 U7058 ( .A1(in3[1]), .A2(n570), .ZN(n571) );
  XOR2_X1 U7059 ( .A(in3[3]), .B(n571), .Z(n573) );
  NOR2_X1 U7060 ( .A1(in1[2]), .A2(in3[1]), .ZN(n572) );
  NOR2_X1 U7061 ( .A1(n573), .A2(n572), .ZN(n574) );
  XOR2_X1 U7062 ( .A(n574), .B(r[45]), .Z(n576) );
  XNOR2_X1 U7063 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[46]), .ZN(n575)
         );
  XNOR2_X1 U7064 ( .A(n576), .B(n575), .ZN(\CF_Out[1][18] ) );
  XNOR2_X1 U7065 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[44]), .ZN(n578)
         );
  INV_X1 U7066 ( .A(in2[3]), .ZN(n804) );
  NOR2_X1 U7067 ( .A1(in2[1]), .A2(n804), .ZN(n862) );
  NOR2_X1 U7068 ( .A1(n821), .A2(n862), .ZN(n577) );
  XNOR2_X1 U7069 ( .A(n578), .B(n577), .ZN(n579) );
  XOR2_X1 U7070 ( .A(r[45]), .B(n579), .Z(\CF_Out[1][17] ) );
  XNOR2_X1 U7071 ( .A(r[28]), .B(r[27]), .ZN(n581) );
  NOR2_X1 U7072 ( .A1(in1[2]), .A2(in1[3]), .ZN(n624) );
  XNOR2_X1 U7073 ( .A(n624), .B(n820), .ZN(n888) );
  NOR2_X1 U7074 ( .A1(in1[1]), .A2(n888), .ZN(n580) );
  XNOR2_X1 U7075 ( .A(n581), .B(n580), .ZN(n582) );
  XOR2_X1 U7076 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n582), .Z(
        \CF_Out[1][0] ) );
  XOR2_X1 U7077 ( .A(r[10]), .B(r[9]), .Z(n585) );
  NAND2_X1 U7078 ( .A1(in2[1]), .A2(n583), .ZN(n584) );
  XNOR2_X1 U7079 ( .A(n585), .B(n584), .ZN(n586) );
  XOR2_X1 U7080 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n586), .Z(
        \CF_Out[0][9] ) );
  NOR2_X1 U7081 ( .A1(n821), .A2(n880), .ZN(n831) );
  INV_X1 U7082 ( .A(in1[3]), .ZN(n748) );
  NAND2_X1 U7083 ( .A1(in3[0]), .A2(n748), .ZN(n640) );
  NOR2_X1 U7084 ( .A1(n831), .A2(n640), .ZN(n589) );
  INV_X1 U7085 ( .A(in3[0]), .ZN(n892) );
  NAND2_X1 U7086 ( .A1(in1[3]), .A2(n892), .ZN(n639) );
  INV_X1 U7087 ( .A(n831), .ZN(n587) );
  NOR2_X1 U7088 ( .A1(n639), .A2(n587), .ZN(n588) );
  NOR2_X1 U7089 ( .A1(n589), .A2(n588), .ZN(n592) );
  XNOR2_X1 U7090 ( .A(r[9]), .B(TwoSharesFromNeighbouringSbox[7]), .ZN(n590)
         );
  XNOR2_X1 U7091 ( .A(n590), .B(r[8]), .ZN(n591) );
  XNOR2_X1 U7092 ( .A(n592), .B(n591), .ZN(\CF_Out[0][8] ) );
  INV_X1 U7093 ( .A(in3[3]), .ZN(n828) );
  NAND2_X1 U7094 ( .A1(in3[2]), .A2(n828), .ZN(n708) );
  NOR2_X1 U7095 ( .A1(in3[1]), .A2(n892), .ZN(n593) );
  NOR2_X1 U7096 ( .A1(n708), .A2(n593), .ZN(n596) );
  NOR2_X1 U7097 ( .A1(in3[0]), .A2(n594), .ZN(n595) );
  NOR2_X1 U7098 ( .A1(n596), .A2(n595), .ZN(n599) );
  XNOR2_X1 U7099 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[26]), .ZN(n597)
         );
  XNOR2_X1 U7100 ( .A(n597), .B(r[0]), .ZN(n598) );
  XNOR2_X1 U7101 ( .A(n599), .B(n598), .ZN(\CF_Out[0][26] ) );
  XOR2_X1 U7102 ( .A(r[2]), .B(r[1]), .Z(n601) );
  NOR2_X1 U7103 ( .A1(in2[3]), .A2(in2[2]), .ZN(n807) );
  NOR2_X1 U7104 ( .A1(n807), .A2(n880), .ZN(n836) );
  NAND2_X1 U7105 ( .A1(in2[2]), .A2(n820), .ZN(n603) );
  NAND2_X1 U7106 ( .A1(n836), .A2(n603), .ZN(n600) );
  XNOR2_X1 U7107 ( .A(n601), .B(n600), .ZN(n602) );
  XOR2_X1 U7108 ( .A(n889), .B(n602), .Z(\CF_Out[0][1] ) );
  XOR2_X1 U7109 ( .A(r[19]), .B(r[20]), .Z(n605) );
  NAND2_X1 U7110 ( .A1(in3[1]), .A2(in2[2]), .ZN(n797) );
  NAND2_X1 U7111 ( .A1(in3[1]), .A2(in1[3]), .ZN(n681) );
  NAND2_X1 U7112 ( .A1(n797), .A2(n681), .ZN(n877) );
  NAND2_X1 U7113 ( .A1(n877), .A2(n603), .ZN(n604) );
  XNOR2_X1 U7114 ( .A(n605), .B(n604), .ZN(n606) );
  XOR2_X1 U7115 ( .A(n889), .B(n606), .Z(\CF_Out[0][19] ) );
  NOR2_X1 U7116 ( .A1(in1[2]), .A2(n857), .ZN(n752) );
  NAND2_X1 U7117 ( .A1(n828), .A2(n752), .ZN(n610) );
  NOR2_X1 U7118 ( .A1(in1[0]), .A2(n752), .ZN(n608) );
  NOR2_X1 U7119 ( .A1(n820), .A2(n828), .ZN(n607) );
  NOR2_X1 U7120 ( .A1(n608), .A2(n607), .ZN(n609) );
  NAND2_X1 U7121 ( .A1(n610), .A2(n609), .ZN(n611) );
  XNOR2_X1 U7122 ( .A(n611), .B(r[19]), .ZN(n612) );
  XOR2_X1 U7123 ( .A(n612), .B(r[18]), .Z(n614) );
  XNOR2_X1 U7124 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(in3[1]), .ZN(n613)
         );
  XNOR2_X1 U7125 ( .A(n614), .B(n613), .ZN(\CF_Out[0][18] ) );
  XNOR2_X1 U7126 ( .A(r[18]), .B(r[17]), .ZN(n620) );
  NAND2_X1 U7127 ( .A1(n804), .A2(in3[0]), .ZN(n615) );
  INV_X1 U7128 ( .A(in2[1]), .ZN(n849) );
  NOR2_X1 U7129 ( .A1(n849), .A2(n821), .ZN(n730) );
  INV_X1 U7130 ( .A(n730), .ZN(n706) );
  NAND2_X1 U7131 ( .A1(n615), .A2(n706), .ZN(n618) );
  NAND2_X1 U7132 ( .A1(in2[3]), .A2(n892), .ZN(n616) );
  NAND2_X1 U7133 ( .A1(n730), .A2(n616), .ZN(n617) );
  NAND2_X1 U7134 ( .A1(n618), .A2(n617), .ZN(n619) );
  XNOR2_X1 U7135 ( .A(n620), .B(n619), .ZN(n621) );
  XNOR2_X1 U7136 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n621), .ZN(
        \CF_Out[0][17] ) );
  NOR2_X1 U7137 ( .A1(in1[2]), .A2(in1[1]), .ZN(n763) );
  NAND2_X1 U7138 ( .A1(in1[3]), .A2(n820), .ZN(n622) );
  NOR2_X1 U7139 ( .A1(n763), .A2(n622), .ZN(n623) );
  NOR2_X1 U7140 ( .A1(n624), .A2(n623), .ZN(n626) );
  NOR2_X1 U7141 ( .A1(in1[1]), .A2(n820), .ZN(n625) );
  NOR2_X1 U7142 ( .A1(n626), .A2(n625), .ZN(n630) );
  XOR2_X1 U7143 ( .A(r[1]), .B(r[0]), .Z(n628) );
  XNOR2_X1 U7144 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(in1[1]), .ZN(n627)
         );
  XNOR2_X1 U7145 ( .A(n628), .B(n627), .ZN(n629) );
  XNOR2_X1 U7146 ( .A(n630), .B(n629), .ZN(\CF_Out[0][0] ) );
  XOR2_X1 U7147 ( .A(r[53]), .B(r[52]), .Z(n632) );
  NAND2_X1 U7148 ( .A1(in1[2]), .A2(n681), .ZN(n631) );
  XNOR2_X1 U7149 ( .A(n632), .B(n631), .ZN(n633) );
  XNOR2_X1 U7150 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[7]), .ZN(n896) );
  XNOR2_X1 U7151 ( .A(n633), .B(n896), .ZN(\CF_Out[1][25] ) );
  XNOR2_X1 U7152 ( .A(r[43]), .B(r[44]), .ZN(n634) );
  NAND2_X1 U7153 ( .A1(in1[3]), .A2(in2[2]), .ZN(n879) );
  NOR2_X1 U7154 ( .A1(n849), .A2(n879), .ZN(n894) );
  XNOR2_X1 U7155 ( .A(n634), .B(n894), .ZN(n635) );
  XNOR2_X1 U7156 ( .A(n635), .B(n896), .ZN(\CF_Out[1][16] ) );
  INV_X1 U7157 ( .A(in2[2]), .ZN(n813) );
  NOR2_X1 U7158 ( .A1(n828), .A2(n813), .ZN(n723) );
  NAND2_X1 U7159 ( .A1(in1[1]), .A2(n723), .ZN(n637) );
  XOR2_X1 U7160 ( .A(r[34]), .B(r[35]), .Z(n636) );
  XNOR2_X1 U7161 ( .A(n637), .B(n636), .ZN(n638) );
  XNOR2_X1 U7162 ( .A(n638), .B(n896), .ZN(\CF_Out[1][7] ) );
  NAND2_X1 U7163 ( .A1(n640), .A2(n639), .ZN(n642) );
  INV_X1 U7164 ( .A(in1[2]), .ZN(n861) );
  NOR2_X1 U7165 ( .A1(n861), .A2(n857), .ZN(n641) );
  NAND2_X1 U7166 ( .A1(n642), .A2(n641), .ZN(n643) );
  XNOR2_X1 U7167 ( .A(n643), .B(n896), .ZN(n645) );
  XOR2_X1 U7168 ( .A(r[26]), .B(r[25]), .Z(n644) );
  XNOR2_X1 U7169 ( .A(n645), .B(n644), .ZN(\CF_Out[0][25] ) );
  XNOR2_X1 U7170 ( .A(r[8]), .B(n896), .ZN(n648) );
  XNOR2_X1 U7171 ( .A(in3[0]), .B(in3[3]), .ZN(n646) );
  NAND2_X1 U7172 ( .A1(in2[2]), .A2(in1[1]), .ZN(n794) );
  NOR2_X1 U7173 ( .A1(n646), .A2(n794), .ZN(n647) );
  XNOR2_X1 U7174 ( .A(n648), .B(n647), .ZN(n649) );
  XNOR2_X1 U7175 ( .A(r[7]), .B(n649), .ZN(\CF_Out[0][7] ) );
  XOR2_X1 U7176 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n853) );
  XNOR2_X1 U7177 ( .A(r[52]), .B(r[51]), .ZN(n653) );
  NAND2_X1 U7178 ( .A1(in2[3]), .A2(in2[2]), .ZN(n663) );
  INV_X1 U7179 ( .A(n663), .ZN(n650) );
  XNOR2_X1 U7180 ( .A(n650), .B(n892), .ZN(n651) );
  NAND2_X1 U7181 ( .A1(in3[1]), .A2(n651), .ZN(n652) );
  XNOR2_X1 U7182 ( .A(n653), .B(n652), .ZN(n654) );
  XNOR2_X1 U7183 ( .A(n853), .B(n654), .ZN(\CF_Out[1][24] ) );
  NOR2_X1 U7184 ( .A1(n861), .A2(n828), .ZN(n847) );
  XNOR2_X1 U7185 ( .A(n892), .B(n847), .ZN(n655) );
  NAND2_X1 U7186 ( .A1(n655), .A2(in2[1]), .ZN(n658) );
  XNOR2_X1 U7187 ( .A(n853), .B(r[42]), .ZN(n656) );
  XNOR2_X1 U7188 ( .A(n656), .B(r[43]), .ZN(n657) );
  XNOR2_X1 U7189 ( .A(n658), .B(n657), .ZN(\CF_Out[1][15] ) );
  NOR2_X1 U7190 ( .A1(n861), .A2(n804), .ZN(n855) );
  XNOR2_X1 U7191 ( .A(n892), .B(n855), .ZN(n659) );
  NAND2_X1 U7192 ( .A1(in1[1]), .A2(n659), .ZN(n660) );
  XOR2_X1 U7193 ( .A(r[34]), .B(n660), .Z(n662) );
  XOR2_X1 U7194 ( .A(n853), .B(r[33]), .Z(n661) );
  XNOR2_X1 U7195 ( .A(n662), .B(n661), .ZN(\CF_Out[1][6] ) );
  XNOR2_X1 U7196 ( .A(r[24]), .B(r[25]), .ZN(n667) );
  NAND2_X1 U7197 ( .A1(in3[0]), .A2(n813), .ZN(n664) );
  NAND2_X1 U7198 ( .A1(n664), .A2(n663), .ZN(n665) );
  NAND2_X1 U7199 ( .A1(n665), .A2(in3[1]), .ZN(n666) );
  XNOR2_X1 U7200 ( .A(n667), .B(n666), .ZN(n668) );
  XNOR2_X1 U7201 ( .A(n853), .B(n668), .ZN(\CF_Out[0][24] ) );
  NAND2_X1 U7202 ( .A1(in1[1]), .A2(n855), .ZN(n669) );
  XOR2_X1 U7203 ( .A(in3[0]), .B(n669), .Z(n670) );
  NOR2_X1 U7204 ( .A1(n763), .A2(n670), .ZN(n671) );
  XOR2_X1 U7205 ( .A(r[7]), .B(n671), .Z(n673) );
  XNOR2_X1 U7206 ( .A(n853), .B(r[6]), .ZN(n672) );
  XNOR2_X1 U7207 ( .A(n673), .B(n672), .ZN(\CF_Out[0][6] ) );
  XOR2_X1 U7208 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n842) );
  XOR2_X1 U7209 ( .A(r[51]), .B(r[50]), .Z(n675) );
  NAND2_X1 U7210 ( .A1(n723), .A2(n857), .ZN(n674) );
  XNOR2_X1 U7211 ( .A(n675), .B(n674), .ZN(n676) );
  XOR2_X1 U7212 ( .A(n842), .B(n676), .Z(\CF_Out[1][23] ) );
  NAND2_X1 U7213 ( .A1(in2[2]), .A2(n849), .ZN(n893) );
  NOR2_X1 U7214 ( .A1(n804), .A2(n893), .ZN(n806) );
  XOR2_X1 U7215 ( .A(r[41]), .B(n806), .Z(n678) );
  XNOR2_X1 U7216 ( .A(r[42]), .B(n842), .ZN(n677) );
  XNOR2_X1 U7217 ( .A(n678), .B(n677), .ZN(\CF_Out[1][14] ) );
  NAND2_X1 U7218 ( .A1(in1[1]), .A2(n847), .ZN(n841) );
  XNOR2_X1 U7219 ( .A(n841), .B(r[32]), .ZN(n680) );
  XNOR2_X1 U7220 ( .A(r[33]), .B(n842), .ZN(n679) );
  XNOR2_X1 U7221 ( .A(n680), .B(n679), .ZN(\CF_Out[1][5] ) );
  XOR2_X1 U7222 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n869) );
  NOR2_X1 U7223 ( .A1(n821), .A2(n681), .ZN(n872) );
  XOR2_X1 U7224 ( .A(n869), .B(n872), .Z(n683) );
  XNOR2_X1 U7225 ( .A(r[49]), .B(r[50]), .ZN(n682) );
  XNOR2_X1 U7226 ( .A(n683), .B(n682), .ZN(\CF_Out[1][22] ) );
  XNOR2_X1 U7227 ( .A(n869), .B(r[40]), .ZN(n685) );
  NAND2_X1 U7228 ( .A1(in1[2]), .A2(in2[1]), .ZN(n863) );
  NOR2_X1 U7229 ( .A1(n863), .A2(n748), .ZN(n684) );
  XNOR2_X1 U7230 ( .A(n685), .B(n684), .ZN(n686) );
  XOR2_X1 U7231 ( .A(r[41]), .B(n686), .Z(\CF_Out[1][13] ) );
  XOR2_X1 U7232 ( .A(n869), .B(r[31]), .Z(n688) );
  NAND2_X1 U7233 ( .A1(n831), .A2(in2[3]), .ZN(n687) );
  XNOR2_X1 U7234 ( .A(n688), .B(n687), .ZN(n689) );
  XOR2_X1 U7235 ( .A(r[32]), .B(n689), .Z(\CF_Out[1][4] ) );
  XNOR2_X1 U7236 ( .A(n869), .B(r[13]), .ZN(n691) );
  XNOR2_X1 U7237 ( .A(in1[3]), .B(in2[0]), .ZN(n717) );
  NOR2_X1 U7238 ( .A1(n863), .A2(n717), .ZN(n690) );
  XNOR2_X1 U7239 ( .A(n691), .B(n690), .ZN(n692) );
  XOR2_X1 U7240 ( .A(r[14]), .B(n692), .Z(\CF_Out[0][13] ) );
  XNOR2_X1 U7241 ( .A(r[4]), .B(n869), .ZN(n696) );
  XNOR2_X1 U7242 ( .A(n804), .B(in2[0]), .ZN(n693) );
  NAND2_X1 U7243 ( .A1(n693), .A2(n831), .ZN(n694) );
  XNOR2_X1 U7244 ( .A(n694), .B(r[5]), .ZN(n695) );
  XNOR2_X1 U7245 ( .A(n696), .B(n695), .ZN(\CF_Out[0][4] ) );
  XNOR2_X1 U7246 ( .A(n855), .B(in2[0]), .ZN(n697) );
  NOR2_X1 U7247 ( .A1(n697), .A2(n857), .ZN(n698) );
  XOR2_X1 U7248 ( .A(r[49]), .B(n698), .Z(n700) );
  XOR2_X1 U7249 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n887) );
  XNOR2_X1 U7250 ( .A(n887), .B(r[48]), .ZN(n699) );
  XNOR2_X1 U7251 ( .A(n700), .B(n699), .ZN(\CF_Out[1][21] ) );
  XNOR2_X1 U7252 ( .A(r[40]), .B(r[39]), .ZN(n704) );
  NOR2_X1 U7253 ( .A1(n828), .A2(n821), .ZN(n701) );
  INV_X1 U7254 ( .A(in2[0]), .ZN(n881) );
  XNOR2_X1 U7255 ( .A(n701), .B(n881), .ZN(n702) );
  NAND2_X1 U7256 ( .A1(in2[1]), .A2(n702), .ZN(n703) );
  XNOR2_X1 U7257 ( .A(n704), .B(n703), .ZN(n705) );
  XNOR2_X1 U7258 ( .A(n887), .B(n705), .ZN(\CF_Out[1][12] ) );
  XNOR2_X1 U7259 ( .A(n887), .B(r[13]), .ZN(n712) );
  NAND2_X1 U7260 ( .A1(in2[1]), .A2(in2[0]), .ZN(n707) );
  NAND2_X1 U7261 ( .A1(n707), .A2(n706), .ZN(n709) );
  NAND2_X1 U7262 ( .A1(n709), .A2(n708), .ZN(n710) );
  XNOR2_X1 U7263 ( .A(n710), .B(r[12]), .ZN(n711) );
  XNOR2_X1 U7264 ( .A(n712), .B(n711), .ZN(\CF_Out[0][12] ) );
  XOR2_X1 U7265 ( .A(r[3]), .B(r[4]), .Z(n715) );
  XOR2_X1 U7266 ( .A(in1[3]), .B(in1[1]), .Z(n713) );
  NAND2_X1 U7267 ( .A1(in2[0]), .A2(n713), .ZN(n714) );
  XNOR2_X1 U7268 ( .A(n715), .B(n714), .ZN(n716) );
  XNOR2_X1 U7269 ( .A(n887), .B(n716), .ZN(n719) );
  NOR2_X1 U7270 ( .A1(n717), .A2(n794), .ZN(n718) );
  XNOR2_X1 U7271 ( .A(n719), .B(n718), .ZN(\CF_Out[0][3] ) );
  XOR2_X1 U7272 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n733) );
  XOR2_X1 U7273 ( .A(r[71]), .B(n733), .Z(n721) );
  NAND2_X1 U7274 ( .A1(in3[3]), .A2(n821), .ZN(n720) );
  XNOR2_X1 U7275 ( .A(n721), .B(n720), .ZN(n722) );
  XOR2_X1 U7276 ( .A(r[63]), .B(n722), .Z(\CF_Out34[3][8] ) );
  XOR2_X1 U7277 ( .A(r[69]), .B(r[68]), .Z(n725) );
  XNOR2_X1 U7278 ( .A(n723), .B(n733), .ZN(n724) );
  XNOR2_X1 U7279 ( .A(n725), .B(n724), .ZN(\CF_Out34[3][5] ) );
  XOR2_X1 U7280 ( .A(r[66]), .B(r[65]), .Z(n727) );
  XNOR2_X1 U7281 ( .A(n847), .B(n733), .ZN(n726) );
  XNOR2_X1 U7282 ( .A(n727), .B(n726), .ZN(\CF_Out34[3][2] ) );
  XNOR2_X1 U7283 ( .A(r[62]), .B(r[54]), .ZN(n729) );
  XNOR2_X1 U7284 ( .A(n870), .B(n733), .ZN(n728) );
  XNOR2_X1 U7285 ( .A(n729), .B(n728), .ZN(\CF_Out34[2][8] ) );
  XOR2_X1 U7286 ( .A(r[60]), .B(r[59]), .Z(n732) );
  XNOR2_X1 U7287 ( .A(n730), .B(n733), .ZN(n731) );
  XNOR2_X1 U7288 ( .A(n732), .B(n731), .ZN(\CF_Out34[2][5] ) );
  XOR2_X1 U7289 ( .A(r[57]), .B(r[56]), .Z(n735) );
  XNOR2_X1 U7290 ( .A(n831), .B(n733), .ZN(n734) );
  XNOR2_X1 U7291 ( .A(n735), .B(n734), .ZN(\CF_Out34[2][2] ) );
  NAND2_X1 U7292 ( .A1(in2[1]), .A2(n861), .ZN(n758) );
  NAND2_X1 U7293 ( .A1(n820), .A2(n758), .ZN(n737) );
  NAND2_X1 U7294 ( .A1(n804), .A2(n863), .ZN(n736) );
  NAND2_X1 U7295 ( .A1(n737), .A2(n736), .ZN(n740) );
  NAND2_X1 U7296 ( .A1(in2[1]), .A2(in2[3]), .ZN(n738) );
  NOR2_X1 U7297 ( .A1(n820), .A2(n738), .ZN(n739) );
  NOR2_X1 U7298 ( .A1(n740), .A2(n739), .ZN(n741) );
  XOR2_X1 U7299 ( .A(n741), .B(r[11]), .Z(n743) );
  XNOR2_X1 U7300 ( .A(n889), .B(r[10]), .ZN(n742) );
  XNOR2_X1 U7301 ( .A(n743), .B(n742), .ZN(\CF_Out[0][10] ) );
  XNOR2_X1 U7302 ( .A(n889), .B(r[69]), .ZN(n747) );
  XOR2_X1 U7303 ( .A(in3[0]), .B(r[70]), .Z(n745) );
  NAND2_X1 U7304 ( .A1(in3[2]), .A2(n748), .ZN(n744) );
  XNOR2_X1 U7305 ( .A(n745), .B(n744), .ZN(n746) );
  XNOR2_X1 U7306 ( .A(n747), .B(n746), .ZN(\CF_Out34[3][6] ) );
  XOR2_X1 U7307 ( .A(r[66]), .B(r[67]), .Z(n750) );
  NAND2_X1 U7308 ( .A1(in2[2]), .A2(n748), .ZN(n749) );
  XNOR2_X1 U7309 ( .A(n750), .B(n749), .ZN(n751) );
  XNOR2_X1 U7310 ( .A(in2[0]), .B(n889), .ZN(n865) );
  XNOR2_X1 U7311 ( .A(n751), .B(n865), .ZN(\CF_Out34[3][3] ) );
  XOR2_X1 U7312 ( .A(r[61]), .B(r[60]), .Z(n754) );
  XNOR2_X1 U7313 ( .A(in3[3]), .B(n752), .ZN(n753) );
  XNOR2_X1 U7314 ( .A(n754), .B(n753), .ZN(n755) );
  XOR2_X1 U7315 ( .A(n889), .B(n755), .Z(\CF_Out34[2][6] ) );
  XOR2_X1 U7316 ( .A(r[58]), .B(r[57]), .Z(n757) );
  XNOR2_X1 U7317 ( .A(in2[3]), .B(n889), .ZN(n756) );
  XNOR2_X1 U7318 ( .A(n757), .B(n756), .ZN(n759) );
  XNOR2_X1 U7319 ( .A(n759), .B(n758), .ZN(\CF_Out34[2][3] ) );
  XOR2_X1 U7320 ( .A(r[55]), .B(r[54]), .Z(n761) );
  XNOR2_X1 U7321 ( .A(in1[3]), .B(n889), .ZN(n760) );
  XNOR2_X1 U7322 ( .A(n761), .B(n760), .ZN(n762) );
  XOR2_X1 U7323 ( .A(n763), .B(n762), .Z(\CF_Out34[2][0] ) );
  XOR2_X2 U7324 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n833) );
  XNOR2_X1 U7325 ( .A(r[48]), .B(n833), .ZN(n767) );
  NAND2_X1 U7326 ( .A1(n804), .A2(n821), .ZN(n764) );
  NAND2_X1 U7327 ( .A1(n764), .A2(in3[1]), .ZN(n765) );
  XNOR2_X1 U7328 ( .A(n765), .B(r[47]), .ZN(n766) );
  XNOR2_X1 U7329 ( .A(n767), .B(n766), .ZN(\CF_Out[1][20] ) );
  XNOR2_X1 U7330 ( .A(r[38]), .B(n833), .ZN(n771) );
  NAND2_X1 U7331 ( .A1(n813), .A2(n828), .ZN(n768) );
  NAND2_X1 U7332 ( .A1(n768), .A2(in2[1]), .ZN(n769) );
  XNOR2_X1 U7333 ( .A(n769), .B(r[39]), .ZN(n770) );
  XNOR2_X1 U7334 ( .A(n771), .B(n770), .ZN(\CF_Out[1][11] ) );
  XNOR2_X1 U7335 ( .A(r[3]), .B(n833), .ZN(n772) );
  XNOR2_X1 U7336 ( .A(n772), .B(r[2]), .ZN(n777) );
  NOR2_X1 U7337 ( .A1(in3[3]), .A2(in3[2]), .ZN(n773) );
  NOR2_X1 U7338 ( .A1(n880), .A2(n773), .ZN(n775) );
  NAND2_X1 U7339 ( .A1(n775), .A2(n778), .ZN(n774) );
  NAND2_X1 U7340 ( .A1(n777), .A2(n774), .ZN(n781) );
  INV_X1 U7341 ( .A(n775), .ZN(n776) );
  NOR2_X1 U7342 ( .A1(n777), .A2(n776), .ZN(n779) );
  NAND2_X1 U7343 ( .A1(n779), .A2(n778), .ZN(n780) );
  NAND2_X1 U7344 ( .A1(n781), .A2(n780), .ZN(\CF_Out[0][2] ) );
  XOR2_X1 U7345 ( .A(r[71]), .B(r[70]), .Z(n783) );
  NAND2_X1 U7346 ( .A1(in2[3]), .A2(in3[2]), .ZN(n782) );
  XNOR2_X1 U7347 ( .A(n783), .B(n782), .ZN(n784) );
  XOR2_X1 U7348 ( .A(n833), .B(n784), .Z(\CF_Out34[3][7] ) );
  XOR2_X1 U7349 ( .A(r[68]), .B(r[67]), .Z(n786) );
  NAND2_X1 U7350 ( .A1(in2[3]), .A2(n813), .ZN(n785) );
  XNOR2_X1 U7351 ( .A(n786), .B(n785), .ZN(n787) );
  XOR2_X1 U7352 ( .A(n833), .B(n787), .Z(\CF_Out34[3][4] ) );
  XOR2_X1 U7353 ( .A(r[64]), .B(r[65]), .Z(n789) );
  XNOR2_X1 U7354 ( .A(n855), .B(n833), .ZN(n788) );
  XNOR2_X1 U7355 ( .A(n789), .B(n788), .ZN(\CF_Out34[3][1] ) );
  XNOR2_X1 U7356 ( .A(r[62]), .B(r[61]), .ZN(n791) );
  XNOR2_X1 U7357 ( .A(n797), .B(n833), .ZN(n790) );
  XNOR2_X1 U7358 ( .A(n791), .B(n790), .ZN(\CF_Out34[2][7] ) );
  XNOR2_X1 U7359 ( .A(r[59]), .B(r[58]), .ZN(n793) );
  XNOR2_X1 U7360 ( .A(n893), .B(n833), .ZN(n792) );
  XNOR2_X1 U7361 ( .A(n793), .B(n792), .ZN(\CF_Out34[2][4] ) );
  XNOR2_X1 U7362 ( .A(r[56]), .B(r[55]), .ZN(n796) );
  XNOR2_X1 U7363 ( .A(n794), .B(n833), .ZN(n795) );
  XNOR2_X1 U7364 ( .A(n796), .B(n795), .ZN(\CF_Out34[2][1] ) );
  NAND2_X1 U7365 ( .A1(n828), .A2(n881), .ZN(n800) );
  NAND2_X1 U7366 ( .A1(in3[3]), .A2(in2[0]), .ZN(n798) );
  NAND2_X1 U7367 ( .A1(n798), .A2(n797), .ZN(n799) );
  NAND2_X1 U7368 ( .A1(n800), .A2(n799), .ZN(n801) );
  XNOR2_X1 U7369 ( .A(n801), .B(r[24]), .ZN(n803) );
  XNOR2_X1 U7370 ( .A(r[23]), .B(n842), .ZN(n802) );
  XNOR2_X1 U7371 ( .A(n803), .B(n802), .ZN(n13485) );
  XNOR2_X1 U7372 ( .A(n842), .B(r[15]), .ZN(n812) );
  NAND2_X1 U7373 ( .A1(in2[1]), .A2(n804), .ZN(n805) );
  NAND2_X1 U7374 ( .A1(in2[0]), .A2(n805), .ZN(n809) );
  NOR2_X1 U7375 ( .A1(n807), .A2(n806), .ZN(n808) );
  NAND2_X1 U7376 ( .A1(n809), .A2(n808), .ZN(n810) );
  XNOR2_X1 U7377 ( .A(r[14]), .B(n810), .ZN(n811) );
  XNOR2_X1 U7378 ( .A(n812), .B(n811), .ZN(n13484) );
  XNOR2_X1 U7379 ( .A(n833), .B(r[12]), .ZN(n818) );
  NOR2_X1 U7380 ( .A1(n820), .A2(n893), .ZN(n816) );
  NAND2_X1 U7381 ( .A1(in2[1]), .A2(n813), .ZN(n814) );
  NOR2_X1 U7382 ( .A1(n828), .A2(n814), .ZN(n815) );
  NOR2_X1 U7383 ( .A1(n816), .A2(n815), .ZN(n817) );
  XNOR2_X1 U7384 ( .A(n818), .B(n817), .ZN(n819) );
  XNOR2_X1 U7385 ( .A(r[11]), .B(n819), .ZN(n13483) );
  XNOR2_X1 U7386 ( .A(r[20]), .B(r[21]), .ZN(n826) );
  NOR2_X1 U7387 ( .A1(n820), .A2(n870), .ZN(n824) );
  NAND2_X1 U7388 ( .A1(in2[3]), .A2(n821), .ZN(n822) );
  NOR2_X1 U7389 ( .A1(n857), .A2(n822), .ZN(n823) );
  NOR2_X1 U7390 ( .A1(n824), .A2(n823), .ZN(n825) );
  XNOR2_X1 U7391 ( .A(n826), .B(n825), .ZN(n827) );
  XNOR2_X1 U7392 ( .A(n833), .B(n827), .ZN(n13482) );
  NOR2_X1 U7393 ( .A1(n828), .A2(n880), .ZN(n829) );
  NOR2_X1 U7394 ( .A1(in3[2]), .A2(n829), .ZN(n830) );
  NOR2_X1 U7395 ( .A1(n831), .A2(n830), .ZN(n832) );
  XOR2_X1 U7396 ( .A(n832), .B(r[29]), .Z(n835) );
  XNOR2_X1 U7397 ( .A(n833), .B(r[30]), .ZN(n834) );
  XNOR2_X1 U7398 ( .A(n835), .B(n834), .ZN(n13481) );
  XOR2_X1 U7399 ( .A(r[29]), .B(n836), .Z(n838) );
  XNOR2_X1 U7400 ( .A(n889), .B(r[28]), .ZN(n837) );
  XNOR2_X1 U7401 ( .A(n838), .B(n837), .ZN(n13480) );
  NOR2_X1 U7402 ( .A1(in1[1]), .A2(n861), .ZN(n839) );
  NAND2_X1 U7403 ( .A1(in2[0]), .A2(n839), .ZN(n840) );
  NAND2_X1 U7404 ( .A1(n841), .A2(n840), .ZN(n844) );
  XOR2_X1 U7405 ( .A(n842), .B(r[5]), .Z(n843) );
  XNOR2_X1 U7406 ( .A(n844), .B(n843), .ZN(n845) );
  XNOR2_X1 U7407 ( .A(r[6]), .B(n845), .ZN(n13479) );
  NOR2_X1 U7408 ( .A1(in1[2]), .A2(n892), .ZN(n846) );
  NOR2_X1 U7409 ( .A1(n847), .A2(n846), .ZN(n848) );
  NOR2_X1 U7410 ( .A1(n849), .A2(n848), .ZN(n851) );
  XOR2_X1 U7411 ( .A(r[15]), .B(r[16]), .Z(n850) );
  XNOR2_X1 U7412 ( .A(n851), .B(n850), .ZN(n852) );
  XNOR2_X1 U7413 ( .A(n853), .B(n852), .ZN(n13478) );
  NOR2_X1 U7414 ( .A1(in1[2]), .A2(n881), .ZN(n854) );
  NOR2_X1 U7415 ( .A1(n855), .A2(n854), .ZN(n856) );
  NOR2_X1 U7416 ( .A1(n857), .A2(n856), .ZN(n859) );
  XOR2_X1 U7417 ( .A(r[21]), .B(r[22]), .Z(n858) );
  XNOR2_X1 U7418 ( .A(n859), .B(n858), .ZN(n860) );
  XNOR2_X1 U7419 ( .A(n887), .B(n860), .ZN(n13477) );
  XNOR2_X1 U7420 ( .A(r[37]), .B(r[38]), .ZN(n868) );
  NAND2_X1 U7421 ( .A1(n862), .A2(n861), .ZN(n864) );
  NAND2_X1 U7422 ( .A1(n864), .A2(n863), .ZN(n866) );
  XNOR2_X1 U7423 ( .A(n866), .B(n865), .ZN(n867) );
  XNOR2_X1 U7424 ( .A(n868), .B(n867), .ZN(n13476) );
  XNOR2_X1 U7425 ( .A(n869), .B(r[22]), .ZN(n874) );
  NOR2_X1 U7426 ( .A1(n870), .A2(n881), .ZN(n871) );
  NOR2_X1 U7427 ( .A1(n872), .A2(n871), .ZN(n873) );
  XNOR2_X1 U7428 ( .A(n874), .B(n873), .ZN(n875) );
  XNOR2_X1 U7429 ( .A(r[23]), .B(n875), .ZN(n13475) );
  XOR2_X1 U7430 ( .A(n889), .B(r[47]), .Z(n876) );
  XNOR2_X1 U7431 ( .A(n877), .B(n876), .ZN(n878) );
  XNOR2_X1 U7432 ( .A(r[46]), .B(n878), .ZN(n13474) );
  XNOR2_X1 U7433 ( .A(r[31]), .B(r[30]), .ZN(n885) );
  NOR2_X1 U7434 ( .A1(in1[1]), .A2(n879), .ZN(n883) );
  NOR2_X1 U7435 ( .A1(n881), .A2(n880), .ZN(n882) );
  NOR2_X1 U7436 ( .A1(n883), .A2(n882), .ZN(n884) );
  XNOR2_X1 U7437 ( .A(n885), .B(n884), .ZN(n886) );
  XNOR2_X1 U7438 ( .A(n887), .B(n886), .ZN(n13473) );
  XOR2_X1 U7439 ( .A(r[64]), .B(r[63]), .Z(n891) );
  XNOR2_X1 U7440 ( .A(n889), .B(n888), .ZN(n890) );
  XNOR2_X1 U7441 ( .A(n891), .B(n890), .ZN(n13472) );
  NOR2_X1 U7442 ( .A1(n893), .A2(n892), .ZN(n895) );
  NOR2_X1 U7443 ( .A1(n895), .A2(n894), .ZN(n897) );
  XNOR2_X1 U7444 ( .A(n897), .B(n896), .ZN(n899) );
  XOR2_X1 U7445 ( .A(r[17]), .B(r[16]), .Z(n898) );
  XNOR2_X1 U7446 ( .A(n899), .B(n898), .ZN(n13471) );
endmodule


module TwoSboxes ( clk, in1, in2, in3, r, out1, out2, out3 );
(* SILVER="[7:0]_0" *)  input [7:0] in1;
(* SILVER="[7:0]_1" *)  input [7:0] in2;
(* SILVER="[7:0]_2" *)  input [7:0] in3;
(* SILVER="refresh" *)  input [143:0] r;
(* SILVER="[7:0]_0" *)  output [7:0] out1;
(* SILVER="[7:0]_1" *)  output [7:0] out2;
(* SILVER="[7:0]_2" *)  output [7:0] out3;
(* SILVER="clock" *)  input clk;


  SKINNY_SBOX_0 Sbox0 ( .clk(clk), .in1(in1[3:0]), .in2(in2[3:0]), .in3(
        in3[3:0]), .TwoSharesFromNeighbouringSbox({in1[7:4], in2[7:4]}), .r(
        r[71:0]), .out1(out1[3:0]), .out2(out2[3:0]), .out3(out3[3:0]) );
  SKINNY_SBOX_1 Sbox1 ( .clk(clk), .in1(in1[7:4]), .in2(in2[7:4]), .in3(
        in3[7:4]), .TwoSharesFromNeighbouringSbox({in1[3:0], in2[3:0]}), .r(
        r[143:72]), .out1(out1[7:4]), .out2(out2[7:4]), .out3(out3[7:4]) );
endmodule

