/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jan  1 22:24:52 2024
/////////////////////////////////////////////////////////////


module keccak_sbox ( ClkxCI, RstxRBI, IotaRCxDI, InputxDI, ZxDI, OutputxDO );
(* SILVER="[4:0]_0,[4:0]_1" *)  input [9:0] InputxDI;
(* SILVER="refresh"*)  input [4:0] ZxDI;
(* SILVER="[4:0]_0,[4:0]_1" *)  output [9:0] OutputxDO;
(* SILVER="clock" *)  input ClkxCI;
(* SILVER="control" *)  input RstxRBI, IotaRCxDI;
  wire   n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124;
  wire   [19:0] FFxDN;

  DFFR_X1 \FFxDP_reg[19]  ( .D(FFxDN[19]), .CK(ClkxCI), .RN(RstxRBI), .QN(n74)
         );
  DFFR_X1 \FFxDP_reg[18]  ( .D(FFxDN[18]), .CK(ClkxCI), .RN(RstxRBI), .QN(n76)
         );
  DFFR_X1 \FFxDP_reg[17]  ( .D(FFxDN[17]), .CK(ClkxCI), .RN(RstxRBI), .QN(n78)
         );
  DFFR_X1 \FFxDP_reg[16]  ( .D(FFxDN[16]), .CK(ClkxCI), .RN(RstxRBI), .QN(n80)
         );
  DFFR_X1 \FFxDP_reg[15]  ( .D(FFxDN[15]), .CK(ClkxCI), .RN(RstxRBI), .QN(n82)
         );
  DFFR_X1 \FFxDP_reg[14]  ( .D(FFxDN[14]), .CK(ClkxCI), .RN(RstxRBI), .QN(n73)
         );
  DFFR_X1 \FFxDP_reg[13]  ( .D(FFxDN[13]), .CK(ClkxCI), .RN(RstxRBI), .QN(n75)
         );
  DFFR_X1 \FFxDP_reg[12]  ( .D(FFxDN[12]), .CK(ClkxCI), .RN(RstxRBI), .QN(n77)
         );
  DFFR_X1 \FFxDP_reg[11]  ( .D(FFxDN[11]), .CK(ClkxCI), .RN(RstxRBI), .QN(n79)
         );
  DFFR_X1 \FFxDP_reg[10]  ( .D(FFxDN[10]), .CK(ClkxCI), .RN(RstxRBI), .QN(n81)
         );
  DFFR_X1 \FFxDP_reg[9]  ( .D(FFxDN[9]), .CK(ClkxCI), .RN(RstxRBI), .QN(n84)
         );
  DFFR_X1 \FFxDP_reg[8]  ( .D(FFxDN[8]), .CK(ClkxCI), .RN(RstxRBI), .QN(n86)
         );
  DFFR_X1 \FFxDP_reg[7]  ( .D(FFxDN[7]), .CK(ClkxCI), .RN(RstxRBI), .QN(n88)
         );
  DFFR_X1 \FFxDP_reg[6]  ( .D(FFxDN[6]), .CK(ClkxCI), .RN(RstxRBI), .QN(n90)
         );
  DFFR_X1 \FFxDP_reg[5]  ( .D(FFxDN[5]), .CK(ClkxCI), .RN(RstxRBI), .QN(n92)
         );
  DFFR_X1 \FFxDP_reg[4]  ( .D(FFxDN[4]), .CK(ClkxCI), .RN(RstxRBI), .QN(n83)
         );
  DFFR_X1 \FFxDP_reg[3]  ( .D(FFxDN[3]), .CK(ClkxCI), .RN(RstxRBI), .QN(n85)
         );
  DFFR_X1 \FFxDP_reg[2]  ( .D(FFxDN[2]), .CK(ClkxCI), .RN(RstxRBI), .QN(n87)
         );
  DFFR_X1 \FFxDP_reg[1]  ( .D(FFxDN[1]), .CK(ClkxCI), .RN(RstxRBI), .QN(n89)
         );
  DFFR_X1 \FFxDP_reg[0]  ( .D(FFxDN[0]), .CK(ClkxCI), .RN(RstxRBI), .QN(n91)
         );
  XOR2_X1 U115 ( .A(n74), .B(n73), .Z(OutputxDO[9]) );
  XOR2_X1 U116 ( .A(n76), .B(n75), .Z(OutputxDO[8]) );
  XOR2_X1 U117 ( .A(n78), .B(n77), .Z(OutputxDO[7]) );
  XOR2_X1 U118 ( .A(n80), .B(n79), .Z(OutputxDO[6]) );
  XOR2_X1 U119 ( .A(n82), .B(n81), .Z(OutputxDO[5]) );
  XOR2_X1 U120 ( .A(n84), .B(n83), .Z(OutputxDO[4]) );
  XOR2_X1 U121 ( .A(n86), .B(n85), .Z(OutputxDO[3]) );
  XOR2_X1 U122 ( .A(n88), .B(n87), .Z(OutputxDO[2]) );
  XOR2_X1 U123 ( .A(n90), .B(n89), .Z(OutputxDO[1]) );
  XOR2_X1 U124 ( .A(n92), .B(n91), .Z(OutputxDO[0]) );
  NAND2_X1 U125 ( .A1(InputxDI[0]), .A2(InputxDI[6]), .ZN(n109) );
  XNOR2_X1 U126 ( .A(n109), .B(InputxDI[4]), .ZN(FFxDN[9]) );
  NAND2_X1 U127 ( .A1(InputxDI[5]), .A2(InputxDI[4]), .ZN(n110) );
  INV_X1 U128 ( .A(InputxDI[3]), .ZN(n115) );
  XOR2_X1 U129 ( .A(n110), .B(n115), .Z(FFxDN[8]) );
  NAND2_X1 U130 ( .A1(InputxDI[9]), .A2(InputxDI[3]), .ZN(n111) );
  XNOR2_X1 U131 ( .A(n111), .B(InputxDI[2]), .ZN(FFxDN[7]) );
  NAND2_X1 U132 ( .A1(InputxDI[8]), .A2(InputxDI[2]), .ZN(n112) );
  INV_X1 U133 ( .A(InputxDI[1]), .ZN(n124) );
  XOR2_X1 U134 ( .A(n112), .B(n124), .Z(FFxDN[6]) );
  NAND2_X1 U135 ( .A1(InputxDI[7]), .A2(InputxDI[1]), .ZN(n113) );
  INV_X1 U136 ( .A(InputxDI[0]), .ZN(n114) );
  XOR2_X1 U137 ( .A(n113), .B(n114), .Z(FFxDN[5]) );
  NOR2_X1 U138 ( .A1(InputxDI[0]), .A2(n124), .ZN(FFxDN[4]) );
  NOR2_X1 U139 ( .A1(InputxDI[4]), .A2(n114), .ZN(FFxDN[3]) );
  AND2_X1 U140 ( .A1(n115), .A2(InputxDI[4]), .ZN(FFxDN[2]) );
  NOR2_X1 U141 ( .A1(InputxDI[2]), .A2(n115), .ZN(FFxDN[1]) );
  NAND2_X1 U142 ( .A1(InputxDI[1]), .A2(InputxDI[5]), .ZN(n116) );
  INV_X1 U143 ( .A(InputxDI[9]), .ZN(n118) );
  XOR2_X1 U144 ( .A(n116), .B(n118), .Z(FFxDN[14]) );
  INV_X1 U145 ( .A(InputxDI[5]), .ZN(n123) );
  NOR2_X1 U146 ( .A1(InputxDI[9]), .A2(n123), .ZN(FFxDN[18]) );
  NAND2_X1 U147 ( .A1(InputxDI[0]), .A2(InputxDI[9]), .ZN(n117) );
  XNOR2_X1 U148 ( .A(n117), .B(InputxDI[8]), .ZN(FFxDN[13]) );
  NOR2_X1 U149 ( .A1(InputxDI[8]), .A2(n118), .ZN(FFxDN[17]) );
  NAND2_X1 U150 ( .A1(InputxDI[4]), .A2(InputxDI[8]), .ZN(n119) );
  INV_X1 U151 ( .A(InputxDI[7]), .ZN(n121) );
  XOR2_X1 U152 ( .A(n119), .B(n121), .Z(FFxDN[12]) );
  AND2_X1 U153 ( .A1(n121), .A2(InputxDI[8]), .ZN(FFxDN[16]) );
  NAND2_X1 U154 ( .A1(InputxDI[7]), .A2(InputxDI[3]), .ZN(n120) );
  XNOR2_X1 U155 ( .A(n120), .B(InputxDI[6]), .ZN(FFxDN[11]) );
  NOR2_X1 U156 ( .A1(InputxDI[6]), .A2(n121), .ZN(FFxDN[15]) );
  NAND2_X1 U157 ( .A1(InputxDI[2]), .A2(InputxDI[6]), .ZN(n122) );
  XOR2_X1 U158 ( .A(n122), .B(n123), .Z(FFxDN[10]) );
  AND2_X1 U159 ( .A1(n123), .A2(InputxDI[6]), .ZN(FFxDN[19]) );
  AND2_X1 U160 ( .A1(n124), .A2(InputxDI[2]), .ZN(FFxDN[0]) );
endmodule

