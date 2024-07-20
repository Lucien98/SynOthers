/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jun 12 08:04:38 2023
/////////////////////////////////////////////////////////////


module PRINCE_Sbox_inv_0 ( clk, in1, in2, in3, r, 
        TwoSharesFromNeighbouringSbox, out1, out2, out3 );
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output [3:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  input clk;
  wire   \CF_Out[2][26] , \CF_Out[2][25] , \CF_Out[2][24] , \CF_Out[2][22] ,
         \CF_Out[2][20] , \CF_Out[2][19] , \CF_Out[2][18] , \CF_Out[2][17] ,
         \CF_Out[2][16] , \CF_Out[2][15] , \CF_Out[2][13] , \CF_Out[2][12] ,
         \CF_Out[2][11] , \CF_Out[2][9] , \CF_Out[2][8] , \CF_Out[2][7] ,
         \CF_Out[2][6] , \CF_Out[2][5] , \CF_Out[2][4] , \CF_Out[2][2] ,
         \CF_Out[2][1] , \CF_Out[2][0] , \CF_Out[1][26] , \CF_Out[1][25] ,
         \CF_Out[1][24] , \CF_Out[1][23] , \CF_Out[1][21] , \CF_Out[1][20] ,
         \CF_Out[1][18] , \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] ,
         \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][10] , \CF_Out[1][9] ,
         \CF_Out[1][8] , \CF_Out[1][7] , \CF_Out[1][6] , \CF_Out[1][4] ,
         \CF_Out[1][3] , \CF_Out[1][1] , \CF_Out[1][0] , \CF_Out[0][26] ,
         \CF_Out[0][25] , \CF_Out[0][24] , \CF_Out[0][23] , \CF_Out[0][22] ,
         \CF_Out[0][21] , \CF_Out[0][20] , \CF_Out[0][19] , \CF_Out[0][18] ,
         \CF_Out[0][17] , \CF_Out[0][16] , \CF_Out[0][15] , \CF_Out[0][14] ,
         \CF_Out[0][13] , \CF_Out[0][12] , \CF_Out[0][10] , \CF_Out[0][9] ,
         \CF_Out[0][8] , \CF_Out[0][7] , \CF_Out[0][6] , \CF_Out[0][5] ,
         \CF_Out[0][4] , \CF_Out[0][3] , \CF_Out[0][2] , \CF_Out[0][1] ,
         \CF_Out[0][0] , n26766, n26774, n26782, n26790, n26798, n26806,
         n26814, n26822, n26830, n26838, n26846, n26854, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n26710, n26711, n26712, n26713, n26714,
         n26715, n26716, n26717, n26718, n26719, n26720, n26721, n26722,
         n26723, n26724, n26725, n26726, n26727, n26728, n26729, n26730,
         n26731, n857, n858, n859, n860, n861, n862, n863, n864, n865, n866,
         n867, n868, n869, n870, n871, n872, n873, n874, n875, n876, n877,
         n878, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188,
         n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198,
         n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208,
         n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, n1217, n1218,
         n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226, n1227, n1228,
         n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236, n1237, n1238,
         n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246, n1247, n1248,
         n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256, n1257, n1258,
         n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266, n1267, n1268,
         n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276, n1277, n1278,
         n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286, n1287, n1288,
         n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296, n1297, n1298,
         n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306, n1307, n1308,
         n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316, n1317, n1318,
         n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326, n1327, n1328,
         n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338,
         n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348,
         n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358,
         n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368,
         n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378,
         n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388,
         n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398,
         n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408,
         n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418,
         n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428,
         n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438,
         n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448,
         n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458,
         n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468,
         n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478,
         n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488,
         n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498,
         n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507, n1508,
         n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516, n1517, n1518,
         n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526, n1527, n1528,
         n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536, n1537, n1538,
         n1539, n1540, n1541, n1542;
  wire   [44:0] CF_Out_MSB;

  DFF_X1 \CF_Reg_reg[2][26]  ( .D(\CF_Out[2][26] ), .CK(clk), .QN(n776) );
  DFF_X1 \CF_Reg_reg[2][25]  ( .D(\CF_Out[2][25] ), .CK(clk), .Q(n774) );
  DFF_X1 \CF_Reg_reg[2][24]  ( .D(\CF_Out[2][24] ), .CK(clk), .QN(n26830) );
  DFF_X1 \CF_Reg_reg[2][23]  ( .D(n26731), .CK(clk), .Q(n773) );
  DFF_X1 \CF_Reg_reg[2][22]  ( .D(\CF_Out[2][22] ), .CK(clk), .Q(n772) );
  DFF_X1 \CF_Reg_reg[2][21]  ( .D(n26721), .CK(clk), .Q(n775) );
  DFF_X1 \CF_Reg_reg[2][20]  ( .D(\CF_Out[2][20] ), .CK(clk), .Q(n771) );
  DFF_X1 \CF_Reg_reg[2][19]  ( .D(\CF_Out[2][19] ), .CK(clk), .Q(n769) );
  DFF_X1 \CF_Reg_reg[2][18]  ( .D(\CF_Out[2][18] ), .CK(clk), .Q(n770) );
  DFF_X1 \CF_Reg_reg[2][17]  ( .D(\CF_Out[2][17] ), .CK(clk), .QN(n808) );
  DFF_X1 \CF_Reg_reg[2][16]  ( .D(\CF_Out[2][16] ), .CK(clk), .Q(n806) );
  DFF_X1 \CF_Reg_reg[2][15]  ( .D(\CF_Out[2][15] ), .CK(clk), .QN(n26822) );
  DFF_X1 \CF_Reg_reg[2][14]  ( .D(n26726), .CK(clk), .Q(n805) );
  DFF_X1 \CF_Reg_reg[2][13]  ( .D(\CF_Out[2][13] ), .CK(clk), .Q(n804) );
  DFF_X1 \CF_Reg_reg[2][12]  ( .D(\CF_Out[2][12] ), .CK(clk), .Q(n807) );
  DFF_X1 \CF_Reg_reg[2][11]  ( .D(\CF_Out[2][11] ), .CK(clk), .Q(n803) );
  DFF_X1 \CF_Reg_reg[2][10]  ( .D(n26720), .CK(clk), .Q(n801) );
  DFF_X1 \CF_Reg_reg[2][9]  ( .D(\CF_Out[2][9] ), .CK(clk), .Q(n802) );
  DFF_X1 \CF_Reg_reg[2][8]  ( .D(\CF_Out[2][8] ), .CK(clk), .QN(n840) );
  DFF_X1 \CF_Reg_reg[2][7]  ( .D(\CF_Out[2][7] ), .CK(clk), .Q(n838) );
  DFF_X1 \CF_Reg_reg[2][6]  ( .D(\CF_Out[2][6] ), .CK(clk), .QN(n26814) );
  DFF_X1 \CF_Reg_reg[2][5]  ( .D(\CF_Out[2][5] ), .CK(clk), .Q(n837) );
  DFF_X1 \CF_Reg_reg[2][4]  ( .D(\CF_Out[2][4] ), .CK(clk), .Q(n836) );
  DFF_X1 \CF_Reg_reg[2][3]  ( .D(n26710), .CK(clk), .Q(n839) );
  DFF_X1 \CF_Reg_reg[2][2]  ( .D(\CF_Out[2][2] ), .CK(clk), .Q(n835) );
  DFF_X1 \CF_Reg_reg[2][1]  ( .D(\CF_Out[2][1] ), .CK(clk), .Q(n833) );
  DFF_X1 \CF_Reg_reg[2][0]  ( .D(\CF_Out[2][0] ), .CK(clk), .Q(n834) );
  DFF_X1 \CF_Reg_reg[1][26]  ( .D(\CF_Out[1][26] ), .CK(clk), .QN(n784) );
  DFF_X1 \CF_Reg_reg[1][25]  ( .D(\CF_Out[1][25] ), .CK(clk), .Q(n782) );
  DFF_X1 \CF_Reg_reg[1][24]  ( .D(\CF_Out[1][24] ), .CK(clk), .QN(n26806) );
  DFF_X1 \CF_Reg_reg[1][23]  ( .D(\CF_Out[1][23] ), .CK(clk), .Q(n781) );
  DFF_X1 \CF_Reg_reg[1][22]  ( .D(n26713), .CK(clk), .Q(n780) );
  DFF_X1 \CF_Reg_reg[1][21]  ( .D(\CF_Out[1][21] ), .CK(clk), .Q(n783) );
  DFF_X1 \CF_Reg_reg[1][20]  ( .D(\CF_Out[1][20] ), .CK(clk), .Q(n779) );
  DFF_X1 \CF_Reg_reg[1][19]  ( .D(n26712), .CK(clk), .Q(n777) );
  DFF_X1 \CF_Reg_reg[1][18]  ( .D(\CF_Out[1][18] ), .CK(clk), .Q(n778) );
  DFF_X1 \CF_Reg_reg[1][17]  ( .D(\CF_Out[1][17] ), .CK(clk), .QN(n816) );
  DFF_X1 \CF_Reg_reg[1][16]  ( .D(\CF_Out[1][16] ), .CK(clk), .Q(n814) );
  DFF_X1 \CF_Reg_reg[1][15]  ( .D(\CF_Out[1][15] ), .CK(clk), .QN(n26798) );
  DFF_X1 \CF_Reg_reg[1][14]  ( .D(n26728), .CK(clk), .Q(n813) );
  DFF_X1 \CF_Reg_reg[1][13]  ( .D(\CF_Out[1][13] ), .CK(clk), .Q(n812) );
  DFF_X1 \CF_Reg_reg[1][12]  ( .D(\CF_Out[1][12] ), .CK(clk), .Q(n815) );
  DFF_X1 \CF_Reg_reg[1][11]  ( .D(n26725), .CK(clk), .Q(n811) );
  DFF_X1 \CF_Reg_reg[1][10]  ( .D(\CF_Out[1][10] ), .CK(clk), .Q(n809) );
  DFF_X1 \CF_Reg_reg[1][9]  ( .D(\CF_Out[1][9] ), .CK(clk), .Q(n810) );
  DFF_X1 \CF_Reg_reg[1][8]  ( .D(\CF_Out[1][8] ), .CK(clk), .QN(n848) );
  DFF_X1 \CF_Reg_reg[1][7]  ( .D(\CF_Out[1][7] ), .CK(clk), .Q(n846) );
  DFF_X1 \CF_Reg_reg[1][6]  ( .D(\CF_Out[1][6] ), .CK(clk), .QN(n26790) );
  DFF_X1 \CF_Reg_reg[1][5]  ( .D(n26717), .CK(clk), .Q(n845) );
  DFF_X1 \CF_Reg_reg[1][4]  ( .D(\CF_Out[1][4] ), .CK(clk), .Q(n844) );
  DFF_X1 \CF_Reg_reg[1][3]  ( .D(\CF_Out[1][3] ), .CK(clk), .Q(n847) );
  DFF_X1 \CF_Reg_reg[1][2]  ( .D(n26722), .CK(clk), .Q(n843) );
  DFF_X1 \CF_Reg_reg[1][1]  ( .D(\CF_Out[1][1] ), .CK(clk), .Q(n841) );
  DFF_X1 \CF_Reg_reg[1][0]  ( .D(\CF_Out[1][0] ), .CK(clk), .Q(n842) );
  DFF_X1 \CF_Reg_reg[0][26]  ( .D(\CF_Out[0][26] ), .CK(clk), .QN(n792) );
  DFF_X1 \CF_Reg_reg[0][25]  ( .D(\CF_Out[0][25] ), .CK(clk), .Q(n790) );
  DFF_X1 \CF_Reg_reg[0][24]  ( .D(\CF_Out[0][24] ), .CK(clk), .QN(n26782) );
  DFF_X1 \CF_Reg_reg[0][23]  ( .D(\CF_Out[0][23] ), .CK(clk), .Q(n789) );
  DFF_X1 \CF_Reg_reg[0][22]  ( .D(\CF_Out[0][22] ), .CK(clk), .Q(n788) );
  DFF_X1 \CF_Reg_reg[0][21]  ( .D(\CF_Out[0][21] ), .CK(clk), .Q(n791) );
  DFF_X1 \CF_Reg_reg[0][20]  ( .D(\CF_Out[0][20] ), .CK(clk), .Q(n787) );
  DFF_X1 \CF_Reg_reg[0][19]  ( .D(\CF_Out[0][19] ), .CK(clk), .Q(n785) );
  DFF_X1 \CF_Reg_reg[0][18]  ( .D(\CF_Out[0][18] ), .CK(clk), .Q(n786) );
  DFF_X1 \CF_Reg_reg[0][17]  ( .D(\CF_Out[0][17] ), .CK(clk), .QN(n824) );
  DFF_X1 \CF_Reg_reg[0][16]  ( .D(\CF_Out[0][16] ), .CK(clk), .Q(n822) );
  DFF_X1 \CF_Reg_reg[0][15]  ( .D(\CF_Out[0][15] ), .CK(clk), .QN(n26774) );
  DFF_X1 \CF_Reg_reg[0][14]  ( .D(\CF_Out[0][14] ), .CK(clk), .Q(n821) );
  DFF_X1 \CF_Reg_reg[0][13]  ( .D(\CF_Out[0][13] ), .CK(clk), .Q(n820) );
  DFF_X1 \CF_Reg_reg[0][12]  ( .D(\CF_Out[0][12] ), .CK(clk), .Q(n823) );
  DFF_X1 \CF_Reg_reg[0][11]  ( .D(n26723), .CK(clk), .Q(n819) );
  DFF_X1 \CF_Reg_reg[0][10]  ( .D(\CF_Out[0][10] ), .CK(clk), .Q(n817) );
  DFF_X1 \CF_Reg_reg[0][9]  ( .D(\CF_Out[0][9] ), .CK(clk), .Q(n818) );
  DFF_X1 \CF_Reg_reg[0][8]  ( .D(\CF_Out[0][8] ), .CK(clk), .QN(n856) );
  DFF_X1 \CF_Reg_reg[0][7]  ( .D(\CF_Out[0][7] ), .CK(clk), .Q(n854) );
  DFF_X1 \CF_Reg_reg[0][6]  ( .D(\CF_Out[0][6] ), .CK(clk), .QN(n26766) );
  DFF_X1 \CF_Reg_reg[0][5]  ( .D(\CF_Out[0][5] ), .CK(clk), .Q(n853) );
  DFF_X1 \CF_Reg_reg[0][4]  ( .D(\CF_Out[0][4] ), .CK(clk), .Q(n852) );
  DFF_X1 \CF_Reg_reg[0][3]  ( .D(\CF_Out[0][3] ), .CK(clk), .Q(n855) );
  DFF_X1 \CF_Reg_reg[0][2]  ( .D(\CF_Out[0][2] ), .CK(clk), .Q(n851) );
  DFF_X1 \CF_Reg_reg[0][1]  ( .D(\CF_Out[0][1] ), .CK(clk), .Q(n849) );
  DFF_X1 \CF_Reg_reg[0][0]  ( .D(\CF_Out[0][0] ), .CK(clk), .Q(n850) );
  DFF_X1 \CF_Reg_MSB_reg[44]  ( .D(n26716), .CK(clk), .Q(n765) );
  DFF_X1 \CF_Reg_MSB_reg[43]  ( .D(CF_Out_MSB[43]), .CK(clk), .Q(n764) );
  DFF_X1 \CF_Reg_MSB_reg[42]  ( .D(CF_Out_MSB[42]), .CK(clk), .Q(n767) );
  DFF_X1 \CF_Reg_MSB_reg[41]  ( .D(n26729), .CK(clk), .Q(n763) );
  DFF_X1 \CF_Reg_MSB_reg[40]  ( .D(CF_Out_MSB[40]), .CK(clk), .Q(n761) );
  DFF_X1 \CF_Reg_MSB_reg[39]  ( .D(CF_Out_MSB[39]), .CK(clk), .QN(n768) );
  DFF_X1 \CF_Reg_MSB_reg[38]  ( .D(CF_Out_MSB[38]), .CK(clk), .Q(n766) );
  DFF_X1 \CF_Reg_MSB_reg[37]  ( .D(n26711), .CK(clk), .QN(n26854) );
  DFF_X1 \CF_Reg_MSB_reg[36]  ( .D(n26727), .CK(clk), .Q(n762) );
  DFF_X1 \CF_Reg_MSB_reg[29]  ( .D(CF_Out_MSB[29]), .CK(clk), .Q(n796) );
  DFF_X1 \CF_Reg_MSB_reg[28]  ( .D(n26714), .CK(clk), .Q(n793) );
  DFF_X1 \CF_Reg_MSB_reg[27]  ( .D(CF_Out_MSB[27]), .CK(clk), .Q(n794) );
  DFF_X1 \CF_Reg_MSB_reg[26]  ( .D(n26719), .CK(clk), .Q(n798) );
  DFF_X1 \CF_Reg_MSB_reg[25]  ( .D(CF_Out_MSB[25]), .CK(clk), .Q(n795) );
  DFF_X1 \CF_Reg_MSB_reg[24]  ( .D(CF_Out_MSB[24]), .CK(clk), .Q(n799) );
  DFF_X1 \CF_Reg_MSB_reg[20]  ( .D(CF_Out_MSB[20]), .CK(clk), .QN(n26846) );
  DFF_X1 \CF_Reg_MSB_reg[19]  ( .D(n26715), .CK(clk), .Q(n797) );
  DFF_X1 \CF_Reg_MSB_reg[18]  ( .D(n26730), .CK(clk), .QN(n800) );
  DFF_X1 \CF_Reg_MSB_reg[14]  ( .D(CF_Out_MSB[14]), .CK(clk), .Q(n825) );
  DFF_X1 \CF_Reg_MSB_reg[13]  ( .D(n26724), .CK(clk), .QN(n832) );
  DFF_X1 \CF_Reg_MSB_reg[12]  ( .D(CF_Out_MSB[12]), .CK(clk), .Q(n830) );
  DFF_X1 \CF_Reg_MSB_reg[11]  ( .D(CF_Out_MSB[11]), .CK(clk), .QN(n26838) );
  DFF_X1 \CF_Reg_MSB_reg[10]  ( .D(CF_Out_MSB[10]), .CK(clk), .Q(n829) );
  DFF_X1 \CF_Reg_MSB_reg[9]  ( .D(CF_Out_MSB[9]), .CK(clk), .Q(n827) );
  DFF_X1 \CF_Reg_MSB_reg[2]  ( .D(n26718), .CK(clk), .Q(n831) );
  DFF_X1 \CF_Reg_MSB_reg[1]  ( .D(CF_Out_MSB[1]), .CK(clk), .Q(n826) );
  DFF_X1 \CF_Reg_MSB_reg[0]  ( .D(CF_Out_MSB[0]), .CK(clk), .Q(n828) );
  XNOR2_X2 U13020 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n1522) );
  XOR2_X2 U13021 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n1542) );
  XOR2_X2 U13022 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n1471) );
  XOR2_X2 U13023 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n1488) );
  XOR2_X2 U13024 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n1401) );
  XNOR2_X2 U13025 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .ZN(n1533) );
  XNOR2_X2 U13026 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n1512) );
  XNOR2_X1 U13027 ( .A(n768), .B(n26854), .ZN(n863) );
  XOR2_X1 U13028 ( .A(n763), .B(n766), .Z(n858) );
  XNOR2_X1 U13029 ( .A(n762), .B(n761), .ZN(n857) );
  XNOR2_X1 U13030 ( .A(n858), .B(n857), .ZN(n859) );
  XOR2_X1 U13031 ( .A(n859), .B(n764), .Z(n861) );
  XNOR2_X1 U13032 ( .A(n765), .B(n767), .ZN(n860) );
  XNOR2_X1 U13033 ( .A(n861), .B(n860), .ZN(n862) );
  XNOR2_X1 U13034 ( .A(n863), .B(n862), .ZN(out3[3]) );
  XNOR2_X1 U13035 ( .A(n776), .B(n26830), .ZN(n870) );
  XOR2_X1 U13036 ( .A(n771), .B(n774), .Z(n865) );
  XNOR2_X1 U13037 ( .A(n770), .B(n769), .ZN(n864) );
  XNOR2_X1 U13038 ( .A(n865), .B(n864), .ZN(n866) );
  XOR2_X1 U13039 ( .A(n866), .B(n772), .Z(n868) );
  XNOR2_X1 U13040 ( .A(n773), .B(n775), .ZN(n867) );
  XNOR2_X1 U13041 ( .A(n868), .B(n867), .ZN(n869) );
  XNOR2_X1 U13042 ( .A(n870), .B(n869), .ZN(out3[2]) );
  XNOR2_X1 U13043 ( .A(n784), .B(n26806), .ZN(n877) );
  XOR2_X1 U13044 ( .A(n779), .B(n782), .Z(n872) );
  XNOR2_X1 U13045 ( .A(n778), .B(n777), .ZN(n871) );
  XNOR2_X1 U13046 ( .A(n872), .B(n871), .ZN(n873) );
  XOR2_X1 U13047 ( .A(n873), .B(n780), .Z(n875) );
  XNOR2_X1 U13048 ( .A(n781), .B(n783), .ZN(n874) );
  XNOR2_X1 U13049 ( .A(n875), .B(n874), .ZN(n876) );
  XNOR2_X1 U13050 ( .A(n877), .B(n876), .ZN(out3[1]) );
  XNOR2_X1 U13051 ( .A(n792), .B(n26782), .ZN(n884) );
  XOR2_X1 U13052 ( .A(n787), .B(n790), .Z(n879) );
  XNOR2_X1 U13053 ( .A(n786), .B(n785), .ZN(n878) );
  XNOR2_X1 U13054 ( .A(n879), .B(n878), .ZN(n880) );
  XOR2_X1 U13055 ( .A(n880), .B(n788), .Z(n882) );
  XNOR2_X1 U13056 ( .A(n789), .B(n791), .ZN(n881) );
  XNOR2_X1 U13057 ( .A(n882), .B(n881), .ZN(n883) );
  XNOR2_X1 U13058 ( .A(n884), .B(n883), .ZN(out3[0]) );
  XNOR2_X1 U13059 ( .A(n800), .B(n26846), .ZN(n891) );
  XOR2_X1 U13060 ( .A(n795), .B(n798), .Z(n886) );
  XNOR2_X1 U13061 ( .A(n794), .B(n793), .ZN(n885) );
  XNOR2_X1 U13062 ( .A(n886), .B(n885), .ZN(n887) );
  XOR2_X1 U13063 ( .A(n887), .B(n796), .Z(n889) );
  XNOR2_X1 U13064 ( .A(n797), .B(n799), .ZN(n888) );
  XNOR2_X1 U13065 ( .A(n889), .B(n888), .ZN(n890) );
  XNOR2_X1 U13066 ( .A(n891), .B(n890), .ZN(out2[3]) );
  XNOR2_X1 U13067 ( .A(n808), .B(n26822), .ZN(n898) );
  XOR2_X1 U13068 ( .A(n803), .B(n806), .Z(n893) );
  XNOR2_X1 U13069 ( .A(n802), .B(n801), .ZN(n892) );
  XNOR2_X1 U13070 ( .A(n893), .B(n892), .ZN(n894) );
  XOR2_X1 U13071 ( .A(n894), .B(n804), .Z(n896) );
  XNOR2_X1 U13072 ( .A(n805), .B(n807), .ZN(n895) );
  XNOR2_X1 U13073 ( .A(n896), .B(n895), .ZN(n897) );
  XNOR2_X1 U13074 ( .A(n898), .B(n897), .ZN(out2[2]) );
  XNOR2_X1 U13075 ( .A(n816), .B(n26798), .ZN(n905) );
  XOR2_X1 U13076 ( .A(n811), .B(n814), .Z(n900) );
  XNOR2_X1 U13077 ( .A(n810), .B(n809), .ZN(n899) );
  XNOR2_X1 U13078 ( .A(n900), .B(n899), .ZN(n901) );
  XOR2_X1 U13079 ( .A(n901), .B(n812), .Z(n903) );
  XNOR2_X1 U13080 ( .A(n813), .B(n815), .ZN(n902) );
  XNOR2_X1 U13081 ( .A(n903), .B(n902), .ZN(n904) );
  XNOR2_X1 U13082 ( .A(n905), .B(n904), .ZN(out2[1]) );
  XNOR2_X1 U13083 ( .A(n824), .B(n26774), .ZN(n912) );
  XOR2_X1 U13084 ( .A(n819), .B(n822), .Z(n907) );
  XNOR2_X1 U13085 ( .A(n818), .B(n817), .ZN(n906) );
  XNOR2_X1 U13086 ( .A(n907), .B(n906), .ZN(n908) );
  XOR2_X1 U13087 ( .A(n908), .B(n820), .Z(n910) );
  XNOR2_X1 U13088 ( .A(n821), .B(n823), .ZN(n909) );
  XNOR2_X1 U13089 ( .A(n910), .B(n909), .ZN(n911) );
  XNOR2_X1 U13090 ( .A(n912), .B(n911), .ZN(out2[0]) );
  XNOR2_X1 U13091 ( .A(n832), .B(n26838), .ZN(n919) );
  XOR2_X1 U13092 ( .A(n827), .B(n830), .Z(n914) );
  XNOR2_X1 U13093 ( .A(n826), .B(n825), .ZN(n913) );
  XNOR2_X1 U13094 ( .A(n914), .B(n913), .ZN(n915) );
  XOR2_X1 U13095 ( .A(n915), .B(n828), .Z(n917) );
  XNOR2_X1 U13096 ( .A(n829), .B(n831), .ZN(n916) );
  XNOR2_X1 U13097 ( .A(n917), .B(n916), .ZN(n918) );
  XNOR2_X1 U13098 ( .A(n919), .B(n918), .ZN(out1[3]) );
  XNOR2_X1 U13099 ( .A(n840), .B(n26814), .ZN(n926) );
  XOR2_X1 U13100 ( .A(n835), .B(n838), .Z(n921) );
  XNOR2_X1 U13101 ( .A(n834), .B(n833), .ZN(n920) );
  XNOR2_X1 U13102 ( .A(n921), .B(n920), .ZN(n922) );
  XOR2_X1 U13103 ( .A(n922), .B(n836), .Z(n924) );
  XNOR2_X1 U13104 ( .A(n837), .B(n839), .ZN(n923) );
  XNOR2_X1 U13105 ( .A(n924), .B(n923), .ZN(n925) );
  XNOR2_X1 U13106 ( .A(n926), .B(n925), .ZN(out1[2]) );
  XNOR2_X1 U13107 ( .A(n848), .B(n26790), .ZN(n933) );
  XOR2_X1 U13108 ( .A(n843), .B(n846), .Z(n928) );
  XNOR2_X1 U13109 ( .A(n842), .B(n841), .ZN(n927) );
  XNOR2_X1 U13110 ( .A(n928), .B(n927), .ZN(n929) );
  XOR2_X1 U13111 ( .A(n929), .B(n844), .Z(n931) );
  XNOR2_X1 U13112 ( .A(n845), .B(n847), .ZN(n930) );
  XNOR2_X1 U13113 ( .A(n931), .B(n930), .ZN(n932) );
  XNOR2_X1 U13114 ( .A(n933), .B(n932), .ZN(out1[1]) );
  XNOR2_X1 U13115 ( .A(n856), .B(n26766), .ZN(n940) );
  XOR2_X1 U13116 ( .A(n851), .B(n854), .Z(n935) );
  XNOR2_X1 U13117 ( .A(n850), .B(n849), .ZN(n934) );
  XNOR2_X1 U13118 ( .A(n935), .B(n934), .ZN(n936) );
  XOR2_X1 U13119 ( .A(n936), .B(n852), .Z(n938) );
  XNOR2_X1 U13120 ( .A(n853), .B(n855), .ZN(n937) );
  XNOR2_X1 U13121 ( .A(n938), .B(n937), .ZN(n939) );
  XNOR2_X1 U13122 ( .A(n940), .B(n939), .ZN(out1[0]) );
  XNOR2_X1 U13123 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[73]), .ZN(n941)
         );
  XNOR2_X1 U13124 ( .A(n941), .B(r[72]), .ZN(n945) );
  INV_X1 U13125 ( .A(in3[3]), .ZN(n1460) );
  NAND2_X1 U13126 ( .A1(in3[0]), .A2(in1[2]), .ZN(n1478) );
  XOR2_X1 U13127 ( .A(n1460), .B(n1478), .Z(n943) );
  INV_X1 U13128 ( .A(in3[0]), .ZN(n1527) );
  NOR2_X1 U13129 ( .A1(in1[1]), .A2(n1527), .ZN(n1292) );
  NOR2_X1 U13130 ( .A1(in3[0]), .A2(in1[2]), .ZN(n1230) );
  NOR2_X1 U13131 ( .A1(n1292), .A2(n1230), .ZN(n942) );
  NAND2_X1 U13132 ( .A1(n943), .A2(n942), .ZN(n944) );
  XNOR2_X1 U13133 ( .A(n945), .B(n944), .ZN(CF_Out_MSB[42]) );
  XNOR2_X1 U13134 ( .A(r[80]), .B(r[54]), .ZN(n949) );
  INV_X1 U13135 ( .A(in3[2]), .ZN(n1404) );
  NAND2_X1 U13136 ( .A1(in3[3]), .A2(in3[1]), .ZN(n1378) );
  NAND2_X1 U13137 ( .A1(n1404), .A2(n1378), .ZN(n946) );
  NAND2_X1 U13138 ( .A1(n946), .A2(n1527), .ZN(n947) );
  INV_X1 U13139 ( .A(in3[1]), .ZN(n1481) );
  NAND2_X1 U13140 ( .A1(n1460), .A2(n1481), .ZN(n1379) );
  NAND2_X1 U13141 ( .A1(n947), .A2(n1379), .ZN(n948) );
  XNOR2_X1 U13142 ( .A(n949), .B(n948), .ZN(n950) );
  XNOR2_X1 U13143 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n950), .ZN(
        CF_Out_MSB[38]) );
  NAND2_X1 U13144 ( .A1(in3[2]), .A2(in2[0]), .ZN(n1497) );
  XOR2_X1 U13145 ( .A(n1497), .B(in2[3]), .Z(n952) );
  NAND2_X1 U13146 ( .A1(in2[0]), .A2(n1481), .ZN(n1506) );
  INV_X1 U13147 ( .A(in2[0]), .ZN(n1301) );
  NAND2_X1 U13148 ( .A1(n1404), .A2(n1301), .ZN(n1084) );
  NAND2_X1 U13149 ( .A1(n1506), .A2(n1084), .ZN(n951) );
  NOR2_X1 U13150 ( .A1(n952), .A2(n951), .ZN(n953) );
  XOR2_X1 U13151 ( .A(n953), .B(r[71]), .Z(n955) );
  XNOR2_X1 U13152 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[72]), .ZN(n954)
         );
  XNOR2_X1 U13153 ( .A(n955), .B(n954), .ZN(CF_Out_MSB[29]) );
  INV_X1 U13154 ( .A(in1[3]), .ZN(n1528) );
  NAND2_X1 U13155 ( .A1(n1528), .A2(n1481), .ZN(n958) );
  NAND2_X1 U13156 ( .A1(in3[1]), .A2(in1[3]), .ZN(n1507) );
  INV_X1 U13157 ( .A(n1507), .ZN(n1516) );
  NOR2_X1 U13158 ( .A1(in1[2]), .A2(n1516), .ZN(n956) );
  NOR2_X1 U13159 ( .A1(n1301), .A2(n956), .ZN(n957) );
  NAND2_X1 U13160 ( .A1(n958), .A2(n957), .ZN(n961) );
  XNOR2_X1 U13161 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[64]), .ZN(n959)
         );
  XNOR2_X1 U13162 ( .A(n959), .B(r[63]), .ZN(n960) );
  XNOR2_X1 U13163 ( .A(n961), .B(n960), .ZN(CF_Out_MSB[24]) );
  INV_X1 U13164 ( .A(in1[0]), .ZN(n1513) );
  NAND2_X1 U13165 ( .A1(n1513), .A2(n1404), .ZN(n965) );
  NOR2_X1 U13166 ( .A1(n1404), .A2(n1513), .ZN(n1421) );
  XOR2_X1 U13167 ( .A(n1421), .B(n1528), .Z(n963) );
  NOR2_X1 U13168 ( .A1(n1513), .A2(in3[1]), .ZN(n962) );
  NOR2_X1 U13169 ( .A1(n963), .A2(n962), .ZN(n964) );
  NAND2_X1 U13170 ( .A1(n965), .A2(n964), .ZN(n968) );
  XNOR2_X1 U13171 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[62]), .ZN(n966)
         );
  XNOR2_X1 U13172 ( .A(n966), .B(r[63]), .ZN(n967) );
  XNOR2_X1 U13173 ( .A(n968), .B(n967), .ZN(CF_Out_MSB[14]) );
  NOR2_X1 U13174 ( .A1(in1[0]), .A2(in1[2]), .ZN(n1308) );
  NAND2_X1 U13175 ( .A1(n1308), .A2(in1[1]), .ZN(n972) );
  NAND2_X1 U13176 ( .A1(in1[3]), .A2(in1[2]), .ZN(n998) );
  NOR2_X1 U13177 ( .A1(in1[0]), .A2(n998), .ZN(n970) );
  NAND2_X1 U13178 ( .A1(in1[0]), .A2(in1[1]), .ZN(n1021) );
  NOR2_X1 U13179 ( .A1(in1[3]), .A2(n1021), .ZN(n969) );
  NOR2_X1 U13180 ( .A1(n970), .A2(n969), .ZN(n971) );
  NAND2_X1 U13181 ( .A1(n972), .A2(n971), .ZN(n975) );
  XNOR2_X1 U13182 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[55]), .ZN(n973)
         );
  XNOR2_X1 U13183 ( .A(n973), .B(r[54]), .ZN(n974) );
  XNOR2_X1 U13184 ( .A(n975), .B(n974), .ZN(CF_Out_MSB[0]) );
  XNOR2_X1 U13185 ( .A(r[37]), .B(r[36]), .ZN(n978) );
  NAND2_X1 U13186 ( .A1(in1[0]), .A2(in2[1]), .ZN(n1422) );
  NOR2_X1 U13187 ( .A1(in1[3]), .A2(n1422), .ZN(n976) );
  NAND2_X1 U13188 ( .A1(in1[3]), .A2(in2[1]), .ZN(n1246) );
  NOR2_X1 U13189 ( .A1(in3[2]), .A2(n1246), .ZN(n1009) );
  NOR2_X1 U13190 ( .A1(n976), .A2(n1009), .ZN(n977) );
  XNOR2_X1 U13191 ( .A(n978), .B(n977), .ZN(n979) );
  XNOR2_X1 U13192 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n979), .ZN(
        \CF_Out[2][9] ) );
  NAND2_X1 U13193 ( .A1(in3[2]), .A2(in1[1]), .ZN(n1435) );
  INV_X1 U13194 ( .A(n1435), .ZN(n1317) );
  NOR2_X1 U13195 ( .A1(n1292), .A2(n1317), .ZN(n980) );
  NOR2_X1 U13196 ( .A1(n980), .A2(n1528), .ZN(n983) );
  XOR2_X1 U13197 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[36]), .Z(n981)
         );
  XNOR2_X1 U13198 ( .A(r[35]), .B(n981), .ZN(n982) );
  XNOR2_X1 U13199 ( .A(n983), .B(n982), .ZN(\CF_Out[2][8] ) );
  XNOR2_X1 U13200 ( .A(r[53]), .B(r[27]), .ZN(n988) );
  NAND2_X1 U13201 ( .A1(in3[3]), .A2(n1481), .ZN(n985) );
  NOR2_X1 U13202 ( .A1(n1460), .A2(n1527), .ZN(n1062) );
  NOR2_X1 U13203 ( .A1(in3[3]), .A2(in3[0]), .ZN(n1273) );
  NOR2_X1 U13204 ( .A1(n1062), .A2(n1273), .ZN(n1288) );
  NAND2_X1 U13205 ( .A1(n1288), .A2(n1404), .ZN(n984) );
  NAND2_X1 U13206 ( .A1(n985), .A2(n984), .ZN(n986) );
  NAND2_X1 U13207 ( .A1(in3[2]), .A2(in3[0]), .ZN(n1523) );
  INV_X1 U13208 ( .A(n1523), .ZN(n1057) );
  NOR2_X1 U13209 ( .A1(n986), .A2(n1057), .ZN(n987) );
  XNOR2_X1 U13210 ( .A(n988), .B(n987), .ZN(n989) );
  XNOR2_X1 U13211 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n989), .ZN(
        \CF_Out[2][26] ) );
  XNOR2_X1 U13212 ( .A(r[46]), .B(r[45]), .ZN(n992) );
  NOR2_X1 U13213 ( .A1(in1[2]), .A2(n1378), .ZN(n1029) );
  NOR2_X1 U13214 ( .A1(n1379), .A2(n1513), .ZN(n990) );
  NOR2_X1 U13215 ( .A1(n1029), .A2(n990), .ZN(n991) );
  XNOR2_X1 U13216 ( .A(n992), .B(n991), .ZN(n993) );
  XNOR2_X1 U13217 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n993), .ZN(
        \CF_Out[2][18] ) );
  XNOR2_X1 U13218 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[45]), .ZN(n997)
         );
  NAND2_X1 U13219 ( .A1(in3[2]), .A2(in2[1]), .ZN(n1033) );
  INV_X1 U13220 ( .A(in2[1]), .ZN(n1499) );
  NAND2_X1 U13221 ( .A1(in3[0]), .A2(n1499), .ZN(n1247) );
  NAND2_X1 U13222 ( .A1(n1033), .A2(n1247), .ZN(n994) );
  NAND2_X1 U13223 ( .A1(n994), .A2(in2[3]), .ZN(n995) );
  XNOR2_X1 U13224 ( .A(n995), .B(r[44]), .ZN(n996) );
  XNOR2_X1 U13225 ( .A(n997), .B(n996), .ZN(\CF_Out[2][17] ) );
  NAND2_X1 U13226 ( .A1(in1[1]), .A2(n998), .ZN(n1000) );
  XOR2_X1 U13227 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[27]), .Z(n999)
         );
  XNOR2_X1 U13228 ( .A(r[28]), .B(n999), .ZN(n1002) );
  XNOR2_X1 U13229 ( .A(n1000), .B(n1002), .ZN(n1001) );
  NAND2_X1 U13230 ( .A1(n1528), .A2(n1513), .ZN(n1003) );
  NAND2_X1 U13231 ( .A1(n1001), .A2(n1003), .ZN(n1007) );
  INV_X1 U13232 ( .A(n1002), .ZN(n1005) );
  INV_X1 U13233 ( .A(n1003), .ZN(n1004) );
  NAND2_X1 U13234 ( .A1(n1005), .A2(n1004), .ZN(n1006) );
  NAND2_X1 U13235 ( .A1(n1007), .A2(n1006), .ZN(\CF_Out[2][0] ) );
  XNOR2_X1 U13236 ( .A(r[91]), .B(r[90]), .ZN(n1011) );
  NOR2_X1 U13237 ( .A1(in1[0]), .A2(n1033), .ZN(n1008) );
  NOR2_X1 U13238 ( .A1(n1009), .A2(n1008), .ZN(n1010) );
  XNOR2_X1 U13239 ( .A(n1011), .B(n1010), .ZN(n1012) );
  XNOR2_X1 U13240 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1012), .ZN(
        \CF_Out[1][9] ) );
  XNOR2_X1 U13241 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[90]), .ZN(n1015) );
  XOR2_X1 U13242 ( .A(in3[0]), .B(in1[3]), .Z(n1240) );
  NAND2_X1 U13243 ( .A1(n1240), .A2(n1317), .ZN(n1013) );
  XNOR2_X1 U13244 ( .A(n1013), .B(r[89]), .ZN(n1014) );
  XNOR2_X1 U13245 ( .A(n1015), .B(n1014), .ZN(\CF_Out[1][8] ) );
  XNOR2_X1 U13246 ( .A(r[81]), .B(r[107]), .ZN(n1019) );
  NAND2_X1 U13247 ( .A1(in3[0]), .A2(n1481), .ZN(n1016) );
  NAND2_X1 U13248 ( .A1(n1016), .A2(n1378), .ZN(n1017) );
  NAND2_X1 U13249 ( .A1(n1017), .A2(in3[2]), .ZN(n1018) );
  XNOR2_X1 U13250 ( .A(n1019), .B(n1018), .ZN(n1020) );
  XNOR2_X1 U13251 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1020), .ZN(
        \CF_Out[1][26] ) );
  NAND2_X1 U13252 ( .A1(n1021), .A2(in2[2]), .ZN(n1022) );
  XOR2_X1 U13253 ( .A(n1522), .B(n1022), .Z(n1346) );
  XNOR2_X1 U13254 ( .A(n1346), .B(r[82]), .ZN(n1026) );
  INV_X1 U13255 ( .A(in2[3]), .ZN(n1398) );
  INV_X1 U13256 ( .A(in2[2]), .ZN(n1515) );
  NAND2_X1 U13257 ( .A1(n1398), .A2(n1515), .ZN(n1023) );
  NAND2_X1 U13258 ( .A1(n1023), .A2(in1[1]), .ZN(n1024) );
  XNOR2_X1 U13259 ( .A(n1024), .B(r[83]), .ZN(n1025) );
  XNOR2_X1 U13260 ( .A(n1026), .B(n1025), .ZN(\CF_Out[1][1] ) );
  XNOR2_X1 U13261 ( .A(r[100]), .B(r[99]), .ZN(n1031) );
  NOR2_X1 U13262 ( .A1(in1[0]), .A2(n1481), .ZN(n1027) );
  INV_X1 U13263 ( .A(in1[2]), .ZN(n1461) );
  NOR2_X1 U13264 ( .A1(n1027), .A2(n1461), .ZN(n1028) );
  NOR2_X1 U13265 ( .A1(n1029), .A2(n1028), .ZN(n1030) );
  XNOR2_X1 U13266 ( .A(n1031), .B(n1030), .ZN(n1032) );
  XNOR2_X1 U13267 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1032), .ZN(
        \CF_Out[1][18] ) );
  XNOR2_X1 U13268 ( .A(r[99]), .B(r[98]), .ZN(n1035) );
  XOR2_X1 U13269 ( .A(n1527), .B(in2[3]), .Z(n1284) );
  NOR2_X1 U13270 ( .A1(n1284), .A2(n1033), .ZN(n1034) );
  XNOR2_X1 U13271 ( .A(n1035), .B(n1034), .ZN(n1036) );
  XOR2_X1 U13272 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1036), .Z(
        \CF_Out[1][17] ) );
  NAND2_X1 U13273 ( .A1(n1528), .A2(n1461), .ZN(n1037) );
  NAND2_X1 U13274 ( .A1(in1[1]), .A2(n1037), .ZN(n1039) );
  XOR2_X1 U13275 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[82]), .Z(n1038)
         );
  XNOR2_X1 U13276 ( .A(r[81]), .B(n1038), .ZN(n1041) );
  XNOR2_X1 U13277 ( .A(n1039), .B(n1041), .ZN(n1040) );
  NOR2_X1 U13278 ( .A1(n1513), .A2(n1461), .ZN(n1042) );
  INV_X1 U13279 ( .A(n1042), .ZN(n1468) );
  NAND2_X1 U13280 ( .A1(n1040), .A2(n1468), .ZN(n1045) );
  INV_X1 U13281 ( .A(n1041), .ZN(n1043) );
  NAND2_X1 U13282 ( .A1(n1043), .A2(n1042), .ZN(n1044) );
  NAND2_X1 U13283 ( .A1(n1045), .A2(n1044), .ZN(\CF_Out[1][0] ) );
  XNOR2_X1 U13284 ( .A(r[10]), .B(r[9]), .ZN(n1049) );
  XOR2_X1 U13285 ( .A(n1528), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n1047)
         );
  NAND2_X1 U13286 ( .A1(in1[1]), .A2(in2[0]), .ZN(n1359) );
  NOR2_X1 U13287 ( .A1(n1359), .A2(in3[2]), .ZN(n1046) );
  XNOR2_X1 U13288 ( .A(n1047), .B(n1046), .ZN(n1048) );
  XNOR2_X1 U13289 ( .A(n1049), .B(n1048), .ZN(\CF_Out[0][9] ) );
  XNOR2_X1 U13290 ( .A(r[9]), .B(r[8]), .ZN(n1051) );
  NAND2_X1 U13291 ( .A1(in3[1]), .A2(n1421), .ZN(n1050) );
  XNOR2_X1 U13292 ( .A(n1051), .B(n1050), .ZN(n1052) );
  XNOR2_X1 U13293 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1052), .ZN(
        \CF_Out[0][8] ) );
  NOR2_X1 U13294 ( .A1(n1481), .A2(n1404), .ZN(n1054) );
  XNOR2_X1 U13295 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[26]), .ZN(n1053) );
  XNOR2_X1 U13296 ( .A(n1053), .B(r[0]), .ZN(n1061) );
  XNOR2_X1 U13297 ( .A(n1054), .B(n1061), .ZN(n1055) );
  NAND2_X1 U13298 ( .A1(n1404), .A2(n1460), .ZN(n1425) );
  NAND2_X1 U13299 ( .A1(n1055), .A2(n1425), .ZN(n1056) );
  NOR2_X1 U13300 ( .A1(in3[0]), .A2(n1056), .ZN(n1066) );
  NAND2_X1 U13301 ( .A1(in3[2]), .A2(n1061), .ZN(n1060) );
  NOR2_X1 U13302 ( .A1(n1061), .A2(n1057), .ZN(n1058) );
  NOR2_X1 U13303 ( .A1(in3[3]), .A2(n1058), .ZN(n1059) );
  NAND2_X1 U13304 ( .A1(n1060), .A2(n1059), .ZN(n1064) );
  NAND2_X1 U13305 ( .A1(n1062), .A2(n1061), .ZN(n1063) );
  NAND2_X1 U13306 ( .A1(n1064), .A2(n1063), .ZN(n1065) );
  OR2_X1 U13307 ( .A1(n1066), .A2(n1065), .ZN(\CF_Out[0][26] ) );
  XNOR2_X1 U13308 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[19]), .ZN(n1070) );
  NAND2_X1 U13309 ( .A1(n1461), .A2(in3[0]), .ZN(n1067) );
  NAND2_X1 U13310 ( .A1(n1067), .A2(in1[1]), .ZN(n1068) );
  XNOR2_X1 U13311 ( .A(n1068), .B(r[18]), .ZN(n1069) );
  XNOR2_X1 U13312 ( .A(n1070), .B(n1069), .ZN(\CF_Out[0][18] ) );
  XOR2_X1 U13313 ( .A(r[17]), .B(r[18]), .Z(n1072) );
  INV_X1 U13314 ( .A(n1497), .ZN(n1498) );
  NAND2_X1 U13315 ( .A1(n1498), .A2(in3[1]), .ZN(n1071) );
  XNOR2_X1 U13316 ( .A(n1072), .B(n1071), .ZN(n1073) );
  XOR2_X1 U13317 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1073), .Z(
        \CF_Out[0][17] ) );
  NAND2_X1 U13318 ( .A1(in1[3]), .A2(in1[0]), .ZN(n1074) );
  NAND2_X1 U13319 ( .A1(in1[2]), .A2(n1074), .ZN(n1076) );
  XOR2_X1 U13320 ( .A(r[0]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n1075)
         );
  XNOR2_X1 U13321 ( .A(r[1]), .B(n1075), .ZN(n1079) );
  XNOR2_X1 U13322 ( .A(n1076), .B(n1079), .ZN(n1078) );
  XOR2_X1 U13323 ( .A(n1528), .B(in1[1]), .Z(n1524) );
  NOR2_X1 U13324 ( .A1(in1[0]), .A2(n1524), .ZN(n1080) );
  INV_X1 U13325 ( .A(n1080), .ZN(n1077) );
  NAND2_X1 U13326 ( .A1(n1078), .A2(n1077), .ZN(n1083) );
  INV_X1 U13327 ( .A(n1079), .ZN(n1081) );
  NAND2_X1 U13328 ( .A1(n1081), .A2(n1080), .ZN(n1082) );
  NAND2_X1 U13329 ( .A1(n1083), .A2(n1082), .ZN(\CF_Out[0][0] ) );
  XNOR2_X1 U13330 ( .A(r[49]), .B(r[50]), .ZN(n1086) );
  NAND2_X1 U13331 ( .A1(n1084), .A2(n1497), .ZN(n1091) );
  NOR2_X1 U13332 ( .A1(n1091), .A2(n1507), .ZN(n1085) );
  XNOR2_X1 U13333 ( .A(n1086), .B(n1085), .ZN(n1087) );
  XNOR2_X1 U13334 ( .A(n1087), .B(n1512), .ZN(\CF_Out[2][22] ) );
  XNOR2_X1 U13335 ( .A(r[41]), .B(r[40]), .ZN(n1089) );
  XOR2_X1 U13336 ( .A(n1301), .B(in1[2]), .Z(n1193) );
  NOR2_X1 U13337 ( .A1(n1246), .A2(n1193), .ZN(n1088) );
  XNOR2_X1 U13338 ( .A(n1089), .B(n1088), .ZN(n1090) );
  XNOR2_X1 U13339 ( .A(n1090), .B(n1512), .ZN(\CF_Out[2][13] ) );
  XNOR2_X1 U13340 ( .A(r[31]), .B(r[32]), .ZN(n1093) );
  INV_X1 U13341 ( .A(in1[1]), .ZN(n1472) );
  NOR2_X1 U13342 ( .A1(n1398), .A2(n1472), .ZN(n1327) );
  INV_X1 U13343 ( .A(n1327), .ZN(n1278) );
  NOR2_X1 U13344 ( .A1(n1091), .A2(n1278), .ZN(n1092) );
  XNOR2_X1 U13345 ( .A(n1093), .B(n1092), .ZN(n1094) );
  XNOR2_X1 U13346 ( .A(n1094), .B(n1512), .ZN(\CF_Out[2][4] ) );
  XOR2_X1 U13347 ( .A(r[95]), .B(r[94]), .Z(n1096) );
  XOR2_X1 U13348 ( .A(n1528), .B(n1301), .Z(n1138) );
  NOR2_X1 U13349 ( .A1(n1499), .A2(n1461), .ZN(n1332) );
  NAND2_X1 U13350 ( .A1(n1138), .A2(n1332), .ZN(n1095) );
  XNOR2_X1 U13351 ( .A(n1096), .B(n1095), .ZN(n1097) );
  XNOR2_X1 U13352 ( .A(n1097), .B(n1512), .ZN(\CF_Out[1][13] ) );
  XNOR2_X1 U13353 ( .A(r[86]), .B(r[85]), .ZN(n1099) );
  NOR2_X1 U13354 ( .A1(in2[3]), .A2(n1301), .ZN(n1442) );
  NOR2_X1 U13355 ( .A1(in2[0]), .A2(n1398), .ZN(n1205) );
  NOR2_X1 U13356 ( .A1(n1442), .A2(n1205), .ZN(n1127) );
  NOR2_X1 U13357 ( .A1(n1435), .A2(n1127), .ZN(n1098) );
  XNOR2_X1 U13358 ( .A(n1099), .B(n1098), .ZN(n1100) );
  XNOR2_X1 U13359 ( .A(n1100), .B(n1512), .ZN(\CF_Out[1][4] ) );
  NOR2_X1 U13360 ( .A1(n1499), .A2(in3[0]), .ZN(n1101) );
  XOR2_X1 U13361 ( .A(n1101), .B(n1528), .Z(n1102) );
  XOR2_X1 U13362 ( .A(n1404), .B(in3[0]), .Z(n1185) );
  NOR2_X1 U13363 ( .A1(n1102), .A2(n1185), .ZN(n1103) );
  XNOR2_X1 U13364 ( .A(r[22]), .B(n1103), .ZN(n1105) );
  XNOR2_X1 U13365 ( .A(n1512), .B(r[23]), .ZN(n1104) );
  XNOR2_X1 U13366 ( .A(n1105), .B(n1104), .ZN(\CF_Out[0][22] ) );
  NAND2_X1 U13367 ( .A1(in2[0]), .A2(n1332), .ZN(n1455) );
  XOR2_X1 U13368 ( .A(r[14]), .B(r[13]), .Z(n1106) );
  XNOR2_X1 U13369 ( .A(n1455), .B(n1106), .ZN(n1107) );
  XNOR2_X1 U13370 ( .A(n1107), .B(n1512), .ZN(\CF_Out[0][13] ) );
  XOR2_X1 U13371 ( .A(r[5]), .B(r[4]), .Z(n1109) );
  INV_X1 U13372 ( .A(n1422), .ZN(n1160) );
  NAND2_X1 U13373 ( .A1(n1160), .A2(in3[2]), .ZN(n1108) );
  XNOR2_X1 U13374 ( .A(n1109), .B(n1108), .ZN(n1110) );
  XNOR2_X1 U13375 ( .A(n1110), .B(n1512), .ZN(\CF_Out[0][4] ) );
  XOR2_X1 U13376 ( .A(r[76]), .B(r[77]), .Z(n1114) );
  NOR2_X1 U13377 ( .A1(in3[1]), .A2(in2[2]), .ZN(n1117) );
  NAND2_X1 U13378 ( .A1(in3[1]), .A2(in2[2]), .ZN(n1372) );
  INV_X1 U13379 ( .A(n1372), .ZN(n1514) );
  NOR2_X1 U13380 ( .A1(in1[3]), .A2(n1514), .ZN(n1111) );
  NOR2_X1 U13381 ( .A1(n1117), .A2(n1111), .ZN(n1112) );
  NAND2_X1 U13382 ( .A1(n1112), .A2(in3[0]), .ZN(n1113) );
  XNOR2_X1 U13383 ( .A(n1114), .B(n1113), .ZN(n1115) );
  XNOR2_X1 U13384 ( .A(n1115), .B(n1512), .ZN(CF_Out_MSB[40]) );
  XNOR2_X1 U13385 ( .A(n1512), .B(r[59]), .ZN(n1120) );
  NOR2_X1 U13386 ( .A1(in2[3]), .A2(n1514), .ZN(n1116) );
  NOR2_X1 U13387 ( .A1(n1117), .A2(n1116), .ZN(n1118) );
  NAND2_X1 U13388 ( .A1(n1118), .A2(in1[0]), .ZN(n1119) );
  XNOR2_X1 U13389 ( .A(n1120), .B(n1119), .ZN(n1121) );
  XOR2_X1 U13390 ( .A(r[58]), .B(n1121), .Z(CF_Out_MSB[10]) );
  XNOR2_X1 U13391 ( .A(r[40]), .B(r[39]), .ZN(n1125) );
  NAND2_X1 U13392 ( .A1(in2[0]), .A2(n1460), .ZN(n1122) );
  NAND2_X1 U13393 ( .A1(in3[3]), .A2(in3[2]), .ZN(n1132) );
  NAND2_X1 U13394 ( .A1(n1122), .A2(n1132), .ZN(n1123) );
  NAND2_X1 U13395 ( .A1(n1123), .A2(in2[1]), .ZN(n1124) );
  XNOR2_X1 U13396 ( .A(n1125), .B(n1124), .ZN(n1126) );
  XNOR2_X1 U13397 ( .A(n1542), .B(n1126), .ZN(\CF_Out[2][12] ) );
  XNOR2_X1 U13398 ( .A(n1542), .B(r[103]), .ZN(n1131) );
  NOR2_X1 U13399 ( .A1(n1481), .A2(n1127), .ZN(n1128) );
  NAND2_X1 U13400 ( .A1(in1[2]), .A2(n1128), .ZN(n1129) );
  XNOR2_X1 U13401 ( .A(r[102]), .B(n1129), .ZN(n1130) );
  XNOR2_X1 U13402 ( .A(n1131), .B(n1130), .ZN(\CF_Out[1][21] ) );
  NAND2_X1 U13403 ( .A1(n1132), .A2(n1497), .ZN(n1134) );
  NOR2_X1 U13404 ( .A1(n1460), .A2(n1301), .ZN(n1453) );
  NOR2_X1 U13405 ( .A1(n1453), .A2(n1499), .ZN(n1133) );
  NAND2_X1 U13406 ( .A1(n1134), .A2(n1133), .ZN(n1137) );
  XNOR2_X1 U13407 ( .A(n1542), .B(r[94]), .ZN(n1135) );
  XNOR2_X1 U13408 ( .A(n1135), .B(r[93]), .ZN(n1136) );
  XNOR2_X1 U13409 ( .A(n1137), .B(n1136), .ZN(\CF_Out[1][12] ) );
  XOR2_X1 U13410 ( .A(r[85]), .B(r[84]), .Z(n1140) );
  NOR2_X1 U13411 ( .A1(n1515), .A2(n1472), .ZN(n1535) );
  NAND2_X1 U13412 ( .A1(n1138), .A2(n1535), .ZN(n1139) );
  XNOR2_X1 U13413 ( .A(n1140), .B(n1139), .ZN(n1141) );
  XOR2_X1 U13414 ( .A(n1542), .B(n1141), .Z(\CF_Out[1][3] ) );
  XOR2_X1 U13415 ( .A(r[22]), .B(r[21]), .Z(n1143) );
  NAND2_X1 U13416 ( .A1(in2[1]), .A2(in3[0]), .ZN(n1385) );
  INV_X1 U13417 ( .A(n1385), .ZN(n1399) );
  NAND2_X1 U13418 ( .A1(n1399), .A2(n1461), .ZN(n1142) );
  XNOR2_X1 U13419 ( .A(n1143), .B(n1142), .ZN(n1144) );
  XOR2_X1 U13420 ( .A(n1542), .B(n1144), .Z(\CF_Out[0][21] ) );
  XNOR2_X1 U13421 ( .A(n1542), .B(r[12]), .ZN(n1148) );
  NOR2_X1 U13422 ( .A1(n1499), .A2(in3[2]), .ZN(n1145) );
  NAND2_X1 U13423 ( .A1(in2[0]), .A2(n1145), .ZN(n1146) );
  XNOR2_X1 U13424 ( .A(r[13]), .B(n1146), .ZN(n1147) );
  XNOR2_X1 U13425 ( .A(n1148), .B(n1147), .ZN(\CF_Out[0][12] ) );
  NOR2_X1 U13426 ( .A1(in2[2]), .A2(n1422), .ZN(n1149) );
  XOR2_X1 U13427 ( .A(n1149), .B(r[4]), .Z(n1150) );
  XNOR2_X1 U13428 ( .A(r[3]), .B(n1150), .ZN(n1151) );
  XNOR2_X1 U13429 ( .A(n1542), .B(n1151), .ZN(\CF_Out[0][3] ) );
  XOR2_X1 U13430 ( .A(r[76]), .B(r[75]), .Z(n1155) );
  NOR2_X1 U13431 ( .A1(in2[2]), .A2(in1[1]), .ZN(n1223) );
  NOR2_X1 U13432 ( .A1(in2[3]), .A2(n1535), .ZN(n1152) );
  NOR2_X1 U13433 ( .A1(n1223), .A2(n1152), .ZN(n1153) );
  NAND2_X1 U13434 ( .A1(n1153), .A2(in3[0]), .ZN(n1154) );
  XNOR2_X1 U13435 ( .A(n1155), .B(n1154), .ZN(n1156) );
  XOR2_X1 U13436 ( .A(n1542), .B(n1156), .Z(CF_Out_MSB[39]) );
  XNOR2_X1 U13437 ( .A(r[57]), .B(r[58]), .ZN(n1166) );
  NOR2_X1 U13438 ( .A1(in2[1]), .A2(n1513), .ZN(n1157) );
  NOR2_X1 U13439 ( .A1(n1528), .A2(n1157), .ZN(n1158) );
  NAND2_X1 U13440 ( .A1(n1158), .A2(in2[2]), .ZN(n1162) );
  NAND2_X1 U13441 ( .A1(n1515), .A2(n1528), .ZN(n1159) );
  NAND2_X1 U13442 ( .A1(n1162), .A2(n1159), .ZN(n1161) );
  NAND2_X1 U13443 ( .A1(n1161), .A2(n1160), .ZN(n1164) );
  NAND2_X1 U13444 ( .A1(n1162), .A2(n1422), .ZN(n1163) );
  NAND2_X1 U13445 ( .A1(n1164), .A2(n1163), .ZN(n1165) );
  XNOR2_X1 U13446 ( .A(n1166), .B(n1165), .ZN(n1167) );
  XNOR2_X1 U13447 ( .A(n1542), .B(n1167), .ZN(CF_Out_MSB[9]) );
  XOR2_X1 U13448 ( .A(in3[2]), .B(in1[0]), .Z(n1175) );
  NAND2_X1 U13449 ( .A1(in2[3]), .A2(in3[1]), .ZN(n1168) );
  NOR2_X1 U13450 ( .A1(n1175), .A2(n1168), .ZN(n1169) );
  XOR2_X1 U13451 ( .A(n1169), .B(r[47]), .Z(n1171) );
  XNOR2_X1 U13452 ( .A(n1488), .B(r[48]), .ZN(n1170) );
  XNOR2_X1 U13453 ( .A(n1171), .B(n1170), .ZN(\CF_Out[2][20] ) );
  XOR2_X1 U13454 ( .A(r[38]), .B(r[39]), .Z(n1173) );
  XOR2_X1 U13455 ( .A(n1515), .B(in1[0]), .Z(n1328) );
  NOR2_X1 U13456 ( .A1(n1460), .A2(n1499), .ZN(n1415) );
  NAND2_X1 U13457 ( .A1(n1328), .A2(n1415), .ZN(n1172) );
  XNOR2_X1 U13458 ( .A(n1173), .B(n1172), .ZN(n1174) );
  XOR2_X1 U13459 ( .A(n1488), .B(n1174), .Z(\CF_Out[2][11] ) );
  NAND2_X1 U13460 ( .A1(in3[3]), .A2(in1[1]), .ZN(n1473) );
  NOR2_X1 U13461 ( .A1(n1473), .A2(n1175), .ZN(n1176) );
  XNOR2_X1 U13462 ( .A(n1176), .B(n1488), .ZN(n1178) );
  XOR2_X1 U13463 ( .A(r[30]), .B(r[29]), .Z(n1177) );
  XNOR2_X1 U13464 ( .A(n1178), .B(n1177), .ZN(\CF_Out[2][2] ) );
  NOR2_X1 U13465 ( .A1(in3[1]), .A2(n1421), .ZN(n1180) );
  NOR2_X1 U13466 ( .A1(in3[2]), .A2(in2[3]), .ZN(n1179) );
  NOR2_X1 U13467 ( .A1(n1180), .A2(n1179), .ZN(n1181) );
  XOR2_X1 U13468 ( .A(n1181), .B(r[101]), .Z(n1183) );
  XNOR2_X1 U13469 ( .A(n1488), .B(r[102]), .ZN(n1182) );
  XNOR2_X1 U13470 ( .A(n1183), .B(n1182), .ZN(\CF_Out[1][20] ) );
  NAND2_X1 U13471 ( .A1(n1527), .A2(in1[1]), .ZN(n1184) );
  XOR2_X1 U13472 ( .A(n1184), .B(in2[3]), .Z(n1186) );
  NOR2_X1 U13473 ( .A1(n1186), .A2(n1185), .ZN(n1187) );
  XOR2_X1 U13474 ( .A(r[21]), .B(n1187), .Z(n1189) );
  XNOR2_X1 U13475 ( .A(n1488), .B(r[20]), .ZN(n1188) );
  XNOR2_X1 U13476 ( .A(n1189), .B(n1188), .ZN(\CF_Out[0][20] ) );
  XOR2_X1 U13477 ( .A(r[2]), .B(r[3]), .Z(n1191) );
  NAND2_X1 U13478 ( .A1(n1317), .A2(in1[0]), .ZN(n1190) );
  XNOR2_X1 U13479 ( .A(n1191), .B(n1190), .ZN(n1192) );
  XOR2_X1 U13480 ( .A(n1488), .B(n1192), .Z(\CF_Out[0][2] ) );
  XNOR2_X1 U13481 ( .A(r[32]), .B(r[33]), .ZN(n1195) );
  NOR2_X1 U13482 ( .A1(n1473), .A2(n1193), .ZN(n1194) );
  XNOR2_X1 U13483 ( .A(n1195), .B(n1194), .ZN(n1196) );
  XOR2_X1 U13484 ( .A(n1471), .B(n1196), .Z(\CF_Out[2][5] ) );
  NAND2_X1 U13485 ( .A1(n1301), .A2(n1460), .ZN(n1198) );
  NOR2_X1 U13486 ( .A1(n1453), .A2(n1372), .ZN(n1197) );
  NAND2_X1 U13487 ( .A1(n1198), .A2(n1197), .ZN(n1201) );
  XNOR2_X1 U13488 ( .A(n1471), .B(r[104]), .ZN(n1199) );
  XNOR2_X1 U13489 ( .A(n1199), .B(r[105]), .ZN(n1200) );
  XNOR2_X1 U13490 ( .A(n1201), .B(n1200), .ZN(\CF_Out[1][23] ) );
  XOR2_X1 U13491 ( .A(n1471), .B(r[24]), .Z(n1203) );
  NAND2_X1 U13492 ( .A1(n1399), .A2(in2[2]), .ZN(n1202) );
  XNOR2_X1 U13493 ( .A(n1203), .B(n1202), .ZN(n1204) );
  XOR2_X1 U13494 ( .A(r[23]), .B(n1204), .Z(\CF_Out[0][23] ) );
  XNOR2_X1 U13495 ( .A(n1471), .B(r[15]), .ZN(n1210) );
  XOR2_X1 U13496 ( .A(n1515), .B(n1301), .Z(n1260) );
  NOR2_X1 U13497 ( .A1(in2[1]), .A2(n1398), .ZN(n1449) );
  NOR2_X1 U13498 ( .A1(n1205), .A2(n1499), .ZN(n1206) );
  NOR2_X1 U13499 ( .A1(n1449), .A2(n1206), .ZN(n1218) );
  NOR2_X1 U13500 ( .A1(n1442), .A2(n1218), .ZN(n1207) );
  NAND2_X1 U13501 ( .A1(n1260), .A2(n1207), .ZN(n1208) );
  XNOR2_X1 U13502 ( .A(r[14]), .B(n1208), .ZN(n1209) );
  XNOR2_X1 U13503 ( .A(n1210), .B(n1209), .ZN(\CF_Out[0][14] ) );
  XOR2_X1 U13504 ( .A(n1471), .B(r[5]), .Z(n1215) );
  NOR2_X1 U13505 ( .A1(in1[0]), .A2(n1499), .ZN(n1211) );
  XOR2_X1 U13506 ( .A(n1460), .B(n1211), .Z(n1212) );
  NOR2_X1 U13507 ( .A1(n1212), .A2(n1308), .ZN(n1213) );
  NAND2_X1 U13508 ( .A1(n1213), .A2(n1468), .ZN(n1214) );
  XNOR2_X1 U13509 ( .A(n1215), .B(n1214), .ZN(n1216) );
  XOR2_X1 U13510 ( .A(r[6]), .B(n1216), .Z(\CF_Out[0][5] ) );
  NOR2_X1 U13511 ( .A1(in2[0]), .A2(n1515), .ZN(n1217) );
  NOR2_X1 U13512 ( .A1(n1218), .A2(n1217), .ZN(n1219) );
  XOR2_X1 U13513 ( .A(n1219), .B(r[69]), .Z(n1221) );
  XNOR2_X1 U13514 ( .A(r[68]), .B(n1471), .ZN(n1220) );
  XNOR2_X1 U13515 ( .A(n1221), .B(n1220), .ZN(CF_Out_MSB[20]) );
  XOR2_X1 U13516 ( .A(r[60]), .B(r[59]), .Z(n1226) );
  NOR2_X1 U13517 ( .A1(in3[3]), .A2(n1535), .ZN(n1222) );
  NOR2_X1 U13518 ( .A1(n1223), .A2(n1222), .ZN(n1224) );
  NAND2_X1 U13519 ( .A1(n1224), .A2(in1[0]), .ZN(n1225) );
  XNOR2_X1 U13520 ( .A(n1226), .B(n1225), .ZN(n1227) );
  XOR2_X1 U13521 ( .A(n1471), .B(n1227), .Z(CF_Out_MSB[11]) );
  XNOR2_X1 U13522 ( .A(r[53]), .B(r[52]), .ZN(n1228) );
  XNOR2_X1 U13523 ( .A(n1228), .B(n1533), .ZN(n1232) );
  NAND2_X1 U13524 ( .A1(n1516), .A2(n1478), .ZN(n1229) );
  NOR2_X1 U13525 ( .A1(n1230), .A2(n1229), .ZN(n1231) );
  XNOR2_X1 U13526 ( .A(n1232), .B(n1231), .ZN(\CF_Out[2][25] ) );
  XNOR2_X1 U13527 ( .A(r[44]), .B(r[43]), .ZN(n1234) );
  XOR2_X1 U13528 ( .A(n1527), .B(in2[2]), .Z(n1236) );
  NOR2_X1 U13529 ( .A1(n1246), .A2(n1236), .ZN(n1233) );
  XNOR2_X1 U13530 ( .A(n1234), .B(n1233), .ZN(n1235) );
  XNOR2_X1 U13531 ( .A(n1235), .B(n1533), .ZN(\CF_Out[2][16] ) );
  XNOR2_X1 U13532 ( .A(r[35]), .B(r[34]), .ZN(n1238) );
  NOR2_X1 U13533 ( .A1(n1473), .A2(n1236), .ZN(n1237) );
  XNOR2_X1 U13534 ( .A(n1238), .B(n1237), .ZN(n1239) );
  XNOR2_X1 U13535 ( .A(n1239), .B(n1533), .ZN(\CF_Out[2][7] ) );
  XNOR2_X1 U13536 ( .A(r[107]), .B(r[106]), .ZN(n1244) );
  INV_X1 U13537 ( .A(n1240), .ZN(n1242) );
  NAND2_X1 U13538 ( .A1(in1[2]), .A2(in3[1]), .ZN(n1241) );
  NOR2_X1 U13539 ( .A1(n1242), .A2(n1241), .ZN(n1243) );
  XNOR2_X1 U13540 ( .A(n1244), .B(n1243), .ZN(n1245) );
  XNOR2_X1 U13541 ( .A(n1533), .B(n1245), .ZN(\CF_Out[1][25] ) );
  NAND2_X1 U13542 ( .A1(n1247), .A2(n1246), .ZN(n1248) );
  NAND2_X1 U13543 ( .A1(n1248), .A2(in2[2]), .ZN(n1249) );
  XNOR2_X1 U13544 ( .A(n1249), .B(r[97]), .ZN(n1250) );
  XOR2_X1 U13545 ( .A(r[98]), .B(n1250), .Z(n1251) );
  XNOR2_X1 U13546 ( .A(n1533), .B(n1251), .ZN(\CF_Out[1][16] ) );
  XOR2_X1 U13547 ( .A(r[89]), .B(r[88]), .Z(n1253) );
  NAND2_X1 U13548 ( .A1(n1288), .A2(n1535), .ZN(n1252) );
  XNOR2_X1 U13549 ( .A(n1253), .B(n1252), .ZN(n1254) );
  XNOR2_X1 U13550 ( .A(n1254), .B(n1533), .ZN(\CF_Out[1][7] ) );
  NOR2_X1 U13551 ( .A1(n1527), .A2(n1481), .ZN(n1297) );
  NOR2_X1 U13552 ( .A1(n1461), .A2(n1297), .ZN(n1256) );
  XOR2_X1 U13553 ( .A(n1533), .B(r[25]), .Z(n1255) );
  XNOR2_X1 U13554 ( .A(n1256), .B(n1255), .ZN(n1257) );
  XOR2_X1 U13555 ( .A(r[26]), .B(n1257), .Z(\CF_Out[0][25] ) );
  XNOR2_X1 U13556 ( .A(r[16]), .B(r[17]), .ZN(n1263) );
  NOR2_X1 U13557 ( .A1(in2[0]), .A2(n1481), .ZN(n1258) );
  XOR2_X1 U13558 ( .A(in1[3]), .B(n1258), .Z(n1259) );
  NAND2_X1 U13559 ( .A1(n1260), .A2(n1259), .ZN(n1261) );
  XOR2_X1 U13560 ( .A(n1533), .B(n1261), .Z(n1262) );
  XNOR2_X1 U13561 ( .A(n1263), .B(n1262), .ZN(\CF_Out[0][16] ) );
  XOR2_X1 U13562 ( .A(r[7]), .B(r[8]), .Z(n1265) );
  NAND2_X1 U13563 ( .A1(n1514), .A2(in1[0]), .ZN(n1264) );
  XNOR2_X1 U13564 ( .A(n1265), .B(n1264), .ZN(n1266) );
  XNOR2_X1 U13565 ( .A(n1266), .B(n1533), .ZN(\CF_Out[0][7] ) );
  NAND2_X1 U13566 ( .A1(n1514), .A2(in2[3]), .ZN(n1268) );
  NAND2_X1 U13567 ( .A1(n1297), .A2(n1398), .ZN(n1267) );
  NAND2_X1 U13568 ( .A1(n1268), .A2(n1267), .ZN(n1269) );
  XNOR2_X1 U13569 ( .A(n1269), .B(n1401), .ZN(n1271) );
  XOR2_X1 U13570 ( .A(r[52]), .B(r[51]), .Z(n1270) );
  XNOR2_X1 U13571 ( .A(n1271), .B(n1270), .ZN(\CF_Out[2][24] ) );
  XOR2_X1 U13572 ( .A(r[42]), .B(r[43]), .Z(n1276) );
  NOR2_X1 U13573 ( .A1(in1[2]), .A2(n1460), .ZN(n1272) );
  NOR2_X1 U13574 ( .A1(n1273), .A2(n1272), .ZN(n1274) );
  NAND2_X1 U13575 ( .A1(n1274), .A2(in2[1]), .ZN(n1275) );
  XNOR2_X1 U13576 ( .A(n1276), .B(n1275), .ZN(n1277) );
  XOR2_X1 U13577 ( .A(n1401), .B(n1277), .Z(\CF_Out[2][15] ) );
  XNOR2_X1 U13578 ( .A(r[33]), .B(r[34]), .ZN(n1282) );
  NAND2_X1 U13579 ( .A1(in3[0]), .A2(in1[1]), .ZN(n1340) );
  NOR2_X1 U13580 ( .A1(n1340), .A2(in2[3]), .ZN(n1280) );
  NOR2_X1 U13581 ( .A1(n1278), .A2(n1461), .ZN(n1279) );
  NOR2_X1 U13582 ( .A1(n1280), .A2(n1279), .ZN(n1281) );
  XNOR2_X1 U13583 ( .A(n1282), .B(n1281), .ZN(n1283) );
  XNOR2_X1 U13584 ( .A(n1401), .B(n1283), .ZN(\CF_Out[2][6] ) );
  XNOR2_X1 U13585 ( .A(r[105]), .B(r[106]), .ZN(n1286) );
  NOR2_X1 U13586 ( .A1(n1284), .A2(n1372), .ZN(n1285) );
  XNOR2_X1 U13587 ( .A(n1286), .B(n1285), .ZN(n1287) );
  XOR2_X1 U13588 ( .A(n1401), .B(n1287), .Z(\CF_Out[1][24] ) );
  XOR2_X1 U13589 ( .A(r[97]), .B(r[96]), .Z(n1290) );
  NAND2_X1 U13590 ( .A1(n1332), .A2(n1288), .ZN(n1289) );
  XNOR2_X1 U13591 ( .A(n1290), .B(n1289), .ZN(n1291) );
  XOR2_X1 U13592 ( .A(n1401), .B(n1291), .Z(\CF_Out[1][15] ) );
  NOR2_X1 U13593 ( .A1(n1327), .A2(n1292), .ZN(n1293) );
  NOR2_X1 U13594 ( .A1(n1461), .A2(n1293), .ZN(n1294) );
  XOR2_X1 U13595 ( .A(n1294), .B(r[87]), .Z(n1296) );
  XNOR2_X1 U13596 ( .A(n1401), .B(r[88]), .ZN(n1295) );
  XNOR2_X1 U13597 ( .A(n1296), .B(n1295), .ZN(\CF_Out[1][6] ) );
  XOR2_X1 U13598 ( .A(r[24]), .B(r[25]), .Z(n1299) );
  NAND2_X1 U13599 ( .A1(n1297), .A2(n1515), .ZN(n1298) );
  XNOR2_X1 U13600 ( .A(n1299), .B(n1298), .ZN(n1300) );
  XOR2_X1 U13601 ( .A(n1401), .B(n1300), .Z(\CF_Out[0][24] ) );
  XOR2_X1 U13602 ( .A(r[16]), .B(r[15]), .Z(n1304) );
  NOR2_X1 U13603 ( .A1(in1[2]), .A2(n1301), .ZN(n1302) );
  NAND2_X1 U13604 ( .A1(n1302), .A2(in3[1]), .ZN(n1303) );
  XNOR2_X1 U13605 ( .A(n1304), .B(n1303), .ZN(n1305) );
  XOR2_X1 U13606 ( .A(n1401), .B(n1305), .Z(\CF_Out[0][15] ) );
  NAND2_X1 U13607 ( .A1(in2[3]), .A2(n1468), .ZN(n1306) );
  XNOR2_X1 U13608 ( .A(n1481), .B(n1306), .ZN(n1307) );
  NOR2_X1 U13609 ( .A1(n1308), .A2(n1307), .ZN(n1309) );
  XOR2_X1 U13610 ( .A(n1309), .B(r[7]), .Z(n1310) );
  XNOR2_X1 U13611 ( .A(r[6]), .B(n1310), .ZN(n1311) );
  XNOR2_X1 U13612 ( .A(n1401), .B(n1311), .ZN(\CF_Out[0][6] ) );
  XOR2_X1 U13613 ( .A(r[70]), .B(r[69]), .Z(n1315) );
  NOR2_X1 U13614 ( .A1(in3[2]), .A2(in1[1]), .ZN(n1319) );
  NOR2_X1 U13615 ( .A1(in3[3]), .A2(n1317), .ZN(n1312) );
  NOR2_X1 U13616 ( .A1(n1319), .A2(n1312), .ZN(n1313) );
  NAND2_X1 U13617 ( .A1(n1313), .A2(in2[0]), .ZN(n1314) );
  XNOR2_X1 U13618 ( .A(n1315), .B(n1314), .ZN(n1316) );
  XOR2_X1 U13619 ( .A(n1401), .B(n1316), .Z(CF_Out_MSB[27]) );
  XOR2_X1 U13620 ( .A(r[61]), .B(r[60]), .Z(n1322) );
  NOR2_X1 U13621 ( .A1(in2[3]), .A2(n1317), .ZN(n1318) );
  NOR2_X1 U13622 ( .A1(n1319), .A2(n1318), .ZN(n1320) );
  NAND2_X1 U13623 ( .A1(n1320), .A2(in1[0]), .ZN(n1321) );
  XNOR2_X1 U13624 ( .A(n1322), .B(n1321), .ZN(n1323) );
  XOR2_X1 U13625 ( .A(n1401), .B(n1323), .Z(CF_Out_MSB[12]) );
  XOR2_X1 U13626 ( .A(r[46]), .B(r[47]), .Z(n1325) );
  NAND2_X1 U13627 ( .A1(n1328), .A2(n1516), .ZN(n1324) );
  XNOR2_X1 U13628 ( .A(n1325), .B(n1324), .ZN(n1326) );
  XNOR2_X1 U13629 ( .A(n1326), .B(n1522), .ZN(\CF_Out[2][19] ) );
  XOR2_X1 U13630 ( .A(r[28]), .B(r[29]), .Z(n1330) );
  NAND2_X1 U13631 ( .A1(n1328), .A2(n1327), .ZN(n1329) );
  XNOR2_X1 U13632 ( .A(n1330), .B(n1329), .ZN(n1331) );
  XNOR2_X1 U13633 ( .A(n1331), .B(n1522), .ZN(\CF_Out[2][1] ) );
  NAND2_X1 U13634 ( .A1(in2[1]), .A2(in2[3]), .ZN(n1393) );
  NAND2_X1 U13635 ( .A1(n1393), .A2(n1461), .ZN(n1334) );
  NAND2_X1 U13636 ( .A1(n1332), .A2(n1513), .ZN(n1333) );
  NAND2_X1 U13637 ( .A1(n1334), .A2(n1333), .ZN(n1336) );
  XOR2_X1 U13638 ( .A(r[91]), .B(r[92]), .Z(n1335) );
  XNOR2_X1 U13639 ( .A(n1336), .B(n1335), .ZN(n1337) );
  XNOR2_X1 U13640 ( .A(n1337), .B(n1522), .ZN(\CF_Out[1][10] ) );
  XOR2_X1 U13641 ( .A(r[20]), .B(in1[3]), .Z(n1338) );
  XNOR2_X1 U13642 ( .A(n1338), .B(n1522), .ZN(n1339) );
  XOR2_X1 U13643 ( .A(r[19]), .B(n1339), .Z(n1342) );
  NAND2_X1 U13644 ( .A1(in2[2]), .A2(n1340), .ZN(n1341) );
  XNOR2_X1 U13645 ( .A(n1342), .B(n1341), .ZN(\CF_Out[0][19] ) );
  XOR2_X1 U13646 ( .A(r[11]), .B(r[10]), .Z(n1344) );
  NAND2_X1 U13647 ( .A1(in1[2]), .A2(n1359), .ZN(n1343) );
  XNOR2_X1 U13648 ( .A(n1344), .B(n1343), .ZN(n1345) );
  XNOR2_X1 U13649 ( .A(n1345), .B(n1522), .ZN(\CF_Out[0][10] ) );
  XOR2_X1 U13650 ( .A(r[2]), .B(r[1]), .Z(n1348) );
  XOR2_X1 U13651 ( .A(n1398), .B(n1346), .Z(n1347) );
  XNOR2_X1 U13652 ( .A(n1348), .B(n1347), .ZN(\CF_Out[0][1] ) );
  XNOR2_X1 U13653 ( .A(r[74]), .B(r[73]), .ZN(n1350) );
  NOR2_X1 U13654 ( .A1(n1528), .A2(n1399), .ZN(n1349) );
  XNOR2_X1 U13655 ( .A(n1350), .B(n1349), .ZN(n1353) );
  XNOR2_X1 U13656 ( .A(in2[1]), .B(in1[3]), .ZN(n1351) );
  NOR2_X1 U13657 ( .A1(n1478), .A2(n1351), .ZN(n1352) );
  XOR2_X1 U13658 ( .A(n1353), .B(n1352), .Z(n1354) );
  XNOR2_X1 U13659 ( .A(n1354), .B(n1522), .ZN(CF_Out_MSB[43]) );
  XOR2_X1 U13660 ( .A(r[65]), .B(r[64]), .Z(n1358) );
  NAND2_X1 U13661 ( .A1(in2[0]), .A2(in1[2]), .ZN(n1355) );
  XOR2_X1 U13662 ( .A(n1359), .B(n1355), .Z(n1356) );
  NAND2_X1 U13663 ( .A1(n1356), .A2(in2[3]), .ZN(n1357) );
  XNOR2_X1 U13664 ( .A(n1358), .B(n1357), .ZN(n1363) );
  XOR2_X1 U13665 ( .A(n1359), .B(n1398), .Z(n1360) );
  NAND2_X1 U13666 ( .A1(n1360), .A2(in1[2]), .ZN(n1361) );
  XNOR2_X1 U13667 ( .A(n1361), .B(n1522), .ZN(n1362) );
  XNOR2_X1 U13668 ( .A(n1363), .B(n1362), .ZN(CF_Out_MSB[25]) );
  NAND2_X1 U13669 ( .A1(in1[0]), .A2(in2[3]), .ZN(n1365) );
  XNOR2_X1 U13670 ( .A(n1461), .B(n1365), .ZN(n1364) );
  NOR2_X1 U13671 ( .A1(n1499), .A2(n1364), .ZN(n1368) );
  XOR2_X1 U13672 ( .A(n1422), .B(n1365), .Z(n1366) );
  NAND2_X1 U13673 ( .A1(n1366), .A2(in1[2]), .ZN(n1367) );
  XNOR2_X1 U13674 ( .A(n1368), .B(n1367), .ZN(n1371) );
  XNOR2_X1 U13675 ( .A(r[56]), .B(r[55]), .ZN(n1369) );
  XNOR2_X1 U13676 ( .A(n1369), .B(n1522), .ZN(n1370) );
  XNOR2_X1 U13677 ( .A(n1371), .B(n1370), .ZN(CF_Out_MSB[1]) );
  XNOR2_X1 U13678 ( .A(n1471), .B(r[50]), .ZN(n1376) );
  NAND2_X1 U13679 ( .A1(n1506), .A2(n1372), .ZN(n1373) );
  NAND2_X1 U13680 ( .A1(n1373), .A2(in3[3]), .ZN(n1374) );
  XNOR2_X1 U13681 ( .A(n1374), .B(r[51]), .ZN(n1375) );
  XNOR2_X1 U13682 ( .A(n1376), .B(n1375), .ZN(n26731) );
  XNOR2_X1 U13683 ( .A(n1453), .B(in2[2]), .ZN(n1377) );
  NOR2_X1 U13684 ( .A1(n1481), .A2(n1377), .ZN(n1383) );
  XNOR2_X1 U13685 ( .A(r[67]), .B(r[66]), .ZN(n1381) );
  NAND2_X1 U13686 ( .A1(in2[2]), .A2(in2[0]), .ZN(n1489) );
  NAND2_X1 U13687 ( .A1(n1379), .A2(n1378), .ZN(n1467) );
  NOR2_X1 U13688 ( .A1(n1489), .A2(n1467), .ZN(n1380) );
  XNOR2_X1 U13689 ( .A(n1381), .B(n1380), .ZN(n1382) );
  XNOR2_X1 U13690 ( .A(n1383), .B(n1382), .ZN(n1384) );
  XNOR2_X1 U13691 ( .A(n1542), .B(n1384), .ZN(n26730) );
  XNOR2_X1 U13692 ( .A(n1471), .B(r[77]), .ZN(n1391) );
  XOR2_X1 U13693 ( .A(n1460), .B(in2[2]), .Z(n1386) );
  NOR2_X1 U13694 ( .A1(n1386), .A2(n1385), .ZN(n1389) );
  NAND2_X1 U13695 ( .A1(in2[2]), .A2(n1527), .ZN(n1387) );
  NOR2_X1 U13696 ( .A1(n1460), .A2(n1387), .ZN(n1388) );
  NOR2_X1 U13697 ( .A1(n1389), .A2(n1388), .ZN(n1390) );
  XNOR2_X1 U13698 ( .A(n1391), .B(n1390), .ZN(n1392) );
  XNOR2_X1 U13699 ( .A(r[78]), .B(n1392), .ZN(n26729) );
  XNOR2_X1 U13700 ( .A(r[95]), .B(r[96]), .ZN(n1396) );
  NOR2_X1 U13701 ( .A1(n1515), .A2(n1393), .ZN(n1410) );
  NOR2_X1 U13702 ( .A1(in2[1]), .A2(n1489), .ZN(n1394) );
  NOR2_X1 U13703 ( .A1(n1410), .A2(n1394), .ZN(n1395) );
  XNOR2_X1 U13704 ( .A(n1396), .B(n1395), .ZN(n1397) );
  XNOR2_X1 U13705 ( .A(n1471), .B(n1397), .ZN(n26728) );
  NOR2_X1 U13706 ( .A1(n1527), .A2(n1398), .ZN(n1480) );
  XOR2_X1 U13707 ( .A(n1480), .B(n1399), .Z(n1400) );
  NAND2_X1 U13708 ( .A1(n1400), .A2(in3[2]), .ZN(n1402) );
  XNOR2_X1 U13709 ( .A(n1402), .B(n1401), .ZN(n1403) );
  XOR2_X1 U13710 ( .A(n1403), .B(r[78]), .Z(n1408) );
  INV_X1 U13711 ( .A(n1480), .ZN(n1479) );
  XNOR2_X1 U13712 ( .A(n1404), .B(n1479), .ZN(n1405) );
  NOR2_X1 U13713 ( .A1(n1499), .A2(n1405), .ZN(n1406) );
  XNOR2_X1 U13714 ( .A(n1406), .B(r[79]), .ZN(n1407) );
  XNOR2_X1 U13715 ( .A(n1408), .B(n1407), .ZN(n26727) );
  XNOR2_X1 U13716 ( .A(r[41]), .B(r[42]), .ZN(n1412) );
  AND2_X1 U13717 ( .A1(n1449), .A2(in2[0]), .ZN(n1409) );
  NOR2_X1 U13718 ( .A1(n1410), .A2(n1409), .ZN(n1411) );
  XNOR2_X1 U13719 ( .A(n1412), .B(n1411), .ZN(n1413) );
  XNOR2_X1 U13720 ( .A(n1471), .B(n1413), .ZN(n26726) );
  NOR2_X1 U13721 ( .A1(in1[0]), .A2(n1515), .ZN(n1414) );
  NAND2_X1 U13722 ( .A1(n1414), .A2(n1499), .ZN(n1417) );
  NAND2_X1 U13723 ( .A1(n1415), .A2(n1515), .ZN(n1416) );
  NAND2_X1 U13724 ( .A1(n1417), .A2(n1416), .ZN(n1419) );
  XOR2_X1 U13725 ( .A(r[93]), .B(r[92]), .Z(n1418) );
  XNOR2_X1 U13726 ( .A(n1419), .B(n1418), .ZN(n1420) );
  XNOR2_X1 U13727 ( .A(n1488), .B(n1420), .ZN(n26725) );
  NAND2_X1 U13728 ( .A1(in3[3]), .A2(n1421), .ZN(n1423) );
  NAND2_X1 U13729 ( .A1(n1423), .A2(n1422), .ZN(n1424) );
  NAND2_X1 U13730 ( .A1(n1425), .A2(n1424), .ZN(n1427) );
  XOR2_X1 U13731 ( .A(r[62]), .B(r[61]), .Z(n1426) );
  XNOR2_X1 U13732 ( .A(n1427), .B(n1426), .ZN(n1428) );
  XNOR2_X1 U13733 ( .A(n1533), .B(n1428), .ZN(n26724) );
  XNOR2_X1 U13734 ( .A(r[11]), .B(r[12]), .ZN(n1433) );
  XOR2_X1 U13735 ( .A(n1472), .B(in3[3]), .Z(n1429) );
  NOR2_X1 U13736 ( .A1(n1429), .A2(in2[0]), .ZN(n1430) );
  NOR2_X1 U13737 ( .A1(n1430), .A2(n1515), .ZN(n1431) );
  NOR2_X1 U13738 ( .A1(n1453), .A2(n1431), .ZN(n1432) );
  XNOR2_X1 U13739 ( .A(n1433), .B(n1432), .ZN(n1434) );
  XNOR2_X1 U13740 ( .A(n1488), .B(n1434), .ZN(n26723) );
  XNOR2_X1 U13741 ( .A(n1488), .B(r[84]), .ZN(n1439) );
  NOR2_X1 U13742 ( .A1(in3[2]), .A2(n1473), .ZN(n1437) );
  NOR2_X1 U13743 ( .A1(in1[0]), .A2(n1435), .ZN(n1436) );
  NOR2_X1 U13744 ( .A1(n1437), .A2(n1436), .ZN(n1438) );
  XNOR2_X1 U13745 ( .A(n1439), .B(n1438), .ZN(n1440) );
  XNOR2_X1 U13746 ( .A(r[83]), .B(n1440), .ZN(n26722) );
  NAND2_X1 U13747 ( .A1(in1[2]), .A2(in2[3]), .ZN(n1447) );
  INV_X1 U13748 ( .A(n1447), .ZN(n1441) );
  NOR2_X1 U13749 ( .A1(n1442), .A2(n1441), .ZN(n1443) );
  NOR2_X1 U13750 ( .A1(n1481), .A2(n1443), .ZN(n1445) );
  XOR2_X1 U13751 ( .A(r[48]), .B(r[49]), .Z(n1444) );
  XNOR2_X1 U13752 ( .A(n1445), .B(n1444), .ZN(n1446) );
  XNOR2_X1 U13753 ( .A(n1542), .B(n1446), .ZN(n26721) );
  XNOR2_X1 U13754 ( .A(in1[0]), .B(n1447), .ZN(n1448) );
  NOR2_X1 U13755 ( .A1(n1449), .A2(n1448), .ZN(n1450) );
  XOR2_X1 U13756 ( .A(n1450), .B(r[38]), .Z(n1451) );
  XNOR2_X1 U13757 ( .A(r[37]), .B(n1451), .ZN(n1452) );
  XNOR2_X1 U13758 ( .A(n1522), .B(n1452), .ZN(n26720) );
  NAND2_X1 U13759 ( .A1(n1499), .A2(n1461), .ZN(n1454) );
  NAND2_X1 U13760 ( .A1(n1454), .A2(n1453), .ZN(n1456) );
  NAND2_X1 U13761 ( .A1(n1456), .A2(n1455), .ZN(n1458) );
  XOR2_X1 U13762 ( .A(n1488), .B(r[66]), .Z(n1457) );
  XNOR2_X1 U13763 ( .A(n1458), .B(n1457), .ZN(n1459) );
  XNOR2_X1 U13764 ( .A(r[65]), .B(n1459), .ZN(n26719) );
  NOR2_X1 U13765 ( .A1(n1460), .A2(n1513), .ZN(n1462) );
  XOR2_X1 U13766 ( .A(n1462), .B(n1461), .Z(n1463) );
  NOR2_X1 U13767 ( .A1(n1463), .A2(n1481), .ZN(n1464) );
  XOR2_X1 U13768 ( .A(n1464), .B(n1488), .Z(n1466) );
  XNOR2_X1 U13769 ( .A(r[57]), .B(r[56]), .ZN(n1465) );
  XNOR2_X1 U13770 ( .A(n1466), .B(n1465), .ZN(n1470) );
  NOR2_X1 U13771 ( .A1(n1468), .A2(n1467), .ZN(n1469) );
  XOR2_X1 U13772 ( .A(n1470), .B(n1469), .Z(n26718) );
  XNOR2_X1 U13773 ( .A(n1471), .B(r[86]), .ZN(n1477) );
  NAND2_X1 U13774 ( .A1(in2[0]), .A2(n1472), .ZN(n1536) );
  NAND2_X1 U13775 ( .A1(n1536), .A2(n1473), .ZN(n1474) );
  NAND2_X1 U13776 ( .A1(n1474), .A2(in1[2]), .ZN(n1475) );
  XNOR2_X1 U13777 ( .A(n1475), .B(r[87]), .ZN(n1476) );
  XNOR2_X1 U13778 ( .A(n1477), .B(n1476), .ZN(n26717) );
  NAND2_X1 U13779 ( .A1(n1479), .A2(n1478), .ZN(n1484) );
  NAND2_X1 U13780 ( .A1(n1480), .A2(in1[2]), .ZN(n1482) );
  NAND2_X1 U13781 ( .A1(n1482), .A2(n1481), .ZN(n1483) );
  NAND2_X1 U13782 ( .A1(n1484), .A2(n1483), .ZN(n1485) );
  XNOR2_X1 U13783 ( .A(r[74]), .B(n1485), .ZN(n1486) );
  XNOR2_X1 U13784 ( .A(n1486), .B(r[75]), .ZN(n1487) );
  XNOR2_X1 U13785 ( .A(n1488), .B(n1487), .ZN(n26716) );
  NOR2_X1 U13786 ( .A1(n1489), .A2(n1524), .ZN(n1495) );
  NAND2_X1 U13787 ( .A1(in1[3]), .A2(in2[0]), .ZN(n1496) );
  XOR2_X1 U13788 ( .A(n1515), .B(n1496), .Z(n1490) );
  NAND2_X1 U13789 ( .A1(n1490), .A2(in1[1]), .ZN(n1492) );
  XOR2_X1 U13790 ( .A(r[67]), .B(r[68]), .Z(n1491) );
  XNOR2_X1 U13791 ( .A(n1492), .B(n1491), .ZN(n1493) );
  XOR2_X1 U13792 ( .A(n1512), .B(n1493), .Z(n1494) );
  XNOR2_X1 U13793 ( .A(n1495), .B(n1494), .ZN(n26715) );
  NAND2_X1 U13794 ( .A1(n1497), .A2(n1496), .ZN(n1502) );
  NAND2_X1 U13795 ( .A1(n1498), .A2(in1[3]), .ZN(n1500) );
  NAND2_X1 U13796 ( .A1(n1500), .A2(n1499), .ZN(n1501) );
  NAND2_X1 U13797 ( .A1(n1502), .A2(n1501), .ZN(n1504) );
  XOR2_X1 U13798 ( .A(r[71]), .B(r[70]), .Z(n1503) );
  XNOR2_X1 U13799 ( .A(n1504), .B(n1503), .ZN(n1505) );
  XNOR2_X1 U13800 ( .A(n1505), .B(n1533), .ZN(n26714) );
  NAND2_X1 U13801 ( .A1(n1507), .A2(n1506), .ZN(n1508) );
  NAND2_X1 U13802 ( .A1(n1508), .A2(in3[2]), .ZN(n1509) );
  XNOR2_X1 U13803 ( .A(n1509), .B(r[104]), .ZN(n1510) );
  XOR2_X1 U13804 ( .A(r[103]), .B(n1510), .Z(n1511) );
  XNOR2_X1 U13805 ( .A(n1512), .B(n1511), .ZN(n26713) );
  XNOR2_X1 U13806 ( .A(r[100]), .B(r[101]), .ZN(n1520) );
  NAND2_X1 U13807 ( .A1(n1514), .A2(n1513), .ZN(n1518) );
  NAND2_X1 U13808 ( .A1(n1516), .A2(n1515), .ZN(n1517) );
  NAND2_X1 U13809 ( .A1(n1518), .A2(n1517), .ZN(n1519) );
  XNOR2_X1 U13810 ( .A(n1520), .B(n1519), .ZN(n1521) );
  XNOR2_X1 U13811 ( .A(n1522), .B(n1521), .ZN(n26712) );
  XNOR2_X1 U13812 ( .A(r[79]), .B(r[80]), .ZN(n1526) );
  NOR2_X1 U13813 ( .A1(n1524), .A2(n1523), .ZN(n1525) );
  XNOR2_X1 U13814 ( .A(n1526), .B(n1525), .ZN(n1532) );
  NOR2_X1 U13815 ( .A1(n1528), .A2(n1527), .ZN(n1529) );
  XOR2_X1 U13816 ( .A(n1529), .B(in3[2]), .Z(n1530) );
  NAND2_X1 U13817 ( .A1(in1[1]), .A2(n1530), .ZN(n1531) );
  XNOR2_X1 U13818 ( .A(n1532), .B(n1531), .ZN(n1534) );
  XNOR2_X1 U13819 ( .A(n1534), .B(n1533), .ZN(n26711) );
  XNOR2_X1 U13820 ( .A(r[30]), .B(r[31]), .ZN(n1540) );
  AND2_X1 U13821 ( .A1(in1[3]), .A2(n1535), .ZN(n1538) );
  NOR2_X1 U13822 ( .A1(in1[3]), .A2(n1536), .ZN(n1537) );
  NOR2_X1 U13823 ( .A1(n1538), .A2(n1537), .ZN(n1539) );
  XNOR2_X1 U13824 ( .A(n1540), .B(n1539), .ZN(n1541) );
  XNOR2_X1 U13825 ( .A(n1542), .B(n1541), .ZN(n26710) );
endmodule


module PRINCE_Sbox_inv_1 ( clk, in1, in2, in3, r, 
        TwoSharesFromNeighbouringSbox, out1, out2, out3 );
  input [3:0] in1;
  input [3:0] in2;
  input [3:0] in3;
  input [107:0] r;
  input [7:0] TwoSharesFromNeighbouringSbox;
  output [3:0] out1;
  output [3:0] out2;
  output [3:0] out3;
  input clk;
  wire   \CF_Out[2][26] , \CF_Out[2][25] , \CF_Out[2][24] , \CF_Out[2][22] ,
         \CF_Out[2][20] , \CF_Out[2][19] , \CF_Out[2][18] , \CF_Out[2][17] ,
         \CF_Out[2][16] , \CF_Out[2][15] , \CF_Out[2][13] , \CF_Out[2][12] ,
         \CF_Out[2][11] , \CF_Out[2][9] , \CF_Out[2][8] , \CF_Out[2][7] ,
         \CF_Out[2][6] , \CF_Out[2][5] , \CF_Out[2][4] , \CF_Out[2][2] ,
         \CF_Out[2][1] , \CF_Out[2][0] , \CF_Out[1][26] , \CF_Out[1][25] ,
         \CF_Out[1][24] , \CF_Out[1][23] , \CF_Out[1][21] , \CF_Out[1][20] ,
         \CF_Out[1][18] , \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] ,
         \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][10] , \CF_Out[1][9] ,
         \CF_Out[1][8] , \CF_Out[1][7] , \CF_Out[1][6] , \CF_Out[1][4] ,
         \CF_Out[1][3] , \CF_Out[1][1] , \CF_Out[1][0] , \CF_Out[0][26] ,
         \CF_Out[0][25] , \CF_Out[0][24] , \CF_Out[0][23] , \CF_Out[0][22] ,
         \CF_Out[0][21] , \CF_Out[0][20] , \CF_Out[0][19] , \CF_Out[0][18] ,
         \CF_Out[0][17] , \CF_Out[0][16] , \CF_Out[0][15] , \CF_Out[0][14] ,
         \CF_Out[0][13] , \CF_Out[0][12] , \CF_Out[0][10] , \CF_Out[0][9] ,
         \CF_Out[0][8] , \CF_Out[0][7] , \CF_Out[0][6] , \CF_Out[0][5] ,
         \CF_Out[0][4] , \CF_Out[0][3] , \CF_Out[0][2] , \CF_Out[0][1] ,
         \CF_Out[0][0] , n761, n762, n763, n764, n765, n766, n767, n768, n769,
         n770, n771, n772, n773, n774, n775, n776, n777, n778, n779, n780,
         n781, n782, n783, n784, n785, n786, n787, n788, n789, n790, n791,
         n792, n793, n794, n795, n796, n797, n798, n799, n800, n801, n802,
         n803, n804, n805, n806, n807, n808, n809, n810, n811, n812, n813,
         n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, n824,
         n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835,
         n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846,
         n847, n848, n849, n850, n851, n852, n853, n854, n855, n856, n857,
         n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, n868,
         n26710, n26711, n26712, n26713, n26714, n26715, n26716, n26717,
         n26718, n26719, n26720, n26721, n26722, n26723, n26724, n26725,
         n26726, n26727, n26728, n26729, n26730, n26731, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513,
         n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523,
         n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533,
         n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543,
         n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553,
         n1554;
  wire   [44:0] CF_Out_MSB;

  DFF_X1 \CF_Reg_reg[2][26]  ( .D(\CF_Out[2][26] ), .CK(clk), .QN(n776) );
  DFF_X1 \CF_Reg_reg[2][25]  ( .D(\CF_Out[2][25] ), .CK(clk), .Q(n774) );
  DFF_X1 \CF_Reg_reg[2][24]  ( .D(\CF_Out[2][24] ), .CK(clk), .QN(n860) );
  DFF_X1 \CF_Reg_reg[2][23]  ( .D(n26731), .CK(clk), .Q(n773) );
  DFF_X1 \CF_Reg_reg[2][22]  ( .D(\CF_Out[2][22] ), .CK(clk), .Q(n772) );
  DFF_X1 \CF_Reg_reg[2][21]  ( .D(n26721), .CK(clk), .Q(n775) );
  DFF_X1 \CF_Reg_reg[2][20]  ( .D(\CF_Out[2][20] ), .CK(clk), .Q(n771) );
  DFF_X1 \CF_Reg_reg[2][19]  ( .D(\CF_Out[2][19] ), .CK(clk), .Q(n769) );
  DFF_X1 \CF_Reg_reg[2][18]  ( .D(\CF_Out[2][18] ), .CK(clk), .Q(n770) );
  DFF_X1 \CF_Reg_reg[2][17]  ( .D(\CF_Out[2][17] ), .CK(clk), .QN(n808) );
  DFF_X1 \CF_Reg_reg[2][16]  ( .D(\CF_Out[2][16] ), .CK(clk), .Q(n806) );
  DFF_X1 \CF_Reg_reg[2][15]  ( .D(\CF_Out[2][15] ), .CK(clk), .QN(n861) );
  DFF_X1 \CF_Reg_reg[2][14]  ( .D(n26726), .CK(clk), .Q(n805) );
  DFF_X1 \CF_Reg_reg[2][13]  ( .D(\CF_Out[2][13] ), .CK(clk), .Q(n804) );
  DFF_X1 \CF_Reg_reg[2][12]  ( .D(\CF_Out[2][12] ), .CK(clk), .Q(n807) );
  DFF_X1 \CF_Reg_reg[2][11]  ( .D(\CF_Out[2][11] ), .CK(clk), .Q(n803) );
  DFF_X1 \CF_Reg_reg[2][10]  ( .D(n26720), .CK(clk), .Q(n801) );
  DFF_X1 \CF_Reg_reg[2][9]  ( .D(\CF_Out[2][9] ), .CK(clk), .Q(n802) );
  DFF_X1 \CF_Reg_reg[2][8]  ( .D(\CF_Out[2][8] ), .CK(clk), .QN(n840) );
  DFF_X1 \CF_Reg_reg[2][7]  ( .D(\CF_Out[2][7] ), .CK(clk), .Q(n838) );
  DFF_X1 \CF_Reg_reg[2][6]  ( .D(\CF_Out[2][6] ), .CK(clk), .QN(n862) );
  DFF_X1 \CF_Reg_reg[2][5]  ( .D(\CF_Out[2][5] ), .CK(clk), .Q(n837) );
  DFF_X1 \CF_Reg_reg[2][4]  ( .D(\CF_Out[2][4] ), .CK(clk), .Q(n836) );
  DFF_X1 \CF_Reg_reg[2][3]  ( .D(n26710), .CK(clk), .Q(n839) );
  DFF_X1 \CF_Reg_reg[2][2]  ( .D(\CF_Out[2][2] ), .CK(clk), .Q(n835) );
  DFF_X1 \CF_Reg_reg[2][1]  ( .D(\CF_Out[2][1] ), .CK(clk), .Q(n833) );
  DFF_X1 \CF_Reg_reg[2][0]  ( .D(\CF_Out[2][0] ), .CK(clk), .Q(n834) );
  DFF_X1 \CF_Reg_reg[1][26]  ( .D(\CF_Out[1][26] ), .CK(clk), .QN(n784) );
  DFF_X1 \CF_Reg_reg[1][25]  ( .D(\CF_Out[1][25] ), .CK(clk), .Q(n782) );
  DFF_X1 \CF_Reg_reg[1][24]  ( .D(\CF_Out[1][24] ), .CK(clk), .QN(n863) );
  DFF_X1 \CF_Reg_reg[1][23]  ( .D(\CF_Out[1][23] ), .CK(clk), .Q(n781) );
  DFF_X1 \CF_Reg_reg[1][22]  ( .D(n26713), .CK(clk), .Q(n780) );
  DFF_X1 \CF_Reg_reg[1][21]  ( .D(\CF_Out[1][21] ), .CK(clk), .Q(n783) );
  DFF_X1 \CF_Reg_reg[1][20]  ( .D(\CF_Out[1][20] ), .CK(clk), .Q(n779) );
  DFF_X1 \CF_Reg_reg[1][19]  ( .D(n26712), .CK(clk), .Q(n777) );
  DFF_X1 \CF_Reg_reg[1][18]  ( .D(\CF_Out[1][18] ), .CK(clk), .Q(n778) );
  DFF_X1 \CF_Reg_reg[1][17]  ( .D(\CF_Out[1][17] ), .CK(clk), .QN(n816) );
  DFF_X1 \CF_Reg_reg[1][16]  ( .D(\CF_Out[1][16] ), .CK(clk), .Q(n814) );
  DFF_X1 \CF_Reg_reg[1][15]  ( .D(\CF_Out[1][15] ), .CK(clk), .QN(n864) );
  DFF_X1 \CF_Reg_reg[1][14]  ( .D(n26728), .CK(clk), .Q(n813) );
  DFF_X1 \CF_Reg_reg[1][13]  ( .D(\CF_Out[1][13] ), .CK(clk), .Q(n812) );
  DFF_X1 \CF_Reg_reg[1][12]  ( .D(\CF_Out[1][12] ), .CK(clk), .Q(n815) );
  DFF_X1 \CF_Reg_reg[1][11]  ( .D(n26725), .CK(clk), .Q(n811) );
  DFF_X1 \CF_Reg_reg[1][10]  ( .D(\CF_Out[1][10] ), .CK(clk), .Q(n809) );
  DFF_X1 \CF_Reg_reg[1][9]  ( .D(\CF_Out[1][9] ), .CK(clk), .Q(n810) );
  DFF_X1 \CF_Reg_reg[1][8]  ( .D(\CF_Out[1][8] ), .CK(clk), .QN(n848) );
  DFF_X1 \CF_Reg_reg[1][7]  ( .D(\CF_Out[1][7] ), .CK(clk), .Q(n846) );
  DFF_X1 \CF_Reg_reg[1][6]  ( .D(\CF_Out[1][6] ), .CK(clk), .QN(n865) );
  DFF_X1 \CF_Reg_reg[1][5]  ( .D(n26717), .CK(clk), .Q(n845) );
  DFF_X1 \CF_Reg_reg[1][4]  ( .D(\CF_Out[1][4] ), .CK(clk), .Q(n844) );
  DFF_X1 \CF_Reg_reg[1][3]  ( .D(\CF_Out[1][3] ), .CK(clk), .Q(n847) );
  DFF_X1 \CF_Reg_reg[1][2]  ( .D(n26722), .CK(clk), .Q(n843) );
  DFF_X1 \CF_Reg_reg[1][1]  ( .D(\CF_Out[1][1] ), .CK(clk), .Q(n841) );
  DFF_X1 \CF_Reg_reg[1][0]  ( .D(\CF_Out[1][0] ), .CK(clk), .Q(n842) );
  DFF_X1 \CF_Reg_reg[0][26]  ( .D(\CF_Out[0][26] ), .CK(clk), .QN(n792) );
  DFF_X1 \CF_Reg_reg[0][25]  ( .D(\CF_Out[0][25] ), .CK(clk), .Q(n790) );
  DFF_X1 \CF_Reg_reg[0][24]  ( .D(\CF_Out[0][24] ), .CK(clk), .QN(n866) );
  DFF_X1 \CF_Reg_reg[0][23]  ( .D(\CF_Out[0][23] ), .CK(clk), .Q(n789) );
  DFF_X1 \CF_Reg_reg[0][22]  ( .D(\CF_Out[0][22] ), .CK(clk), .Q(n788) );
  DFF_X1 \CF_Reg_reg[0][21]  ( .D(\CF_Out[0][21] ), .CK(clk), .Q(n791) );
  DFF_X1 \CF_Reg_reg[0][20]  ( .D(\CF_Out[0][20] ), .CK(clk), .Q(n787) );
  DFF_X1 \CF_Reg_reg[0][19]  ( .D(\CF_Out[0][19] ), .CK(clk), .Q(n785) );
  DFF_X1 \CF_Reg_reg[0][18]  ( .D(\CF_Out[0][18] ), .CK(clk), .Q(n786) );
  DFF_X1 \CF_Reg_reg[0][17]  ( .D(\CF_Out[0][17] ), .CK(clk), .QN(n824) );
  DFF_X1 \CF_Reg_reg[0][16]  ( .D(\CF_Out[0][16] ), .CK(clk), .Q(n822) );
  DFF_X1 \CF_Reg_reg[0][15]  ( .D(\CF_Out[0][15] ), .CK(clk), .QN(n867) );
  DFF_X1 \CF_Reg_reg[0][14]  ( .D(\CF_Out[0][14] ), .CK(clk), .Q(n821) );
  DFF_X1 \CF_Reg_reg[0][13]  ( .D(\CF_Out[0][13] ), .CK(clk), .Q(n820) );
  DFF_X1 \CF_Reg_reg[0][12]  ( .D(\CF_Out[0][12] ), .CK(clk), .Q(n823) );
  DFF_X1 \CF_Reg_reg[0][11]  ( .D(n26723), .CK(clk), .Q(n819) );
  DFF_X1 \CF_Reg_reg[0][10]  ( .D(\CF_Out[0][10] ), .CK(clk), .Q(n817) );
  DFF_X1 \CF_Reg_reg[0][9]  ( .D(\CF_Out[0][9] ), .CK(clk), .Q(n818) );
  DFF_X1 \CF_Reg_reg[0][8]  ( .D(\CF_Out[0][8] ), .CK(clk), .QN(n856) );
  DFF_X1 \CF_Reg_reg[0][7]  ( .D(\CF_Out[0][7] ), .CK(clk), .Q(n854) );
  DFF_X1 \CF_Reg_reg[0][6]  ( .D(\CF_Out[0][6] ), .CK(clk), .QN(n868) );
  DFF_X1 \CF_Reg_reg[0][5]  ( .D(\CF_Out[0][5] ), .CK(clk), .Q(n853) );
  DFF_X1 \CF_Reg_reg[0][4]  ( .D(\CF_Out[0][4] ), .CK(clk), .Q(n852) );
  DFF_X1 \CF_Reg_reg[0][3]  ( .D(\CF_Out[0][3] ), .CK(clk), .Q(n855) );
  DFF_X1 \CF_Reg_reg[0][2]  ( .D(\CF_Out[0][2] ), .CK(clk), .Q(n851) );
  DFF_X1 \CF_Reg_reg[0][1]  ( .D(\CF_Out[0][1] ), .CK(clk), .Q(n849) );
  DFF_X1 \CF_Reg_reg[0][0]  ( .D(\CF_Out[0][0] ), .CK(clk), .Q(n850) );
  DFF_X1 \CF_Reg_MSB_reg[44]  ( .D(n26716), .CK(clk), .Q(n765) );
  DFF_X1 \CF_Reg_MSB_reg[43]  ( .D(CF_Out_MSB[43]), .CK(clk), .Q(n764) );
  DFF_X1 \CF_Reg_MSB_reg[42]  ( .D(CF_Out_MSB[42]), .CK(clk), .Q(n767) );
  DFF_X1 \CF_Reg_MSB_reg[41]  ( .D(n26729), .CK(clk), .Q(n763) );
  DFF_X1 \CF_Reg_MSB_reg[40]  ( .D(CF_Out_MSB[40]), .CK(clk), .Q(n761) );
  DFF_X1 \CF_Reg_MSB_reg[39]  ( .D(CF_Out_MSB[39]), .CK(clk), .QN(n768) );
  DFF_X1 \CF_Reg_MSB_reg[38]  ( .D(CF_Out_MSB[38]), .CK(clk), .Q(n766) );
  DFF_X1 \CF_Reg_MSB_reg[37]  ( .D(n26711), .CK(clk), .QN(n857) );
  DFF_X1 \CF_Reg_MSB_reg[36]  ( .D(n26727), .CK(clk), .Q(n762) );
  DFF_X1 \CF_Reg_MSB_reg[29]  ( .D(CF_Out_MSB[29]), .CK(clk), .Q(n796) );
  DFF_X1 \CF_Reg_MSB_reg[28]  ( .D(n26714), .CK(clk), .Q(n793) );
  DFF_X1 \CF_Reg_MSB_reg[27]  ( .D(CF_Out_MSB[27]), .CK(clk), .Q(n794) );
  DFF_X1 \CF_Reg_MSB_reg[26]  ( .D(n26719), .CK(clk), .Q(n798) );
  DFF_X1 \CF_Reg_MSB_reg[25]  ( .D(CF_Out_MSB[25]), .CK(clk), .Q(n795) );
  DFF_X1 \CF_Reg_MSB_reg[24]  ( .D(CF_Out_MSB[24]), .CK(clk), .Q(n799) );
  DFF_X1 \CF_Reg_MSB_reg[20]  ( .D(CF_Out_MSB[20]), .CK(clk), .QN(n858) );
  DFF_X1 \CF_Reg_MSB_reg[19]  ( .D(n26715), .CK(clk), .Q(n797) );
  DFF_X1 \CF_Reg_MSB_reg[18]  ( .D(n26730), .CK(clk), .QN(n800) );
  DFF_X1 \CF_Reg_MSB_reg[14]  ( .D(CF_Out_MSB[14]), .CK(clk), .Q(n825) );
  DFF_X1 \CF_Reg_MSB_reg[13]  ( .D(n26724), .CK(clk), .QN(n832) );
  DFF_X1 \CF_Reg_MSB_reg[12]  ( .D(CF_Out_MSB[12]), .CK(clk), .Q(n830) );
  DFF_X1 \CF_Reg_MSB_reg[11]  ( .D(CF_Out_MSB[11]), .CK(clk), .QN(n859) );
  DFF_X1 \CF_Reg_MSB_reg[10]  ( .D(CF_Out_MSB[10]), .CK(clk), .Q(n829) );
  DFF_X1 \CF_Reg_MSB_reg[9]  ( .D(CF_Out_MSB[9]), .CK(clk), .Q(n827) );
  DFF_X1 \CF_Reg_MSB_reg[2]  ( .D(n26718), .CK(clk), .Q(n831) );
  DFF_X1 \CF_Reg_MSB_reg[1]  ( .D(CF_Out_MSB[1]), .CK(clk), .Q(n826) );
  DFF_X1 \CF_Reg_MSB_reg[0]  ( .D(CF_Out_MSB[0]), .CK(clk), .Q(n828) );
  XNOR2_X2 U13020 ( .A(TwoSharesFromNeighbouringSbox[1]), .B(
        TwoSharesFromNeighbouringSbox[0]), .ZN(n1534) );
  XOR2_X2 U13021 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[2]), .Z(n1554) );
  XOR2_X2 U13022 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[4]), .Z(n1483) );
  XOR2_X2 U13023 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n1500) );
  XOR2_X2 U13024 ( .A(TwoSharesFromNeighbouringSbox[6]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n1413) );
  XNOR2_X2 U13025 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .ZN(n1545) );
  XNOR2_X2 U13026 ( .A(TwoSharesFromNeighbouringSbox[3]), .B(
        TwoSharesFromNeighbouringSbox[4]), .ZN(n1524) );
  XNOR2_X1 U13027 ( .A(n768), .B(n857), .ZN(n875) );
  XOR2_X1 U13028 ( .A(n763), .B(n766), .Z(n870) );
  XNOR2_X1 U13029 ( .A(n762), .B(n761), .ZN(n869) );
  XNOR2_X1 U13030 ( .A(n870), .B(n869), .ZN(n871) );
  XOR2_X1 U13031 ( .A(n871), .B(n764), .Z(n873) );
  XNOR2_X1 U13032 ( .A(n765), .B(n767), .ZN(n872) );
  XNOR2_X1 U13033 ( .A(n873), .B(n872), .ZN(n874) );
  XNOR2_X1 U13034 ( .A(n875), .B(n874), .ZN(out3[3]) );
  XNOR2_X1 U13035 ( .A(n776), .B(n860), .ZN(n882) );
  XOR2_X1 U13036 ( .A(n771), .B(n774), .Z(n877) );
  XNOR2_X1 U13037 ( .A(n770), .B(n769), .ZN(n876) );
  XNOR2_X1 U13038 ( .A(n877), .B(n876), .ZN(n878) );
  XOR2_X1 U13039 ( .A(n878), .B(n772), .Z(n880) );
  XNOR2_X1 U13040 ( .A(n773), .B(n775), .ZN(n879) );
  XNOR2_X1 U13041 ( .A(n880), .B(n879), .ZN(n881) );
  XNOR2_X1 U13042 ( .A(n882), .B(n881), .ZN(out3[2]) );
  XNOR2_X1 U13043 ( .A(n784), .B(n863), .ZN(n889) );
  XOR2_X1 U13044 ( .A(n779), .B(n782), .Z(n884) );
  XNOR2_X1 U13045 ( .A(n778), .B(n777), .ZN(n883) );
  XNOR2_X1 U13046 ( .A(n884), .B(n883), .ZN(n885) );
  XOR2_X1 U13047 ( .A(n885), .B(n780), .Z(n887) );
  XNOR2_X1 U13048 ( .A(n781), .B(n783), .ZN(n886) );
  XNOR2_X1 U13049 ( .A(n887), .B(n886), .ZN(n888) );
  XNOR2_X1 U13050 ( .A(n889), .B(n888), .ZN(out3[1]) );
  XNOR2_X1 U13051 ( .A(n792), .B(n866), .ZN(n896) );
  XOR2_X1 U13052 ( .A(n787), .B(n790), .Z(n891) );
  XNOR2_X1 U13053 ( .A(n786), .B(n785), .ZN(n890) );
  XNOR2_X1 U13054 ( .A(n891), .B(n890), .ZN(n892) );
  XOR2_X1 U13055 ( .A(n892), .B(n788), .Z(n894) );
  XNOR2_X1 U13056 ( .A(n789), .B(n791), .ZN(n893) );
  XNOR2_X1 U13057 ( .A(n894), .B(n893), .ZN(n895) );
  XNOR2_X1 U13058 ( .A(n896), .B(n895), .ZN(out3[0]) );
  XNOR2_X1 U13059 ( .A(n800), .B(n858), .ZN(n903) );
  XOR2_X1 U13060 ( .A(n795), .B(n798), .Z(n898) );
  XNOR2_X1 U13061 ( .A(n794), .B(n793), .ZN(n897) );
  XNOR2_X1 U13062 ( .A(n898), .B(n897), .ZN(n899) );
  XOR2_X1 U13063 ( .A(n899), .B(n796), .Z(n901) );
  XNOR2_X1 U13064 ( .A(n797), .B(n799), .ZN(n900) );
  XNOR2_X1 U13065 ( .A(n901), .B(n900), .ZN(n902) );
  XNOR2_X1 U13066 ( .A(n903), .B(n902), .ZN(out2[3]) );
  XNOR2_X1 U13067 ( .A(n808), .B(n861), .ZN(n910) );
  XOR2_X1 U13068 ( .A(n803), .B(n806), .Z(n905) );
  XNOR2_X1 U13069 ( .A(n802), .B(n801), .ZN(n904) );
  XNOR2_X1 U13070 ( .A(n905), .B(n904), .ZN(n906) );
  XOR2_X1 U13071 ( .A(n906), .B(n804), .Z(n908) );
  XNOR2_X1 U13072 ( .A(n805), .B(n807), .ZN(n907) );
  XNOR2_X1 U13073 ( .A(n908), .B(n907), .ZN(n909) );
  XNOR2_X1 U13074 ( .A(n910), .B(n909), .ZN(out2[2]) );
  XNOR2_X1 U13075 ( .A(n816), .B(n864), .ZN(n917) );
  XOR2_X1 U13076 ( .A(n811), .B(n814), .Z(n912) );
  XNOR2_X1 U13077 ( .A(n810), .B(n809), .ZN(n911) );
  XNOR2_X1 U13078 ( .A(n912), .B(n911), .ZN(n913) );
  XOR2_X1 U13079 ( .A(n913), .B(n812), .Z(n915) );
  XNOR2_X1 U13080 ( .A(n813), .B(n815), .ZN(n914) );
  XNOR2_X1 U13081 ( .A(n915), .B(n914), .ZN(n916) );
  XNOR2_X1 U13082 ( .A(n917), .B(n916), .ZN(out2[1]) );
  XNOR2_X1 U13083 ( .A(n824), .B(n867), .ZN(n924) );
  XOR2_X1 U13084 ( .A(n819), .B(n822), .Z(n919) );
  XNOR2_X1 U13085 ( .A(n818), .B(n817), .ZN(n918) );
  XNOR2_X1 U13086 ( .A(n919), .B(n918), .ZN(n920) );
  XOR2_X1 U13087 ( .A(n920), .B(n820), .Z(n922) );
  XNOR2_X1 U13088 ( .A(n821), .B(n823), .ZN(n921) );
  XNOR2_X1 U13089 ( .A(n922), .B(n921), .ZN(n923) );
  XNOR2_X1 U13090 ( .A(n924), .B(n923), .ZN(out2[0]) );
  XNOR2_X1 U13091 ( .A(n832), .B(n859), .ZN(n931) );
  XOR2_X1 U13092 ( .A(n827), .B(n830), .Z(n926) );
  XNOR2_X1 U13093 ( .A(n826), .B(n825), .ZN(n925) );
  XNOR2_X1 U13094 ( .A(n926), .B(n925), .ZN(n927) );
  XOR2_X1 U13095 ( .A(n927), .B(n828), .Z(n929) );
  XNOR2_X1 U13096 ( .A(n829), .B(n831), .ZN(n928) );
  XNOR2_X1 U13097 ( .A(n929), .B(n928), .ZN(n930) );
  XNOR2_X1 U13098 ( .A(n931), .B(n930), .ZN(out1[3]) );
  XNOR2_X1 U13099 ( .A(n840), .B(n862), .ZN(n938) );
  XOR2_X1 U13100 ( .A(n835), .B(n838), .Z(n933) );
  XNOR2_X1 U13101 ( .A(n834), .B(n833), .ZN(n932) );
  XNOR2_X1 U13102 ( .A(n933), .B(n932), .ZN(n934) );
  XOR2_X1 U13103 ( .A(n934), .B(n836), .Z(n936) );
  XNOR2_X1 U13104 ( .A(n837), .B(n839), .ZN(n935) );
  XNOR2_X1 U13105 ( .A(n936), .B(n935), .ZN(n937) );
  XNOR2_X1 U13106 ( .A(n938), .B(n937), .ZN(out1[2]) );
  XNOR2_X1 U13107 ( .A(n848), .B(n865), .ZN(n945) );
  XOR2_X1 U13108 ( .A(n843), .B(n846), .Z(n940) );
  XNOR2_X1 U13109 ( .A(n842), .B(n841), .ZN(n939) );
  XNOR2_X1 U13110 ( .A(n940), .B(n939), .ZN(n941) );
  XOR2_X1 U13111 ( .A(n941), .B(n844), .Z(n943) );
  XNOR2_X1 U13112 ( .A(n845), .B(n847), .ZN(n942) );
  XNOR2_X1 U13113 ( .A(n943), .B(n942), .ZN(n944) );
  XNOR2_X1 U13114 ( .A(n945), .B(n944), .ZN(out1[1]) );
  XNOR2_X1 U13115 ( .A(n856), .B(n868), .ZN(n952) );
  XOR2_X1 U13116 ( .A(n851), .B(n854), .Z(n947) );
  XNOR2_X1 U13117 ( .A(n850), .B(n849), .ZN(n946) );
  XNOR2_X1 U13118 ( .A(n947), .B(n946), .ZN(n948) );
  XOR2_X1 U13119 ( .A(n948), .B(n852), .Z(n950) );
  XNOR2_X1 U13120 ( .A(n853), .B(n855), .ZN(n949) );
  XNOR2_X1 U13121 ( .A(n950), .B(n949), .ZN(n951) );
  XNOR2_X1 U13122 ( .A(n952), .B(n951), .ZN(out1[0]) );
  XNOR2_X1 U13123 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[73]), .ZN(n953)
         );
  XNOR2_X1 U13124 ( .A(n953), .B(r[72]), .ZN(n957) );
  INV_X1 U13125 ( .A(in3[3]), .ZN(n1472) );
  NAND2_X1 U13126 ( .A1(in3[0]), .A2(in1[2]), .ZN(n1490) );
  XOR2_X1 U13127 ( .A(n1472), .B(n1490), .Z(n955) );
  INV_X1 U13128 ( .A(in3[0]), .ZN(n1539) );
  NOR2_X1 U13129 ( .A1(in1[1]), .A2(n1539), .ZN(n1304) );
  NOR2_X1 U13130 ( .A1(in3[0]), .A2(in1[2]), .ZN(n1242) );
  NOR2_X1 U13131 ( .A1(n1304), .A2(n1242), .ZN(n954) );
  NAND2_X1 U13132 ( .A1(n955), .A2(n954), .ZN(n956) );
  XNOR2_X1 U13133 ( .A(n957), .B(n956), .ZN(CF_Out_MSB[42]) );
  XNOR2_X1 U13134 ( .A(r[80]), .B(r[54]), .ZN(n961) );
  INV_X1 U13135 ( .A(in3[2]), .ZN(n1416) );
  NAND2_X1 U13136 ( .A1(in3[3]), .A2(in3[1]), .ZN(n1390) );
  NAND2_X1 U13137 ( .A1(n1416), .A2(n1390), .ZN(n958) );
  NAND2_X1 U13138 ( .A1(n958), .A2(n1539), .ZN(n959) );
  INV_X1 U13139 ( .A(in3[1]), .ZN(n1493) );
  NAND2_X1 U13140 ( .A1(n1472), .A2(n1493), .ZN(n1391) );
  NAND2_X1 U13141 ( .A1(n959), .A2(n1391), .ZN(n960) );
  XNOR2_X1 U13142 ( .A(n961), .B(n960), .ZN(n962) );
  XNOR2_X1 U13143 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n962), .ZN(
        CF_Out_MSB[38]) );
  NAND2_X1 U13144 ( .A1(in3[2]), .A2(in2[0]), .ZN(n1509) );
  XOR2_X1 U13145 ( .A(n1509), .B(in2[3]), .Z(n964) );
  NAND2_X1 U13146 ( .A1(in2[0]), .A2(n1493), .ZN(n1518) );
  INV_X1 U13147 ( .A(in2[0]), .ZN(n1313) );
  NAND2_X1 U13148 ( .A1(n1416), .A2(n1313), .ZN(n1096) );
  NAND2_X1 U13149 ( .A1(n1518), .A2(n1096), .ZN(n963) );
  NOR2_X1 U13150 ( .A1(n964), .A2(n963), .ZN(n965) );
  XOR2_X1 U13151 ( .A(n965), .B(r[71]), .Z(n967) );
  XNOR2_X1 U13152 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[72]), .ZN(n966)
         );
  XNOR2_X1 U13153 ( .A(n967), .B(n966), .ZN(CF_Out_MSB[29]) );
  INV_X1 U13154 ( .A(in1[3]), .ZN(n1540) );
  NAND2_X1 U13155 ( .A1(n1540), .A2(n1493), .ZN(n970) );
  NAND2_X1 U13156 ( .A1(in3[1]), .A2(in1[3]), .ZN(n1519) );
  INV_X1 U13157 ( .A(n1519), .ZN(n1528) );
  NOR2_X1 U13158 ( .A1(in1[2]), .A2(n1528), .ZN(n968) );
  NOR2_X1 U13159 ( .A1(n1313), .A2(n968), .ZN(n969) );
  NAND2_X1 U13160 ( .A1(n970), .A2(n969), .ZN(n973) );
  XNOR2_X1 U13161 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[64]), .ZN(n971)
         );
  XNOR2_X1 U13162 ( .A(n971), .B(r[63]), .ZN(n972) );
  XNOR2_X1 U13163 ( .A(n973), .B(n972), .ZN(CF_Out_MSB[24]) );
  INV_X1 U13164 ( .A(in1[0]), .ZN(n1525) );
  NAND2_X1 U13165 ( .A1(n1525), .A2(n1416), .ZN(n977) );
  NOR2_X1 U13166 ( .A1(n1416), .A2(n1525), .ZN(n1433) );
  XOR2_X1 U13167 ( .A(n1433), .B(n1540), .Z(n975) );
  NOR2_X1 U13168 ( .A1(n1525), .A2(in3[1]), .ZN(n974) );
  NOR2_X1 U13169 ( .A1(n975), .A2(n974), .ZN(n976) );
  NAND2_X1 U13170 ( .A1(n977), .A2(n976), .ZN(n980) );
  XNOR2_X1 U13171 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[62]), .ZN(n978)
         );
  XNOR2_X1 U13172 ( .A(n978), .B(r[63]), .ZN(n979) );
  XNOR2_X1 U13173 ( .A(n980), .B(n979), .ZN(CF_Out_MSB[14]) );
  NOR2_X1 U13174 ( .A1(in1[0]), .A2(in1[2]), .ZN(n1320) );
  NAND2_X1 U13175 ( .A1(n1320), .A2(in1[1]), .ZN(n984) );
  NAND2_X1 U13176 ( .A1(in1[3]), .A2(in1[2]), .ZN(n1010) );
  NOR2_X1 U13177 ( .A1(in1[0]), .A2(n1010), .ZN(n982) );
  NAND2_X1 U13178 ( .A1(in1[0]), .A2(in1[1]), .ZN(n1033) );
  NOR2_X1 U13179 ( .A1(in1[3]), .A2(n1033), .ZN(n981) );
  NOR2_X1 U13180 ( .A1(n982), .A2(n981), .ZN(n983) );
  NAND2_X1 U13181 ( .A1(n984), .A2(n983), .ZN(n987) );
  XNOR2_X1 U13182 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[55]), .ZN(n985)
         );
  XNOR2_X1 U13183 ( .A(n985), .B(r[54]), .ZN(n986) );
  XNOR2_X1 U13184 ( .A(n987), .B(n986), .ZN(CF_Out_MSB[0]) );
  XNOR2_X1 U13185 ( .A(r[37]), .B(r[36]), .ZN(n990) );
  NAND2_X1 U13186 ( .A1(in1[0]), .A2(in2[1]), .ZN(n1434) );
  NOR2_X1 U13187 ( .A1(in1[3]), .A2(n1434), .ZN(n988) );
  NAND2_X1 U13188 ( .A1(in1[3]), .A2(in2[1]), .ZN(n1258) );
  NOR2_X1 U13189 ( .A1(in3[2]), .A2(n1258), .ZN(n1021) );
  NOR2_X1 U13190 ( .A1(n988), .A2(n1021), .ZN(n989) );
  XNOR2_X1 U13191 ( .A(n990), .B(n989), .ZN(n991) );
  XNOR2_X1 U13192 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n991), .ZN(
        \CF_Out[2][9] ) );
  NAND2_X1 U13193 ( .A1(in3[2]), .A2(in1[1]), .ZN(n1447) );
  INV_X1 U13194 ( .A(n1447), .ZN(n1329) );
  NOR2_X1 U13195 ( .A1(n1304), .A2(n1329), .ZN(n992) );
  NOR2_X1 U13196 ( .A1(n992), .A2(n1540), .ZN(n995) );
  XOR2_X1 U13197 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[36]), .Z(n993)
         );
  XNOR2_X1 U13198 ( .A(r[35]), .B(n993), .ZN(n994) );
  XNOR2_X1 U13199 ( .A(n995), .B(n994), .ZN(\CF_Out[2][8] ) );
  XNOR2_X1 U13200 ( .A(r[53]), .B(r[27]), .ZN(n1000) );
  NAND2_X1 U13201 ( .A1(in3[3]), .A2(n1493), .ZN(n997) );
  NOR2_X1 U13202 ( .A1(n1472), .A2(n1539), .ZN(n1074) );
  NOR2_X1 U13203 ( .A1(in3[3]), .A2(in3[0]), .ZN(n1285) );
  NOR2_X1 U13204 ( .A1(n1074), .A2(n1285), .ZN(n1300) );
  NAND2_X1 U13205 ( .A1(n1300), .A2(n1416), .ZN(n996) );
  NAND2_X1 U13206 ( .A1(n997), .A2(n996), .ZN(n998) );
  NAND2_X1 U13207 ( .A1(in3[2]), .A2(in3[0]), .ZN(n1535) );
  INV_X1 U13208 ( .A(n1535), .ZN(n1069) );
  NOR2_X1 U13209 ( .A1(n998), .A2(n1069), .ZN(n999) );
  XNOR2_X1 U13210 ( .A(n1000), .B(n999), .ZN(n1001) );
  XNOR2_X1 U13211 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1001), .ZN(
        \CF_Out[2][26] ) );
  XNOR2_X1 U13212 ( .A(r[46]), .B(r[45]), .ZN(n1004) );
  NOR2_X1 U13213 ( .A1(in1[2]), .A2(n1390), .ZN(n1041) );
  NOR2_X1 U13214 ( .A1(n1391), .A2(n1525), .ZN(n1002) );
  NOR2_X1 U13215 ( .A1(n1041), .A2(n1002), .ZN(n1003) );
  XNOR2_X1 U13216 ( .A(n1004), .B(n1003), .ZN(n1005) );
  XNOR2_X1 U13217 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1005), .ZN(
        \CF_Out[2][18] ) );
  XNOR2_X1 U13218 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[45]), .ZN(n1009) );
  NAND2_X1 U13219 ( .A1(in3[2]), .A2(in2[1]), .ZN(n1045) );
  INV_X1 U13220 ( .A(in2[1]), .ZN(n1511) );
  NAND2_X1 U13221 ( .A1(in3[0]), .A2(n1511), .ZN(n1259) );
  NAND2_X1 U13222 ( .A1(n1045), .A2(n1259), .ZN(n1006) );
  NAND2_X1 U13223 ( .A1(n1006), .A2(in2[3]), .ZN(n1007) );
  XNOR2_X1 U13224 ( .A(n1007), .B(r[44]), .ZN(n1008) );
  XNOR2_X1 U13225 ( .A(n1009), .B(n1008), .ZN(\CF_Out[2][17] ) );
  NAND2_X1 U13226 ( .A1(in1[1]), .A2(n1010), .ZN(n1012) );
  XOR2_X1 U13227 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[27]), .Z(n1011)
         );
  XNOR2_X1 U13228 ( .A(r[28]), .B(n1011), .ZN(n1014) );
  XNOR2_X1 U13229 ( .A(n1012), .B(n1014), .ZN(n1013) );
  NAND2_X1 U13230 ( .A1(n1540), .A2(n1525), .ZN(n1015) );
  NAND2_X1 U13231 ( .A1(n1013), .A2(n1015), .ZN(n1019) );
  INV_X1 U13232 ( .A(n1014), .ZN(n1017) );
  INV_X1 U13233 ( .A(n1015), .ZN(n1016) );
  NAND2_X1 U13234 ( .A1(n1017), .A2(n1016), .ZN(n1018) );
  NAND2_X1 U13235 ( .A1(n1019), .A2(n1018), .ZN(\CF_Out[2][0] ) );
  XNOR2_X1 U13236 ( .A(r[91]), .B(r[90]), .ZN(n1023) );
  NOR2_X1 U13237 ( .A1(in1[0]), .A2(n1045), .ZN(n1020) );
  NOR2_X1 U13238 ( .A1(n1021), .A2(n1020), .ZN(n1022) );
  XNOR2_X1 U13239 ( .A(n1023), .B(n1022), .ZN(n1024) );
  XNOR2_X1 U13240 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1024), .ZN(
        \CF_Out[1][9] ) );
  XNOR2_X1 U13241 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[90]), .ZN(n1027) );
  XOR2_X1 U13242 ( .A(in3[0]), .B(in1[3]), .Z(n1252) );
  NAND2_X1 U13243 ( .A1(n1252), .A2(n1329), .ZN(n1025) );
  XNOR2_X1 U13244 ( .A(n1025), .B(r[89]), .ZN(n1026) );
  XNOR2_X1 U13245 ( .A(n1027), .B(n1026), .ZN(\CF_Out[1][8] ) );
  XNOR2_X1 U13246 ( .A(r[81]), .B(r[107]), .ZN(n1031) );
  NAND2_X1 U13247 ( .A1(in3[0]), .A2(n1493), .ZN(n1028) );
  NAND2_X1 U13248 ( .A1(n1028), .A2(n1390), .ZN(n1029) );
  NAND2_X1 U13249 ( .A1(n1029), .A2(in3[2]), .ZN(n1030) );
  XNOR2_X1 U13250 ( .A(n1031), .B(n1030), .ZN(n1032) );
  XNOR2_X1 U13251 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1032), .ZN(
        \CF_Out[1][26] ) );
  NAND2_X1 U13252 ( .A1(n1033), .A2(in2[2]), .ZN(n1034) );
  XOR2_X1 U13253 ( .A(n1534), .B(n1034), .Z(n1358) );
  XNOR2_X1 U13254 ( .A(n1358), .B(r[82]), .ZN(n1038) );
  INV_X1 U13255 ( .A(in2[3]), .ZN(n1410) );
  INV_X1 U13256 ( .A(in2[2]), .ZN(n1527) );
  NAND2_X1 U13257 ( .A1(n1410), .A2(n1527), .ZN(n1035) );
  NAND2_X1 U13258 ( .A1(n1035), .A2(in1[1]), .ZN(n1036) );
  XNOR2_X1 U13259 ( .A(n1036), .B(r[83]), .ZN(n1037) );
  XNOR2_X1 U13260 ( .A(n1038), .B(n1037), .ZN(\CF_Out[1][1] ) );
  XNOR2_X1 U13261 ( .A(r[100]), .B(r[99]), .ZN(n1043) );
  NOR2_X1 U13262 ( .A1(in1[0]), .A2(n1493), .ZN(n1039) );
  INV_X1 U13263 ( .A(in1[2]), .ZN(n1473) );
  NOR2_X1 U13264 ( .A1(n1039), .A2(n1473), .ZN(n1040) );
  NOR2_X1 U13265 ( .A1(n1041), .A2(n1040), .ZN(n1042) );
  XNOR2_X1 U13266 ( .A(n1043), .B(n1042), .ZN(n1044) );
  XNOR2_X1 U13267 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1044), .ZN(
        \CF_Out[1][18] ) );
  XNOR2_X1 U13268 ( .A(r[99]), .B(r[98]), .ZN(n1047) );
  XOR2_X1 U13269 ( .A(n1539), .B(in2[3]), .Z(n1296) );
  NOR2_X1 U13270 ( .A1(n1296), .A2(n1045), .ZN(n1046) );
  XNOR2_X1 U13271 ( .A(n1047), .B(n1046), .ZN(n1048) );
  XOR2_X1 U13272 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1048), .Z(
        \CF_Out[1][17] ) );
  NAND2_X1 U13273 ( .A1(n1540), .A2(n1473), .ZN(n1049) );
  NAND2_X1 U13274 ( .A1(in1[1]), .A2(n1049), .ZN(n1051) );
  XOR2_X1 U13275 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[82]), .Z(n1050)
         );
  XNOR2_X1 U13276 ( .A(r[81]), .B(n1050), .ZN(n1053) );
  XNOR2_X1 U13277 ( .A(n1051), .B(n1053), .ZN(n1052) );
  NOR2_X1 U13278 ( .A1(n1525), .A2(n1473), .ZN(n1054) );
  INV_X1 U13279 ( .A(n1054), .ZN(n1480) );
  NAND2_X1 U13280 ( .A1(n1052), .A2(n1480), .ZN(n1057) );
  INV_X1 U13281 ( .A(n1053), .ZN(n1055) );
  NAND2_X1 U13282 ( .A1(n1055), .A2(n1054), .ZN(n1056) );
  NAND2_X1 U13283 ( .A1(n1057), .A2(n1056), .ZN(\CF_Out[1][0] ) );
  XNOR2_X1 U13284 ( .A(r[10]), .B(r[9]), .ZN(n1061) );
  XOR2_X1 U13285 ( .A(n1540), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n1059)
         );
  NAND2_X1 U13286 ( .A1(in1[1]), .A2(in2[0]), .ZN(n1371) );
  NOR2_X1 U13287 ( .A1(n1371), .A2(in3[2]), .ZN(n1058) );
  XNOR2_X1 U13288 ( .A(n1059), .B(n1058), .ZN(n1060) );
  XNOR2_X1 U13289 ( .A(n1061), .B(n1060), .ZN(\CF_Out[0][9] ) );
  XNOR2_X1 U13290 ( .A(r[9]), .B(r[8]), .ZN(n1063) );
  NAND2_X1 U13291 ( .A1(in3[1]), .A2(n1433), .ZN(n1062) );
  XNOR2_X1 U13292 ( .A(n1063), .B(n1062), .ZN(n1064) );
  XNOR2_X1 U13293 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1064), .ZN(
        \CF_Out[0][8] ) );
  NOR2_X1 U13294 ( .A1(n1493), .A2(n1416), .ZN(n1066) );
  XNOR2_X1 U13295 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[26]), .ZN(n1065) );
  XNOR2_X1 U13296 ( .A(n1065), .B(r[0]), .ZN(n1073) );
  XNOR2_X1 U13297 ( .A(n1066), .B(n1073), .ZN(n1067) );
  NAND2_X1 U13298 ( .A1(n1416), .A2(n1472), .ZN(n1437) );
  NAND2_X1 U13299 ( .A1(n1067), .A2(n1437), .ZN(n1068) );
  NOR2_X1 U13300 ( .A1(in3[0]), .A2(n1068), .ZN(n1078) );
  NAND2_X1 U13301 ( .A1(in3[2]), .A2(n1073), .ZN(n1072) );
  NOR2_X1 U13302 ( .A1(n1073), .A2(n1069), .ZN(n1070) );
  NOR2_X1 U13303 ( .A1(in3[3]), .A2(n1070), .ZN(n1071) );
  NAND2_X1 U13304 ( .A1(n1072), .A2(n1071), .ZN(n1076) );
  NAND2_X1 U13305 ( .A1(n1074), .A2(n1073), .ZN(n1075) );
  NAND2_X1 U13306 ( .A1(n1076), .A2(n1075), .ZN(n1077) );
  OR2_X1 U13307 ( .A1(n1078), .A2(n1077), .ZN(\CF_Out[0][26] ) );
  XNOR2_X1 U13308 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[19]), .ZN(n1082) );
  NAND2_X1 U13309 ( .A1(n1473), .A2(in3[0]), .ZN(n1079) );
  NAND2_X1 U13310 ( .A1(n1079), .A2(in1[1]), .ZN(n1080) );
  XNOR2_X1 U13311 ( .A(n1080), .B(r[18]), .ZN(n1081) );
  XNOR2_X1 U13312 ( .A(n1082), .B(n1081), .ZN(\CF_Out[0][18] ) );
  XOR2_X1 U13313 ( .A(r[17]), .B(r[18]), .Z(n1084) );
  INV_X1 U13314 ( .A(n1509), .ZN(n1510) );
  NAND2_X1 U13315 ( .A1(n1510), .A2(in3[1]), .ZN(n1083) );
  XNOR2_X1 U13316 ( .A(n1084), .B(n1083), .ZN(n1085) );
  XOR2_X1 U13317 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1085), .Z(
        \CF_Out[0][17] ) );
  NAND2_X1 U13318 ( .A1(in1[3]), .A2(in1[0]), .ZN(n1086) );
  NAND2_X1 U13319 ( .A1(in1[2]), .A2(n1086), .ZN(n1088) );
  XOR2_X1 U13320 ( .A(r[0]), .B(TwoSharesFromNeighbouringSbox[0]), .Z(n1087)
         );
  XNOR2_X1 U13321 ( .A(r[1]), .B(n1087), .ZN(n1091) );
  XNOR2_X1 U13322 ( .A(n1088), .B(n1091), .ZN(n1090) );
  XOR2_X1 U13323 ( .A(n1540), .B(in1[1]), .Z(n1536) );
  NOR2_X1 U13324 ( .A1(in1[0]), .A2(n1536), .ZN(n1092) );
  INV_X1 U13325 ( .A(n1092), .ZN(n1089) );
  NAND2_X1 U13326 ( .A1(n1090), .A2(n1089), .ZN(n1095) );
  INV_X1 U13327 ( .A(n1091), .ZN(n1093) );
  NAND2_X1 U13328 ( .A1(n1093), .A2(n1092), .ZN(n1094) );
  NAND2_X1 U13329 ( .A1(n1095), .A2(n1094), .ZN(\CF_Out[0][0] ) );
  XNOR2_X1 U13330 ( .A(r[49]), .B(r[50]), .ZN(n1098) );
  NAND2_X1 U13331 ( .A1(n1096), .A2(n1509), .ZN(n1103) );
  NOR2_X1 U13332 ( .A1(n1103), .A2(n1519), .ZN(n1097) );
  XNOR2_X1 U13333 ( .A(n1098), .B(n1097), .ZN(n1099) );
  XNOR2_X1 U13334 ( .A(n1099), .B(n1524), .ZN(\CF_Out[2][22] ) );
  XNOR2_X1 U13335 ( .A(r[41]), .B(r[40]), .ZN(n1101) );
  XOR2_X1 U13336 ( .A(n1313), .B(in1[2]), .Z(n1205) );
  NOR2_X1 U13337 ( .A1(n1258), .A2(n1205), .ZN(n1100) );
  XNOR2_X1 U13338 ( .A(n1101), .B(n1100), .ZN(n1102) );
  XNOR2_X1 U13339 ( .A(n1102), .B(n1524), .ZN(\CF_Out[2][13] ) );
  XNOR2_X1 U13340 ( .A(r[31]), .B(r[32]), .ZN(n1105) );
  INV_X1 U13341 ( .A(in1[1]), .ZN(n1484) );
  NOR2_X1 U13342 ( .A1(n1410), .A2(n1484), .ZN(n1339) );
  INV_X1 U13343 ( .A(n1339), .ZN(n1290) );
  NOR2_X1 U13344 ( .A1(n1103), .A2(n1290), .ZN(n1104) );
  XNOR2_X1 U13345 ( .A(n1105), .B(n1104), .ZN(n1106) );
  XNOR2_X1 U13346 ( .A(n1106), .B(n1524), .ZN(\CF_Out[2][4] ) );
  XOR2_X1 U13347 ( .A(r[95]), .B(r[94]), .Z(n1108) );
  XOR2_X1 U13348 ( .A(n1540), .B(n1313), .Z(n1150) );
  NOR2_X1 U13349 ( .A1(n1511), .A2(n1473), .ZN(n1344) );
  NAND2_X1 U13350 ( .A1(n1150), .A2(n1344), .ZN(n1107) );
  XNOR2_X1 U13351 ( .A(n1108), .B(n1107), .ZN(n1109) );
  XNOR2_X1 U13352 ( .A(n1109), .B(n1524), .ZN(\CF_Out[1][13] ) );
  XNOR2_X1 U13353 ( .A(r[86]), .B(r[85]), .ZN(n1111) );
  NOR2_X1 U13354 ( .A1(in2[3]), .A2(n1313), .ZN(n1454) );
  NOR2_X1 U13355 ( .A1(in2[0]), .A2(n1410), .ZN(n1217) );
  NOR2_X1 U13356 ( .A1(n1454), .A2(n1217), .ZN(n1139) );
  NOR2_X1 U13357 ( .A1(n1447), .A2(n1139), .ZN(n1110) );
  XNOR2_X1 U13358 ( .A(n1111), .B(n1110), .ZN(n1112) );
  XNOR2_X1 U13359 ( .A(n1112), .B(n1524), .ZN(\CF_Out[1][4] ) );
  NOR2_X1 U13360 ( .A1(n1511), .A2(in3[0]), .ZN(n1113) );
  XOR2_X1 U13361 ( .A(n1113), .B(n1540), .Z(n1114) );
  XOR2_X1 U13362 ( .A(n1416), .B(in3[0]), .Z(n1197) );
  NOR2_X1 U13363 ( .A1(n1114), .A2(n1197), .ZN(n1115) );
  XNOR2_X1 U13364 ( .A(r[22]), .B(n1115), .ZN(n1117) );
  XNOR2_X1 U13365 ( .A(n1524), .B(r[23]), .ZN(n1116) );
  XNOR2_X1 U13366 ( .A(n1117), .B(n1116), .ZN(\CF_Out[0][22] ) );
  NAND2_X1 U13367 ( .A1(in2[0]), .A2(n1344), .ZN(n1467) );
  XOR2_X1 U13368 ( .A(r[14]), .B(r[13]), .Z(n1118) );
  XNOR2_X1 U13369 ( .A(n1467), .B(n1118), .ZN(n1119) );
  XNOR2_X1 U13370 ( .A(n1119), .B(n1524), .ZN(\CF_Out[0][13] ) );
  XOR2_X1 U13371 ( .A(r[5]), .B(r[4]), .Z(n1121) );
  INV_X1 U13372 ( .A(n1434), .ZN(n1172) );
  NAND2_X1 U13373 ( .A1(n1172), .A2(in3[2]), .ZN(n1120) );
  XNOR2_X1 U13374 ( .A(n1121), .B(n1120), .ZN(n1122) );
  XNOR2_X1 U13375 ( .A(n1122), .B(n1524), .ZN(\CF_Out[0][4] ) );
  XOR2_X1 U13376 ( .A(r[76]), .B(r[77]), .Z(n1126) );
  NOR2_X1 U13377 ( .A1(in3[1]), .A2(in2[2]), .ZN(n1129) );
  NAND2_X1 U13378 ( .A1(in3[1]), .A2(in2[2]), .ZN(n1384) );
  INV_X1 U13379 ( .A(n1384), .ZN(n1526) );
  NOR2_X1 U13380 ( .A1(in1[3]), .A2(n1526), .ZN(n1123) );
  NOR2_X1 U13381 ( .A1(n1129), .A2(n1123), .ZN(n1124) );
  NAND2_X1 U13382 ( .A1(n1124), .A2(in3[0]), .ZN(n1125) );
  XNOR2_X1 U13383 ( .A(n1126), .B(n1125), .ZN(n1127) );
  XNOR2_X1 U13384 ( .A(n1127), .B(n1524), .ZN(CF_Out_MSB[40]) );
  XNOR2_X1 U13385 ( .A(n1524), .B(r[59]), .ZN(n1132) );
  NOR2_X1 U13386 ( .A1(in2[3]), .A2(n1526), .ZN(n1128) );
  NOR2_X1 U13387 ( .A1(n1129), .A2(n1128), .ZN(n1130) );
  NAND2_X1 U13388 ( .A1(n1130), .A2(in1[0]), .ZN(n1131) );
  XNOR2_X1 U13389 ( .A(n1132), .B(n1131), .ZN(n1133) );
  XOR2_X1 U13390 ( .A(r[58]), .B(n1133), .Z(CF_Out_MSB[10]) );
  XNOR2_X1 U13391 ( .A(r[40]), .B(r[39]), .ZN(n1137) );
  NAND2_X1 U13392 ( .A1(in2[0]), .A2(n1472), .ZN(n1134) );
  NAND2_X1 U13393 ( .A1(in3[3]), .A2(in3[2]), .ZN(n1144) );
  NAND2_X1 U13394 ( .A1(n1134), .A2(n1144), .ZN(n1135) );
  NAND2_X1 U13395 ( .A1(n1135), .A2(in2[1]), .ZN(n1136) );
  XNOR2_X1 U13396 ( .A(n1137), .B(n1136), .ZN(n1138) );
  XNOR2_X1 U13397 ( .A(n1554), .B(n1138), .ZN(\CF_Out[2][12] ) );
  XNOR2_X1 U13398 ( .A(n1554), .B(r[103]), .ZN(n1143) );
  NOR2_X1 U13399 ( .A1(n1493), .A2(n1139), .ZN(n1140) );
  NAND2_X1 U13400 ( .A1(in1[2]), .A2(n1140), .ZN(n1141) );
  XNOR2_X1 U13401 ( .A(r[102]), .B(n1141), .ZN(n1142) );
  XNOR2_X1 U13402 ( .A(n1143), .B(n1142), .ZN(\CF_Out[1][21] ) );
  NAND2_X1 U13403 ( .A1(n1144), .A2(n1509), .ZN(n1146) );
  NOR2_X1 U13404 ( .A1(n1472), .A2(n1313), .ZN(n1465) );
  NOR2_X1 U13405 ( .A1(n1465), .A2(n1511), .ZN(n1145) );
  NAND2_X1 U13406 ( .A1(n1146), .A2(n1145), .ZN(n1149) );
  XNOR2_X1 U13407 ( .A(n1554), .B(r[94]), .ZN(n1147) );
  XNOR2_X1 U13408 ( .A(n1147), .B(r[93]), .ZN(n1148) );
  XNOR2_X1 U13409 ( .A(n1149), .B(n1148), .ZN(\CF_Out[1][12] ) );
  XOR2_X1 U13410 ( .A(r[85]), .B(r[84]), .Z(n1152) );
  NOR2_X1 U13411 ( .A1(n1527), .A2(n1484), .ZN(n1547) );
  NAND2_X1 U13412 ( .A1(n1150), .A2(n1547), .ZN(n1151) );
  XNOR2_X1 U13413 ( .A(n1152), .B(n1151), .ZN(n1153) );
  XOR2_X1 U13414 ( .A(n1554), .B(n1153), .Z(\CF_Out[1][3] ) );
  XOR2_X1 U13415 ( .A(r[22]), .B(r[21]), .Z(n1155) );
  NAND2_X1 U13416 ( .A1(in2[1]), .A2(in3[0]), .ZN(n1397) );
  INV_X1 U13417 ( .A(n1397), .ZN(n1411) );
  NAND2_X1 U13418 ( .A1(n1411), .A2(n1473), .ZN(n1154) );
  XNOR2_X1 U13419 ( .A(n1155), .B(n1154), .ZN(n1156) );
  XOR2_X1 U13420 ( .A(n1554), .B(n1156), .Z(\CF_Out[0][21] ) );
  XNOR2_X1 U13421 ( .A(n1554), .B(r[12]), .ZN(n1160) );
  NOR2_X1 U13422 ( .A1(n1511), .A2(in3[2]), .ZN(n1157) );
  NAND2_X1 U13423 ( .A1(in2[0]), .A2(n1157), .ZN(n1158) );
  XNOR2_X1 U13424 ( .A(r[13]), .B(n1158), .ZN(n1159) );
  XNOR2_X1 U13425 ( .A(n1160), .B(n1159), .ZN(\CF_Out[0][12] ) );
  NOR2_X1 U13426 ( .A1(in2[2]), .A2(n1434), .ZN(n1161) );
  XOR2_X1 U13427 ( .A(n1161), .B(r[4]), .Z(n1162) );
  XNOR2_X1 U13428 ( .A(r[3]), .B(n1162), .ZN(n1163) );
  XNOR2_X1 U13429 ( .A(n1554), .B(n1163), .ZN(\CF_Out[0][3] ) );
  XOR2_X1 U13430 ( .A(r[76]), .B(r[75]), .Z(n1167) );
  NOR2_X1 U13431 ( .A1(in2[2]), .A2(in1[1]), .ZN(n1235) );
  NOR2_X1 U13432 ( .A1(in2[3]), .A2(n1547), .ZN(n1164) );
  NOR2_X1 U13433 ( .A1(n1235), .A2(n1164), .ZN(n1165) );
  NAND2_X1 U13434 ( .A1(n1165), .A2(in3[0]), .ZN(n1166) );
  XNOR2_X1 U13435 ( .A(n1167), .B(n1166), .ZN(n1168) );
  XOR2_X1 U13436 ( .A(n1554), .B(n1168), .Z(CF_Out_MSB[39]) );
  XNOR2_X1 U13437 ( .A(r[57]), .B(r[58]), .ZN(n1178) );
  NOR2_X1 U13438 ( .A1(in2[1]), .A2(n1525), .ZN(n1169) );
  NOR2_X1 U13439 ( .A1(n1540), .A2(n1169), .ZN(n1170) );
  NAND2_X1 U13440 ( .A1(n1170), .A2(in2[2]), .ZN(n1174) );
  NAND2_X1 U13441 ( .A1(n1527), .A2(n1540), .ZN(n1171) );
  NAND2_X1 U13442 ( .A1(n1174), .A2(n1171), .ZN(n1173) );
  NAND2_X1 U13443 ( .A1(n1173), .A2(n1172), .ZN(n1176) );
  NAND2_X1 U13444 ( .A1(n1174), .A2(n1434), .ZN(n1175) );
  NAND2_X1 U13445 ( .A1(n1176), .A2(n1175), .ZN(n1177) );
  XNOR2_X1 U13446 ( .A(n1178), .B(n1177), .ZN(n1179) );
  XNOR2_X1 U13447 ( .A(n1554), .B(n1179), .ZN(CF_Out_MSB[9]) );
  XOR2_X1 U13448 ( .A(in3[2]), .B(in1[0]), .Z(n1187) );
  NAND2_X1 U13449 ( .A1(in2[3]), .A2(in3[1]), .ZN(n1180) );
  NOR2_X1 U13450 ( .A1(n1187), .A2(n1180), .ZN(n1181) );
  XOR2_X1 U13451 ( .A(n1181), .B(r[47]), .Z(n1183) );
  XNOR2_X1 U13452 ( .A(n1500), .B(r[48]), .ZN(n1182) );
  XNOR2_X1 U13453 ( .A(n1183), .B(n1182), .ZN(\CF_Out[2][20] ) );
  XOR2_X1 U13454 ( .A(r[38]), .B(r[39]), .Z(n1185) );
  XOR2_X1 U13455 ( .A(n1527), .B(in1[0]), .Z(n1340) );
  NOR2_X1 U13456 ( .A1(n1472), .A2(n1511), .ZN(n1427) );
  NAND2_X1 U13457 ( .A1(n1340), .A2(n1427), .ZN(n1184) );
  XNOR2_X1 U13458 ( .A(n1185), .B(n1184), .ZN(n1186) );
  XOR2_X1 U13459 ( .A(n1500), .B(n1186), .Z(\CF_Out[2][11] ) );
  NAND2_X1 U13460 ( .A1(in3[3]), .A2(in1[1]), .ZN(n1485) );
  NOR2_X1 U13461 ( .A1(n1485), .A2(n1187), .ZN(n1188) );
  XNOR2_X1 U13462 ( .A(n1188), .B(n1500), .ZN(n1190) );
  XOR2_X1 U13463 ( .A(r[30]), .B(r[29]), .Z(n1189) );
  XNOR2_X1 U13464 ( .A(n1190), .B(n1189), .ZN(\CF_Out[2][2] ) );
  NOR2_X1 U13465 ( .A1(in3[1]), .A2(n1433), .ZN(n1192) );
  NOR2_X1 U13466 ( .A1(in3[2]), .A2(in2[3]), .ZN(n1191) );
  NOR2_X1 U13467 ( .A1(n1192), .A2(n1191), .ZN(n1193) );
  XOR2_X1 U13468 ( .A(n1193), .B(r[101]), .Z(n1195) );
  XNOR2_X1 U13469 ( .A(n1500), .B(r[102]), .ZN(n1194) );
  XNOR2_X1 U13470 ( .A(n1195), .B(n1194), .ZN(\CF_Out[1][20] ) );
  NAND2_X1 U13471 ( .A1(n1539), .A2(in1[1]), .ZN(n1196) );
  XOR2_X1 U13472 ( .A(n1196), .B(in2[3]), .Z(n1198) );
  NOR2_X1 U13473 ( .A1(n1198), .A2(n1197), .ZN(n1199) );
  XOR2_X1 U13474 ( .A(r[21]), .B(n1199), .Z(n1201) );
  XNOR2_X1 U13475 ( .A(n1500), .B(r[20]), .ZN(n1200) );
  XNOR2_X1 U13476 ( .A(n1201), .B(n1200), .ZN(\CF_Out[0][20] ) );
  XOR2_X1 U13477 ( .A(r[2]), .B(r[3]), .Z(n1203) );
  NAND2_X1 U13478 ( .A1(n1329), .A2(in1[0]), .ZN(n1202) );
  XNOR2_X1 U13479 ( .A(n1203), .B(n1202), .ZN(n1204) );
  XOR2_X1 U13480 ( .A(n1500), .B(n1204), .Z(\CF_Out[0][2] ) );
  XNOR2_X1 U13481 ( .A(r[32]), .B(r[33]), .ZN(n1207) );
  NOR2_X1 U13482 ( .A1(n1485), .A2(n1205), .ZN(n1206) );
  XNOR2_X1 U13483 ( .A(n1207), .B(n1206), .ZN(n1208) );
  XOR2_X1 U13484 ( .A(n1483), .B(n1208), .Z(\CF_Out[2][5] ) );
  NAND2_X1 U13485 ( .A1(n1313), .A2(n1472), .ZN(n1210) );
  NOR2_X1 U13486 ( .A1(n1465), .A2(n1384), .ZN(n1209) );
  NAND2_X1 U13487 ( .A1(n1210), .A2(n1209), .ZN(n1213) );
  XNOR2_X1 U13488 ( .A(n1483), .B(r[104]), .ZN(n1211) );
  XNOR2_X1 U13489 ( .A(n1211), .B(r[105]), .ZN(n1212) );
  XNOR2_X1 U13490 ( .A(n1213), .B(n1212), .ZN(\CF_Out[1][23] ) );
  XOR2_X1 U13491 ( .A(n1483), .B(r[24]), .Z(n1215) );
  NAND2_X1 U13492 ( .A1(n1411), .A2(in2[2]), .ZN(n1214) );
  XNOR2_X1 U13493 ( .A(n1215), .B(n1214), .ZN(n1216) );
  XOR2_X1 U13494 ( .A(r[23]), .B(n1216), .Z(\CF_Out[0][23] ) );
  XNOR2_X1 U13495 ( .A(n1483), .B(r[15]), .ZN(n1222) );
  XOR2_X1 U13496 ( .A(n1527), .B(n1313), .Z(n1272) );
  NOR2_X1 U13497 ( .A1(in2[1]), .A2(n1410), .ZN(n1461) );
  NOR2_X1 U13498 ( .A1(n1217), .A2(n1511), .ZN(n1218) );
  NOR2_X1 U13499 ( .A1(n1461), .A2(n1218), .ZN(n1230) );
  NOR2_X1 U13500 ( .A1(n1454), .A2(n1230), .ZN(n1219) );
  NAND2_X1 U13501 ( .A1(n1272), .A2(n1219), .ZN(n1220) );
  XNOR2_X1 U13502 ( .A(r[14]), .B(n1220), .ZN(n1221) );
  XNOR2_X1 U13503 ( .A(n1222), .B(n1221), .ZN(\CF_Out[0][14] ) );
  XOR2_X1 U13504 ( .A(n1483), .B(r[5]), .Z(n1227) );
  NOR2_X1 U13505 ( .A1(in1[0]), .A2(n1511), .ZN(n1223) );
  XOR2_X1 U13506 ( .A(n1472), .B(n1223), .Z(n1224) );
  NOR2_X1 U13507 ( .A1(n1224), .A2(n1320), .ZN(n1225) );
  NAND2_X1 U13508 ( .A1(n1225), .A2(n1480), .ZN(n1226) );
  XNOR2_X1 U13509 ( .A(n1227), .B(n1226), .ZN(n1228) );
  XOR2_X1 U13510 ( .A(r[6]), .B(n1228), .Z(\CF_Out[0][5] ) );
  NOR2_X1 U13511 ( .A1(in2[0]), .A2(n1527), .ZN(n1229) );
  NOR2_X1 U13512 ( .A1(n1230), .A2(n1229), .ZN(n1231) );
  XOR2_X1 U13513 ( .A(n1231), .B(r[69]), .Z(n1233) );
  XNOR2_X1 U13514 ( .A(r[68]), .B(n1483), .ZN(n1232) );
  XNOR2_X1 U13515 ( .A(n1233), .B(n1232), .ZN(CF_Out_MSB[20]) );
  XOR2_X1 U13516 ( .A(r[60]), .B(r[59]), .Z(n1238) );
  NOR2_X1 U13517 ( .A1(in3[3]), .A2(n1547), .ZN(n1234) );
  NOR2_X1 U13518 ( .A1(n1235), .A2(n1234), .ZN(n1236) );
  NAND2_X1 U13519 ( .A1(n1236), .A2(in1[0]), .ZN(n1237) );
  XNOR2_X1 U13520 ( .A(n1238), .B(n1237), .ZN(n1239) );
  XOR2_X1 U13521 ( .A(n1483), .B(n1239), .Z(CF_Out_MSB[11]) );
  XNOR2_X1 U13522 ( .A(r[53]), .B(r[52]), .ZN(n1240) );
  XNOR2_X1 U13523 ( .A(n1240), .B(n1545), .ZN(n1244) );
  NAND2_X1 U13524 ( .A1(n1528), .A2(n1490), .ZN(n1241) );
  NOR2_X1 U13525 ( .A1(n1242), .A2(n1241), .ZN(n1243) );
  XNOR2_X1 U13526 ( .A(n1244), .B(n1243), .ZN(\CF_Out[2][25] ) );
  XNOR2_X1 U13527 ( .A(r[44]), .B(r[43]), .ZN(n1246) );
  XOR2_X1 U13528 ( .A(n1539), .B(in2[2]), .Z(n1248) );
  NOR2_X1 U13529 ( .A1(n1258), .A2(n1248), .ZN(n1245) );
  XNOR2_X1 U13530 ( .A(n1246), .B(n1245), .ZN(n1247) );
  XNOR2_X1 U13531 ( .A(n1247), .B(n1545), .ZN(\CF_Out[2][16] ) );
  XNOR2_X1 U13532 ( .A(r[35]), .B(r[34]), .ZN(n1250) );
  NOR2_X1 U13533 ( .A1(n1485), .A2(n1248), .ZN(n1249) );
  XNOR2_X1 U13534 ( .A(n1250), .B(n1249), .ZN(n1251) );
  XNOR2_X1 U13535 ( .A(n1251), .B(n1545), .ZN(\CF_Out[2][7] ) );
  XNOR2_X1 U13536 ( .A(r[107]), .B(r[106]), .ZN(n1256) );
  INV_X1 U13537 ( .A(n1252), .ZN(n1254) );
  NAND2_X1 U13538 ( .A1(in1[2]), .A2(in3[1]), .ZN(n1253) );
  NOR2_X1 U13539 ( .A1(n1254), .A2(n1253), .ZN(n1255) );
  XNOR2_X1 U13540 ( .A(n1256), .B(n1255), .ZN(n1257) );
  XNOR2_X1 U13541 ( .A(n1545), .B(n1257), .ZN(\CF_Out[1][25] ) );
  NAND2_X1 U13542 ( .A1(n1259), .A2(n1258), .ZN(n1260) );
  NAND2_X1 U13543 ( .A1(n1260), .A2(in2[2]), .ZN(n1261) );
  XNOR2_X1 U13544 ( .A(n1261), .B(r[97]), .ZN(n1262) );
  XOR2_X1 U13545 ( .A(r[98]), .B(n1262), .Z(n1263) );
  XNOR2_X1 U13546 ( .A(n1545), .B(n1263), .ZN(\CF_Out[1][16] ) );
  XOR2_X1 U13547 ( .A(r[89]), .B(r[88]), .Z(n1265) );
  NAND2_X1 U13548 ( .A1(n1300), .A2(n1547), .ZN(n1264) );
  XNOR2_X1 U13549 ( .A(n1265), .B(n1264), .ZN(n1266) );
  XNOR2_X1 U13550 ( .A(n1266), .B(n1545), .ZN(\CF_Out[1][7] ) );
  NOR2_X1 U13551 ( .A1(n1539), .A2(n1493), .ZN(n1309) );
  NOR2_X1 U13552 ( .A1(n1473), .A2(n1309), .ZN(n1268) );
  XOR2_X1 U13553 ( .A(n1545), .B(r[25]), .Z(n1267) );
  XNOR2_X1 U13554 ( .A(n1268), .B(n1267), .ZN(n1269) );
  XOR2_X1 U13555 ( .A(r[26]), .B(n1269), .Z(\CF_Out[0][25] ) );
  XNOR2_X1 U13556 ( .A(r[16]), .B(r[17]), .ZN(n1275) );
  NOR2_X1 U13557 ( .A1(in2[0]), .A2(n1493), .ZN(n1270) );
  XOR2_X1 U13558 ( .A(in1[3]), .B(n1270), .Z(n1271) );
  NAND2_X1 U13559 ( .A1(n1272), .A2(n1271), .ZN(n1273) );
  XOR2_X1 U13560 ( .A(n1545), .B(n1273), .Z(n1274) );
  XNOR2_X1 U13561 ( .A(n1275), .B(n1274), .ZN(\CF_Out[0][16] ) );
  XOR2_X1 U13562 ( .A(r[7]), .B(r[8]), .Z(n1277) );
  NAND2_X1 U13563 ( .A1(n1526), .A2(in1[0]), .ZN(n1276) );
  XNOR2_X1 U13564 ( .A(n1277), .B(n1276), .ZN(n1278) );
  XNOR2_X1 U13565 ( .A(n1278), .B(n1545), .ZN(\CF_Out[0][7] ) );
  NAND2_X1 U13566 ( .A1(n1526), .A2(in2[3]), .ZN(n1280) );
  NAND2_X1 U13567 ( .A1(n1309), .A2(n1410), .ZN(n1279) );
  NAND2_X1 U13568 ( .A1(n1280), .A2(n1279), .ZN(n1281) );
  XNOR2_X1 U13569 ( .A(n1281), .B(n1413), .ZN(n1283) );
  XOR2_X1 U13570 ( .A(r[52]), .B(r[51]), .Z(n1282) );
  XNOR2_X1 U13571 ( .A(n1283), .B(n1282), .ZN(\CF_Out[2][24] ) );
  XOR2_X1 U13572 ( .A(r[42]), .B(r[43]), .Z(n1288) );
  NOR2_X1 U13573 ( .A1(in1[2]), .A2(n1472), .ZN(n1284) );
  NOR2_X1 U13574 ( .A1(n1285), .A2(n1284), .ZN(n1286) );
  NAND2_X1 U13575 ( .A1(n1286), .A2(in2[1]), .ZN(n1287) );
  XNOR2_X1 U13576 ( .A(n1288), .B(n1287), .ZN(n1289) );
  XOR2_X1 U13577 ( .A(n1413), .B(n1289), .Z(\CF_Out[2][15] ) );
  XNOR2_X1 U13578 ( .A(r[33]), .B(r[34]), .ZN(n1294) );
  NAND2_X1 U13579 ( .A1(in3[0]), .A2(in1[1]), .ZN(n1352) );
  NOR2_X1 U13580 ( .A1(n1352), .A2(in2[3]), .ZN(n1292) );
  NOR2_X1 U13581 ( .A1(n1290), .A2(n1473), .ZN(n1291) );
  NOR2_X1 U13582 ( .A1(n1292), .A2(n1291), .ZN(n1293) );
  XNOR2_X1 U13583 ( .A(n1294), .B(n1293), .ZN(n1295) );
  XNOR2_X1 U13584 ( .A(n1413), .B(n1295), .ZN(\CF_Out[2][6] ) );
  XNOR2_X1 U13585 ( .A(r[105]), .B(r[106]), .ZN(n1298) );
  NOR2_X1 U13586 ( .A1(n1296), .A2(n1384), .ZN(n1297) );
  XNOR2_X1 U13587 ( .A(n1298), .B(n1297), .ZN(n1299) );
  XOR2_X1 U13588 ( .A(n1413), .B(n1299), .Z(\CF_Out[1][24] ) );
  XOR2_X1 U13589 ( .A(r[97]), .B(r[96]), .Z(n1302) );
  NAND2_X1 U13590 ( .A1(n1344), .A2(n1300), .ZN(n1301) );
  XNOR2_X1 U13591 ( .A(n1302), .B(n1301), .ZN(n1303) );
  XOR2_X1 U13592 ( .A(n1413), .B(n1303), .Z(\CF_Out[1][15] ) );
  NOR2_X1 U13593 ( .A1(n1339), .A2(n1304), .ZN(n1305) );
  NOR2_X1 U13594 ( .A1(n1473), .A2(n1305), .ZN(n1306) );
  XOR2_X1 U13595 ( .A(n1306), .B(r[87]), .Z(n1308) );
  XNOR2_X1 U13596 ( .A(n1413), .B(r[88]), .ZN(n1307) );
  XNOR2_X1 U13597 ( .A(n1308), .B(n1307), .ZN(\CF_Out[1][6] ) );
  XOR2_X1 U13598 ( .A(r[24]), .B(r[25]), .Z(n1311) );
  NAND2_X1 U13599 ( .A1(n1309), .A2(n1527), .ZN(n1310) );
  XNOR2_X1 U13600 ( .A(n1311), .B(n1310), .ZN(n1312) );
  XOR2_X1 U13601 ( .A(n1413), .B(n1312), .Z(\CF_Out[0][24] ) );
  XOR2_X1 U13602 ( .A(r[16]), .B(r[15]), .Z(n1316) );
  NOR2_X1 U13603 ( .A1(in1[2]), .A2(n1313), .ZN(n1314) );
  NAND2_X1 U13604 ( .A1(n1314), .A2(in3[1]), .ZN(n1315) );
  XNOR2_X1 U13605 ( .A(n1316), .B(n1315), .ZN(n1317) );
  XOR2_X1 U13606 ( .A(n1413), .B(n1317), .Z(\CF_Out[0][15] ) );
  NAND2_X1 U13607 ( .A1(in2[3]), .A2(n1480), .ZN(n1318) );
  XNOR2_X1 U13608 ( .A(n1493), .B(n1318), .ZN(n1319) );
  NOR2_X1 U13609 ( .A1(n1320), .A2(n1319), .ZN(n1321) );
  XOR2_X1 U13610 ( .A(n1321), .B(r[7]), .Z(n1322) );
  XNOR2_X1 U13611 ( .A(r[6]), .B(n1322), .ZN(n1323) );
  XNOR2_X1 U13612 ( .A(n1413), .B(n1323), .ZN(\CF_Out[0][6] ) );
  XOR2_X1 U13613 ( .A(r[70]), .B(r[69]), .Z(n1327) );
  NOR2_X1 U13614 ( .A1(in3[2]), .A2(in1[1]), .ZN(n1331) );
  NOR2_X1 U13615 ( .A1(in3[3]), .A2(n1329), .ZN(n1324) );
  NOR2_X1 U13616 ( .A1(n1331), .A2(n1324), .ZN(n1325) );
  NAND2_X1 U13617 ( .A1(n1325), .A2(in2[0]), .ZN(n1326) );
  XNOR2_X1 U13618 ( .A(n1327), .B(n1326), .ZN(n1328) );
  XOR2_X1 U13619 ( .A(n1413), .B(n1328), .Z(CF_Out_MSB[27]) );
  XOR2_X1 U13620 ( .A(r[61]), .B(r[60]), .Z(n1334) );
  NOR2_X1 U13621 ( .A1(in2[3]), .A2(n1329), .ZN(n1330) );
  NOR2_X1 U13622 ( .A1(n1331), .A2(n1330), .ZN(n1332) );
  NAND2_X1 U13623 ( .A1(n1332), .A2(in1[0]), .ZN(n1333) );
  XNOR2_X1 U13624 ( .A(n1334), .B(n1333), .ZN(n1335) );
  XOR2_X1 U13625 ( .A(n1413), .B(n1335), .Z(CF_Out_MSB[12]) );
  XOR2_X1 U13626 ( .A(r[46]), .B(r[47]), .Z(n1337) );
  NAND2_X1 U13627 ( .A1(n1340), .A2(n1528), .ZN(n1336) );
  XNOR2_X1 U13628 ( .A(n1337), .B(n1336), .ZN(n1338) );
  XNOR2_X1 U13629 ( .A(n1338), .B(n1534), .ZN(\CF_Out[2][19] ) );
  XOR2_X1 U13630 ( .A(r[28]), .B(r[29]), .Z(n1342) );
  NAND2_X1 U13631 ( .A1(n1340), .A2(n1339), .ZN(n1341) );
  XNOR2_X1 U13632 ( .A(n1342), .B(n1341), .ZN(n1343) );
  XNOR2_X1 U13633 ( .A(n1343), .B(n1534), .ZN(\CF_Out[2][1] ) );
  NAND2_X1 U13634 ( .A1(in2[1]), .A2(in2[3]), .ZN(n1405) );
  NAND2_X1 U13635 ( .A1(n1405), .A2(n1473), .ZN(n1346) );
  NAND2_X1 U13636 ( .A1(n1344), .A2(n1525), .ZN(n1345) );
  NAND2_X1 U13637 ( .A1(n1346), .A2(n1345), .ZN(n1348) );
  XOR2_X1 U13638 ( .A(r[91]), .B(r[92]), .Z(n1347) );
  XNOR2_X1 U13639 ( .A(n1348), .B(n1347), .ZN(n1349) );
  XNOR2_X1 U13640 ( .A(n1349), .B(n1534), .ZN(\CF_Out[1][10] ) );
  XOR2_X1 U13641 ( .A(r[20]), .B(in1[3]), .Z(n1350) );
  XNOR2_X1 U13642 ( .A(n1350), .B(n1534), .ZN(n1351) );
  XOR2_X1 U13643 ( .A(r[19]), .B(n1351), .Z(n1354) );
  NAND2_X1 U13644 ( .A1(in2[2]), .A2(n1352), .ZN(n1353) );
  XNOR2_X1 U13645 ( .A(n1354), .B(n1353), .ZN(\CF_Out[0][19] ) );
  XOR2_X1 U13646 ( .A(r[11]), .B(r[10]), .Z(n1356) );
  NAND2_X1 U13647 ( .A1(in1[2]), .A2(n1371), .ZN(n1355) );
  XNOR2_X1 U13648 ( .A(n1356), .B(n1355), .ZN(n1357) );
  XNOR2_X1 U13649 ( .A(n1357), .B(n1534), .ZN(\CF_Out[0][10] ) );
  XOR2_X1 U13650 ( .A(r[2]), .B(r[1]), .Z(n1360) );
  XOR2_X1 U13651 ( .A(n1410), .B(n1358), .Z(n1359) );
  XNOR2_X1 U13652 ( .A(n1360), .B(n1359), .ZN(\CF_Out[0][1] ) );
  XNOR2_X1 U13653 ( .A(r[74]), .B(r[73]), .ZN(n1362) );
  NOR2_X1 U13654 ( .A1(n1540), .A2(n1411), .ZN(n1361) );
  XNOR2_X1 U13655 ( .A(n1362), .B(n1361), .ZN(n1365) );
  XNOR2_X1 U13656 ( .A(in2[1]), .B(in1[3]), .ZN(n1363) );
  NOR2_X1 U13657 ( .A1(n1490), .A2(n1363), .ZN(n1364) );
  XOR2_X1 U13658 ( .A(n1365), .B(n1364), .Z(n1366) );
  XNOR2_X1 U13659 ( .A(n1366), .B(n1534), .ZN(CF_Out_MSB[43]) );
  XOR2_X1 U13660 ( .A(r[65]), .B(r[64]), .Z(n1370) );
  NAND2_X1 U13661 ( .A1(in2[0]), .A2(in1[2]), .ZN(n1367) );
  XOR2_X1 U13662 ( .A(n1371), .B(n1367), .Z(n1368) );
  NAND2_X1 U13663 ( .A1(n1368), .A2(in2[3]), .ZN(n1369) );
  XNOR2_X1 U13664 ( .A(n1370), .B(n1369), .ZN(n1375) );
  XOR2_X1 U13665 ( .A(n1371), .B(n1410), .Z(n1372) );
  NAND2_X1 U13666 ( .A1(n1372), .A2(in1[2]), .ZN(n1373) );
  XNOR2_X1 U13667 ( .A(n1373), .B(n1534), .ZN(n1374) );
  XNOR2_X1 U13668 ( .A(n1375), .B(n1374), .ZN(CF_Out_MSB[25]) );
  NAND2_X1 U13669 ( .A1(in1[0]), .A2(in2[3]), .ZN(n1377) );
  XNOR2_X1 U13670 ( .A(n1473), .B(n1377), .ZN(n1376) );
  NOR2_X1 U13671 ( .A1(n1511), .A2(n1376), .ZN(n1380) );
  XOR2_X1 U13672 ( .A(n1434), .B(n1377), .Z(n1378) );
  NAND2_X1 U13673 ( .A1(n1378), .A2(in1[2]), .ZN(n1379) );
  XNOR2_X1 U13674 ( .A(n1380), .B(n1379), .ZN(n1383) );
  XNOR2_X1 U13675 ( .A(r[56]), .B(r[55]), .ZN(n1381) );
  XNOR2_X1 U13676 ( .A(n1381), .B(n1534), .ZN(n1382) );
  XNOR2_X1 U13677 ( .A(n1383), .B(n1382), .ZN(CF_Out_MSB[1]) );
  XNOR2_X1 U13678 ( .A(n1483), .B(r[50]), .ZN(n1388) );
  NAND2_X1 U13679 ( .A1(n1518), .A2(n1384), .ZN(n1385) );
  NAND2_X1 U13680 ( .A1(n1385), .A2(in3[3]), .ZN(n1386) );
  XNOR2_X1 U13681 ( .A(n1386), .B(r[51]), .ZN(n1387) );
  XNOR2_X1 U13682 ( .A(n1388), .B(n1387), .ZN(n26731) );
  XNOR2_X1 U13683 ( .A(n1465), .B(in2[2]), .ZN(n1389) );
  NOR2_X1 U13684 ( .A1(n1493), .A2(n1389), .ZN(n1395) );
  XNOR2_X1 U13685 ( .A(r[67]), .B(r[66]), .ZN(n1393) );
  NAND2_X1 U13686 ( .A1(in2[2]), .A2(in2[0]), .ZN(n1501) );
  NAND2_X1 U13687 ( .A1(n1391), .A2(n1390), .ZN(n1479) );
  NOR2_X1 U13688 ( .A1(n1501), .A2(n1479), .ZN(n1392) );
  XNOR2_X1 U13689 ( .A(n1393), .B(n1392), .ZN(n1394) );
  XNOR2_X1 U13690 ( .A(n1395), .B(n1394), .ZN(n1396) );
  XNOR2_X1 U13691 ( .A(n1554), .B(n1396), .ZN(n26730) );
  XNOR2_X1 U13692 ( .A(n1483), .B(r[77]), .ZN(n1403) );
  XOR2_X1 U13693 ( .A(n1472), .B(in2[2]), .Z(n1398) );
  NOR2_X1 U13694 ( .A1(n1398), .A2(n1397), .ZN(n1401) );
  NAND2_X1 U13695 ( .A1(in2[2]), .A2(n1539), .ZN(n1399) );
  NOR2_X1 U13696 ( .A1(n1472), .A2(n1399), .ZN(n1400) );
  NOR2_X1 U13697 ( .A1(n1401), .A2(n1400), .ZN(n1402) );
  XNOR2_X1 U13698 ( .A(n1403), .B(n1402), .ZN(n1404) );
  XNOR2_X1 U13699 ( .A(r[78]), .B(n1404), .ZN(n26729) );
  XNOR2_X1 U13700 ( .A(r[95]), .B(r[96]), .ZN(n1408) );
  NOR2_X1 U13701 ( .A1(n1527), .A2(n1405), .ZN(n1422) );
  NOR2_X1 U13702 ( .A1(in2[1]), .A2(n1501), .ZN(n1406) );
  NOR2_X1 U13703 ( .A1(n1422), .A2(n1406), .ZN(n1407) );
  XNOR2_X1 U13704 ( .A(n1408), .B(n1407), .ZN(n1409) );
  XNOR2_X1 U13705 ( .A(n1483), .B(n1409), .ZN(n26728) );
  NOR2_X1 U13706 ( .A1(n1539), .A2(n1410), .ZN(n1492) );
  XOR2_X1 U13707 ( .A(n1492), .B(n1411), .Z(n1412) );
  NAND2_X1 U13708 ( .A1(n1412), .A2(in3[2]), .ZN(n1414) );
  XNOR2_X1 U13709 ( .A(n1414), .B(n1413), .ZN(n1415) );
  XOR2_X1 U13710 ( .A(n1415), .B(r[78]), .Z(n1420) );
  INV_X1 U13711 ( .A(n1492), .ZN(n1491) );
  XNOR2_X1 U13712 ( .A(n1416), .B(n1491), .ZN(n1417) );
  NOR2_X1 U13713 ( .A1(n1511), .A2(n1417), .ZN(n1418) );
  XNOR2_X1 U13714 ( .A(n1418), .B(r[79]), .ZN(n1419) );
  XNOR2_X1 U13715 ( .A(n1420), .B(n1419), .ZN(n26727) );
  XNOR2_X1 U13716 ( .A(r[41]), .B(r[42]), .ZN(n1424) );
  AND2_X1 U13717 ( .A1(n1461), .A2(in2[0]), .ZN(n1421) );
  NOR2_X1 U13718 ( .A1(n1422), .A2(n1421), .ZN(n1423) );
  XNOR2_X1 U13719 ( .A(n1424), .B(n1423), .ZN(n1425) );
  XNOR2_X1 U13720 ( .A(n1483), .B(n1425), .ZN(n26726) );
  NOR2_X1 U13721 ( .A1(in1[0]), .A2(n1527), .ZN(n1426) );
  NAND2_X1 U13722 ( .A1(n1426), .A2(n1511), .ZN(n1429) );
  NAND2_X1 U13723 ( .A1(n1427), .A2(n1527), .ZN(n1428) );
  NAND2_X1 U13724 ( .A1(n1429), .A2(n1428), .ZN(n1431) );
  XOR2_X1 U13725 ( .A(r[93]), .B(r[92]), .Z(n1430) );
  XNOR2_X1 U13726 ( .A(n1431), .B(n1430), .ZN(n1432) );
  XNOR2_X1 U13727 ( .A(n1500), .B(n1432), .ZN(n26725) );
  NAND2_X1 U13728 ( .A1(in3[3]), .A2(n1433), .ZN(n1435) );
  NAND2_X1 U13729 ( .A1(n1435), .A2(n1434), .ZN(n1436) );
  NAND2_X1 U13730 ( .A1(n1437), .A2(n1436), .ZN(n1439) );
  XOR2_X1 U13731 ( .A(r[62]), .B(r[61]), .Z(n1438) );
  XNOR2_X1 U13732 ( .A(n1439), .B(n1438), .ZN(n1440) );
  XNOR2_X1 U13733 ( .A(n1545), .B(n1440), .ZN(n26724) );
  XNOR2_X1 U13734 ( .A(r[11]), .B(r[12]), .ZN(n1445) );
  XOR2_X1 U13735 ( .A(n1484), .B(in3[3]), .Z(n1441) );
  NOR2_X1 U13736 ( .A1(n1441), .A2(in2[0]), .ZN(n1442) );
  NOR2_X1 U13737 ( .A1(n1442), .A2(n1527), .ZN(n1443) );
  NOR2_X1 U13738 ( .A1(n1465), .A2(n1443), .ZN(n1444) );
  XNOR2_X1 U13739 ( .A(n1445), .B(n1444), .ZN(n1446) );
  XNOR2_X1 U13740 ( .A(n1500), .B(n1446), .ZN(n26723) );
  XNOR2_X1 U13741 ( .A(n1500), .B(r[84]), .ZN(n1451) );
  NOR2_X1 U13742 ( .A1(in3[2]), .A2(n1485), .ZN(n1449) );
  NOR2_X1 U13743 ( .A1(in1[0]), .A2(n1447), .ZN(n1448) );
  NOR2_X1 U13744 ( .A1(n1449), .A2(n1448), .ZN(n1450) );
  XNOR2_X1 U13745 ( .A(n1451), .B(n1450), .ZN(n1452) );
  XNOR2_X1 U13746 ( .A(r[83]), .B(n1452), .ZN(n26722) );
  NAND2_X1 U13747 ( .A1(in1[2]), .A2(in2[3]), .ZN(n1459) );
  INV_X1 U13748 ( .A(n1459), .ZN(n1453) );
  NOR2_X1 U13749 ( .A1(n1454), .A2(n1453), .ZN(n1455) );
  NOR2_X1 U13750 ( .A1(n1493), .A2(n1455), .ZN(n1457) );
  XOR2_X1 U13751 ( .A(r[48]), .B(r[49]), .Z(n1456) );
  XNOR2_X1 U13752 ( .A(n1457), .B(n1456), .ZN(n1458) );
  XNOR2_X1 U13753 ( .A(n1554), .B(n1458), .ZN(n26721) );
  XNOR2_X1 U13754 ( .A(in1[0]), .B(n1459), .ZN(n1460) );
  NOR2_X1 U13755 ( .A1(n1461), .A2(n1460), .ZN(n1462) );
  XOR2_X1 U13756 ( .A(n1462), .B(r[38]), .Z(n1463) );
  XNOR2_X1 U13757 ( .A(r[37]), .B(n1463), .ZN(n1464) );
  XNOR2_X1 U13758 ( .A(n1534), .B(n1464), .ZN(n26720) );
  NAND2_X1 U13759 ( .A1(n1511), .A2(n1473), .ZN(n1466) );
  NAND2_X1 U13760 ( .A1(n1466), .A2(n1465), .ZN(n1468) );
  NAND2_X1 U13761 ( .A1(n1468), .A2(n1467), .ZN(n1470) );
  XOR2_X1 U13762 ( .A(n1500), .B(r[66]), .Z(n1469) );
  XNOR2_X1 U13763 ( .A(n1470), .B(n1469), .ZN(n1471) );
  XNOR2_X1 U13764 ( .A(r[65]), .B(n1471), .ZN(n26719) );
  NOR2_X1 U13765 ( .A1(n1472), .A2(n1525), .ZN(n1474) );
  XOR2_X1 U13766 ( .A(n1474), .B(n1473), .Z(n1475) );
  NOR2_X1 U13767 ( .A1(n1475), .A2(n1493), .ZN(n1476) );
  XOR2_X1 U13768 ( .A(n1476), .B(n1500), .Z(n1478) );
  XNOR2_X1 U13769 ( .A(r[57]), .B(r[56]), .ZN(n1477) );
  XNOR2_X1 U13770 ( .A(n1478), .B(n1477), .ZN(n1482) );
  NOR2_X1 U13771 ( .A1(n1480), .A2(n1479), .ZN(n1481) );
  XOR2_X1 U13772 ( .A(n1482), .B(n1481), .Z(n26718) );
  XNOR2_X1 U13773 ( .A(n1483), .B(r[86]), .ZN(n1489) );
  NAND2_X1 U13774 ( .A1(in2[0]), .A2(n1484), .ZN(n1548) );
  NAND2_X1 U13775 ( .A1(n1548), .A2(n1485), .ZN(n1486) );
  NAND2_X1 U13776 ( .A1(n1486), .A2(in1[2]), .ZN(n1487) );
  XNOR2_X1 U13777 ( .A(n1487), .B(r[87]), .ZN(n1488) );
  XNOR2_X1 U13778 ( .A(n1489), .B(n1488), .ZN(n26717) );
  NAND2_X1 U13779 ( .A1(n1491), .A2(n1490), .ZN(n1496) );
  NAND2_X1 U13780 ( .A1(n1492), .A2(in1[2]), .ZN(n1494) );
  NAND2_X1 U13781 ( .A1(n1494), .A2(n1493), .ZN(n1495) );
  NAND2_X1 U13782 ( .A1(n1496), .A2(n1495), .ZN(n1497) );
  XNOR2_X1 U13783 ( .A(r[74]), .B(n1497), .ZN(n1498) );
  XNOR2_X1 U13784 ( .A(n1498), .B(r[75]), .ZN(n1499) );
  XNOR2_X1 U13785 ( .A(n1500), .B(n1499), .ZN(n26716) );
  NOR2_X1 U13786 ( .A1(n1501), .A2(n1536), .ZN(n1507) );
  NAND2_X1 U13787 ( .A1(in1[3]), .A2(in2[0]), .ZN(n1508) );
  XOR2_X1 U13788 ( .A(n1527), .B(n1508), .Z(n1502) );
  NAND2_X1 U13789 ( .A1(n1502), .A2(in1[1]), .ZN(n1504) );
  XOR2_X1 U13790 ( .A(r[67]), .B(r[68]), .Z(n1503) );
  XNOR2_X1 U13791 ( .A(n1504), .B(n1503), .ZN(n1505) );
  XOR2_X1 U13792 ( .A(n1524), .B(n1505), .Z(n1506) );
  XNOR2_X1 U13793 ( .A(n1507), .B(n1506), .ZN(n26715) );
  NAND2_X1 U13794 ( .A1(n1509), .A2(n1508), .ZN(n1514) );
  NAND2_X1 U13795 ( .A1(n1510), .A2(in1[3]), .ZN(n1512) );
  NAND2_X1 U13796 ( .A1(n1512), .A2(n1511), .ZN(n1513) );
  NAND2_X1 U13797 ( .A1(n1514), .A2(n1513), .ZN(n1516) );
  XOR2_X1 U13798 ( .A(r[71]), .B(r[70]), .Z(n1515) );
  XNOR2_X1 U13799 ( .A(n1516), .B(n1515), .ZN(n1517) );
  XNOR2_X1 U13800 ( .A(n1517), .B(n1545), .ZN(n26714) );
  NAND2_X1 U13801 ( .A1(n1519), .A2(n1518), .ZN(n1520) );
  NAND2_X1 U13802 ( .A1(n1520), .A2(in3[2]), .ZN(n1521) );
  XNOR2_X1 U13803 ( .A(n1521), .B(r[104]), .ZN(n1522) );
  XOR2_X1 U13804 ( .A(r[103]), .B(n1522), .Z(n1523) );
  XNOR2_X1 U13805 ( .A(n1524), .B(n1523), .ZN(n26713) );
  XNOR2_X1 U13806 ( .A(r[100]), .B(r[101]), .ZN(n1532) );
  NAND2_X1 U13807 ( .A1(n1526), .A2(n1525), .ZN(n1530) );
  NAND2_X1 U13808 ( .A1(n1528), .A2(n1527), .ZN(n1529) );
  NAND2_X1 U13809 ( .A1(n1530), .A2(n1529), .ZN(n1531) );
  XNOR2_X1 U13810 ( .A(n1532), .B(n1531), .ZN(n1533) );
  XNOR2_X1 U13811 ( .A(n1534), .B(n1533), .ZN(n26712) );
  XNOR2_X1 U13812 ( .A(r[79]), .B(r[80]), .ZN(n1538) );
  NOR2_X1 U13813 ( .A1(n1536), .A2(n1535), .ZN(n1537) );
  XNOR2_X1 U13814 ( .A(n1538), .B(n1537), .ZN(n1544) );
  NOR2_X1 U13815 ( .A1(n1540), .A2(n1539), .ZN(n1541) );
  XOR2_X1 U13816 ( .A(n1541), .B(in3[2]), .Z(n1542) );
  NAND2_X1 U13817 ( .A1(in1[1]), .A2(n1542), .ZN(n1543) );
  XNOR2_X1 U13818 ( .A(n1544), .B(n1543), .ZN(n1546) );
  XNOR2_X1 U13819 ( .A(n1546), .B(n1545), .ZN(n26711) );
  XNOR2_X1 U13820 ( .A(r[30]), .B(r[31]), .ZN(n1552) );
  AND2_X1 U13821 ( .A1(in1[3]), .A2(n1547), .ZN(n1550) );
  NOR2_X1 U13822 ( .A1(in1[3]), .A2(n1548), .ZN(n1549) );
  NOR2_X1 U13823 ( .A1(n1550), .A2(n1549), .ZN(n1551) );
  XNOR2_X1 U13824 ( .A(n1552), .B(n1551), .ZN(n1553) );
  XNOR2_X1 U13825 ( .A(n1554), .B(n1553), .ZN(n26710) );
endmodule


module TwoSboxes ( clk, in1, in2, in3, r, out1, out2, out3 );
(* SILVER="[7:0]_0" *)  input [7:0] in1;
(* SILVER="[7:0]_1" *)  input [7:0] in2;
(* SILVER="[7:0]_2" *)  input [7:0] in3;
(* SILVER="refresh" *)  input [215:0] r;
(* SILVER="[7:0]_0" *)  output [7:0] out1;
(* SILVER="[7:0]_1" *)  output [7:0] out2;
(* SILVER="[7:0]_2" *)  output [7:0] out3;
(* SILVER="clock" *)  input clk;


  PRINCE_Sbox_inv_0 Sbox0 ( .clk(clk), .in1(in1[3:0]), .in2(in2[3:0]), .in3(
        in3[3:0]), .r(r[107:0]), .TwoSharesFromNeighbouringSbox({in1[7:4], 
        in2[7:4]}), .out1(out1[3:0]), .out2(out2[3:0]), .out3(out3[3:0]) );
  PRINCE_Sbox_inv_1 Sbox1 ( .clk(clk), .in1(in1[7:4]), .in2(in2[7:4]), .in3(
        in3[7:4]), .r(r[215:108]), .TwoSharesFromNeighbouringSbox({in1[3:0], 
        in2[3:0]}), .out1(out1[7:4]), .out2(out2[7:4]), .out3(out3[7:4]) );
endmodule

