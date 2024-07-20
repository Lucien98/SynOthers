/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Mar 11 02:04:31 2024
/////////////////////////////////////////////////////////////


module keccak_sbox ( ClkxCI, RstxRBI, IotaRCxDI, InputxDI, ZxDI, OutputxDO );
  input [9:0] InputxDI;
  input [4:0] ZxDI;
  output [9:0] OutputxDO;
  input ClkxCI, RstxRBI, IotaRCxDI;
  wire   n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124;
  wire   [19:0] FFxDN;

  DFFR_X1 \FFxDP_reg[19]  ( .D(FFxDN[19]), .CK(ClkxCI), .RN(RstxRBI), .QN(n54)
         );
  DFFR_X1 \FFxDP_reg[18]  ( .D(FFxDN[18]), .CK(ClkxCI), .RN(RstxRBI), .QN(n56)
         );
  DFFR_X1 \FFxDP_reg[17]  ( .D(FFxDN[17]), .CK(ClkxCI), .RN(RstxRBI), .QN(n58)
         );
  DFFR_X1 \FFxDP_reg[16]  ( .D(FFxDN[16]), .CK(ClkxCI), .RN(RstxRBI), .QN(n60)
         );
  DFFR_X1 \FFxDP_reg[15]  ( .D(FFxDN[15]), .CK(ClkxCI), .RN(RstxRBI), .QN(n62)
         );
  DFFR_X1 \FFxDP_reg[14]  ( .D(FFxDN[14]), .CK(ClkxCI), .RN(RstxRBI), .QN(n53)
         );
  DFFR_X1 \FFxDP_reg[13]  ( .D(FFxDN[13]), .CK(ClkxCI), .RN(RstxRBI), .QN(n55)
         );
  DFFR_X1 \FFxDP_reg[12]  ( .D(FFxDN[12]), .CK(ClkxCI), .RN(RstxRBI), .QN(n57)
         );
  DFFR_X1 \FFxDP_reg[11]  ( .D(FFxDN[11]), .CK(ClkxCI), .RN(RstxRBI), .QN(n59)
         );
  DFFR_X1 \FFxDP_reg[10]  ( .D(FFxDN[10]), .CK(ClkxCI), .RN(RstxRBI), .QN(n61)
         );
  DFFR_X1 \FFxDP_reg[9]  ( .D(FFxDN[9]), .CK(ClkxCI), .RN(RstxRBI), .QN(n64)
         );
  DFFR_X1 \FFxDP_reg[8]  ( .D(FFxDN[8]), .CK(ClkxCI), .RN(RstxRBI), .QN(n66)
         );
  DFFR_X1 \FFxDP_reg[7]  ( .D(FFxDN[7]), .CK(ClkxCI), .RN(RstxRBI), .QN(n68)
         );
  DFFR_X1 \FFxDP_reg[6]  ( .D(FFxDN[6]), .CK(ClkxCI), .RN(RstxRBI), .QN(n70)
         );
  DFFR_X1 \FFxDP_reg[5]  ( .D(FFxDN[5]), .CK(ClkxCI), .RN(RstxRBI), .QN(n72)
         );
  DFFR_X1 \FFxDP_reg[4]  ( .D(FFxDN[4]), .CK(ClkxCI), .RN(RstxRBI), .QN(n63)
         );
  DFFR_X1 \FFxDP_reg[3]  ( .D(FFxDN[3]), .CK(ClkxCI), .RN(RstxRBI), .QN(n65)
         );
  DFFR_X1 \FFxDP_reg[2]  ( .D(FFxDN[2]), .CK(ClkxCI), .RN(RstxRBI), .QN(n67)
         );
  DFFR_X1 \FFxDP_reg[1]  ( .D(FFxDN[1]), .CK(ClkxCI), .RN(RstxRBI), .QN(n69)
         );
  DFFR_X1 \FFxDP_reg[0]  ( .D(FFxDN[0]), .CK(ClkxCI), .RN(RstxRBI), .QN(n71)
         );
  XOR2_X1 U115 ( .A(n54), .B(n53), .Z(OutputxDO[9]) );
  XOR2_X1 U116 ( .A(n56), .B(n55), .Z(OutputxDO[8]) );
  XOR2_X1 U117 ( .A(n58), .B(n57), .Z(OutputxDO[7]) );
  XOR2_X1 U118 ( .A(n60), .B(n59), .Z(OutputxDO[6]) );
  XOR2_X1 U119 ( .A(n62), .B(n61), .Z(OutputxDO[5]) );
  XOR2_X1 U120 ( .A(n64), .B(n63), .Z(OutputxDO[4]) );
  XOR2_X1 U121 ( .A(n66), .B(n65), .Z(OutputxDO[3]) );
  XOR2_X1 U122 ( .A(n68), .B(n67), .Z(OutputxDO[2]) );
  XOR2_X1 U123 ( .A(n70), .B(n69), .Z(OutputxDO[1]) );
  XOR2_X1 U124 ( .A(n72), .B(n71), .Z(OutputxDO[0]) );
  NAND2_X1 U125 ( .A1(InputxDI[6]), .A2(InputxDI[0]), .ZN(n99) );
  XNOR2_X1 U126 ( .A(n99), .B(ZxDI[4]), .ZN(FFxDN[9]) );
  NAND2_X1 U127 ( .A1(InputxDI[5]), .A2(InputxDI[4]), .ZN(n100) );
  XNOR2_X1 U128 ( .A(n100), .B(ZxDI[3]), .ZN(FFxDN[8]) );
  NAND2_X1 U129 ( .A1(InputxDI[9]), .A2(InputxDI[3]), .ZN(n101) );
  XNOR2_X1 U130 ( .A(n101), .B(ZxDI[2]), .ZN(FFxDN[7]) );
  NAND2_X1 U131 ( .A1(InputxDI[8]), .A2(InputxDI[2]), .ZN(n102) );
  XNOR2_X1 U132 ( .A(n102), .B(ZxDI[1]), .ZN(FFxDN[6]) );
  NAND2_X1 U133 ( .A1(InputxDI[7]), .A2(InputxDI[1]), .ZN(n103) );
  XNOR2_X1 U134 ( .A(n103), .B(ZxDI[0]), .ZN(FFxDN[5]) );
  INV_X1 U135 ( .A(InputxDI[0]), .ZN(n105) );
  NAND2_X1 U136 ( .A1(n105), .A2(InputxDI[1]), .ZN(n104) );
  XNOR2_X1 U137 ( .A(n104), .B(InputxDI[4]), .ZN(FFxDN[4]) );
  NOR2_X1 U138 ( .A1(InputxDI[4]), .A2(n105), .ZN(n106) );
  XOR2_X1 U139 ( .A(InputxDI[3]), .B(n106), .Z(FFxDN[3]) );
  INV_X1 U140 ( .A(InputxDI[3]), .ZN(n108) );
  NAND2_X1 U141 ( .A1(n108), .A2(InputxDI[4]), .ZN(n107) );
  XNOR2_X1 U142 ( .A(n107), .B(InputxDI[2]), .ZN(FFxDN[2]) );
  NOR2_X1 U143 ( .A1(InputxDI[2]), .A2(n108), .ZN(n109) );
  XOR2_X1 U144 ( .A(InputxDI[1]), .B(n109), .Z(FFxDN[1]) );
  INV_X1 U145 ( .A(InputxDI[5]), .ZN(n111) );
  NAND2_X1 U146 ( .A1(n111), .A2(InputxDI[6]), .ZN(n110) );
  XNOR2_X1 U147 ( .A(n110), .B(InputxDI[9]), .ZN(FFxDN[19]) );
  NOR2_X1 U148 ( .A1(InputxDI[9]), .A2(n111), .ZN(n112) );
  XOR2_X1 U149 ( .A(InputxDI[8]), .B(n112), .Z(FFxDN[18]) );
  INV_X1 U150 ( .A(InputxDI[8]), .ZN(n114) );
  NAND2_X1 U151 ( .A1(n114), .A2(InputxDI[9]), .ZN(n113) );
  XNOR2_X1 U152 ( .A(n113), .B(InputxDI[7]), .ZN(FFxDN[17]) );
  NOR2_X1 U153 ( .A1(InputxDI[7]), .A2(n114), .ZN(n115) );
  XOR2_X1 U154 ( .A(InputxDI[6]), .B(n115), .Z(FFxDN[16]) );
  INV_X1 U155 ( .A(InputxDI[6]), .ZN(n116) );
  NAND2_X1 U156 ( .A1(n116), .A2(InputxDI[7]), .ZN(n117) );
  XNOR2_X1 U157 ( .A(n117), .B(InputxDI[5]), .ZN(FFxDN[15]) );
  NAND2_X1 U158 ( .A1(InputxDI[1]), .A2(InputxDI[5]), .ZN(n118) );
  XNOR2_X1 U159 ( .A(n118), .B(ZxDI[4]), .ZN(FFxDN[14]) );
  NAND2_X1 U160 ( .A1(InputxDI[9]), .A2(InputxDI[0]), .ZN(n119) );
  XNOR2_X1 U161 ( .A(n119), .B(ZxDI[3]), .ZN(FFxDN[13]) );
  NAND2_X1 U162 ( .A1(InputxDI[8]), .A2(InputxDI[4]), .ZN(n120) );
  XNOR2_X1 U163 ( .A(n120), .B(ZxDI[2]), .ZN(FFxDN[12]) );
  NAND2_X1 U164 ( .A1(InputxDI[7]), .A2(InputxDI[3]), .ZN(n121) );
  XNOR2_X1 U165 ( .A(n121), .B(ZxDI[1]), .ZN(FFxDN[11]) );
  NAND2_X1 U166 ( .A1(InputxDI[2]), .A2(InputxDI[6]), .ZN(n122) );
  XNOR2_X1 U167 ( .A(n122), .B(ZxDI[0]), .ZN(FFxDN[10]) );
  INV_X1 U168 ( .A(InputxDI[1]), .ZN(n123) );
  NAND2_X1 U169 ( .A1(n123), .A2(InputxDI[2]), .ZN(n124) );
  XNOR2_X1 U170 ( .A(n124), .B(InputxDI[0]), .ZN(FFxDN[0]) );
endmodule

