/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Mon Jun 12 08:33:32 2023
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
  wire   \CF_Out[2][26] , \CF_Out[2][25] , \CF_Out[2][23] , \CF_Out[2][22] ,
         \CF_Out[2][21] , \CF_Out[2][20] , \CF_Out[2][19] , \CF_Out[2][18] ,
         \CF_Out[2][17] , \CF_Out[2][16] , \CF_Out[2][15] , \CF_Out[2][13] ,
         \CF_Out[2][11] , \CF_Out[2][10] , \CF_Out[2][9] , \CF_Out[2][8] ,
         \CF_Out[2][7] , \CF_Out[2][6] , \CF_Out[2][5] , \CF_Out[2][4] ,
         \CF_Out[2][3] , \CF_Out[2][2] , \CF_Out[2][1] , \CF_Out[2][0] ,
         \CF_Out[1][26] , \CF_Out[1][25] , \CF_Out[1][24] , \CF_Out[1][22] ,
         \CF_Out[1][21] , \CF_Out[1][20] , \CF_Out[1][19] , \CF_Out[1][18] ,
         \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] , \CF_Out[1][14] ,
         \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][11] , \CF_Out[1][10] ,
         \CF_Out[1][9] , \CF_Out[1][8] , \CF_Out[1][7] , \CF_Out[1][6] ,
         \CF_Out[1][5] , \CF_Out[1][4] , \CF_Out[1][3] , \CF_Out[1][2] ,
         \CF_Out[1][1] , \CF_Out[1][0] , \CF_Out[0][26] , \CF_Out[0][25] ,
         \CF_Out[0][24] , \CF_Out[0][22] , \CF_Out[0][21] , \CF_Out[0][20] ,
         \CF_Out[0][19] , \CF_Out[0][18] , \CF_Out[0][17] , \CF_Out[0][16] ,
         \CF_Out[0][15] , \CF_Out[0][14] , \CF_Out[0][13] , \CF_Out[0][12] ,
         \CF_Out[0][11] , \CF_Out[0][10] , \CF_Out[0][9] , \CF_Out[0][8] ,
         \CF_Out[0][7] , \CF_Out[0][6] , \CF_Out[0][4] , \CF_Out[0][3] ,
         \CF_Out[0][2] , \CF_Out[0][1] , \CF_Out[0][0] , n26810, n26818,
         n26826, n26834, n26842, n26850, n26858, n26866, n26874, n26882,
         n26890, n26898, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n26733,
         n26734, n26735, n26736, n26737, n26738, n26739, n26740, n26741,
         n26742, n26743, n26744, n929, n930, n931, n932, n933, n934, n935,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101,
         n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111,
         n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121,
         n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131,
         n1132, n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141,
         n1142, n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151,
         n1152, n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161,
         n1162, n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171,
         n1172, n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181,
         n1182, n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191,
         n1192, n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201,
         n1202, n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211,
         n1212, n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221,
         n1222, n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231,
         n1232, n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241,
         n1242, n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251,
         n1252, n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261,
         n1262, n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271,
         n1272, n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281,
         n1282, n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291,
         n1292, n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301,
         n1302, n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311,
         n1312, n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321,
         n1322, n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331,
         n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341,
         n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351,
         n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361,
         n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371,
         n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381,
         n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391,
         n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401,
         n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411,
         n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421,
         n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431,
         n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441,
         n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451,
         n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461,
         n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471,
         n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481,
         n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491,
         n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501,
         n1502, n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511,
         n1512, n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521,
         n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531,
         n1532, n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541,
         n1542, n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551,
         n1552, n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561,
         n1562, n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571,
         n1572, n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581,
         n1582, n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591,
         n1592, n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601,
         n1602, n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611,
         n1612, n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621,
         n1622, n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631,
         n1632, n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641,
         n1642;
  wire   [44:0] CF_Out_MSB;

  DFF_X1 \CF_Reg_reg[2][26]  ( .D(\CF_Out[2][26] ), .CK(clk), .QN(n848) );
  DFF_X1 \CF_Reg_reg[2][25]  ( .D(\CF_Out[2][25] ), .CK(clk), .Q(n846) );
  DFF_X1 \CF_Reg_reg[2][24]  ( .D(n26741), .CK(clk), .QN(n26874) );
  DFF_X1 \CF_Reg_reg[2][23]  ( .D(\CF_Out[2][23] ), .CK(clk), .Q(n845) );
  DFF_X1 \CF_Reg_reg[2][22]  ( .D(\CF_Out[2][22] ), .CK(clk), .Q(n844) );
  DFF_X1 \CF_Reg_reg[2][21]  ( .D(\CF_Out[2][21] ), .CK(clk), .Q(n847) );
  DFF_X1 \CF_Reg_reg[2][20]  ( .D(\CF_Out[2][20] ), .CK(clk), .Q(n843) );
  DFF_X1 \CF_Reg_reg[2][19]  ( .D(\CF_Out[2][19] ), .CK(clk), .Q(n841) );
  DFF_X1 \CF_Reg_reg[2][18]  ( .D(\CF_Out[2][18] ), .CK(clk), .Q(n842) );
  DFF_X1 \CF_Reg_reg[2][17]  ( .D(\CF_Out[2][17] ), .CK(clk), .QN(n880) );
  DFF_X1 \CF_Reg_reg[2][16]  ( .D(\CF_Out[2][16] ), .CK(clk), .Q(n878) );
  DFF_X1 \CF_Reg_reg[2][15]  ( .D(\CF_Out[2][15] ), .CK(clk), .QN(n26866) );
  DFF_X1 \CF_Reg_reg[2][14]  ( .D(n26738), .CK(clk), .Q(n877) );
  DFF_X1 \CF_Reg_reg[2][13]  ( .D(\CF_Out[2][13] ), .CK(clk), .Q(n876) );
  DFF_X1 \CF_Reg_reg[2][12]  ( .D(n26744), .CK(clk), .Q(n879) );
  DFF_X1 \CF_Reg_reg[2][11]  ( .D(\CF_Out[2][11] ), .CK(clk), .Q(n875) );
  DFF_X1 \CF_Reg_reg[2][10]  ( .D(\CF_Out[2][10] ), .CK(clk), .Q(n873) );
  DFF_X1 \CF_Reg_reg[2][9]  ( .D(\CF_Out[2][9] ), .CK(clk), .Q(n874) );
  DFF_X1 \CF_Reg_reg[2][8]  ( .D(\CF_Out[2][8] ), .CK(clk), .QN(n912) );
  DFF_X1 \CF_Reg_reg[2][7]  ( .D(\CF_Out[2][7] ), .CK(clk), .Q(n910) );
  DFF_X1 \CF_Reg_reg[2][6]  ( .D(\CF_Out[2][6] ), .CK(clk), .QN(n26858) );
  DFF_X1 \CF_Reg_reg[2][5]  ( .D(\CF_Out[2][5] ), .CK(clk), .Q(n909) );
  DFF_X1 \CF_Reg_reg[2][4]  ( .D(\CF_Out[2][4] ), .CK(clk), .Q(n908) );
  DFF_X1 \CF_Reg_reg[2][3]  ( .D(\CF_Out[2][3] ), .CK(clk), .Q(n911) );
  DFF_X1 \CF_Reg_reg[2][2]  ( .D(\CF_Out[2][2] ), .CK(clk), .Q(n907) );
  DFF_X1 \CF_Reg_reg[2][1]  ( .D(\CF_Out[2][1] ), .CK(clk), .Q(n905) );
  DFF_X1 \CF_Reg_reg[2][0]  ( .D(\CF_Out[2][0] ), .CK(clk), .Q(n906) );
  DFF_X1 \CF_Reg_reg[1][26]  ( .D(\CF_Out[1][26] ), .CK(clk), .QN(n856) );
  DFF_X1 \CF_Reg_reg[1][25]  ( .D(\CF_Out[1][25] ), .CK(clk), .Q(n854) );
  DFF_X1 \CF_Reg_reg[1][24]  ( .D(\CF_Out[1][24] ), .CK(clk), .QN(n26850) );
  DFF_X1 \CF_Reg_reg[1][23]  ( .D(n26742), .CK(clk), .Q(n853) );
  DFF_X1 \CF_Reg_reg[1][22]  ( .D(\CF_Out[1][22] ), .CK(clk), .Q(n852) );
  DFF_X1 \CF_Reg_reg[1][21]  ( .D(\CF_Out[1][21] ), .CK(clk), .Q(n855) );
  DFF_X1 \CF_Reg_reg[1][20]  ( .D(\CF_Out[1][20] ), .CK(clk), .Q(n851) );
  DFF_X1 \CF_Reg_reg[1][19]  ( .D(\CF_Out[1][19] ), .CK(clk), .Q(n849) );
  DFF_X1 \CF_Reg_reg[1][18]  ( .D(\CF_Out[1][18] ), .CK(clk), .Q(n850) );
  DFF_X1 \CF_Reg_reg[1][17]  ( .D(\CF_Out[1][17] ), .CK(clk), .QN(n888) );
  DFF_X1 \CF_Reg_reg[1][16]  ( .D(\CF_Out[1][16] ), .CK(clk), .Q(n886) );
  DFF_X1 \CF_Reg_reg[1][15]  ( .D(\CF_Out[1][15] ), .CK(clk), .QN(n26842) );
  DFF_X1 \CF_Reg_reg[1][14]  ( .D(\CF_Out[1][14] ), .CK(clk), .Q(n885) );
  DFF_X1 \CF_Reg_reg[1][13]  ( .D(\CF_Out[1][13] ), .CK(clk), .Q(n884) );
  DFF_X1 \CF_Reg_reg[1][12]  ( .D(\CF_Out[1][12] ), .CK(clk), .Q(n887) );
  DFF_X1 \CF_Reg_reg[1][11]  ( .D(\CF_Out[1][11] ), .CK(clk), .Q(n883) );
  DFF_X1 \CF_Reg_reg[1][10]  ( .D(\CF_Out[1][10] ), .CK(clk), .Q(n881) );
  DFF_X1 \CF_Reg_reg[1][9]  ( .D(\CF_Out[1][9] ), .CK(clk), .Q(n882) );
  DFF_X1 \CF_Reg_reg[1][8]  ( .D(\CF_Out[1][8] ), .CK(clk), .QN(n920) );
  DFF_X1 \CF_Reg_reg[1][7]  ( .D(\CF_Out[1][7] ), .CK(clk), .Q(n918) );
  DFF_X1 \CF_Reg_reg[1][6]  ( .D(\CF_Out[1][6] ), .CK(clk), .QN(n26834) );
  DFF_X1 \CF_Reg_reg[1][5]  ( .D(\CF_Out[1][5] ), .CK(clk), .Q(n917) );
  DFF_X1 \CF_Reg_reg[1][4]  ( .D(\CF_Out[1][4] ), .CK(clk), .Q(n916) );
  DFF_X1 \CF_Reg_reg[1][3]  ( .D(\CF_Out[1][3] ), .CK(clk), .Q(n919) );
  DFF_X1 \CF_Reg_reg[1][2]  ( .D(\CF_Out[1][2] ), .CK(clk), .Q(n915) );
  DFF_X1 \CF_Reg_reg[1][1]  ( .D(\CF_Out[1][1] ), .CK(clk), .Q(n913) );
  DFF_X1 \CF_Reg_reg[1][0]  ( .D(\CF_Out[1][0] ), .CK(clk), .Q(n914) );
  DFF_X1 \CF_Reg_reg[0][26]  ( .D(\CF_Out[0][26] ), .CK(clk), .QN(n864) );
  DFF_X1 \CF_Reg_reg[0][25]  ( .D(\CF_Out[0][25] ), .CK(clk), .Q(n862) );
  DFF_X1 \CF_Reg_reg[0][24]  ( .D(\CF_Out[0][24] ), .CK(clk), .QN(n26826) );
  DFF_X1 \CF_Reg_reg[0][23]  ( .D(n26743), .CK(clk), .Q(n861) );
  DFF_X1 \CF_Reg_reg[0][22]  ( .D(\CF_Out[0][22] ), .CK(clk), .Q(n860) );
  DFF_X1 \CF_Reg_reg[0][21]  ( .D(\CF_Out[0][21] ), .CK(clk), .Q(n863) );
  DFF_X1 \CF_Reg_reg[0][20]  ( .D(\CF_Out[0][20] ), .CK(clk), .Q(n859) );
  DFF_X1 \CF_Reg_reg[0][19]  ( .D(\CF_Out[0][19] ), .CK(clk), .Q(n857) );
  DFF_X1 \CF_Reg_reg[0][18]  ( .D(\CF_Out[0][18] ), .CK(clk), .Q(n858) );
  DFF_X1 \CF_Reg_reg[0][17]  ( .D(\CF_Out[0][17] ), .CK(clk), .QN(n896) );
  DFF_X1 \CF_Reg_reg[0][16]  ( .D(\CF_Out[0][16] ), .CK(clk), .Q(n894) );
  DFF_X1 \CF_Reg_reg[0][15]  ( .D(\CF_Out[0][15] ), .CK(clk), .QN(n26818) );
  DFF_X1 \CF_Reg_reg[0][14]  ( .D(\CF_Out[0][14] ), .CK(clk), .Q(n893) );
  DFF_X1 \CF_Reg_reg[0][13]  ( .D(\CF_Out[0][13] ), .CK(clk), .Q(n892) );
  DFF_X1 \CF_Reg_reg[0][12]  ( .D(\CF_Out[0][12] ), .CK(clk), .Q(n895) );
  DFF_X1 \CF_Reg_reg[0][11]  ( .D(\CF_Out[0][11] ), .CK(clk), .Q(n891) );
  DFF_X1 \CF_Reg_reg[0][10]  ( .D(\CF_Out[0][10] ), .CK(clk), .Q(n889) );
  DFF_X1 \CF_Reg_reg[0][9]  ( .D(\CF_Out[0][9] ), .CK(clk), .Q(n890) );
  DFF_X1 \CF_Reg_reg[0][8]  ( .D(\CF_Out[0][8] ), .CK(clk), .QN(n928) );
  DFF_X1 \CF_Reg_reg[0][7]  ( .D(\CF_Out[0][7] ), .CK(clk), .Q(n926) );
  DFF_X1 \CF_Reg_reg[0][6]  ( .D(\CF_Out[0][6] ), .CK(clk), .QN(n26810) );
  DFF_X1 \CF_Reg_reg[0][5]  ( .D(n26735), .CK(clk), .Q(n925) );
  DFF_X1 \CF_Reg_reg[0][4]  ( .D(\CF_Out[0][4] ), .CK(clk), .Q(n924) );
  DFF_X1 \CF_Reg_reg[0][3]  ( .D(\CF_Out[0][3] ), .CK(clk), .Q(n927) );
  DFF_X1 \CF_Reg_reg[0][2]  ( .D(\CF_Out[0][2] ), .CK(clk), .Q(n923) );
  DFF_X1 \CF_Reg_reg[0][1]  ( .D(\CF_Out[0][1] ), .CK(clk), .Q(n921) );
  DFF_X1 \CF_Reg_reg[0][0]  ( .D(\CF_Out[0][0] ), .CK(clk), .Q(n922) );
  DFF_X1 \CF_Reg_MSB_reg[38]  ( .D(CF_Out_MSB[38]), .CK(clk), .QN(n26898) );
  DFF_X1 \CF_Reg_MSB_reg[37]  ( .D(n26734), .CK(clk), .Q(n837) );
  DFF_X1 \CF_Reg_MSB_reg[36]  ( .D(n26740), .CK(clk), .Q(n834) );
  DFF_X1 \CF_Reg_MSB_reg[35]  ( .D(CF_Out_MSB[35]), .CK(clk), .QN(n840) );
  DFF_X1 \CF_Reg_MSB_reg[34]  ( .D(CF_Out_MSB[34]), .CK(clk), .Q(n836) );
  DFF_X1 \CF_Reg_MSB_reg[33]  ( .D(CF_Out_MSB[33]), .CK(clk), .Q(n839) );
  DFF_X1 \CF_Reg_MSB_reg[32]  ( .D(n26737), .CK(clk), .Q(n838) );
  DFF_X1 \CF_Reg_MSB_reg[31]  ( .D(CF_Out_MSB[31]), .CK(clk), .Q(n833) );
  DFF_X1 \CF_Reg_MSB_reg[30]  ( .D(CF_Out_MSB[30]), .CK(clk), .Q(n835) );
  DFF_X1 \CF_Reg_MSB_reg[23]  ( .D(CF_Out_MSB[23]), .CK(clk), .QN(n26890) );
  DFF_X1 \CF_Reg_MSB_reg[22]  ( .D(CF_Out_MSB[22]), .CK(clk), .Q(n869) );
  DFF_X1 \CF_Reg_MSB_reg[21]  ( .D(CF_Out_MSB[21]), .CK(clk), .Q(n866) );
  DFF_X1 \CF_Reg_MSB_reg[20]  ( .D(n26739), .CK(clk), .QN(n872) );
  DFF_X1 \CF_Reg_MSB_reg[19]  ( .D(n26733), .CK(clk), .Q(n868) );
  DFF_X1 \CF_Reg_MSB_reg[18]  ( .D(CF_Out_MSB[18]), .CK(clk), .Q(n871) );
  DFF_X1 \CF_Reg_MSB_reg[17]  ( .D(n26736), .CK(clk), .Q(n870) );
  DFF_X1 \CF_Reg_MSB_reg[16]  ( .D(CF_Out_MSB[16]), .CK(clk), .Q(n865) );
  DFF_X1 \CF_Reg_MSB_reg[15]  ( .D(CF_Out_MSB[15]), .CK(clk), .Q(n867) );
  DFF_X1 \CF_Reg_MSB_reg[8]  ( .D(CF_Out_MSB[8]), .CK(clk), .QN(n26882) );
  DFF_X1 \CF_Reg_MSB_reg[7]  ( .D(CF_Out_MSB[7]), .CK(clk), .Q(n901) );
  DFF_X1 \CF_Reg_MSB_reg[6]  ( .D(CF_Out_MSB[6]), .CK(clk), .Q(n898) );
  DFF_X1 \CF_Reg_MSB_reg[5]  ( .D(CF_Out_MSB[5]), .CK(clk), .QN(n904) );
  DFF_X1 \CF_Reg_MSB_reg[4]  ( .D(CF_Out_MSB[4]), .CK(clk), .Q(n900) );
  DFF_X1 \CF_Reg_MSB_reg[3]  ( .D(CF_Out_MSB[3]), .CK(clk), .Q(n903) );
  DFF_X1 \CF_Reg_MSB_reg[2]  ( .D(CF_Out_MSB[2]), .CK(clk), .Q(n902) );
  DFF_X1 \CF_Reg_MSB_reg[1]  ( .D(CF_Out_MSB[1]), .CK(clk), .Q(n897) );
  DFF_X1 \CF_Reg_MSB_reg[0]  ( .D(CF_Out_MSB[0]), .CK(clk), .Q(n899) );
  XOR2_X2 U13017 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n1603) );
  XOR2_X2 U13018 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n1570) );
  XOR2_X2 U13019 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n1610) );
  XOR2_X2 U13020 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n1546) );
  XOR2_X2 U13021 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n1537) );
  XNOR2_X2 U13022 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .ZN(n1624) );
  XNOR2_X2 U13023 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .ZN(n1642) );
  XNOR2_X1 U13024 ( .A(n840), .B(n26898), .ZN(n935) );
  XOR2_X1 U13025 ( .A(n835), .B(n838), .Z(n930) );
  XNOR2_X1 U13026 ( .A(n834), .B(n833), .ZN(n929) );
  XNOR2_X1 U13027 ( .A(n930), .B(n929), .ZN(n931) );
  XOR2_X1 U13028 ( .A(n931), .B(n836), .Z(n933) );
  XNOR2_X1 U13029 ( .A(n837), .B(n839), .ZN(n932) );
  XNOR2_X1 U13030 ( .A(n933), .B(n932), .ZN(n934) );
  XNOR2_X1 U13031 ( .A(n935), .B(n934), .ZN(out3[3]) );
  XNOR2_X1 U13032 ( .A(n848), .B(n26874), .ZN(n942) );
  XOR2_X1 U13033 ( .A(n843), .B(n846), .Z(n937) );
  XNOR2_X1 U13034 ( .A(n842), .B(n841), .ZN(n936) );
  XNOR2_X1 U13035 ( .A(n937), .B(n936), .ZN(n938) );
  XOR2_X1 U13036 ( .A(n938), .B(n844), .Z(n940) );
  XNOR2_X1 U13037 ( .A(n845), .B(n847), .ZN(n939) );
  XNOR2_X1 U13038 ( .A(n940), .B(n939), .ZN(n941) );
  XNOR2_X1 U13039 ( .A(n942), .B(n941), .ZN(out3[2]) );
  XNOR2_X1 U13040 ( .A(n856), .B(n26850), .ZN(n949) );
  XOR2_X1 U13041 ( .A(n851), .B(n854), .Z(n944) );
  XNOR2_X1 U13042 ( .A(n850), .B(n849), .ZN(n943) );
  XNOR2_X1 U13043 ( .A(n944), .B(n943), .ZN(n945) );
  XOR2_X1 U13044 ( .A(n945), .B(n852), .Z(n947) );
  XNOR2_X1 U13045 ( .A(n853), .B(n855), .ZN(n946) );
  XNOR2_X1 U13046 ( .A(n947), .B(n946), .ZN(n948) );
  XNOR2_X1 U13047 ( .A(n949), .B(n948), .ZN(out3[1]) );
  XNOR2_X1 U13048 ( .A(n864), .B(n26826), .ZN(n956) );
  XOR2_X1 U13049 ( .A(n859), .B(n862), .Z(n951) );
  XNOR2_X1 U13050 ( .A(n858), .B(n857), .ZN(n950) );
  XNOR2_X1 U13051 ( .A(n951), .B(n950), .ZN(n952) );
  XOR2_X1 U13052 ( .A(n952), .B(n860), .Z(n954) );
  XNOR2_X1 U13053 ( .A(n861), .B(n863), .ZN(n953) );
  XNOR2_X1 U13054 ( .A(n954), .B(n953), .ZN(n955) );
  XNOR2_X1 U13055 ( .A(n956), .B(n955), .ZN(out3[0]) );
  XNOR2_X1 U13056 ( .A(n872), .B(n26890), .ZN(n963) );
  XOR2_X1 U13057 ( .A(n867), .B(n870), .Z(n958) );
  XNOR2_X1 U13058 ( .A(n866), .B(n865), .ZN(n957) );
  XNOR2_X1 U13059 ( .A(n958), .B(n957), .ZN(n959) );
  XOR2_X1 U13060 ( .A(n959), .B(n868), .Z(n961) );
  XNOR2_X1 U13061 ( .A(n869), .B(n871), .ZN(n960) );
  XNOR2_X1 U13062 ( .A(n961), .B(n960), .ZN(n962) );
  XNOR2_X1 U13063 ( .A(n963), .B(n962), .ZN(out2[3]) );
  XNOR2_X1 U13064 ( .A(n880), .B(n26866), .ZN(n970) );
  XOR2_X1 U13065 ( .A(n875), .B(n878), .Z(n965) );
  XNOR2_X1 U13066 ( .A(n874), .B(n873), .ZN(n964) );
  XNOR2_X1 U13067 ( .A(n965), .B(n964), .ZN(n966) );
  XOR2_X1 U13068 ( .A(n966), .B(n876), .Z(n968) );
  XNOR2_X1 U13069 ( .A(n877), .B(n879), .ZN(n967) );
  XNOR2_X1 U13070 ( .A(n968), .B(n967), .ZN(n969) );
  XNOR2_X1 U13071 ( .A(n970), .B(n969), .ZN(out2[2]) );
  XNOR2_X1 U13072 ( .A(n888), .B(n26842), .ZN(n977) );
  XOR2_X1 U13073 ( .A(n883), .B(n886), .Z(n972) );
  XNOR2_X1 U13074 ( .A(n882), .B(n881), .ZN(n971) );
  XNOR2_X1 U13075 ( .A(n972), .B(n971), .ZN(n973) );
  XOR2_X1 U13076 ( .A(n973), .B(n884), .Z(n975) );
  XNOR2_X1 U13077 ( .A(n885), .B(n887), .ZN(n974) );
  XNOR2_X1 U13078 ( .A(n975), .B(n974), .ZN(n976) );
  XNOR2_X1 U13079 ( .A(n977), .B(n976), .ZN(out2[1]) );
  XNOR2_X1 U13080 ( .A(n896), .B(n26818), .ZN(n984) );
  XOR2_X1 U13081 ( .A(n891), .B(n894), .Z(n979) );
  XNOR2_X1 U13082 ( .A(n890), .B(n889), .ZN(n978) );
  XNOR2_X1 U13083 ( .A(n979), .B(n978), .ZN(n980) );
  XOR2_X1 U13084 ( .A(n980), .B(n892), .Z(n982) );
  XNOR2_X1 U13085 ( .A(n893), .B(n895), .ZN(n981) );
  XNOR2_X1 U13086 ( .A(n982), .B(n981), .ZN(n983) );
  XNOR2_X1 U13087 ( .A(n984), .B(n983), .ZN(out2[0]) );
  XNOR2_X1 U13088 ( .A(n904), .B(n26882), .ZN(n991) );
  XOR2_X1 U13089 ( .A(n899), .B(n902), .Z(n986) );
  XNOR2_X1 U13090 ( .A(n898), .B(n897), .ZN(n985) );
  XNOR2_X1 U13091 ( .A(n986), .B(n985), .ZN(n987) );
  XOR2_X1 U13092 ( .A(n987), .B(n900), .Z(n989) );
  XNOR2_X1 U13093 ( .A(n901), .B(n903), .ZN(n988) );
  XNOR2_X1 U13094 ( .A(n989), .B(n988), .ZN(n990) );
  XNOR2_X1 U13095 ( .A(n991), .B(n990), .ZN(out1[3]) );
  XNOR2_X1 U13096 ( .A(n912), .B(n26858), .ZN(n998) );
  XOR2_X1 U13097 ( .A(n907), .B(n910), .Z(n993) );
  XNOR2_X1 U13098 ( .A(n906), .B(n905), .ZN(n992) );
  XNOR2_X1 U13099 ( .A(n993), .B(n992), .ZN(n994) );
  XOR2_X1 U13100 ( .A(n994), .B(n908), .Z(n996) );
  XNOR2_X1 U13101 ( .A(n909), .B(n911), .ZN(n995) );
  XNOR2_X1 U13102 ( .A(n996), .B(n995), .ZN(n997) );
  XNOR2_X1 U13103 ( .A(n998), .B(n997), .ZN(out1[2]) );
  XNOR2_X1 U13104 ( .A(n920), .B(n26834), .ZN(n1005) );
  XOR2_X1 U13105 ( .A(n915), .B(n918), .Z(n1000) );
  XNOR2_X1 U13106 ( .A(n914), .B(n913), .ZN(n999) );
  XNOR2_X1 U13107 ( .A(n1000), .B(n999), .ZN(n1001) );
  XOR2_X1 U13108 ( .A(n1001), .B(n916), .Z(n1003) );
  XNOR2_X1 U13109 ( .A(n917), .B(n919), .ZN(n1002) );
  XNOR2_X1 U13110 ( .A(n1003), .B(n1002), .ZN(n1004) );
  XNOR2_X1 U13111 ( .A(n1005), .B(n1004), .ZN(out1[1]) );
  XNOR2_X1 U13112 ( .A(n928), .B(n26810), .ZN(n1012) );
  XOR2_X1 U13113 ( .A(n923), .B(n926), .Z(n1007) );
  XNOR2_X1 U13114 ( .A(n922), .B(n921), .ZN(n1006) );
  XNOR2_X1 U13115 ( .A(n1007), .B(n1006), .ZN(n1008) );
  XOR2_X1 U13116 ( .A(n1008), .B(n924), .Z(n1010) );
  XNOR2_X1 U13117 ( .A(n925), .B(n927), .ZN(n1009) );
  XNOR2_X1 U13118 ( .A(n1010), .B(n1009), .ZN(n1011) );
  XNOR2_X1 U13119 ( .A(n1012), .B(n1011), .ZN(out1[0]) );
  INV_X1 U13120 ( .A(in1[2]), .ZN(n1613) );
  NAND2_X1 U13121 ( .A1(in1[3]), .A2(in3[1]), .ZN(n1294) );
  NOR2_X1 U13122 ( .A1(in3[0]), .A2(n1294), .ZN(n1014) );
  INV_X1 U13123 ( .A(in3[1]), .ZN(n1591) );
  NAND2_X1 U13124 ( .A1(in3[0]), .A2(n1591), .ZN(n1272) );
  NOR2_X1 U13125 ( .A1(in1[3]), .A2(n1272), .ZN(n1013) );
  NOR2_X1 U13126 ( .A1(n1014), .A2(n1013), .ZN(n1015) );
  NOR2_X1 U13127 ( .A1(n1613), .A2(n1015), .ZN(n1018) );
  XNOR2_X1 U13128 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[62]), .ZN(n1016) );
  XNOR2_X1 U13129 ( .A(n1016), .B(r[63]), .ZN(n1020) );
  INV_X1 U13130 ( .A(n1020), .ZN(n1017) );
  NAND2_X1 U13131 ( .A1(n1018), .A2(n1017), .ZN(n1022) );
  INV_X1 U13132 ( .A(n1018), .ZN(n1019) );
  NAND2_X1 U13133 ( .A1(n1020), .A2(n1019), .ZN(n1021) );
  NAND2_X1 U13134 ( .A1(n1022), .A2(n1021), .ZN(CF_Out_MSB[8]) );
  NAND2_X1 U13135 ( .A1(in1[1]), .A2(in3[0]), .ZN(n1628) );
  INV_X1 U13136 ( .A(in2[3]), .ZN(n1582) );
  NAND2_X1 U13137 ( .A1(n1628), .A2(n1582), .ZN(n1024) );
  NOR2_X1 U13138 ( .A1(in1[1]), .A2(in3[0]), .ZN(n1432) );
  NOR2_X1 U13139 ( .A1(n1432), .A2(n1613), .ZN(n1023) );
  NAND2_X1 U13140 ( .A1(n1024), .A2(n1023), .ZN(n1027) );
  XNOR2_X1 U13141 ( .A(n1570), .B(r[60]), .ZN(n1025) );
  XNOR2_X1 U13142 ( .A(n1025), .B(r[61]), .ZN(n1026) );
  XNOR2_X1 U13143 ( .A(n1027), .B(n1026), .ZN(CF_Out_MSB[6]) );
  INV_X1 U13144 ( .A(in3[3]), .ZN(n1599) );
  INV_X1 U13145 ( .A(in3[2]), .ZN(n1565) );
  NOR2_X1 U13146 ( .A1(n1599), .A2(n1565), .ZN(n1453) );
  NAND2_X1 U13147 ( .A1(in3[0]), .A2(n1453), .ZN(n1030) );
  NOR2_X1 U13148 ( .A1(in3[2]), .A2(n1272), .ZN(n1095) );
  NAND2_X1 U13149 ( .A1(in3[2]), .A2(n1599), .ZN(n1170) );
  NOR2_X1 U13150 ( .A1(n1591), .A2(n1170), .ZN(n1028) );
  NOR2_X1 U13151 ( .A1(n1095), .A2(n1028), .ZN(n1029) );
  NAND2_X1 U13152 ( .A1(n1030), .A2(n1029), .ZN(n1031) );
  XNOR2_X1 U13153 ( .A(n1031), .B(r[54]), .ZN(n1033) );
  XOR2_X1 U13154 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[80]), .Z(n1032)
         );
  XNOR2_X1 U13155 ( .A(n1033), .B(n1032), .ZN(CF_Out_MSB[38]) );
  NAND2_X1 U13156 ( .A1(in3[1]), .A2(in2[0]), .ZN(n1552) );
  INV_X1 U13157 ( .A(in1[3]), .ZN(n1633) );
  NAND2_X1 U13158 ( .A1(n1552), .A2(n1633), .ZN(n1035) );
  NOR2_X1 U13159 ( .A1(in3[1]), .A2(in2[0]), .ZN(n1391) );
  NOR2_X1 U13160 ( .A1(n1391), .A2(n1565), .ZN(n1034) );
  NAND2_X1 U13161 ( .A1(n1035), .A2(n1034), .ZN(n1036) );
  XNOR2_X1 U13162 ( .A(n1036), .B(n1642), .ZN(n1038) );
  XOR2_X1 U13163 ( .A(r[76]), .B(r[77]), .Z(n1037) );
  XNOR2_X1 U13164 ( .A(n1038), .B(n1037), .ZN(CF_Out_MSB[34]) );
  INV_X1 U13165 ( .A(in1[0]), .ZN(n1510) );
  NAND2_X1 U13166 ( .A1(n1510), .A2(n1599), .ZN(n1040) );
  NOR2_X1 U13167 ( .A1(in1[1]), .A2(n1510), .ZN(n1528) );
  NAND2_X1 U13168 ( .A1(in1[1]), .A2(in3[3]), .ZN(n1443) );
  NAND2_X1 U13169 ( .A1(in3[2]), .A2(n1443), .ZN(n1426) );
  NOR2_X1 U13170 ( .A1(n1528), .A2(n1426), .ZN(n1039) );
  NAND2_X1 U13171 ( .A1(n1040), .A2(n1039), .ZN(n1042) );
  XNOR2_X1 U13172 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[73]), .ZN(n1041) );
  XNOR2_X1 U13173 ( .A(n1041), .B(r[72]), .ZN(n1045) );
  NAND2_X1 U13174 ( .A1(n1042), .A2(n1045), .ZN(n1049) );
  NOR2_X1 U13175 ( .A1(in1[0]), .A2(in1[1]), .ZN(n1427) );
  INV_X1 U13176 ( .A(n1427), .ZN(n1495) );
  NOR2_X1 U13177 ( .A1(n1599), .A2(n1495), .ZN(n1044) );
  INV_X1 U13178 ( .A(in1[1]), .ZN(n1503) );
  NAND2_X1 U13179 ( .A1(in1[0]), .A2(n1599), .ZN(n1607) );
  NOR2_X1 U13180 ( .A1(n1503), .A2(n1607), .ZN(n1043) );
  NOR2_X1 U13181 ( .A1(n1044), .A2(n1043), .ZN(n1046) );
  NOR2_X1 U13182 ( .A1(n1046), .A2(n1045), .ZN(n1047) );
  NAND2_X1 U13183 ( .A1(in3[2]), .A2(n1047), .ZN(n1048) );
  NAND2_X1 U13184 ( .A1(n1049), .A2(n1048), .ZN(CF_Out_MSB[30]) );
  NAND2_X1 U13185 ( .A1(in2[3]), .A2(in3[0]), .ZN(n1567) );
  NAND2_X1 U13186 ( .A1(in3[1]), .A2(n1582), .ZN(n1557) );
  NAND2_X1 U13187 ( .A1(n1567), .A2(n1557), .ZN(n1051) );
  NOR2_X1 U13188 ( .A1(in3[1]), .A2(in3[0]), .ZN(n1050) );
  NOR2_X1 U13189 ( .A1(n1051), .A2(n1050), .ZN(n1052) );
  NAND2_X1 U13190 ( .A1(n1052), .A2(in2[2]), .ZN(n1054) );
  XNOR2_X1 U13191 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[72]), .ZN(n1053) );
  XNOR2_X1 U13192 ( .A(n1053), .B(r[71]), .ZN(n1059) );
  NAND2_X1 U13193 ( .A1(n1054), .A2(n1059), .ZN(n1062) );
  NOR2_X1 U13194 ( .A1(n1272), .A2(in2[3]), .ZN(n1057) );
  NAND2_X1 U13195 ( .A1(in3[1]), .A2(in2[3]), .ZN(n1055) );
  NOR2_X1 U13196 ( .A1(n1055), .A2(in3[0]), .ZN(n1056) );
  NOR2_X1 U13197 ( .A1(n1057), .A2(n1056), .ZN(n1058) );
  NOR2_X1 U13198 ( .A1(n1059), .A2(n1058), .ZN(n1060) );
  NAND2_X1 U13199 ( .A1(n1060), .A2(in2[2]), .ZN(n1061) );
  NAND2_X1 U13200 ( .A1(n1062), .A2(n1061), .ZN(CF_Out_MSB[23]) );
  XNOR2_X1 U13201 ( .A(n1624), .B(r[70]), .ZN(n1066) );
  INV_X1 U13202 ( .A(in2[1]), .ZN(n1616) );
  INV_X1 U13203 ( .A(in3[0]), .ZN(n1558) );
  NAND2_X1 U13204 ( .A1(n1616), .A2(n1558), .ZN(n1311) );
  INV_X1 U13205 ( .A(in2[2]), .ZN(n1584) );
  NOR2_X1 U13206 ( .A1(n1616), .A2(n1558), .ZN(n1564) );
  NOR2_X1 U13207 ( .A1(in1[3]), .A2(n1564), .ZN(n1063) );
  NOR2_X1 U13208 ( .A1(n1584), .A2(n1063), .ZN(n1064) );
  NAND2_X1 U13209 ( .A1(n1311), .A2(n1064), .ZN(n1065) );
  XNOR2_X1 U13210 ( .A(n1066), .B(n1065), .ZN(n1067) );
  XOR2_X1 U13211 ( .A(r[71]), .B(n1067), .Z(CF_Out_MSB[22]) );
  NOR2_X1 U13212 ( .A1(in1[0]), .A2(n1591), .ZN(n1484) );
  NOR2_X1 U13213 ( .A1(in1[0]), .A2(n1633), .ZN(n1516) );
  NOR2_X1 U13214 ( .A1(n1591), .A2(in1[3]), .ZN(n1068) );
  NOR2_X1 U13215 ( .A1(n1516), .A2(n1068), .ZN(n1069) );
  NOR2_X1 U13216 ( .A1(n1484), .A2(n1069), .ZN(n1070) );
  NAND2_X1 U13217 ( .A1(n1070), .A2(in2[2]), .ZN(n1072) );
  XNOR2_X1 U13218 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[63]), .ZN(n1071) );
  XNOR2_X1 U13219 ( .A(n1071), .B(r[64]), .ZN(n1076) );
  NAND2_X1 U13220 ( .A1(n1072), .A2(n1076), .ZN(n1079) );
  NAND2_X1 U13221 ( .A1(in1[0]), .A2(n1633), .ZN(n1515) );
  NOR2_X1 U13222 ( .A1(n1515), .A2(n1591), .ZN(n1074) );
  NAND2_X1 U13223 ( .A1(in1[3]), .A2(n1591), .ZN(n1485) );
  NOR2_X1 U13224 ( .A1(n1485), .A2(in1[0]), .ZN(n1073) );
  NOR2_X1 U13225 ( .A1(n1074), .A2(n1073), .ZN(n1075) );
  NOR2_X1 U13226 ( .A1(n1076), .A2(n1075), .ZN(n1077) );
  NAND2_X1 U13227 ( .A1(n1077), .A2(in2[2]), .ZN(n1078) );
  NAND2_X1 U13228 ( .A1(n1079), .A2(n1078), .ZN(CF_Out_MSB[15]) );
  NOR2_X1 U13229 ( .A1(in1[2]), .A2(n1427), .ZN(n1080) );
  XNOR2_X1 U13230 ( .A(n1080), .B(n1633), .ZN(n1081) );
  NAND2_X1 U13231 ( .A1(in1[2]), .A2(n1503), .ZN(n1175) );
  NAND2_X1 U13232 ( .A1(n1081), .A2(n1175), .ZN(n1082) );
  NAND2_X1 U13233 ( .A1(n1082), .A2(n1515), .ZN(n1085) );
  XNOR2_X1 U13234 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[55]), .ZN(n1083) );
  XNOR2_X1 U13235 ( .A(n1083), .B(r[54]), .ZN(n1084) );
  XNOR2_X1 U13236 ( .A(n1085), .B(n1084), .ZN(CF_Out_MSB[0]) );
  XOR2_X1 U13237 ( .A(r[37]), .B(r[36]), .Z(n1088) );
  XNOR2_X1 U13238 ( .A(in1[3]), .B(in3[2]), .ZN(n1235) );
  NAND2_X1 U13239 ( .A1(n1510), .A2(n1235), .ZN(n1086) );
  NAND2_X1 U13240 ( .A1(in2[1]), .A2(n1086), .ZN(n1087) );
  XNOR2_X1 U13241 ( .A(n1088), .B(n1087), .ZN(n1089) );
  XOR2_X1 U13242 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1089), .Z(
        \CF_Out[2][9] ) );
  XNOR2_X1 U13243 ( .A(r[36]), .B(r[35]), .ZN(n1091) );
  NOR2_X1 U13244 ( .A1(n1628), .A2(n1235), .ZN(n1090) );
  XNOR2_X1 U13245 ( .A(n1091), .B(n1090), .ZN(n1092) );
  XOR2_X1 U13246 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1092), .Z(
        \CF_Out[2][8] ) );
  NAND2_X1 U13247 ( .A1(in3[1]), .A2(in3[0]), .ZN(n1093) );
  NOR2_X1 U13248 ( .A1(in3[3]), .A2(n1093), .ZN(n1094) );
  NOR2_X1 U13249 ( .A1(n1095), .A2(n1094), .ZN(n1096) );
  XOR2_X1 U13250 ( .A(n1096), .B(r[27]), .Z(n1098) );
  XNOR2_X1 U13251 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(in3[2]), .ZN(
        n1097) );
  XNOR2_X1 U13252 ( .A(n1098), .B(n1097), .ZN(n1099) );
  XNOR2_X1 U13253 ( .A(r[53]), .B(n1099), .ZN(\CF_Out[2][26] ) );
  XOR2_X1 U13254 ( .A(r[46]), .B(r[45]), .Z(n1102) );
  XNOR2_X1 U13255 ( .A(in1[2]), .B(in3[3]), .ZN(n1318) );
  NAND2_X1 U13256 ( .A1(n1510), .A2(n1318), .ZN(n1100) );
  NAND2_X1 U13257 ( .A1(in3[1]), .A2(n1100), .ZN(n1101) );
  XNOR2_X1 U13258 ( .A(n1102), .B(n1101), .ZN(n1103) );
  XOR2_X1 U13259 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1103), .Z(
        \CF_Out[2][18] ) );
  XOR2_X1 U13260 ( .A(r[45]), .B(r[44]), .Z(n1105) );
  XNOR2_X1 U13261 ( .A(in2[3]), .B(n1565), .ZN(n1436) );
  NAND2_X1 U13262 ( .A1(n1564), .A2(n1436), .ZN(n1104) );
  XNOR2_X1 U13263 ( .A(n1105), .B(n1104), .ZN(n1106) );
  XOR2_X1 U13264 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1106), .Z(
        \CF_Out[2][17] ) );
  XOR2_X1 U13265 ( .A(r[28]), .B(r[27]), .Z(n1110) );
  NAND2_X1 U13266 ( .A1(in1[3]), .A2(in1[1]), .ZN(n1194) );
  NOR2_X1 U13267 ( .A1(in1[0]), .A2(n1194), .ZN(n1107) );
  NOR2_X1 U13268 ( .A1(n1528), .A2(n1107), .ZN(n1108) );
  NAND2_X1 U13269 ( .A1(n1108), .A2(n1175), .ZN(n1109) );
  XNOR2_X1 U13270 ( .A(n1110), .B(n1109), .ZN(n1111) );
  XNOR2_X1 U13271 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1111), .ZN(
        \CF_Out[2][0] ) );
  NOR2_X1 U13272 ( .A1(in1[0]), .A2(n1565), .ZN(n1416) );
  XNOR2_X1 U13273 ( .A(n1633), .B(n1416), .ZN(n1112) );
  NAND2_X1 U13274 ( .A1(n1112), .A2(in2[1]), .ZN(n1115) );
  XNOR2_X1 U13275 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[91]), .ZN(n1113) );
  XNOR2_X1 U13276 ( .A(n1113), .B(r[90]), .ZN(n1114) );
  XNOR2_X1 U13277 ( .A(n1115), .B(n1114), .ZN(\CF_Out[1][9] ) );
  XNOR2_X1 U13278 ( .A(r[90]), .B(r[89]), .ZN(n1118) );
  XNOR2_X1 U13279 ( .A(in1[3]), .B(n1628), .ZN(n1116) );
  NAND2_X1 U13280 ( .A1(n1116), .A2(in3[2]), .ZN(n1117) );
  XNOR2_X1 U13281 ( .A(n1118), .B(n1117), .ZN(n1119) );
  XNOR2_X1 U13282 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1119), .ZN(
        \CF_Out[1][8] ) );
  XNOR2_X1 U13283 ( .A(r[89]), .B(r[88]), .ZN(n1121) );
  NOR2_X1 U13284 ( .A1(n1628), .A2(n1584), .ZN(n1120) );
  XNOR2_X1 U13285 ( .A(n1121), .B(n1120), .ZN(n1122) );
  XNOR2_X1 U13286 ( .A(n1122), .B(n1624), .ZN(\CF_Out[1][7] ) );
  XNOR2_X1 U13287 ( .A(r[88]), .B(r[87]), .ZN(n1124) );
  NOR2_X1 U13288 ( .A1(n1628), .A2(n1613), .ZN(n1123) );
  XNOR2_X1 U13289 ( .A(n1124), .B(n1123), .ZN(n1125) );
  XOR2_X1 U13290 ( .A(n1570), .B(n1125), .Z(\CF_Out[1][6] ) );
  XOR2_X1 U13291 ( .A(r[85]), .B(r[86]), .Z(n1127) );
  INV_X1 U13292 ( .A(in2[0]), .ZN(n1635) );
  NOR2_X1 U13293 ( .A1(n1503), .A2(n1635), .ZN(n1384) );
  NAND2_X1 U13294 ( .A1(n1384), .A2(in3[2]), .ZN(n1126) );
  XNOR2_X1 U13295 ( .A(n1127), .B(n1126), .ZN(n1128) );
  XNOR2_X1 U13296 ( .A(n1128), .B(n1642), .ZN(\CF_Out[1][4] ) );
  XOR2_X1 U13297 ( .A(in3[3]), .B(n1272), .Z(n1129) );
  NOR2_X1 U13298 ( .A1(n1565), .A2(n1129), .ZN(n1130) );
  XNOR2_X1 U13299 ( .A(n1130), .B(r[81]), .ZN(n1132) );
  XOR2_X1 U13300 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[107]), .Z(n1131)
         );
  XNOR2_X1 U13301 ( .A(n1132), .B(n1131), .ZN(\CF_Out[1][26] ) );
  XNOR2_X1 U13302 ( .A(r[104]), .B(r[103]), .ZN(n1134) );
  NOR2_X1 U13303 ( .A1(n1552), .A2(n1565), .ZN(n1133) );
  XNOR2_X1 U13304 ( .A(n1134), .B(n1133), .ZN(n1135) );
  XNOR2_X1 U13305 ( .A(n1135), .B(n1642), .ZN(\CF_Out[1][22] ) );
  XNOR2_X1 U13306 ( .A(r[100]), .B(r[99]), .ZN(n1140) );
  NOR2_X1 U13307 ( .A1(n1613), .A2(n1591), .ZN(n1289) );
  NAND2_X1 U13308 ( .A1(in3[3]), .A2(n1510), .ZN(n1615) );
  NAND2_X1 U13309 ( .A1(n1289), .A2(n1615), .ZN(n1136) );
  NAND2_X1 U13310 ( .A1(n1613), .A2(n1591), .ZN(n1461) );
  NAND2_X1 U13311 ( .A1(n1136), .A2(n1461), .ZN(n1138) );
  INV_X1 U13312 ( .A(n1484), .ZN(n1590) );
  NAND2_X1 U13313 ( .A1(n1590), .A2(n1599), .ZN(n1137) );
  NAND2_X1 U13314 ( .A1(n1138), .A2(n1137), .ZN(n1139) );
  XNOR2_X1 U13315 ( .A(n1140), .B(n1139), .ZN(n1141) );
  XNOR2_X1 U13316 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1141), .ZN(
        \CF_Out[1][18] ) );
  XOR2_X1 U13317 ( .A(n1564), .B(n1582), .Z(n1142) );
  NOR2_X1 U13318 ( .A1(n1565), .A2(n1142), .ZN(n1143) );
  XNOR2_X1 U13319 ( .A(n1143), .B(r[98]), .ZN(n1145) );
  XOR2_X1 U13320 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[99]), .Z(n1144)
         );
  XNOR2_X1 U13321 ( .A(n1145), .B(n1144), .ZN(\CF_Out[1][17] ) );
  XOR2_X1 U13322 ( .A(r[98]), .B(r[97]), .Z(n1147) );
  NAND2_X1 U13323 ( .A1(n1564), .A2(in2[2]), .ZN(n1146) );
  XNOR2_X1 U13324 ( .A(n1147), .B(n1146), .ZN(n1148) );
  XNOR2_X1 U13325 ( .A(n1148), .B(n1624), .ZN(\CF_Out[1][16] ) );
  XOR2_X1 U13326 ( .A(r[97]), .B(r[96]), .Z(n1150) );
  NAND2_X1 U13327 ( .A1(n1564), .A2(in1[2]), .ZN(n1149) );
  XNOR2_X1 U13328 ( .A(n1150), .B(n1149), .ZN(n1151) );
  XOR2_X1 U13329 ( .A(n1570), .B(n1151), .Z(\CF_Out[1][15] ) );
  XOR2_X1 U13330 ( .A(r[82]), .B(r[81]), .Z(n1156) );
  NOR2_X1 U13331 ( .A1(n1613), .A2(n1495), .ZN(n1153) );
  NOR2_X1 U13332 ( .A1(in1[2]), .A2(in1[3]), .ZN(n1152) );
  NOR2_X1 U13333 ( .A1(n1153), .A2(n1152), .ZN(n1154) );
  NAND2_X1 U13334 ( .A1(n1154), .A2(n1194), .ZN(n1155) );
  XNOR2_X1 U13335 ( .A(n1156), .B(n1155), .ZN(n1157) );
  XNOR2_X1 U13336 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1157), .ZN(
        \CF_Out[1][0] ) );
  NAND2_X1 U13337 ( .A1(in1[1]), .A2(n1633), .ZN(n1625) );
  NOR2_X1 U13338 ( .A1(n1633), .A2(n1565), .ZN(n1248) );
  INV_X1 U13339 ( .A(n1248), .ZN(n1158) );
  NAND2_X1 U13340 ( .A1(n1625), .A2(n1158), .ZN(n1159) );
  NAND2_X1 U13341 ( .A1(n1159), .A2(in2[0]), .ZN(n1162) );
  XNOR2_X1 U13342 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[9]), .ZN(n1160)
         );
  XNOR2_X1 U13343 ( .A(n1160), .B(r[10]), .ZN(n1161) );
  XNOR2_X1 U13344 ( .A(n1162), .B(n1161), .ZN(\CF_Out[0][9] ) );
  XNOR2_X1 U13345 ( .A(in3[1]), .B(in3[2]), .ZN(n1164) );
  NAND2_X1 U13346 ( .A1(in1[0]), .A2(in1[3]), .ZN(n1163) );
  NOR2_X1 U13347 ( .A1(n1164), .A2(n1163), .ZN(n1165) );
  XOR2_X1 U13348 ( .A(r[9]), .B(n1165), .Z(n1167) );
  XNOR2_X1 U13349 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[8]), .ZN(n1166)
         );
  XNOR2_X1 U13350 ( .A(n1167), .B(n1166), .ZN(\CF_Out[0][8] ) );
  NAND2_X1 U13351 ( .A1(in3[3]), .A2(in3[0]), .ZN(n1547) );
  NAND2_X1 U13352 ( .A1(n1547), .A2(in3[1]), .ZN(n1168) );
  NAND2_X1 U13353 ( .A1(n1168), .A2(n1565), .ZN(n1169) );
  NAND2_X1 U13354 ( .A1(n1170), .A2(n1169), .ZN(n1171) );
  INV_X1 U13355 ( .A(n1272), .ZN(n1285) );
  NOR2_X1 U13356 ( .A1(n1171), .A2(n1285), .ZN(n1174) );
  XOR2_X1 U13357 ( .A(r[0]), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n1172)
         );
  XNOR2_X1 U13358 ( .A(r[26]), .B(n1172), .ZN(n1173) );
  XNOR2_X1 U13359 ( .A(n1174), .B(n1173), .ZN(\CF_Out[0][26] ) );
  XNOR2_X1 U13360 ( .A(r[19]), .B(r[18]), .ZN(n1182) );
  NAND2_X1 U13361 ( .A1(in3[3]), .A2(n1175), .ZN(n1176) );
  NAND2_X1 U13362 ( .A1(n1176), .A2(in3[0]), .ZN(n1180) );
  NOR2_X1 U13363 ( .A1(in1[1]), .A2(in3[3]), .ZN(n1448) );
  NOR2_X1 U13364 ( .A1(n1613), .A2(n1558), .ZN(n1177) );
  NOR2_X1 U13365 ( .A1(n1443), .A2(n1177), .ZN(n1178) );
  NOR2_X1 U13366 ( .A1(n1448), .A2(n1178), .ZN(n1179) );
  NAND2_X1 U13367 ( .A1(n1180), .A2(n1179), .ZN(n1181) );
  XNOR2_X1 U13368 ( .A(n1182), .B(n1181), .ZN(n1183) );
  XNOR2_X1 U13369 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1183), .ZN(
        \CF_Out[0][18] ) );
  NAND2_X1 U13370 ( .A1(in2[3]), .A2(in2[0]), .ZN(n1184) );
  NAND2_X1 U13371 ( .A1(n1184), .A2(in3[1]), .ZN(n1186) );
  NOR2_X1 U13372 ( .A1(n1582), .A2(n1565), .ZN(n1433) );
  NAND2_X1 U13373 ( .A1(n1433), .A2(in2[0]), .ZN(n1185) );
  NAND2_X1 U13374 ( .A1(n1186), .A2(n1185), .ZN(n1188) );
  XOR2_X1 U13375 ( .A(r[18]), .B(r[17]), .Z(n1187) );
  XNOR2_X1 U13376 ( .A(n1188), .B(n1187), .ZN(n1189) );
  XNOR2_X1 U13377 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1189), .ZN(
        \CF_Out[0][17] ) );
  NAND2_X1 U13378 ( .A1(n1633), .A2(n1503), .ZN(n1196) );
  NAND2_X1 U13379 ( .A1(in1[0]), .A2(n1196), .ZN(n1191) );
  XOR2_X1 U13380 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[1]), .Z(n1190)
         );
  XNOR2_X1 U13381 ( .A(r[0]), .B(n1190), .ZN(n1197) );
  XNOR2_X1 U13382 ( .A(n1191), .B(n1197), .ZN(n1193) );
  NAND2_X1 U13383 ( .A1(n1613), .A2(n1196), .ZN(n1192) );
  NAND2_X1 U13384 ( .A1(n1193), .A2(n1192), .ZN(n1206) );
  NAND2_X1 U13385 ( .A1(n1515), .A2(n1194), .ZN(n1195) );
  NAND2_X1 U13386 ( .A1(n1195), .A2(n1197), .ZN(n1203) );
  INV_X1 U13387 ( .A(n1196), .ZN(n1198) );
  NOR2_X1 U13388 ( .A1(n1198), .A2(n1197), .ZN(n1201) );
  NAND2_X1 U13389 ( .A1(n1510), .A2(n1633), .ZN(n1199) );
  NAND2_X1 U13390 ( .A1(in1[1]), .A2(n1199), .ZN(n1200) );
  NAND2_X1 U13391 ( .A1(n1201), .A2(n1200), .ZN(n1202) );
  NAND2_X1 U13392 ( .A1(n1203), .A2(n1202), .ZN(n1204) );
  NAND2_X1 U13393 ( .A1(n1204), .A2(n1613), .ZN(n1205) );
  NAND2_X1 U13394 ( .A1(n1206), .A2(n1205), .ZN(\CF_Out[0][0] ) );
  XOR2_X1 U13395 ( .A(r[42]), .B(r[43]), .Z(n1208) );
  NAND2_X1 U13396 ( .A1(n1564), .A2(n1318), .ZN(n1207) );
  XNOR2_X1 U13397 ( .A(n1208), .B(n1207), .ZN(n1209) );
  XOR2_X1 U13398 ( .A(n1570), .B(n1209), .Z(\CF_Out[2][15] ) );
  XNOR2_X1 U13399 ( .A(r[33]), .B(r[34]), .ZN(n1211) );
  XNOR2_X1 U13400 ( .A(in1[2]), .B(n1582), .ZN(n1475) );
  NOR2_X1 U13401 ( .A1(n1628), .A2(n1475), .ZN(n1210) );
  XNOR2_X1 U13402 ( .A(n1211), .B(n1210), .ZN(n1212) );
  XOR2_X1 U13403 ( .A(n1570), .B(n1212), .Z(\CF_Out[2][6] ) );
  XNOR2_X1 U13404 ( .A(r[105]), .B(r[106]), .ZN(n1213) );
  NAND2_X1 U13405 ( .A1(in2[2]), .A2(n1285), .ZN(n1559) );
  XNOR2_X1 U13406 ( .A(n1213), .B(n1559), .ZN(n1214) );
  XNOR2_X1 U13407 ( .A(n1570), .B(n1214), .ZN(\CF_Out[1][24] ) );
  NOR2_X1 U13408 ( .A1(n1582), .A2(n1584), .ZN(n1333) );
  INV_X1 U13409 ( .A(n1333), .ZN(n1215) );
  NAND2_X1 U13410 ( .A1(n1215), .A2(n1557), .ZN(n1216) );
  NAND2_X1 U13411 ( .A1(n1216), .A2(in3[0]), .ZN(n1218) );
  XNOR2_X1 U13412 ( .A(r[24]), .B(r[25]), .ZN(n1217) );
  XNOR2_X1 U13413 ( .A(n1218), .B(n1217), .ZN(n1219) );
  XNOR2_X1 U13414 ( .A(n1570), .B(n1219), .ZN(\CF_Out[0][24] ) );
  NOR2_X1 U13415 ( .A1(n1599), .A2(n1635), .ZN(n1442) );
  NAND2_X1 U13416 ( .A1(n1442), .A2(in1[2]), .ZN(n1221) );
  INV_X1 U13417 ( .A(n1552), .ZN(n1357) );
  NAND2_X1 U13418 ( .A1(n1357), .A2(n1599), .ZN(n1220) );
  NAND2_X1 U13419 ( .A1(n1221), .A2(n1220), .ZN(n1222) );
  XNOR2_X1 U13420 ( .A(n1222), .B(r[15]), .ZN(n1224) );
  XOR2_X1 U13421 ( .A(n1570), .B(r[16]), .Z(n1223) );
  XNOR2_X1 U13422 ( .A(n1224), .B(n1223), .ZN(\CF_Out[0][15] ) );
  NOR2_X1 U13423 ( .A1(in2[3]), .A2(n1510), .ZN(n1526) );
  XNOR2_X1 U13424 ( .A(in1[2]), .B(n1526), .ZN(n1226) );
  NOR2_X1 U13425 ( .A1(in1[0]), .A2(n1582), .ZN(n1479) );
  XNOR2_X1 U13426 ( .A(in3[1]), .B(n1479), .ZN(n1225) );
  NOR2_X1 U13427 ( .A1(n1226), .A2(n1225), .ZN(n1227) );
  XOR2_X1 U13428 ( .A(n1227), .B(r[7]), .Z(n1229) );
  XNOR2_X1 U13429 ( .A(r[6]), .B(n1570), .ZN(n1228) );
  XNOR2_X1 U13430 ( .A(n1229), .B(n1228), .ZN(\CF_Out[0][6] ) );
  NAND2_X1 U13431 ( .A1(n1443), .A2(n1558), .ZN(n1231) );
  NOR2_X1 U13432 ( .A1(n1448), .A2(n1584), .ZN(n1230) );
  NAND2_X1 U13433 ( .A1(n1231), .A2(n1230), .ZN(n1234) );
  XNOR2_X1 U13434 ( .A(n1570), .B(r[69]), .ZN(n1232) );
  XNOR2_X1 U13435 ( .A(n1232), .B(r[70]), .ZN(n1233) );
  XNOR2_X1 U13436 ( .A(n1234), .B(n1233), .ZN(CF_Out_MSB[21]) );
  XNOR2_X1 U13437 ( .A(r[49]), .B(r[50]), .ZN(n1237) );
  NOR2_X1 U13438 ( .A1(n1552), .A2(n1235), .ZN(n1236) );
  XNOR2_X1 U13439 ( .A(n1237), .B(n1236), .ZN(n1238) );
  XNOR2_X1 U13440 ( .A(n1238), .B(n1642), .ZN(\CF_Out[2][22] ) );
  NAND2_X1 U13441 ( .A1(in2[1]), .A2(in2[0]), .ZN(n1576) );
  NOR2_X1 U13442 ( .A1(n1576), .A2(n1633), .ZN(n1239) );
  NAND2_X1 U13443 ( .A1(in2[0]), .A2(n1616), .ZN(n1585) );
  NOR2_X1 U13444 ( .A1(n1613), .A2(n1585), .ZN(n1257) );
  NOR2_X1 U13445 ( .A1(n1239), .A2(n1257), .ZN(n1240) );
  XNOR2_X1 U13446 ( .A(n1240), .B(n1642), .ZN(n1242) );
  XOR2_X1 U13447 ( .A(r[41]), .B(r[40]), .Z(n1241) );
  XNOR2_X1 U13448 ( .A(n1242), .B(n1241), .ZN(\CF_Out[2][13] ) );
  XOR2_X1 U13449 ( .A(r[31]), .B(r[32]), .Z(n1244) );
  NAND2_X1 U13450 ( .A1(n1384), .A2(n1436), .ZN(n1243) );
  XNOR2_X1 U13451 ( .A(n1244), .B(n1243), .ZN(n1245) );
  XNOR2_X1 U13452 ( .A(n1245), .B(n1642), .ZN(\CF_Out[2][4] ) );
  XNOR2_X1 U13453 ( .A(r[94]), .B(r[95]), .ZN(n1247) );
  XNOR2_X1 U13454 ( .A(n1642), .B(n1257), .ZN(n1246) );
  XNOR2_X1 U13455 ( .A(n1247), .B(n1246), .ZN(\CF_Out[1][13] ) );
  XNOR2_X1 U13456 ( .A(r[23]), .B(r[22]), .ZN(n1255) );
  NOR2_X1 U13457 ( .A1(in2[1]), .A2(n1248), .ZN(n1252) );
  NAND2_X1 U13458 ( .A1(in1[3]), .A2(in3[0]), .ZN(n1626) );
  NAND2_X1 U13459 ( .A1(n1565), .A2(n1626), .ZN(n1250) );
  NAND2_X1 U13460 ( .A1(n1248), .A2(n1311), .ZN(n1249) );
  NAND2_X1 U13461 ( .A1(n1250), .A2(n1249), .ZN(n1251) );
  NOR2_X1 U13462 ( .A1(n1252), .A2(n1251), .ZN(n1253) );
  XNOR2_X1 U13463 ( .A(n1253), .B(n1642), .ZN(n1254) );
  XNOR2_X1 U13464 ( .A(n1255), .B(n1254), .ZN(\CF_Out[0][22] ) );
  NOR2_X1 U13465 ( .A1(in1[2]), .A2(n1576), .ZN(n1256) );
  NOR2_X1 U13466 ( .A1(n1257), .A2(n1256), .ZN(n1258) );
  NOR2_X1 U13467 ( .A1(n1633), .A2(n1258), .ZN(n1259) );
  XNOR2_X1 U13468 ( .A(r[14]), .B(n1259), .ZN(n1261) );
  XNOR2_X1 U13469 ( .A(n1642), .B(r[13]), .ZN(n1260) );
  XNOR2_X1 U13470 ( .A(n1261), .B(n1260), .ZN(\CF_Out[0][13] ) );
  XNOR2_X1 U13471 ( .A(in2[1]), .B(in3[2]), .ZN(n1263) );
  NAND2_X1 U13472 ( .A1(in2[3]), .A2(in1[0]), .ZN(n1262) );
  NOR2_X1 U13473 ( .A1(n1263), .A2(n1262), .ZN(n1264) );
  XNOR2_X1 U13474 ( .A(r[4]), .B(n1264), .ZN(n1265) );
  XNOR2_X1 U13475 ( .A(n1265), .B(n1642), .ZN(n1266) );
  XNOR2_X1 U13476 ( .A(r[5]), .B(n1266), .ZN(\CF_Out[0][4] ) );
  XNOR2_X1 U13477 ( .A(n1642), .B(r[59]), .ZN(n1270) );
  NOR2_X1 U13478 ( .A1(in2[3]), .A2(n1357), .ZN(n1267) );
  NOR2_X1 U13479 ( .A1(n1391), .A2(n1267), .ZN(n1268) );
  NAND2_X1 U13480 ( .A1(n1268), .A2(in1[2]), .ZN(n1269) );
  XNOR2_X1 U13481 ( .A(n1270), .B(n1269), .ZN(n1271) );
  XOR2_X1 U13482 ( .A(r[58]), .B(n1271), .Z(CF_Out_MSB[4]) );
  NAND2_X1 U13483 ( .A1(n1272), .A2(n1626), .ZN(n1273) );
  NAND2_X1 U13484 ( .A1(n1273), .A2(n1461), .ZN(n1274) );
  XNOR2_X1 U13485 ( .A(n1274), .B(r[52]), .ZN(n1275) );
  XOR2_X1 U13486 ( .A(r[53]), .B(n1275), .Z(n1276) );
  XNOR2_X1 U13487 ( .A(n1624), .B(n1276), .ZN(\CF_Out[2][25] ) );
  XOR2_X1 U13488 ( .A(r[44]), .B(r[43]), .Z(n1278) );
  XNOR2_X1 U13489 ( .A(in1[3]), .B(n1584), .ZN(n1471) );
  NAND2_X1 U13490 ( .A1(n1564), .A2(n1471), .ZN(n1277) );
  XNOR2_X1 U13491 ( .A(n1278), .B(n1277), .ZN(n1279) );
  XNOR2_X1 U13492 ( .A(n1279), .B(n1624), .ZN(\CF_Out[2][16] ) );
  XOR2_X1 U13493 ( .A(r[35]), .B(r[34]), .Z(n1283) );
  INV_X1 U13494 ( .A(n1628), .ZN(n1281) );
  NAND2_X1 U13495 ( .A1(in2[2]), .A2(n1599), .ZN(n1389) );
  NAND2_X1 U13496 ( .A1(in3[3]), .A2(n1584), .ZN(n1280) );
  NAND2_X1 U13497 ( .A1(n1389), .A2(n1280), .ZN(n1408) );
  NAND2_X1 U13498 ( .A1(n1281), .A2(n1408), .ZN(n1282) );
  XNOR2_X1 U13499 ( .A(n1283), .B(n1282), .ZN(n1284) );
  XNOR2_X1 U13500 ( .A(n1284), .B(n1624), .ZN(\CF_Out[2][7] ) );
  XOR2_X1 U13501 ( .A(r[107]), .B(r[106]), .Z(n1287) );
  NAND2_X1 U13502 ( .A1(n1285), .A2(in1[2]), .ZN(n1286) );
  XNOR2_X1 U13503 ( .A(n1287), .B(n1286), .ZN(n1288) );
  XNOR2_X1 U13504 ( .A(n1288), .B(n1624), .ZN(\CF_Out[1][25] ) );
  XNOR2_X1 U13505 ( .A(n1624), .B(r[25]), .ZN(n1292) );
  NOR2_X1 U13506 ( .A1(n1289), .A2(n1626), .ZN(n1290) );
  NAND2_X1 U13507 ( .A1(n1461), .A2(n1290), .ZN(n1291) );
  XNOR2_X1 U13508 ( .A(n1292), .B(n1291), .ZN(n1293) );
  XOR2_X1 U13509 ( .A(r[26]), .B(n1293), .Z(\CF_Out[0][25] ) );
  XNOR2_X1 U13510 ( .A(r[16]), .B(r[17]), .ZN(n1304) );
  NOR2_X1 U13511 ( .A1(n1294), .A2(in2[0]), .ZN(n1301) );
  INV_X1 U13512 ( .A(n1294), .ZN(n1295) );
  NOR2_X1 U13513 ( .A1(in2[2]), .A2(n1295), .ZN(n1297) );
  NOR2_X1 U13514 ( .A1(in1[3]), .A2(in3[1]), .ZN(n1296) );
  NOR2_X1 U13515 ( .A1(n1297), .A2(n1296), .ZN(n1299) );
  NOR2_X1 U13516 ( .A1(n1633), .A2(n1584), .ZN(n1298) );
  NAND2_X1 U13517 ( .A1(in2[0]), .A2(n1298), .ZN(n1637) );
  NAND2_X1 U13518 ( .A1(n1299), .A2(n1637), .ZN(n1300) );
  NOR2_X1 U13519 ( .A1(n1301), .A2(n1300), .ZN(n1302) );
  XNOR2_X1 U13520 ( .A(n1302), .B(n1624), .ZN(n1303) );
  XNOR2_X1 U13521 ( .A(n1304), .B(n1303), .ZN(\CF_Out[0][16] ) );
  XNOR2_X1 U13522 ( .A(r[8]), .B(r[7]), .ZN(n1308) );
  NOR2_X1 U13523 ( .A1(n1510), .A2(n1599), .ZN(n1612) );
  XNOR2_X1 U13524 ( .A(n1591), .B(in2[2]), .ZN(n1305) );
  NAND2_X1 U13525 ( .A1(n1612), .A2(n1305), .ZN(n1306) );
  XOR2_X1 U13526 ( .A(n1624), .B(n1306), .Z(n1307) );
  XNOR2_X1 U13527 ( .A(n1308), .B(n1307), .ZN(\CF_Out[0][7] ) );
  XNOR2_X1 U13528 ( .A(n1624), .B(r[61]), .ZN(n1313) );
  NOR2_X1 U13529 ( .A1(in3[3]), .A2(n1564), .ZN(n1309) );
  NOR2_X1 U13530 ( .A1(n1613), .A2(n1309), .ZN(n1310) );
  NAND2_X1 U13531 ( .A1(n1311), .A2(n1310), .ZN(n1312) );
  XNOR2_X1 U13532 ( .A(n1313), .B(n1312), .ZN(n1314) );
  XOR2_X1 U13533 ( .A(r[62]), .B(n1314), .Z(CF_Out_MSB[7]) );
  XOR2_X1 U13534 ( .A(r[50]), .B(r[51]), .Z(n1316) );
  NAND2_X1 U13535 ( .A1(n1357), .A2(n1408), .ZN(n1315) );
  XNOR2_X1 U13536 ( .A(n1316), .B(n1315), .ZN(n1317) );
  XOR2_X1 U13537 ( .A(n1610), .B(n1317), .Z(\CF_Out[2][23] ) );
  INV_X1 U13538 ( .A(n1384), .ZN(n1353) );
  NOR2_X1 U13539 ( .A1(n1318), .A2(n1353), .ZN(n1321) );
  XOR2_X1 U13540 ( .A(n1610), .B(r[33]), .Z(n1319) );
  XNOR2_X1 U13541 ( .A(r[32]), .B(n1319), .ZN(n1320) );
  XNOR2_X1 U13542 ( .A(n1321), .B(n1320), .ZN(\CF_Out[2][5] ) );
  XNOR2_X1 U13543 ( .A(r[96]), .B(r[95]), .ZN(n1324) );
  XNOR2_X1 U13544 ( .A(in2[3]), .B(n1585), .ZN(n1322) );
  NAND2_X1 U13545 ( .A1(n1322), .A2(in2[2]), .ZN(n1323) );
  XNOR2_X1 U13546 ( .A(n1324), .B(n1323), .ZN(n1325) );
  XNOR2_X1 U13547 ( .A(n1610), .B(n1325), .ZN(\CF_Out[1][14] ) );
  XOR2_X1 U13548 ( .A(r[87]), .B(r[86]), .Z(n1327) );
  NAND2_X1 U13549 ( .A1(n1384), .A2(in1[2]), .ZN(n1326) );
  XNOR2_X1 U13550 ( .A(n1327), .B(n1326), .ZN(n1328) );
  XOR2_X1 U13551 ( .A(n1610), .B(n1328), .Z(\CF_Out[1][5] ) );
  NOR2_X1 U13552 ( .A1(in2[3]), .A2(in2[2]), .ZN(n1331) );
  NAND2_X1 U13553 ( .A1(in2[1]), .A2(in2[3]), .ZN(n1329) );
  NOR2_X1 U13554 ( .A1(in2[0]), .A2(n1329), .ZN(n1330) );
  NOR2_X1 U13555 ( .A1(n1331), .A2(n1330), .ZN(n1332) );
  NAND2_X1 U13556 ( .A1(in2[0]), .A2(n1333), .ZN(n1575) );
  NAND2_X1 U13557 ( .A1(n1332), .A2(n1575), .ZN(n1335) );
  NOR2_X1 U13558 ( .A1(in2[1]), .A2(n1333), .ZN(n1334) );
  NOR2_X1 U13559 ( .A1(n1335), .A2(n1334), .ZN(n1336) );
  XOR2_X1 U13560 ( .A(r[15]), .B(n1336), .Z(n1338) );
  XNOR2_X1 U13561 ( .A(n1610), .B(r[14]), .ZN(n1337) );
  XNOR2_X1 U13562 ( .A(n1338), .B(n1337), .ZN(\CF_Out[0][14] ) );
  XNOR2_X1 U13563 ( .A(r[77]), .B(r[78]), .ZN(n1343) );
  NAND2_X1 U13564 ( .A1(n1635), .A2(n1616), .ZN(n1340) );
  NAND2_X1 U13565 ( .A1(n1576), .A2(n1599), .ZN(n1339) );
  NAND2_X1 U13566 ( .A1(n1340), .A2(n1339), .ZN(n1341) );
  NOR2_X1 U13567 ( .A1(n1341), .A2(n1565), .ZN(n1342) );
  XNOR2_X1 U13568 ( .A(n1343), .B(n1342), .ZN(n1344) );
  XOR2_X1 U13569 ( .A(n1610), .B(n1344), .Z(CF_Out_MSB[35]) );
  NAND2_X1 U13570 ( .A1(n1443), .A2(n1635), .ZN(n1346) );
  NOR2_X1 U13571 ( .A1(n1448), .A2(n1613), .ZN(n1345) );
  NAND2_X1 U13572 ( .A1(n1346), .A2(n1345), .ZN(n1349) );
  XNOR2_X1 U13573 ( .A(n1610), .B(r[60]), .ZN(n1347) );
  XNOR2_X1 U13574 ( .A(n1347), .B(r[59]), .ZN(n1348) );
  XNOR2_X1 U13575 ( .A(n1349), .B(n1348), .ZN(CF_Out_MSB[5]) );
  XNOR2_X1 U13576 ( .A(r[49]), .B(r[48]), .ZN(n1351) );
  NOR2_X1 U13577 ( .A1(n1552), .A2(n1475), .ZN(n1350) );
  XNOR2_X1 U13578 ( .A(n1351), .B(n1350), .ZN(n1352) );
  XOR2_X1 U13579 ( .A(n1546), .B(n1352), .Z(\CF_Out[2][21] ) );
  XNOR2_X1 U13580 ( .A(r[30]), .B(r[31]), .ZN(n1355) );
  NOR2_X1 U13581 ( .A1(n1471), .A2(n1353), .ZN(n1354) );
  XNOR2_X1 U13582 ( .A(n1355), .B(n1354), .ZN(n1356) );
  XOR2_X1 U13583 ( .A(n1546), .B(n1356), .Z(\CF_Out[2][3] ) );
  XOR2_X1 U13584 ( .A(r[103]), .B(r[102]), .Z(n1359) );
  NAND2_X1 U13585 ( .A1(n1357), .A2(in1[2]), .ZN(n1358) );
  XNOR2_X1 U13586 ( .A(n1359), .B(n1358), .ZN(n1360) );
  XOR2_X1 U13587 ( .A(n1546), .B(n1360), .Z(\CF_Out[1][21] ) );
  NOR2_X1 U13588 ( .A1(n1565), .A2(n1585), .ZN(n1542) );
  XOR2_X1 U13589 ( .A(r[94]), .B(n1542), .Z(n1361) );
  XNOR2_X1 U13590 ( .A(r[93]), .B(n1361), .ZN(n1362) );
  XNOR2_X1 U13591 ( .A(n1546), .B(n1362), .ZN(\CF_Out[1][12] ) );
  XOR2_X1 U13592 ( .A(n1384), .B(n1633), .Z(n1363) );
  NOR2_X1 U13593 ( .A1(n1584), .A2(n1363), .ZN(n1364) );
  XNOR2_X1 U13594 ( .A(n1364), .B(r[85]), .ZN(n1366) );
  XOR2_X1 U13595 ( .A(n1546), .B(r[84]), .Z(n1365) );
  XNOR2_X1 U13596 ( .A(n1366), .B(n1365), .ZN(\CF_Out[1][3] ) );
  NAND2_X1 U13597 ( .A1(in2[1]), .A2(n1582), .ZN(n1574) );
  NAND2_X1 U13598 ( .A1(in1[2]), .A2(in2[3]), .ZN(n1533) );
  NAND2_X1 U13599 ( .A1(n1574), .A2(n1533), .ZN(n1367) );
  NAND2_X1 U13600 ( .A1(n1367), .A2(in3[0]), .ZN(n1370) );
  XNOR2_X1 U13601 ( .A(n1546), .B(r[22]), .ZN(n1368) );
  XNOR2_X1 U13602 ( .A(n1368), .B(r[21]), .ZN(n1369) );
  XNOR2_X1 U13603 ( .A(n1370), .B(n1369), .ZN(\CF_Out[0][21] ) );
  XNOR2_X1 U13604 ( .A(n1546), .B(r[13]), .ZN(n1371) );
  XNOR2_X1 U13605 ( .A(n1371), .B(r[12]), .ZN(n1376) );
  NAND2_X1 U13606 ( .A1(in3[2]), .A2(in2[0]), .ZN(n1372) );
  XNOR2_X1 U13607 ( .A(n1372), .B(in2[1]), .ZN(n1374) );
  NAND2_X1 U13608 ( .A1(n1599), .A2(in2[0]), .ZN(n1373) );
  NAND2_X1 U13609 ( .A1(n1374), .A2(n1373), .ZN(n1375) );
  XNOR2_X1 U13610 ( .A(n1376), .B(n1375), .ZN(\CF_Out[0][12] ) );
  XNOR2_X1 U13611 ( .A(r[4]), .B(r[3]), .ZN(n1380) );
  NOR2_X1 U13612 ( .A1(n1510), .A2(n1584), .ZN(n1377) );
  XNOR2_X1 U13613 ( .A(n1377), .B(n1616), .ZN(n1378) );
  NAND2_X1 U13614 ( .A1(n1378), .A2(n1515), .ZN(n1379) );
  XNOR2_X1 U13615 ( .A(n1380), .B(n1379), .ZN(n1381) );
  XNOR2_X1 U13616 ( .A(n1546), .B(n1381), .ZN(\CF_Out[0][3] ) );
  XNOR2_X1 U13617 ( .A(n1546), .B(r[76]), .ZN(n1382) );
  XNOR2_X1 U13618 ( .A(n1382), .B(r[75]), .ZN(n1388) );
  NOR2_X1 U13619 ( .A1(in1[1]), .A2(n1582), .ZN(n1525) );
  NOR2_X1 U13620 ( .A1(in2[0]), .A2(in2[3]), .ZN(n1383) );
  NOR2_X1 U13621 ( .A1(n1525), .A2(n1383), .ZN(n1386) );
  NOR2_X1 U13622 ( .A1(n1565), .A2(n1384), .ZN(n1385) );
  NAND2_X1 U13623 ( .A1(n1386), .A2(n1385), .ZN(n1387) );
  XNOR2_X1 U13624 ( .A(n1388), .B(n1387), .ZN(CF_Out_MSB[33]) );
  XNOR2_X1 U13625 ( .A(n1546), .B(r[66]), .ZN(n1396) );
  NAND2_X1 U13626 ( .A1(n1389), .A2(n1552), .ZN(n1393) );
  NOR2_X1 U13627 ( .A1(n1552), .A2(n1584), .ZN(n1390) );
  NOR2_X1 U13628 ( .A1(n1391), .A2(n1390), .ZN(n1392) );
  NAND2_X1 U13629 ( .A1(n1393), .A2(n1392), .ZN(n1394) );
  XNOR2_X1 U13630 ( .A(n1394), .B(r[67]), .ZN(n1395) );
  XNOR2_X1 U13631 ( .A(n1396), .B(n1395), .ZN(CF_Out_MSB[18]) );
  NAND2_X1 U13632 ( .A1(n1616), .A2(in1[3]), .ZN(n1400) );
  NAND2_X1 U13633 ( .A1(in1[2]), .A2(n1576), .ZN(n1398) );
  NOR2_X1 U13634 ( .A1(in1[3]), .A2(in2[0]), .ZN(n1397) );
  NOR2_X1 U13635 ( .A1(n1398), .A2(n1397), .ZN(n1399) );
  NAND2_X1 U13636 ( .A1(n1400), .A2(n1399), .ZN(n1401) );
  XNOR2_X1 U13637 ( .A(n1401), .B(r[58]), .ZN(n1402) );
  XOR2_X1 U13638 ( .A(n1402), .B(in2[0]), .Z(n1404) );
  XNOR2_X1 U13639 ( .A(r[57]), .B(n1546), .ZN(n1403) );
  XNOR2_X1 U13640 ( .A(n1404), .B(n1403), .ZN(CF_Out_MSB[3]) );
  XOR2_X1 U13641 ( .A(r[48]), .B(r[47]), .Z(n1406) );
  NAND2_X1 U13642 ( .A1(n1436), .A2(n1484), .ZN(n1405) );
  XNOR2_X1 U13643 ( .A(n1406), .B(n1405), .ZN(n1407) );
  XOR2_X1 U13644 ( .A(n1603), .B(n1407), .Z(\CF_Out[2][20] ) );
  XOR2_X1 U13645 ( .A(r[39]), .B(r[38]), .Z(n1410) );
  NAND2_X1 U13646 ( .A1(in2[1]), .A2(n1510), .ZN(n1600) );
  INV_X1 U13647 ( .A(n1600), .ZN(n1519) );
  NAND2_X1 U13648 ( .A1(n1519), .A2(n1408), .ZN(n1409) );
  XNOR2_X1 U13649 ( .A(n1410), .B(n1409), .ZN(n1411) );
  XOR2_X1 U13650 ( .A(n1603), .B(n1411), .Z(\CF_Out[2][11] ) );
  XNOR2_X1 U13651 ( .A(n1603), .B(r[29]), .ZN(n1415) );
  XNOR2_X1 U13652 ( .A(n1615), .B(in3[2]), .ZN(n1412) );
  NAND2_X1 U13653 ( .A1(n1412), .A2(n1495), .ZN(n1413) );
  XNOR2_X1 U13654 ( .A(n1413), .B(r[30]), .ZN(n1414) );
  XNOR2_X1 U13655 ( .A(n1415), .B(n1414), .ZN(\CF_Out[2][2] ) );
  XOR2_X1 U13656 ( .A(n1416), .B(n1582), .Z(n1417) );
  NOR2_X1 U13657 ( .A1(n1591), .A2(n1417), .ZN(n1418) );
  XNOR2_X1 U13658 ( .A(n1418), .B(r[101]), .ZN(n1420) );
  XOR2_X1 U13659 ( .A(n1603), .B(r[102]), .Z(n1419) );
  XNOR2_X1 U13660 ( .A(n1420), .B(n1419), .ZN(\CF_Out[1][20] ) );
  NAND2_X1 U13661 ( .A1(in2[2]), .A2(n1519), .ZN(n1422) );
  NAND2_X1 U13662 ( .A1(in3[3]), .A2(n1616), .ZN(n1421) );
  NAND2_X1 U13663 ( .A1(n1422), .A2(n1421), .ZN(n1423) );
  XNOR2_X1 U13664 ( .A(n1423), .B(r[93]), .ZN(n1425) );
  XOR2_X1 U13665 ( .A(n1603), .B(r[92]), .Z(n1424) );
  XNOR2_X1 U13666 ( .A(n1425), .B(n1424), .ZN(\CF_Out[1][11] ) );
  NOR2_X1 U13667 ( .A1(in3[2]), .A2(n1443), .ZN(n1454) );
  NOR2_X1 U13668 ( .A1(n1427), .A2(n1426), .ZN(n1428) );
  NOR2_X1 U13669 ( .A1(n1454), .A2(n1428), .ZN(n1429) );
  XNOR2_X1 U13670 ( .A(r[83]), .B(n1429), .ZN(n1430) );
  XNOR2_X1 U13671 ( .A(n1430), .B(r[84]), .ZN(n1431) );
  XNOR2_X1 U13672 ( .A(n1603), .B(n1431), .ZN(\CF_Out[1][2] ) );
  NAND2_X1 U13673 ( .A1(n1433), .A2(n1432), .ZN(n1438) );
  NOR2_X1 U13674 ( .A1(in3[0]), .A2(in3[2]), .ZN(n1434) );
  NOR2_X1 U13675 ( .A1(n1503), .A2(n1434), .ZN(n1435) );
  NAND2_X1 U13676 ( .A1(n1436), .A2(n1435), .ZN(n1437) );
  NAND2_X1 U13677 ( .A1(n1438), .A2(n1437), .ZN(n1440) );
  XOR2_X1 U13678 ( .A(r[20]), .B(r[21]), .Z(n1439) );
  XNOR2_X1 U13679 ( .A(n1440), .B(n1439), .ZN(n1441) );
  XNOR2_X1 U13680 ( .A(n1603), .B(n1441), .ZN(\CF_Out[0][20] ) );
  NAND2_X1 U13681 ( .A1(n1584), .A2(n1442), .ZN(n1445) );
  NAND2_X1 U13682 ( .A1(in2[2]), .A2(n1443), .ZN(n1444) );
  NAND2_X1 U13683 ( .A1(n1445), .A2(n1444), .ZN(n1447) );
  NAND2_X1 U13684 ( .A1(in2[0]), .A2(n1503), .ZN(n1446) );
  NAND2_X1 U13685 ( .A1(n1447), .A2(n1446), .ZN(n1449) );
  NOR2_X1 U13686 ( .A1(n1449), .A2(n1448), .ZN(n1452) );
  XOR2_X1 U13687 ( .A(n1603), .B(r[12]), .Z(n1450) );
  XNOR2_X1 U13688 ( .A(r[11]), .B(n1450), .ZN(n1451) );
  XNOR2_X1 U13689 ( .A(n1452), .B(n1451), .ZN(\CF_Out[0][11] ) );
  NAND2_X1 U13690 ( .A1(n1453), .A2(n1528), .ZN(n1456) );
  NAND2_X1 U13691 ( .A1(n1454), .A2(in1[0]), .ZN(n1455) );
  NAND2_X1 U13692 ( .A1(n1456), .A2(n1455), .ZN(n1458) );
  XOR2_X1 U13693 ( .A(r[3]), .B(r[2]), .Z(n1457) );
  XNOR2_X1 U13694 ( .A(n1458), .B(n1457), .ZN(n1459) );
  XNOR2_X1 U13695 ( .A(n1603), .B(n1459), .ZN(\CF_Out[0][2] ) );
  XNOR2_X1 U13696 ( .A(r[56]), .B(r[57]), .ZN(n1470) );
  NAND2_X1 U13697 ( .A1(n1510), .A2(n1613), .ZN(n1460) );
  NAND2_X1 U13698 ( .A1(n1460), .A2(in3[1]), .ZN(n1468) );
  NAND2_X1 U13699 ( .A1(n1461), .A2(in3[3]), .ZN(n1465) );
  NAND2_X1 U13700 ( .A1(in1[0]), .A2(in1[2]), .ZN(n1462) );
  XNOR2_X1 U13701 ( .A(n1591), .B(n1462), .ZN(n1463) );
  NAND2_X1 U13702 ( .A1(n1463), .A2(n1599), .ZN(n1464) );
  NAND2_X1 U13703 ( .A1(n1465), .A2(n1464), .ZN(n1466) );
  XNOR2_X1 U13704 ( .A(n1466), .B(n1603), .ZN(n1467) );
  XNOR2_X1 U13705 ( .A(n1468), .B(n1467), .ZN(n1469) );
  XNOR2_X1 U13706 ( .A(n1470), .B(n1469), .ZN(CF_Out_MSB[2]) );
  XOR2_X1 U13707 ( .A(r[46]), .B(r[47]), .Z(n1473) );
  NAND2_X1 U13708 ( .A1(n1484), .A2(n1471), .ZN(n1472) );
  XNOR2_X1 U13709 ( .A(n1473), .B(n1472), .ZN(n1474) );
  XOR2_X1 U13710 ( .A(n1537), .B(n1474), .Z(\CF_Out[2][19] ) );
  XOR2_X1 U13711 ( .A(r[37]), .B(r[38]), .Z(n1477) );
  NAND2_X1 U13712 ( .A1(n1475), .A2(n1519), .ZN(n1476) );
  XNOR2_X1 U13713 ( .A(n1477), .B(n1476), .ZN(n1478) );
  XOR2_X1 U13714 ( .A(n1537), .B(n1478), .Z(\CF_Out[2][10] ) );
  XNOR2_X1 U13715 ( .A(n1537), .B(r[29]), .ZN(n1483) );
  XNOR2_X1 U13716 ( .A(n1584), .B(n1479), .ZN(n1480) );
  NAND2_X1 U13717 ( .A1(n1480), .A2(n1495), .ZN(n1481) );
  XNOR2_X1 U13718 ( .A(n1481), .B(r[28]), .ZN(n1482) );
  XNOR2_X1 U13719 ( .A(n1483), .B(n1482), .ZN(\CF_Out[2][1] ) );
  NAND2_X1 U13720 ( .A1(n1484), .A2(in2[2]), .ZN(n1486) );
  NAND2_X1 U13721 ( .A1(n1486), .A2(n1485), .ZN(n1487) );
  XNOR2_X1 U13722 ( .A(n1487), .B(r[101]), .ZN(n1489) );
  XOR2_X1 U13723 ( .A(n1537), .B(r[100]), .Z(n1488) );
  XNOR2_X1 U13724 ( .A(n1489), .B(n1488), .ZN(\CF_Out[1][19] ) );
  XNOR2_X1 U13725 ( .A(n1613), .B(n1616), .ZN(n1490) );
  NAND2_X1 U13726 ( .A1(n1490), .A2(in2[3]), .ZN(n1491) );
  XNOR2_X1 U13727 ( .A(n1491), .B(n1537), .ZN(n1492) );
  XOR2_X1 U13728 ( .A(n1492), .B(r[91]), .Z(n1494) );
  NOR2_X1 U13729 ( .A1(n1613), .A2(n1600), .ZN(n1535) );
  XNOR2_X1 U13730 ( .A(n1535), .B(r[92]), .ZN(n1493) );
  XNOR2_X1 U13731 ( .A(n1494), .B(n1493), .ZN(\CF_Out[1][10] ) );
  XNOR2_X1 U13732 ( .A(n1537), .B(n1525), .ZN(n1499) );
  XOR2_X1 U13733 ( .A(r[83]), .B(r[82]), .Z(n1497) );
  NAND2_X1 U13734 ( .A1(in2[2]), .A2(n1495), .ZN(n1496) );
  XNOR2_X1 U13735 ( .A(n1497), .B(n1496), .ZN(n1498) );
  XNOR2_X1 U13736 ( .A(n1499), .B(n1498), .ZN(\CF_Out[1][1] ) );
  XNOR2_X1 U13737 ( .A(r[19]), .B(r[20]), .ZN(n1501) );
  XNOR2_X1 U13738 ( .A(in1[1]), .B(in2[2]), .ZN(n1509) );
  NOR2_X1 U13739 ( .A1(n1626), .A2(n1509), .ZN(n1500) );
  XNOR2_X1 U13740 ( .A(n1501), .B(n1500), .ZN(n1502) );
  XOR2_X1 U13741 ( .A(n1537), .B(n1502), .Z(\CF_Out[0][19] ) );
  XNOR2_X1 U13742 ( .A(n1503), .B(in1[2]), .ZN(n1504) );
  NAND2_X1 U13743 ( .A1(n1504), .A2(in2[0]), .ZN(n1505) );
  NAND2_X1 U13744 ( .A1(n1505), .A2(in2[3]), .ZN(n1506) );
  XNOR2_X1 U13745 ( .A(n1506), .B(r[10]), .ZN(n1508) );
  XNOR2_X1 U13746 ( .A(n1537), .B(r[11]), .ZN(n1507) );
  XNOR2_X1 U13747 ( .A(n1508), .B(n1507), .ZN(\CF_Out[0][10] ) );
  XNOR2_X1 U13748 ( .A(r[1]), .B(n1537), .ZN(n1514) );
  NOR2_X1 U13749 ( .A1(n1510), .A2(n1509), .ZN(n1511) );
  NAND2_X1 U13750 ( .A1(in2[3]), .A2(n1511), .ZN(n1512) );
  XNOR2_X1 U13751 ( .A(r[2]), .B(n1512), .ZN(n1513) );
  XNOR2_X1 U13752 ( .A(n1514), .B(n1513), .ZN(\CF_Out[0][1] ) );
  INV_X1 U13753 ( .A(n1515), .ZN(n1517) );
  NOR2_X1 U13754 ( .A1(n1517), .A2(n1516), .ZN(n1521) );
  NAND2_X1 U13755 ( .A1(n1616), .A2(in1[0]), .ZN(n1598) );
  NAND2_X1 U13756 ( .A1(in3[2]), .A2(n1598), .ZN(n1518) );
  NOR2_X1 U13757 ( .A1(n1519), .A2(n1518), .ZN(n1520) );
  NOR2_X1 U13758 ( .A1(n1521), .A2(n1520), .ZN(n1524) );
  XOR2_X1 U13759 ( .A(n1537), .B(r[73]), .Z(n1522) );
  XNOR2_X1 U13760 ( .A(r[74]), .B(n1522), .ZN(n1523) );
  XNOR2_X1 U13761 ( .A(n1524), .B(n1523), .ZN(CF_Out_MSB[31]) );
  XOR2_X1 U13762 ( .A(r[64]), .B(r[65]), .Z(n1531) );
  NOR2_X1 U13763 ( .A1(n1526), .A2(n1525), .ZN(n1527) );
  NOR2_X1 U13764 ( .A1(n1528), .A2(n1527), .ZN(n1529) );
  NAND2_X1 U13765 ( .A1(n1529), .A2(in2[2]), .ZN(n1530) );
  XNOR2_X1 U13766 ( .A(n1531), .B(n1530), .ZN(n1532) );
  XOR2_X1 U13767 ( .A(n1537), .B(n1532), .Z(CF_Out_MSB[16]) );
  AND2_X1 U13768 ( .A1(n1600), .A2(n1533), .ZN(n1534) );
  NOR2_X1 U13769 ( .A1(n1535), .A2(n1534), .ZN(n1536) );
  NAND2_X1 U13770 ( .A1(n1536), .A2(n1598), .ZN(n1540) );
  XNOR2_X1 U13771 ( .A(r[56]), .B(r[55]), .ZN(n1538) );
  XNOR2_X1 U13772 ( .A(n1538), .B(n1537), .ZN(n1539) );
  XNOR2_X1 U13773 ( .A(n1540), .B(n1539), .ZN(CF_Out_MSB[1]) );
  XNOR2_X1 U13774 ( .A(r[40]), .B(r[39]), .ZN(n1544) );
  NOR2_X1 U13775 ( .A1(in3[3]), .A2(n1576), .ZN(n1541) );
  NOR2_X1 U13776 ( .A1(n1542), .A2(n1541), .ZN(n1543) );
  XNOR2_X1 U13777 ( .A(n1544), .B(n1543), .ZN(n1545) );
  XNOR2_X1 U13778 ( .A(n1546), .B(n1545), .ZN(n26744) );
  XNOR2_X1 U13779 ( .A(in2[2]), .B(in2[1]), .ZN(n1548) );
  NOR2_X1 U13780 ( .A1(n1548), .A2(n1547), .ZN(n1550) );
  XOR2_X1 U13781 ( .A(r[23]), .B(r[24]), .Z(n1549) );
  XNOR2_X1 U13782 ( .A(n1550), .B(n1549), .ZN(n1551) );
  XNOR2_X1 U13783 ( .A(n1610), .B(n1551), .ZN(n26743) );
  XOR2_X1 U13784 ( .A(r[104]), .B(r[105]), .Z(n1556) );
  XOR2_X1 U13785 ( .A(in3[3]), .B(n1552), .Z(n1553) );
  NOR2_X1 U13786 ( .A1(n1584), .A2(n1553), .ZN(n1554) );
  XNOR2_X1 U13787 ( .A(n1610), .B(n1554), .ZN(n1555) );
  XNOR2_X1 U13788 ( .A(n1556), .B(n1555), .ZN(n26742) );
  XOR2_X1 U13789 ( .A(r[52]), .B(r[51]), .Z(n1562) );
  OR2_X1 U13790 ( .A1(n1558), .A2(n1557), .ZN(n1560) );
  NAND2_X1 U13791 ( .A1(n1560), .A2(n1559), .ZN(n1561) );
  XNOR2_X1 U13792 ( .A(n1562), .B(n1561), .ZN(n1563) );
  XNOR2_X1 U13793 ( .A(n1570), .B(n1563), .ZN(n26741) );
  INV_X1 U13794 ( .A(n1564), .ZN(n1566) );
  NAND2_X1 U13795 ( .A1(n1566), .A2(n1565), .ZN(n1569) );
  NAND2_X1 U13796 ( .A1(n1567), .A2(n1574), .ZN(n1568) );
  NAND2_X1 U13797 ( .A1(n1569), .A2(n1568), .ZN(n1573) );
  XNOR2_X1 U13798 ( .A(n1570), .B(r[79]), .ZN(n1571) );
  XNOR2_X1 U13799 ( .A(n1571), .B(r[78]), .ZN(n1572) );
  XNOR2_X1 U13800 ( .A(n1573), .B(n1572), .ZN(n26740) );
  NOR2_X1 U13801 ( .A1(n1584), .A2(n1574), .ZN(n1578) );
  NAND2_X1 U13802 ( .A1(n1576), .A2(n1575), .ZN(n1577) );
  NOR2_X1 U13803 ( .A1(n1578), .A2(n1577), .ZN(n1581) );
  XNOR2_X1 U13804 ( .A(n1610), .B(r[68]), .ZN(n1579) );
  XNOR2_X1 U13805 ( .A(n1579), .B(r[69]), .ZN(n1580) );
  XNOR2_X1 U13806 ( .A(n1581), .B(n1580), .ZN(n26739) );
  NAND2_X1 U13807 ( .A1(in2[0]), .A2(n1582), .ZN(n1583) );
  XNOR2_X1 U13808 ( .A(n1584), .B(n1583), .ZN(n1586) );
  NAND2_X1 U13809 ( .A1(n1586), .A2(n1585), .ZN(n1587) );
  XNOR2_X1 U13810 ( .A(n1587), .B(n1610), .ZN(n1589) );
  XOR2_X1 U13811 ( .A(r[41]), .B(r[42]), .Z(n1588) );
  XNOR2_X1 U13812 ( .A(n1589), .B(n1588), .ZN(n26738) );
  XNOR2_X1 U13813 ( .A(r[74]), .B(r[75]), .ZN(n1596) );
  NAND2_X1 U13814 ( .A1(in2[3]), .A2(n1590), .ZN(n1593) );
  NAND2_X1 U13815 ( .A1(in1[0]), .A2(n1591), .ZN(n1592) );
  NAND2_X1 U13816 ( .A1(n1593), .A2(n1592), .ZN(n1594) );
  NAND2_X1 U13817 ( .A1(n1594), .A2(in3[2]), .ZN(n1595) );
  XNOR2_X1 U13818 ( .A(n1596), .B(n1595), .ZN(n1597) );
  XNOR2_X1 U13819 ( .A(n1603), .B(n1597), .ZN(n26737) );
  AND2_X1 U13820 ( .A1(n1599), .A2(n1598), .ZN(n1602) );
  NAND2_X1 U13821 ( .A1(in2[2]), .A2(n1600), .ZN(n1601) );
  NOR2_X1 U13822 ( .A1(n1602), .A2(n1601), .ZN(n1606) );
  XOR2_X1 U13823 ( .A(n1603), .B(r[65]), .Z(n1604) );
  XNOR2_X1 U13824 ( .A(r[66]), .B(n1604), .ZN(n1605) );
  XNOR2_X1 U13825 ( .A(n1606), .B(n1605), .ZN(n1609) );
  NAND2_X1 U13826 ( .A1(n1607), .A2(n1615), .ZN(n1608) );
  XOR2_X1 U13827 ( .A(n1609), .B(n1608), .Z(n26736) );
  XNOR2_X1 U13828 ( .A(n1610), .B(r[5]), .ZN(n1611) );
  XNOR2_X1 U13829 ( .A(n1611), .B(r[6]), .ZN(n1623) );
  NAND2_X1 U13830 ( .A1(in2[1]), .A2(n1612), .ZN(n1614) );
  NAND2_X1 U13831 ( .A1(n1614), .A2(n1613), .ZN(n1621) );
  NAND2_X1 U13832 ( .A1(in3[3]), .A2(in2[1]), .ZN(n1618) );
  NAND2_X1 U13833 ( .A1(n1616), .A2(n1615), .ZN(n1617) );
  NAND2_X1 U13834 ( .A1(n1618), .A2(n1617), .ZN(n1619) );
  NAND2_X1 U13835 ( .A1(in1[2]), .A2(n1619), .ZN(n1620) );
  NAND2_X1 U13836 ( .A1(n1621), .A2(n1620), .ZN(n1622) );
  XNOR2_X1 U13837 ( .A(n1623), .B(n1622), .ZN(n26735) );
  XNOR2_X1 U13838 ( .A(r[79]), .B(n1624), .ZN(n1631) );
  NAND2_X1 U13839 ( .A1(n1626), .A2(n1625), .ZN(n1627) );
  NAND2_X1 U13840 ( .A1(n1627), .A2(in3[2]), .ZN(n1629) );
  NAND2_X1 U13841 ( .A1(n1629), .A2(n1628), .ZN(n1630) );
  XNOR2_X1 U13842 ( .A(n1631), .B(n1630), .ZN(n1632) );
  XNOR2_X1 U13843 ( .A(r[80]), .B(n1632), .ZN(n26734) );
  XNOR2_X1 U13844 ( .A(r[67]), .B(r[68]), .ZN(n1640) );
  NAND2_X1 U13845 ( .A1(in2[2]), .A2(n1633), .ZN(n1634) );
  NAND2_X1 U13846 ( .A1(n1635), .A2(n1634), .ZN(n1636) );
  NAND2_X1 U13847 ( .A1(n1636), .A2(in1[1]), .ZN(n1638) );
  NAND2_X1 U13848 ( .A1(n1638), .A2(n1637), .ZN(n1639) );
  XNOR2_X1 U13849 ( .A(n1640), .B(n1639), .ZN(n1641) );
  XNOR2_X1 U13850 ( .A(n1642), .B(n1641), .ZN(n26733) );
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
  wire   \CF_Out[2][26] , \CF_Out[2][25] , \CF_Out[2][23] , \CF_Out[2][22] ,
         \CF_Out[2][21] , \CF_Out[2][20] , \CF_Out[2][19] , \CF_Out[2][18] ,
         \CF_Out[2][17] , \CF_Out[2][16] , \CF_Out[2][15] , \CF_Out[2][13] ,
         \CF_Out[2][11] , \CF_Out[2][10] , \CF_Out[2][9] , \CF_Out[2][8] ,
         \CF_Out[2][7] , \CF_Out[2][6] , \CF_Out[2][5] , \CF_Out[2][4] ,
         \CF_Out[2][3] , \CF_Out[2][2] , \CF_Out[2][1] , \CF_Out[2][0] ,
         \CF_Out[1][26] , \CF_Out[1][25] , \CF_Out[1][24] , \CF_Out[1][22] ,
         \CF_Out[1][21] , \CF_Out[1][20] , \CF_Out[1][19] , \CF_Out[1][18] ,
         \CF_Out[1][17] , \CF_Out[1][16] , \CF_Out[1][15] , \CF_Out[1][14] ,
         \CF_Out[1][13] , \CF_Out[1][12] , \CF_Out[1][11] , \CF_Out[1][10] ,
         \CF_Out[1][9] , \CF_Out[1][8] , \CF_Out[1][7] , \CF_Out[1][6] ,
         \CF_Out[1][5] , \CF_Out[1][4] , \CF_Out[1][3] , \CF_Out[1][2] ,
         \CF_Out[1][1] , \CF_Out[1][0] , \CF_Out[0][26] , \CF_Out[0][25] ,
         \CF_Out[0][24] , \CF_Out[0][22] , \CF_Out[0][21] , \CF_Out[0][20] ,
         \CF_Out[0][19] , \CF_Out[0][18] , \CF_Out[0][17] , \CF_Out[0][16] ,
         \CF_Out[0][15] , \CF_Out[0][14] , \CF_Out[0][13] , \CF_Out[0][12] ,
         \CF_Out[0][11] , \CF_Out[0][10] , \CF_Out[0][9] , \CF_Out[0][8] ,
         \CF_Out[0][7] , \CF_Out[0][6] , \CF_Out[0][4] , \CF_Out[0][3] ,
         \CF_Out[0][2] , \CF_Out[0][1] , \CF_Out[0][0] , n833, n834, n835,
         n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846,
         n847, n848, n849, n850, n851, n852, n853, n854, n855, n856, n857,
         n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, n868,
         n869, n870, n871, n872, n873, n874, n875, n876, n877, n878, n879,
         n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n890,
         n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n901,
         n902, n903, n904, n905, n906, n907, n908, n909, n910, n911, n912,
         n913, n914, n915, n916, n917, n918, n919, n920, n921, n922, n923,
         n924, n925, n926, n927, n928, n929, n930, n931, n932, n933, n934,
         n935, n936, n937, n938, n939, n940, n26733, n26734, n26735, n26736,
         n26737, n26738, n26739, n26740, n26741, n26742, n26743, n26744, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036,
         n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046,
         n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056,
         n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066,
         n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076,
         n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086,
         n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096,
         n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106,
         n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116,
         n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126,
         n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136,
         n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146,
         n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156,
         n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166,
         n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176,
         n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185, n1186,
         n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195, n1196,
         n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206,
         n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216,
         n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225, n1226,
         n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235, n1236,
         n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245, n1246,
         n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255, n1256,
         n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265, n1266,
         n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275, n1276,
         n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285, n1286,
         n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295, n1296,
         n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305, n1306,
         n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315, n1316,
         n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325, n1326,
         n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335, n1336,
         n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345, n1346,
         n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355, n1356,
         n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365, n1366,
         n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375, n1376,
         n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385, n1386,
         n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395, n1396,
         n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405, n1406,
         n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415, n1416,
         n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425, n1426,
         n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435, n1436,
         n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445, n1446,
         n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455, n1456,
         n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465, n1466,
         n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475, n1476,
         n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485, n1486,
         n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495, n1496,
         n1497, n1498, n1499, n1500, n1501, n1502, n1503, n1504, n1505, n1506,
         n1507, n1508, n1509, n1510, n1511, n1512, n1513, n1514, n1515, n1516,
         n1517, n1518, n1519, n1520, n1521, n1522, n1523, n1524, n1525, n1526,
         n1527, n1528, n1529, n1530, n1531, n1532, n1533, n1534, n1535, n1536,
         n1537, n1538, n1539, n1540, n1541, n1542, n1543, n1544, n1545, n1546,
         n1547, n1548, n1549, n1550, n1551, n1552, n1553, n1554, n1555, n1556,
         n1557, n1558, n1559, n1560, n1561, n1562, n1563, n1564, n1565, n1566,
         n1567, n1568, n1569, n1570, n1571, n1572, n1573, n1574, n1575, n1576,
         n1577, n1578, n1579, n1580, n1581, n1582, n1583, n1584, n1585, n1586,
         n1587, n1588, n1589, n1590, n1591, n1592, n1593, n1594, n1595, n1596,
         n1597, n1598, n1599, n1600, n1601, n1602, n1603, n1604, n1605, n1606,
         n1607, n1608, n1609, n1610, n1611, n1612, n1613, n1614, n1615, n1616,
         n1617, n1618, n1619, n1620, n1621, n1622, n1623, n1624, n1625, n1626,
         n1627, n1628, n1629, n1630, n1631, n1632, n1633, n1634, n1635, n1636,
         n1637, n1638, n1639, n1640, n1641, n1642, n1643, n1644, n1645, n1646,
         n1647, n1648, n1649, n1650, n1651, n1652, n1653, n1654;
  wire   [44:0] CF_Out_MSB;

  DFF_X1 \CF_Reg_reg[2][26]  ( .D(\CF_Out[2][26] ), .CK(clk), .QN(n848) );
  DFF_X1 \CF_Reg_reg[2][25]  ( .D(\CF_Out[2][25] ), .CK(clk), .Q(n846) );
  DFF_X1 \CF_Reg_reg[2][24]  ( .D(n26741), .CK(clk), .QN(n932) );
  DFF_X1 \CF_Reg_reg[2][23]  ( .D(\CF_Out[2][23] ), .CK(clk), .Q(n845) );
  DFF_X1 \CF_Reg_reg[2][22]  ( .D(\CF_Out[2][22] ), .CK(clk), .Q(n844) );
  DFF_X1 \CF_Reg_reg[2][21]  ( .D(\CF_Out[2][21] ), .CK(clk), .Q(n847) );
  DFF_X1 \CF_Reg_reg[2][20]  ( .D(\CF_Out[2][20] ), .CK(clk), .Q(n843) );
  DFF_X1 \CF_Reg_reg[2][19]  ( .D(\CF_Out[2][19] ), .CK(clk), .Q(n841) );
  DFF_X1 \CF_Reg_reg[2][18]  ( .D(\CF_Out[2][18] ), .CK(clk), .Q(n842) );
  DFF_X1 \CF_Reg_reg[2][17]  ( .D(\CF_Out[2][17] ), .CK(clk), .QN(n880) );
  DFF_X1 \CF_Reg_reg[2][16]  ( .D(\CF_Out[2][16] ), .CK(clk), .Q(n878) );
  DFF_X1 \CF_Reg_reg[2][15]  ( .D(\CF_Out[2][15] ), .CK(clk), .QN(n933) );
  DFF_X1 \CF_Reg_reg[2][14]  ( .D(n26738), .CK(clk), .Q(n877) );
  DFF_X1 \CF_Reg_reg[2][13]  ( .D(\CF_Out[2][13] ), .CK(clk), .Q(n876) );
  DFF_X1 \CF_Reg_reg[2][12]  ( .D(n26744), .CK(clk), .Q(n879) );
  DFF_X1 \CF_Reg_reg[2][11]  ( .D(\CF_Out[2][11] ), .CK(clk), .Q(n875) );
  DFF_X1 \CF_Reg_reg[2][10]  ( .D(\CF_Out[2][10] ), .CK(clk), .Q(n873) );
  DFF_X1 \CF_Reg_reg[2][9]  ( .D(\CF_Out[2][9] ), .CK(clk), .Q(n874) );
  DFF_X1 \CF_Reg_reg[2][8]  ( .D(\CF_Out[2][8] ), .CK(clk), .QN(n912) );
  DFF_X1 \CF_Reg_reg[2][7]  ( .D(\CF_Out[2][7] ), .CK(clk), .Q(n910) );
  DFF_X1 \CF_Reg_reg[2][6]  ( .D(\CF_Out[2][6] ), .CK(clk), .QN(n934) );
  DFF_X1 \CF_Reg_reg[2][5]  ( .D(\CF_Out[2][5] ), .CK(clk), .Q(n909) );
  DFF_X1 \CF_Reg_reg[2][4]  ( .D(\CF_Out[2][4] ), .CK(clk), .Q(n908) );
  DFF_X1 \CF_Reg_reg[2][3]  ( .D(\CF_Out[2][3] ), .CK(clk), .Q(n911) );
  DFF_X1 \CF_Reg_reg[2][2]  ( .D(\CF_Out[2][2] ), .CK(clk), .Q(n907) );
  DFF_X1 \CF_Reg_reg[2][1]  ( .D(\CF_Out[2][1] ), .CK(clk), .Q(n905) );
  DFF_X1 \CF_Reg_reg[2][0]  ( .D(\CF_Out[2][0] ), .CK(clk), .Q(n906) );
  DFF_X1 \CF_Reg_reg[1][26]  ( .D(\CF_Out[1][26] ), .CK(clk), .QN(n856) );
  DFF_X1 \CF_Reg_reg[1][25]  ( .D(\CF_Out[1][25] ), .CK(clk), .Q(n854) );
  DFF_X1 \CF_Reg_reg[1][24]  ( .D(\CF_Out[1][24] ), .CK(clk), .QN(n935) );
  DFF_X1 \CF_Reg_reg[1][23]  ( .D(n26742), .CK(clk), .Q(n853) );
  DFF_X1 \CF_Reg_reg[1][22]  ( .D(\CF_Out[1][22] ), .CK(clk), .Q(n852) );
  DFF_X1 \CF_Reg_reg[1][21]  ( .D(\CF_Out[1][21] ), .CK(clk), .Q(n855) );
  DFF_X1 \CF_Reg_reg[1][20]  ( .D(\CF_Out[1][20] ), .CK(clk), .Q(n851) );
  DFF_X1 \CF_Reg_reg[1][19]  ( .D(\CF_Out[1][19] ), .CK(clk), .Q(n849) );
  DFF_X1 \CF_Reg_reg[1][18]  ( .D(\CF_Out[1][18] ), .CK(clk), .Q(n850) );
  DFF_X1 \CF_Reg_reg[1][17]  ( .D(\CF_Out[1][17] ), .CK(clk), .QN(n888) );
  DFF_X1 \CF_Reg_reg[1][16]  ( .D(\CF_Out[1][16] ), .CK(clk), .Q(n886) );
  DFF_X1 \CF_Reg_reg[1][15]  ( .D(\CF_Out[1][15] ), .CK(clk), .QN(n936) );
  DFF_X1 \CF_Reg_reg[1][14]  ( .D(\CF_Out[1][14] ), .CK(clk), .Q(n885) );
  DFF_X1 \CF_Reg_reg[1][13]  ( .D(\CF_Out[1][13] ), .CK(clk), .Q(n884) );
  DFF_X1 \CF_Reg_reg[1][12]  ( .D(\CF_Out[1][12] ), .CK(clk), .Q(n887) );
  DFF_X1 \CF_Reg_reg[1][11]  ( .D(\CF_Out[1][11] ), .CK(clk), .Q(n883) );
  DFF_X1 \CF_Reg_reg[1][10]  ( .D(\CF_Out[1][10] ), .CK(clk), .Q(n881) );
  DFF_X1 \CF_Reg_reg[1][9]  ( .D(\CF_Out[1][9] ), .CK(clk), .Q(n882) );
  DFF_X1 \CF_Reg_reg[1][8]  ( .D(\CF_Out[1][8] ), .CK(clk), .QN(n920) );
  DFF_X1 \CF_Reg_reg[1][7]  ( .D(\CF_Out[1][7] ), .CK(clk), .Q(n918) );
  DFF_X1 \CF_Reg_reg[1][6]  ( .D(\CF_Out[1][6] ), .CK(clk), .QN(n937) );
  DFF_X1 \CF_Reg_reg[1][5]  ( .D(\CF_Out[1][5] ), .CK(clk), .Q(n917) );
  DFF_X1 \CF_Reg_reg[1][4]  ( .D(\CF_Out[1][4] ), .CK(clk), .Q(n916) );
  DFF_X1 \CF_Reg_reg[1][3]  ( .D(\CF_Out[1][3] ), .CK(clk), .Q(n919) );
  DFF_X1 \CF_Reg_reg[1][2]  ( .D(\CF_Out[1][2] ), .CK(clk), .Q(n915) );
  DFF_X1 \CF_Reg_reg[1][1]  ( .D(\CF_Out[1][1] ), .CK(clk), .Q(n913) );
  DFF_X1 \CF_Reg_reg[1][0]  ( .D(\CF_Out[1][0] ), .CK(clk), .Q(n914) );
  DFF_X1 \CF_Reg_reg[0][26]  ( .D(\CF_Out[0][26] ), .CK(clk), .QN(n864) );
  DFF_X1 \CF_Reg_reg[0][25]  ( .D(\CF_Out[0][25] ), .CK(clk), .Q(n862) );
  DFF_X1 \CF_Reg_reg[0][24]  ( .D(\CF_Out[0][24] ), .CK(clk), .QN(n938) );
  DFF_X1 \CF_Reg_reg[0][23]  ( .D(n26743), .CK(clk), .Q(n861) );
  DFF_X1 \CF_Reg_reg[0][22]  ( .D(\CF_Out[0][22] ), .CK(clk), .Q(n860) );
  DFF_X1 \CF_Reg_reg[0][21]  ( .D(\CF_Out[0][21] ), .CK(clk), .Q(n863) );
  DFF_X1 \CF_Reg_reg[0][20]  ( .D(\CF_Out[0][20] ), .CK(clk), .Q(n859) );
  DFF_X1 \CF_Reg_reg[0][19]  ( .D(\CF_Out[0][19] ), .CK(clk), .Q(n857) );
  DFF_X1 \CF_Reg_reg[0][18]  ( .D(\CF_Out[0][18] ), .CK(clk), .Q(n858) );
  DFF_X1 \CF_Reg_reg[0][17]  ( .D(\CF_Out[0][17] ), .CK(clk), .QN(n896) );
  DFF_X1 \CF_Reg_reg[0][16]  ( .D(\CF_Out[0][16] ), .CK(clk), .Q(n894) );
  DFF_X1 \CF_Reg_reg[0][15]  ( .D(\CF_Out[0][15] ), .CK(clk), .QN(n939) );
  DFF_X1 \CF_Reg_reg[0][14]  ( .D(\CF_Out[0][14] ), .CK(clk), .Q(n893) );
  DFF_X1 \CF_Reg_reg[0][13]  ( .D(\CF_Out[0][13] ), .CK(clk), .Q(n892) );
  DFF_X1 \CF_Reg_reg[0][12]  ( .D(\CF_Out[0][12] ), .CK(clk), .Q(n895) );
  DFF_X1 \CF_Reg_reg[0][11]  ( .D(\CF_Out[0][11] ), .CK(clk), .Q(n891) );
  DFF_X1 \CF_Reg_reg[0][10]  ( .D(\CF_Out[0][10] ), .CK(clk), .Q(n889) );
  DFF_X1 \CF_Reg_reg[0][9]  ( .D(\CF_Out[0][9] ), .CK(clk), .Q(n890) );
  DFF_X1 \CF_Reg_reg[0][8]  ( .D(\CF_Out[0][8] ), .CK(clk), .QN(n928) );
  DFF_X1 \CF_Reg_reg[0][7]  ( .D(\CF_Out[0][7] ), .CK(clk), .Q(n926) );
  DFF_X1 \CF_Reg_reg[0][6]  ( .D(\CF_Out[0][6] ), .CK(clk), .QN(n940) );
  DFF_X1 \CF_Reg_reg[0][5]  ( .D(n26735), .CK(clk), .Q(n925) );
  DFF_X1 \CF_Reg_reg[0][4]  ( .D(\CF_Out[0][4] ), .CK(clk), .Q(n924) );
  DFF_X1 \CF_Reg_reg[0][3]  ( .D(\CF_Out[0][3] ), .CK(clk), .Q(n927) );
  DFF_X1 \CF_Reg_reg[0][2]  ( .D(\CF_Out[0][2] ), .CK(clk), .Q(n923) );
  DFF_X1 \CF_Reg_reg[0][1]  ( .D(\CF_Out[0][1] ), .CK(clk), .Q(n921) );
  DFF_X1 \CF_Reg_reg[0][0]  ( .D(\CF_Out[0][0] ), .CK(clk), .Q(n922) );
  DFF_X1 \CF_Reg_MSB_reg[38]  ( .D(CF_Out_MSB[38]), .CK(clk), .QN(n929) );
  DFF_X1 \CF_Reg_MSB_reg[37]  ( .D(n26734), .CK(clk), .Q(n837) );
  DFF_X1 \CF_Reg_MSB_reg[36]  ( .D(n26740), .CK(clk), .Q(n834) );
  DFF_X1 \CF_Reg_MSB_reg[35]  ( .D(CF_Out_MSB[35]), .CK(clk), .QN(n840) );
  DFF_X1 \CF_Reg_MSB_reg[34]  ( .D(CF_Out_MSB[34]), .CK(clk), .Q(n836) );
  DFF_X1 \CF_Reg_MSB_reg[33]  ( .D(CF_Out_MSB[33]), .CK(clk), .Q(n839) );
  DFF_X1 \CF_Reg_MSB_reg[32]  ( .D(n26737), .CK(clk), .Q(n838) );
  DFF_X1 \CF_Reg_MSB_reg[31]  ( .D(CF_Out_MSB[31]), .CK(clk), .Q(n833) );
  DFF_X1 \CF_Reg_MSB_reg[30]  ( .D(CF_Out_MSB[30]), .CK(clk), .Q(n835) );
  DFF_X1 \CF_Reg_MSB_reg[23]  ( .D(CF_Out_MSB[23]), .CK(clk), .QN(n930) );
  DFF_X1 \CF_Reg_MSB_reg[22]  ( .D(CF_Out_MSB[22]), .CK(clk), .Q(n869) );
  DFF_X1 \CF_Reg_MSB_reg[21]  ( .D(CF_Out_MSB[21]), .CK(clk), .Q(n866) );
  DFF_X1 \CF_Reg_MSB_reg[20]  ( .D(n26739), .CK(clk), .QN(n872) );
  DFF_X1 \CF_Reg_MSB_reg[19]  ( .D(n26733), .CK(clk), .Q(n868) );
  DFF_X1 \CF_Reg_MSB_reg[18]  ( .D(CF_Out_MSB[18]), .CK(clk), .Q(n871) );
  DFF_X1 \CF_Reg_MSB_reg[17]  ( .D(n26736), .CK(clk), .Q(n870) );
  DFF_X1 \CF_Reg_MSB_reg[16]  ( .D(CF_Out_MSB[16]), .CK(clk), .Q(n865) );
  DFF_X1 \CF_Reg_MSB_reg[15]  ( .D(CF_Out_MSB[15]), .CK(clk), .Q(n867) );
  DFF_X1 \CF_Reg_MSB_reg[8]  ( .D(CF_Out_MSB[8]), .CK(clk), .QN(n931) );
  DFF_X1 \CF_Reg_MSB_reg[7]  ( .D(CF_Out_MSB[7]), .CK(clk), .Q(n901) );
  DFF_X1 \CF_Reg_MSB_reg[6]  ( .D(CF_Out_MSB[6]), .CK(clk), .Q(n898) );
  DFF_X1 \CF_Reg_MSB_reg[5]  ( .D(CF_Out_MSB[5]), .CK(clk), .QN(n904) );
  DFF_X1 \CF_Reg_MSB_reg[4]  ( .D(CF_Out_MSB[4]), .CK(clk), .Q(n900) );
  DFF_X1 \CF_Reg_MSB_reg[3]  ( .D(CF_Out_MSB[3]), .CK(clk), .Q(n903) );
  DFF_X1 \CF_Reg_MSB_reg[2]  ( .D(CF_Out_MSB[2]), .CK(clk), .Q(n902) );
  DFF_X1 \CF_Reg_MSB_reg[1]  ( .D(CF_Out_MSB[1]), .CK(clk), .Q(n897) );
  DFF_X1 \CF_Reg_MSB_reg[0]  ( .D(CF_Out_MSB[0]), .CK(clk), .Q(n899) );
  XOR2_X2 U13017 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n1615) );
  XOR2_X2 U13018 ( .A(TwoSharesFromNeighbouringSbox[5]), .B(
        TwoSharesFromNeighbouringSbox[6]), .Z(n1582) );
  XOR2_X2 U13019 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[5]), .Z(n1622) );
  XOR2_X2 U13020 ( .A(TwoSharesFromNeighbouringSbox[2]), .B(
        TwoSharesFromNeighbouringSbox[3]), .Z(n1558) );
  XOR2_X2 U13021 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(
        TwoSharesFromNeighbouringSbox[1]), .Z(n1549) );
  XNOR2_X2 U13022 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(
        TwoSharesFromNeighbouringSbox[6]), .ZN(n1636) );
  XNOR2_X2 U13023 ( .A(TwoSharesFromNeighbouringSbox[4]), .B(
        TwoSharesFromNeighbouringSbox[3]), .ZN(n1654) );
  XNOR2_X1 U13024 ( .A(n840), .B(n929), .ZN(n947) );
  XOR2_X1 U13025 ( .A(n835), .B(n838), .Z(n942) );
  XNOR2_X1 U13026 ( .A(n834), .B(n833), .ZN(n941) );
  XNOR2_X1 U13027 ( .A(n942), .B(n941), .ZN(n943) );
  XOR2_X1 U13028 ( .A(n943), .B(n836), .Z(n945) );
  XNOR2_X1 U13029 ( .A(n837), .B(n839), .ZN(n944) );
  XNOR2_X1 U13030 ( .A(n945), .B(n944), .ZN(n946) );
  XNOR2_X1 U13031 ( .A(n947), .B(n946), .ZN(out3[3]) );
  XNOR2_X1 U13032 ( .A(n848), .B(n932), .ZN(n954) );
  XOR2_X1 U13033 ( .A(n843), .B(n846), .Z(n949) );
  XNOR2_X1 U13034 ( .A(n842), .B(n841), .ZN(n948) );
  XNOR2_X1 U13035 ( .A(n949), .B(n948), .ZN(n950) );
  XOR2_X1 U13036 ( .A(n950), .B(n844), .Z(n952) );
  XNOR2_X1 U13037 ( .A(n845), .B(n847), .ZN(n951) );
  XNOR2_X1 U13038 ( .A(n952), .B(n951), .ZN(n953) );
  XNOR2_X1 U13039 ( .A(n954), .B(n953), .ZN(out3[2]) );
  XNOR2_X1 U13040 ( .A(n856), .B(n935), .ZN(n961) );
  XOR2_X1 U13041 ( .A(n851), .B(n854), .Z(n956) );
  XNOR2_X1 U13042 ( .A(n850), .B(n849), .ZN(n955) );
  XNOR2_X1 U13043 ( .A(n956), .B(n955), .ZN(n957) );
  XOR2_X1 U13044 ( .A(n957), .B(n852), .Z(n959) );
  XNOR2_X1 U13045 ( .A(n853), .B(n855), .ZN(n958) );
  XNOR2_X1 U13046 ( .A(n959), .B(n958), .ZN(n960) );
  XNOR2_X1 U13047 ( .A(n961), .B(n960), .ZN(out3[1]) );
  XNOR2_X1 U13048 ( .A(n864), .B(n938), .ZN(n968) );
  XOR2_X1 U13049 ( .A(n859), .B(n862), .Z(n963) );
  XNOR2_X1 U13050 ( .A(n858), .B(n857), .ZN(n962) );
  XNOR2_X1 U13051 ( .A(n963), .B(n962), .ZN(n964) );
  XOR2_X1 U13052 ( .A(n964), .B(n860), .Z(n966) );
  XNOR2_X1 U13053 ( .A(n861), .B(n863), .ZN(n965) );
  XNOR2_X1 U13054 ( .A(n966), .B(n965), .ZN(n967) );
  XNOR2_X1 U13055 ( .A(n968), .B(n967), .ZN(out3[0]) );
  XNOR2_X1 U13056 ( .A(n872), .B(n930), .ZN(n975) );
  XOR2_X1 U13057 ( .A(n867), .B(n870), .Z(n970) );
  XNOR2_X1 U13058 ( .A(n866), .B(n865), .ZN(n969) );
  XNOR2_X1 U13059 ( .A(n970), .B(n969), .ZN(n971) );
  XOR2_X1 U13060 ( .A(n971), .B(n868), .Z(n973) );
  XNOR2_X1 U13061 ( .A(n869), .B(n871), .ZN(n972) );
  XNOR2_X1 U13062 ( .A(n973), .B(n972), .ZN(n974) );
  XNOR2_X1 U13063 ( .A(n975), .B(n974), .ZN(out2[3]) );
  XNOR2_X1 U13064 ( .A(n880), .B(n933), .ZN(n982) );
  XOR2_X1 U13065 ( .A(n875), .B(n878), .Z(n977) );
  XNOR2_X1 U13066 ( .A(n874), .B(n873), .ZN(n976) );
  XNOR2_X1 U13067 ( .A(n977), .B(n976), .ZN(n978) );
  XOR2_X1 U13068 ( .A(n978), .B(n876), .Z(n980) );
  XNOR2_X1 U13069 ( .A(n877), .B(n879), .ZN(n979) );
  XNOR2_X1 U13070 ( .A(n980), .B(n979), .ZN(n981) );
  XNOR2_X1 U13071 ( .A(n982), .B(n981), .ZN(out2[2]) );
  XNOR2_X1 U13072 ( .A(n888), .B(n936), .ZN(n989) );
  XOR2_X1 U13073 ( .A(n883), .B(n886), .Z(n984) );
  XNOR2_X1 U13074 ( .A(n882), .B(n881), .ZN(n983) );
  XNOR2_X1 U13075 ( .A(n984), .B(n983), .ZN(n985) );
  XOR2_X1 U13076 ( .A(n985), .B(n884), .Z(n987) );
  XNOR2_X1 U13077 ( .A(n885), .B(n887), .ZN(n986) );
  XNOR2_X1 U13078 ( .A(n987), .B(n986), .ZN(n988) );
  XNOR2_X1 U13079 ( .A(n989), .B(n988), .ZN(out2[1]) );
  XNOR2_X1 U13080 ( .A(n896), .B(n939), .ZN(n996) );
  XOR2_X1 U13081 ( .A(n891), .B(n894), .Z(n991) );
  XNOR2_X1 U13082 ( .A(n890), .B(n889), .ZN(n990) );
  XNOR2_X1 U13083 ( .A(n991), .B(n990), .ZN(n992) );
  XOR2_X1 U13084 ( .A(n992), .B(n892), .Z(n994) );
  XNOR2_X1 U13085 ( .A(n893), .B(n895), .ZN(n993) );
  XNOR2_X1 U13086 ( .A(n994), .B(n993), .ZN(n995) );
  XNOR2_X1 U13087 ( .A(n996), .B(n995), .ZN(out2[0]) );
  XNOR2_X1 U13088 ( .A(n904), .B(n931), .ZN(n1003) );
  XOR2_X1 U13089 ( .A(n899), .B(n902), .Z(n998) );
  XNOR2_X1 U13090 ( .A(n898), .B(n897), .ZN(n997) );
  XNOR2_X1 U13091 ( .A(n998), .B(n997), .ZN(n999) );
  XOR2_X1 U13092 ( .A(n999), .B(n900), .Z(n1001) );
  XNOR2_X1 U13093 ( .A(n901), .B(n903), .ZN(n1000) );
  XNOR2_X1 U13094 ( .A(n1001), .B(n1000), .ZN(n1002) );
  XNOR2_X1 U13095 ( .A(n1003), .B(n1002), .ZN(out1[3]) );
  XNOR2_X1 U13096 ( .A(n912), .B(n934), .ZN(n1010) );
  XOR2_X1 U13097 ( .A(n907), .B(n910), .Z(n1005) );
  XNOR2_X1 U13098 ( .A(n906), .B(n905), .ZN(n1004) );
  XNOR2_X1 U13099 ( .A(n1005), .B(n1004), .ZN(n1006) );
  XOR2_X1 U13100 ( .A(n1006), .B(n908), .Z(n1008) );
  XNOR2_X1 U13101 ( .A(n909), .B(n911), .ZN(n1007) );
  XNOR2_X1 U13102 ( .A(n1008), .B(n1007), .ZN(n1009) );
  XNOR2_X1 U13103 ( .A(n1010), .B(n1009), .ZN(out1[2]) );
  XNOR2_X1 U13104 ( .A(n920), .B(n937), .ZN(n1017) );
  XOR2_X1 U13105 ( .A(n915), .B(n918), .Z(n1012) );
  XNOR2_X1 U13106 ( .A(n914), .B(n913), .ZN(n1011) );
  XNOR2_X1 U13107 ( .A(n1012), .B(n1011), .ZN(n1013) );
  XOR2_X1 U13108 ( .A(n1013), .B(n916), .Z(n1015) );
  XNOR2_X1 U13109 ( .A(n917), .B(n919), .ZN(n1014) );
  XNOR2_X1 U13110 ( .A(n1015), .B(n1014), .ZN(n1016) );
  XNOR2_X1 U13111 ( .A(n1017), .B(n1016), .ZN(out1[1]) );
  XNOR2_X1 U13112 ( .A(n928), .B(n940), .ZN(n1024) );
  XOR2_X1 U13113 ( .A(n923), .B(n926), .Z(n1019) );
  XNOR2_X1 U13114 ( .A(n922), .B(n921), .ZN(n1018) );
  XNOR2_X1 U13115 ( .A(n1019), .B(n1018), .ZN(n1020) );
  XOR2_X1 U13116 ( .A(n1020), .B(n924), .Z(n1022) );
  XNOR2_X1 U13117 ( .A(n925), .B(n927), .ZN(n1021) );
  XNOR2_X1 U13118 ( .A(n1022), .B(n1021), .ZN(n1023) );
  XNOR2_X1 U13119 ( .A(n1024), .B(n1023), .ZN(out1[0]) );
  INV_X1 U13120 ( .A(in1[2]), .ZN(n1625) );
  NAND2_X1 U13121 ( .A1(in1[3]), .A2(in3[1]), .ZN(n1306) );
  NOR2_X1 U13122 ( .A1(in3[0]), .A2(n1306), .ZN(n1026) );
  INV_X1 U13123 ( .A(in3[1]), .ZN(n1603) );
  NAND2_X1 U13124 ( .A1(in3[0]), .A2(n1603), .ZN(n1284) );
  NOR2_X1 U13125 ( .A1(in1[3]), .A2(n1284), .ZN(n1025) );
  NOR2_X1 U13126 ( .A1(n1026), .A2(n1025), .ZN(n1027) );
  NOR2_X1 U13127 ( .A1(n1625), .A2(n1027), .ZN(n1030) );
  XNOR2_X1 U13128 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[62]), .ZN(n1028) );
  XNOR2_X1 U13129 ( .A(n1028), .B(r[63]), .ZN(n1032) );
  INV_X1 U13130 ( .A(n1032), .ZN(n1029) );
  NAND2_X1 U13131 ( .A1(n1030), .A2(n1029), .ZN(n1034) );
  INV_X1 U13132 ( .A(n1030), .ZN(n1031) );
  NAND2_X1 U13133 ( .A1(n1032), .A2(n1031), .ZN(n1033) );
  NAND2_X1 U13134 ( .A1(n1034), .A2(n1033), .ZN(CF_Out_MSB[8]) );
  NAND2_X1 U13135 ( .A1(in1[1]), .A2(in3[0]), .ZN(n1640) );
  INV_X1 U13136 ( .A(in2[3]), .ZN(n1594) );
  NAND2_X1 U13137 ( .A1(n1640), .A2(n1594), .ZN(n1036) );
  NOR2_X1 U13138 ( .A1(in1[1]), .A2(in3[0]), .ZN(n1444) );
  NOR2_X1 U13139 ( .A1(n1444), .A2(n1625), .ZN(n1035) );
  NAND2_X1 U13140 ( .A1(n1036), .A2(n1035), .ZN(n1039) );
  XNOR2_X1 U13141 ( .A(n1582), .B(r[60]), .ZN(n1037) );
  XNOR2_X1 U13142 ( .A(n1037), .B(r[61]), .ZN(n1038) );
  XNOR2_X1 U13143 ( .A(n1039), .B(n1038), .ZN(CF_Out_MSB[6]) );
  INV_X1 U13144 ( .A(in3[3]), .ZN(n1611) );
  INV_X1 U13145 ( .A(in3[2]), .ZN(n1577) );
  NOR2_X1 U13146 ( .A1(n1611), .A2(n1577), .ZN(n1465) );
  NAND2_X1 U13147 ( .A1(in3[0]), .A2(n1465), .ZN(n1042) );
  NOR2_X1 U13148 ( .A1(in3[2]), .A2(n1284), .ZN(n1107) );
  NAND2_X1 U13149 ( .A1(in3[2]), .A2(n1611), .ZN(n1182) );
  NOR2_X1 U13150 ( .A1(n1603), .A2(n1182), .ZN(n1040) );
  NOR2_X1 U13151 ( .A1(n1107), .A2(n1040), .ZN(n1041) );
  NAND2_X1 U13152 ( .A1(n1042), .A2(n1041), .ZN(n1043) );
  XNOR2_X1 U13153 ( .A(n1043), .B(r[54]), .ZN(n1045) );
  XOR2_X1 U13154 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[80]), .Z(n1044)
         );
  XNOR2_X1 U13155 ( .A(n1045), .B(n1044), .ZN(CF_Out_MSB[38]) );
  NAND2_X1 U13156 ( .A1(in3[1]), .A2(in2[0]), .ZN(n1564) );
  INV_X1 U13157 ( .A(in1[3]), .ZN(n1645) );
  NAND2_X1 U13158 ( .A1(n1564), .A2(n1645), .ZN(n1047) );
  NOR2_X1 U13159 ( .A1(in3[1]), .A2(in2[0]), .ZN(n1403) );
  NOR2_X1 U13160 ( .A1(n1403), .A2(n1577), .ZN(n1046) );
  NAND2_X1 U13161 ( .A1(n1047), .A2(n1046), .ZN(n1048) );
  XNOR2_X1 U13162 ( .A(n1048), .B(n1654), .ZN(n1050) );
  XOR2_X1 U13163 ( .A(r[76]), .B(r[77]), .Z(n1049) );
  XNOR2_X1 U13164 ( .A(n1050), .B(n1049), .ZN(CF_Out_MSB[34]) );
  INV_X1 U13165 ( .A(in1[0]), .ZN(n1522) );
  NAND2_X1 U13166 ( .A1(n1522), .A2(n1611), .ZN(n1052) );
  NOR2_X1 U13167 ( .A1(in1[1]), .A2(n1522), .ZN(n1540) );
  NAND2_X1 U13168 ( .A1(in1[1]), .A2(in3[3]), .ZN(n1455) );
  NAND2_X1 U13169 ( .A1(in3[2]), .A2(n1455), .ZN(n1438) );
  NOR2_X1 U13170 ( .A1(n1540), .A2(n1438), .ZN(n1051) );
  NAND2_X1 U13171 ( .A1(n1052), .A2(n1051), .ZN(n1054) );
  XNOR2_X1 U13172 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[73]), .ZN(n1053) );
  XNOR2_X1 U13173 ( .A(n1053), .B(r[72]), .ZN(n1057) );
  NAND2_X1 U13174 ( .A1(n1054), .A2(n1057), .ZN(n1061) );
  NOR2_X1 U13175 ( .A1(in1[0]), .A2(in1[1]), .ZN(n1439) );
  INV_X1 U13176 ( .A(n1439), .ZN(n1507) );
  NOR2_X1 U13177 ( .A1(n1611), .A2(n1507), .ZN(n1056) );
  INV_X1 U13178 ( .A(in1[1]), .ZN(n1515) );
  NAND2_X1 U13179 ( .A1(in1[0]), .A2(n1611), .ZN(n1619) );
  NOR2_X1 U13180 ( .A1(n1515), .A2(n1619), .ZN(n1055) );
  NOR2_X1 U13181 ( .A1(n1056), .A2(n1055), .ZN(n1058) );
  NOR2_X1 U13182 ( .A1(n1058), .A2(n1057), .ZN(n1059) );
  NAND2_X1 U13183 ( .A1(in3[2]), .A2(n1059), .ZN(n1060) );
  NAND2_X1 U13184 ( .A1(n1061), .A2(n1060), .ZN(CF_Out_MSB[30]) );
  NAND2_X1 U13185 ( .A1(in2[3]), .A2(in3[0]), .ZN(n1579) );
  NAND2_X1 U13186 ( .A1(in3[1]), .A2(n1594), .ZN(n1569) );
  NAND2_X1 U13187 ( .A1(n1579), .A2(n1569), .ZN(n1063) );
  NOR2_X1 U13188 ( .A1(in3[1]), .A2(in3[0]), .ZN(n1062) );
  NOR2_X1 U13189 ( .A1(n1063), .A2(n1062), .ZN(n1064) );
  NAND2_X1 U13190 ( .A1(n1064), .A2(in2[2]), .ZN(n1066) );
  XNOR2_X1 U13191 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[72]), .ZN(n1065) );
  XNOR2_X1 U13192 ( .A(n1065), .B(r[71]), .ZN(n1071) );
  NAND2_X1 U13193 ( .A1(n1066), .A2(n1071), .ZN(n1074) );
  NOR2_X1 U13194 ( .A1(n1284), .A2(in2[3]), .ZN(n1069) );
  NAND2_X1 U13195 ( .A1(in3[1]), .A2(in2[3]), .ZN(n1067) );
  NOR2_X1 U13196 ( .A1(n1067), .A2(in3[0]), .ZN(n1068) );
  NOR2_X1 U13197 ( .A1(n1069), .A2(n1068), .ZN(n1070) );
  NOR2_X1 U13198 ( .A1(n1071), .A2(n1070), .ZN(n1072) );
  NAND2_X1 U13199 ( .A1(n1072), .A2(in2[2]), .ZN(n1073) );
  NAND2_X1 U13200 ( .A1(n1074), .A2(n1073), .ZN(CF_Out_MSB[23]) );
  XNOR2_X1 U13201 ( .A(n1636), .B(r[70]), .ZN(n1078) );
  INV_X1 U13202 ( .A(in2[1]), .ZN(n1628) );
  INV_X1 U13203 ( .A(in3[0]), .ZN(n1570) );
  NAND2_X1 U13204 ( .A1(n1628), .A2(n1570), .ZN(n1323) );
  INV_X1 U13205 ( .A(in2[2]), .ZN(n1596) );
  NOR2_X1 U13206 ( .A1(n1628), .A2(n1570), .ZN(n1576) );
  NOR2_X1 U13207 ( .A1(in1[3]), .A2(n1576), .ZN(n1075) );
  NOR2_X1 U13208 ( .A1(n1596), .A2(n1075), .ZN(n1076) );
  NAND2_X1 U13209 ( .A1(n1323), .A2(n1076), .ZN(n1077) );
  XNOR2_X1 U13210 ( .A(n1078), .B(n1077), .ZN(n1079) );
  XOR2_X1 U13211 ( .A(r[71]), .B(n1079), .Z(CF_Out_MSB[22]) );
  NOR2_X1 U13212 ( .A1(in1[0]), .A2(n1603), .ZN(n1496) );
  NOR2_X1 U13213 ( .A1(in1[0]), .A2(n1645), .ZN(n1528) );
  NOR2_X1 U13214 ( .A1(n1603), .A2(in1[3]), .ZN(n1080) );
  NOR2_X1 U13215 ( .A1(n1528), .A2(n1080), .ZN(n1081) );
  NOR2_X1 U13216 ( .A1(n1496), .A2(n1081), .ZN(n1082) );
  NAND2_X1 U13217 ( .A1(n1082), .A2(in2[2]), .ZN(n1084) );
  XNOR2_X1 U13218 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[63]), .ZN(n1083) );
  XNOR2_X1 U13219 ( .A(n1083), .B(r[64]), .ZN(n1088) );
  NAND2_X1 U13220 ( .A1(n1084), .A2(n1088), .ZN(n1091) );
  NAND2_X1 U13221 ( .A1(in1[0]), .A2(n1645), .ZN(n1527) );
  NOR2_X1 U13222 ( .A1(n1527), .A2(n1603), .ZN(n1086) );
  NAND2_X1 U13223 ( .A1(in1[3]), .A2(n1603), .ZN(n1497) );
  NOR2_X1 U13224 ( .A1(n1497), .A2(in1[0]), .ZN(n1085) );
  NOR2_X1 U13225 ( .A1(n1086), .A2(n1085), .ZN(n1087) );
  NOR2_X1 U13226 ( .A1(n1088), .A2(n1087), .ZN(n1089) );
  NAND2_X1 U13227 ( .A1(n1089), .A2(in2[2]), .ZN(n1090) );
  NAND2_X1 U13228 ( .A1(n1091), .A2(n1090), .ZN(CF_Out_MSB[15]) );
  NOR2_X1 U13229 ( .A1(in1[2]), .A2(n1439), .ZN(n1092) );
  XNOR2_X1 U13230 ( .A(n1092), .B(n1645), .ZN(n1093) );
  NAND2_X1 U13231 ( .A1(in1[2]), .A2(n1515), .ZN(n1187) );
  NAND2_X1 U13232 ( .A1(n1093), .A2(n1187), .ZN(n1094) );
  NAND2_X1 U13233 ( .A1(n1094), .A2(n1527), .ZN(n1097) );
  XNOR2_X1 U13234 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[55]), .ZN(n1095) );
  XNOR2_X1 U13235 ( .A(n1095), .B(r[54]), .ZN(n1096) );
  XNOR2_X1 U13236 ( .A(n1097), .B(n1096), .ZN(CF_Out_MSB[0]) );
  XOR2_X1 U13237 ( .A(r[37]), .B(r[36]), .Z(n1100) );
  XNOR2_X1 U13238 ( .A(in1[3]), .B(in3[2]), .ZN(n1247) );
  NAND2_X1 U13239 ( .A1(n1522), .A2(n1247), .ZN(n1098) );
  NAND2_X1 U13240 ( .A1(in2[1]), .A2(n1098), .ZN(n1099) );
  XNOR2_X1 U13241 ( .A(n1100), .B(n1099), .ZN(n1101) );
  XOR2_X1 U13242 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1101), .Z(
        \CF_Out[2][9] ) );
  XNOR2_X1 U13243 ( .A(r[36]), .B(r[35]), .ZN(n1103) );
  NOR2_X1 U13244 ( .A1(n1640), .A2(n1247), .ZN(n1102) );
  XNOR2_X1 U13245 ( .A(n1103), .B(n1102), .ZN(n1104) );
  XOR2_X1 U13246 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1104), .Z(
        \CF_Out[2][8] ) );
  NAND2_X1 U13247 ( .A1(in3[1]), .A2(in3[0]), .ZN(n1105) );
  NOR2_X1 U13248 ( .A1(in3[3]), .A2(n1105), .ZN(n1106) );
  NOR2_X1 U13249 ( .A1(n1107), .A2(n1106), .ZN(n1108) );
  XOR2_X1 U13250 ( .A(n1108), .B(r[27]), .Z(n1110) );
  XNOR2_X1 U13251 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(in3[2]), .ZN(
        n1109) );
  XNOR2_X1 U13252 ( .A(n1110), .B(n1109), .ZN(n1111) );
  XNOR2_X1 U13253 ( .A(r[53]), .B(n1111), .ZN(\CF_Out[2][26] ) );
  XOR2_X1 U13254 ( .A(r[46]), .B(r[45]), .Z(n1114) );
  XNOR2_X1 U13255 ( .A(in1[2]), .B(in3[3]), .ZN(n1330) );
  NAND2_X1 U13256 ( .A1(n1522), .A2(n1330), .ZN(n1112) );
  NAND2_X1 U13257 ( .A1(in3[1]), .A2(n1112), .ZN(n1113) );
  XNOR2_X1 U13258 ( .A(n1114), .B(n1113), .ZN(n1115) );
  XOR2_X1 U13259 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1115), .Z(
        \CF_Out[2][18] ) );
  XOR2_X1 U13260 ( .A(r[45]), .B(r[44]), .Z(n1117) );
  XNOR2_X1 U13261 ( .A(in2[3]), .B(n1577), .ZN(n1448) );
  NAND2_X1 U13262 ( .A1(n1576), .A2(n1448), .ZN(n1116) );
  XNOR2_X1 U13263 ( .A(n1117), .B(n1116), .ZN(n1118) );
  XOR2_X1 U13264 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1118), .Z(
        \CF_Out[2][17] ) );
  XOR2_X1 U13265 ( .A(r[28]), .B(r[27]), .Z(n1122) );
  NAND2_X1 U13266 ( .A1(in1[3]), .A2(in1[1]), .ZN(n1206) );
  NOR2_X1 U13267 ( .A1(in1[0]), .A2(n1206), .ZN(n1119) );
  NOR2_X1 U13268 ( .A1(n1540), .A2(n1119), .ZN(n1120) );
  NAND2_X1 U13269 ( .A1(n1120), .A2(n1187), .ZN(n1121) );
  XNOR2_X1 U13270 ( .A(n1122), .B(n1121), .ZN(n1123) );
  XNOR2_X1 U13271 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1123), .ZN(
        \CF_Out[2][0] ) );
  NOR2_X1 U13272 ( .A1(in1[0]), .A2(n1577), .ZN(n1428) );
  XNOR2_X1 U13273 ( .A(n1645), .B(n1428), .ZN(n1124) );
  NAND2_X1 U13274 ( .A1(n1124), .A2(in2[1]), .ZN(n1127) );
  XNOR2_X1 U13275 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[91]), .ZN(n1125) );
  XNOR2_X1 U13276 ( .A(n1125), .B(r[90]), .ZN(n1126) );
  XNOR2_X1 U13277 ( .A(n1127), .B(n1126), .ZN(\CF_Out[1][9] ) );
  XNOR2_X1 U13278 ( .A(r[90]), .B(r[89]), .ZN(n1130) );
  XNOR2_X1 U13279 ( .A(in1[3]), .B(n1640), .ZN(n1128) );
  NAND2_X1 U13280 ( .A1(n1128), .A2(in3[2]), .ZN(n1129) );
  XNOR2_X1 U13281 ( .A(n1130), .B(n1129), .ZN(n1131) );
  XNOR2_X1 U13282 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1131), .ZN(
        \CF_Out[1][8] ) );
  XNOR2_X1 U13283 ( .A(r[89]), .B(r[88]), .ZN(n1133) );
  NOR2_X1 U13284 ( .A1(n1640), .A2(n1596), .ZN(n1132) );
  XNOR2_X1 U13285 ( .A(n1133), .B(n1132), .ZN(n1134) );
  XNOR2_X1 U13286 ( .A(n1134), .B(n1636), .ZN(\CF_Out[1][7] ) );
  XNOR2_X1 U13287 ( .A(r[88]), .B(r[87]), .ZN(n1136) );
  NOR2_X1 U13288 ( .A1(n1640), .A2(n1625), .ZN(n1135) );
  XNOR2_X1 U13289 ( .A(n1136), .B(n1135), .ZN(n1137) );
  XOR2_X1 U13290 ( .A(n1582), .B(n1137), .Z(\CF_Out[1][6] ) );
  XOR2_X1 U13291 ( .A(r[85]), .B(r[86]), .Z(n1139) );
  INV_X1 U13292 ( .A(in2[0]), .ZN(n1647) );
  NOR2_X1 U13293 ( .A1(n1515), .A2(n1647), .ZN(n1396) );
  NAND2_X1 U13294 ( .A1(n1396), .A2(in3[2]), .ZN(n1138) );
  XNOR2_X1 U13295 ( .A(n1139), .B(n1138), .ZN(n1140) );
  XNOR2_X1 U13296 ( .A(n1140), .B(n1654), .ZN(\CF_Out[1][4] ) );
  XOR2_X1 U13297 ( .A(in3[3]), .B(n1284), .Z(n1141) );
  NOR2_X1 U13298 ( .A1(n1577), .A2(n1141), .ZN(n1142) );
  XNOR2_X1 U13299 ( .A(n1142), .B(r[81]), .ZN(n1144) );
  XOR2_X1 U13300 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[107]), .Z(n1143)
         );
  XNOR2_X1 U13301 ( .A(n1144), .B(n1143), .ZN(\CF_Out[1][26] ) );
  XNOR2_X1 U13302 ( .A(r[104]), .B(r[103]), .ZN(n1146) );
  NOR2_X1 U13303 ( .A1(n1564), .A2(n1577), .ZN(n1145) );
  XNOR2_X1 U13304 ( .A(n1146), .B(n1145), .ZN(n1147) );
  XNOR2_X1 U13305 ( .A(n1147), .B(n1654), .ZN(\CF_Out[1][22] ) );
  XNOR2_X1 U13306 ( .A(r[100]), .B(r[99]), .ZN(n1152) );
  NOR2_X1 U13307 ( .A1(n1625), .A2(n1603), .ZN(n1301) );
  NAND2_X1 U13308 ( .A1(in3[3]), .A2(n1522), .ZN(n1627) );
  NAND2_X1 U13309 ( .A1(n1301), .A2(n1627), .ZN(n1148) );
  NAND2_X1 U13310 ( .A1(n1625), .A2(n1603), .ZN(n1473) );
  NAND2_X1 U13311 ( .A1(n1148), .A2(n1473), .ZN(n1150) );
  INV_X1 U13312 ( .A(n1496), .ZN(n1602) );
  NAND2_X1 U13313 ( .A1(n1602), .A2(n1611), .ZN(n1149) );
  NAND2_X1 U13314 ( .A1(n1150), .A2(n1149), .ZN(n1151) );
  XNOR2_X1 U13315 ( .A(n1152), .B(n1151), .ZN(n1153) );
  XNOR2_X1 U13316 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1153), .ZN(
        \CF_Out[1][18] ) );
  XOR2_X1 U13317 ( .A(n1576), .B(n1594), .Z(n1154) );
  NOR2_X1 U13318 ( .A1(n1577), .A2(n1154), .ZN(n1155) );
  XNOR2_X1 U13319 ( .A(n1155), .B(r[98]), .ZN(n1157) );
  XOR2_X1 U13320 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[99]), .Z(n1156)
         );
  XNOR2_X1 U13321 ( .A(n1157), .B(n1156), .ZN(\CF_Out[1][17] ) );
  XOR2_X1 U13322 ( .A(r[98]), .B(r[97]), .Z(n1159) );
  NAND2_X1 U13323 ( .A1(n1576), .A2(in2[2]), .ZN(n1158) );
  XNOR2_X1 U13324 ( .A(n1159), .B(n1158), .ZN(n1160) );
  XNOR2_X1 U13325 ( .A(n1160), .B(n1636), .ZN(\CF_Out[1][16] ) );
  XOR2_X1 U13326 ( .A(r[97]), .B(r[96]), .Z(n1162) );
  NAND2_X1 U13327 ( .A1(n1576), .A2(in1[2]), .ZN(n1161) );
  XNOR2_X1 U13328 ( .A(n1162), .B(n1161), .ZN(n1163) );
  XOR2_X1 U13329 ( .A(n1582), .B(n1163), .Z(\CF_Out[1][15] ) );
  XOR2_X1 U13330 ( .A(r[82]), .B(r[81]), .Z(n1168) );
  NOR2_X1 U13331 ( .A1(n1625), .A2(n1507), .ZN(n1165) );
  NOR2_X1 U13332 ( .A1(in1[2]), .A2(in1[3]), .ZN(n1164) );
  NOR2_X1 U13333 ( .A1(n1165), .A2(n1164), .ZN(n1166) );
  NAND2_X1 U13334 ( .A1(n1166), .A2(n1206), .ZN(n1167) );
  XNOR2_X1 U13335 ( .A(n1168), .B(n1167), .ZN(n1169) );
  XNOR2_X1 U13336 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1169), .ZN(
        \CF_Out[1][0] ) );
  NAND2_X1 U13337 ( .A1(in1[1]), .A2(n1645), .ZN(n1637) );
  NOR2_X1 U13338 ( .A1(n1645), .A2(n1577), .ZN(n1260) );
  INV_X1 U13339 ( .A(n1260), .ZN(n1170) );
  NAND2_X1 U13340 ( .A1(n1637), .A2(n1170), .ZN(n1171) );
  NAND2_X1 U13341 ( .A1(n1171), .A2(in2[0]), .ZN(n1174) );
  XNOR2_X1 U13342 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[9]), .ZN(n1172)
         );
  XNOR2_X1 U13343 ( .A(n1172), .B(r[10]), .ZN(n1173) );
  XNOR2_X1 U13344 ( .A(n1174), .B(n1173), .ZN(\CF_Out[0][9] ) );
  XNOR2_X1 U13345 ( .A(in3[1]), .B(in3[2]), .ZN(n1176) );
  NAND2_X1 U13346 ( .A1(in1[0]), .A2(in1[3]), .ZN(n1175) );
  NOR2_X1 U13347 ( .A1(n1176), .A2(n1175), .ZN(n1177) );
  XOR2_X1 U13348 ( .A(r[9]), .B(n1177), .Z(n1179) );
  XNOR2_X1 U13349 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(r[8]), .ZN(n1178)
         );
  XNOR2_X1 U13350 ( .A(n1179), .B(n1178), .ZN(\CF_Out[0][8] ) );
  NAND2_X1 U13351 ( .A1(in3[3]), .A2(in3[0]), .ZN(n1559) );
  NAND2_X1 U13352 ( .A1(n1559), .A2(in3[1]), .ZN(n1180) );
  NAND2_X1 U13353 ( .A1(n1180), .A2(n1577), .ZN(n1181) );
  NAND2_X1 U13354 ( .A1(n1182), .A2(n1181), .ZN(n1183) );
  INV_X1 U13355 ( .A(n1284), .ZN(n1297) );
  NOR2_X1 U13356 ( .A1(n1183), .A2(n1297), .ZN(n1186) );
  XOR2_X1 U13357 ( .A(r[0]), .B(TwoSharesFromNeighbouringSbox[7]), .Z(n1184)
         );
  XNOR2_X1 U13358 ( .A(r[26]), .B(n1184), .ZN(n1185) );
  XNOR2_X1 U13359 ( .A(n1186), .B(n1185), .ZN(\CF_Out[0][26] ) );
  XNOR2_X1 U13360 ( .A(r[19]), .B(r[18]), .ZN(n1194) );
  NAND2_X1 U13361 ( .A1(in3[3]), .A2(n1187), .ZN(n1188) );
  NAND2_X1 U13362 ( .A1(n1188), .A2(in3[0]), .ZN(n1192) );
  NOR2_X1 U13363 ( .A1(in1[1]), .A2(in3[3]), .ZN(n1460) );
  NOR2_X1 U13364 ( .A1(n1625), .A2(n1570), .ZN(n1189) );
  NOR2_X1 U13365 ( .A1(n1455), .A2(n1189), .ZN(n1190) );
  NOR2_X1 U13366 ( .A1(n1460), .A2(n1190), .ZN(n1191) );
  NAND2_X1 U13367 ( .A1(n1192), .A2(n1191), .ZN(n1193) );
  XNOR2_X1 U13368 ( .A(n1194), .B(n1193), .ZN(n1195) );
  XNOR2_X1 U13369 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(n1195), .ZN(
        \CF_Out[0][18] ) );
  NAND2_X1 U13370 ( .A1(in2[3]), .A2(in2[0]), .ZN(n1196) );
  NAND2_X1 U13371 ( .A1(n1196), .A2(in3[1]), .ZN(n1198) );
  NOR2_X1 U13372 ( .A1(n1594), .A2(n1577), .ZN(n1445) );
  NAND2_X1 U13373 ( .A1(n1445), .A2(in2[0]), .ZN(n1197) );
  NAND2_X1 U13374 ( .A1(n1198), .A2(n1197), .ZN(n1200) );
  XOR2_X1 U13375 ( .A(r[18]), .B(r[17]), .Z(n1199) );
  XNOR2_X1 U13376 ( .A(n1200), .B(n1199), .ZN(n1201) );
  XNOR2_X1 U13377 ( .A(TwoSharesFromNeighbouringSbox[7]), .B(n1201), .ZN(
        \CF_Out[0][17] ) );
  NAND2_X1 U13378 ( .A1(n1645), .A2(n1515), .ZN(n1208) );
  NAND2_X1 U13379 ( .A1(in1[0]), .A2(n1208), .ZN(n1203) );
  XOR2_X1 U13380 ( .A(TwoSharesFromNeighbouringSbox[0]), .B(r[1]), .Z(n1202)
         );
  XNOR2_X1 U13381 ( .A(r[0]), .B(n1202), .ZN(n1209) );
  XNOR2_X1 U13382 ( .A(n1203), .B(n1209), .ZN(n1205) );
  NAND2_X1 U13383 ( .A1(n1625), .A2(n1208), .ZN(n1204) );
  NAND2_X1 U13384 ( .A1(n1205), .A2(n1204), .ZN(n1218) );
  NAND2_X1 U13385 ( .A1(n1527), .A2(n1206), .ZN(n1207) );
  NAND2_X1 U13386 ( .A1(n1207), .A2(n1209), .ZN(n1215) );
  INV_X1 U13387 ( .A(n1208), .ZN(n1210) );
  NOR2_X1 U13388 ( .A1(n1210), .A2(n1209), .ZN(n1213) );
  NAND2_X1 U13389 ( .A1(n1522), .A2(n1645), .ZN(n1211) );
  NAND2_X1 U13390 ( .A1(in1[1]), .A2(n1211), .ZN(n1212) );
  NAND2_X1 U13391 ( .A1(n1213), .A2(n1212), .ZN(n1214) );
  NAND2_X1 U13392 ( .A1(n1215), .A2(n1214), .ZN(n1216) );
  NAND2_X1 U13393 ( .A1(n1216), .A2(n1625), .ZN(n1217) );
  NAND2_X1 U13394 ( .A1(n1218), .A2(n1217), .ZN(\CF_Out[0][0] ) );
  XOR2_X1 U13395 ( .A(r[42]), .B(r[43]), .Z(n1220) );
  NAND2_X1 U13396 ( .A1(n1576), .A2(n1330), .ZN(n1219) );
  XNOR2_X1 U13397 ( .A(n1220), .B(n1219), .ZN(n1221) );
  XOR2_X1 U13398 ( .A(n1582), .B(n1221), .Z(\CF_Out[2][15] ) );
  XNOR2_X1 U13399 ( .A(r[33]), .B(r[34]), .ZN(n1223) );
  XNOR2_X1 U13400 ( .A(in1[2]), .B(n1594), .ZN(n1487) );
  NOR2_X1 U13401 ( .A1(n1640), .A2(n1487), .ZN(n1222) );
  XNOR2_X1 U13402 ( .A(n1223), .B(n1222), .ZN(n1224) );
  XOR2_X1 U13403 ( .A(n1582), .B(n1224), .Z(\CF_Out[2][6] ) );
  XNOR2_X1 U13404 ( .A(r[105]), .B(r[106]), .ZN(n1225) );
  NAND2_X1 U13405 ( .A1(in2[2]), .A2(n1297), .ZN(n1571) );
  XNOR2_X1 U13406 ( .A(n1225), .B(n1571), .ZN(n1226) );
  XNOR2_X1 U13407 ( .A(n1582), .B(n1226), .ZN(\CF_Out[1][24] ) );
  NOR2_X1 U13408 ( .A1(n1594), .A2(n1596), .ZN(n1345) );
  INV_X1 U13409 ( .A(n1345), .ZN(n1227) );
  NAND2_X1 U13410 ( .A1(n1227), .A2(n1569), .ZN(n1228) );
  NAND2_X1 U13411 ( .A1(n1228), .A2(in3[0]), .ZN(n1230) );
  XNOR2_X1 U13412 ( .A(r[24]), .B(r[25]), .ZN(n1229) );
  XNOR2_X1 U13413 ( .A(n1230), .B(n1229), .ZN(n1231) );
  XNOR2_X1 U13414 ( .A(n1582), .B(n1231), .ZN(\CF_Out[0][24] ) );
  NOR2_X1 U13415 ( .A1(n1611), .A2(n1647), .ZN(n1454) );
  NAND2_X1 U13416 ( .A1(n1454), .A2(in1[2]), .ZN(n1233) );
  INV_X1 U13417 ( .A(n1564), .ZN(n1369) );
  NAND2_X1 U13418 ( .A1(n1369), .A2(n1611), .ZN(n1232) );
  NAND2_X1 U13419 ( .A1(n1233), .A2(n1232), .ZN(n1234) );
  XNOR2_X1 U13420 ( .A(n1234), .B(r[15]), .ZN(n1236) );
  XOR2_X1 U13421 ( .A(n1582), .B(r[16]), .Z(n1235) );
  XNOR2_X1 U13422 ( .A(n1236), .B(n1235), .ZN(\CF_Out[0][15] ) );
  NOR2_X1 U13423 ( .A1(in2[3]), .A2(n1522), .ZN(n1538) );
  XNOR2_X1 U13424 ( .A(in1[2]), .B(n1538), .ZN(n1238) );
  NOR2_X1 U13425 ( .A1(in1[0]), .A2(n1594), .ZN(n1491) );
  XNOR2_X1 U13426 ( .A(in3[1]), .B(n1491), .ZN(n1237) );
  NOR2_X1 U13427 ( .A1(n1238), .A2(n1237), .ZN(n1239) );
  XOR2_X1 U13428 ( .A(n1239), .B(r[7]), .Z(n1241) );
  XNOR2_X1 U13429 ( .A(r[6]), .B(n1582), .ZN(n1240) );
  XNOR2_X1 U13430 ( .A(n1241), .B(n1240), .ZN(\CF_Out[0][6] ) );
  NAND2_X1 U13431 ( .A1(n1455), .A2(n1570), .ZN(n1243) );
  NOR2_X1 U13432 ( .A1(n1460), .A2(n1596), .ZN(n1242) );
  NAND2_X1 U13433 ( .A1(n1243), .A2(n1242), .ZN(n1246) );
  XNOR2_X1 U13434 ( .A(n1582), .B(r[69]), .ZN(n1244) );
  XNOR2_X1 U13435 ( .A(n1244), .B(r[70]), .ZN(n1245) );
  XNOR2_X1 U13436 ( .A(n1246), .B(n1245), .ZN(CF_Out_MSB[21]) );
  XNOR2_X1 U13437 ( .A(r[49]), .B(r[50]), .ZN(n1249) );
  NOR2_X1 U13438 ( .A1(n1564), .A2(n1247), .ZN(n1248) );
  XNOR2_X1 U13439 ( .A(n1249), .B(n1248), .ZN(n1250) );
  XNOR2_X1 U13440 ( .A(n1250), .B(n1654), .ZN(\CF_Out[2][22] ) );
  NAND2_X1 U13441 ( .A1(in2[1]), .A2(in2[0]), .ZN(n1588) );
  NOR2_X1 U13442 ( .A1(n1588), .A2(n1645), .ZN(n1251) );
  NAND2_X1 U13443 ( .A1(in2[0]), .A2(n1628), .ZN(n1597) );
  NOR2_X1 U13444 ( .A1(n1625), .A2(n1597), .ZN(n1269) );
  NOR2_X1 U13445 ( .A1(n1251), .A2(n1269), .ZN(n1252) );
  XNOR2_X1 U13446 ( .A(n1252), .B(n1654), .ZN(n1254) );
  XOR2_X1 U13447 ( .A(r[41]), .B(r[40]), .Z(n1253) );
  XNOR2_X1 U13448 ( .A(n1254), .B(n1253), .ZN(\CF_Out[2][13] ) );
  XOR2_X1 U13449 ( .A(r[31]), .B(r[32]), .Z(n1256) );
  NAND2_X1 U13450 ( .A1(n1396), .A2(n1448), .ZN(n1255) );
  XNOR2_X1 U13451 ( .A(n1256), .B(n1255), .ZN(n1257) );
  XNOR2_X1 U13452 ( .A(n1257), .B(n1654), .ZN(\CF_Out[2][4] ) );
  XNOR2_X1 U13453 ( .A(r[94]), .B(r[95]), .ZN(n1259) );
  XNOR2_X1 U13454 ( .A(n1654), .B(n1269), .ZN(n1258) );
  XNOR2_X1 U13455 ( .A(n1259), .B(n1258), .ZN(\CF_Out[1][13] ) );
  XNOR2_X1 U13456 ( .A(r[23]), .B(r[22]), .ZN(n1267) );
  NOR2_X1 U13457 ( .A1(in2[1]), .A2(n1260), .ZN(n1264) );
  NAND2_X1 U13458 ( .A1(in1[3]), .A2(in3[0]), .ZN(n1638) );
  NAND2_X1 U13459 ( .A1(n1577), .A2(n1638), .ZN(n1262) );
  NAND2_X1 U13460 ( .A1(n1260), .A2(n1323), .ZN(n1261) );
  NAND2_X1 U13461 ( .A1(n1262), .A2(n1261), .ZN(n1263) );
  NOR2_X1 U13462 ( .A1(n1264), .A2(n1263), .ZN(n1265) );
  XNOR2_X1 U13463 ( .A(n1265), .B(n1654), .ZN(n1266) );
  XNOR2_X1 U13464 ( .A(n1267), .B(n1266), .ZN(\CF_Out[0][22] ) );
  NOR2_X1 U13465 ( .A1(in1[2]), .A2(n1588), .ZN(n1268) );
  NOR2_X1 U13466 ( .A1(n1269), .A2(n1268), .ZN(n1270) );
  NOR2_X1 U13467 ( .A1(n1645), .A2(n1270), .ZN(n1271) );
  XNOR2_X1 U13468 ( .A(r[14]), .B(n1271), .ZN(n1273) );
  XNOR2_X1 U13469 ( .A(n1654), .B(r[13]), .ZN(n1272) );
  XNOR2_X1 U13470 ( .A(n1273), .B(n1272), .ZN(\CF_Out[0][13] ) );
  XNOR2_X1 U13471 ( .A(in2[1]), .B(in3[2]), .ZN(n1275) );
  NAND2_X1 U13472 ( .A1(in2[3]), .A2(in1[0]), .ZN(n1274) );
  NOR2_X1 U13473 ( .A1(n1275), .A2(n1274), .ZN(n1276) );
  XNOR2_X1 U13474 ( .A(r[4]), .B(n1276), .ZN(n1277) );
  XNOR2_X1 U13475 ( .A(n1277), .B(n1654), .ZN(n1278) );
  XNOR2_X1 U13476 ( .A(r[5]), .B(n1278), .ZN(\CF_Out[0][4] ) );
  XNOR2_X1 U13477 ( .A(n1654), .B(r[59]), .ZN(n1282) );
  NOR2_X1 U13478 ( .A1(in2[3]), .A2(n1369), .ZN(n1279) );
  NOR2_X1 U13479 ( .A1(n1403), .A2(n1279), .ZN(n1280) );
  NAND2_X1 U13480 ( .A1(n1280), .A2(in1[2]), .ZN(n1281) );
  XNOR2_X1 U13481 ( .A(n1282), .B(n1281), .ZN(n1283) );
  XOR2_X1 U13482 ( .A(r[58]), .B(n1283), .Z(CF_Out_MSB[4]) );
  NAND2_X1 U13483 ( .A1(n1284), .A2(n1638), .ZN(n1285) );
  NAND2_X1 U13484 ( .A1(n1285), .A2(n1473), .ZN(n1286) );
  XNOR2_X1 U13485 ( .A(n1286), .B(r[52]), .ZN(n1287) );
  XOR2_X1 U13486 ( .A(r[53]), .B(n1287), .Z(n1288) );
  XNOR2_X1 U13487 ( .A(n1636), .B(n1288), .ZN(\CF_Out[2][25] ) );
  XOR2_X1 U13488 ( .A(r[44]), .B(r[43]), .Z(n1290) );
  XNOR2_X1 U13489 ( .A(in1[3]), .B(n1596), .ZN(n1483) );
  NAND2_X1 U13490 ( .A1(n1576), .A2(n1483), .ZN(n1289) );
  XNOR2_X1 U13491 ( .A(n1290), .B(n1289), .ZN(n1291) );
  XNOR2_X1 U13492 ( .A(n1291), .B(n1636), .ZN(\CF_Out[2][16] ) );
  XOR2_X1 U13493 ( .A(r[35]), .B(r[34]), .Z(n1295) );
  INV_X1 U13494 ( .A(n1640), .ZN(n1293) );
  NAND2_X1 U13495 ( .A1(in2[2]), .A2(n1611), .ZN(n1401) );
  NAND2_X1 U13496 ( .A1(in3[3]), .A2(n1596), .ZN(n1292) );
  NAND2_X1 U13497 ( .A1(n1401), .A2(n1292), .ZN(n1420) );
  NAND2_X1 U13498 ( .A1(n1293), .A2(n1420), .ZN(n1294) );
  XNOR2_X1 U13499 ( .A(n1295), .B(n1294), .ZN(n1296) );
  XNOR2_X1 U13500 ( .A(n1296), .B(n1636), .ZN(\CF_Out[2][7] ) );
  XOR2_X1 U13501 ( .A(r[107]), .B(r[106]), .Z(n1299) );
  NAND2_X1 U13502 ( .A1(n1297), .A2(in1[2]), .ZN(n1298) );
  XNOR2_X1 U13503 ( .A(n1299), .B(n1298), .ZN(n1300) );
  XNOR2_X1 U13504 ( .A(n1300), .B(n1636), .ZN(\CF_Out[1][25] ) );
  XNOR2_X1 U13505 ( .A(n1636), .B(r[25]), .ZN(n1304) );
  NOR2_X1 U13506 ( .A1(n1301), .A2(n1638), .ZN(n1302) );
  NAND2_X1 U13507 ( .A1(n1473), .A2(n1302), .ZN(n1303) );
  XNOR2_X1 U13508 ( .A(n1304), .B(n1303), .ZN(n1305) );
  XOR2_X1 U13509 ( .A(r[26]), .B(n1305), .Z(\CF_Out[0][25] ) );
  XNOR2_X1 U13510 ( .A(r[16]), .B(r[17]), .ZN(n1316) );
  NOR2_X1 U13511 ( .A1(n1306), .A2(in2[0]), .ZN(n1313) );
  INV_X1 U13512 ( .A(n1306), .ZN(n1307) );
  NOR2_X1 U13513 ( .A1(in2[2]), .A2(n1307), .ZN(n1309) );
  NOR2_X1 U13514 ( .A1(in1[3]), .A2(in3[1]), .ZN(n1308) );
  NOR2_X1 U13515 ( .A1(n1309), .A2(n1308), .ZN(n1311) );
  NOR2_X1 U13516 ( .A1(n1645), .A2(n1596), .ZN(n1310) );
  NAND2_X1 U13517 ( .A1(in2[0]), .A2(n1310), .ZN(n1649) );
  NAND2_X1 U13518 ( .A1(n1311), .A2(n1649), .ZN(n1312) );
  NOR2_X1 U13519 ( .A1(n1313), .A2(n1312), .ZN(n1314) );
  XNOR2_X1 U13520 ( .A(n1314), .B(n1636), .ZN(n1315) );
  XNOR2_X1 U13521 ( .A(n1316), .B(n1315), .ZN(\CF_Out[0][16] ) );
  XNOR2_X1 U13522 ( .A(r[8]), .B(r[7]), .ZN(n1320) );
  NOR2_X1 U13523 ( .A1(n1522), .A2(n1611), .ZN(n1624) );
  XNOR2_X1 U13524 ( .A(n1603), .B(in2[2]), .ZN(n1317) );
  NAND2_X1 U13525 ( .A1(n1624), .A2(n1317), .ZN(n1318) );
  XOR2_X1 U13526 ( .A(n1636), .B(n1318), .Z(n1319) );
  XNOR2_X1 U13527 ( .A(n1320), .B(n1319), .ZN(\CF_Out[0][7] ) );
  XNOR2_X1 U13528 ( .A(n1636), .B(r[61]), .ZN(n1325) );
  NOR2_X1 U13529 ( .A1(in3[3]), .A2(n1576), .ZN(n1321) );
  NOR2_X1 U13530 ( .A1(n1625), .A2(n1321), .ZN(n1322) );
  NAND2_X1 U13531 ( .A1(n1323), .A2(n1322), .ZN(n1324) );
  XNOR2_X1 U13532 ( .A(n1325), .B(n1324), .ZN(n1326) );
  XOR2_X1 U13533 ( .A(r[62]), .B(n1326), .Z(CF_Out_MSB[7]) );
  XOR2_X1 U13534 ( .A(r[50]), .B(r[51]), .Z(n1328) );
  NAND2_X1 U13535 ( .A1(n1369), .A2(n1420), .ZN(n1327) );
  XNOR2_X1 U13536 ( .A(n1328), .B(n1327), .ZN(n1329) );
  XOR2_X1 U13537 ( .A(n1622), .B(n1329), .Z(\CF_Out[2][23] ) );
  INV_X1 U13538 ( .A(n1396), .ZN(n1365) );
  NOR2_X1 U13539 ( .A1(n1330), .A2(n1365), .ZN(n1333) );
  XOR2_X1 U13540 ( .A(n1622), .B(r[33]), .Z(n1331) );
  XNOR2_X1 U13541 ( .A(r[32]), .B(n1331), .ZN(n1332) );
  XNOR2_X1 U13542 ( .A(n1333), .B(n1332), .ZN(\CF_Out[2][5] ) );
  XNOR2_X1 U13543 ( .A(r[96]), .B(r[95]), .ZN(n1336) );
  XNOR2_X1 U13544 ( .A(in2[3]), .B(n1597), .ZN(n1334) );
  NAND2_X1 U13545 ( .A1(n1334), .A2(in2[2]), .ZN(n1335) );
  XNOR2_X1 U13546 ( .A(n1336), .B(n1335), .ZN(n1337) );
  XNOR2_X1 U13547 ( .A(n1622), .B(n1337), .ZN(\CF_Out[1][14] ) );
  XOR2_X1 U13548 ( .A(r[87]), .B(r[86]), .Z(n1339) );
  NAND2_X1 U13549 ( .A1(n1396), .A2(in1[2]), .ZN(n1338) );
  XNOR2_X1 U13550 ( .A(n1339), .B(n1338), .ZN(n1340) );
  XOR2_X1 U13551 ( .A(n1622), .B(n1340), .Z(\CF_Out[1][5] ) );
  NOR2_X1 U13552 ( .A1(in2[3]), .A2(in2[2]), .ZN(n1343) );
  NAND2_X1 U13553 ( .A1(in2[1]), .A2(in2[3]), .ZN(n1341) );
  NOR2_X1 U13554 ( .A1(in2[0]), .A2(n1341), .ZN(n1342) );
  NOR2_X1 U13555 ( .A1(n1343), .A2(n1342), .ZN(n1344) );
  NAND2_X1 U13556 ( .A1(in2[0]), .A2(n1345), .ZN(n1587) );
  NAND2_X1 U13557 ( .A1(n1344), .A2(n1587), .ZN(n1347) );
  NOR2_X1 U13558 ( .A1(in2[1]), .A2(n1345), .ZN(n1346) );
  NOR2_X1 U13559 ( .A1(n1347), .A2(n1346), .ZN(n1348) );
  XOR2_X1 U13560 ( .A(r[15]), .B(n1348), .Z(n1350) );
  XNOR2_X1 U13561 ( .A(n1622), .B(r[14]), .ZN(n1349) );
  XNOR2_X1 U13562 ( .A(n1350), .B(n1349), .ZN(\CF_Out[0][14] ) );
  XNOR2_X1 U13563 ( .A(r[77]), .B(r[78]), .ZN(n1355) );
  NAND2_X1 U13564 ( .A1(n1647), .A2(n1628), .ZN(n1352) );
  NAND2_X1 U13565 ( .A1(n1588), .A2(n1611), .ZN(n1351) );
  NAND2_X1 U13566 ( .A1(n1352), .A2(n1351), .ZN(n1353) );
  NOR2_X1 U13567 ( .A1(n1353), .A2(n1577), .ZN(n1354) );
  XNOR2_X1 U13568 ( .A(n1355), .B(n1354), .ZN(n1356) );
  XOR2_X1 U13569 ( .A(n1622), .B(n1356), .Z(CF_Out_MSB[35]) );
  NAND2_X1 U13570 ( .A1(n1455), .A2(n1647), .ZN(n1358) );
  NOR2_X1 U13571 ( .A1(n1460), .A2(n1625), .ZN(n1357) );
  NAND2_X1 U13572 ( .A1(n1358), .A2(n1357), .ZN(n1361) );
  XNOR2_X1 U13573 ( .A(n1622), .B(r[60]), .ZN(n1359) );
  XNOR2_X1 U13574 ( .A(n1359), .B(r[59]), .ZN(n1360) );
  XNOR2_X1 U13575 ( .A(n1361), .B(n1360), .ZN(CF_Out_MSB[5]) );
  XNOR2_X1 U13576 ( .A(r[49]), .B(r[48]), .ZN(n1363) );
  NOR2_X1 U13577 ( .A1(n1564), .A2(n1487), .ZN(n1362) );
  XNOR2_X1 U13578 ( .A(n1363), .B(n1362), .ZN(n1364) );
  XOR2_X1 U13579 ( .A(n1558), .B(n1364), .Z(\CF_Out[2][21] ) );
  XNOR2_X1 U13580 ( .A(r[30]), .B(r[31]), .ZN(n1367) );
  NOR2_X1 U13581 ( .A1(n1483), .A2(n1365), .ZN(n1366) );
  XNOR2_X1 U13582 ( .A(n1367), .B(n1366), .ZN(n1368) );
  XOR2_X1 U13583 ( .A(n1558), .B(n1368), .Z(\CF_Out[2][3] ) );
  XOR2_X1 U13584 ( .A(r[103]), .B(r[102]), .Z(n1371) );
  NAND2_X1 U13585 ( .A1(n1369), .A2(in1[2]), .ZN(n1370) );
  XNOR2_X1 U13586 ( .A(n1371), .B(n1370), .ZN(n1372) );
  XOR2_X1 U13587 ( .A(n1558), .B(n1372), .Z(\CF_Out[1][21] ) );
  NOR2_X1 U13588 ( .A1(n1577), .A2(n1597), .ZN(n1554) );
  XOR2_X1 U13589 ( .A(r[94]), .B(n1554), .Z(n1373) );
  XNOR2_X1 U13590 ( .A(r[93]), .B(n1373), .ZN(n1374) );
  XNOR2_X1 U13591 ( .A(n1558), .B(n1374), .ZN(\CF_Out[1][12] ) );
  XOR2_X1 U13592 ( .A(n1396), .B(n1645), .Z(n1375) );
  NOR2_X1 U13593 ( .A1(n1596), .A2(n1375), .ZN(n1376) );
  XNOR2_X1 U13594 ( .A(n1376), .B(r[85]), .ZN(n1378) );
  XOR2_X1 U13595 ( .A(n1558), .B(r[84]), .Z(n1377) );
  XNOR2_X1 U13596 ( .A(n1378), .B(n1377), .ZN(\CF_Out[1][3] ) );
  NAND2_X1 U13597 ( .A1(in2[1]), .A2(n1594), .ZN(n1586) );
  NAND2_X1 U13598 ( .A1(in1[2]), .A2(in2[3]), .ZN(n1545) );
  NAND2_X1 U13599 ( .A1(n1586), .A2(n1545), .ZN(n1379) );
  NAND2_X1 U13600 ( .A1(n1379), .A2(in3[0]), .ZN(n1382) );
  XNOR2_X1 U13601 ( .A(n1558), .B(r[22]), .ZN(n1380) );
  XNOR2_X1 U13602 ( .A(n1380), .B(r[21]), .ZN(n1381) );
  XNOR2_X1 U13603 ( .A(n1382), .B(n1381), .ZN(\CF_Out[0][21] ) );
  XNOR2_X1 U13604 ( .A(n1558), .B(r[13]), .ZN(n1383) );
  XNOR2_X1 U13605 ( .A(n1383), .B(r[12]), .ZN(n1388) );
  NAND2_X1 U13606 ( .A1(in3[2]), .A2(in2[0]), .ZN(n1384) );
  XNOR2_X1 U13607 ( .A(n1384), .B(in2[1]), .ZN(n1386) );
  NAND2_X1 U13608 ( .A1(n1611), .A2(in2[0]), .ZN(n1385) );
  NAND2_X1 U13609 ( .A1(n1386), .A2(n1385), .ZN(n1387) );
  XNOR2_X1 U13610 ( .A(n1388), .B(n1387), .ZN(\CF_Out[0][12] ) );
  XNOR2_X1 U13611 ( .A(r[4]), .B(r[3]), .ZN(n1392) );
  NOR2_X1 U13612 ( .A1(n1522), .A2(n1596), .ZN(n1389) );
  XNOR2_X1 U13613 ( .A(n1389), .B(n1628), .ZN(n1390) );
  NAND2_X1 U13614 ( .A1(n1390), .A2(n1527), .ZN(n1391) );
  XNOR2_X1 U13615 ( .A(n1392), .B(n1391), .ZN(n1393) );
  XNOR2_X1 U13616 ( .A(n1558), .B(n1393), .ZN(\CF_Out[0][3] ) );
  XNOR2_X1 U13617 ( .A(n1558), .B(r[76]), .ZN(n1394) );
  XNOR2_X1 U13618 ( .A(n1394), .B(r[75]), .ZN(n1400) );
  NOR2_X1 U13619 ( .A1(in1[1]), .A2(n1594), .ZN(n1537) );
  NOR2_X1 U13620 ( .A1(in2[0]), .A2(in2[3]), .ZN(n1395) );
  NOR2_X1 U13621 ( .A1(n1537), .A2(n1395), .ZN(n1398) );
  NOR2_X1 U13622 ( .A1(n1577), .A2(n1396), .ZN(n1397) );
  NAND2_X1 U13623 ( .A1(n1398), .A2(n1397), .ZN(n1399) );
  XNOR2_X1 U13624 ( .A(n1400), .B(n1399), .ZN(CF_Out_MSB[33]) );
  XNOR2_X1 U13625 ( .A(n1558), .B(r[66]), .ZN(n1408) );
  NAND2_X1 U13626 ( .A1(n1401), .A2(n1564), .ZN(n1405) );
  NOR2_X1 U13627 ( .A1(n1564), .A2(n1596), .ZN(n1402) );
  NOR2_X1 U13628 ( .A1(n1403), .A2(n1402), .ZN(n1404) );
  NAND2_X1 U13629 ( .A1(n1405), .A2(n1404), .ZN(n1406) );
  XNOR2_X1 U13630 ( .A(n1406), .B(r[67]), .ZN(n1407) );
  XNOR2_X1 U13631 ( .A(n1408), .B(n1407), .ZN(CF_Out_MSB[18]) );
  NAND2_X1 U13632 ( .A1(n1628), .A2(in1[3]), .ZN(n1412) );
  NAND2_X1 U13633 ( .A1(in1[2]), .A2(n1588), .ZN(n1410) );
  NOR2_X1 U13634 ( .A1(in1[3]), .A2(in2[0]), .ZN(n1409) );
  NOR2_X1 U13635 ( .A1(n1410), .A2(n1409), .ZN(n1411) );
  NAND2_X1 U13636 ( .A1(n1412), .A2(n1411), .ZN(n1413) );
  XNOR2_X1 U13637 ( .A(n1413), .B(r[58]), .ZN(n1414) );
  XOR2_X1 U13638 ( .A(n1414), .B(in2[0]), .Z(n1416) );
  XNOR2_X1 U13639 ( .A(r[57]), .B(n1558), .ZN(n1415) );
  XNOR2_X1 U13640 ( .A(n1416), .B(n1415), .ZN(CF_Out_MSB[3]) );
  XOR2_X1 U13641 ( .A(r[48]), .B(r[47]), .Z(n1418) );
  NAND2_X1 U13642 ( .A1(n1448), .A2(n1496), .ZN(n1417) );
  XNOR2_X1 U13643 ( .A(n1418), .B(n1417), .ZN(n1419) );
  XOR2_X1 U13644 ( .A(n1615), .B(n1419), .Z(\CF_Out[2][20] ) );
  XOR2_X1 U13645 ( .A(r[39]), .B(r[38]), .Z(n1422) );
  NAND2_X1 U13646 ( .A1(in2[1]), .A2(n1522), .ZN(n1612) );
  INV_X1 U13647 ( .A(n1612), .ZN(n1531) );
  NAND2_X1 U13648 ( .A1(n1531), .A2(n1420), .ZN(n1421) );
  XNOR2_X1 U13649 ( .A(n1422), .B(n1421), .ZN(n1423) );
  XOR2_X1 U13650 ( .A(n1615), .B(n1423), .Z(\CF_Out[2][11] ) );
  XNOR2_X1 U13651 ( .A(n1615), .B(r[29]), .ZN(n1427) );
  XNOR2_X1 U13652 ( .A(n1627), .B(in3[2]), .ZN(n1424) );
  NAND2_X1 U13653 ( .A1(n1424), .A2(n1507), .ZN(n1425) );
  XNOR2_X1 U13654 ( .A(n1425), .B(r[30]), .ZN(n1426) );
  XNOR2_X1 U13655 ( .A(n1427), .B(n1426), .ZN(\CF_Out[2][2] ) );
  XOR2_X1 U13656 ( .A(n1428), .B(n1594), .Z(n1429) );
  NOR2_X1 U13657 ( .A1(n1603), .A2(n1429), .ZN(n1430) );
  XNOR2_X1 U13658 ( .A(n1430), .B(r[101]), .ZN(n1432) );
  XOR2_X1 U13659 ( .A(n1615), .B(r[102]), .Z(n1431) );
  XNOR2_X1 U13660 ( .A(n1432), .B(n1431), .ZN(\CF_Out[1][20] ) );
  NAND2_X1 U13661 ( .A1(in2[2]), .A2(n1531), .ZN(n1434) );
  NAND2_X1 U13662 ( .A1(in3[3]), .A2(n1628), .ZN(n1433) );
  NAND2_X1 U13663 ( .A1(n1434), .A2(n1433), .ZN(n1435) );
  XNOR2_X1 U13664 ( .A(n1435), .B(r[93]), .ZN(n1437) );
  XOR2_X1 U13665 ( .A(n1615), .B(r[92]), .Z(n1436) );
  XNOR2_X1 U13666 ( .A(n1437), .B(n1436), .ZN(\CF_Out[1][11] ) );
  NOR2_X1 U13667 ( .A1(in3[2]), .A2(n1455), .ZN(n1466) );
  NOR2_X1 U13668 ( .A1(n1439), .A2(n1438), .ZN(n1440) );
  NOR2_X1 U13669 ( .A1(n1466), .A2(n1440), .ZN(n1441) );
  XNOR2_X1 U13670 ( .A(r[83]), .B(n1441), .ZN(n1442) );
  XNOR2_X1 U13671 ( .A(n1442), .B(r[84]), .ZN(n1443) );
  XNOR2_X1 U13672 ( .A(n1615), .B(n1443), .ZN(\CF_Out[1][2] ) );
  NAND2_X1 U13673 ( .A1(n1445), .A2(n1444), .ZN(n1450) );
  NOR2_X1 U13674 ( .A1(in3[0]), .A2(in3[2]), .ZN(n1446) );
  NOR2_X1 U13675 ( .A1(n1515), .A2(n1446), .ZN(n1447) );
  NAND2_X1 U13676 ( .A1(n1448), .A2(n1447), .ZN(n1449) );
  NAND2_X1 U13677 ( .A1(n1450), .A2(n1449), .ZN(n1452) );
  XOR2_X1 U13678 ( .A(r[20]), .B(r[21]), .Z(n1451) );
  XNOR2_X1 U13679 ( .A(n1452), .B(n1451), .ZN(n1453) );
  XNOR2_X1 U13680 ( .A(n1615), .B(n1453), .ZN(\CF_Out[0][20] ) );
  NAND2_X1 U13681 ( .A1(n1596), .A2(n1454), .ZN(n1457) );
  NAND2_X1 U13682 ( .A1(in2[2]), .A2(n1455), .ZN(n1456) );
  NAND2_X1 U13683 ( .A1(n1457), .A2(n1456), .ZN(n1459) );
  NAND2_X1 U13684 ( .A1(in2[0]), .A2(n1515), .ZN(n1458) );
  NAND2_X1 U13685 ( .A1(n1459), .A2(n1458), .ZN(n1461) );
  NOR2_X1 U13686 ( .A1(n1461), .A2(n1460), .ZN(n1464) );
  XOR2_X1 U13687 ( .A(n1615), .B(r[12]), .Z(n1462) );
  XNOR2_X1 U13688 ( .A(r[11]), .B(n1462), .ZN(n1463) );
  XNOR2_X1 U13689 ( .A(n1464), .B(n1463), .ZN(\CF_Out[0][11] ) );
  NAND2_X1 U13690 ( .A1(n1465), .A2(n1540), .ZN(n1468) );
  NAND2_X1 U13691 ( .A1(n1466), .A2(in1[0]), .ZN(n1467) );
  NAND2_X1 U13692 ( .A1(n1468), .A2(n1467), .ZN(n1470) );
  XOR2_X1 U13693 ( .A(r[3]), .B(r[2]), .Z(n1469) );
  XNOR2_X1 U13694 ( .A(n1470), .B(n1469), .ZN(n1471) );
  XNOR2_X1 U13695 ( .A(n1615), .B(n1471), .ZN(\CF_Out[0][2] ) );
  XNOR2_X1 U13696 ( .A(r[56]), .B(r[57]), .ZN(n1482) );
  NAND2_X1 U13697 ( .A1(n1522), .A2(n1625), .ZN(n1472) );
  NAND2_X1 U13698 ( .A1(n1472), .A2(in3[1]), .ZN(n1480) );
  NAND2_X1 U13699 ( .A1(n1473), .A2(in3[3]), .ZN(n1477) );
  NAND2_X1 U13700 ( .A1(in1[0]), .A2(in1[2]), .ZN(n1474) );
  XNOR2_X1 U13701 ( .A(n1603), .B(n1474), .ZN(n1475) );
  NAND2_X1 U13702 ( .A1(n1475), .A2(n1611), .ZN(n1476) );
  NAND2_X1 U13703 ( .A1(n1477), .A2(n1476), .ZN(n1478) );
  XNOR2_X1 U13704 ( .A(n1478), .B(n1615), .ZN(n1479) );
  XNOR2_X1 U13705 ( .A(n1480), .B(n1479), .ZN(n1481) );
  XNOR2_X1 U13706 ( .A(n1482), .B(n1481), .ZN(CF_Out_MSB[2]) );
  XOR2_X1 U13707 ( .A(r[46]), .B(r[47]), .Z(n1485) );
  NAND2_X1 U13708 ( .A1(n1496), .A2(n1483), .ZN(n1484) );
  XNOR2_X1 U13709 ( .A(n1485), .B(n1484), .ZN(n1486) );
  XOR2_X1 U13710 ( .A(n1549), .B(n1486), .Z(\CF_Out[2][19] ) );
  XOR2_X1 U13711 ( .A(r[37]), .B(r[38]), .Z(n1489) );
  NAND2_X1 U13712 ( .A1(n1487), .A2(n1531), .ZN(n1488) );
  XNOR2_X1 U13713 ( .A(n1489), .B(n1488), .ZN(n1490) );
  XOR2_X1 U13714 ( .A(n1549), .B(n1490), .Z(\CF_Out[2][10] ) );
  XNOR2_X1 U13715 ( .A(n1549), .B(r[29]), .ZN(n1495) );
  XNOR2_X1 U13716 ( .A(n1596), .B(n1491), .ZN(n1492) );
  NAND2_X1 U13717 ( .A1(n1492), .A2(n1507), .ZN(n1493) );
  XNOR2_X1 U13718 ( .A(n1493), .B(r[28]), .ZN(n1494) );
  XNOR2_X1 U13719 ( .A(n1495), .B(n1494), .ZN(\CF_Out[2][1] ) );
  NAND2_X1 U13720 ( .A1(n1496), .A2(in2[2]), .ZN(n1498) );
  NAND2_X1 U13721 ( .A1(n1498), .A2(n1497), .ZN(n1499) );
  XNOR2_X1 U13722 ( .A(n1499), .B(r[101]), .ZN(n1501) );
  XOR2_X1 U13723 ( .A(n1549), .B(r[100]), .Z(n1500) );
  XNOR2_X1 U13724 ( .A(n1501), .B(n1500), .ZN(\CF_Out[1][19] ) );
  XNOR2_X1 U13725 ( .A(n1625), .B(n1628), .ZN(n1502) );
  NAND2_X1 U13726 ( .A1(n1502), .A2(in2[3]), .ZN(n1503) );
  XNOR2_X1 U13727 ( .A(n1503), .B(n1549), .ZN(n1504) );
  XOR2_X1 U13728 ( .A(n1504), .B(r[91]), .Z(n1506) );
  NOR2_X1 U13729 ( .A1(n1625), .A2(n1612), .ZN(n1547) );
  XNOR2_X1 U13730 ( .A(n1547), .B(r[92]), .ZN(n1505) );
  XNOR2_X1 U13731 ( .A(n1506), .B(n1505), .ZN(\CF_Out[1][10] ) );
  XNOR2_X1 U13732 ( .A(n1549), .B(n1537), .ZN(n1511) );
  XOR2_X1 U13733 ( .A(r[83]), .B(r[82]), .Z(n1509) );
  NAND2_X1 U13734 ( .A1(in2[2]), .A2(n1507), .ZN(n1508) );
  XNOR2_X1 U13735 ( .A(n1509), .B(n1508), .ZN(n1510) );
  XNOR2_X1 U13736 ( .A(n1511), .B(n1510), .ZN(\CF_Out[1][1] ) );
  XNOR2_X1 U13737 ( .A(r[19]), .B(r[20]), .ZN(n1513) );
  XNOR2_X1 U13738 ( .A(in1[1]), .B(in2[2]), .ZN(n1521) );
  NOR2_X1 U13739 ( .A1(n1638), .A2(n1521), .ZN(n1512) );
  XNOR2_X1 U13740 ( .A(n1513), .B(n1512), .ZN(n1514) );
  XOR2_X1 U13741 ( .A(n1549), .B(n1514), .Z(\CF_Out[0][19] ) );
  XNOR2_X1 U13742 ( .A(n1515), .B(in1[2]), .ZN(n1516) );
  NAND2_X1 U13743 ( .A1(n1516), .A2(in2[0]), .ZN(n1517) );
  NAND2_X1 U13744 ( .A1(n1517), .A2(in2[3]), .ZN(n1518) );
  XNOR2_X1 U13745 ( .A(n1518), .B(r[10]), .ZN(n1520) );
  XNOR2_X1 U13746 ( .A(n1549), .B(r[11]), .ZN(n1519) );
  XNOR2_X1 U13747 ( .A(n1520), .B(n1519), .ZN(\CF_Out[0][10] ) );
  XNOR2_X1 U13748 ( .A(r[1]), .B(n1549), .ZN(n1526) );
  NOR2_X1 U13749 ( .A1(n1522), .A2(n1521), .ZN(n1523) );
  NAND2_X1 U13750 ( .A1(in2[3]), .A2(n1523), .ZN(n1524) );
  XNOR2_X1 U13751 ( .A(r[2]), .B(n1524), .ZN(n1525) );
  XNOR2_X1 U13752 ( .A(n1526), .B(n1525), .ZN(\CF_Out[0][1] ) );
  INV_X1 U13753 ( .A(n1527), .ZN(n1529) );
  NOR2_X1 U13754 ( .A1(n1529), .A2(n1528), .ZN(n1533) );
  NAND2_X1 U13755 ( .A1(n1628), .A2(in1[0]), .ZN(n1610) );
  NAND2_X1 U13756 ( .A1(in3[2]), .A2(n1610), .ZN(n1530) );
  NOR2_X1 U13757 ( .A1(n1531), .A2(n1530), .ZN(n1532) );
  NOR2_X1 U13758 ( .A1(n1533), .A2(n1532), .ZN(n1536) );
  XOR2_X1 U13759 ( .A(n1549), .B(r[73]), .Z(n1534) );
  XNOR2_X1 U13760 ( .A(r[74]), .B(n1534), .ZN(n1535) );
  XNOR2_X1 U13761 ( .A(n1536), .B(n1535), .ZN(CF_Out_MSB[31]) );
  XOR2_X1 U13762 ( .A(r[64]), .B(r[65]), .Z(n1543) );
  NOR2_X1 U13763 ( .A1(n1538), .A2(n1537), .ZN(n1539) );
  NOR2_X1 U13764 ( .A1(n1540), .A2(n1539), .ZN(n1541) );
  NAND2_X1 U13765 ( .A1(n1541), .A2(in2[2]), .ZN(n1542) );
  XNOR2_X1 U13766 ( .A(n1543), .B(n1542), .ZN(n1544) );
  XOR2_X1 U13767 ( .A(n1549), .B(n1544), .Z(CF_Out_MSB[16]) );
  AND2_X1 U13768 ( .A1(n1612), .A2(n1545), .ZN(n1546) );
  NOR2_X1 U13769 ( .A1(n1547), .A2(n1546), .ZN(n1548) );
  NAND2_X1 U13770 ( .A1(n1548), .A2(n1610), .ZN(n1552) );
  XNOR2_X1 U13771 ( .A(r[56]), .B(r[55]), .ZN(n1550) );
  XNOR2_X1 U13772 ( .A(n1550), .B(n1549), .ZN(n1551) );
  XNOR2_X1 U13773 ( .A(n1552), .B(n1551), .ZN(CF_Out_MSB[1]) );
  XNOR2_X1 U13774 ( .A(r[40]), .B(r[39]), .ZN(n1556) );
  NOR2_X1 U13775 ( .A1(in3[3]), .A2(n1588), .ZN(n1553) );
  NOR2_X1 U13776 ( .A1(n1554), .A2(n1553), .ZN(n1555) );
  XNOR2_X1 U13777 ( .A(n1556), .B(n1555), .ZN(n1557) );
  XNOR2_X1 U13778 ( .A(n1558), .B(n1557), .ZN(n26744) );
  XNOR2_X1 U13779 ( .A(in2[2]), .B(in2[1]), .ZN(n1560) );
  NOR2_X1 U13780 ( .A1(n1560), .A2(n1559), .ZN(n1562) );
  XOR2_X1 U13781 ( .A(r[23]), .B(r[24]), .Z(n1561) );
  XNOR2_X1 U13782 ( .A(n1562), .B(n1561), .ZN(n1563) );
  XNOR2_X1 U13783 ( .A(n1622), .B(n1563), .ZN(n26743) );
  XOR2_X1 U13784 ( .A(r[104]), .B(r[105]), .Z(n1568) );
  XOR2_X1 U13785 ( .A(in3[3]), .B(n1564), .Z(n1565) );
  NOR2_X1 U13786 ( .A1(n1596), .A2(n1565), .ZN(n1566) );
  XNOR2_X1 U13787 ( .A(n1622), .B(n1566), .ZN(n1567) );
  XNOR2_X1 U13788 ( .A(n1568), .B(n1567), .ZN(n26742) );
  XOR2_X1 U13789 ( .A(r[52]), .B(r[51]), .Z(n1574) );
  OR2_X1 U13790 ( .A1(n1570), .A2(n1569), .ZN(n1572) );
  NAND2_X1 U13791 ( .A1(n1572), .A2(n1571), .ZN(n1573) );
  XNOR2_X1 U13792 ( .A(n1574), .B(n1573), .ZN(n1575) );
  XNOR2_X1 U13793 ( .A(n1582), .B(n1575), .ZN(n26741) );
  INV_X1 U13794 ( .A(n1576), .ZN(n1578) );
  NAND2_X1 U13795 ( .A1(n1578), .A2(n1577), .ZN(n1581) );
  NAND2_X1 U13796 ( .A1(n1579), .A2(n1586), .ZN(n1580) );
  NAND2_X1 U13797 ( .A1(n1581), .A2(n1580), .ZN(n1585) );
  XNOR2_X1 U13798 ( .A(n1582), .B(r[79]), .ZN(n1583) );
  XNOR2_X1 U13799 ( .A(n1583), .B(r[78]), .ZN(n1584) );
  XNOR2_X1 U13800 ( .A(n1585), .B(n1584), .ZN(n26740) );
  NOR2_X1 U13801 ( .A1(n1596), .A2(n1586), .ZN(n1590) );
  NAND2_X1 U13802 ( .A1(n1588), .A2(n1587), .ZN(n1589) );
  NOR2_X1 U13803 ( .A1(n1590), .A2(n1589), .ZN(n1593) );
  XNOR2_X1 U13804 ( .A(n1622), .B(r[68]), .ZN(n1591) );
  XNOR2_X1 U13805 ( .A(n1591), .B(r[69]), .ZN(n1592) );
  XNOR2_X1 U13806 ( .A(n1593), .B(n1592), .ZN(n26739) );
  NAND2_X1 U13807 ( .A1(in2[0]), .A2(n1594), .ZN(n1595) );
  XNOR2_X1 U13808 ( .A(n1596), .B(n1595), .ZN(n1598) );
  NAND2_X1 U13809 ( .A1(n1598), .A2(n1597), .ZN(n1599) );
  XNOR2_X1 U13810 ( .A(n1599), .B(n1622), .ZN(n1601) );
  XOR2_X1 U13811 ( .A(r[41]), .B(r[42]), .Z(n1600) );
  XNOR2_X1 U13812 ( .A(n1601), .B(n1600), .ZN(n26738) );
  XNOR2_X1 U13813 ( .A(r[74]), .B(r[75]), .ZN(n1608) );
  NAND2_X1 U13814 ( .A1(in2[3]), .A2(n1602), .ZN(n1605) );
  NAND2_X1 U13815 ( .A1(in1[0]), .A2(n1603), .ZN(n1604) );
  NAND2_X1 U13816 ( .A1(n1605), .A2(n1604), .ZN(n1606) );
  NAND2_X1 U13817 ( .A1(n1606), .A2(in3[2]), .ZN(n1607) );
  XNOR2_X1 U13818 ( .A(n1608), .B(n1607), .ZN(n1609) );
  XNOR2_X1 U13819 ( .A(n1615), .B(n1609), .ZN(n26737) );
  AND2_X1 U13820 ( .A1(n1611), .A2(n1610), .ZN(n1614) );
  NAND2_X1 U13821 ( .A1(in2[2]), .A2(n1612), .ZN(n1613) );
  NOR2_X1 U13822 ( .A1(n1614), .A2(n1613), .ZN(n1618) );
  XOR2_X1 U13823 ( .A(n1615), .B(r[65]), .Z(n1616) );
  XNOR2_X1 U13824 ( .A(r[66]), .B(n1616), .ZN(n1617) );
  XNOR2_X1 U13825 ( .A(n1618), .B(n1617), .ZN(n1621) );
  NAND2_X1 U13826 ( .A1(n1619), .A2(n1627), .ZN(n1620) );
  XOR2_X1 U13827 ( .A(n1621), .B(n1620), .Z(n26736) );
  XNOR2_X1 U13828 ( .A(n1622), .B(r[5]), .ZN(n1623) );
  XNOR2_X1 U13829 ( .A(n1623), .B(r[6]), .ZN(n1635) );
  NAND2_X1 U13830 ( .A1(in2[1]), .A2(n1624), .ZN(n1626) );
  NAND2_X1 U13831 ( .A1(n1626), .A2(n1625), .ZN(n1633) );
  NAND2_X1 U13832 ( .A1(in3[3]), .A2(in2[1]), .ZN(n1630) );
  NAND2_X1 U13833 ( .A1(n1628), .A2(n1627), .ZN(n1629) );
  NAND2_X1 U13834 ( .A1(n1630), .A2(n1629), .ZN(n1631) );
  NAND2_X1 U13835 ( .A1(in1[2]), .A2(n1631), .ZN(n1632) );
  NAND2_X1 U13836 ( .A1(n1633), .A2(n1632), .ZN(n1634) );
  XNOR2_X1 U13837 ( .A(n1635), .B(n1634), .ZN(n26735) );
  XNOR2_X1 U13838 ( .A(r[79]), .B(n1636), .ZN(n1643) );
  NAND2_X1 U13839 ( .A1(n1638), .A2(n1637), .ZN(n1639) );
  NAND2_X1 U13840 ( .A1(n1639), .A2(in3[2]), .ZN(n1641) );
  NAND2_X1 U13841 ( .A1(n1641), .A2(n1640), .ZN(n1642) );
  XNOR2_X1 U13842 ( .A(n1643), .B(n1642), .ZN(n1644) );
  XNOR2_X1 U13843 ( .A(r[80]), .B(n1644), .ZN(n26734) );
  XNOR2_X1 U13844 ( .A(r[67]), .B(r[68]), .ZN(n1652) );
  NAND2_X1 U13845 ( .A1(in2[2]), .A2(n1645), .ZN(n1646) );
  NAND2_X1 U13846 ( .A1(n1647), .A2(n1646), .ZN(n1648) );
  NAND2_X1 U13847 ( .A1(n1648), .A2(in1[1]), .ZN(n1650) );
  NAND2_X1 U13848 ( .A1(n1650), .A2(n1649), .ZN(n1651) );
  XNOR2_X1 U13849 ( .A(n1652), .B(n1651), .ZN(n1653) );
  XNOR2_X1 U13850 ( .A(n1654), .B(n1653), .ZN(n26733) );
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

