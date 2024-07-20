/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jun  5 08:16:55 2023
/////////////////////////////////////////////////////////////


module keccak_sbox ( ClkxCI, RstxRBI, IotaRCxDI, InputxDI, ZxDI, OutputxDO );
(* SILVER="[4:0]_0,[4:0]_1,[4:0]_2" *)  input [14:0] InputxDI;
(* SILVER="refresh"*)  input [14:0] ZxDI;
(* SILVER="[4:0]_0,[4:0]_1,[4:0]_2" *)  output [14:0] OutputxDO;
(* SILVER="clock" *)  input ClkxCI;
(* SILVER="control" *)  input RstxRBI, IotaRCxDI;
  wire   n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306;
  wire   [44:0] FFxDP;
  wire   [44:0] FFxDN;

  DFFR_X1 \FFxDP_reg[44]  ( .D(FFxDN[44]), .CK(ClkxCI), .RN(RstxRBI), .QN(n158) );
  DFFR_X1 \FFxDP_reg[43]  ( .D(FFxDN[43]), .CK(ClkxCI), .RN(RstxRBI), .QN(n160) );
  DFFR_X1 \FFxDP_reg[42]  ( .D(FFxDN[42]), .CK(ClkxCI), .RN(RstxRBI), .QN(n162) );
  DFFR_X1 \FFxDP_reg[41]  ( .D(FFxDN[41]), .CK(ClkxCI), .RN(RstxRBI), .QN(n164) );
  DFFR_X1 \FFxDP_reg[40]  ( .D(FFxDN[40]), .CK(ClkxCI), .RN(RstxRBI), .QN(n166) );
  DFFR_X1 \FFxDP_reg[39]  ( .D(FFxDN[39]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[39]) );
  DFFR_X1 \FFxDP_reg[38]  ( .D(FFxDN[38]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[38]) );
  DFFR_X1 \FFxDP_reg[37]  ( .D(FFxDN[37]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[37]) );
  DFFR_X1 \FFxDP_reg[36]  ( .D(FFxDN[36]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[36]) );
  DFFR_X1 \FFxDP_reg[35]  ( .D(FFxDN[35]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[35]) );
  DFFR_X1 \FFxDP_reg[34]  ( .D(FFxDN[34]), .CK(ClkxCI), .RN(RstxRBI), .QN(n157) );
  DFFR_X1 \FFxDP_reg[33]  ( .D(FFxDN[33]), .CK(ClkxCI), .RN(RstxRBI), .QN(n159) );
  DFFR_X1 \FFxDP_reg[32]  ( .D(FFxDN[32]), .CK(ClkxCI), .RN(RstxRBI), .QN(n161) );
  DFFR_X1 \FFxDP_reg[31]  ( .D(FFxDN[31]), .CK(ClkxCI), .RN(RstxRBI), .QN(n163) );
  DFFR_X1 \FFxDP_reg[30]  ( .D(FFxDN[30]), .CK(ClkxCI), .RN(RstxRBI), .QN(n165) );
  DFFR_X1 \FFxDP_reg[29]  ( .D(FFxDN[29]), .CK(ClkxCI), .RN(RstxRBI), .QN(n140) );
  DFFR_X1 \FFxDP_reg[28]  ( .D(FFxDN[28]), .CK(ClkxCI), .RN(RstxRBI), .QN(n142) );
  DFFR_X1 \FFxDP_reg[27]  ( .D(FFxDN[27]), .CK(ClkxCI), .RN(RstxRBI), .QN(n144) );
  DFFR_X1 \FFxDP_reg[26]  ( .D(FFxDN[26]), .CK(ClkxCI), .RN(RstxRBI), .QN(n146) );
  DFFR_X1 \FFxDP_reg[25]  ( .D(FFxDN[25]), .CK(ClkxCI), .RN(RstxRBI), .QN(n148) );
  DFFR_X1 \FFxDP_reg[24]  ( .D(FFxDN[24]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[24]) );
  DFFR_X1 \FFxDP_reg[23]  ( .D(FFxDN[23]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[23]) );
  DFFR_X1 \FFxDP_reg[22]  ( .D(FFxDN[22]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[22]) );
  DFFR_X1 \FFxDP_reg[21]  ( .D(FFxDN[21]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[21]) );
  DFFR_X1 \FFxDP_reg[20]  ( .D(FFxDN[20]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[20]) );
  DFFR_X1 \FFxDP_reg[19]  ( .D(FFxDN[19]), .CK(ClkxCI), .RN(RstxRBI), .QN(n139) );
  DFFR_X1 \FFxDP_reg[18]  ( .D(FFxDN[18]), .CK(ClkxCI), .RN(RstxRBI), .QN(n141) );
  DFFR_X1 \FFxDP_reg[17]  ( .D(FFxDN[17]), .CK(ClkxCI), .RN(RstxRBI), .QN(n143) );
  DFFR_X1 \FFxDP_reg[16]  ( .D(FFxDN[16]), .CK(ClkxCI), .RN(RstxRBI), .QN(n145) );
  DFFR_X1 \FFxDP_reg[15]  ( .D(FFxDN[15]), .CK(ClkxCI), .RN(RstxRBI), .QN(n147) );
  DFFR_X1 \FFxDP_reg[14]  ( .D(FFxDN[14]), .CK(ClkxCI), .RN(RstxRBI), .QN(n149) );
  DFFR_X1 \FFxDP_reg[13]  ( .D(FFxDN[13]), .CK(ClkxCI), .RN(RstxRBI), .QN(n151) );
  DFFR_X1 \FFxDP_reg[12]  ( .D(FFxDN[12]), .CK(ClkxCI), .RN(RstxRBI), .QN(n153) );
  DFFR_X1 \FFxDP_reg[11]  ( .D(FFxDN[11]), .CK(ClkxCI), .RN(RstxRBI), .QN(n155) );
  DFFR_X1 \FFxDP_reg[10]  ( .D(FFxDN[10]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[10]) );
  DFFR_X1 \FFxDP_reg[9]  ( .D(FFxDN[9]), .CK(ClkxCI), .RN(RstxRBI), .QN(n150)
         );
  DFFR_X1 \FFxDP_reg[8]  ( .D(FFxDN[8]), .CK(ClkxCI), .RN(RstxRBI), .QN(n152)
         );
  DFFR_X1 \FFxDP_reg[7]  ( .D(FFxDN[7]), .CK(ClkxCI), .RN(RstxRBI), .QN(n154)
         );
  DFFR_X1 \FFxDP_reg[6]  ( .D(FFxDN[6]), .CK(ClkxCI), .RN(RstxRBI), .QN(n156)
         );
  DFFR_X1 \FFxDP_reg[5]  ( .D(FFxDN[5]), .CK(ClkxCI), .RN(RstxRBI), .QN(n168)
         );
  DFFR_X1 \FFxDP_reg[4]  ( .D(FFxDN[4]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[4]) );
  DFFR_X1 \FFxDP_reg[3]  ( .D(FFxDN[3]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[3]) );
  DFFR_X1 \FFxDP_reg[2]  ( .D(FFxDN[2]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[2]) );
  DFFR_X1 \FFxDP_reg[1]  ( .D(FFxDN[1]), .CK(ClkxCI), .RN(RstxRBI), .Q(
        FFxDP[1]) );
  DFFR_X1 \FFxDP_reg[0]  ( .D(FFxDN[0]), .CK(ClkxCI), .RN(RstxRBI), .QN(n167)
         );
  XNOR2_X1 U261 ( .A(FFxDP[24]), .B(n140), .ZN(n238) );
  XNOR2_X1 U262 ( .A(n238), .B(n139), .ZN(OutputxDO[9]) );
  XNOR2_X1 U263 ( .A(FFxDP[23]), .B(n142), .ZN(n239) );
  XNOR2_X1 U264 ( .A(n239), .B(n141), .ZN(OutputxDO[8]) );
  XNOR2_X1 U265 ( .A(FFxDP[22]), .B(n144), .ZN(n240) );
  XNOR2_X1 U266 ( .A(n240), .B(n143), .ZN(OutputxDO[7]) );
  XNOR2_X1 U267 ( .A(FFxDP[21]), .B(n146), .ZN(n241) );
  XNOR2_X1 U268 ( .A(n241), .B(n145), .ZN(OutputxDO[6]) );
  XNOR2_X1 U269 ( .A(FFxDP[20]), .B(n148), .ZN(n242) );
  XNOR2_X1 U270 ( .A(n242), .B(n147), .ZN(OutputxDO[5]) );
  XNOR2_X1 U271 ( .A(FFxDP[4]), .B(n150), .ZN(n243) );
  XNOR2_X1 U272 ( .A(n243), .B(n149), .ZN(OutputxDO[4]) );
  XNOR2_X1 U273 ( .A(FFxDP[3]), .B(n152), .ZN(n244) );
  XNOR2_X1 U274 ( .A(n244), .B(n151), .ZN(OutputxDO[3]) );
  XNOR2_X1 U275 ( .A(FFxDP[2]), .B(n154), .ZN(n245) );
  XNOR2_X1 U276 ( .A(n245), .B(n153), .ZN(OutputxDO[2]) );
  XNOR2_X1 U277 ( .A(FFxDP[1]), .B(n156), .ZN(n246) );
  XNOR2_X1 U278 ( .A(n246), .B(n155), .ZN(OutputxDO[1]) );
  XNOR2_X1 U279 ( .A(FFxDP[39]), .B(n158), .ZN(n247) );
  XNOR2_X1 U280 ( .A(n247), .B(n157), .ZN(OutputxDO[14]) );
  XNOR2_X1 U281 ( .A(FFxDP[38]), .B(n160), .ZN(n248) );
  XNOR2_X1 U282 ( .A(n248), .B(n159), .ZN(OutputxDO[13]) );
  XNOR2_X1 U283 ( .A(FFxDP[37]), .B(n162), .ZN(n249) );
  XNOR2_X1 U284 ( .A(n249), .B(n161), .ZN(OutputxDO[12]) );
  XNOR2_X1 U285 ( .A(FFxDP[36]), .B(n164), .ZN(n250) );
  XNOR2_X1 U286 ( .A(n250), .B(n163), .ZN(OutputxDO[11]) );
  XNOR2_X1 U287 ( .A(FFxDP[35]), .B(n166), .ZN(n251) );
  XNOR2_X1 U288 ( .A(n251), .B(n165), .ZN(OutputxDO[10]) );
  XNOR2_X1 U289 ( .A(FFxDP[10]), .B(n168), .ZN(n252) );
  XNOR2_X1 U290 ( .A(n252), .B(n167), .ZN(OutputxDO[0]) );
  NAND2_X1 U291 ( .A1(InputxDI[6]), .A2(InputxDI[0]), .ZN(n253) );
  XNOR2_X1 U292 ( .A(n253), .B(ZxDI[4]), .ZN(FFxDN[9]) );
  NAND2_X1 U293 ( .A1(InputxDI[5]), .A2(InputxDI[4]), .ZN(n254) );
  XNOR2_X1 U294 ( .A(n254), .B(ZxDI[3]), .ZN(FFxDN[8]) );
  NAND2_X1 U295 ( .A1(InputxDI[9]), .A2(InputxDI[3]), .ZN(n255) );
  XNOR2_X1 U296 ( .A(n255), .B(ZxDI[2]), .ZN(FFxDN[7]) );
  NAND2_X1 U297 ( .A1(InputxDI[8]), .A2(InputxDI[2]), .ZN(n256) );
  XNOR2_X1 U298 ( .A(n256), .B(ZxDI[1]), .ZN(FFxDN[6]) );
  NAND2_X1 U299 ( .A1(InputxDI[7]), .A2(InputxDI[1]), .ZN(n257) );
  XNOR2_X1 U300 ( .A(n257), .B(ZxDI[0]), .ZN(FFxDN[5]) );
  INV_X1 U301 ( .A(InputxDI[0]), .ZN(n267) );
  NAND2_X1 U302 ( .A1(InputxDI[1]), .A2(n267), .ZN(n258) );
  XNOR2_X1 U303 ( .A(InputxDI[4]), .B(n258), .ZN(FFxDN[4]) );
  INV_X1 U304 ( .A(InputxDI[10]), .ZN(n260) );
  NAND2_X1 U305 ( .A1(InputxDI[11]), .A2(n260), .ZN(n259) );
  XNOR2_X1 U306 ( .A(InputxDI[14]), .B(n259), .ZN(FFxDN[44]) );
  NOR2_X1 U307 ( .A1(InputxDI[14]), .A2(n260), .ZN(n261) );
  XOR2_X1 U308 ( .A(InputxDI[13]), .B(n261), .Z(FFxDN[43]) );
  INV_X1 U309 ( .A(InputxDI[13]), .ZN(n263) );
  NAND2_X1 U310 ( .A1(InputxDI[14]), .A2(n263), .ZN(n262) );
  XNOR2_X1 U311 ( .A(InputxDI[12]), .B(n262), .ZN(FFxDN[42]) );
  NOR2_X1 U312 ( .A1(InputxDI[12]), .A2(n263), .ZN(n264) );
  XOR2_X1 U313 ( .A(InputxDI[11]), .B(n264), .Z(FFxDN[41]) );
  INV_X1 U314 ( .A(InputxDI[11]), .ZN(n265) );
  NAND2_X1 U315 ( .A1(InputxDI[12]), .A2(n265), .ZN(n266) );
  XNOR2_X1 U316 ( .A(InputxDI[10]), .B(n266), .ZN(FFxDN[40]) );
  NOR2_X1 U317 ( .A1(InputxDI[4]), .A2(n267), .ZN(n268) );
  XOR2_X1 U318 ( .A(InputxDI[3]), .B(n268), .Z(FFxDN[3]) );
  NAND2_X1 U319 ( .A1(InputxDI[10]), .A2(InputxDI[6]), .ZN(n269) );
  XNOR2_X1 U320 ( .A(n269), .B(ZxDI[14]), .ZN(FFxDN[39]) );
  NAND2_X1 U321 ( .A1(InputxDI[14]), .A2(InputxDI[5]), .ZN(n270) );
  XNOR2_X1 U322 ( .A(n270), .B(ZxDI[13]), .ZN(FFxDN[38]) );
  NAND2_X1 U323 ( .A1(InputxDI[13]), .A2(InputxDI[9]), .ZN(n271) );
  XNOR2_X1 U324 ( .A(n271), .B(ZxDI[12]), .ZN(FFxDN[37]) );
  NAND2_X1 U325 ( .A1(InputxDI[12]), .A2(InputxDI[8]), .ZN(n272) );
  XNOR2_X1 U326 ( .A(n272), .B(ZxDI[11]), .ZN(FFxDN[36]) );
  NAND2_X1 U327 ( .A1(InputxDI[11]), .A2(InputxDI[7]), .ZN(n273) );
  XNOR2_X1 U328 ( .A(n273), .B(ZxDI[10]), .ZN(FFxDN[35]) );
  NAND2_X1 U329 ( .A1(InputxDI[10]), .A2(InputxDI[1]), .ZN(n274) );
  XNOR2_X1 U330 ( .A(n274), .B(ZxDI[9]), .ZN(FFxDN[34]) );
  NAND2_X1 U331 ( .A1(InputxDI[14]), .A2(InputxDI[0]), .ZN(n275) );
  XNOR2_X1 U332 ( .A(n275), .B(ZxDI[8]), .ZN(FFxDN[33]) );
  NAND2_X1 U333 ( .A1(InputxDI[13]), .A2(InputxDI[4]), .ZN(n276) );
  XNOR2_X1 U334 ( .A(n276), .B(ZxDI[7]), .ZN(FFxDN[32]) );
  NAND2_X1 U335 ( .A1(InputxDI[12]), .A2(InputxDI[3]), .ZN(n277) );
  XNOR2_X1 U336 ( .A(n277), .B(ZxDI[6]), .ZN(FFxDN[31]) );
  NAND2_X1 U337 ( .A1(InputxDI[11]), .A2(InputxDI[2]), .ZN(n278) );
  XNOR2_X1 U338 ( .A(n278), .B(ZxDI[5]), .ZN(FFxDN[30]) );
  INV_X1 U339 ( .A(InputxDI[3]), .ZN(n293) );
  NAND2_X1 U340 ( .A1(InputxDI[4]), .A2(n293), .ZN(n279) );
  XNOR2_X1 U341 ( .A(InputxDI[2]), .B(n279), .ZN(FFxDN[2]) );
  NAND2_X1 U342 ( .A1(InputxDI[11]), .A2(InputxDI[5]), .ZN(n280) );
  XNOR2_X1 U343 ( .A(n280), .B(ZxDI[14]), .ZN(FFxDN[29]) );
  NAND2_X1 U344 ( .A1(InputxDI[10]), .A2(InputxDI[9]), .ZN(n281) );
  XNOR2_X1 U345 ( .A(n281), .B(ZxDI[13]), .ZN(FFxDN[28]) );
  NAND2_X1 U346 ( .A1(InputxDI[14]), .A2(InputxDI[8]), .ZN(n282) );
  XNOR2_X1 U347 ( .A(n282), .B(ZxDI[12]), .ZN(FFxDN[27]) );
  NAND2_X1 U348 ( .A1(InputxDI[13]), .A2(InputxDI[7]), .ZN(n283) );
  XNOR2_X1 U349 ( .A(n283), .B(ZxDI[11]), .ZN(FFxDN[26]) );
  NAND2_X1 U350 ( .A1(InputxDI[12]), .A2(InputxDI[6]), .ZN(n284) );
  XNOR2_X1 U351 ( .A(n284), .B(ZxDI[10]), .ZN(FFxDN[25]) );
  INV_X1 U352 ( .A(InputxDI[5]), .ZN(n286) );
  NAND2_X1 U353 ( .A1(InputxDI[6]), .A2(n286), .ZN(n285) );
  XNOR2_X1 U354 ( .A(InputxDI[9]), .B(n285), .ZN(FFxDN[24]) );
  NOR2_X1 U355 ( .A1(InputxDI[9]), .A2(n286), .ZN(n287) );
  XOR2_X1 U356 ( .A(InputxDI[8]), .B(n287), .Z(FFxDN[23]) );
  INV_X1 U357 ( .A(InputxDI[8]), .ZN(n289) );
  NAND2_X1 U358 ( .A1(InputxDI[9]), .A2(n289), .ZN(n288) );
  XNOR2_X1 U359 ( .A(InputxDI[7]), .B(n288), .ZN(FFxDN[22]) );
  NOR2_X1 U360 ( .A1(InputxDI[7]), .A2(n289), .ZN(n290) );
  XOR2_X1 U361 ( .A(InputxDI[6]), .B(n290), .Z(FFxDN[21]) );
  INV_X1 U362 ( .A(InputxDI[6]), .ZN(n291) );
  NAND2_X1 U363 ( .A1(InputxDI[7]), .A2(n291), .ZN(n292) );
  XNOR2_X1 U364 ( .A(InputxDI[5]), .B(n292), .ZN(FFxDN[20]) );
  NOR2_X1 U365 ( .A1(InputxDI[2]), .A2(n293), .ZN(n294) );
  XOR2_X1 U366 ( .A(InputxDI[1]), .B(n294), .Z(FFxDN[1]) );
  NAND2_X1 U367 ( .A1(InputxDI[1]), .A2(InputxDI[5]), .ZN(n295) );
  XNOR2_X1 U368 ( .A(n295), .B(ZxDI[4]), .ZN(FFxDN[19]) );
  NAND2_X1 U369 ( .A1(InputxDI[9]), .A2(InputxDI[0]), .ZN(n296) );
  XNOR2_X1 U370 ( .A(n296), .B(ZxDI[3]), .ZN(FFxDN[18]) );
  NAND2_X1 U371 ( .A1(InputxDI[8]), .A2(InputxDI[4]), .ZN(n297) );
  XNOR2_X1 U372 ( .A(n297), .B(ZxDI[2]), .ZN(FFxDN[17]) );
  NAND2_X1 U373 ( .A1(InputxDI[7]), .A2(InputxDI[3]), .ZN(n298) );
  XNOR2_X1 U374 ( .A(n298), .B(ZxDI[1]), .ZN(FFxDN[16]) );
  NAND2_X1 U375 ( .A1(InputxDI[2]), .A2(InputxDI[6]), .ZN(n299) );
  XNOR2_X1 U376 ( .A(n299), .B(ZxDI[0]), .ZN(FFxDN[15]) );
  NAND2_X1 U377 ( .A1(InputxDI[11]), .A2(InputxDI[0]), .ZN(n300) );
  XNOR2_X1 U378 ( .A(n300), .B(ZxDI[9]), .ZN(FFxDN[14]) );
  NAND2_X1 U379 ( .A1(InputxDI[10]), .A2(InputxDI[4]), .ZN(n301) );
  XNOR2_X1 U380 ( .A(n301), .B(ZxDI[8]), .ZN(FFxDN[13]) );
  NAND2_X1 U381 ( .A1(InputxDI[14]), .A2(InputxDI[3]), .ZN(n302) );
  XNOR2_X1 U382 ( .A(n302), .B(ZxDI[7]), .ZN(FFxDN[12]) );
  NAND2_X1 U383 ( .A1(InputxDI[13]), .A2(InputxDI[2]), .ZN(n303) );
  XNOR2_X1 U384 ( .A(n303), .B(ZxDI[6]), .ZN(FFxDN[11]) );
  NAND2_X1 U385 ( .A1(InputxDI[12]), .A2(InputxDI[1]), .ZN(n304) );
  XNOR2_X1 U386 ( .A(n304), .B(ZxDI[5]), .ZN(FFxDN[10]) );
  INV_X1 U387 ( .A(InputxDI[1]), .ZN(n305) );
  NAND2_X1 U388 ( .A1(InputxDI[2]), .A2(n305), .ZN(n306) );
  XNOR2_X1 U389 ( .A(InputxDI[0]), .B(n306), .ZN(FFxDN[0]) );
endmodule

