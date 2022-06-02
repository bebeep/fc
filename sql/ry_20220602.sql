/*
 Navicat Premium Data Transfer

 Source Server         : yun
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 81.69.10.137:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 02/06/2022 16:57:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fc_basetb
-- ----------------------------
DROP TABLE IF EXISTS `fc_basetb`;
CREATE TABLE `fc_basetb`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `lineName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '线路名称',
  `lineAlias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '线路别名',
  `direct` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '行别（前往北京：上行/从北京出发：下行）',
  `STN` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '站区',
  `tunnelName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '隧道名称',
  `maoduan` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '锚段',
  `pol` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '杆号',
  `realPol` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '真实杆号',
  `span` double NULL DEFAULT NULL COMMENT '跨距',
  `spanByWheel` double NULL DEFAULT 0 COMMENT '车轮脉冲显示的跨距',
  `kmv` double NULL DEFAULT NULL COMMENT '公里标',
  `zig` double NULL DEFAULT NULL COMMENT '拉出值',
  `hei` double NULL DEFAULT NULL COMMENT '导高',
  `structType` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '结构类型',
  `latitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '经度',
  `longitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fc_basetb
-- ----------------------------
INSERT INTO `fc_basetb` VALUES (00000000001, '京港高铁', '', '', '黄梅东站', '', '', '190', '', 45, 0, 1347953, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000002, '京港高铁', '', '', '黄梅东站', '', '', '188', '', 45, 0, 1347953, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000003, '京港高铁', '', '', '黄梅东站', '', '', '186', '', 40, 0, 1347913, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000004, '京港高铁', '', '', '黄梅东站', '', '', '184', '', 40, 0, 1347906, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000005, '京港高铁', '', '', '黄梅东站', '', '', 'D046', '', 47, 0, 1347866, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000006, '京港高铁', '', '', '黄梅东站', '', '', 'D031', '', 47, 0, 1347866, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000007, '京港高铁', '', '', '黄梅东站', '', '', '182', '', 40, 0, 1347866, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000008, '京港高铁', '', '', '黄梅东站', '', '', 'D044', '', 41, 0, 1347824, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000009, '京港高铁', '', '', '黄梅东站', '', '', 'D029', '', 41, 0, 1347824, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000010, '京港高铁', '', '', '黄梅东站', '', '', 'D042', '', 41, 0, 1347824, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000011, '京港高铁', '', '', '黄梅东站', '', '', 'D027', '', 41, 0, 1347824, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000012, '京港高铁', '', '', '黄梅东站', '', '', '180', '', 41, 0, 1347824, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000013, '京港高铁', '', '', '黄梅东站', '', '', 'D040', '', 40, 0, 1347784, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000014, '京港高铁', '', '', '黄梅东站', '', '', 'D025', '', 40, 0, 1347784, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000015, '京港高铁', '', '', '黄梅东站', '', '', 'D038', '', 40, 0, 1347784, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000016, '京港高铁', '', '', '黄梅东站', '', '', 'D023', '', 40, 0, 1347784, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000017, '京港高铁', '', '', '黄梅东站', '', '', '178', '', 40, 0, 1347784, -250, 5300, '', '', '');
INSERT INTO `fc_basetb` VALUES (00000000018, '京港高铁', '', '', '黄梅东站', '', '', '174', '', 40, 0, 1347744, -250, 5300, '', '', '');

-- ----------------------------
-- Table structure for fc_camera
-- ----------------------------
DROP TABLE IF EXISTS `fc_camera`;
CREATE TABLE `fc_camera`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `typeId` int(32) NULL DEFAULT NULL,
  `direct` tinyint(1) UNSIGNED ZEROFILL NULL DEFAULT 0 COMMENT '相机朝向 1正面 2反面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fc_camera
-- ----------------------------
INSERT INTO `fc_camera` VALUES (1, '正面吊柱底座相机左', 2, 1);
INSERT INTO `fc_camera` VALUES (2, '正面吊柱底座相机右', 2, 1);
INSERT INTO `fc_camera` VALUES (3, '正面支柱号相机', 5, 1);
INSERT INTO `fc_camera` VALUES (4, '正面吊柱号相机', 5, 1);
INSERT INTO `fc_camera` VALUES (5, '正面附加悬挂相机左', 3, 1);
INSERT INTO `fc_camera` VALUES (6, '正面附加悬挂相机右', 3, 1);
INSERT INTO `fc_camera` VALUES (7, '正面平腕臂相机左', 6, 1);
INSERT INTO `fc_camera` VALUES (8, '正面平腕臂相机右', 6, 1);
INSERT INTO `fc_camera` VALUES (9, '正面斜腕臂相机左', 7, 1);
INSERT INTO `fc_camera` VALUES (10, '正面斜腕臂相机右', 7, 1);
INSERT INTO `fc_camera` VALUES (11, '正面全局相机左', 8, 1);
INSERT INTO `fc_camera` VALUES (12, '正面全局相机右', 8, 1);
INSERT INTO `fc_camera` VALUES (13, '正面中间局部相机左', 9, 1);
INSERT INTO `fc_camera` VALUES (14, '正面中间局部相机右', 9, 1);
INSERT INTO `fc_camera` VALUES (15, '正面承力索底座相机', 10, 1);
INSERT INTO `fc_camera` VALUES (16, '反面承力索底座相机', 10, 2);
INSERT INTO `fc_camera` VALUES (17, '反面吊柱底座相机左', 2, 2);
INSERT INTO `fc_camera` VALUES (18, '反面吊柱底座相机右', 2, 2);
INSERT INTO `fc_camera` VALUES (19, '反面支柱号相机', 5, 2);
INSERT INTO `fc_camera` VALUES (20, '反面吊柱号相机', 5, 2);
INSERT INTO `fc_camera` VALUES (21, '反面附加悬挂相机左', 3, 2);
INSERT INTO `fc_camera` VALUES (22, '反面附加悬挂相机右', 3, 2);
INSERT INTO `fc_camera` VALUES (23, '反面平腕臂相机左', 6, 2);
INSERT INTO `fc_camera` VALUES (24, '反面平腕臂相机右', 6, 2);
INSERT INTO `fc_camera` VALUES (25, '反面斜腕臂相机左', 7, 2);
INSERT INTO `fc_camera` VALUES (26, '反面斜腕臂相机右', 7, 2);
INSERT INTO `fc_camera` VALUES (27, '反面全局相机左', 8, 2);
INSERT INTO `fc_camera` VALUES (28, '反面全局相机右', 8, 2);
INSERT INTO `fc_camera` VALUES (29, '反面中间局部相机左', 9, 2);
INSERT INTO `fc_camera` VALUES (30, '反面中间局部相机右', 9, 2);
INSERT INTO `fc_camera` VALUES (31, '承力索线夹相机左', 4, 0);
INSERT INTO `fc_camera` VALUES (32, '承力索线夹相机右', 4, 0);
INSERT INTO `fc_camera` VALUES (33, '接触网线夹相机左', 4, 0);
INSERT INTO `fc_camera` VALUES (34, '接触网线夹相机右', 4, 0);

-- ----------------------------
-- Table structure for fc_camera_type
-- ----------------------------
DROP TABLE IF EXISTS `fc_camera_type`;
CREATE TABLE `fc_camera_type`  (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `isEnable` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 1 COMMENT '是否启用 0禁用  1启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fc_camera_type
-- ----------------------------
INSERT INTO `fc_camera_type` VALUES (1, '支持装置', 0);
INSERT INTO `fc_camera_type` VALUES (2, '吊柱底座', 1);
INSERT INTO `fc_camera_type` VALUES (3, '附加悬挂', 1);
INSERT INTO `fc_camera_type` VALUES (4, '吊悬', 1);
INSERT INTO `fc_camera_type` VALUES (5, '杆号相机', 1);
INSERT INTO `fc_camera_type` VALUES (6, '平腕臂', 1);
INSERT INTO `fc_camera_type` VALUES (7, '斜腕臂', 1);
INSERT INTO `fc_camera_type` VALUES (8, '全局相机', 1);
INSERT INTO `fc_camera_type` VALUES (9, '中间局部相机', 1);
INSERT INTO `fc_camera_type` VALUES (10, '承力索底座相机', 1);

-- ----------------------------
-- Table structure for fc_record
-- ----------------------------
DROP TABLE IF EXISTS `fc_record`;
CREATE TABLE `fc_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgKey` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '图片id',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '缺陷记录字符串',
  `taskPath` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `pole` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `cameraId` int(11) NULL DEFAULT NULL,
  `startX` int(11) NULL DEFAULT NULL,
  `startY` int(11) NULL DEFAULT NULL,
  `endX` int(11) NULL DEFAULT NULL,
  `endY` int(11) NULL DEFAULT NULL,
  `componentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部件名称',
  `componentDefect` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '缺陷部件',
  `defectType` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '缺陷类型',
  `defectLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '缺陷等级',
  `TIM` bigint(20) NULL DEFAULT NULL,
  `checkDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '检测日期',
  `STN` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '站区',
  `KMV` double UNSIGNED NULL DEFAULT NULL COMMENT '公里标',
  `imgPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '缺陷图片保存位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fc_record
-- ----------------------------
INSERT INTO `fc_record` VALUES (8, '22030516250679322', '轮子烂了，开不得了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '40', 33, 325, 212, 774, 413, '1', '1', '1', '1', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (9, '22030516250679322', '轮子烂了，开不得了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '40', 3, 251, 144, 642, 369, '1', '1', '1', '1', NULL, '2022-05-04', 'newSTN2', 0, NULL);
INSERT INTO `fc_record` VALUES (15, '22030516250679322', '绳子有点细，加粗加粗', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '40', 1, 813, 224, 1032, 376, '1', '1', '2', '1', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (16, '22030622402992710', '绳子有点细，加粗加粗', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '38', 2, 790, 252, 1039, 431, '1', '1', '2', '1', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (19, '22030516290312212', '测试缺陷', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '59', 2, 503, 331, 632, 441, '2', '2', '3', '2', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (20, '22030516284898812', '成都市', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '45', 2, 519, 65, 634, 154, '2', '2', '2', '1', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (21, '22030516284898812', '测试缺陷', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '45', 2, 224, 173, 371, 253, '2', '3', '4', '2', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (23, '22030622402389304', '测试缺陷02', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '40', 1, 759, 262, 966, 405, '4', '4', '3', '2', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (24, '22030622402389304', '轮子烂了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '40', 1, 274, 225, 535, 400, '2', '2', '2', '2', NULL, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (26, '22030516284214400', '绳子有点细，加粗加粗', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '39', 1, 884, 201, 1126, 350, '2', '3', '2', '2', 132909390065231114, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (27, '22030516284214400', '绳子有点细，加粗加粗', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '39', 1, 884, 201, 1126, 350, '2', '3', '2', '2', 132909390065231114, '2022-05-04', 'newSTN2', NULL, NULL);
INSERT INTO `fc_record` VALUES (28, '22030516404251710', '轮子烂了，开不得了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', '27', 2, 714, 272, 973, 432, '部件名称2', '缺陷部件2', '缺陷类型2', '二级', NULL, '2022-05-04', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (29, '22030516290913030', '测试缺陷01', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', '63', 3, 707, 258, 974, 462, '部件名称1', '缺陷部件2', '缺陷类型2', '二级', NULL, '2022-05-04', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (30, '22030516290938300', '轮子烂了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', '65', 1, 470, 210, 822, 451, '部件名称2', '缺陷部件2', '缺陷类型2', '二级', NULL, '2022-05-04', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (31, '22030516411966400', '轮子烂了，开不得了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', '65', 1, 732, 239, 987, 395, '部件名称1', '缺陷部件2', '缺陷类型2', '二级', NULL, '2022-05-04', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (32, '22030516393592412', '轮子烂了，开不', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', 'U1_2', 2, 701, 218, 1009, 419, '部件名称2', '缺陷部件2', '缺陷类型2', '二级', NULL, '2022-05-04', 'newSTN2', 2222, NULL);
INSERT INTO `fc_record` VALUES (34, '22030516290100400', '测试缺陷01', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', 'Y016_3', 1, 729, 232, 1019, 440, '部件名称2', '缺陷部件2', '缺陷类型2', '二级', NULL, '2022-05-04', '123', 888, NULL);
INSERT INTO `fc_record` VALUES (35, '22030622452917500', '轮子烂了，开不', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', 'Y016_3', 1, 740, 261, 965, 412, '部件名称3', '缺陷部件3', '缺陷类型3', '二级', NULL, '2022-05-04', '123', 888, NULL);
INSERT INTO `fc_record` VALUES (39, '22030622402453732', '参数', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', 'Y016_3', 4, 274, 112, 441, 210, '部件名称1', '缺陷部件2', '缺陷类型2', '一级', NULL, '2022-05-04', '123', 888, NULL);
INSERT INTO `fc_record` VALUES (44, '22030516272988230', '草率', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', 'Y016_3', 4, 704, 68, 972, 152, '部件名称3', '缺陷部件3', '缺陷类型4', '二级', NULL, '2022-05-04', '123', 888, NULL);
INSERT INTO `fc_record` VALUES (45, '22030516273299012', '1超出', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', 'Y016_3', 2, 409, 148, 596, 317, '部件名称2', '缺陷部件1', '缺陷类型2', '一级', NULL, '2022-05-04', '123', 888, NULL);
INSERT INTO `fc_record` VALUES (46, '22030516272874700', '曹丕媳妇进菜园', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', 'Y016_2', 1, 589, 182, 747, 291, '部件名称2', '缺陷部件2', '缺陷类型2', '一级', NULL, '2022-05-04', 'newSTN2', 2222, NULL);
INSERT INTO `fc_record` VALUES (47, '22030516283275900', '曹丕媳妇进菜园(甄姬扒菜)', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', 'Y016_2', 1, 772, 246, 942, 379, ' 部件名称1', '缺陷部件1', '缺陷类型1', '二级', NULL, '2022-05-04', 'newSTN2', 2222, NULL);
INSERT INTO `fc_record` VALUES (48, '22030622402389310', '缺陷', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDRcMjAyMl8wNF8wMl8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwz', '40', 2, 74, 110, 199, 223, '部件名称1', '缺陷部件2', '缺陷类型2', '一级', NULL, '2022-05-04', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (49, '22030622402389310', '注意', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDNcMjAyMl8wNF8wMl8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', '40', 2, 399, 165, 638, 329, '部件名称3', '缺陷部件2', '缺陷类型2', '一级', NULL, '2022-05-04', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (51, '22030622402389300', '参数', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwy', '40', 1, 449, 137, 599, 245, '部件名称1', '缺陷部件2', '缺陷类型2', '二级', NULL, '2022-05-04', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (52, '22030516255642900', '轮子烂了，开不得了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', 'U111', 1, 698, 385, 900, 549, '部件名称3', '缺陷部件1', '缺陷类型1', '二级', NULL, '2022-05-26', '双墩集站', 0, NULL);
INSERT INTO `fc_record` VALUES (53, '22030516260306200', '轮子落了', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDQtMDFcMjAyMl8wNF8wMV8xNF8wNF8wMV/lj4zpm7fnur9f5Y+M5aKp6ZuG56uZLembt+m6u+W6l+ermV/kuIvooYwx', '20_2', 2, 350, 229, 621, 399, '部件名称1', '缺陷部件1', '缺陷类型1', '二级', 1653531279000, '2022-05-26', 'STN', 0, NULL);
INSERT INTO `fc_record` VALUES (54, '22030516382533500', '参数', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', '11', 2, 398, 185, 544, 275, '部件名称1', '缺陷部件2', '缺陷类型1', '二级', NULL, '2022-05-26', 'STN', 0, 'D:\\天窗数据\\缺陷图片\\22030516382533500.jpg');
INSERT INTO `fc_record` VALUES (59, '22030623263977116', '测试缺陷03', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', 'U5_1', 10, 248, 210, 449, 346, '承力索底', '承力索底', '有点问题', '一级', 1653801896000, '2022-05-29', '浦口站', 0, '');
INSERT INTO `fc_record` VALUES (60, '22030623263977104', '测试缺陷03', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', 'U5_1', 0, 754, 297, 937, 444, '测试部件01', '吊柱底座', '测试类型01', '二级', 1653890414000, '2022-05-30', '浦口站', 0, '');
INSERT INTO `fc_record` VALUES (78, '22030623263977101', '测试缺陷01', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', 'U5_1', 2, 892, 111, 1081, 211, '吊柱底座', '吊柱底座', '测试类型01', '一级', 1654089076000, '2022-06-01', '浦口站', 0, 'D:\\天窗数据\\缺陷图片\\22030623263977101.jpg');
INSERT INTO `fc_record` VALUES (79, '22030623263977101', '测试缺陷03', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', 'U5_1', 2, 336, 219, 557, 351, '吊柱底座', '吊柱', '有点问题', '一级', 1654089110000, '2022-06-01', '浦口站', 0, 'D:\\天窗数据\\缺陷图片\\22030623263977101.jpg');

-- ----------------------------
-- Table structure for fc_scan_status
-- ----------------------------
DROP TABLE IF EXISTS `fc_scan_status`;
CREATE TABLE `fc_scan_status`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `scanedPoles` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '浏览过的杆号',
  `userId` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `currdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '保存的数据',
  `currTask` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `currStartSTN` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `currEndSTN` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `currStartSTNId` int(11) NULL DEFAULT NULL,
  `currEndSTNId` int(11) NULL DEFAULT NULL,
  `currCameraType` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '相机分类',
  `currPolesPage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '当前杆号下标',
  `currPole` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '当前杆号',
  `currDirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `currCameraRealType` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `imgKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fc_scan_status
-- ----------------------------
INSERT INTO `fc_scan_status` VALUES (9, ' ', 100, NULL, 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', '亭子山-全椒', '浦口站', 6427, 24684, '2', '1', 'U4', '1', NULL, '22030623263977106');
INSERT INTO `fc_scan_status` VALUES (10, ' ,U8', 102, '2022-05-02', '123123', '1111', '2222', 111, 33, '2', '3', 'U8', '1', '123', '22222');

-- ----------------------------
-- Table structure for fc_user
-- ----------------------------
DROP TABLE IF EXISTS `fc_user`;
CREATE TABLE `fc_user`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `usertype` int(11) NULL DEFAULT 1 COMMENT '类型(默认1)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fc_user
-- ----------------------------
INSERT INTO `fc_user` VALUES (00000000019, 'abc123', '123456', 1);
INSERT INTO `fc_user` VALUES (00000000022, 'admin', 'admin123', 1);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'fc_basetb', '基础数据表', NULL, NULL, 'FcBasetb', 'crud', 'com.ruoyi.system', 'fc', 'basetb', '基础数据', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38', NULL);
INSERT INTO `gen_table` VALUES (2, 'fc_user', '用户表', NULL, NULL, 'FcUser', 'crud', 'com.ruoyi.system', 'fc', 'user', '用户', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39', NULL);
INSERT INTO `gen_table` VALUES (3, 'fc_camera', '相机', NULL, NULL, 'FcCamera', 'crud', 'com.ruoyi.system', 'fc', 'camera', '相机', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39', NULL);
INSERT INTO `gen_table` VALUES (4, 'fc_camera_type', '相机分类', NULL, NULL, 'FcCameraType', 'crud', 'com.ruoyi.system', 'fc', 'camera_type', '相机分类', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:19:01', NULL);
INSERT INTO `gen_table` VALUES (5, 'fc_record', '缺陷记录', NULL, NULL, 'FcRecord', 'crud', 'com.ruoyi.system', 'fc', 'record', '缺陷记录', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10', NULL);
INSERT INTO `gen_table` VALUES (6, 'fc_scan_status', '操作记录', NULL, NULL, 'FcScanStatus', 'crud', 'com.ruoyi.system', 'fc', 'status', '状态记录', 'ruoyi', '0', '/', '{}', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', NULL, 'int(11) unsigned zerofill', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES (2, '1', 'lineName', '线路名称', 'varchar(255)', 'String', 'linename', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES (3, '1', 'lineAlias', '线路别名', 'varchar(255)', 'String', 'linealias', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES (4, '1', 'direct', '行别（前往北京：上行/从北京出发：下行）', 'varchar(50)', 'String', 'direct', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES (5, '1', 'STN', '站区', 'varchar(255)', 'String', 'stn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES (6, '1', 'tunnelName', '隧道名称', 'varchar(255)', 'String', 'tunnelname', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES (7, '1', 'maoduan', '锚段', 'varchar(255)', 'String', 'maoduan', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES (8, '1', 'pol', '杆号', 'varchar(100)', 'String', 'pol', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (9, '1', 'realPol', '真实杆号', 'varchar(100)', 'String', 'realpol', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (10, '1', 'span', '跨距', 'double', 'Long', 'span', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (11, '1', 'spanByWheel', '车轮脉冲显示的跨距', 'double', 'Long', 'spanbywheel', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (12, '1', 'kmv', '公里标', 'double', 'Long', 'kmv', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 12, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (13, '1', 'zig', '拉出值', 'double', 'Long', 'zig', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 13, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (14, '1', 'hei', '导高', 'double', 'Long', 'hei', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 14, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (15, '1', 'structType', '结构类型', 'varchar(100)', 'String', 'structtype', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'select', '', 15, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (16, '1', 'latitude', '经度', 'varchar(100)', 'String', 'latitude', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 16, 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (17, '1', 'longitude', '纬度', 'varchar(100)', 'String', 'longitude', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 17, 'admin', '2022-04-19 00:59:12', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES (18, '2', 'id', NULL, 'int(11) unsigned zerofill', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES (19, '2', 'username', '账号', 'varchar(255)', 'String', 'username', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES (20, '2', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES (21, '2', 'usertype', '类型(默认1)', 'int(11)', 'Long', 'usertype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES (22, '3', 'id', NULL, 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39');
INSERT INTO `gen_table_column` VALUES (23, '3', 'name', '相机名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39');
INSERT INTO `gen_table_column` VALUES (24, '3', 'typeId', '相机分类id', 'int(32)', 'Long', 'typeid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39');
INSERT INTO `gen_table_column` VALUES (25, '4', 'id', NULL, 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-04-23 23:11:50', '', '2022-04-23 23:19:02');
INSERT INTO `gen_table_column` VALUES (26, '4', 'typeName', '分类名称', 'varchar(255)', 'String', 'typename', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-04-23 23:11:50', '', '2022-04-23 23:19:02');
INSERT INTO `gen_table_column` VALUES (27, '4', 'isEnable', '是否启用', 'tinyint(1) unsigned zerofill', 'Integer', 'isenable', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-04-23 23:11:50', '', '2022-04-23 23:19:02');
INSERT INTO `gen_table_column` VALUES (28, '5', 'id', NULL, 'int(11)', 'Integer', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10');
INSERT INTO `gen_table_column` VALUES (29, '5', 'imgKey', '图片id', 'bigint(20)', 'Long', 'imgkey', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10');
INSERT INTO `gen_table_column` VALUES (30, '5', 'content', '缺陷记录字符串', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10');
INSERT INTO `gen_table_column` VALUES (31, '5', 'taskPath', '任务全路径', 'text', 'String', 'taskpath', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES (32, '5', 'pole', '杆号', 'varchar(255)', 'String', 'pole', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES (33, '5', 'cameraId', '相机id', 'int(11)', 'Integer', 'cameraid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES (34, '5', 'startX', NULL, 'int(11)', 'Integer', 'startx', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES (35, '5', 'startY', NULL, 'int(11)', 'Integer', 'starty', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES (36, '5', 'endX', NULL, 'int(11)', 'Integer', 'endx', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES (37, '5', 'endY', NULL, 'int(11)', 'Integer', 'endy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES (38, '6', 'id', NULL, 'int(11) unsigned zerofill', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (39, '6', 'scanedPoles', '浏览过的杆号', 'mediumtext', 'String', 'scanedpoles', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (40, '6', 'defectPoles', '有缺陷的杆号', 'mediumtext', 'String', 'defectpoles', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (41, '6', 'userId', '用户id', 'int(11)', 'Long', 'userid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (42, '6', 'currdate', '当前日期', 'varchar(255)', 'String', 'currdate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (43, '6', 'currTask', '当前任务路径', 'varchar(255)', 'String', 'currtask', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (44, '6', 'currStartSTN', '开始站区', 'varchar(255)', 'String', 'currstartstn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (45, '6', 'currEndSTN', '结束站区', 'varchar(255)', 'String', 'currendstn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (46, '6', 'currStartSTNId', '站区开始id', 'int(11)', 'Long', 'currstartstnid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (47, '6', 'currEndSTNId', '站区结束id', 'int(11)', 'Long', 'currendstnid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (48, '6', 'currCameraType', '智能定制-相机分类', 'varchar(255)', 'String', 'currcameratype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 11, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (49, '6', 'currPolesPage', '当前杆号的页码', 'varchar(255)', 'String', 'currpolespage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES (50, '6', 'currPole', '当前杆号', 'varchar(255)', 'String', 'currpole', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-04-19 00:52:41', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-04-19 00:52:41', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-04-19 00:52:41', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-04-19 00:52:41', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-04-19 00:52:41', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '总部', 0, '', '', '', '0', '0', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-19 23:51:36');
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '管理员', 1, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-19 23:51:52', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 100, '0,100', '普通人员', 2, NULL, NULL, NULL, '0', '0', 'admin', '2022-04-19 23:52:59', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '部件名称1', '1', 'component_name', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:57:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (30, 2, '部件名称2', '2', 'component_name', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:57:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (31, 3, '部件名称3', '3', 'component_name', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:58:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (32, 4, '部件名称4', '4', 'component_name', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:58:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 5, '部件名称5', '5', 'component_name', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:58:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (34, 1, '缺陷部件1', '1', 'component_defect', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:58:44', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 2, '缺陷部件2', '2', 'component_defect', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:58:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 3, '缺陷部件3', '3', 'component_defect', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:58:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 4, '缺陷部件4', '4', 'component_defect', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:59:08', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 5, '缺陷部件5', '5', 'component_defect', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:59:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 1, '缺陷类型1', '1', 'defect_type', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:59:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (40, 2, '缺陷类型2', '2', 'defect_type', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:59:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (41, 3, '缺陷类型3', '3', 'defect_type', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:59:41', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (42, 4, '缺陷类型4', '4', 'defect_type', NULL, 'default', 'N', '0', 'admin', '2022-04-29 20:59:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (43, 1, '一级', '1', 'defect_level', NULL, 'default', 'N', '0', 'admin', '2022-04-29 21:00:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (44, 2, '二级', '2', 'defect_level', NULL, 'default', 'N', '0', 'admin', '2022-04-29 21:00:24', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '部件名称', 'component_name', '0', 'admin', '2022-04-29 20:34:39', '', NULL, '部件名称');
INSERT INTO `sys_dict_type` VALUES (12, '缺陷部件', 'component_defect', '0', 'admin', '2022-04-29 20:35:38', '', NULL, '缺陷部件');
INSERT INTO `sys_dict_type` VALUES (13, '缺陷类型', 'defect_type', '0', 'admin', '2022-04-29 20:36:52', '', NULL, '缺陷类型');
INSERT INTO `sys_dict_type` VALUES (14, '缺陷等级', 'defect_level', '0', 'admin', '2022-04-29 20:37:10', '', NULL, '缺陷等级');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-04-19 00:52:42', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-04-19 00:52:42', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-04-19 00:52:42', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 504 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 20:14:59');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-19 21:28:51');
INSERT INTO `sys_logininfor` VALUES (102, 'abc123', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：abc123 不存在', '2022-04-19 22:57:09');
INSERT INTO `sys_logininfor` VALUES (103, 'abc123', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：abc123 不存在', '2022-04-19 23:05:23');
INSERT INTO `sys_logininfor` VALUES (104, 'abc123', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：abc123 不存在', '2022-04-19 23:11:42');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:15:59');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 23:18:20');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-19 23:18:46');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-19 23:19:34');
INSERT INTO `sys_logininfor` VALUES (109, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:03:09');
INSERT INTO `sys_logininfor` VALUES (110, 'user000111', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：user000111 不存在', '2022-04-20 00:03:22');
INSERT INTO `sys_logininfor` VALUES (111, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-20 00:03:33');
INSERT INTO `sys_logininfor` VALUES (112, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 00:32:58');
INSERT INTO `sys_logininfor` VALUES (113, 'user000', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 20:53:27');
INSERT INTO `sys_logininfor` VALUES (114, 'user0001', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：user0001 不存在', '2022-04-20 20:56:48');
INSERT INTO `sys_logininfor` VALUES (115, 'user000', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-20 20:56:54');
INSERT INTO `sys_logininfor` VALUES (116, 'user000', '183.222.199.187', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-20 21:08:35');
INSERT INTO `sys_logininfor` VALUES (117, 'user000', '183.222.199.187', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-20 21:12:04');
INSERT INTO `sys_logininfor` VALUES (118, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:14:04');
INSERT INTO `sys_logininfor` VALUES (119, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:21:47');
INSERT INTO `sys_logininfor` VALUES (120, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:22:17');
INSERT INTO `sys_logininfor` VALUES (121, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:24:43');
INSERT INTO `sys_logininfor` VALUES (122, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:32:22');
INSERT INTO `sys_logininfor` VALUES (123, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:32:58');
INSERT INTO `sys_logininfor` VALUES (124, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:45:33');
INSERT INTO `sys_logininfor` VALUES (125, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:47:19');
INSERT INTO `sys_logininfor` VALUES (126, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:48:04');
INSERT INTO `sys_logininfor` VALUES (127, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:48:34');
INSERT INTO `sys_logininfor` VALUES (128, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:50:35');
INSERT INTO `sys_logininfor` VALUES (129, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:51:29');
INSERT INTO `sys_logininfor` VALUES (130, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:56:04');
INSERT INTO `sys_logininfor` VALUES (131, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:56:44');
INSERT INTO `sys_logininfor` VALUES (132, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:58:29');
INSERT INTO `sys_logininfor` VALUES (133, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 21:59:47');
INSERT INTO `sys_logininfor` VALUES (134, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:01:33');
INSERT INTO `sys_logininfor` VALUES (135, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:08:43');
INSERT INTO `sys_logininfor` VALUES (136, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:12:00');
INSERT INTO `sys_logininfor` VALUES (137, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:12:56');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:25:29');
INSERT INTO `sys_logininfor` VALUES (139, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:26:12');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 22:30:40');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:30:45');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 22:48:13');
INSERT INTO `sys_logininfor` VALUES (143, 'user001', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:48:23');
INSERT INTO `sys_logininfor` VALUES (144, 'user001', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-20 22:48:46');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:48:50');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-20 22:54:09');
INSERT INTO `sys_logininfor` VALUES (147, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:34:26');
INSERT INTO `sys_logininfor` VALUES (148, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:38:52');
INSERT INTO `sys_logininfor` VALUES (149, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 09:41:26');
INSERT INTO `sys_logininfor` VALUES (150, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 15:27:51');
INSERT INTO `sys_logininfor` VALUES (151, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:03:03');
INSERT INTO `sys_logininfor` VALUES (152, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:03:55');
INSERT INTO `sys_logininfor` VALUES (153, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:04:40');
INSERT INTO `sys_logininfor` VALUES (154, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:06:22');
INSERT INTO `sys_logininfor` VALUES (155, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:06:50');
INSERT INTO `sys_logininfor` VALUES (156, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:09:48');
INSERT INTO `sys_logininfor` VALUES (157, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:10:17');
INSERT INTO `sys_logininfor` VALUES (158, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:10:38');
INSERT INTO `sys_logininfor` VALUES (159, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 16:13:18');
INSERT INTO `sys_logininfor` VALUES (160, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 17:34:36');
INSERT INTO `sys_logininfor` VALUES (161, 'user000', '182.136.191.186', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 17:36:51');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:03:34');
INSERT INTO `sys_logininfor` VALUES (163, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 20:53:13');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 21:02:03');
INSERT INTO `sys_logininfor` VALUES (165, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 22:08:54');
INSERT INTO `sys_logininfor` VALUES (166, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-21 22:31:07');
INSERT INTO `sys_logininfor` VALUES (167, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 09:19:41');
INSERT INTO `sys_logininfor` VALUES (168, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 09:24:11');
INSERT INTO `sys_logininfor` VALUES (169, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 09:25:30');
INSERT INTO `sys_logininfor` VALUES (170, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 09:30:50');
INSERT INTO `sys_logininfor` VALUES (171, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 09:32:49');
INSERT INTO `sys_logininfor` VALUES (172, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 09:32:55');
INSERT INTO `sys_logininfor` VALUES (173, 'undefined', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-22 09:33:48');
INSERT INTO `sys_logininfor` VALUES (174, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-22 09:33:48');
INSERT INTO `sys_logininfor` VALUES (175, 'undefined', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-22 09:33:51');
INSERT INTO `sys_logininfor` VALUES (176, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 09:33:51');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 10:53:46');
INSERT INTO `sys_logininfor` VALUES (178, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 10:54:27');
INSERT INTO `sys_logininfor` VALUES (179, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:03:09');
INSERT INTO `sys_logininfor` VALUES (180, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:04:36');
INSERT INTO `sys_logininfor` VALUES (181, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:14:57');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 11:17:43');
INSERT INTO `sys_logininfor` VALUES (183, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:18:13');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-22 11:23:27');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:23:30');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 11:23:41');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:24:26');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 11:25:12');
INSERT INTO `sys_logininfor` VALUES (189, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:33:09');
INSERT INTO `sys_logininfor` VALUES (190, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:33:51');
INSERT INTO `sys_logininfor` VALUES (191, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:38:56');
INSERT INTO `sys_logininfor` VALUES (192, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:45:01');
INSERT INTO `sys_logininfor` VALUES (193, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:49:04');
INSERT INTO `sys_logininfor` VALUES (194, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:50:13');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2022-04-22 11:50:51');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:51:15');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-22 11:51:37');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-22 11:51:40');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:51:44');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 11:52:04');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-22 11:53:28');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:53:45');
INSERT INTO `sys_logininfor` VALUES (203, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:53:55');
INSERT INTO `sys_logininfor` VALUES (204, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 11:58:59');
INSERT INTO `sys_logininfor` VALUES (205, 'user000', '139.198.172.247', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-22 12:02:25');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-22 12:04:08');
INSERT INTO `sys_logininfor` VALUES (207, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 12:05:56');
INSERT INTO `sys_logininfor` VALUES (208, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-22 12:09:28');
INSERT INTO `sys_logininfor` VALUES (209, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-22 12:14:23');
INSERT INTO `sys_logininfor` VALUES (210, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-22 12:15:08');
INSERT INTO `sys_logininfor` VALUES (211, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 14:57:22');
INSERT INTO `sys_logininfor` VALUES (212, 'undefined', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-22 14:58:04');
INSERT INTO `sys_logininfor` VALUES (213, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 14:58:04');
INSERT INTO `sys_logininfor` VALUES (214, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 14:59:06');
INSERT INTO `sys_logininfor` VALUES (215, 'undefined', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-22 15:01:23');
INSERT INTO `sys_logininfor` VALUES (216, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 15:01:23');
INSERT INTO `sys_logininfor` VALUES (217, 'user000', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 21:57:17');
INSERT INTO `sys_logininfor` VALUES (218, 'user000', '182.150.164.217', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-22 22:01:51');
INSERT INTO `sys_logininfor` VALUES (219, 'user000', '183.222.199.187', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-22 22:05:02');
INSERT INTO `sys_logininfor` VALUES (220, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 22:07:36');
INSERT INTO `sys_logininfor` VALUES (221, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 22:56:42');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-22 23:20:11');
INSERT INTO `sys_logininfor` VALUES (223, 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-22 23:20:24');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-04-23 13:22:47');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 13:22:51');
INSERT INTO `sys_logininfor` VALUES (226, 'user03', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '登录用户：user03 不存在', '2022-04-23 13:26:53');
INSERT INTO `sys_logininfor` VALUES (227, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-23 13:27:02');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-23 13:27:13');
INSERT INTO `sys_logininfor` VALUES (229, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 13:27:22');
INSERT INTO `sys_logininfor` VALUES (230, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-23 13:27:28');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 13:27:32');
INSERT INTO `sys_logininfor` VALUES (232, 'user000', '182.150.164.217', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-23 13:31:06');
INSERT INTO `sys_logininfor` VALUES (233, 'user000', '182.150.164.217', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-23 13:31:37');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-23 13:35:00');
INSERT INTO `sys_logininfor` VALUES (235, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 13:35:09');
INSERT INTO `sys_logininfor` VALUES (236, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-23 13:35:37');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '182.150.164.217', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 13:35:57');
INSERT INTO `sys_logininfor` VALUES (238, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 21:06:21');
INSERT INTO `sys_logininfor` VALUES (239, 'user000', '117.175.49.88', 'XX XX', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-04-23 21:43:24');
INSERT INTO `sys_logininfor` VALUES (240, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 22:18:30');
INSERT INTO `sys_logininfor` VALUES (241, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 23:11:16');
INSERT INTO `sys_logininfor` VALUES (242, 'user000', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-04-23 23:11:22');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-23 23:11:29');
INSERT INTO `sys_logininfor` VALUES (244, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 14:34:23');
INSERT INTO `sys_logininfor` VALUES (245, 'user000', '182.136.181.238', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 15:19:00');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 20:00:43');
INSERT INTO `sys_logininfor` VALUES (247, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-24 20:19:16');
INSERT INTO `sys_logininfor` VALUES (248, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-24 21:10:41');
INSERT INTO `sys_logininfor` VALUES (249, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-24 23:21:12');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-24 23:46:07');
INSERT INTO `sys_logininfor` VALUES (251, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-25 00:04:03');
INSERT INTO `sys_logininfor` VALUES (252, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 11:15:43');
INSERT INTO `sys_logininfor` VALUES (253, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 11:15:47');
INSERT INTO `sys_logininfor` VALUES (254, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 11:49:15');
INSERT INTO `sys_logininfor` VALUES (255, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 11:49:35');
INSERT INTO `sys_logininfor` VALUES (256, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 13:49:20');
INSERT INTO `sys_logininfor` VALUES (257, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 13:49:22');
INSERT INTO `sys_logininfor` VALUES (258, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 13:55:40');
INSERT INTO `sys_logininfor` VALUES (259, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 13:55:48');
INSERT INTO `sys_logininfor` VALUES (260, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 13:56:04');
INSERT INTO `sys_logininfor` VALUES (261, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 13:56:04');
INSERT INTO `sys_logininfor` VALUES (262, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 13:56:09');
INSERT INTO `sys_logininfor` VALUES (263, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 13:56:09');
INSERT INTO `sys_logininfor` VALUES (264, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:30:05');
INSERT INTO `sys_logininfor` VALUES (265, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:30:05');
INSERT INTO `sys_logininfor` VALUES (266, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:30:15');
INSERT INTO `sys_logininfor` VALUES (267, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:30:15');
INSERT INTO `sys_logininfor` VALUES (268, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:30:15');
INSERT INTO `sys_logininfor` VALUES (269, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:30:15');
INSERT INTO `sys_logininfor` VALUES (270, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:30:23');
INSERT INTO `sys_logininfor` VALUES (271, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:30:55');
INSERT INTO `sys_logininfor` VALUES (272, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:31:18');
INSERT INTO `sys_logininfor` VALUES (273, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:31:31');
INSERT INTO `sys_logininfor` VALUES (274, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:31:31');
INSERT INTO `sys_logininfor` VALUES (275, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:31:37');
INSERT INTO `sys_logininfor` VALUES (276, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:31:37');
INSERT INTO `sys_logininfor` VALUES (277, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:32:03');
INSERT INTO `sys_logininfor` VALUES (278, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:32:15');
INSERT INTO `sys_logininfor` VALUES (279, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:32:15');
INSERT INTO `sys_logininfor` VALUES (280, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:33:00');
INSERT INTO `sys_logininfor` VALUES (281, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:33:00');
INSERT INTO `sys_logininfor` VALUES (282, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:33:00');
INSERT INTO `sys_logininfor` VALUES (283, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 15:33:00');
INSERT INTO `sys_logininfor` VALUES (284, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:33:04');
INSERT INTO `sys_logininfor` VALUES (285, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:33:04');
INSERT INTO `sys_logininfor` VALUES (286, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:33:04');
INSERT INTO `sys_logininfor` VALUES (287, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 15:33:04');
INSERT INTO `sys_logininfor` VALUES (288, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 15:33:04');
INSERT INTO `sys_logininfor` VALUES (289, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 16:00:49');
INSERT INTO `sys_logininfor` VALUES (290, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 16:00:49');
INSERT INTO `sys_logininfor` VALUES (291, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 16:00:49');
INSERT INTO `sys_logininfor` VALUES (292, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 16:02:15');
INSERT INTO `sys_logininfor` VALUES (293, 'undefined', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-25 16:02:15');
INSERT INTO `sys_logininfor` VALUES (294, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 16:02:16');
INSERT INTO `sys_logininfor` VALUES (295, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 16:02:53');
INSERT INTO `sys_logininfor` VALUES (296, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 16:02:57');
INSERT INTO `sys_logininfor` VALUES (297, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 20:12:18');
INSERT INTO `sys_logininfor` VALUES (298, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 20:12:25');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 20:43:25');
INSERT INTO `sys_logininfor` VALUES (300, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-25 20:47:52');
INSERT INTO `sys_logininfor` VALUES (301, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 20:47:54');
INSERT INTO `sys_logininfor` VALUES (302, 'user000', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-25 20:53:43');
INSERT INTO `sys_logininfor` VALUES (303, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-25 22:12:27');
INSERT INTO `sys_logininfor` VALUES (304, 'user003', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '1', '登录用户：user003 不存在', '2022-04-25 22:13:54');
INSERT INTO `sys_logininfor` VALUES (305, 'user002', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-25 22:14:00');
INSERT INTO `sys_logininfor` VALUES (306, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-25 22:19:17');
INSERT INTO `sys_logininfor` VALUES (307, 'user000', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-25 22:22:56');
INSERT INTO `sys_logininfor` VALUES (308, 'user000', '183.222.199.187', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-26 20:11:07');
INSERT INTO `sys_logininfor` VALUES (309, 'user003', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '1', '登录用户：user003 不存在', '2022-04-26 20:38:25');
INSERT INTO `sys_logininfor` VALUES (310, 'user002', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-26 20:38:32');
INSERT INTO `sys_logininfor` VALUES (311, 'user003', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '1', '登录用户：user003 不存在', '2022-04-26 22:43:29');
INSERT INTO `sys_logininfor` VALUES (312, 'user002', '182.150.134.180', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-26 22:43:34');
INSERT INTO `sys_logininfor` VALUES (313, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-27 09:21:21');
INSERT INTO `sys_logininfor` VALUES (314, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-27 09:22:04');
INSERT INTO `sys_logininfor` VALUES (315, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-27 09:39:32');
INSERT INTO `sys_logininfor` VALUES (316, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 09:39:34');
INSERT INTO `sys_logininfor` VALUES (317, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-27 20:35:31');
INSERT INTO `sys_logininfor` VALUES (318, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-27 20:35:43');
INSERT INTO `sys_logininfor` VALUES (319, 'user002', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-27 21:32:06');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '182.150.134.180', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-28 21:27:31');
INSERT INTO `sys_logininfor` VALUES (321, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-28 21:28:01');
INSERT INTO `sys_logininfor` VALUES (322, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-28 21:28:22');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-28 23:14:31');
INSERT INTO `sys_logininfor` VALUES (324, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-04-28 23:35:15');
INSERT INTO `sys_logininfor` VALUES (325, 'user000', '182.136.177.184', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-29 09:17:35');
INSERT INTO `sys_logininfor` VALUES (326, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-29 20:13:13');
INSERT INTO `sys_logininfor` VALUES (327, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-29 20:13:17');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '182.150.134.180', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-29 20:32:20');
INSERT INTO `sys_logininfor` VALUES (329, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 01:47:35');
INSERT INTO `sys_logininfor` VALUES (330, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 09:56:28');
INSERT INTO `sys_logininfor` VALUES (331, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 10:20:05');
INSERT INTO `sys_logininfor` VALUES (332, 'user01', '171.214.159.125', 'XX XX', 'Chrome 58', 'Windows 10', '1', '登录用户：user01 不存在', '2022-04-30 10:26:02');
INSERT INTO `sys_logininfor` VALUES (333, 'user001', '171.214.159.125', 'XX XX', 'Chrome 58', 'Windows 10', '0', '登录成功', '2022-04-30 10:26:26');
INSERT INTO `sys_logininfor` VALUES (334, 'user111', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：user111 不存在', '2022-04-30 10:35:39');
INSERT INTO `sys_logininfor` VALUES (335, 'user001', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 10:35:55');
INSERT INTO `sys_logininfor` VALUES (336, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 10:39:48');
INSERT INTO `sys_logininfor` VALUES (337, 'user00', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：user00 不存在', '2022-04-30 10:56:47');
INSERT INTO `sys_logininfor` VALUES (338, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 10:59:26');
INSERT INTO `sys_logininfor` VALUES (339, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-04-30 11:00:09');
INSERT INTO `sys_logininfor` VALUES (340, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 11:00:11');
INSERT INTO `sys_logininfor` VALUES (341, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 11:17:31');
INSERT INTO `sys_logininfor` VALUES (342, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 11:37:17');
INSERT INTO `sys_logininfor` VALUES (343, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 13:31:08');
INSERT INTO `sys_logininfor` VALUES (344, 'undefined', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-30 13:54:13');
INSERT INTO `sys_logininfor` VALUES (345, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 13:54:13');
INSERT INTO `sys_logininfor` VALUES (346, 'undefined', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-04-30 14:02:22');
INSERT INTO `sys_logininfor` VALUES (347, 'user000', '117.176.238.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-04-30 14:02:22');
INSERT INTO `sys_logininfor` VALUES (348, 'user000', '182.136.182.139', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 17:51:06');
INSERT INTO `sys_logininfor` VALUES (349, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-05 20:50:15');
INSERT INTO `sys_logininfor` VALUES (350, 'user000', '182.136.182.139', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 15:12:28');
INSERT INTO `sys_logininfor` VALUES (351, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:48:06');
INSERT INTO `sys_logininfor` VALUES (352, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 16:54:40');
INSERT INTO `sys_logininfor` VALUES (353, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 17:03:06');
INSERT INTO `sys_logininfor` VALUES (354, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 17:17:34');
INSERT INTO `sys_logininfor` VALUES (355, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 17:39:31');
INSERT INTO `sys_logininfor` VALUES (356, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 20:28:27');
INSERT INTO `sys_logininfor` VALUES (357, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-06 20:35:08');
INSERT INTO `sys_logininfor` VALUES (358, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-07 23:00:59');
INSERT INTO `sys_logininfor` VALUES (359, 'user000', '182.150.160.74', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-07 23:21:38');
INSERT INTO `sys_logininfor` VALUES (360, 'user001', '39.144.138.219', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2022-05-08 10:38:31');
INSERT INTO `sys_logininfor` VALUES (361, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-08 13:15:18');
INSERT INTO `sys_logininfor` VALUES (362, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 16:22:08');
INSERT INTO `sys_logininfor` VALUES (363, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-09 21:23:59');
INSERT INTO `sys_logininfor` VALUES (364, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-09 21:33:03');
INSERT INTO `sys_logininfor` VALUES (365, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-09 21:50:42');
INSERT INTO `sys_logininfor` VALUES (366, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-10 20:41:59');
INSERT INTO `sys_logininfor` VALUES (367, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-11 17:35:59');
INSERT INTO `sys_logininfor` VALUES (368, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-11 20:23:28');
INSERT INTO `sys_logininfor` VALUES (369, 'user000', '117.176.238.62', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-11 20:29:19');
INSERT INTO `sys_logininfor` VALUES (370, 'user002', '182.150.161.24', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-11 20:56:41');
INSERT INTO `sys_logininfor` VALUES (371, 'user000', '117.173.137.77', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-11 21:03:02');
INSERT INTO `sys_logininfor` VALUES (372, 'user000', '182.136.187.68', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-12 10:43:20');
INSERT INTO `sys_logininfor` VALUES (373, 'user000', '117.173.137.77', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-12 20:19:16');
INSERT INTO `sys_logininfor` VALUES (374, 'user000', '117.173.70.244', 'XX XX', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-05-12 20:56:59');
INSERT INTO `sys_logininfor` VALUES (375, 'user000', '182.136.189.194', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 10:12:16');
INSERT INTO `sys_logininfor` VALUES (376, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 11:00:50');
INSERT INTO `sys_logininfor` VALUES (377, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 11:17:24');
INSERT INTO `sys_logininfor` VALUES (378, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 14:43:59');
INSERT INTO `sys_logininfor` VALUES (379, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 14:54:30');
INSERT INTO `sys_logininfor` VALUES (380, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 15:03:11');
INSERT INTO `sys_logininfor` VALUES (381, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 15:11:33');
INSERT INTO `sys_logininfor` VALUES (382, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-13 16:36:31');
INSERT INTO `sys_logininfor` VALUES (383, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-14 13:13:29');
INSERT INTO `sys_logininfor` VALUES (384, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-15 10:28:32');
INSERT INTO `sys_logininfor` VALUES (385, 'user000', '117.173.70.244', 'XX XX', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-05-15 21:46:10');
INSERT INTO `sys_logininfor` VALUES (386, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 10:14:01');
INSERT INTO `sys_logininfor` VALUES (387, 'user000', '182.136.189.194', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 14:25:37');
INSERT INTO `sys_logininfor` VALUES (388, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 15:51:17');
INSERT INTO `sys_logininfor` VALUES (389, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-16 22:01:47');
INSERT INTO `sys_logininfor` VALUES (390, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-17 10:38:34');
INSERT INTO `sys_logininfor` VALUES (391, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-17 10:53:48');
INSERT INTO `sys_logininfor` VALUES (392, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-17 16:00:13');
INSERT INTO `sys_logininfor` VALUES (393, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-17 16:57:44');
INSERT INTO `sys_logininfor` VALUES (394, 'user000', '182.136.189.194', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-17 17:36:37');
INSERT INTO `sys_logininfor` VALUES (395, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-18 10:33:05');
INSERT INTO `sys_logininfor` VALUES (396, 'user01', '60.255.166.156', 'XX XX', 'Firefox 10', 'Windows 10', '1', '登录用户：user01 不存在', '2022-05-18 10:56:00');
INSERT INTO `sys_logininfor` VALUES (397, 'user00', '60.255.166.156', 'XX XX', 'Firefox 10', 'Windows 10', '1', '登录用户：user00 不存在', '2022-05-18 10:56:18');
INSERT INTO `sys_logininfor` VALUES (398, 'user000', '60.255.166.156', 'XX XX', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-05-18 10:56:33');
INSERT INTO `sys_logininfor` VALUES (399, 'user001', '60.255.157.156', 'XX XX', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-05-18 10:57:35');
INSERT INTO `sys_logininfor` VALUES (400, 'user002', '60.255.166.156', 'XX XX', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-05-18 10:59:07');
INSERT INTO `sys_logininfor` VALUES (401, 'user01', '60.255.166.156', 'XX XX', 'Firefox 10', 'Windows 10', '1', '登录用户：user01 不存在', '2022-05-18 11:00:46');
INSERT INTO `sys_logininfor` VALUES (402, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-18 11:42:06');
INSERT INTO `sys_logininfor` VALUES (403, 'user002', '110.185.170.172', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-18 16:05:11');
INSERT INTO `sys_logininfor` VALUES (404, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-18 20:38:24');
INSERT INTO `sys_logininfor` VALUES (405, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-18 21:07:26');
INSERT INTO `sys_logininfor` VALUES (406, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-18 21:10:36');
INSERT INTO `sys_logininfor` VALUES (407, 'user01', '60.255.157.156', 'XX XX', 'Firefox 10', 'Windows 10', '1', '登录用户：user01 不存在', '2022-05-18 21:30:34');
INSERT INTO `sys_logininfor` VALUES (408, 'user000', '60.255.157.156', 'XX XX', 'Firefox 10', 'Windows 10', '0', '登录成功', '2022-05-18 21:30:41');
INSERT INTO `sys_logininfor` VALUES (409, 'user001 ', '171.214.155.72', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-05-18 21:46:26');
INSERT INTO `sys_logininfor` VALUES (410, 'user000', '182.136.177.100', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 09:41:55');
INSERT INTO `sys_logininfor` VALUES (411, 'user000', '182.136.177.100', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 13:58:54');
INSERT INTO `sys_logininfor` VALUES (412, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 14:18:08');
INSERT INTO `sys_logininfor` VALUES (413, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-19 20:17:59');
INSERT INTO `sys_logininfor` VALUES (414, 'user000', '183.222.198.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-19 21:10:25');
INSERT INTO `sys_logininfor` VALUES (415, 'user000', '117.173.71.237', 'XX XX', 'Chrome 10', 'Mac OS X', '0', '登录成功', '2022-05-19 22:15:20');
INSERT INTO `sys_logininfor` VALUES (416, 'user000', '182.136.177.100', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 09:20:22');
INSERT INTO `sys_logininfor` VALUES (417, 'user000', '182.136.177.100', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 13:54:20');
INSERT INTO `sys_logininfor` VALUES (418, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 15:39:17');
INSERT INTO `sys_logininfor` VALUES (419, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-20 16:07:30');
INSERT INTO `sys_logininfor` VALUES (420, 'user000', '182.150.161.71', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-20 23:27:09');
INSERT INTO `sys_logininfor` VALUES (421, 'user000', '182.150.161.71', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-20 23:31:15');
INSERT INTO `sys_logininfor` VALUES (422, 'user000', '182.150.161.71', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-20 23:31:15');
INSERT INTO `sys_logininfor` VALUES (423, 'user000', '117.173.136.201', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-21 13:01:34');
INSERT INTO `sys_logininfor` VALUES (424, 'user000', '117.173.136.201', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-21 20:11:14');
INSERT INTO `sys_logininfor` VALUES (425, 'user000', '117.173.136.201', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-21 20:13:08');
INSERT INTO `sys_logininfor` VALUES (426, 'user001', '171.214.155.72', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2022-05-21 20:47:41');
INSERT INTO `sys_logininfor` VALUES (427, 'user001 ', '171.214.155.244', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2022-05-22 09:00:29');
INSERT INTO `sys_logininfor` VALUES (428, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 09:15:27');
INSERT INTO `sys_logininfor` VALUES (429, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 09:29:51');
INSERT INTO `sys_logininfor` VALUES (430, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 09:31:19');
INSERT INTO `sys_logininfor` VALUES (431, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 09:57:22');
INSERT INTO `sys_logininfor` VALUES (432, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 10:32:06');
INSERT INTO `sys_logininfor` VALUES (433, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 14:31:58');
INSERT INTO `sys_logininfor` VALUES (434, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 14:56:53');
INSERT INTO `sys_logininfor` VALUES (435, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-23 14:58:25');
INSERT INTO `sys_logininfor` VALUES (436, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:10:46');
INSERT INTO `sys_logininfor` VALUES (437, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:15:16');
INSERT INTO `sys_logininfor` VALUES (438, 'admin', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-05-24 09:44:31');
INSERT INTO `sys_logininfor` VALUES (439, 'admin', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-05-24 09:44:36');
INSERT INTO `sys_logininfor` VALUES (440, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:45:04');
INSERT INTO `sys_logininfor` VALUES (441, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:45:13');
INSERT INTO `sys_logininfor` VALUES (442, 'user000', '223.104.216.47', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2022-05-24 09:45:58');
INSERT INTO `sys_logininfor` VALUES (443, 'user000', '223.104.216.47', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2022-05-24 09:45:59');
INSERT INTO `sys_logininfor` VALUES (444, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:47:56');
INSERT INTO `sys_logininfor` VALUES (445, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:49:11');
INSERT INTO `sys_logininfor` VALUES (446, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:55:01');
INSERT INTO `sys_logininfor` VALUES (447, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:55:01');
INSERT INTO `sys_logininfor` VALUES (448, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:55:01');
INSERT INTO `sys_logininfor` VALUES (449, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:55:01');
INSERT INTO `sys_logininfor` VALUES (450, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:55:01');
INSERT INTO `sys_logininfor` VALUES (451, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:55:01');
INSERT INTO `sys_logininfor` VALUES (452, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:55:01');
INSERT INTO `sys_logininfor` VALUES (453, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 09:59:22');
INSERT INTO `sys_logininfor` VALUES (454, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 14:25:24');
INSERT INTO `sys_logininfor` VALUES (455, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 15:00:28');
INSERT INTO `sys_logininfor` VALUES (456, 'undefined', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-05-24 15:00:51');
INSERT INTO `sys_logininfor` VALUES (457, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 15:00:51');
INSERT INTO `sys_logininfor` VALUES (458, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 15:17:12');
INSERT INTO `sys_logininfor` VALUES (459, 'undefined', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-05-24 15:17:52');
INSERT INTO `sys_logininfor` VALUES (460, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-05-24 15:17:52');
INSERT INTO `sys_logininfor` VALUES (461, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-05-24 15:17:56');
INSERT INTO `sys_logininfor` VALUES (462, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-05-24 15:17:58');
INSERT INTO `sys_logininfor` VALUES (463, 'undefined', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-05-24 15:18:07');
INSERT INTO `sys_logininfor` VALUES (464, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 15:18:07');
INSERT INTO `sys_logininfor` VALUES (465, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-05-24 15:18:42');
INSERT INTO `sys_logininfor` VALUES (466, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 15:26:07');
INSERT INTO `sys_logininfor` VALUES (467, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 15:51:38');
INSERT INTO `sys_logininfor` VALUES (468, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 16:38:26');
INSERT INTO `sys_logininfor` VALUES (469, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 13:48:02');
INSERT INTO `sys_logininfor` VALUES (470, 'user002', '118.113.134.104', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 21:13:43');
INSERT INTO `sys_logininfor` VALUES (471, 'admin', '118.113.134.104', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 21:15:56');
INSERT INTO `sys_logininfor` VALUES (472, 'user001', '118.113.134.104', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-25 22:08:59');
INSERT INTO `sys_logininfor` VALUES (473, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-25 23:52:08');
INSERT INTO `sys_logininfor` VALUES (474, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 09:06:29');
INSERT INTO `sys_logininfor` VALUES (475, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 10:41:38');
INSERT INTO `sys_logininfor` VALUES (476, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 10:54:54');
INSERT INTO `sys_logininfor` VALUES (477, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 11:01:41');
INSERT INTO `sys_logininfor` VALUES (478, 'user000', '182.136.177.128', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 15:24:45');
INSERT INTO `sys_logininfor` VALUES (479, 'user002', '118.113.134.104', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 23:43:54');
INSERT INTO `sys_logininfor` VALUES (480, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 16:42:51');
INSERT INTO `sys_logininfor` VALUES (481, 'user000', '183.222.199.140', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-28 11:53:30');
INSERT INTO `sys_logininfor` VALUES (482, 'user002', '118.113.134.104', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-28 19:25:05');
INSERT INTO `sys_logininfor` VALUES (483, 'user000', '183.222.199.140', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-29 13:10:29');
INSERT INTO `sys_logininfor` VALUES (484, 'user002', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-29 22:23:08');
INSERT INTO `sys_logininfor` VALUES (485, 'user000', '182.136.177.255', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 09:33:50');
INSERT INTO `sys_logininfor` VALUES (486, 'user000', '182.136.177.255', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 11:36:12');
INSERT INTO `sys_logininfor` VALUES (487, 'user002', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 19:24:22');
INSERT INTO `sys_logininfor` VALUES (488, 'user002', '182.150.164.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 19:28:10');
INSERT INTO `sys_logininfor` VALUES (489, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-30 19:29:05');
INSERT INTO `sys_logininfor` VALUES (490, 'admin', '182.150.164.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 22:53:48');
INSERT INTO `sys_logininfor` VALUES (491, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 23:02:12');
INSERT INTO `sys_logininfor` VALUES (492, 'user000', '183.222.199.140', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 23:25:20');
INSERT INTO `sys_logininfor` VALUES (493, 'user000', '183.222.199.140', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-31 10:36:46');
INSERT INTO `sys_logininfor` VALUES (494, 'user000', '183.222.199.140', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-31 12:04:03');
INSERT INTO `sys_logininfor` VALUES (495, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-31 21:25:07');
INSERT INTO `sys_logininfor` VALUES (496, 'user000', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-05-31 21:32:34');
INSERT INTO `sys_logininfor` VALUES (497, 'user002', '110.185.170.172', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-01 11:09:54');
INSERT INTO `sys_logininfor` VALUES (498, 'user000', '183.222.199.140', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-01 14:20:43');
INSERT INTO `sys_logininfor` VALUES (499, 'user000', '183.222.199.140', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-01 21:08:28');
INSERT INTO `sys_logininfor` VALUES (500, 'user002', '182.150.164.181', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-02 00:25:56');
INSERT INTO `sys_logininfor` VALUES (501, 'user002', '110.185.170.172', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-06-02 09:23:22');
INSERT INTO `sys_logininfor` VALUES (502, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-02 11:40:15');
INSERT INTO `sys_logininfor` VALUES (503, 'user000', '117.176.217.206', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-02 15:22:06');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2019 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-04-19 00:52:41', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 6, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:14', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 4, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:34', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 5, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:50', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 0, 2, 'system/user', 'system/user', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:01', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-04-19 00:52:41', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-04-19 00:52:41', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-04-19 00:52:41', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-04-19 00:52:41', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-04-19 00:52:41', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-04-19 00:52:41', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-04-19 00:52:41', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-04-19 00:52:41', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-04-19 00:52:41', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-04-19 00:52:41', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-04-19 00:52:41', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-04-19 00:52:41', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-04-19 00:52:41', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-04-19 00:52:41', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-04-19 00:52:41', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-04-19 00:52:41', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-04-19 00:52:41', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-04-19 00:52:41', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-04-19 00:52:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '基础数据管理', 0, 3, 'fc/basetb', 'fc/basetb', NULL, 1, 0, 'C', '0', '0', '', 'chart', 'admin', '2022-04-19 20:24:47', 'admin', '2022-05-25 21:35:56', '');
INSERT INTO `sys_menu` VALUES (2004, '新增数据', 2003, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:basetb:add', '#', 'admin', '2022-04-21 21:04:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '修改数据', 2003, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:basetb:edit', '#', 'admin', '2022-04-21 21:04:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '删除数据', 2003, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:basetb:remove', '#', 'admin', '2022-04-21 21:05:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '数据查询', 2003, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:basetb:query', '#', 'admin', '2022-04-21 21:05:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '数据导出', 2003, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:basetb:export', '#', 'admin', '2022-04-21 21:06:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '数据导入', 2003, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:basetb:import', '#', 'admin', '2022-04-21 21:06:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '相机分类管理', 0, 3, 'fc/camera_type', 'fc/camera_type', NULL, 1, 0, 'C', '0', '0', 'fc:camera_type:list', 'fullscreen', 'admin', '2022-04-23 23:23:34', 'admin', '2022-05-25 21:35:43', '');
INSERT INTO `sys_menu` VALUES (2011, '新增', 2010, 0, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:camera_type:add', '#', 'admin', '2022-04-23 23:27:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '编辑', 2010, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:camera_type:edit', '#', 'admin', '2022-04-23 23:28:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '删除', 2010, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:camera_type:remove', '#', 'admin', '2022-04-23 23:28:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '导出', 2010, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:camera_type:export', '#', 'admin', '2022-04-23 23:28:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '相机管理', 0, 3, 'fc/camera', 'fc/camera', NULL, 1, 0, 'C', '0', '0', 'fc:camera:list', 'job', 'admin', '2022-04-23 23:32:41', 'admin', '2022-05-25 21:34:25', '');
INSERT INTO `sys_menu` VALUES (2017, '新增', 2016, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:camera:add', '#', 'admin', '2022-04-23 23:33:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '修改', 2016, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'fc:camera:edit', '#', 'admin', '2022-04-23 23:33:32', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-04-19 00:52:42', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-04-19 00:52:42', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fc_user,fc_basetb', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 00:59:12');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301150000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Linename\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linename\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineName\"},{\"capJavaField\":\"Linealias\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linealias\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路别名\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineAlias\"},{\"capJavaField\":\"Direct\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"direct\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"行别（前往北京：上行/从北京出发：下行）\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 01:07:08');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301152000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Username\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"username\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"账号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"username\"},{\"capJavaField\":\"Password\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"password\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"密码\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"password\"},{\"capJavaField\":\"Usertype\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"usertype\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型(默认1)\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 01:08:04');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-19 01:08:15');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc_user\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 01:12:55');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2000', '127.0.0.1', '内网IP', '{menuId=2000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 01:15:12');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1650301684000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301152000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Username\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"username\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"账号\",\"isQuery\":\"1\",\"updateTime\":1650301684000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"username\"},{\"capJavaField\":\"Password\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"password\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"密码\",\"isQuery\":\"1\",\"updateTime\":1650301684000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"password\"},{\"capJavaField\":\"Usertype\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"usertype\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型(默认1)\",\"isQuery\":\"1\",\"updateTime\":1650301684000,\"sort\":4,\"list\":true,\"para', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 01:15:40');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-19 01:15:45');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":1,\"menuName\":\"4C\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 01:19:46');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"fc/user/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 01:20:42');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"fc/user/index\",\"children\":[],\"createTime\":1650302442000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 20:15:29');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc_user\",\"component\":\"fc/user/index\",\"children\":[],\"createTime\":1650302442000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 20:15:56');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc_user\",\"component\":\"fc/user/index\",\"children\":[],\"createTime\":1650302442000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 20:16:27');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2001', '127.0.0.1', '内网IP', '{menuId=2001}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 20:16:42');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-19 20:19:00');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-19 20:21:14');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1650301626000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301150000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Linename\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linename\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路名称\",\"isQuery\":\"1\",\"updateTime\":1650301626000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineName\"},{\"capJavaField\":\"Linealias\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linealias\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路别名\",\"isQuery\":\"1\",\"updateTime\":1650301626000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineAlias\"},{\"capJavaField\":\"Direct\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"direct\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"行别（前往北京：上行/从北京出发：下行）\",\"isQuery\":\"1\",\"updateTime\":1650301626000,\"sort\":4,\"list\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 20:21:40');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-19 20:21:42');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":2,\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/basetb\",\"component\":\"fc/basetb/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 20:24:47');
INSERT INTO `sys_oper_log` VALUES (119, '用户', 5, 'com.ruoyi.web.controller.fc.FcUserController.export()', 'POST', 1, 'admin', NULL, '/fc/user/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-19 20:36:44');
INSERT INTO `sys_oper_log` VALUES (120, '基础数据导入', 5, 'com.ruoyi.web.controller.fc.FcBasetbController.export()', 'POST', 1, 'admin', NULL, '/fc/basetb/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-04-19 20:50:57');
INSERT INTO `sys_oper_log` VALUES (121, '基础数据导入', 6, 'com.ruoyi.web.controller.fc.FcBasetbController.importData()', 'POST', 1, 'admin', NULL, '/fc/basetb/importData', '127.0.0.1', '内网IP', 'true', '{\"msg\":\"恭喜您，数据已全部导入成功！共 18 条，数据如下：<br/>com.ruoyi.system.domain.FcBasetb@26c1d34[\\r\\n  id=1\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=190\\r\\n  realpol=\\r\\n  span=45\\r\\n  spanbywheel=0\\r\\n  kmv=1347953\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@61b78402[\\r\\n  id=2\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=188\\r\\n  realpol=\\r\\n  span=45\\r\\n  spanbywheel=0\\r\\n  kmv=1347953\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@78c6cd5c[\\r\\n  id=3\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=186\\r\\n  realpol=\\r\\n  span=40\\r\\n  spanbywheel=0\\r\\n  kmv=1347913\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@1d1777eb[\\r\\n  id=4\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=184\\r\\n  realpol=\\r\\n  span=40\\r\\n  spanbywheel=0\\r\\n  kmv=1347906\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@61c3f46b[\\r\\n  id=5\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=D046\\r\\n  realpol=\\r\\n  span=47\\r\\n  spanbywheel=0\\r\\n  kmv=1347866\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@6df2ffe[\\r\\n  id=6\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=D031\\r\\n  realpol=\\r\\n  span=47\\r\\n  spanbywheel=0\\r\\n  kmv=1347866\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@33ec80ed[\\r\\n  id=7\\r\\n  linename=京港高铁\\r\\n  linealias=\\r', 0, NULL, '2022-04-19 21:23:26');
INSERT INTO `sys_oper_log` VALUES (122, '基础数据导入', 6, 'com.ruoyi.web.controller.fc.FcBasetbController.importData()', 'POST', 1, 'admin', NULL, '/fc/basetb/importData', '127.0.0.1', '内网IP', 'false', NULL, 1, '抱歉，导入失败！共 18 条数据格式不正确，错误如下：<br/>com.ruoyi.system.domain.FcBasetb@5144629e[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=190\r\n  realpol=\r\n  span=45\r\n  spanbywheel=0\r\n  kmv=1347953\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@7cf1195e[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=188\r\n  realpol=\r\n  span=45\r\n  spanbywheel=0\r\n  kmv=1347953\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@550adf6b[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=186\r\n  realpol=\r\n  span=40\r\n  spanbywheel=0\r\n  kmv=1347913\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@75492018[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=184\r\n  realpol=\r\n  span=40\r\n  spanbywheel=0\r\n  kmv=1347906\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@11b8371f[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=D046\r\n  realpol=\r\n  span=47\r\n  spanbywheel=0\r\n  kmv=1347866\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@1b6980b6[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=D031\r\n  realpol=\r\n  span=47\r\n  spanbywheel=0\r\n  kmv=1347866\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@bae834d[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=182\r\n  realpol=\r\n  span=40\r\n  spanbywheel=0\r\n  kmv=1347866\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruo', '2022-04-19 21:23:40');
INSERT INTO `sys_oper_log` VALUES (123, '用户', 1, 'com.ruoyi.web.controller.fc.FcUserController.add()', 'POST', 1, 'admin', NULL, '/fc/user', '127.0.0.1', '内网IP', '{\"password\":\"123456\",\"id\":22,\"params\":{},\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:18:16');
INSERT INTO `sys_oper_log` VALUES (124, '用户', 2, 'com.ruoyi.web.controller.fc.FcUserController.edit()', 'PUT', 1, 'admin', NULL, '/fc/user', '127.0.0.1', '内网IP', '{\"password\":\"admin123\",\"usertype\":1,\"id\":22,\"params\":{},\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:19:26');
INSERT INTO `sys_oper_log` VALUES (125, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{deptId=101}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2022-04-19 23:33:27');
INSERT INTO `sys_oper_log` VALUES (126, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2022-04-19 23:33:32');
INSERT INTO `sys_oper_log` VALUES (127, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"内部人员\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:37:20');
INSERT INTO `sys_oper_log` VALUES (128, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650300761000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650300761000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:37:48');
INSERT INTO `sys_oper_log` VALUES (129, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"管理人员\",\"leader\":\"\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:38:28');
INSERT INTO `sys_oper_log` VALUES (130, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"管理员\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:47:08');
INSERT INTO `sys_oper_log` VALUES (131, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:48:50');
INSERT INTO `sys_oper_log` VALUES (132, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:48:52');
INSERT INTO `sys_oper_log` VALUES (133, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"内部管理\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:50:52');
INSERT INTO `sys_oper_log` VALUES (134, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"总部\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:51:36');
INSERT INTO `sys_oper_log` VALUES (135, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"管理员\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:51:52');
INSERT INTO `sys_oper_log` VALUES (136, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"普通人员\",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:52:59');
INSERT INTO `sys_oper_log` VALUES (137, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', NULL, '/system/post/4,3,2', '127.0.0.1', '内网IP', '{postIds=4,3,2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:53:40');
INSERT INTO `sys_oper_log` VALUES (138, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1650300761000,\"updateBy\":\"admin\",\"postName\":\"内部员工\",\"postCode\":\"staff\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:54:15');
INSERT INTO `sys_oper_log` VALUES (139, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650300761000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"管理员\",\"deptId\":200,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650300761000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:54:26');
INSERT INTO `sys_oper_log` VALUES (140, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$vDga9Kby1tutvsdyn1aJgufIuMuV/RKTSIicU8Q4HKohPCBosGGOK\",\"postIds\":[],\"nickName\":\"user000\",\"deptId\":201,\"params\":{},\"userName\":\"user000\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-19 23:55:13');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:05:01');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"system/user/index\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:05:16');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"component\":\"system/user\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:06:04');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system/user\",\"component\":\"system/user\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:06:28');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":2,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system/user\",\"component\":\"system/user\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:07:01');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":6,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:07:14');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":5,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:07:24');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":4,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:07:34');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":3,\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/basetb\",\"component\":\"fc/basetb/index\",\"children\":[],\"createTime\":1650371087000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:07:43');
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":5,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 00:07:50');
INSERT INTO `sys_oper_log` VALUES (151, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '182.150.164.217', 'XX XX', '{\"admin\":false,\"password\":\"$2a$10$Z/mbv0lSKoAaEA7MNVrA0.765L7Gn3QesjyXzu2hDoib0.WlUXeo6\",\"postIds\":[],\"nickName\":\"user001\",\"params\":{},\"userName\":\"user001\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 22:47:30');
INSERT INTO `sys_oper_log` VALUES (152, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '182.150.164.217', 'XX XX', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650300761000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[100,1001,1002,1003,1004,1005,1006,1007,2003],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 22:48:08');
INSERT INTO `sys_oper_log` VALUES (153, '参数管理', 9, 'com.ruoyi.web.controller.system.SysConfigController.refreshCache()', 'DELETE', 1, 'admin', NULL, '/system/config/refreshCache', '182.150.164.217', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-20 22:51:49');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"新增数据\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 21:04:11');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":2,\"menuName\":\"修改数据\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 21:04:45');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":3,\"menuName\":\"删除数据\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 21:05:04');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":0,\"menuName\":\"数据查询\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 21:05:43');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"数据导出\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 21:06:15');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":5,\"menuName\":\"数据导入\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:import\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-21 21:06:34');
INSERT INTO `sys_oper_log` VALUES (160, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$agkYaU5No2N0rJsZuU71HuECZV7So1Pb/TpK3mAoKtykN6LCEQa/W\",\"postIds\":[],\"nickName\":\"user002\",\"deptId\":100,\"params\":{},\"userName\":\"user002\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 13:26:20');
INSERT INTO `sys_oper_log` VALUES (161, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1650691898000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"182.150.164.217\",\"email\":\"\",\"nickName\":\"user000\",\"sex\":\"0\",\"deptId\":201,\"avatar\":\"\",\"dept\":{\"deptName\":\"普通人员\",\"deptId\":201,\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"},\"params\":{},\"userName\":\"user000\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650383712000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 13:34:45');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1650640824000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"user001\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"user001\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650466050000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 13:34:51');
INSERT INTO `sys_oper_log` VALUES (163, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"user002\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"总部\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"ancestors\":\"0\",\"status\":\"0\"},\"params\":{},\"userName\":\"user002\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650691580000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 13:34:56');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fc_camera_type,fc_camera', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:11:50');
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650726709000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"相机名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726709000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Typeid\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"typeid\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"相机分类id\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(32)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726709000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"typeId\"}],\"businessName\":\"camera\",\"moduleName\":\"fc\",\"className\":\"FcCamera\",\"tableName\":\"fc_camera\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"相机\",\"tree\":false,\"tableComment\":\"相机\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":3,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:17:40');
INSERT INTO `sys_oper_log` VALUES (166, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650726710000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Typename\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"typename\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"分类名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726710000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"typeName\"},{\"capJavaField\":\"Isenable\",\"usableColumn\":false,\"columnId\":27,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"isenable\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"是否启用\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726710000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"isEnable\"}],\"businessName\":\"camera_type\",\"moduleName\":\"fc\",\"className\":\"FcCameraType\",\"tableName\":\"fc_camera_type\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"相机分类\",\"tree\":false,\"tableComment\":\"相机分类\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":4,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:19:02');
INSERT INTO `sys_oper_log` VALUES (167, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-23 23:19:27');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:23:34');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:25:13');
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":0,\"menuName\":\"新增\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:27:29');
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"编辑\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:28:02');
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":3,\"menuName\":\"删除\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:28:25');
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"导出\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:28:52');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"导出\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:28:52');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2015', '127.0.0.1', '内网IP', '{menuId=2015}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:29:00');
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-23 23:29:50');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":3,\"menuName\":\"相机管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera\",\"component\":\"fc/camera/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"fc:camera:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:32:41');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"新增\",\"params\":{},\"parentId\":2016,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:33:10');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":2,\"menuName\":\"修改\",\"params\":{},\"parentId\":2016,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-23 23:33:32');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fc_record', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-28 23:14:41');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":28,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1651158880000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Imgkey\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"imgkey\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"图片id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1651158880000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"imgKey\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"缺陷记录字符串\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"text\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1651158880000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"content\"},{\"capJavaField\":\"Taskpath\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"taskpath\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"任务全路径\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"text\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1651158880000,\"isEdit\":\"1\",\"tab', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-28 23:16:11');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-04-28 23:16:15');
INSERT INTO `sys_oper_log` VALUES (183, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"部件名称\",\"remark\":\"部件名称\",\"params\":{},\"dictType\":\"component_name\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:34:39');
INSERT INTO `sys_oper_log` VALUES (184, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"缺陷部件\",\"remark\":\"缺陷部件\",\"params\":{},\"dictType\":\"component_defect\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:35:38');
INSERT INTO `sys_oper_log` VALUES (185, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"缺陷类型\",\"params\":{},\"dictType\":\"defect_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:36:52');
INSERT INTO `sys_oper_log` VALUES (186, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"缺陷等级\",\"params\":{},\"dictType\":\"defect_level\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:37:10');
INSERT INTO `sys_oper_log` VALUES (187, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:57:47');
INSERT INTO `sys_oper_log` VALUES (188, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称2\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:57:57');
INSERT INTO `sys_oper_log` VALUES (189, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称3\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:58:07');
INSERT INTO `sys_oper_log` VALUES (190, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"4\",\"listClass\":\"default\",\"dictSort\":4,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称4\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:58:17');
INSERT INTO `sys_oper_log` VALUES (191, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"5\",\"listClass\":\"default\",\"dictSort\":5,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称5\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:58:29');
INSERT INTO `sys_oper_log` VALUES (192, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:58:44');
INSERT INTO `sys_oper_log` VALUES (193, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件2\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:58:50');
INSERT INTO `sys_oper_log` VALUES (194, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件3\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:58:57');
INSERT INTO `sys_oper_log` VALUES (195, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"4\",\"listClass\":\"default\",\"dictSort\":4,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件4\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:59:08');
INSERT INTO `sys_oper_log` VALUES (196, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"5\",\"listClass\":\"default\",\"dictSort\":5,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件5\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:59:14');
INSERT INTO `sys_oper_log` VALUES (197, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:59:31');
INSERT INTO `sys_oper_log` VALUES (198, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型2\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:59:36');
INSERT INTO `sys_oper_log` VALUES (199, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型3\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:59:41');
INSERT INTO `sys_oper_log` VALUES (200, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"4\",\"listClass\":\"default\",\"dictSort\":4,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型4\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 20:59:57');
INSERT INTO `sys_oper_log` VALUES (201, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"defect_level\",\"dictLabel\":\"一级\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 21:00:14');
INSERT INTO `sys_oper_log` VALUES (202, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"defect_level\",\"dictLabel\":\"二级\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-04-29 21:00:24');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/list\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:23:22');
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:23:57');
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:28:20');
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:34:19');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":3,\"menuName\":\"相机管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera\",\"component\":\"fc/camera\",\"children\":[],\"createTime\":1650727961000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2016,\"menuType\":\"C\",\"perms\":\"fc:camera:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:34:25');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:35:35');
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:35:43');
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":3,\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/basetb\",\"component\":\"fc/basetb\",\"children\":[],\"createTime\":1650371087000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:35:56');
INSERT INTO `sys_oper_log` VALUES (211, '相机分类', 2, 'com.ruoyi.web.controller.fc.FcCameraTypeController.edit()', 'PUT', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":4,\"params\":{},\"typename\":\"吊悬\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:44:42');
INSERT INTO `sys_oper_log` VALUES (212, '相机分类', 2, 'com.ruoyi.web.controller.fc.FcCameraTypeController.edit()', 'PUT', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":1,\"params\":{},\"typename\":\"支持装置\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:45:12');
INSERT INTO `sys_oper_log` VALUES (213, '相机分类', 1, 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":5,\"params\":{},\"typename\":\"杆号相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:50:04');
INSERT INTO `sys_oper_log` VALUES (214, '相机分类', 1, 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":6,\"params\":{},\"typename\":\"附加悬挂\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:50:14');
INSERT INTO `sys_oper_log` VALUES (215, '相机分类', 1, 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":7,\"params\":{},\"typename\":\"平腕臂\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:50:27');
INSERT INTO `sys_oper_log` VALUES (216, '相机分类', 1, 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":8,\"params\":{},\"typename\":\"斜腕臂\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:50:39');
INSERT INTO `sys_oper_log` VALUES (217, '相机分类', 1, 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":9,\"params\":{},\"typename\":\"全局相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:50:53');
INSERT INTO `sys_oper_log` VALUES (218, '相机分类', 1, 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":10,\"params\":{},\"typename\":\"中间局部相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:51:09');
INSERT INTO `sys_oper_log` VALUES (219, '相机分类', 1, 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', 1, 'admin', NULL, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":11,\"params\":{},\"typename\":\"承力索底座相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:51:27');
INSERT INTO `sys_oper_log` VALUES (220, '相机', 2, 'com.ruoyi.web.controller.fc.FcCameraController.edit()', 'PUT', 1, 'admin', NULL, '/fc/camera', '118.113.134.104', 'XX XX', '{\"direct\":1,\"name\":\"正面吊柱底座相机左\",\"typeName\":\"支持装置\",\"typeid\":2,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:54:14');
INSERT INTO `sys_oper_log` VALUES (221, '相机', 2, 'com.ruoyi.web.controller.fc.FcCameraController.edit()', 'PUT', 1, 'admin', NULL, '/fc/camera', '118.113.134.104', 'XX XX', '{\"direct\":1,\"name\":\"正面吊柱底座相机右\",\"typeName\":\"支持装置\",\"typeid\":2,\"id\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 21:54:19');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '182.150.164.181', 'XX XX', 'fc_scan_status', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-30 22:54:12');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '182.150.164.181', 'XX XX', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":38,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653922452000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Scanedpoles\",\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"scanedpoles\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"浏览过的杆号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"mediumtext\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653922452000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"scanedPoles\"},{\"capJavaField\":\"Defectpoles\",\"usableColumn\":false,\"columnId\":40,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"defectpoles\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"有缺陷的杆号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"mediumtext\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653922452000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"defectPoles\"},{\"capJavaField\":\"Userid\",\"usableColumn\":false,\"columnId\":41,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userid\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户id\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-30 22:55:47');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-30 23:02:21');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'staff', '内部员工', 1, '0', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-19 23:54:15', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-04-19 00:52:41', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 22:48:08', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 2003);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 200, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-05-30 23:02:11', 'admin', '2022-04-19 00:52:41', '', '2022-05-30 23:02:11', '管理员');
INSERT INTO `sys_user` VALUES (2, 200, 'ry', '若依', '00', '', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-04-19 00:52:41', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-19 23:54:26', '测试员');
INSERT INTO `sys_user` VALUES (100, 201, 'user000', 'user000', '00', '', '', '0', '', '$2a$10$vDga9Kby1tutvsdyn1aJgufIuMuV/RKTSIicU8Q4HKohPCBosGGOK', '0', '0', '117.176.217.206', '2022-06-02 15:22:06', 'admin', '2022-04-19 23:55:12', 'admin', '2022-06-02 15:22:06', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'user001', 'user001', '00', '', '', '0', '', '$2a$10$Z/mbv0lSKoAaEA7MNVrA0.765L7Gn3QesjyXzu2hDoib0.WlUXeo6', '0', '0', '118.113.134.104', '2022-05-25 22:08:59', 'admin', '2022-04-20 22:47:30', 'admin', '2022-05-25 22:08:59', NULL);
INSERT INTO `sys_user` VALUES (102, 100, 'user002', 'user002', '00', '', '', '0', '', '$2a$10$agkYaU5No2N0rJsZuU71HuECZV7So1Pb/TpK3mAoKtykN6LCEQa/W', '0', '0', '110.185.170.172', '2022-06-02 09:23:22', 'admin', '2022-04-23 13:26:20', 'admin', '2022-06-02 09:23:22', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (101, 2);
INSERT INTO `sys_user_role` VALUES (102, 2);

-- ----------------------------
-- Table structure for test_aaa
-- ----------------------------
DROP TABLE IF EXISTS `test_aaa`;
CREATE TABLE `test_aaa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `bbb` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_aaa
-- ----------------------------
INSERT INTO `test_aaa` VALUES (1, 'hahha1', 18, 'hehehe1');
INSERT INTO `test_aaa` VALUES (2, 'hahha2', 19, 'hehehe2');
INSERT INTO `test_aaa` VALUES (3, 'hahha3', 19, 'hehehe3');
INSERT INTO `test_aaa` VALUES (4, 'hahha4', 20, 'hehehe4');
INSERT INTO `test_aaa` VALUES (5, 'hahha5', 20, 'hehehe5');
INSERT INTO `test_aaa` VALUES (6, 'hahha6', 20, 'hehehe6');
INSERT INTO `test_aaa` VALUES (7, 'hahha7', 21, 'hehehe7');
INSERT INTO `test_aaa` VALUES (8, 'hahha8', 21, 'hehehe8');
INSERT INTO `test_aaa` VALUES (9, 'hahha9', 21, 'hehehe9');
INSERT INTO `test_aaa` VALUES (10, 'hahha10', 21, 'hehehe10');

SET FOREIGN_KEY_CHECKS = 1;
