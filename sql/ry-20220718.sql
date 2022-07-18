/*
Navicat MySQL Data Transfer

Source Server         : 4C_远程
Source Server Version : 50733
Source Host           : 81.69.10.137:3306
Source Database       : ry-vue

Target Server Type    : MYSQL
Target Server Version : 50733
File Encoding         : 65001

Date: 2022-07-18 22:55:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fc_basetb
-- ----------------------------
DROP TABLE IF EXISTS `fc_basetb`;
CREATE TABLE `fc_basetb` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `lineName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '线路名称',
  `lineAlias` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '线路别名',
  `direct` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '行别（前往北京：上行/从北京出发：下行）',
  `STN` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '站区',
  `tunnelName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '隧道名称',
  `maoduan` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '锚段',
  `pol` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '杆号',
  `realPol` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '真实杆号',
  `span` double DEFAULT NULL COMMENT '跨距',
  `spanByWheel` double DEFAULT '0' COMMENT '车轮脉冲显示的跨距',
  `kmv` double DEFAULT NULL COMMENT '公里标',
  `zig` double DEFAULT NULL COMMENT '拉出值',
  `hei` double DEFAULT NULL COMMENT '导高',
  `structType` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '结构类型',
  `latitude` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '经度',
  `longitude` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fc_basetb
-- ----------------------------
INSERT INTO `fc_basetb` VALUES ('00000000001', '京港高铁', '', '', '黄梅东站', '', '', '190', '', '45', '0', '1347953', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000002', '京港高铁', '', '', '黄梅东站', '', '', '188', '', '45', '0', '1347953', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000003', '京港高铁', '', '', '黄梅东站', '', '', '186', '', '40', '0', '1347913', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000004', '京港高铁', '', '', '黄梅东站', '', '', '184', '', '40', '0', '1347906', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000005', '京港高铁', '', '', '黄梅东站', '', '', 'D046', '', '47', '0', '1347866', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000006', '京港高铁', '', '', '黄梅东站', '', '', 'D031', '', '47', '0', '1347866', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000007', '京港高铁', '', '', '黄梅东站', '', '', '182', '', '40', '0', '1347866', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000008', '京港高铁', '', '', '黄梅东站', '', '', 'D044', '', '41', '0', '1347824', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000009', '京港高铁', '', '', '黄梅东站', '', '', 'D029', '', '41', '0', '1347824', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000010', '京港高铁', '', '', '黄梅东站', '', '', 'D042', '', '41', '0', '1347824', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000011', '京港高铁', '', '', '黄梅东站', '', '', 'D027', '', '41', '0', '1347824', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000012', '京港高铁', '', '', '黄梅东站', '', '', '180', '', '41', '0', '1347824', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000013', '京港高铁', '', '', '黄梅东站', '', '', 'D040', '', '40', '0', '1347784', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000014', '京港高铁', '', '', '黄梅东站', '', '', 'D025', '', '40', '0', '1347784', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000015', '京港高铁', '', '', '黄梅东站', '', '', 'D038', '', '40', '0', '1347784', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000016', '京港高铁', '', '', '黄梅东站', '', '', 'D023', '', '40', '0', '1347784', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000017', '京港高铁', '', '', '黄梅东站', '', '', '178', '', '40', '0', '1347784', '-250', '5300', '', '', '');
INSERT INTO `fc_basetb` VALUES ('00000000018', '京港高铁', '', '', '黄梅东站', '', '', '174', '', '40', '0', '1347744', '-250', '5300', '', '', '');

-- ----------------------------
-- Table structure for fc_camera
-- ----------------------------
DROP TABLE IF EXISTS `fc_camera`;
CREATE TABLE `fc_camera` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `typeId` int(32) DEFAULT NULL,
  `direct` tinyint(1) unsigned zerofill DEFAULT '0' COMMENT '相机朝向 1正面 2反面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fc_camera
-- ----------------------------
INSERT INTO `fc_camera` VALUES ('1', '正面吊柱底座相机左', '2', '1');
INSERT INTO `fc_camera` VALUES ('2', '正面吊柱底座相机右', '2', '1');
INSERT INTO `fc_camera` VALUES ('3', '正面支柱号相机', '5', '1');
INSERT INTO `fc_camera` VALUES ('4', '正面吊柱号相机', '5', '1');
INSERT INTO `fc_camera` VALUES ('5', '正面附加悬挂相机左', '3', '1');
INSERT INTO `fc_camera` VALUES ('6', '正面附加悬挂相机右', '3', '1');
INSERT INTO `fc_camera` VALUES ('7', '正面平腕臂相机左', '6', '1');
INSERT INTO `fc_camera` VALUES ('8', '正面平腕臂相机右', '6', '1');
INSERT INTO `fc_camera` VALUES ('9', '正面斜腕臂相机左', '7', '1');
INSERT INTO `fc_camera` VALUES ('10', '正面斜腕臂相机右', '7', '1');
INSERT INTO `fc_camera` VALUES ('11', '正面全局相机左', '8', '1');
INSERT INTO `fc_camera` VALUES ('12', '正面全局相机右', '8', '1');
INSERT INTO `fc_camera` VALUES ('13', '正面中间局部相机左', '9', '1');
INSERT INTO `fc_camera` VALUES ('14', '正面中间局部相机右', '9', '1');
INSERT INTO `fc_camera` VALUES ('15', '正面承力索底座相机', '10', '1');
INSERT INTO `fc_camera` VALUES ('16', '反面承力索底座相机', '10', '2');
INSERT INTO `fc_camera` VALUES ('17', '反面吊柱底座相机左', '2', '2');
INSERT INTO `fc_camera` VALUES ('18', '反面吊柱底座相机右', '2', '2');
INSERT INTO `fc_camera` VALUES ('19', '反面支柱号相机', '5', '2');
INSERT INTO `fc_camera` VALUES ('20', '反面吊柱号相机', '5', '2');
INSERT INTO `fc_camera` VALUES ('21', '反面附加悬挂相机左', '3', '2');
INSERT INTO `fc_camera` VALUES ('22', '反面附加悬挂相机右', '3', '2');
INSERT INTO `fc_camera` VALUES ('23', '反面平腕臂相机左', '6', '2');
INSERT INTO `fc_camera` VALUES ('24', '反面平腕臂相机右', '6', '2');
INSERT INTO `fc_camera` VALUES ('25', '反面斜腕臂相机左', '7', '2');
INSERT INTO `fc_camera` VALUES ('26', '反面斜腕臂相机右', '7', '2');
INSERT INTO `fc_camera` VALUES ('27', '反面全局相机左', '8', '2');
INSERT INTO `fc_camera` VALUES ('28', '反面全局相机右', '8', '2');
INSERT INTO `fc_camera` VALUES ('29', '反面中间局部相机左', '9', '2');
INSERT INTO `fc_camera` VALUES ('30', '反面中间局部相机右', '9', '2');
INSERT INTO `fc_camera` VALUES ('31', '承力索线夹相机左', '4', '0');
INSERT INTO `fc_camera` VALUES ('32', '承力索线夹相机右', '4', '0');
INSERT INTO `fc_camera` VALUES ('33', '接触网线夹相机左', '4', '0');
INSERT INTO `fc_camera` VALUES ('34', '接触网线夹相机右', '4', '0');

-- ----------------------------
-- Table structure for fc_camera_type
-- ----------------------------
DROP TABLE IF EXISTS `fc_camera_type`;
CREATE TABLE `fc_camera_type` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) COLLATE utf8_bin DEFAULT '',
  `isEnable` tinyint(1) unsigned zerofill NOT NULL DEFAULT '1' COMMENT '是否启用 0禁用  1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fc_camera_type
-- ----------------------------
INSERT INTO `fc_camera_type` VALUES ('1', '支持装置', '0');
INSERT INTO `fc_camera_type` VALUES ('2', '吊柱底座', '1');
INSERT INTO `fc_camera_type` VALUES ('3', '附加悬挂', '1');
INSERT INTO `fc_camera_type` VALUES ('4', '吊弦', '1');
INSERT INTO `fc_camera_type` VALUES ('5', '杆号相机', '1');
INSERT INTO `fc_camera_type` VALUES ('6', '平腕臂', '1');
INSERT INTO `fc_camera_type` VALUES ('7', '斜腕臂', '1');
INSERT INTO `fc_camera_type` VALUES ('8', '全局相机', '1');
INSERT INTO `fc_camera_type` VALUES ('9', '中间局部相机', '1');
INSERT INTO `fc_camera_type` VALUES ('10', '承力索底座相机', '1');

-- ----------------------------
-- Table structure for fc_record
-- ----------------------------
DROP TABLE IF EXISTS `fc_record`;
CREATE TABLE `fc_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgKey` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT '图片id',
  `content` text COLLATE utf8_bin COMMENT '缺陷记录字符串',
  `taskPath` text COLLATE utf8_bin,
  `pole` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cameraId` int(11) DEFAULT NULL,
  `startX` int(11) DEFAULT NULL,
  `startY` int(11) DEFAULT NULL,
  `endX` int(11) DEFAULT NULL,
  `endY` int(11) DEFAULT NULL,
  `componentName` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '部件名称',
  `componentDefect` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '缺陷部件',
  `defectType` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '缺陷类型',
  `defectLevel` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '缺陷等级',
  `TIM` bigint(20) DEFAULT NULL,
  `checkDate` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '检测日期',
  `STN` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '站区',
  `KMV` double unsigned DEFAULT NULL COMMENT '公里标',
  `imgPath` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '缺陷图片保存位置',
  `newX` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fc_record
-- ----------------------------
INSERT INTO `fc_record` VALUES ('141', '22030623265084401', 0xE5908AE4BD8FE5BA95E5BAA7E78382E4BA86, 0x52447063356153703536715835705777356F3275584449774D6A49744D444D744D445A634D6A41794D6C38774D3138774E6C38794D6C38784E5638784E312F6D7371726F6B346C663572576D35592B6A3536755A4C655746714F616B6B7565726D562F6B7549766F6F59773D, 'U5_2', '1', '228', '194', '441', '342', '吊柱底座', '吊柱底座', '有点问题', '一级', '1655905293000', '2022-06-22', '', null, 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\缺陷图片\\22030623265084401.jpg', null);
INSERT INTO `fc_record` VALUES ('142', '22030623265355509', 0xE6969CE88595E88782, 0x52447063356153703536715835705777356F3275584449774D6A49744D444D744D445A634D6A41794D6C38774D3138774E6C38794D6C38784E5638784E312F6D7371726F6B346C663572576D35592B6A3536755A4C655746714F616B6B7565726D562F6B7549766F6F59773D, 'U5', '9', '234', '290', '476', '485', '斜腕臂', '斜腕臂', '有点问题', '一级', '1655991472000', '2022-06-23', '', null, 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\缺陷图片\\22030623265355509.jpg', null);
INSERT INTO `fc_record` VALUES ('143', '22030623293830032', 0xE6B58BE8AF95E7BCBAE999B73031, 0x52447063356153703536715835705777356F3275584449774D6A49744D444D744D445A634D6A41794D6C38774D3138774E6C38794D6C38784E5638784E312F6D7371726F6B346C663572576D35592B6A3536755A4C655746714F616B6B7565726D562F6B7549766F6F59773D, 'U67', '32', '298', '235', '549', '381', '吊柱底座', '吊柱底座', '测试类型01', '二级', '1657284529000', '2022-07-08', '', null, 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\缺陷图片\\22030623293830032.jpg', null);

-- ----------------------------
-- Table structure for fc_scan_status
-- ----------------------------
DROP TABLE IF EXISTS `fc_scan_status`;
CREATE TABLE `fc_scan_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `scanedPoles` text COLLATE utf8_bin COMMENT '浏览过的杆号',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `currdate` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '保存的数据',
  `currTask` varchar(255) COLLATE utf8_bin DEFAULT '',
  `currStartSTN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `currEndSTN` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `currStartSTNId` int(11) DEFAULT NULL,
  `currEndSTNId` int(11) DEFAULT NULL,
  `currCameraType` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '相机分类',
  `currPolesPage` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '当前杆号下标',
  `currPole` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '当前杆号',
  `currDirect` varchar(255) COLLATE utf8_bin DEFAULT '',
  `currCameraRealType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `imgKey` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fc_scan_status
-- ----------------------------
INSERT INTO `fc_scan_status` VALUES ('9', 0x202C553434392C35322C34382C34362C5533302C31382C31372C31362C31332C32382C445A303032202C445A303033202C33362C32372C32312C32302C31312C31302C31352C31342C31322C32342C32352C33312C553435302C32322C553435312C553435322C553434382C59303036202C59303231202C553435332C553435342C33382C34322C33342C33322C31392C32332C533030372C533030352C533030392C533031372C533033332C533032312C5537382C533031352C533031312C55352C55355F312C3931372C3738332C533036392C3833332C3837352C3837372C533031392C3830392C313231362C313230382C313230302C533034332C533034372C533035312C5531312C5531322C5531332C5531352C5531372C533035392C533035352C533035372C533036312C533036352C533036372C3836312C3836392C3838352C3839312C3837392C3838312C3838332C3839392C3838372C3838392C3839332C3839352C3839372C3930312C553435382C5532302C5531392C5531382C5531362C5531342C55382C533031332C5532312C5532372C5533312C5533332C5533342C59303431202C55365F312C59303339202C59303134202C59303136202C59303138202C59303236202C59303232202C59303234202C59303239202C59303333202C59303335202C59303337202C553437382C553633382C553635302C55392C5531302C5532322C313333362C313333342C313333322C313333302C313332382C313332362C313332322C313332302C313331362C313331342C313331322C313331302C313330382C313330362C313330342C313330322C313330302C313239382C313239362C313239342C313239322C313239302C313238382C313238362C313238342C313238322C313238302C313237382C313237362C313237342C313237322C313237302C313236342C313236322C313235382C3936342C3439382C3439362C3438382C3438362C3439302C3438322C3438302C3437362C3437342C3437322C553437392C553438302C553438312C553439302C553533382C553534352C553438322C553534362C553438332C553534372C553438342C553534382C553438352C553534392C553438362C553535302C553438372C553535312C553535322C553535382C553537382C553537392C3836322C3831382C533736382C533731382C533439302C3430382C303336382C303332302C303237382C553439312C553438382C553438392C553439382C553439322C59303335205F312C59303130202C59303133202C59303131202C37332C59303135202C59303137202C59303636202C5538332C5532332C553337352C55345F312C553337362C553337372C553539382C553631382C553633302C313138362C3738382C313138302C313232322C313232302C313231382C313231342C313231322C59303132202C59303230202C55355F322C55385F312C5532342C5532352C5532362C5532382C5532392C5533322C5533352C5533362C5533382C5533392C5534302C5534312C5534322C5534332C5534362C5535302C5535312C5535322C5535362C5536342C5536372C553735, '100', '2022-03-06', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', '浦口-亭子山', '全椒站', '4579', '6426', '', '1', 'U75', '1', '4', '22030623303105632');
INSERT INTO `fc_scan_status` VALUES ('10', 0x202C55382C5534312C5534322C5534332C5534342C5534352C5534362C5534372C5534382C5534392C5535302C55312C5531352C5532312C5531332C5531312C5531372C5531302C5531322C5531342C55392C55372C5531382C5531392C5532302C5531362C5536312C5536372C5536362C5537342C5537382C5537372C5537362C5537352C5538302C5536392C5538312C553435342C553434392C5538342C5538322C5533302C5532382C5533312C5533332C5533342C5533372C5537332C5533392C5533362C5533322C5532372C5532352C5532342C5537302C5537322C5537392C5536342C313130312C313130332C313130352C313130372C313131352C3336302C3232342C5535322C33352C59303130202C59303133202C533030372C533030392C533031312C3936352C313031332C313032332C3837352C313032312C5535332C3639372C32392C3436352C3439312C3530352C3530372C59303335202C59303333202C553439332C59303239202C553439342C59303234202C553439352C59303232202C59303339202C553337372C59303236202C553337382C553339382C553431382C553433382C553434382C553435382C553433392C553435392C553434302C553436302C553434312C553436312C553436322C553434322C553436332C553434332C553436342C553434342C553436352C553434352C553436362C553434362C553436372C553436382C553436392C533031332C533031352C53303531, '102', '2022-03-06', 'RDpc5aSp56qX5pWw5o2uXDIwMjItMDMtMDZcMjAyMl8wM18wNl8yMl8xNV8xN1/msqrok4lf5rWm5Y+j56uZLeWFqOakkuermV/kuIvooYw=', '浦口站', '浦口-亭子山', '49', '33', '', '1', 'U5', '1', '2', '22030623265625002');
INSERT INTO `fc_scan_status` VALUES ('13', 0x2C5534322C5534372C313232322C313232302C313231382C55322C55332C59303431202C59303339202C59303337202C59303239202C59303138202C59303236202C59303232202C35342C59303134202C35322C59303234202C59303335202C59303333202C59303136202C35382C35302C55312C55352C55362C55372C55382C55392C533030372C533030392C533031312C533031332C5531302C5531312C5531322C5531332C5531342C34362C33342C33302C5531392C34342C33322C32382C553531382C553533352C553533362C553533372C553533332C553533312C553532372C553532342C59303335205F312C553433382C553439382C553339382C553337382C55343538, '101', '2022-03-06', 'RjpcdGVzdFwyMDIyLTAzLTA2XDIwMjJfMDNfMDZfMjJfMTBfMTlf5rKq6JOJX+WFqOakkuermS3mtablj6Pnq5lf5LiK6KGM', '全椒站', '浦口-亭子山', '1', null, '', '1', 'Y035 ', '1', '7', '22030622402389310');
INSERT INTO `fc_scan_status` VALUES ('14', '', '103', '2022-03-06', 'RjpcdGVzdFwyMDIyLTAzLTA2XDIwMjJfMDNfMDZfMjJfMTVfMTdf5rKq6JOJX+a1puWPo+ermS3lhajmpJLnq5lf5LiL6KGM', '全椒站', '浦口-亭子山', '1', null, '', '', '', '2', null, '22030623425958318');

-- ----------------------------
-- Table structure for fc_thumb
-- ----------------------------
DROP TABLE IF EXISTS `fc_thumb`;
CREATE TABLE `fc_thumb` (
  `editTime` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '生成的时间',
  `filePath` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '' COMMENT 'db文件路径',
  PRIMARY KEY (`filePath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fc_thumb
-- ----------------------------
INSERT INTO `fc_thumb` VALUES ('1650623244369', 'D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行\\DB\\C10_12.subDb');
INSERT INTO `fc_thumb` VALUES ('1650623236318', 'D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行\\DB\\C10_13.subDb');
INSERT INTO `fc_thumb` VALUES ('1650623222740', 'D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行\\DB\\C10_14.subDb');
INSERT INTO `fc_thumb` VALUES ('1650623169133', 'D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行\\DB\\C10_2.subDb');
INSERT INTO `fc_thumb` VALUES ('1650623175356', 'D:\\天窗数据\\2022-03-05\\2022_03_05_14_04_01_双雷线_双墩集站-雷麻店站_下行\\DB\\C10_3.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737979106', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C10_1.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737983231', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C10_2.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737979469', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C10_3.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737979161', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C10_4.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737973589', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C10_5.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737985162', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C11_1.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737997422', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C11_2.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737993397', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C11_3.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737993492', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C11_4.subDb');
INSERT INTO `fc_thumb` VALUES ('1653737997493', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C11_5.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738002480', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C12_1.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738015690', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C12_2.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738012282', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C12_3.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738015473', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C12_4.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738012945', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C12_5.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738015441', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C13_1.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738027062', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C13_2.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738027199', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C13_3.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738029472', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C13_4.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738026977', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C13_5.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738030024', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C14_1.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738054308', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C14_2.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738044349', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C14_3.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738045373', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C14_4.subDb');
INSERT INTO `fc_thumb` VALUES ('1653738044457', 'D:\\天窗数据\\2022-03-06\\2022_03_06_22_15_17_沪蓉_浦口站-全椒站_下行\\DB\\C14_5.subDb');
INSERT INTO `fc_thumb` VALUES ('1658074153590', 'D:\\天窗数据\\testThumb\\C1_1.subDb');
INSERT INTO `fc_thumb` VALUES ('1658074153590', 'D:\\天窗数据\\testThumb\\DB\\C1_1.subDb');
INSERT INTO `fc_thumb` VALUES ('1653571201853', 'D:\\天窗数据\\testThumb\\DB\\C2_1.subDb');

-- ----------------------------
-- Table structure for fc_user
-- ----------------------------
DROP TABLE IF EXISTS `fc_user`;
CREATE TABLE `fc_user` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '账号',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `usertype` int(11) DEFAULT '1' COMMENT '类型(默认1)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fc_user
-- ----------------------------
INSERT INTO `fc_user` VALUES ('00000000019', 'abc123', '123456', '1');
INSERT INTO `fc_user` VALUES ('00000000022', 'admin', 'admin123', '1');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) COLLATE utf8_bin DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) COLLATE utf8_bin DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'fc_basetb', '基础数据表', null, null, 'FcBasetb', 'crud', 'com.ruoyi.system', 'fc', 'basetb', '基础数据', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38', null);
INSERT INTO `gen_table` VALUES ('2', 'fc_user', '用户表', null, null, 'FcUser', 'crud', 'com.ruoyi.system', 'fc', 'user', '用户', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39', null);
INSERT INTO `gen_table` VALUES ('3', 'fc_camera', '相机', null, null, 'FcCamera', 'crud', 'com.ruoyi.system', 'fc', 'camera', '相机', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39', null);
INSERT INTO `gen_table` VALUES ('4', 'fc_camera_type', '相机分类', null, null, 'FcCameraType', 'crud', 'com.ruoyi.system', 'fc', 'camera_type', '相机分类', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:19:01', null);
INSERT INTO `gen_table` VALUES ('5', 'fc_record', '缺陷记录', null, null, 'FcRecord', 'crud', 'com.ruoyi.system', 'fc', 'record', '缺陷记录', 'ruoyi', '0', '/', '{}', 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10', null);
INSERT INTO `gen_table` VALUES ('6', 'fc_scan_status', '操作记录', null, null, 'FcScanStatus', 'crud', 'com.ruoyi.system', 'fc', 'status', '状态记录', 'ruoyi', '0', '/', '{}', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47', null);
INSERT INTO `gen_table` VALUES ('7', 'fc_thumb', '缩略图', null, null, 'FcThumb', 'crud', 'com.ruoyi.system', 'fc', 'thumb', '缩略图', 'ruoyi', '0', '/', '{}', 'admin', '2022-07-15 17:29:18', '', '2022-07-15 17:30:11', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) COLLATE utf8_bin DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', null, 'int(11) unsigned zerofill', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'lineName', '线路名称', 'varchar(255)', 'String', 'linename', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'lineAlias', '线路别名', 'varchar(255)', 'String', 'linealias', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'direct', '行别（前往北京：上行/从北京出发：下行）', 'varchar(50)', 'String', 'direct', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'STN', '站区', 'varchar(255)', 'String', 'stn', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'tunnelName', '隧道名称', 'varchar(255)', 'String', 'tunnelname', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2022-04-19 00:59:10', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'maoduan', '锚段', 'varchar(255)', 'String', 'maoduan', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:38');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'pol', '杆号', 'varchar(100)', 'String', 'pol', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('9', '1', 'realPol', '真实杆号', 'varchar(100)', 'String', 'realpol', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('10', '1', 'span', '跨距', 'double', 'Long', 'span', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('11', '1', 'spanByWheel', '车轮脉冲显示的跨距', 'double', 'Long', 'spanbywheel', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '11', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('12', '1', 'kmv', '公里标', 'double', 'Long', 'kmv', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '12', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('13', '1', 'zig', '拉出值', 'double', 'Long', 'zig', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '13', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('14', '1', 'hei', '导高', 'double', 'Long', 'hei', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '14', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('15', '1', 'structType', '结构类型', 'varchar(100)', 'String', 'structtype', '0', '0', null, '1', '1', '1', null, 'EQ', 'select', '', '15', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('16', '1', 'latitude', '经度', 'varchar(100)', 'String', 'latitude', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '16', 'admin', '2022-04-19 00:59:11', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('17', '1', 'longitude', '纬度', 'varchar(100)', 'String', 'longitude', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '17', 'admin', '2022-04-19 00:59:12', '', '2022-04-19 20:21:39');
INSERT INTO `gen_table_column` VALUES ('18', '2', 'id', null, 'int(11) unsigned zerofill', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES ('19', '2', 'username', '账号', 'varchar(255)', 'String', 'username', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES ('20', '2', 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES ('21', '2', 'usertype', '类型(默认1)', 'int(11)', 'Long', 'usertype', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2022-04-19 00:59:12', '', '2022-04-19 01:15:39');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'id', null, 'int(32)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39');
INSERT INTO `gen_table_column` VALUES ('23', '3', 'name', '相机名称', 'varchar(255)', 'String', 'name', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39');
INSERT INTO `gen_table_column` VALUES ('24', '3', 'typeId', '相机分类id', 'int(32)', 'Long', 'typeid', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-04-23 23:11:49', '', '2022-04-23 23:17:39');
INSERT INTO `gen_table_column` VALUES ('25', '4', 'id', null, 'int(32)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-04-23 23:11:50', '', '2022-04-23 23:19:02');
INSERT INTO `gen_table_column` VALUES ('26', '4', 'typeName', '分类名称', 'varchar(255)', 'String', 'typename', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-04-23 23:11:50', '', '2022-04-23 23:19:02');
INSERT INTO `gen_table_column` VALUES ('27', '4', 'isEnable', '是否启用', 'tinyint(1) unsigned zerofill', 'Integer', 'isenable', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-04-23 23:11:50', '', '2022-04-23 23:19:02');
INSERT INTO `gen_table_column` VALUES ('28', '5', 'id', null, 'int(11)', 'Integer', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10');
INSERT INTO `gen_table_column` VALUES ('29', '5', 'imgKey', '图片id', 'bigint(20)', 'Long', 'imgkey', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10');
INSERT INTO `gen_table_column` VALUES ('30', '5', 'content', '缺陷记录字符串', 'text', 'String', 'content', '0', '0', null, '1', '1', '1', '1', 'EQ', 'editor', '', '3', 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:10');
INSERT INTO `gen_table_column` VALUES ('31', '5', 'taskPath', '任务全路径', 'text', 'String', 'taskpath', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '4', 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES ('32', '5', 'pole', '杆号', 'varchar(255)', 'String', 'pole', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-04-28 23:14:40', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES ('33', '5', 'cameraId', '相机id', 'int(11)', 'Integer', 'cameraid', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES ('34', '5', 'startX', null, 'int(11)', 'Integer', 'startx', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES ('35', '5', 'startY', null, 'int(11)', 'Integer', 'starty', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES ('36', '5', 'endX', null, 'int(11)', 'Integer', 'endx', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES ('37', '5', 'endY', null, 'int(11)', 'Integer', 'endy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2022-04-28 23:14:41', '', '2022-04-28 23:16:11');
INSERT INTO `gen_table_column` VALUES ('38', '6', 'id', null, 'int(11) unsigned zerofill', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('39', '6', 'scanedPoles', '浏览过的杆号', 'mediumtext', 'String', 'scanedpoles', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '2', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('40', '6', 'defectPoles', '有缺陷的杆号', 'mediumtext', 'String', 'defectpoles', '0', '0', null, '1', '1', '1', '1', 'EQ', 'textarea', '', '3', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('41', '6', 'userId', '用户id', 'int(11)', 'Long', 'userid', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('42', '6', 'currdate', '当前日期', 'varchar(255)', 'String', 'currdate', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('43', '6', 'currTask', '当前任务路径', 'varchar(255)', 'String', 'currtask', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('44', '6', 'currStartSTN', '开始站区', 'varchar(255)', 'String', 'currstartstn', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('45', '6', 'currEndSTN', '结束站区', 'varchar(255)', 'String', 'currendstn', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '8', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('46', '6', 'currStartSTNId', '站区开始id', 'int(11)', 'Long', 'currstartstnid', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('47', '6', 'currEndSTNId', '站区结束id', 'int(11)', 'Long', 'currendstnid', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '10', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('48', '6', 'currCameraType', '智能定制-相机分类', 'varchar(255)', 'String', 'currcameratype', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', '', '11', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('49', '6', 'currPolesPage', '当前杆号的页码', 'varchar(255)', 'String', 'currpolespage', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '12', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('50', '6', 'currPole', '当前杆号', 'varchar(255)', 'String', 'currpole', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2022-05-30 22:54:12', '', '2022-05-30 22:55:47');
INSERT INTO `gen_table_column` VALUES ('51', '7', 'id', null, 'int(11)', 'Long', 'id', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-07-15 17:29:18', '', '2022-07-15 17:30:11');
INSERT INTO `gen_table_column` VALUES ('52', '7', 'editTime', '生成的时间', 'varchar(0)', 'String', 'edittime', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2022-07-15 17:29:18', '', '2022-07-15 17:30:11');
INSERT INTO `gen_table_column` VALUES ('53', '7', 'filePath', 'db文件路径', 'varchar(255)', 'String', 'filepath', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-07-15 17:29:18', '', '2022-07-15 17:30:11');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) COLLATE utf8_bin DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-04-19 00:52:41', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-04-19 00:52:41', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-04-19 00:52:41', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-04-19 00:52:41', '', null, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-04-19 00:52:41', '', null, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) COLLATE utf8_bin DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '总部', '0', '', '', '', '0', '0', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-19 23:51:36');
INSERT INTO `sys_dept` VALUES ('200', '100', '0,100', '管理员', '1', null, null, null, '0', '0', 'admin', '2022-04-19 23:51:52', '', null);
INSERT INTO `sys_dept` VALUES ('201', '100', '0,100', '普通人员', '2', null, null, null, '0', '0', 'admin', '2022-04-19 23:52:59', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) COLLATE utf8_bin DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-04-19 00:52:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-04-19 00:52:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('29', '1', '部件名称1', '1', 'component_name', null, 'default', 'N', '0', 'admin', '2022-04-29 20:57:47', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('30', '2', '部件名称2', '2', 'component_name', null, 'default', 'N', '0', 'admin', '2022-04-29 20:57:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('31', '3', '部件名称3', '3', 'component_name', null, 'default', 'N', '0', 'admin', '2022-04-29 20:58:07', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('32', '4', '部件名称4', '4', 'component_name', null, 'default', 'N', '0', 'admin', '2022-04-29 20:58:17', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('33', '5', '部件名称5', '5', 'component_name', null, 'default', 'N', '0', 'admin', '2022-04-29 20:58:29', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('34', '1', '缺陷部件1', '1', 'component_defect', null, 'default', 'N', '0', 'admin', '2022-04-29 20:58:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('35', '2', '缺陷部件2', '2', 'component_defect', null, 'default', 'N', '0', 'admin', '2022-04-29 20:58:50', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('36', '3', '缺陷部件3', '3', 'component_defect', null, 'default', 'N', '0', 'admin', '2022-04-29 20:58:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('37', '4', '缺陷部件4', '4', 'component_defect', null, 'default', 'N', '0', 'admin', '2022-04-29 20:59:08', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('38', '5', '缺陷部件5', '5', 'component_defect', null, 'default', 'N', '0', 'admin', '2022-04-29 20:59:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('39', '1', '缺陷类型1', '1', 'defect_type', null, 'default', 'N', '0', 'admin', '2022-04-29 20:59:31', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('40', '2', '缺陷类型2', '2', 'defect_type', null, 'default', 'N', '0', 'admin', '2022-04-29 20:59:36', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('41', '3', '缺陷类型3', '3', 'defect_type', null, 'default', 'N', '0', 'admin', '2022-04-29 20:59:41', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('42', '4', '缺陷类型4', '4', 'defect_type', null, 'default', 'N', '0', 'admin', '2022-04-29 20:59:57', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('43', '1', '一级', '1', 'defect_level', null, 'default', 'N', '0', 'admin', '2022-04-29 21:00:14', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('44', '2', '二级', '2', 'defect_level', null, 'default', 'N', '0', 'admin', '2022-04-29 21:00:24', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2022-04-19 00:52:41', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2022-04-19 00:52:41', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2022-04-19 00:52:41', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2022-04-19 00:52:41', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2022-04-19 00:52:41', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2022-04-19 00:52:41', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2022-04-19 00:52:41', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2022-04-19 00:52:41', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2022-04-19 00:52:41', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2022-04-19 00:52:41', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '部件名称', 'component_name', '0', 'admin', '2022-04-29 20:34:39', '', null, '部件名称');
INSERT INTO `sys_dict_type` VALUES ('12', '缺陷部件', 'component_defect', '0', 'admin', '2022-04-29 20:35:38', '', null, '缺陷部件');
INSERT INTO `sys_dict_type` VALUES ('13', '缺陷类型', 'defect_type', '0', 'admin', '2022-04-29 20:36:52', '', null, '缺陷类型');
INSERT INTO `sys_dict_type` VALUES ('14', '缺陷等级', 'defect_level', '0', 'admin', '2022-04-29 20:37:10', '', null, '缺陷等级');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) COLLATE utf8_bin DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-04-19 00:52:42', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-04-19 00:52:42', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-04-19 00:52:42', '', null, '');
INSERT INTO `sys_job` VALUES ('4', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '* * * * * ?', '2', '1', '0', 'admin', '2022-07-18 21:45:29', 'admin', '2022-07-18 21:55:24', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '日志信息',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3240 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('352', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:05');
INSERT INTO `sys_job_log` VALUES ('353', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:06');
INSERT INTO `sys_job_log` VALUES ('354', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:07');
INSERT INTO `sys_job_log` VALUES ('355', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:08');
INSERT INTO `sys_job_log` VALUES ('356', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:09');
INSERT INTO `sys_job_log` VALUES ('357', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:10');
INSERT INTO `sys_job_log` VALUES ('358', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:11');
INSERT INTO `sys_job_log` VALUES ('359', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:12');
INSERT INTO `sys_job_log` VALUES ('360', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:13');
INSERT INTO `sys_job_log` VALUES ('361', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:14');
INSERT INTO `sys_job_log` VALUES ('362', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:15');
INSERT INTO `sys_job_log` VALUES ('363', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:16');
INSERT INTO `sys_job_log` VALUES ('364', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:17');
INSERT INTO `sys_job_log` VALUES ('365', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:18');
INSERT INTO `sys_job_log` VALUES ('366', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:19');
INSERT INTO `sys_job_log` VALUES ('367', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:20');
INSERT INTO `sys_job_log` VALUES ('368', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:21');
INSERT INTO `sys_job_log` VALUES ('369', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:22');
INSERT INTO `sys_job_log` VALUES ('370', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:23');
INSERT INTO `sys_job_log` VALUES ('371', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:24');
INSERT INTO `sys_job_log` VALUES ('372', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:25');
INSERT INTO `sys_job_log` VALUES ('373', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:26');
INSERT INTO `sys_job_log` VALUES ('374', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:27');
INSERT INTO `sys_job_log` VALUES ('375', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:28');
INSERT INTO `sys_job_log` VALUES ('376', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:29');
INSERT INTO `sys_job_log` VALUES ('377', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:30');
INSERT INTO `sys_job_log` VALUES ('378', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:31');
INSERT INTO `sys_job_log` VALUES ('379', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:32');
INSERT INTO `sys_job_log` VALUES ('380', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:33');
INSERT INTO `sys_job_log` VALUES ('381', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:34');
INSERT INTO `sys_job_log` VALUES ('382', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:35');
INSERT INTO `sys_job_log` VALUES ('383', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:36');
INSERT INTO `sys_job_log` VALUES ('384', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:03:37');
INSERT INTO `sys_job_log` VALUES ('385', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:38');
INSERT INTO `sys_job_log` VALUES ('386', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:39');
INSERT INTO `sys_job_log` VALUES ('387', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:40');
INSERT INTO `sys_job_log` VALUES ('388', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:41');
INSERT INTO `sys_job_log` VALUES ('389', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:42');
INSERT INTO `sys_job_log` VALUES ('390', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:43');
INSERT INTO `sys_job_log` VALUES ('391', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:44');
INSERT INTO `sys_job_log` VALUES ('392', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:45');
INSERT INTO `sys_job_log` VALUES ('393', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:46');
INSERT INTO `sys_job_log` VALUES ('394', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:47');
INSERT INTO `sys_job_log` VALUES ('395', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:48');
INSERT INTO `sys_job_log` VALUES ('396', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:49');
INSERT INTO `sys_job_log` VALUES ('397', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:50');
INSERT INTO `sys_job_log` VALUES ('398', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:51');
INSERT INTO `sys_job_log` VALUES ('399', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:52');
INSERT INTO `sys_job_log` VALUES ('400', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:53');
INSERT INTO `sys_job_log` VALUES ('401', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:54');
INSERT INTO `sys_job_log` VALUES ('402', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:55');
INSERT INTO `sys_job_log` VALUES ('403', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:56');
INSERT INTO `sys_job_log` VALUES ('404', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:57');
INSERT INTO `sys_job_log` VALUES ('405', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:58');
INSERT INTO `sys_job_log` VALUES ('406', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:03:59');
INSERT INTO `sys_job_log` VALUES ('407', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:00');
INSERT INTO `sys_job_log` VALUES ('408', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:01');
INSERT INTO `sys_job_log` VALUES ('409', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:02');
INSERT INTO `sys_job_log` VALUES ('410', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:03');
INSERT INTO `sys_job_log` VALUES ('411', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:04');
INSERT INTO `sys_job_log` VALUES ('412', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:05');
INSERT INTO `sys_job_log` VALUES ('413', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:06');
INSERT INTO `sys_job_log` VALUES ('414', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:07');
INSERT INTO `sys_job_log` VALUES ('415', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:08');
INSERT INTO `sys_job_log` VALUES ('416', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:09');
INSERT INTO `sys_job_log` VALUES ('417', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:10');
INSERT INTO `sys_job_log` VALUES ('418', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:11');
INSERT INTO `sys_job_log` VALUES ('419', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:12');
INSERT INTO `sys_job_log` VALUES ('420', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:13');
INSERT INTO `sys_job_log` VALUES ('421', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:14');
INSERT INTO `sys_job_log` VALUES ('422', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:15');
INSERT INTO `sys_job_log` VALUES ('423', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:16');
INSERT INTO `sys_job_log` VALUES ('424', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:17');
INSERT INTO `sys_job_log` VALUES ('425', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:18');
INSERT INTO `sys_job_log` VALUES ('426', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:19');
INSERT INTO `sys_job_log` VALUES ('427', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:20');
INSERT INTO `sys_job_log` VALUES ('428', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:21');
INSERT INTO `sys_job_log` VALUES ('429', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:22');
INSERT INTO `sys_job_log` VALUES ('430', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:23');
INSERT INTO `sys_job_log` VALUES ('431', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:24');
INSERT INTO `sys_job_log` VALUES ('432', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:25');
INSERT INTO `sys_job_log` VALUES ('433', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:26');
INSERT INTO `sys_job_log` VALUES ('434', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:27');
INSERT INTO `sys_job_log` VALUES ('435', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:28');
INSERT INTO `sys_job_log` VALUES ('436', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:29');
INSERT INTO `sys_job_log` VALUES ('437', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:30');
INSERT INTO `sys_job_log` VALUES ('438', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:31');
INSERT INTO `sys_job_log` VALUES ('439', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:32');
INSERT INTO `sys_job_log` VALUES ('440', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:33');
INSERT INTO `sys_job_log` VALUES ('441', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:34');
INSERT INTO `sys_job_log` VALUES ('442', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:35');
INSERT INTO `sys_job_log` VALUES ('443', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:36');
INSERT INTO `sys_job_log` VALUES ('444', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:37');
INSERT INTO `sys_job_log` VALUES ('445', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:38');
INSERT INTO `sys_job_log` VALUES ('446', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:39');
INSERT INTO `sys_job_log` VALUES ('447', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:40');
INSERT INTO `sys_job_log` VALUES ('448', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:41');
INSERT INTO `sys_job_log` VALUES ('449', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:42');
INSERT INTO `sys_job_log` VALUES ('450', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:43');
INSERT INTO `sys_job_log` VALUES ('451', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:44');
INSERT INTO `sys_job_log` VALUES ('452', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:45');
INSERT INTO `sys_job_log` VALUES ('453', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:46');
INSERT INTO `sys_job_log` VALUES ('454', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:47');
INSERT INTO `sys_job_log` VALUES ('455', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:48');
INSERT INTO `sys_job_log` VALUES ('456', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:49');
INSERT INTO `sys_job_log` VALUES ('457', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:50');
INSERT INTO `sys_job_log` VALUES ('458', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:51');
INSERT INTO `sys_job_log` VALUES ('459', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:52');
INSERT INTO `sys_job_log` VALUES ('460', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:53');
INSERT INTO `sys_job_log` VALUES ('461', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:54');
INSERT INTO `sys_job_log` VALUES ('462', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:55');
INSERT INTO `sys_job_log` VALUES ('463', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:56');
INSERT INTO `sys_job_log` VALUES ('464', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:57');
INSERT INTO `sys_job_log` VALUES ('465', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:58');
INSERT INTO `sys_job_log` VALUES ('466', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:04:59');
INSERT INTO `sys_job_log` VALUES ('467', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:00');
INSERT INTO `sys_job_log` VALUES ('468', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:01');
INSERT INTO `sys_job_log` VALUES ('469', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:02');
INSERT INTO `sys_job_log` VALUES ('470', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:03');
INSERT INTO `sys_job_log` VALUES ('471', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:04');
INSERT INTO `sys_job_log` VALUES ('472', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:05');
INSERT INTO `sys_job_log` VALUES ('473', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:06');
INSERT INTO `sys_job_log` VALUES ('474', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:07');
INSERT INTO `sys_job_log` VALUES ('475', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:08');
INSERT INTO `sys_job_log` VALUES ('476', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:09');
INSERT INTO `sys_job_log` VALUES ('477', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:10');
INSERT INTO `sys_job_log` VALUES ('478', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:11');
INSERT INTO `sys_job_log` VALUES ('479', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:12');
INSERT INTO `sys_job_log` VALUES ('480', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:13');
INSERT INTO `sys_job_log` VALUES ('481', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:14');
INSERT INTO `sys_job_log` VALUES ('482', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:15');
INSERT INTO `sys_job_log` VALUES ('483', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:16');
INSERT INTO `sys_job_log` VALUES ('484', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:17');
INSERT INTO `sys_job_log` VALUES ('485', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:18');
INSERT INTO `sys_job_log` VALUES ('486', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:19');
INSERT INTO `sys_job_log` VALUES ('487', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:20');
INSERT INTO `sys_job_log` VALUES ('488', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:21');
INSERT INTO `sys_job_log` VALUES ('489', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:22');
INSERT INTO `sys_job_log` VALUES ('490', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:23');
INSERT INTO `sys_job_log` VALUES ('491', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:24');
INSERT INTO `sys_job_log` VALUES ('492', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:25');
INSERT INTO `sys_job_log` VALUES ('493', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:26');
INSERT INTO `sys_job_log` VALUES ('494', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:27');
INSERT INTO `sys_job_log` VALUES ('495', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:28');
INSERT INTO `sys_job_log` VALUES ('496', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:29');
INSERT INTO `sys_job_log` VALUES ('497', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:30');
INSERT INTO `sys_job_log` VALUES ('498', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:31');
INSERT INTO `sys_job_log` VALUES ('499', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:32');
INSERT INTO `sys_job_log` VALUES ('500', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:33');
INSERT INTO `sys_job_log` VALUES ('501', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:34');
INSERT INTO `sys_job_log` VALUES ('502', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:35');
INSERT INTO `sys_job_log` VALUES ('503', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:36');
INSERT INTO `sys_job_log` VALUES ('504', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:37');
INSERT INTO `sys_job_log` VALUES ('505', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:38');
INSERT INTO `sys_job_log` VALUES ('506', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:39');
INSERT INTO `sys_job_log` VALUES ('507', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:40');
INSERT INTO `sys_job_log` VALUES ('508', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:41');
INSERT INTO `sys_job_log` VALUES ('509', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:42');
INSERT INTO `sys_job_log` VALUES ('510', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:43');
INSERT INTO `sys_job_log` VALUES ('511', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:44');
INSERT INTO `sys_job_log` VALUES ('512', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:45');
INSERT INTO `sys_job_log` VALUES ('513', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:46');
INSERT INTO `sys_job_log` VALUES ('514', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:47');
INSERT INTO `sys_job_log` VALUES ('515', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:48');
INSERT INTO `sys_job_log` VALUES ('516', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:49');
INSERT INTO `sys_job_log` VALUES ('517', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:50');
INSERT INTO `sys_job_log` VALUES ('518', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:51');
INSERT INTO `sys_job_log` VALUES ('519', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:52');
INSERT INTO `sys_job_log` VALUES ('520', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:53');
INSERT INTO `sys_job_log` VALUES ('521', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:54');
INSERT INTO `sys_job_log` VALUES ('522', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:55');
INSERT INTO `sys_job_log` VALUES ('523', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:56');
INSERT INTO `sys_job_log` VALUES ('524', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:57');
INSERT INTO `sys_job_log` VALUES ('525', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:58');
INSERT INTO `sys_job_log` VALUES ('526', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:05:59');
INSERT INTO `sys_job_log` VALUES ('527', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:06:00');
INSERT INTO `sys_job_log` VALUES ('528', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:06:01');
INSERT INTO `sys_job_log` VALUES ('529', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:06:02');
INSERT INTO `sys_job_log` VALUES ('530', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:06:03');
INSERT INTO `sys_job_log` VALUES ('531', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:06:04');
INSERT INTO `sys_job_log` VALUES ('532', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:06:05');
INSERT INTO `sys_job_log` VALUES ('533', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：13毫秒', '0', '', '2022-07-18 22:11:00');
INSERT INTO `sys_job_log` VALUES ('534', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:00');
INSERT INTO `sys_job_log` VALUES ('535', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:01');
INSERT INTO `sys_job_log` VALUES ('536', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:02');
INSERT INTO `sys_job_log` VALUES ('537', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:03');
INSERT INTO `sys_job_log` VALUES ('538', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:04');
INSERT INTO `sys_job_log` VALUES ('539', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:05');
INSERT INTO `sys_job_log` VALUES ('540', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:06');
INSERT INTO `sys_job_log` VALUES ('541', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:07');
INSERT INTO `sys_job_log` VALUES ('542', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:08');
INSERT INTO `sys_job_log` VALUES ('543', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:09');
INSERT INTO `sys_job_log` VALUES ('544', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:10');
INSERT INTO `sys_job_log` VALUES ('545', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:11');
INSERT INTO `sys_job_log` VALUES ('546', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:12');
INSERT INTO `sys_job_log` VALUES ('547', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:13');
INSERT INTO `sys_job_log` VALUES ('548', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:14');
INSERT INTO `sys_job_log` VALUES ('549', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:15');
INSERT INTO `sys_job_log` VALUES ('550', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:16');
INSERT INTO `sys_job_log` VALUES ('551', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:17');
INSERT INTO `sys_job_log` VALUES ('552', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:18');
INSERT INTO `sys_job_log` VALUES ('553', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:19');
INSERT INTO `sys_job_log` VALUES ('554', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:20');
INSERT INTO `sys_job_log` VALUES ('555', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:21');
INSERT INTO `sys_job_log` VALUES ('556', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:22');
INSERT INTO `sys_job_log` VALUES ('557', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:23');
INSERT INTO `sys_job_log` VALUES ('558', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:24');
INSERT INTO `sys_job_log` VALUES ('559', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:25');
INSERT INTO `sys_job_log` VALUES ('560', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:26');
INSERT INTO `sys_job_log` VALUES ('561', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:27');
INSERT INTO `sys_job_log` VALUES ('562', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:28');
INSERT INTO `sys_job_log` VALUES ('563', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:29');
INSERT INTO `sys_job_log` VALUES ('564', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:30');
INSERT INTO `sys_job_log` VALUES ('565', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:31');
INSERT INTO `sys_job_log` VALUES ('566', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:32');
INSERT INTO `sys_job_log` VALUES ('567', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:33');
INSERT INTO `sys_job_log` VALUES ('568', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:34');
INSERT INTO `sys_job_log` VALUES ('569', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:11:35');
INSERT INTO `sys_job_log` VALUES ('570', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:36');
INSERT INTO `sys_job_log` VALUES ('571', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:37');
INSERT INTO `sys_job_log` VALUES ('572', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:38');
INSERT INTO `sys_job_log` VALUES ('573', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:39');
INSERT INTO `sys_job_log` VALUES ('574', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:40');
INSERT INTO `sys_job_log` VALUES ('575', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:41');
INSERT INTO `sys_job_log` VALUES ('576', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:42');
INSERT INTO `sys_job_log` VALUES ('577', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:43');
INSERT INTO `sys_job_log` VALUES ('578', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:44');
INSERT INTO `sys_job_log` VALUES ('579', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:45');
INSERT INTO `sys_job_log` VALUES ('580', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:46');
INSERT INTO `sys_job_log` VALUES ('581', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:47');
INSERT INTO `sys_job_log` VALUES ('582', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:48');
INSERT INTO `sys_job_log` VALUES ('583', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:49');
INSERT INTO `sys_job_log` VALUES ('584', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:50');
INSERT INTO `sys_job_log` VALUES ('585', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:51');
INSERT INTO `sys_job_log` VALUES ('586', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:52');
INSERT INTO `sys_job_log` VALUES ('587', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:53');
INSERT INTO `sys_job_log` VALUES ('588', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:54');
INSERT INTO `sys_job_log` VALUES ('589', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:55');
INSERT INTO `sys_job_log` VALUES ('590', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:56');
INSERT INTO `sys_job_log` VALUES ('591', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:57');
INSERT INTO `sys_job_log` VALUES ('592', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:58');
INSERT INTO `sys_job_log` VALUES ('593', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:11:59');
INSERT INTO `sys_job_log` VALUES ('594', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:00');
INSERT INTO `sys_job_log` VALUES ('595', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:01');
INSERT INTO `sys_job_log` VALUES ('596', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:02');
INSERT INTO `sys_job_log` VALUES ('597', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:03');
INSERT INTO `sys_job_log` VALUES ('598', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:04');
INSERT INTO `sys_job_log` VALUES ('599', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:05');
INSERT INTO `sys_job_log` VALUES ('600', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:06');
INSERT INTO `sys_job_log` VALUES ('601', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:07');
INSERT INTO `sys_job_log` VALUES ('602', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:08');
INSERT INTO `sys_job_log` VALUES ('603', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:09');
INSERT INTO `sys_job_log` VALUES ('604', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:10');
INSERT INTO `sys_job_log` VALUES ('605', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:11');
INSERT INTO `sys_job_log` VALUES ('606', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:12');
INSERT INTO `sys_job_log` VALUES ('607', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:13');
INSERT INTO `sys_job_log` VALUES ('608', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:14');
INSERT INTO `sys_job_log` VALUES ('609', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:15');
INSERT INTO `sys_job_log` VALUES ('610', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:16');
INSERT INTO `sys_job_log` VALUES ('611', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:17');
INSERT INTO `sys_job_log` VALUES ('612', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:18');
INSERT INTO `sys_job_log` VALUES ('613', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:19');
INSERT INTO `sys_job_log` VALUES ('614', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:20');
INSERT INTO `sys_job_log` VALUES ('615', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:21');
INSERT INTO `sys_job_log` VALUES ('616', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:22');
INSERT INTO `sys_job_log` VALUES ('617', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:23');
INSERT INTO `sys_job_log` VALUES ('618', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:24');
INSERT INTO `sys_job_log` VALUES ('619', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:25');
INSERT INTO `sys_job_log` VALUES ('620', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:26');
INSERT INTO `sys_job_log` VALUES ('621', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:27');
INSERT INTO `sys_job_log` VALUES ('622', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:28');
INSERT INTO `sys_job_log` VALUES ('623', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:29');
INSERT INTO `sys_job_log` VALUES ('624', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:30');
INSERT INTO `sys_job_log` VALUES ('625', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:31');
INSERT INTO `sys_job_log` VALUES ('626', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:32');
INSERT INTO `sys_job_log` VALUES ('627', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:33');
INSERT INTO `sys_job_log` VALUES ('628', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:34');
INSERT INTO `sys_job_log` VALUES ('629', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:35');
INSERT INTO `sys_job_log` VALUES ('630', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:36');
INSERT INTO `sys_job_log` VALUES ('631', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:37');
INSERT INTO `sys_job_log` VALUES ('632', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:38');
INSERT INTO `sys_job_log` VALUES ('633', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:39');
INSERT INTO `sys_job_log` VALUES ('634', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:40');
INSERT INTO `sys_job_log` VALUES ('635', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:41');
INSERT INTO `sys_job_log` VALUES ('636', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:42');
INSERT INTO `sys_job_log` VALUES ('637', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:43');
INSERT INTO `sys_job_log` VALUES ('638', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:44');
INSERT INTO `sys_job_log` VALUES ('639', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:45');
INSERT INTO `sys_job_log` VALUES ('640', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:46');
INSERT INTO `sys_job_log` VALUES ('641', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:47');
INSERT INTO `sys_job_log` VALUES ('642', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:48');
INSERT INTO `sys_job_log` VALUES ('643', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:49');
INSERT INTO `sys_job_log` VALUES ('644', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:50');
INSERT INTO `sys_job_log` VALUES ('645', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:51');
INSERT INTO `sys_job_log` VALUES ('646', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:52');
INSERT INTO `sys_job_log` VALUES ('647', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:53');
INSERT INTO `sys_job_log` VALUES ('648', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:54');
INSERT INTO `sys_job_log` VALUES ('649', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:55');
INSERT INTO `sys_job_log` VALUES ('650', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:56');
INSERT INTO `sys_job_log` VALUES ('651', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:57');
INSERT INTO `sys_job_log` VALUES ('652', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:58');
INSERT INTO `sys_job_log` VALUES ('653', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:12:59');
INSERT INTO `sys_job_log` VALUES ('654', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:00');
INSERT INTO `sys_job_log` VALUES ('655', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:01');
INSERT INTO `sys_job_log` VALUES ('656', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:02');
INSERT INTO `sys_job_log` VALUES ('657', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:03');
INSERT INTO `sys_job_log` VALUES ('658', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:04');
INSERT INTO `sys_job_log` VALUES ('659', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:05');
INSERT INTO `sys_job_log` VALUES ('660', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:06');
INSERT INTO `sys_job_log` VALUES ('661', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:07');
INSERT INTO `sys_job_log` VALUES ('662', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:08');
INSERT INTO `sys_job_log` VALUES ('663', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:09');
INSERT INTO `sys_job_log` VALUES ('664', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:10');
INSERT INTO `sys_job_log` VALUES ('665', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:11');
INSERT INTO `sys_job_log` VALUES ('666', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:12');
INSERT INTO `sys_job_log` VALUES ('667', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:13');
INSERT INTO `sys_job_log` VALUES ('668', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:14');
INSERT INTO `sys_job_log` VALUES ('669', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:15');
INSERT INTO `sys_job_log` VALUES ('670', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:16');
INSERT INTO `sys_job_log` VALUES ('671', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:17');
INSERT INTO `sys_job_log` VALUES ('672', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:18');
INSERT INTO `sys_job_log` VALUES ('673', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:19');
INSERT INTO `sys_job_log` VALUES ('674', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:20');
INSERT INTO `sys_job_log` VALUES ('675', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:21');
INSERT INTO `sys_job_log` VALUES ('676', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:22');
INSERT INTO `sys_job_log` VALUES ('677', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:23');
INSERT INTO `sys_job_log` VALUES ('678', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:24');
INSERT INTO `sys_job_log` VALUES ('679', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:25');
INSERT INTO `sys_job_log` VALUES ('680', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:26');
INSERT INTO `sys_job_log` VALUES ('681', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:27');
INSERT INTO `sys_job_log` VALUES ('682', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:28');
INSERT INTO `sys_job_log` VALUES ('683', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:29');
INSERT INTO `sys_job_log` VALUES ('684', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:30');
INSERT INTO `sys_job_log` VALUES ('685', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:31');
INSERT INTO `sys_job_log` VALUES ('686', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:32');
INSERT INTO `sys_job_log` VALUES ('687', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:33');
INSERT INTO `sys_job_log` VALUES ('688', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:34');
INSERT INTO `sys_job_log` VALUES ('689', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:35');
INSERT INTO `sys_job_log` VALUES ('690', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:36');
INSERT INTO `sys_job_log` VALUES ('691', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:37');
INSERT INTO `sys_job_log` VALUES ('692', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:38');
INSERT INTO `sys_job_log` VALUES ('693', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:39');
INSERT INTO `sys_job_log` VALUES ('694', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:40');
INSERT INTO `sys_job_log` VALUES ('695', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:41');
INSERT INTO `sys_job_log` VALUES ('696', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:42');
INSERT INTO `sys_job_log` VALUES ('697', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:43');
INSERT INTO `sys_job_log` VALUES ('698', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:44');
INSERT INTO `sys_job_log` VALUES ('699', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:45');
INSERT INTO `sys_job_log` VALUES ('700', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:46');
INSERT INTO `sys_job_log` VALUES ('701', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:47');
INSERT INTO `sys_job_log` VALUES ('702', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:48');
INSERT INTO `sys_job_log` VALUES ('703', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:49');
INSERT INTO `sys_job_log` VALUES ('704', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:50');
INSERT INTO `sys_job_log` VALUES ('705', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:51');
INSERT INTO `sys_job_log` VALUES ('706', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:52');
INSERT INTO `sys_job_log` VALUES ('707', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:53');
INSERT INTO `sys_job_log` VALUES ('708', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:54');
INSERT INTO `sys_job_log` VALUES ('709', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:55');
INSERT INTO `sys_job_log` VALUES ('710', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:56');
INSERT INTO `sys_job_log` VALUES ('711', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:57');
INSERT INTO `sys_job_log` VALUES ('712', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:58');
INSERT INTO `sys_job_log` VALUES ('713', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:13:59');
INSERT INTO `sys_job_log` VALUES ('714', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:00');
INSERT INTO `sys_job_log` VALUES ('715', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:01');
INSERT INTO `sys_job_log` VALUES ('716', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:02');
INSERT INTO `sys_job_log` VALUES ('717', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:03');
INSERT INTO `sys_job_log` VALUES ('718', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:04');
INSERT INTO `sys_job_log` VALUES ('719', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:05');
INSERT INTO `sys_job_log` VALUES ('720', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:06');
INSERT INTO `sys_job_log` VALUES ('721', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:07');
INSERT INTO `sys_job_log` VALUES ('722', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:08');
INSERT INTO `sys_job_log` VALUES ('723', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:09');
INSERT INTO `sys_job_log` VALUES ('724', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:10');
INSERT INTO `sys_job_log` VALUES ('725', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:11');
INSERT INTO `sys_job_log` VALUES ('726', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:12');
INSERT INTO `sys_job_log` VALUES ('727', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:13');
INSERT INTO `sys_job_log` VALUES ('728', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:14');
INSERT INTO `sys_job_log` VALUES ('729', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:15');
INSERT INTO `sys_job_log` VALUES ('730', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:16');
INSERT INTO `sys_job_log` VALUES ('731', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:17');
INSERT INTO `sys_job_log` VALUES ('732', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:18');
INSERT INTO `sys_job_log` VALUES ('733', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:19');
INSERT INTO `sys_job_log` VALUES ('734', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:20');
INSERT INTO `sys_job_log` VALUES ('735', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:21');
INSERT INTO `sys_job_log` VALUES ('736', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:22');
INSERT INTO `sys_job_log` VALUES ('737', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:23');
INSERT INTO `sys_job_log` VALUES ('738', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:24');
INSERT INTO `sys_job_log` VALUES ('739', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:25');
INSERT INTO `sys_job_log` VALUES ('740', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:26');
INSERT INTO `sys_job_log` VALUES ('741', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:27');
INSERT INTO `sys_job_log` VALUES ('742', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:28');
INSERT INTO `sys_job_log` VALUES ('743', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:29');
INSERT INTO `sys_job_log` VALUES ('744', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:30');
INSERT INTO `sys_job_log` VALUES ('745', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:31');
INSERT INTO `sys_job_log` VALUES ('746', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:32');
INSERT INTO `sys_job_log` VALUES ('747', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:33');
INSERT INTO `sys_job_log` VALUES ('748', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:34');
INSERT INTO `sys_job_log` VALUES ('749', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:35');
INSERT INTO `sys_job_log` VALUES ('750', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:36');
INSERT INTO `sys_job_log` VALUES ('751', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:37');
INSERT INTO `sys_job_log` VALUES ('752', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:38');
INSERT INTO `sys_job_log` VALUES ('753', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:39');
INSERT INTO `sys_job_log` VALUES ('754', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:40');
INSERT INTO `sys_job_log` VALUES ('755', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:41');
INSERT INTO `sys_job_log` VALUES ('756', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:42');
INSERT INTO `sys_job_log` VALUES ('757', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:43');
INSERT INTO `sys_job_log` VALUES ('758', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:44');
INSERT INTO `sys_job_log` VALUES ('759', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:45');
INSERT INTO `sys_job_log` VALUES ('760', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:46');
INSERT INTO `sys_job_log` VALUES ('761', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:47');
INSERT INTO `sys_job_log` VALUES ('762', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:48');
INSERT INTO `sys_job_log` VALUES ('763', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:49');
INSERT INTO `sys_job_log` VALUES ('764', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:50');
INSERT INTO `sys_job_log` VALUES ('765', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:51');
INSERT INTO `sys_job_log` VALUES ('766', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:52');
INSERT INTO `sys_job_log` VALUES ('767', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:53');
INSERT INTO `sys_job_log` VALUES ('768', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:54');
INSERT INTO `sys_job_log` VALUES ('769', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:55');
INSERT INTO `sys_job_log` VALUES ('770', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:56');
INSERT INTO `sys_job_log` VALUES ('771', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:57');
INSERT INTO `sys_job_log` VALUES ('772', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:58');
INSERT INTO `sys_job_log` VALUES ('773', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:14:59');
INSERT INTO `sys_job_log` VALUES ('774', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:00');
INSERT INTO `sys_job_log` VALUES ('775', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:01');
INSERT INTO `sys_job_log` VALUES ('776', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:02');
INSERT INTO `sys_job_log` VALUES ('777', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:03');
INSERT INTO `sys_job_log` VALUES ('778', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:04');
INSERT INTO `sys_job_log` VALUES ('779', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:05');
INSERT INTO `sys_job_log` VALUES ('780', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:06');
INSERT INTO `sys_job_log` VALUES ('781', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:07');
INSERT INTO `sys_job_log` VALUES ('782', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:08');
INSERT INTO `sys_job_log` VALUES ('783', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:09');
INSERT INTO `sys_job_log` VALUES ('784', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:10');
INSERT INTO `sys_job_log` VALUES ('785', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:11');
INSERT INTO `sys_job_log` VALUES ('786', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:12');
INSERT INTO `sys_job_log` VALUES ('787', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:13');
INSERT INTO `sys_job_log` VALUES ('788', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:14');
INSERT INTO `sys_job_log` VALUES ('789', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:15');
INSERT INTO `sys_job_log` VALUES ('790', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:16');
INSERT INTO `sys_job_log` VALUES ('791', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:17');
INSERT INTO `sys_job_log` VALUES ('792', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:18');
INSERT INTO `sys_job_log` VALUES ('793', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:19');
INSERT INTO `sys_job_log` VALUES ('794', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:20');
INSERT INTO `sys_job_log` VALUES ('795', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:21');
INSERT INTO `sys_job_log` VALUES ('796', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:22');
INSERT INTO `sys_job_log` VALUES ('797', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:23');
INSERT INTO `sys_job_log` VALUES ('798', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:24');
INSERT INTO `sys_job_log` VALUES ('799', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:25');
INSERT INTO `sys_job_log` VALUES ('800', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:26');
INSERT INTO `sys_job_log` VALUES ('801', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:27');
INSERT INTO `sys_job_log` VALUES ('802', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:28');
INSERT INTO `sys_job_log` VALUES ('803', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:29');
INSERT INTO `sys_job_log` VALUES ('804', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:30');
INSERT INTO `sys_job_log` VALUES ('805', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:31');
INSERT INTO `sys_job_log` VALUES ('806', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:32');
INSERT INTO `sys_job_log` VALUES ('807', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:33');
INSERT INTO `sys_job_log` VALUES ('808', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:34');
INSERT INTO `sys_job_log` VALUES ('809', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:35');
INSERT INTO `sys_job_log` VALUES ('810', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:36');
INSERT INTO `sys_job_log` VALUES ('811', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:37');
INSERT INTO `sys_job_log` VALUES ('812', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:38');
INSERT INTO `sys_job_log` VALUES ('813', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:39');
INSERT INTO `sys_job_log` VALUES ('814', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:40');
INSERT INTO `sys_job_log` VALUES ('815', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:41');
INSERT INTO `sys_job_log` VALUES ('816', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:42');
INSERT INTO `sys_job_log` VALUES ('817', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:43');
INSERT INTO `sys_job_log` VALUES ('818', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:44');
INSERT INTO `sys_job_log` VALUES ('819', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:45');
INSERT INTO `sys_job_log` VALUES ('820', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:46');
INSERT INTO `sys_job_log` VALUES ('821', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:47');
INSERT INTO `sys_job_log` VALUES ('822', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:48');
INSERT INTO `sys_job_log` VALUES ('823', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:49');
INSERT INTO `sys_job_log` VALUES ('824', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:50');
INSERT INTO `sys_job_log` VALUES ('825', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:51');
INSERT INTO `sys_job_log` VALUES ('826', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:52');
INSERT INTO `sys_job_log` VALUES ('827', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:53');
INSERT INTO `sys_job_log` VALUES ('828', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:54');
INSERT INTO `sys_job_log` VALUES ('829', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:55');
INSERT INTO `sys_job_log` VALUES ('830', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:56');
INSERT INTO `sys_job_log` VALUES ('831', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:57');
INSERT INTO `sys_job_log` VALUES ('832', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:58');
INSERT INTO `sys_job_log` VALUES ('833', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:15:59');
INSERT INTO `sys_job_log` VALUES ('834', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:00');
INSERT INTO `sys_job_log` VALUES ('835', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:01');
INSERT INTO `sys_job_log` VALUES ('836', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:02');
INSERT INTO `sys_job_log` VALUES ('837', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:03');
INSERT INTO `sys_job_log` VALUES ('838', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:04');
INSERT INTO `sys_job_log` VALUES ('839', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:05');
INSERT INTO `sys_job_log` VALUES ('840', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:06');
INSERT INTO `sys_job_log` VALUES ('841', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:07');
INSERT INTO `sys_job_log` VALUES ('842', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:08');
INSERT INTO `sys_job_log` VALUES ('843', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:09');
INSERT INTO `sys_job_log` VALUES ('844', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:10');
INSERT INTO `sys_job_log` VALUES ('845', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:11');
INSERT INTO `sys_job_log` VALUES ('846', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:12');
INSERT INTO `sys_job_log` VALUES ('847', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:13');
INSERT INTO `sys_job_log` VALUES ('848', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:14');
INSERT INTO `sys_job_log` VALUES ('849', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:15');
INSERT INTO `sys_job_log` VALUES ('850', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:16');
INSERT INTO `sys_job_log` VALUES ('851', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:17');
INSERT INTO `sys_job_log` VALUES ('852', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:18');
INSERT INTO `sys_job_log` VALUES ('853', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:19');
INSERT INTO `sys_job_log` VALUES ('854', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:20');
INSERT INTO `sys_job_log` VALUES ('855', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:21');
INSERT INTO `sys_job_log` VALUES ('856', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:22');
INSERT INTO `sys_job_log` VALUES ('857', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:23');
INSERT INTO `sys_job_log` VALUES ('858', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:24');
INSERT INTO `sys_job_log` VALUES ('859', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:25');
INSERT INTO `sys_job_log` VALUES ('860', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:26');
INSERT INTO `sys_job_log` VALUES ('861', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:27');
INSERT INTO `sys_job_log` VALUES ('862', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:28');
INSERT INTO `sys_job_log` VALUES ('863', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:29');
INSERT INTO `sys_job_log` VALUES ('864', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:30');
INSERT INTO `sys_job_log` VALUES ('865', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:31');
INSERT INTO `sys_job_log` VALUES ('866', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:32');
INSERT INTO `sys_job_log` VALUES ('867', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:33');
INSERT INTO `sys_job_log` VALUES ('868', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:34');
INSERT INTO `sys_job_log` VALUES ('869', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:35');
INSERT INTO `sys_job_log` VALUES ('870', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:36');
INSERT INTO `sys_job_log` VALUES ('871', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:37');
INSERT INTO `sys_job_log` VALUES ('872', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:38');
INSERT INTO `sys_job_log` VALUES ('873', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:39');
INSERT INTO `sys_job_log` VALUES ('874', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:40');
INSERT INTO `sys_job_log` VALUES ('875', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:41');
INSERT INTO `sys_job_log` VALUES ('876', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:42');
INSERT INTO `sys_job_log` VALUES ('877', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:43');
INSERT INTO `sys_job_log` VALUES ('878', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:44');
INSERT INTO `sys_job_log` VALUES ('879', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:45');
INSERT INTO `sys_job_log` VALUES ('880', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:46');
INSERT INTO `sys_job_log` VALUES ('881', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:47');
INSERT INTO `sys_job_log` VALUES ('882', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:48');
INSERT INTO `sys_job_log` VALUES ('883', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:49');
INSERT INTO `sys_job_log` VALUES ('884', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:50');
INSERT INTO `sys_job_log` VALUES ('885', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:51');
INSERT INTO `sys_job_log` VALUES ('886', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:52');
INSERT INTO `sys_job_log` VALUES ('887', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:53');
INSERT INTO `sys_job_log` VALUES ('888', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:54');
INSERT INTO `sys_job_log` VALUES ('889', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:55');
INSERT INTO `sys_job_log` VALUES ('890', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:56');
INSERT INTO `sys_job_log` VALUES ('891', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:57');
INSERT INTO `sys_job_log` VALUES ('892', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:58');
INSERT INTO `sys_job_log` VALUES ('893', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:16:59');
INSERT INTO `sys_job_log` VALUES ('894', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:00');
INSERT INTO `sys_job_log` VALUES ('895', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:01');
INSERT INTO `sys_job_log` VALUES ('896', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:02');
INSERT INTO `sys_job_log` VALUES ('897', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:03');
INSERT INTO `sys_job_log` VALUES ('898', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:04');
INSERT INTO `sys_job_log` VALUES ('899', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:05');
INSERT INTO `sys_job_log` VALUES ('900', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:06');
INSERT INTO `sys_job_log` VALUES ('901', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:07');
INSERT INTO `sys_job_log` VALUES ('902', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:08');
INSERT INTO `sys_job_log` VALUES ('903', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:09');
INSERT INTO `sys_job_log` VALUES ('904', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:10');
INSERT INTO `sys_job_log` VALUES ('905', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:11');
INSERT INTO `sys_job_log` VALUES ('906', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:12');
INSERT INTO `sys_job_log` VALUES ('907', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:13');
INSERT INTO `sys_job_log` VALUES ('908', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:14');
INSERT INTO `sys_job_log` VALUES ('909', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:15');
INSERT INTO `sys_job_log` VALUES ('910', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:16');
INSERT INTO `sys_job_log` VALUES ('911', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:17');
INSERT INTO `sys_job_log` VALUES ('912', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:18');
INSERT INTO `sys_job_log` VALUES ('913', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:19');
INSERT INTO `sys_job_log` VALUES ('914', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:20');
INSERT INTO `sys_job_log` VALUES ('915', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:21');
INSERT INTO `sys_job_log` VALUES ('916', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:22');
INSERT INTO `sys_job_log` VALUES ('917', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:23');
INSERT INTO `sys_job_log` VALUES ('918', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:24');
INSERT INTO `sys_job_log` VALUES ('919', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:25');
INSERT INTO `sys_job_log` VALUES ('920', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:26');
INSERT INTO `sys_job_log` VALUES ('921', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:27');
INSERT INTO `sys_job_log` VALUES ('922', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:28');
INSERT INTO `sys_job_log` VALUES ('923', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:29');
INSERT INTO `sys_job_log` VALUES ('924', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:30');
INSERT INTO `sys_job_log` VALUES ('925', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:31');
INSERT INTO `sys_job_log` VALUES ('926', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:32');
INSERT INTO `sys_job_log` VALUES ('927', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:33');
INSERT INTO `sys_job_log` VALUES ('928', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:34');
INSERT INTO `sys_job_log` VALUES ('929', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:35');
INSERT INTO `sys_job_log` VALUES ('930', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:36');
INSERT INTO `sys_job_log` VALUES ('931', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:37');
INSERT INTO `sys_job_log` VALUES ('932', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:38');
INSERT INTO `sys_job_log` VALUES ('933', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:39');
INSERT INTO `sys_job_log` VALUES ('934', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:40');
INSERT INTO `sys_job_log` VALUES ('935', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:41');
INSERT INTO `sys_job_log` VALUES ('936', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:42');
INSERT INTO `sys_job_log` VALUES ('937', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:43');
INSERT INTO `sys_job_log` VALUES ('938', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:44');
INSERT INTO `sys_job_log` VALUES ('939', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:45');
INSERT INTO `sys_job_log` VALUES ('940', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:46');
INSERT INTO `sys_job_log` VALUES ('941', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:47');
INSERT INTO `sys_job_log` VALUES ('942', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:48');
INSERT INTO `sys_job_log` VALUES ('943', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:49');
INSERT INTO `sys_job_log` VALUES ('944', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:50');
INSERT INTO `sys_job_log` VALUES ('945', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:51');
INSERT INTO `sys_job_log` VALUES ('946', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:52');
INSERT INTO `sys_job_log` VALUES ('947', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:53');
INSERT INTO `sys_job_log` VALUES ('948', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:54');
INSERT INTO `sys_job_log` VALUES ('949', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:55');
INSERT INTO `sys_job_log` VALUES ('950', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:56');
INSERT INTO `sys_job_log` VALUES ('951', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:57');
INSERT INTO `sys_job_log` VALUES ('952', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:58');
INSERT INTO `sys_job_log` VALUES ('953', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:17:59');
INSERT INTO `sys_job_log` VALUES ('954', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:00');
INSERT INTO `sys_job_log` VALUES ('955', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:01');
INSERT INTO `sys_job_log` VALUES ('956', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:02');
INSERT INTO `sys_job_log` VALUES ('957', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:03');
INSERT INTO `sys_job_log` VALUES ('958', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:04');
INSERT INTO `sys_job_log` VALUES ('959', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:05');
INSERT INTO `sys_job_log` VALUES ('960', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:06');
INSERT INTO `sys_job_log` VALUES ('961', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:07');
INSERT INTO `sys_job_log` VALUES ('962', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:08');
INSERT INTO `sys_job_log` VALUES ('963', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:09');
INSERT INTO `sys_job_log` VALUES ('964', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:10');
INSERT INTO `sys_job_log` VALUES ('965', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:11');
INSERT INTO `sys_job_log` VALUES ('966', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:12');
INSERT INTO `sys_job_log` VALUES ('967', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:13');
INSERT INTO `sys_job_log` VALUES ('968', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:14');
INSERT INTO `sys_job_log` VALUES ('969', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:15');
INSERT INTO `sys_job_log` VALUES ('970', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:16');
INSERT INTO `sys_job_log` VALUES ('971', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:17');
INSERT INTO `sys_job_log` VALUES ('972', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:18');
INSERT INTO `sys_job_log` VALUES ('973', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:19');
INSERT INTO `sys_job_log` VALUES ('974', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:20');
INSERT INTO `sys_job_log` VALUES ('975', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:21');
INSERT INTO `sys_job_log` VALUES ('976', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:22');
INSERT INTO `sys_job_log` VALUES ('977', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:23');
INSERT INTO `sys_job_log` VALUES ('978', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:24');
INSERT INTO `sys_job_log` VALUES ('979', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:25');
INSERT INTO `sys_job_log` VALUES ('980', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:26');
INSERT INTO `sys_job_log` VALUES ('981', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:27');
INSERT INTO `sys_job_log` VALUES ('982', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:28');
INSERT INTO `sys_job_log` VALUES ('983', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:29');
INSERT INTO `sys_job_log` VALUES ('984', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:30');
INSERT INTO `sys_job_log` VALUES ('985', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:31');
INSERT INTO `sys_job_log` VALUES ('986', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:32');
INSERT INTO `sys_job_log` VALUES ('987', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:33');
INSERT INTO `sys_job_log` VALUES ('988', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:34');
INSERT INTO `sys_job_log` VALUES ('989', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:35');
INSERT INTO `sys_job_log` VALUES ('990', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:36');
INSERT INTO `sys_job_log` VALUES ('991', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:37');
INSERT INTO `sys_job_log` VALUES ('992', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:38');
INSERT INTO `sys_job_log` VALUES ('993', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:39');
INSERT INTO `sys_job_log` VALUES ('994', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:40');
INSERT INTO `sys_job_log` VALUES ('995', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:41');
INSERT INTO `sys_job_log` VALUES ('996', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:42');
INSERT INTO `sys_job_log` VALUES ('997', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:43');
INSERT INTO `sys_job_log` VALUES ('998', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:44');
INSERT INTO `sys_job_log` VALUES ('999', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:45');
INSERT INTO `sys_job_log` VALUES ('1000', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:46');
INSERT INTO `sys_job_log` VALUES ('1001', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:47');
INSERT INTO `sys_job_log` VALUES ('1002', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:48');
INSERT INTO `sys_job_log` VALUES ('1003', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:49');
INSERT INTO `sys_job_log` VALUES ('1004', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:50');
INSERT INTO `sys_job_log` VALUES ('1005', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:51');
INSERT INTO `sys_job_log` VALUES ('1006', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:52');
INSERT INTO `sys_job_log` VALUES ('1007', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:53');
INSERT INTO `sys_job_log` VALUES ('1008', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:54');
INSERT INTO `sys_job_log` VALUES ('1009', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:55');
INSERT INTO `sys_job_log` VALUES ('1010', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:56');
INSERT INTO `sys_job_log` VALUES ('1011', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:57');
INSERT INTO `sys_job_log` VALUES ('1012', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:58');
INSERT INTO `sys_job_log` VALUES ('1013', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:18:59');
INSERT INTO `sys_job_log` VALUES ('1014', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:00');
INSERT INTO `sys_job_log` VALUES ('1015', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:01');
INSERT INTO `sys_job_log` VALUES ('1016', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:02');
INSERT INTO `sys_job_log` VALUES ('1017', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:03');
INSERT INTO `sys_job_log` VALUES ('1018', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:04');
INSERT INTO `sys_job_log` VALUES ('1019', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:05');
INSERT INTO `sys_job_log` VALUES ('1020', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:06');
INSERT INTO `sys_job_log` VALUES ('1021', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:07');
INSERT INTO `sys_job_log` VALUES ('1022', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:08');
INSERT INTO `sys_job_log` VALUES ('1023', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:09');
INSERT INTO `sys_job_log` VALUES ('1024', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:10');
INSERT INTO `sys_job_log` VALUES ('1025', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:11');
INSERT INTO `sys_job_log` VALUES ('1026', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:12');
INSERT INTO `sys_job_log` VALUES ('1027', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:13');
INSERT INTO `sys_job_log` VALUES ('1028', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:14');
INSERT INTO `sys_job_log` VALUES ('1029', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:15');
INSERT INTO `sys_job_log` VALUES ('1030', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:16');
INSERT INTO `sys_job_log` VALUES ('1031', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:17');
INSERT INTO `sys_job_log` VALUES ('1032', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:18');
INSERT INTO `sys_job_log` VALUES ('1033', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:19');
INSERT INTO `sys_job_log` VALUES ('1034', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:20');
INSERT INTO `sys_job_log` VALUES ('1035', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:21');
INSERT INTO `sys_job_log` VALUES ('1036', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:22');
INSERT INTO `sys_job_log` VALUES ('1037', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:23');
INSERT INTO `sys_job_log` VALUES ('1038', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:24');
INSERT INTO `sys_job_log` VALUES ('1039', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:25');
INSERT INTO `sys_job_log` VALUES ('1040', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:26');
INSERT INTO `sys_job_log` VALUES ('1041', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:27');
INSERT INTO `sys_job_log` VALUES ('1042', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:28');
INSERT INTO `sys_job_log` VALUES ('1043', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:29');
INSERT INTO `sys_job_log` VALUES ('1044', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:19:30');
INSERT INTO `sys_job_log` VALUES ('1045', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:31');
INSERT INTO `sys_job_log` VALUES ('1046', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:32');
INSERT INTO `sys_job_log` VALUES ('1047', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:33');
INSERT INTO `sys_job_log` VALUES ('1048', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:34');
INSERT INTO `sys_job_log` VALUES ('1049', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:35');
INSERT INTO `sys_job_log` VALUES ('1050', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:36');
INSERT INTO `sys_job_log` VALUES ('1051', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:37');
INSERT INTO `sys_job_log` VALUES ('1052', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:38');
INSERT INTO `sys_job_log` VALUES ('1053', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:39');
INSERT INTO `sys_job_log` VALUES ('1054', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:40');
INSERT INTO `sys_job_log` VALUES ('1055', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:41');
INSERT INTO `sys_job_log` VALUES ('1056', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:42');
INSERT INTO `sys_job_log` VALUES ('1057', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:19:43');
INSERT INTO `sys_job_log` VALUES ('1058', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:44');
INSERT INTO `sys_job_log` VALUES ('1059', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:45');
INSERT INTO `sys_job_log` VALUES ('1060', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:46');
INSERT INTO `sys_job_log` VALUES ('1061', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:47');
INSERT INTO `sys_job_log` VALUES ('1062', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:48');
INSERT INTO `sys_job_log` VALUES ('1063', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:49');
INSERT INTO `sys_job_log` VALUES ('1064', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:50');
INSERT INTO `sys_job_log` VALUES ('1065', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:51');
INSERT INTO `sys_job_log` VALUES ('1066', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:52');
INSERT INTO `sys_job_log` VALUES ('1067', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:53');
INSERT INTO `sys_job_log` VALUES ('1068', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:54');
INSERT INTO `sys_job_log` VALUES ('1069', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:55');
INSERT INTO `sys_job_log` VALUES ('1070', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:56');
INSERT INTO `sys_job_log` VALUES ('1071', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:57');
INSERT INTO `sys_job_log` VALUES ('1072', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:58');
INSERT INTO `sys_job_log` VALUES ('1073', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:19:59');
INSERT INTO `sys_job_log` VALUES ('1074', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:00');
INSERT INTO `sys_job_log` VALUES ('1075', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:01');
INSERT INTO `sys_job_log` VALUES ('1076', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:02');
INSERT INTO `sys_job_log` VALUES ('1077', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:03');
INSERT INTO `sys_job_log` VALUES ('1078', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:04');
INSERT INTO `sys_job_log` VALUES ('1079', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:05');
INSERT INTO `sys_job_log` VALUES ('1080', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:06');
INSERT INTO `sys_job_log` VALUES ('1081', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:07');
INSERT INTO `sys_job_log` VALUES ('1082', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:08');
INSERT INTO `sys_job_log` VALUES ('1083', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:09');
INSERT INTO `sys_job_log` VALUES ('1084', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:10');
INSERT INTO `sys_job_log` VALUES ('1085', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:11');
INSERT INTO `sys_job_log` VALUES ('1086', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:12');
INSERT INTO `sys_job_log` VALUES ('1087', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:13');
INSERT INTO `sys_job_log` VALUES ('1088', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:14');
INSERT INTO `sys_job_log` VALUES ('1089', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:15');
INSERT INTO `sys_job_log` VALUES ('1090', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:16');
INSERT INTO `sys_job_log` VALUES ('1091', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:17');
INSERT INTO `sys_job_log` VALUES ('1092', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:18');
INSERT INTO `sys_job_log` VALUES ('1093', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:19');
INSERT INTO `sys_job_log` VALUES ('1094', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:20');
INSERT INTO `sys_job_log` VALUES ('1095', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:21');
INSERT INTO `sys_job_log` VALUES ('1096', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:22');
INSERT INTO `sys_job_log` VALUES ('1097', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:23');
INSERT INTO `sys_job_log` VALUES ('1098', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:24');
INSERT INTO `sys_job_log` VALUES ('1099', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:25');
INSERT INTO `sys_job_log` VALUES ('1100', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:26');
INSERT INTO `sys_job_log` VALUES ('1101', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:27');
INSERT INTO `sys_job_log` VALUES ('1102', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:28');
INSERT INTO `sys_job_log` VALUES ('1103', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:29');
INSERT INTO `sys_job_log` VALUES ('1104', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:30');
INSERT INTO `sys_job_log` VALUES ('1105', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:31');
INSERT INTO `sys_job_log` VALUES ('1106', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:32');
INSERT INTO `sys_job_log` VALUES ('1107', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:33');
INSERT INTO `sys_job_log` VALUES ('1108', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:34');
INSERT INTO `sys_job_log` VALUES ('1109', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:35');
INSERT INTO `sys_job_log` VALUES ('1110', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:36');
INSERT INTO `sys_job_log` VALUES ('1111', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:37');
INSERT INTO `sys_job_log` VALUES ('1112', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:38');
INSERT INTO `sys_job_log` VALUES ('1113', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:39');
INSERT INTO `sys_job_log` VALUES ('1114', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:40');
INSERT INTO `sys_job_log` VALUES ('1115', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:41');
INSERT INTO `sys_job_log` VALUES ('1116', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:42');
INSERT INTO `sys_job_log` VALUES ('1117', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:43');
INSERT INTO `sys_job_log` VALUES ('1118', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:44');
INSERT INTO `sys_job_log` VALUES ('1119', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:45');
INSERT INTO `sys_job_log` VALUES ('1120', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:46');
INSERT INTO `sys_job_log` VALUES ('1121', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:47');
INSERT INTO `sys_job_log` VALUES ('1122', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:48');
INSERT INTO `sys_job_log` VALUES ('1123', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:49');
INSERT INTO `sys_job_log` VALUES ('1124', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:50');
INSERT INTO `sys_job_log` VALUES ('1125', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:51');
INSERT INTO `sys_job_log` VALUES ('1126', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:52');
INSERT INTO `sys_job_log` VALUES ('1127', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:53');
INSERT INTO `sys_job_log` VALUES ('1128', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:54');
INSERT INTO `sys_job_log` VALUES ('1129', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:55');
INSERT INTO `sys_job_log` VALUES ('1130', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:56');
INSERT INTO `sys_job_log` VALUES ('1131', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:57');
INSERT INTO `sys_job_log` VALUES ('1132', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:58');
INSERT INTO `sys_job_log` VALUES ('1133', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:20:59');
INSERT INTO `sys_job_log` VALUES ('1134', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:00');
INSERT INTO `sys_job_log` VALUES ('1135', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:01');
INSERT INTO `sys_job_log` VALUES ('1136', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:02');
INSERT INTO `sys_job_log` VALUES ('1137', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:03');
INSERT INTO `sys_job_log` VALUES ('1138', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:04');
INSERT INTO `sys_job_log` VALUES ('1139', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:05');
INSERT INTO `sys_job_log` VALUES ('1140', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:06');
INSERT INTO `sys_job_log` VALUES ('1141', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:07');
INSERT INTO `sys_job_log` VALUES ('1142', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:08');
INSERT INTO `sys_job_log` VALUES ('1143', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:09');
INSERT INTO `sys_job_log` VALUES ('1144', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:10');
INSERT INTO `sys_job_log` VALUES ('1145', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:21:11');
INSERT INTO `sys_job_log` VALUES ('1146', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:12');
INSERT INTO `sys_job_log` VALUES ('1147', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:13');
INSERT INTO `sys_job_log` VALUES ('1148', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:14');
INSERT INTO `sys_job_log` VALUES ('1149', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:15');
INSERT INTO `sys_job_log` VALUES ('1150', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:16');
INSERT INTO `sys_job_log` VALUES ('1151', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:17');
INSERT INTO `sys_job_log` VALUES ('1152', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:18');
INSERT INTO `sys_job_log` VALUES ('1153', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:19');
INSERT INTO `sys_job_log` VALUES ('1154', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:20');
INSERT INTO `sys_job_log` VALUES ('1155', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:21');
INSERT INTO `sys_job_log` VALUES ('1156', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:22');
INSERT INTO `sys_job_log` VALUES ('1157', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:23');
INSERT INTO `sys_job_log` VALUES ('1158', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:24');
INSERT INTO `sys_job_log` VALUES ('1159', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:25');
INSERT INTO `sys_job_log` VALUES ('1160', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:26');
INSERT INTO `sys_job_log` VALUES ('1161', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:27');
INSERT INTO `sys_job_log` VALUES ('1162', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:28');
INSERT INTO `sys_job_log` VALUES ('1163', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:29');
INSERT INTO `sys_job_log` VALUES ('1164', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:30');
INSERT INTO `sys_job_log` VALUES ('1165', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:31');
INSERT INTO `sys_job_log` VALUES ('1166', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:32');
INSERT INTO `sys_job_log` VALUES ('1167', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:33');
INSERT INTO `sys_job_log` VALUES ('1168', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:34');
INSERT INTO `sys_job_log` VALUES ('1169', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:35');
INSERT INTO `sys_job_log` VALUES ('1170', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:36');
INSERT INTO `sys_job_log` VALUES ('1171', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:37');
INSERT INTO `sys_job_log` VALUES ('1172', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:38');
INSERT INTO `sys_job_log` VALUES ('1173', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:39');
INSERT INTO `sys_job_log` VALUES ('1174', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:40');
INSERT INTO `sys_job_log` VALUES ('1175', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:41');
INSERT INTO `sys_job_log` VALUES ('1176', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:42');
INSERT INTO `sys_job_log` VALUES ('1177', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:43');
INSERT INTO `sys_job_log` VALUES ('1178', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:44');
INSERT INTO `sys_job_log` VALUES ('1179', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:45');
INSERT INTO `sys_job_log` VALUES ('1180', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:46');
INSERT INTO `sys_job_log` VALUES ('1181', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:47');
INSERT INTO `sys_job_log` VALUES ('1182', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:48');
INSERT INTO `sys_job_log` VALUES ('1183', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:49');
INSERT INTO `sys_job_log` VALUES ('1184', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:50');
INSERT INTO `sys_job_log` VALUES ('1185', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:51');
INSERT INTO `sys_job_log` VALUES ('1186', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:52');
INSERT INTO `sys_job_log` VALUES ('1187', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:53');
INSERT INTO `sys_job_log` VALUES ('1188', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:54');
INSERT INTO `sys_job_log` VALUES ('1189', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:55');
INSERT INTO `sys_job_log` VALUES ('1190', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:56');
INSERT INTO `sys_job_log` VALUES ('1191', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:57');
INSERT INTO `sys_job_log` VALUES ('1192', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:58');
INSERT INTO `sys_job_log` VALUES ('1193', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:21:59');
INSERT INTO `sys_job_log` VALUES ('1194', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:00');
INSERT INTO `sys_job_log` VALUES ('1195', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:01');
INSERT INTO `sys_job_log` VALUES ('1196', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:02');
INSERT INTO `sys_job_log` VALUES ('1197', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:03');
INSERT INTO `sys_job_log` VALUES ('1198', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:04');
INSERT INTO `sys_job_log` VALUES ('1199', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:05');
INSERT INTO `sys_job_log` VALUES ('1200', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:06');
INSERT INTO `sys_job_log` VALUES ('1201', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:07');
INSERT INTO `sys_job_log` VALUES ('1202', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:08');
INSERT INTO `sys_job_log` VALUES ('1203', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:09');
INSERT INTO `sys_job_log` VALUES ('1204', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:10');
INSERT INTO `sys_job_log` VALUES ('1205', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:11');
INSERT INTO `sys_job_log` VALUES ('1206', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:12');
INSERT INTO `sys_job_log` VALUES ('1207', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:13');
INSERT INTO `sys_job_log` VALUES ('1208', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:14');
INSERT INTO `sys_job_log` VALUES ('1209', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:15');
INSERT INTO `sys_job_log` VALUES ('1210', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:16');
INSERT INTO `sys_job_log` VALUES ('1211', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:17');
INSERT INTO `sys_job_log` VALUES ('1212', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:18');
INSERT INTO `sys_job_log` VALUES ('1213', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:19');
INSERT INTO `sys_job_log` VALUES ('1214', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:20');
INSERT INTO `sys_job_log` VALUES ('1215', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:21');
INSERT INTO `sys_job_log` VALUES ('1216', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:22');
INSERT INTO `sys_job_log` VALUES ('1217', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:23');
INSERT INTO `sys_job_log` VALUES ('1218', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:24');
INSERT INTO `sys_job_log` VALUES ('1219', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:25');
INSERT INTO `sys_job_log` VALUES ('1220', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:26');
INSERT INTO `sys_job_log` VALUES ('1221', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:27');
INSERT INTO `sys_job_log` VALUES ('1222', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:28');
INSERT INTO `sys_job_log` VALUES ('1223', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:29');
INSERT INTO `sys_job_log` VALUES ('1224', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:30');
INSERT INTO `sys_job_log` VALUES ('1225', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:31');
INSERT INTO `sys_job_log` VALUES ('1226', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:32');
INSERT INTO `sys_job_log` VALUES ('1227', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:33');
INSERT INTO `sys_job_log` VALUES ('1228', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:34');
INSERT INTO `sys_job_log` VALUES ('1229', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:35');
INSERT INTO `sys_job_log` VALUES ('1230', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:36');
INSERT INTO `sys_job_log` VALUES ('1231', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:37');
INSERT INTO `sys_job_log` VALUES ('1232', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:38');
INSERT INTO `sys_job_log` VALUES ('1233', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:39');
INSERT INTO `sys_job_log` VALUES ('1234', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:40');
INSERT INTO `sys_job_log` VALUES ('1235', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:41');
INSERT INTO `sys_job_log` VALUES ('1236', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:42');
INSERT INTO `sys_job_log` VALUES ('1237', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:43');
INSERT INTO `sys_job_log` VALUES ('1238', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:44');
INSERT INTO `sys_job_log` VALUES ('1239', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:45');
INSERT INTO `sys_job_log` VALUES ('1240', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:46');
INSERT INTO `sys_job_log` VALUES ('1241', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:47');
INSERT INTO `sys_job_log` VALUES ('1242', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:48');
INSERT INTO `sys_job_log` VALUES ('1243', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:49');
INSERT INTO `sys_job_log` VALUES ('1244', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:50');
INSERT INTO `sys_job_log` VALUES ('1245', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:51');
INSERT INTO `sys_job_log` VALUES ('1246', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:52');
INSERT INTO `sys_job_log` VALUES ('1247', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:53');
INSERT INTO `sys_job_log` VALUES ('1248', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:54');
INSERT INTO `sys_job_log` VALUES ('1249', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:55');
INSERT INTO `sys_job_log` VALUES ('1250', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:56');
INSERT INTO `sys_job_log` VALUES ('1251', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:57');
INSERT INTO `sys_job_log` VALUES ('1252', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:58');
INSERT INTO `sys_job_log` VALUES ('1253', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:22:59');
INSERT INTO `sys_job_log` VALUES ('1254', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:00');
INSERT INTO `sys_job_log` VALUES ('1255', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:01');
INSERT INTO `sys_job_log` VALUES ('1256', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:02');
INSERT INTO `sys_job_log` VALUES ('1257', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:03');
INSERT INTO `sys_job_log` VALUES ('1258', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:04');
INSERT INTO `sys_job_log` VALUES ('1259', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:05');
INSERT INTO `sys_job_log` VALUES ('1260', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:06');
INSERT INTO `sys_job_log` VALUES ('1261', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:07');
INSERT INTO `sys_job_log` VALUES ('1262', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:08');
INSERT INTO `sys_job_log` VALUES ('1263', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:09');
INSERT INTO `sys_job_log` VALUES ('1264', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:10');
INSERT INTO `sys_job_log` VALUES ('1265', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:11');
INSERT INTO `sys_job_log` VALUES ('1266', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:12');
INSERT INTO `sys_job_log` VALUES ('1267', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:13');
INSERT INTO `sys_job_log` VALUES ('1268', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:14');
INSERT INTO `sys_job_log` VALUES ('1269', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:15');
INSERT INTO `sys_job_log` VALUES ('1270', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:16');
INSERT INTO `sys_job_log` VALUES ('1271', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:17');
INSERT INTO `sys_job_log` VALUES ('1272', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:18');
INSERT INTO `sys_job_log` VALUES ('1273', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:19');
INSERT INTO `sys_job_log` VALUES ('1274', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:20');
INSERT INTO `sys_job_log` VALUES ('1275', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:21');
INSERT INTO `sys_job_log` VALUES ('1276', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:22');
INSERT INTO `sys_job_log` VALUES ('1277', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:23');
INSERT INTO `sys_job_log` VALUES ('1278', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:24');
INSERT INTO `sys_job_log` VALUES ('1279', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:25');
INSERT INTO `sys_job_log` VALUES ('1280', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:26');
INSERT INTO `sys_job_log` VALUES ('1281', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:27');
INSERT INTO `sys_job_log` VALUES ('1282', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:28');
INSERT INTO `sys_job_log` VALUES ('1283', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:29');
INSERT INTO `sys_job_log` VALUES ('1284', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:30');
INSERT INTO `sys_job_log` VALUES ('1285', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:31');
INSERT INTO `sys_job_log` VALUES ('1286', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:32');
INSERT INTO `sys_job_log` VALUES ('1287', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:33');
INSERT INTO `sys_job_log` VALUES ('1288', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:34');
INSERT INTO `sys_job_log` VALUES ('1289', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:35');
INSERT INTO `sys_job_log` VALUES ('1290', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:36');
INSERT INTO `sys_job_log` VALUES ('1291', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:37');
INSERT INTO `sys_job_log` VALUES ('1292', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:38');
INSERT INTO `sys_job_log` VALUES ('1293', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:39');
INSERT INTO `sys_job_log` VALUES ('1294', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:40');
INSERT INTO `sys_job_log` VALUES ('1295', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:41');
INSERT INTO `sys_job_log` VALUES ('1296', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:42');
INSERT INTO `sys_job_log` VALUES ('1297', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:43');
INSERT INTO `sys_job_log` VALUES ('1298', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:44');
INSERT INTO `sys_job_log` VALUES ('1299', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:45');
INSERT INTO `sys_job_log` VALUES ('1300', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:46');
INSERT INTO `sys_job_log` VALUES ('1301', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:47');
INSERT INTO `sys_job_log` VALUES ('1302', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:48');
INSERT INTO `sys_job_log` VALUES ('1303', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:49');
INSERT INTO `sys_job_log` VALUES ('1304', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:50');
INSERT INTO `sys_job_log` VALUES ('1305', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:51');
INSERT INTO `sys_job_log` VALUES ('1306', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:52');
INSERT INTO `sys_job_log` VALUES ('1307', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:53');
INSERT INTO `sys_job_log` VALUES ('1308', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:54');
INSERT INTO `sys_job_log` VALUES ('1309', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:55');
INSERT INTO `sys_job_log` VALUES ('1310', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:56');
INSERT INTO `sys_job_log` VALUES ('1311', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:57');
INSERT INTO `sys_job_log` VALUES ('1312', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:58');
INSERT INTO `sys_job_log` VALUES ('1313', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:23:59');
INSERT INTO `sys_job_log` VALUES ('1314', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:00');
INSERT INTO `sys_job_log` VALUES ('1315', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:01');
INSERT INTO `sys_job_log` VALUES ('1316', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:02');
INSERT INTO `sys_job_log` VALUES ('1317', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:03');
INSERT INTO `sys_job_log` VALUES ('1318', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:04');
INSERT INTO `sys_job_log` VALUES ('1319', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:05');
INSERT INTO `sys_job_log` VALUES ('1320', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:06');
INSERT INTO `sys_job_log` VALUES ('1321', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:07');
INSERT INTO `sys_job_log` VALUES ('1322', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:08');
INSERT INTO `sys_job_log` VALUES ('1323', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:09');
INSERT INTO `sys_job_log` VALUES ('1324', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:10');
INSERT INTO `sys_job_log` VALUES ('1325', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:11');
INSERT INTO `sys_job_log` VALUES ('1326', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:12');
INSERT INTO `sys_job_log` VALUES ('1327', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:13');
INSERT INTO `sys_job_log` VALUES ('1328', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:14');
INSERT INTO `sys_job_log` VALUES ('1329', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:15');
INSERT INTO `sys_job_log` VALUES ('1330', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:16');
INSERT INTO `sys_job_log` VALUES ('1331', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:17');
INSERT INTO `sys_job_log` VALUES ('1332', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:18');
INSERT INTO `sys_job_log` VALUES ('1333', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:19');
INSERT INTO `sys_job_log` VALUES ('1334', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:20');
INSERT INTO `sys_job_log` VALUES ('1335', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:21');
INSERT INTO `sys_job_log` VALUES ('1336', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:22');
INSERT INTO `sys_job_log` VALUES ('1337', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:23');
INSERT INTO `sys_job_log` VALUES ('1338', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:24');
INSERT INTO `sys_job_log` VALUES ('1339', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:25');
INSERT INTO `sys_job_log` VALUES ('1340', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:26');
INSERT INTO `sys_job_log` VALUES ('1341', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:27');
INSERT INTO `sys_job_log` VALUES ('1342', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:28');
INSERT INTO `sys_job_log` VALUES ('1343', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:29');
INSERT INTO `sys_job_log` VALUES ('1344', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:30');
INSERT INTO `sys_job_log` VALUES ('1345', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:31');
INSERT INTO `sys_job_log` VALUES ('1346', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:32');
INSERT INTO `sys_job_log` VALUES ('1347', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:33');
INSERT INTO `sys_job_log` VALUES ('1348', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:34');
INSERT INTO `sys_job_log` VALUES ('1349', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:35');
INSERT INTO `sys_job_log` VALUES ('1350', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:36');
INSERT INTO `sys_job_log` VALUES ('1351', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:37');
INSERT INTO `sys_job_log` VALUES ('1352', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:38');
INSERT INTO `sys_job_log` VALUES ('1353', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:39');
INSERT INTO `sys_job_log` VALUES ('1354', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:40');
INSERT INTO `sys_job_log` VALUES ('1355', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:41');
INSERT INTO `sys_job_log` VALUES ('1356', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:42');
INSERT INTO `sys_job_log` VALUES ('1357', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:43');
INSERT INTO `sys_job_log` VALUES ('1358', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:44');
INSERT INTO `sys_job_log` VALUES ('1359', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:45');
INSERT INTO `sys_job_log` VALUES ('1360', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:46');
INSERT INTO `sys_job_log` VALUES ('1361', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:47');
INSERT INTO `sys_job_log` VALUES ('1362', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:48');
INSERT INTO `sys_job_log` VALUES ('1363', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:49');
INSERT INTO `sys_job_log` VALUES ('1364', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:50');
INSERT INTO `sys_job_log` VALUES ('1365', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:51');
INSERT INTO `sys_job_log` VALUES ('1366', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:52');
INSERT INTO `sys_job_log` VALUES ('1367', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:53');
INSERT INTO `sys_job_log` VALUES ('1368', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:54');
INSERT INTO `sys_job_log` VALUES ('1369', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:55');
INSERT INTO `sys_job_log` VALUES ('1370', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:56');
INSERT INTO `sys_job_log` VALUES ('1371', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:57');
INSERT INTO `sys_job_log` VALUES ('1372', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:58');
INSERT INTO `sys_job_log` VALUES ('1373', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:24:59');
INSERT INTO `sys_job_log` VALUES ('1374', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:00');
INSERT INTO `sys_job_log` VALUES ('1375', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:01');
INSERT INTO `sys_job_log` VALUES ('1376', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:02');
INSERT INTO `sys_job_log` VALUES ('1377', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:03');
INSERT INTO `sys_job_log` VALUES ('1378', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:04');
INSERT INTO `sys_job_log` VALUES ('1379', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:05');
INSERT INTO `sys_job_log` VALUES ('1380', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:06');
INSERT INTO `sys_job_log` VALUES ('1381', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:07');
INSERT INTO `sys_job_log` VALUES ('1382', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:08');
INSERT INTO `sys_job_log` VALUES ('1383', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:09');
INSERT INTO `sys_job_log` VALUES ('1384', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:10');
INSERT INTO `sys_job_log` VALUES ('1385', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:11');
INSERT INTO `sys_job_log` VALUES ('1386', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:12');
INSERT INTO `sys_job_log` VALUES ('1387', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:13');
INSERT INTO `sys_job_log` VALUES ('1388', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:14');
INSERT INTO `sys_job_log` VALUES ('1389', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:15');
INSERT INTO `sys_job_log` VALUES ('1390', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:16');
INSERT INTO `sys_job_log` VALUES ('1391', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:17');
INSERT INTO `sys_job_log` VALUES ('1392', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:18');
INSERT INTO `sys_job_log` VALUES ('1393', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:19');
INSERT INTO `sys_job_log` VALUES ('1394', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:20');
INSERT INTO `sys_job_log` VALUES ('1395', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:21');
INSERT INTO `sys_job_log` VALUES ('1396', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:22');
INSERT INTO `sys_job_log` VALUES ('1397', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:23');
INSERT INTO `sys_job_log` VALUES ('1398', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:24');
INSERT INTO `sys_job_log` VALUES ('1399', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:25');
INSERT INTO `sys_job_log` VALUES ('1400', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:26');
INSERT INTO `sys_job_log` VALUES ('1401', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:27');
INSERT INTO `sys_job_log` VALUES ('1402', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:28');
INSERT INTO `sys_job_log` VALUES ('1403', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:29');
INSERT INTO `sys_job_log` VALUES ('1404', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:30');
INSERT INTO `sys_job_log` VALUES ('1405', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:31');
INSERT INTO `sys_job_log` VALUES ('1406', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:32');
INSERT INTO `sys_job_log` VALUES ('1407', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:33');
INSERT INTO `sys_job_log` VALUES ('1408', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:34');
INSERT INTO `sys_job_log` VALUES ('1409', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:35');
INSERT INTO `sys_job_log` VALUES ('1410', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:36');
INSERT INTO `sys_job_log` VALUES ('1411', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:37');
INSERT INTO `sys_job_log` VALUES ('1412', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:38');
INSERT INTO `sys_job_log` VALUES ('1413', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:39');
INSERT INTO `sys_job_log` VALUES ('1414', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:40');
INSERT INTO `sys_job_log` VALUES ('1415', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:41');
INSERT INTO `sys_job_log` VALUES ('1416', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:42');
INSERT INTO `sys_job_log` VALUES ('1417', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:43');
INSERT INTO `sys_job_log` VALUES ('1418', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:44');
INSERT INTO `sys_job_log` VALUES ('1419', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:45');
INSERT INTO `sys_job_log` VALUES ('1420', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:46');
INSERT INTO `sys_job_log` VALUES ('1421', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:47');
INSERT INTO `sys_job_log` VALUES ('1422', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:48');
INSERT INTO `sys_job_log` VALUES ('1423', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:49');
INSERT INTO `sys_job_log` VALUES ('1424', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:50');
INSERT INTO `sys_job_log` VALUES ('1425', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:51');
INSERT INTO `sys_job_log` VALUES ('1426', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:52');
INSERT INTO `sys_job_log` VALUES ('1427', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:53');
INSERT INTO `sys_job_log` VALUES ('1428', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:54');
INSERT INTO `sys_job_log` VALUES ('1429', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:55');
INSERT INTO `sys_job_log` VALUES ('1430', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:56');
INSERT INTO `sys_job_log` VALUES ('1431', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:57');
INSERT INTO `sys_job_log` VALUES ('1432', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:58');
INSERT INTO `sys_job_log` VALUES ('1433', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:25:59');
INSERT INTO `sys_job_log` VALUES ('1434', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:00');
INSERT INTO `sys_job_log` VALUES ('1435', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:01');
INSERT INTO `sys_job_log` VALUES ('1436', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:02');
INSERT INTO `sys_job_log` VALUES ('1437', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:03');
INSERT INTO `sys_job_log` VALUES ('1438', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:04');
INSERT INTO `sys_job_log` VALUES ('1439', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:05');
INSERT INTO `sys_job_log` VALUES ('1440', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:06');
INSERT INTO `sys_job_log` VALUES ('1441', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:07');
INSERT INTO `sys_job_log` VALUES ('1442', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:08');
INSERT INTO `sys_job_log` VALUES ('1443', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:09');
INSERT INTO `sys_job_log` VALUES ('1444', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:10');
INSERT INTO `sys_job_log` VALUES ('1445', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:11');
INSERT INTO `sys_job_log` VALUES ('1446', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:12');
INSERT INTO `sys_job_log` VALUES ('1447', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:13');
INSERT INTO `sys_job_log` VALUES ('1448', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:14');
INSERT INTO `sys_job_log` VALUES ('1449', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:15');
INSERT INTO `sys_job_log` VALUES ('1450', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:16');
INSERT INTO `sys_job_log` VALUES ('1451', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:17');
INSERT INTO `sys_job_log` VALUES ('1452', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:18');
INSERT INTO `sys_job_log` VALUES ('1453', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:19');
INSERT INTO `sys_job_log` VALUES ('1454', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:20');
INSERT INTO `sys_job_log` VALUES ('1455', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:21');
INSERT INTO `sys_job_log` VALUES ('1456', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:22');
INSERT INTO `sys_job_log` VALUES ('1457', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:23');
INSERT INTO `sys_job_log` VALUES ('1458', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:24');
INSERT INTO `sys_job_log` VALUES ('1459', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:25');
INSERT INTO `sys_job_log` VALUES ('1460', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:26');
INSERT INTO `sys_job_log` VALUES ('1461', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:27');
INSERT INTO `sys_job_log` VALUES ('1462', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:28');
INSERT INTO `sys_job_log` VALUES ('1463', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:29');
INSERT INTO `sys_job_log` VALUES ('1464', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:30');
INSERT INTO `sys_job_log` VALUES ('1465', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:31');
INSERT INTO `sys_job_log` VALUES ('1466', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:32');
INSERT INTO `sys_job_log` VALUES ('1467', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:33');
INSERT INTO `sys_job_log` VALUES ('1468', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:34');
INSERT INTO `sys_job_log` VALUES ('1469', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:35');
INSERT INTO `sys_job_log` VALUES ('1470', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:36');
INSERT INTO `sys_job_log` VALUES ('1471', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:37');
INSERT INTO `sys_job_log` VALUES ('1472', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:38');
INSERT INTO `sys_job_log` VALUES ('1473', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:39');
INSERT INTO `sys_job_log` VALUES ('1474', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:40');
INSERT INTO `sys_job_log` VALUES ('1475', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:41');
INSERT INTO `sys_job_log` VALUES ('1476', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:42');
INSERT INTO `sys_job_log` VALUES ('1477', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:43');
INSERT INTO `sys_job_log` VALUES ('1478', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:44');
INSERT INTO `sys_job_log` VALUES ('1479', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:45');
INSERT INTO `sys_job_log` VALUES ('1480', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:46');
INSERT INTO `sys_job_log` VALUES ('1481', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:47');
INSERT INTO `sys_job_log` VALUES ('1482', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:48');
INSERT INTO `sys_job_log` VALUES ('1483', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:49');
INSERT INTO `sys_job_log` VALUES ('1484', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:50');
INSERT INTO `sys_job_log` VALUES ('1485', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:51');
INSERT INTO `sys_job_log` VALUES ('1486', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:52');
INSERT INTO `sys_job_log` VALUES ('1487', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:53');
INSERT INTO `sys_job_log` VALUES ('1488', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:54');
INSERT INTO `sys_job_log` VALUES ('1489', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:55');
INSERT INTO `sys_job_log` VALUES ('1490', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:56');
INSERT INTO `sys_job_log` VALUES ('1491', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:57');
INSERT INTO `sys_job_log` VALUES ('1492', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:58');
INSERT INTO `sys_job_log` VALUES ('1493', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:26:59');
INSERT INTO `sys_job_log` VALUES ('1494', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:00');
INSERT INTO `sys_job_log` VALUES ('1495', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:01');
INSERT INTO `sys_job_log` VALUES ('1496', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:02');
INSERT INTO `sys_job_log` VALUES ('1497', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:03');
INSERT INTO `sys_job_log` VALUES ('1498', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:04');
INSERT INTO `sys_job_log` VALUES ('1499', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:05');
INSERT INTO `sys_job_log` VALUES ('1500', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:06');
INSERT INTO `sys_job_log` VALUES ('1501', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:07');
INSERT INTO `sys_job_log` VALUES ('1502', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:08');
INSERT INTO `sys_job_log` VALUES ('1503', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:09');
INSERT INTO `sys_job_log` VALUES ('1504', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:10');
INSERT INTO `sys_job_log` VALUES ('1505', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:11');
INSERT INTO `sys_job_log` VALUES ('1506', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:12');
INSERT INTO `sys_job_log` VALUES ('1507', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:13');
INSERT INTO `sys_job_log` VALUES ('1508', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:14');
INSERT INTO `sys_job_log` VALUES ('1509', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:15');
INSERT INTO `sys_job_log` VALUES ('1510', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:16');
INSERT INTO `sys_job_log` VALUES ('1511', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:17');
INSERT INTO `sys_job_log` VALUES ('1512', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:18');
INSERT INTO `sys_job_log` VALUES ('1513', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:19');
INSERT INTO `sys_job_log` VALUES ('1514', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:20');
INSERT INTO `sys_job_log` VALUES ('1515', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:21');
INSERT INTO `sys_job_log` VALUES ('1516', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:22');
INSERT INTO `sys_job_log` VALUES ('1517', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:23');
INSERT INTO `sys_job_log` VALUES ('1518', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:24');
INSERT INTO `sys_job_log` VALUES ('1519', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:25');
INSERT INTO `sys_job_log` VALUES ('1520', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:26');
INSERT INTO `sys_job_log` VALUES ('1521', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:27');
INSERT INTO `sys_job_log` VALUES ('1522', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:28');
INSERT INTO `sys_job_log` VALUES ('1523', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:29');
INSERT INTO `sys_job_log` VALUES ('1524', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:30');
INSERT INTO `sys_job_log` VALUES ('1525', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:31');
INSERT INTO `sys_job_log` VALUES ('1526', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:32');
INSERT INTO `sys_job_log` VALUES ('1527', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:33');
INSERT INTO `sys_job_log` VALUES ('1528', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:34');
INSERT INTO `sys_job_log` VALUES ('1529', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:35');
INSERT INTO `sys_job_log` VALUES ('1530', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:36');
INSERT INTO `sys_job_log` VALUES ('1531', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:37');
INSERT INTO `sys_job_log` VALUES ('1532', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:38');
INSERT INTO `sys_job_log` VALUES ('1533', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:39');
INSERT INTO `sys_job_log` VALUES ('1534', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:40');
INSERT INTO `sys_job_log` VALUES ('1535', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:41');
INSERT INTO `sys_job_log` VALUES ('1536', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:42');
INSERT INTO `sys_job_log` VALUES ('1537', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:43');
INSERT INTO `sys_job_log` VALUES ('1538', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:44');
INSERT INTO `sys_job_log` VALUES ('1539', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:45');
INSERT INTO `sys_job_log` VALUES ('1540', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:46');
INSERT INTO `sys_job_log` VALUES ('1541', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:47');
INSERT INTO `sys_job_log` VALUES ('1542', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:48');
INSERT INTO `sys_job_log` VALUES ('1543', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:49');
INSERT INTO `sys_job_log` VALUES ('1544', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:50');
INSERT INTO `sys_job_log` VALUES ('1545', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:51');
INSERT INTO `sys_job_log` VALUES ('1546', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:52');
INSERT INTO `sys_job_log` VALUES ('1547', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:53');
INSERT INTO `sys_job_log` VALUES ('1548', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:54');
INSERT INTO `sys_job_log` VALUES ('1549', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:55');
INSERT INTO `sys_job_log` VALUES ('1550', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:56');
INSERT INTO `sys_job_log` VALUES ('1551', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:57');
INSERT INTO `sys_job_log` VALUES ('1552', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:58');
INSERT INTO `sys_job_log` VALUES ('1553', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:27:59');
INSERT INTO `sys_job_log` VALUES ('1554', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:00');
INSERT INTO `sys_job_log` VALUES ('1555', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:01');
INSERT INTO `sys_job_log` VALUES ('1556', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:02');
INSERT INTO `sys_job_log` VALUES ('1557', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:03');
INSERT INTO `sys_job_log` VALUES ('1558', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:04');
INSERT INTO `sys_job_log` VALUES ('1559', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:05');
INSERT INTO `sys_job_log` VALUES ('1560', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:06');
INSERT INTO `sys_job_log` VALUES ('1561', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:07');
INSERT INTO `sys_job_log` VALUES ('1562', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:08');
INSERT INTO `sys_job_log` VALUES ('1563', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:09');
INSERT INTO `sys_job_log` VALUES ('1564', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:10');
INSERT INTO `sys_job_log` VALUES ('1565', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:11');
INSERT INTO `sys_job_log` VALUES ('1566', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:12');
INSERT INTO `sys_job_log` VALUES ('1567', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:13');
INSERT INTO `sys_job_log` VALUES ('1568', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:14');
INSERT INTO `sys_job_log` VALUES ('1569', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:15');
INSERT INTO `sys_job_log` VALUES ('1570', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:16');
INSERT INTO `sys_job_log` VALUES ('1571', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:17');
INSERT INTO `sys_job_log` VALUES ('1572', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:18');
INSERT INTO `sys_job_log` VALUES ('1573', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:19');
INSERT INTO `sys_job_log` VALUES ('1574', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:20');
INSERT INTO `sys_job_log` VALUES ('1575', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:21');
INSERT INTO `sys_job_log` VALUES ('1576', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:22');
INSERT INTO `sys_job_log` VALUES ('1577', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:23');
INSERT INTO `sys_job_log` VALUES ('1578', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:24');
INSERT INTO `sys_job_log` VALUES ('1579', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:25');
INSERT INTO `sys_job_log` VALUES ('1580', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:26');
INSERT INTO `sys_job_log` VALUES ('1581', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:27');
INSERT INTO `sys_job_log` VALUES ('1582', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:28');
INSERT INTO `sys_job_log` VALUES ('1583', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:29');
INSERT INTO `sys_job_log` VALUES ('1584', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:30');
INSERT INTO `sys_job_log` VALUES ('1585', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:31');
INSERT INTO `sys_job_log` VALUES ('1586', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:32');
INSERT INTO `sys_job_log` VALUES ('1587', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:33');
INSERT INTO `sys_job_log` VALUES ('1588', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:34');
INSERT INTO `sys_job_log` VALUES ('1589', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:35');
INSERT INTO `sys_job_log` VALUES ('1590', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:36');
INSERT INTO `sys_job_log` VALUES ('1591', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:37');
INSERT INTO `sys_job_log` VALUES ('1592', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:38');
INSERT INTO `sys_job_log` VALUES ('1593', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:39');
INSERT INTO `sys_job_log` VALUES ('1594', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:40');
INSERT INTO `sys_job_log` VALUES ('1595', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:41');
INSERT INTO `sys_job_log` VALUES ('1596', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:42');
INSERT INTO `sys_job_log` VALUES ('1597', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:43');
INSERT INTO `sys_job_log` VALUES ('1598', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:44');
INSERT INTO `sys_job_log` VALUES ('1599', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:45');
INSERT INTO `sys_job_log` VALUES ('1600', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:46');
INSERT INTO `sys_job_log` VALUES ('1601', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:47');
INSERT INTO `sys_job_log` VALUES ('1602', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:48');
INSERT INTO `sys_job_log` VALUES ('1603', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:49');
INSERT INTO `sys_job_log` VALUES ('1604', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:50');
INSERT INTO `sys_job_log` VALUES ('1605', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:51');
INSERT INTO `sys_job_log` VALUES ('1606', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:52');
INSERT INTO `sys_job_log` VALUES ('1607', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:53');
INSERT INTO `sys_job_log` VALUES ('1608', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:54');
INSERT INTO `sys_job_log` VALUES ('1609', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:55');
INSERT INTO `sys_job_log` VALUES ('1610', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:28:56');
INSERT INTO `sys_job_log` VALUES ('1611', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:57');
INSERT INTO `sys_job_log` VALUES ('1612', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:58');
INSERT INTO `sys_job_log` VALUES ('1613', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:28:59');
INSERT INTO `sys_job_log` VALUES ('1614', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:00');
INSERT INTO `sys_job_log` VALUES ('1615', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:01');
INSERT INTO `sys_job_log` VALUES ('1616', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:02');
INSERT INTO `sys_job_log` VALUES ('1617', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:03');
INSERT INTO `sys_job_log` VALUES ('1618', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:04');
INSERT INTO `sys_job_log` VALUES ('1619', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:05');
INSERT INTO `sys_job_log` VALUES ('1620', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:06');
INSERT INTO `sys_job_log` VALUES ('1621', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:07');
INSERT INTO `sys_job_log` VALUES ('1622', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:08');
INSERT INTO `sys_job_log` VALUES ('1623', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:09');
INSERT INTO `sys_job_log` VALUES ('1624', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:10');
INSERT INTO `sys_job_log` VALUES ('1625', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:11');
INSERT INTO `sys_job_log` VALUES ('1626', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:12');
INSERT INTO `sys_job_log` VALUES ('1627', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:13');
INSERT INTO `sys_job_log` VALUES ('1628', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:14');
INSERT INTO `sys_job_log` VALUES ('1629', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:15');
INSERT INTO `sys_job_log` VALUES ('1630', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:16');
INSERT INTO `sys_job_log` VALUES ('1631', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:17');
INSERT INTO `sys_job_log` VALUES ('1632', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:18');
INSERT INTO `sys_job_log` VALUES ('1633', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:19');
INSERT INTO `sys_job_log` VALUES ('1634', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:20');
INSERT INTO `sys_job_log` VALUES ('1635', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:21');
INSERT INTO `sys_job_log` VALUES ('1636', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:22');
INSERT INTO `sys_job_log` VALUES ('1637', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:23');
INSERT INTO `sys_job_log` VALUES ('1638', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:24');
INSERT INTO `sys_job_log` VALUES ('1639', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:25');
INSERT INTO `sys_job_log` VALUES ('1640', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:26');
INSERT INTO `sys_job_log` VALUES ('1641', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:27');
INSERT INTO `sys_job_log` VALUES ('1642', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:28');
INSERT INTO `sys_job_log` VALUES ('1643', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:29');
INSERT INTO `sys_job_log` VALUES ('1644', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:30');
INSERT INTO `sys_job_log` VALUES ('1645', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:31');
INSERT INTO `sys_job_log` VALUES ('1646', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:32');
INSERT INTO `sys_job_log` VALUES ('1647', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:33');
INSERT INTO `sys_job_log` VALUES ('1648', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:34');
INSERT INTO `sys_job_log` VALUES ('1649', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:35');
INSERT INTO `sys_job_log` VALUES ('1650', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:36');
INSERT INTO `sys_job_log` VALUES ('1651', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:37');
INSERT INTO `sys_job_log` VALUES ('1652', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:38');
INSERT INTO `sys_job_log` VALUES ('1653', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:39');
INSERT INTO `sys_job_log` VALUES ('1654', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:40');
INSERT INTO `sys_job_log` VALUES ('1655', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:41');
INSERT INTO `sys_job_log` VALUES ('1656', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:42');
INSERT INTO `sys_job_log` VALUES ('1657', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:43');
INSERT INTO `sys_job_log` VALUES ('1658', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:44');
INSERT INTO `sys_job_log` VALUES ('1659', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:45');
INSERT INTO `sys_job_log` VALUES ('1660', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:46');
INSERT INTO `sys_job_log` VALUES ('1661', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:47');
INSERT INTO `sys_job_log` VALUES ('1662', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:48');
INSERT INTO `sys_job_log` VALUES ('1663', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:49');
INSERT INTO `sys_job_log` VALUES ('1664', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:50');
INSERT INTO `sys_job_log` VALUES ('1665', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:51');
INSERT INTO `sys_job_log` VALUES ('1666', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:52');
INSERT INTO `sys_job_log` VALUES ('1667', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:53');
INSERT INTO `sys_job_log` VALUES ('1668', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:54');
INSERT INTO `sys_job_log` VALUES ('1669', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:55');
INSERT INTO `sys_job_log` VALUES ('1670', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:56');
INSERT INTO `sys_job_log` VALUES ('1671', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:57');
INSERT INTO `sys_job_log` VALUES ('1672', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:58');
INSERT INTO `sys_job_log` VALUES ('1673', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:29:59');
INSERT INTO `sys_job_log` VALUES ('1674', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:00');
INSERT INTO `sys_job_log` VALUES ('1675', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:01');
INSERT INTO `sys_job_log` VALUES ('1676', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:02');
INSERT INTO `sys_job_log` VALUES ('1677', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:03');
INSERT INTO `sys_job_log` VALUES ('1678', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:04');
INSERT INTO `sys_job_log` VALUES ('1679', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:05');
INSERT INTO `sys_job_log` VALUES ('1680', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:06');
INSERT INTO `sys_job_log` VALUES ('1681', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:07');
INSERT INTO `sys_job_log` VALUES ('1682', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:08');
INSERT INTO `sys_job_log` VALUES ('1683', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:09');
INSERT INTO `sys_job_log` VALUES ('1684', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:10');
INSERT INTO `sys_job_log` VALUES ('1685', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:11');
INSERT INTO `sys_job_log` VALUES ('1686', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:12');
INSERT INTO `sys_job_log` VALUES ('1687', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:13');
INSERT INTO `sys_job_log` VALUES ('1688', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:14');
INSERT INTO `sys_job_log` VALUES ('1689', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:15');
INSERT INTO `sys_job_log` VALUES ('1690', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:16');
INSERT INTO `sys_job_log` VALUES ('1691', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:17');
INSERT INTO `sys_job_log` VALUES ('1692', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:18');
INSERT INTO `sys_job_log` VALUES ('1693', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:30:19');
INSERT INTO `sys_job_log` VALUES ('1694', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:20');
INSERT INTO `sys_job_log` VALUES ('1695', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:21');
INSERT INTO `sys_job_log` VALUES ('1696', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:22');
INSERT INTO `sys_job_log` VALUES ('1697', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:23');
INSERT INTO `sys_job_log` VALUES ('1698', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:24');
INSERT INTO `sys_job_log` VALUES ('1699', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:25');
INSERT INTO `sys_job_log` VALUES ('1700', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:26');
INSERT INTO `sys_job_log` VALUES ('1701', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:27');
INSERT INTO `sys_job_log` VALUES ('1702', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:28');
INSERT INTO `sys_job_log` VALUES ('1703', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:29');
INSERT INTO `sys_job_log` VALUES ('1704', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:30');
INSERT INTO `sys_job_log` VALUES ('1705', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:31');
INSERT INTO `sys_job_log` VALUES ('1706', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:32');
INSERT INTO `sys_job_log` VALUES ('1707', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:33');
INSERT INTO `sys_job_log` VALUES ('1708', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:34');
INSERT INTO `sys_job_log` VALUES ('1709', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:35');
INSERT INTO `sys_job_log` VALUES ('1710', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:36');
INSERT INTO `sys_job_log` VALUES ('1711', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:37');
INSERT INTO `sys_job_log` VALUES ('1712', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:38');
INSERT INTO `sys_job_log` VALUES ('1713', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:39');
INSERT INTO `sys_job_log` VALUES ('1714', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:40');
INSERT INTO `sys_job_log` VALUES ('1715', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:41');
INSERT INTO `sys_job_log` VALUES ('1716', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:42');
INSERT INTO `sys_job_log` VALUES ('1717', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:43');
INSERT INTO `sys_job_log` VALUES ('1718', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:44');
INSERT INTO `sys_job_log` VALUES ('1719', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:45');
INSERT INTO `sys_job_log` VALUES ('1720', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:46');
INSERT INTO `sys_job_log` VALUES ('1721', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:47');
INSERT INTO `sys_job_log` VALUES ('1722', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:48');
INSERT INTO `sys_job_log` VALUES ('1723', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:49');
INSERT INTO `sys_job_log` VALUES ('1724', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:50');
INSERT INTO `sys_job_log` VALUES ('1725', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:51');
INSERT INTO `sys_job_log` VALUES ('1726', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:52');
INSERT INTO `sys_job_log` VALUES ('1727', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:53');
INSERT INTO `sys_job_log` VALUES ('1728', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:54');
INSERT INTO `sys_job_log` VALUES ('1729', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:55');
INSERT INTO `sys_job_log` VALUES ('1730', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:56');
INSERT INTO `sys_job_log` VALUES ('1731', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:57');
INSERT INTO `sys_job_log` VALUES ('1732', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:58');
INSERT INTO `sys_job_log` VALUES ('1733', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:30:59');
INSERT INTO `sys_job_log` VALUES ('1734', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:00');
INSERT INTO `sys_job_log` VALUES ('1735', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:01');
INSERT INTO `sys_job_log` VALUES ('1736', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:02');
INSERT INTO `sys_job_log` VALUES ('1737', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:03');
INSERT INTO `sys_job_log` VALUES ('1738', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:04');
INSERT INTO `sys_job_log` VALUES ('1739', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:05');
INSERT INTO `sys_job_log` VALUES ('1740', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:06');
INSERT INTO `sys_job_log` VALUES ('1741', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:07');
INSERT INTO `sys_job_log` VALUES ('1742', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:08');
INSERT INTO `sys_job_log` VALUES ('1743', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:09');
INSERT INTO `sys_job_log` VALUES ('1744', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:10');
INSERT INTO `sys_job_log` VALUES ('1745', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:11');
INSERT INTO `sys_job_log` VALUES ('1746', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:12');
INSERT INTO `sys_job_log` VALUES ('1747', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:13');
INSERT INTO `sys_job_log` VALUES ('1748', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:14');
INSERT INTO `sys_job_log` VALUES ('1749', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:15');
INSERT INTO `sys_job_log` VALUES ('1750', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:16');
INSERT INTO `sys_job_log` VALUES ('1751', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:17');
INSERT INTO `sys_job_log` VALUES ('1752', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:18');
INSERT INTO `sys_job_log` VALUES ('1753', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:19');
INSERT INTO `sys_job_log` VALUES ('1754', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:20');
INSERT INTO `sys_job_log` VALUES ('1755', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:21');
INSERT INTO `sys_job_log` VALUES ('1756', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:22');
INSERT INTO `sys_job_log` VALUES ('1757', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:23');
INSERT INTO `sys_job_log` VALUES ('1758', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:24');
INSERT INTO `sys_job_log` VALUES ('1759', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:25');
INSERT INTO `sys_job_log` VALUES ('1760', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:26');
INSERT INTO `sys_job_log` VALUES ('1761', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:27');
INSERT INTO `sys_job_log` VALUES ('1762', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:28');
INSERT INTO `sys_job_log` VALUES ('1763', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:29');
INSERT INTO `sys_job_log` VALUES ('1764', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:30');
INSERT INTO `sys_job_log` VALUES ('1765', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:31');
INSERT INTO `sys_job_log` VALUES ('1766', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:32');
INSERT INTO `sys_job_log` VALUES ('1767', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:33');
INSERT INTO `sys_job_log` VALUES ('1768', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:34');
INSERT INTO `sys_job_log` VALUES ('1769', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:35');
INSERT INTO `sys_job_log` VALUES ('1770', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:36');
INSERT INTO `sys_job_log` VALUES ('1771', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:37');
INSERT INTO `sys_job_log` VALUES ('1772', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:38');
INSERT INTO `sys_job_log` VALUES ('1773', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:39');
INSERT INTO `sys_job_log` VALUES ('1774', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:40');
INSERT INTO `sys_job_log` VALUES ('1775', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:41');
INSERT INTO `sys_job_log` VALUES ('1776', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:42');
INSERT INTO `sys_job_log` VALUES ('1777', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:43');
INSERT INTO `sys_job_log` VALUES ('1778', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:44');
INSERT INTO `sys_job_log` VALUES ('1779', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:45');
INSERT INTO `sys_job_log` VALUES ('1780', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:46');
INSERT INTO `sys_job_log` VALUES ('1781', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:47');
INSERT INTO `sys_job_log` VALUES ('1782', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:48');
INSERT INTO `sys_job_log` VALUES ('1783', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:49');
INSERT INTO `sys_job_log` VALUES ('1784', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:50');
INSERT INTO `sys_job_log` VALUES ('1785', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:51');
INSERT INTO `sys_job_log` VALUES ('1786', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:52');
INSERT INTO `sys_job_log` VALUES ('1787', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:53');
INSERT INTO `sys_job_log` VALUES ('1788', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:54');
INSERT INTO `sys_job_log` VALUES ('1789', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:55');
INSERT INTO `sys_job_log` VALUES ('1790', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:56');
INSERT INTO `sys_job_log` VALUES ('1791', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:57');
INSERT INTO `sys_job_log` VALUES ('1792', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:58');
INSERT INTO `sys_job_log` VALUES ('1793', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:31:59');
INSERT INTO `sys_job_log` VALUES ('1794', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:00');
INSERT INTO `sys_job_log` VALUES ('1795', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:01');
INSERT INTO `sys_job_log` VALUES ('1796', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:02');
INSERT INTO `sys_job_log` VALUES ('1797', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:03');
INSERT INTO `sys_job_log` VALUES ('1798', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:04');
INSERT INTO `sys_job_log` VALUES ('1799', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:05');
INSERT INTO `sys_job_log` VALUES ('1800', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:06');
INSERT INTO `sys_job_log` VALUES ('1801', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:07');
INSERT INTO `sys_job_log` VALUES ('1802', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:08');
INSERT INTO `sys_job_log` VALUES ('1803', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:09');
INSERT INTO `sys_job_log` VALUES ('1804', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:10');
INSERT INTO `sys_job_log` VALUES ('1805', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:11');
INSERT INTO `sys_job_log` VALUES ('1806', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:12');
INSERT INTO `sys_job_log` VALUES ('1807', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:13');
INSERT INTO `sys_job_log` VALUES ('1808', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:14');
INSERT INTO `sys_job_log` VALUES ('1809', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:15');
INSERT INTO `sys_job_log` VALUES ('1810', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:16');
INSERT INTO `sys_job_log` VALUES ('1811', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:17');
INSERT INTO `sys_job_log` VALUES ('1812', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:18');
INSERT INTO `sys_job_log` VALUES ('1813', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:19');
INSERT INTO `sys_job_log` VALUES ('1814', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:20');
INSERT INTO `sys_job_log` VALUES ('1815', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:21');
INSERT INTO `sys_job_log` VALUES ('1816', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:22');
INSERT INTO `sys_job_log` VALUES ('1817', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:23');
INSERT INTO `sys_job_log` VALUES ('1818', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:24');
INSERT INTO `sys_job_log` VALUES ('1819', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:25');
INSERT INTO `sys_job_log` VALUES ('1820', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:26');
INSERT INTO `sys_job_log` VALUES ('1821', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:27');
INSERT INTO `sys_job_log` VALUES ('1822', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:28');
INSERT INTO `sys_job_log` VALUES ('1823', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:29');
INSERT INTO `sys_job_log` VALUES ('1824', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:30');
INSERT INTO `sys_job_log` VALUES ('1825', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:31');
INSERT INTO `sys_job_log` VALUES ('1826', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:32');
INSERT INTO `sys_job_log` VALUES ('1827', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:33');
INSERT INTO `sys_job_log` VALUES ('1828', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:34');
INSERT INTO `sys_job_log` VALUES ('1829', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:35');
INSERT INTO `sys_job_log` VALUES ('1830', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:36');
INSERT INTO `sys_job_log` VALUES ('1831', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:37');
INSERT INTO `sys_job_log` VALUES ('1832', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:38');
INSERT INTO `sys_job_log` VALUES ('1833', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:39');
INSERT INTO `sys_job_log` VALUES ('1834', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:40');
INSERT INTO `sys_job_log` VALUES ('1835', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:41');
INSERT INTO `sys_job_log` VALUES ('1836', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:42');
INSERT INTO `sys_job_log` VALUES ('1837', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:43');
INSERT INTO `sys_job_log` VALUES ('1838', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:44');
INSERT INTO `sys_job_log` VALUES ('1839', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:45');
INSERT INTO `sys_job_log` VALUES ('1840', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:46');
INSERT INTO `sys_job_log` VALUES ('1841', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:47');
INSERT INTO `sys_job_log` VALUES ('1842', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:48');
INSERT INTO `sys_job_log` VALUES ('1843', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:49');
INSERT INTO `sys_job_log` VALUES ('1844', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:50');
INSERT INTO `sys_job_log` VALUES ('1845', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:51');
INSERT INTO `sys_job_log` VALUES ('1846', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:52');
INSERT INTO `sys_job_log` VALUES ('1847', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:53');
INSERT INTO `sys_job_log` VALUES ('1848', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:54');
INSERT INTO `sys_job_log` VALUES ('1849', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:55');
INSERT INTO `sys_job_log` VALUES ('1850', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:56');
INSERT INTO `sys_job_log` VALUES ('1851', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:57');
INSERT INTO `sys_job_log` VALUES ('1852', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:58');
INSERT INTO `sys_job_log` VALUES ('1853', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:32:59');
INSERT INTO `sys_job_log` VALUES ('1854', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:00');
INSERT INTO `sys_job_log` VALUES ('1855', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:01');
INSERT INTO `sys_job_log` VALUES ('1856', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:02');
INSERT INTO `sys_job_log` VALUES ('1857', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:03');
INSERT INTO `sys_job_log` VALUES ('1858', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:04');
INSERT INTO `sys_job_log` VALUES ('1859', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:05');
INSERT INTO `sys_job_log` VALUES ('1860', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:06');
INSERT INTO `sys_job_log` VALUES ('1861', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:07');
INSERT INTO `sys_job_log` VALUES ('1862', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:08');
INSERT INTO `sys_job_log` VALUES ('1863', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:09');
INSERT INTO `sys_job_log` VALUES ('1864', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:10');
INSERT INTO `sys_job_log` VALUES ('1865', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:11');
INSERT INTO `sys_job_log` VALUES ('1866', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:12');
INSERT INTO `sys_job_log` VALUES ('1867', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:13');
INSERT INTO `sys_job_log` VALUES ('1868', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:14');
INSERT INTO `sys_job_log` VALUES ('1869', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:15');
INSERT INTO `sys_job_log` VALUES ('1870', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:16');
INSERT INTO `sys_job_log` VALUES ('1871', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:17');
INSERT INTO `sys_job_log` VALUES ('1872', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:18');
INSERT INTO `sys_job_log` VALUES ('1873', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:19');
INSERT INTO `sys_job_log` VALUES ('1874', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:20');
INSERT INTO `sys_job_log` VALUES ('1875', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:21');
INSERT INTO `sys_job_log` VALUES ('1876', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:22');
INSERT INTO `sys_job_log` VALUES ('1877', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:23');
INSERT INTO `sys_job_log` VALUES ('1878', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:24');
INSERT INTO `sys_job_log` VALUES ('1879', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:25');
INSERT INTO `sys_job_log` VALUES ('1880', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:26');
INSERT INTO `sys_job_log` VALUES ('1881', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:27');
INSERT INTO `sys_job_log` VALUES ('1882', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:28');
INSERT INTO `sys_job_log` VALUES ('1883', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:29');
INSERT INTO `sys_job_log` VALUES ('1884', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:30');
INSERT INTO `sys_job_log` VALUES ('1885', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:31');
INSERT INTO `sys_job_log` VALUES ('1886', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:32');
INSERT INTO `sys_job_log` VALUES ('1887', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:33');
INSERT INTO `sys_job_log` VALUES ('1888', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:34');
INSERT INTO `sys_job_log` VALUES ('1889', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:35');
INSERT INTO `sys_job_log` VALUES ('1890', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:36');
INSERT INTO `sys_job_log` VALUES ('1891', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:37');
INSERT INTO `sys_job_log` VALUES ('1892', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:38');
INSERT INTO `sys_job_log` VALUES ('1893', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:39');
INSERT INTO `sys_job_log` VALUES ('1894', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:40');
INSERT INTO `sys_job_log` VALUES ('1895', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:41');
INSERT INTO `sys_job_log` VALUES ('1896', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:42');
INSERT INTO `sys_job_log` VALUES ('1897', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:43');
INSERT INTO `sys_job_log` VALUES ('1898', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:44');
INSERT INTO `sys_job_log` VALUES ('1899', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:45');
INSERT INTO `sys_job_log` VALUES ('1900', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:46');
INSERT INTO `sys_job_log` VALUES ('1901', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:47');
INSERT INTO `sys_job_log` VALUES ('1902', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:48');
INSERT INTO `sys_job_log` VALUES ('1903', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:49');
INSERT INTO `sys_job_log` VALUES ('1904', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:50');
INSERT INTO `sys_job_log` VALUES ('1905', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:51');
INSERT INTO `sys_job_log` VALUES ('1906', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:52');
INSERT INTO `sys_job_log` VALUES ('1907', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:53');
INSERT INTO `sys_job_log` VALUES ('1908', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:54');
INSERT INTO `sys_job_log` VALUES ('1909', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:55');
INSERT INTO `sys_job_log` VALUES ('1910', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:56');
INSERT INTO `sys_job_log` VALUES ('1911', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:57');
INSERT INTO `sys_job_log` VALUES ('1912', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:58');
INSERT INTO `sys_job_log` VALUES ('1913', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:33:59');
INSERT INTO `sys_job_log` VALUES ('1914', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:00');
INSERT INTO `sys_job_log` VALUES ('1915', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:01');
INSERT INTO `sys_job_log` VALUES ('1916', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:02');
INSERT INTO `sys_job_log` VALUES ('1917', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:03');
INSERT INTO `sys_job_log` VALUES ('1918', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:04');
INSERT INTO `sys_job_log` VALUES ('1919', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:05');
INSERT INTO `sys_job_log` VALUES ('1920', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:06');
INSERT INTO `sys_job_log` VALUES ('1921', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:07');
INSERT INTO `sys_job_log` VALUES ('1922', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:08');
INSERT INTO `sys_job_log` VALUES ('1923', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:09');
INSERT INTO `sys_job_log` VALUES ('1924', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:10');
INSERT INTO `sys_job_log` VALUES ('1925', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:11');
INSERT INTO `sys_job_log` VALUES ('1926', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:12');
INSERT INTO `sys_job_log` VALUES ('1927', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:13');
INSERT INTO `sys_job_log` VALUES ('1928', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:14');
INSERT INTO `sys_job_log` VALUES ('1929', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:15');
INSERT INTO `sys_job_log` VALUES ('1930', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:16');
INSERT INTO `sys_job_log` VALUES ('1931', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:17');
INSERT INTO `sys_job_log` VALUES ('1932', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:18');
INSERT INTO `sys_job_log` VALUES ('1933', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:19');
INSERT INTO `sys_job_log` VALUES ('1934', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:20');
INSERT INTO `sys_job_log` VALUES ('1935', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:21');
INSERT INTO `sys_job_log` VALUES ('1936', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:22');
INSERT INTO `sys_job_log` VALUES ('1937', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:23');
INSERT INTO `sys_job_log` VALUES ('1938', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:24');
INSERT INTO `sys_job_log` VALUES ('1939', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:25');
INSERT INTO `sys_job_log` VALUES ('1940', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:26');
INSERT INTO `sys_job_log` VALUES ('1941', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:27');
INSERT INTO `sys_job_log` VALUES ('1942', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:28');
INSERT INTO `sys_job_log` VALUES ('1943', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:29');
INSERT INTO `sys_job_log` VALUES ('1944', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:30');
INSERT INTO `sys_job_log` VALUES ('1945', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:31');
INSERT INTO `sys_job_log` VALUES ('1946', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:32');
INSERT INTO `sys_job_log` VALUES ('1947', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:33');
INSERT INTO `sys_job_log` VALUES ('1948', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:34');
INSERT INTO `sys_job_log` VALUES ('1949', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:35');
INSERT INTO `sys_job_log` VALUES ('1950', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:36');
INSERT INTO `sys_job_log` VALUES ('1951', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:37');
INSERT INTO `sys_job_log` VALUES ('1952', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:38');
INSERT INTO `sys_job_log` VALUES ('1953', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:39');
INSERT INTO `sys_job_log` VALUES ('1954', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:40');
INSERT INTO `sys_job_log` VALUES ('1955', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:41');
INSERT INTO `sys_job_log` VALUES ('1956', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:42');
INSERT INTO `sys_job_log` VALUES ('1957', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:43');
INSERT INTO `sys_job_log` VALUES ('1958', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:44');
INSERT INTO `sys_job_log` VALUES ('1959', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:45');
INSERT INTO `sys_job_log` VALUES ('1960', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:46');
INSERT INTO `sys_job_log` VALUES ('1961', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:47');
INSERT INTO `sys_job_log` VALUES ('1962', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:48');
INSERT INTO `sys_job_log` VALUES ('1963', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:49');
INSERT INTO `sys_job_log` VALUES ('1964', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:50');
INSERT INTO `sys_job_log` VALUES ('1965', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:51');
INSERT INTO `sys_job_log` VALUES ('1966', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:52');
INSERT INTO `sys_job_log` VALUES ('1967', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:53');
INSERT INTO `sys_job_log` VALUES ('1968', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:54');
INSERT INTO `sys_job_log` VALUES ('1969', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:55');
INSERT INTO `sys_job_log` VALUES ('1970', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:56');
INSERT INTO `sys_job_log` VALUES ('1971', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:57');
INSERT INTO `sys_job_log` VALUES ('1972', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:58');
INSERT INTO `sys_job_log` VALUES ('1973', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:34:59');
INSERT INTO `sys_job_log` VALUES ('1974', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:00');
INSERT INTO `sys_job_log` VALUES ('1975', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:01');
INSERT INTO `sys_job_log` VALUES ('1976', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:02');
INSERT INTO `sys_job_log` VALUES ('1977', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:03');
INSERT INTO `sys_job_log` VALUES ('1978', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:04');
INSERT INTO `sys_job_log` VALUES ('1979', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:05');
INSERT INTO `sys_job_log` VALUES ('1980', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:06');
INSERT INTO `sys_job_log` VALUES ('1981', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:07');
INSERT INTO `sys_job_log` VALUES ('1982', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:08');
INSERT INTO `sys_job_log` VALUES ('1983', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:09');
INSERT INTO `sys_job_log` VALUES ('1984', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:10');
INSERT INTO `sys_job_log` VALUES ('1985', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:11');
INSERT INTO `sys_job_log` VALUES ('1986', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:12');
INSERT INTO `sys_job_log` VALUES ('1987', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:13');
INSERT INTO `sys_job_log` VALUES ('1988', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:14');
INSERT INTO `sys_job_log` VALUES ('1989', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:15');
INSERT INTO `sys_job_log` VALUES ('1990', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:16');
INSERT INTO `sys_job_log` VALUES ('1991', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:17');
INSERT INTO `sys_job_log` VALUES ('1992', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:18');
INSERT INTO `sys_job_log` VALUES ('1993', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:19');
INSERT INTO `sys_job_log` VALUES ('1994', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:20');
INSERT INTO `sys_job_log` VALUES ('1995', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:21');
INSERT INTO `sys_job_log` VALUES ('1996', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:22');
INSERT INTO `sys_job_log` VALUES ('1997', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:23');
INSERT INTO `sys_job_log` VALUES ('1998', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:24');
INSERT INTO `sys_job_log` VALUES ('1999', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:25');
INSERT INTO `sys_job_log` VALUES ('2000', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:26');
INSERT INTO `sys_job_log` VALUES ('2001', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:27');
INSERT INTO `sys_job_log` VALUES ('2002', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:28');
INSERT INTO `sys_job_log` VALUES ('2003', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:29');
INSERT INTO `sys_job_log` VALUES ('2004', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:30');
INSERT INTO `sys_job_log` VALUES ('2005', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:31');
INSERT INTO `sys_job_log` VALUES ('2006', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:32');
INSERT INTO `sys_job_log` VALUES ('2007', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:33');
INSERT INTO `sys_job_log` VALUES ('2008', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:34');
INSERT INTO `sys_job_log` VALUES ('2009', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:35');
INSERT INTO `sys_job_log` VALUES ('2010', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:36');
INSERT INTO `sys_job_log` VALUES ('2011', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:37');
INSERT INTO `sys_job_log` VALUES ('2012', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:38');
INSERT INTO `sys_job_log` VALUES ('2013', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:39');
INSERT INTO `sys_job_log` VALUES ('2014', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:40');
INSERT INTO `sys_job_log` VALUES ('2015', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:41');
INSERT INTO `sys_job_log` VALUES ('2016', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:42');
INSERT INTO `sys_job_log` VALUES ('2017', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:43');
INSERT INTO `sys_job_log` VALUES ('2018', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:44');
INSERT INTO `sys_job_log` VALUES ('2019', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:45');
INSERT INTO `sys_job_log` VALUES ('2020', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:46');
INSERT INTO `sys_job_log` VALUES ('2021', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:47');
INSERT INTO `sys_job_log` VALUES ('2022', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:48');
INSERT INTO `sys_job_log` VALUES ('2023', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:49');
INSERT INTO `sys_job_log` VALUES ('2024', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:50');
INSERT INTO `sys_job_log` VALUES ('2025', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:51');
INSERT INTO `sys_job_log` VALUES ('2026', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:52');
INSERT INTO `sys_job_log` VALUES ('2027', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:53');
INSERT INTO `sys_job_log` VALUES ('2028', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:54');
INSERT INTO `sys_job_log` VALUES ('2029', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:55');
INSERT INTO `sys_job_log` VALUES ('2030', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:56');
INSERT INTO `sys_job_log` VALUES ('2031', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:57');
INSERT INTO `sys_job_log` VALUES ('2032', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:58');
INSERT INTO `sys_job_log` VALUES ('2033', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:35:59');
INSERT INTO `sys_job_log` VALUES ('2034', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:00');
INSERT INTO `sys_job_log` VALUES ('2035', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:01');
INSERT INTO `sys_job_log` VALUES ('2036', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:02');
INSERT INTO `sys_job_log` VALUES ('2037', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:03');
INSERT INTO `sys_job_log` VALUES ('2038', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:04');
INSERT INTO `sys_job_log` VALUES ('2039', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:05');
INSERT INTO `sys_job_log` VALUES ('2040', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:06');
INSERT INTO `sys_job_log` VALUES ('2041', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:07');
INSERT INTO `sys_job_log` VALUES ('2042', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:08');
INSERT INTO `sys_job_log` VALUES ('2043', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:09');
INSERT INTO `sys_job_log` VALUES ('2044', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:10');
INSERT INTO `sys_job_log` VALUES ('2045', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:11');
INSERT INTO `sys_job_log` VALUES ('2046', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:12');
INSERT INTO `sys_job_log` VALUES ('2047', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:13');
INSERT INTO `sys_job_log` VALUES ('2048', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:14');
INSERT INTO `sys_job_log` VALUES ('2049', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:15');
INSERT INTO `sys_job_log` VALUES ('2050', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:16');
INSERT INTO `sys_job_log` VALUES ('2051', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:17');
INSERT INTO `sys_job_log` VALUES ('2052', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:18');
INSERT INTO `sys_job_log` VALUES ('2053', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:19');
INSERT INTO `sys_job_log` VALUES ('2054', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:20');
INSERT INTO `sys_job_log` VALUES ('2055', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:21');
INSERT INTO `sys_job_log` VALUES ('2056', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:22');
INSERT INTO `sys_job_log` VALUES ('2057', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:23');
INSERT INTO `sys_job_log` VALUES ('2058', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:24');
INSERT INTO `sys_job_log` VALUES ('2059', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:25');
INSERT INTO `sys_job_log` VALUES ('2060', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:26');
INSERT INTO `sys_job_log` VALUES ('2061', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:27');
INSERT INTO `sys_job_log` VALUES ('2062', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:28');
INSERT INTO `sys_job_log` VALUES ('2063', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:29');
INSERT INTO `sys_job_log` VALUES ('2064', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:30');
INSERT INTO `sys_job_log` VALUES ('2065', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:31');
INSERT INTO `sys_job_log` VALUES ('2066', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:32');
INSERT INTO `sys_job_log` VALUES ('2067', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:33');
INSERT INTO `sys_job_log` VALUES ('2068', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:34');
INSERT INTO `sys_job_log` VALUES ('2069', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:35');
INSERT INTO `sys_job_log` VALUES ('2070', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:36');
INSERT INTO `sys_job_log` VALUES ('2071', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:37');
INSERT INTO `sys_job_log` VALUES ('2072', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:38');
INSERT INTO `sys_job_log` VALUES ('2073', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:39');
INSERT INTO `sys_job_log` VALUES ('2074', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:40');
INSERT INTO `sys_job_log` VALUES ('2075', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:41');
INSERT INTO `sys_job_log` VALUES ('2076', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:42');
INSERT INTO `sys_job_log` VALUES ('2077', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:43');
INSERT INTO `sys_job_log` VALUES ('2078', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:44');
INSERT INTO `sys_job_log` VALUES ('2079', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:45');
INSERT INTO `sys_job_log` VALUES ('2080', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:46');
INSERT INTO `sys_job_log` VALUES ('2081', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:47');
INSERT INTO `sys_job_log` VALUES ('2082', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:48');
INSERT INTO `sys_job_log` VALUES ('2083', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:49');
INSERT INTO `sys_job_log` VALUES ('2084', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:50');
INSERT INTO `sys_job_log` VALUES ('2085', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:51');
INSERT INTO `sys_job_log` VALUES ('2086', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:52');
INSERT INTO `sys_job_log` VALUES ('2087', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:53');
INSERT INTO `sys_job_log` VALUES ('2088', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:54');
INSERT INTO `sys_job_log` VALUES ('2089', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:55');
INSERT INTO `sys_job_log` VALUES ('2090', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:56');
INSERT INTO `sys_job_log` VALUES ('2091', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:57');
INSERT INTO `sys_job_log` VALUES ('2092', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:58');
INSERT INTO `sys_job_log` VALUES ('2093', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:36:59');
INSERT INTO `sys_job_log` VALUES ('2094', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:00');
INSERT INTO `sys_job_log` VALUES ('2095', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:01');
INSERT INTO `sys_job_log` VALUES ('2096', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:02');
INSERT INTO `sys_job_log` VALUES ('2097', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:03');
INSERT INTO `sys_job_log` VALUES ('2098', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:04');
INSERT INTO `sys_job_log` VALUES ('2099', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:05');
INSERT INTO `sys_job_log` VALUES ('2100', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:06');
INSERT INTO `sys_job_log` VALUES ('2101', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:07');
INSERT INTO `sys_job_log` VALUES ('2102', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:08');
INSERT INTO `sys_job_log` VALUES ('2103', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:09');
INSERT INTO `sys_job_log` VALUES ('2104', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:10');
INSERT INTO `sys_job_log` VALUES ('2105', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:11');
INSERT INTO `sys_job_log` VALUES ('2106', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:12');
INSERT INTO `sys_job_log` VALUES ('2107', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:13');
INSERT INTO `sys_job_log` VALUES ('2108', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:14');
INSERT INTO `sys_job_log` VALUES ('2109', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:15');
INSERT INTO `sys_job_log` VALUES ('2110', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:16');
INSERT INTO `sys_job_log` VALUES ('2111', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:17');
INSERT INTO `sys_job_log` VALUES ('2112', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:18');
INSERT INTO `sys_job_log` VALUES ('2113', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:19');
INSERT INTO `sys_job_log` VALUES ('2114', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:20');
INSERT INTO `sys_job_log` VALUES ('2115', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:21');
INSERT INTO `sys_job_log` VALUES ('2116', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:22');
INSERT INTO `sys_job_log` VALUES ('2117', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:23');
INSERT INTO `sys_job_log` VALUES ('2118', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:24');
INSERT INTO `sys_job_log` VALUES ('2119', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:25');
INSERT INTO `sys_job_log` VALUES ('2120', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:26');
INSERT INTO `sys_job_log` VALUES ('2121', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:27');
INSERT INTO `sys_job_log` VALUES ('2122', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:28');
INSERT INTO `sys_job_log` VALUES ('2123', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:29');
INSERT INTO `sys_job_log` VALUES ('2124', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:30');
INSERT INTO `sys_job_log` VALUES ('2125', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:31');
INSERT INTO `sys_job_log` VALUES ('2126', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:32');
INSERT INTO `sys_job_log` VALUES ('2127', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:33');
INSERT INTO `sys_job_log` VALUES ('2128', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:34');
INSERT INTO `sys_job_log` VALUES ('2129', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:35');
INSERT INTO `sys_job_log` VALUES ('2130', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:36');
INSERT INTO `sys_job_log` VALUES ('2131', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:37');
INSERT INTO `sys_job_log` VALUES ('2132', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:38');
INSERT INTO `sys_job_log` VALUES ('2133', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:39');
INSERT INTO `sys_job_log` VALUES ('2134', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:40');
INSERT INTO `sys_job_log` VALUES ('2135', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:41');
INSERT INTO `sys_job_log` VALUES ('2136', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:42');
INSERT INTO `sys_job_log` VALUES ('2137', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:43');
INSERT INTO `sys_job_log` VALUES ('2138', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:44');
INSERT INTO `sys_job_log` VALUES ('2139', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:45');
INSERT INTO `sys_job_log` VALUES ('2140', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:46');
INSERT INTO `sys_job_log` VALUES ('2141', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:47');
INSERT INTO `sys_job_log` VALUES ('2142', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:48');
INSERT INTO `sys_job_log` VALUES ('2143', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:49');
INSERT INTO `sys_job_log` VALUES ('2144', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:50');
INSERT INTO `sys_job_log` VALUES ('2145', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:51');
INSERT INTO `sys_job_log` VALUES ('2146', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:52');
INSERT INTO `sys_job_log` VALUES ('2147', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:53');
INSERT INTO `sys_job_log` VALUES ('2148', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:54');
INSERT INTO `sys_job_log` VALUES ('2149', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:55');
INSERT INTO `sys_job_log` VALUES ('2150', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:56');
INSERT INTO `sys_job_log` VALUES ('2151', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:57');
INSERT INTO `sys_job_log` VALUES ('2152', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:58');
INSERT INTO `sys_job_log` VALUES ('2153', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:37:59');
INSERT INTO `sys_job_log` VALUES ('2154', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:00');
INSERT INTO `sys_job_log` VALUES ('2155', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:01');
INSERT INTO `sys_job_log` VALUES ('2156', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:02');
INSERT INTO `sys_job_log` VALUES ('2157', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:03');
INSERT INTO `sys_job_log` VALUES ('2158', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:04');
INSERT INTO `sys_job_log` VALUES ('2159', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:05');
INSERT INTO `sys_job_log` VALUES ('2160', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:06');
INSERT INTO `sys_job_log` VALUES ('2161', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:07');
INSERT INTO `sys_job_log` VALUES ('2162', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:08');
INSERT INTO `sys_job_log` VALUES ('2163', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:09');
INSERT INTO `sys_job_log` VALUES ('2164', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:10');
INSERT INTO `sys_job_log` VALUES ('2165', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:11');
INSERT INTO `sys_job_log` VALUES ('2166', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:12');
INSERT INTO `sys_job_log` VALUES ('2167', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:13');
INSERT INTO `sys_job_log` VALUES ('2168', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:14');
INSERT INTO `sys_job_log` VALUES ('2169', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:15');
INSERT INTO `sys_job_log` VALUES ('2170', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:16');
INSERT INTO `sys_job_log` VALUES ('2171', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:17');
INSERT INTO `sys_job_log` VALUES ('2172', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:18');
INSERT INTO `sys_job_log` VALUES ('2173', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:19');
INSERT INTO `sys_job_log` VALUES ('2174', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:20');
INSERT INTO `sys_job_log` VALUES ('2175', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:21');
INSERT INTO `sys_job_log` VALUES ('2176', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:22');
INSERT INTO `sys_job_log` VALUES ('2177', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:23');
INSERT INTO `sys_job_log` VALUES ('2178', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:24');
INSERT INTO `sys_job_log` VALUES ('2179', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:25');
INSERT INTO `sys_job_log` VALUES ('2180', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:26');
INSERT INTO `sys_job_log` VALUES ('2181', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:27');
INSERT INTO `sys_job_log` VALUES ('2182', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:28');
INSERT INTO `sys_job_log` VALUES ('2183', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:29');
INSERT INTO `sys_job_log` VALUES ('2184', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:30');
INSERT INTO `sys_job_log` VALUES ('2185', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:31');
INSERT INTO `sys_job_log` VALUES ('2186', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:32');
INSERT INTO `sys_job_log` VALUES ('2187', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:33');
INSERT INTO `sys_job_log` VALUES ('2188', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:34');
INSERT INTO `sys_job_log` VALUES ('2189', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:35');
INSERT INTO `sys_job_log` VALUES ('2190', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:36');
INSERT INTO `sys_job_log` VALUES ('2191', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:37');
INSERT INTO `sys_job_log` VALUES ('2192', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:38');
INSERT INTO `sys_job_log` VALUES ('2193', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:39');
INSERT INTO `sys_job_log` VALUES ('2194', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:40');
INSERT INTO `sys_job_log` VALUES ('2195', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:41');
INSERT INTO `sys_job_log` VALUES ('2196', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:42');
INSERT INTO `sys_job_log` VALUES ('2197', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:43');
INSERT INTO `sys_job_log` VALUES ('2198', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:44');
INSERT INTO `sys_job_log` VALUES ('2199', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:45');
INSERT INTO `sys_job_log` VALUES ('2200', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:46');
INSERT INTO `sys_job_log` VALUES ('2201', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:47');
INSERT INTO `sys_job_log` VALUES ('2202', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:48');
INSERT INTO `sys_job_log` VALUES ('2203', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:49');
INSERT INTO `sys_job_log` VALUES ('2204', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:50');
INSERT INTO `sys_job_log` VALUES ('2205', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:51');
INSERT INTO `sys_job_log` VALUES ('2206', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:52');
INSERT INTO `sys_job_log` VALUES ('2207', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:53');
INSERT INTO `sys_job_log` VALUES ('2208', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:54');
INSERT INTO `sys_job_log` VALUES ('2209', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:55');
INSERT INTO `sys_job_log` VALUES ('2210', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:56');
INSERT INTO `sys_job_log` VALUES ('2211', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:57');
INSERT INTO `sys_job_log` VALUES ('2212', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:58');
INSERT INTO `sys_job_log` VALUES ('2213', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:38:59');
INSERT INTO `sys_job_log` VALUES ('2214', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:00');
INSERT INTO `sys_job_log` VALUES ('2215', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:01');
INSERT INTO `sys_job_log` VALUES ('2216', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:02');
INSERT INTO `sys_job_log` VALUES ('2217', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:03');
INSERT INTO `sys_job_log` VALUES ('2218', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:04');
INSERT INTO `sys_job_log` VALUES ('2219', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:05');
INSERT INTO `sys_job_log` VALUES ('2220', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:06');
INSERT INTO `sys_job_log` VALUES ('2221', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:07');
INSERT INTO `sys_job_log` VALUES ('2222', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:08');
INSERT INTO `sys_job_log` VALUES ('2223', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:09');
INSERT INTO `sys_job_log` VALUES ('2224', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:10');
INSERT INTO `sys_job_log` VALUES ('2225', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:11');
INSERT INTO `sys_job_log` VALUES ('2226', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:12');
INSERT INTO `sys_job_log` VALUES ('2227', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:13');
INSERT INTO `sys_job_log` VALUES ('2228', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:14');
INSERT INTO `sys_job_log` VALUES ('2229', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:15');
INSERT INTO `sys_job_log` VALUES ('2230', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:16');
INSERT INTO `sys_job_log` VALUES ('2231', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:17');
INSERT INTO `sys_job_log` VALUES ('2232', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:18');
INSERT INTO `sys_job_log` VALUES ('2233', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:19');
INSERT INTO `sys_job_log` VALUES ('2234', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:20');
INSERT INTO `sys_job_log` VALUES ('2235', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:21');
INSERT INTO `sys_job_log` VALUES ('2236', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:22');
INSERT INTO `sys_job_log` VALUES ('2237', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:23');
INSERT INTO `sys_job_log` VALUES ('2238', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:24');
INSERT INTO `sys_job_log` VALUES ('2239', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:25');
INSERT INTO `sys_job_log` VALUES ('2240', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:26');
INSERT INTO `sys_job_log` VALUES ('2241', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:27');
INSERT INTO `sys_job_log` VALUES ('2242', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:28');
INSERT INTO `sys_job_log` VALUES ('2243', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:29');
INSERT INTO `sys_job_log` VALUES ('2244', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:30');
INSERT INTO `sys_job_log` VALUES ('2245', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:31');
INSERT INTO `sys_job_log` VALUES ('2246', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:32');
INSERT INTO `sys_job_log` VALUES ('2247', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:33');
INSERT INTO `sys_job_log` VALUES ('2248', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:34');
INSERT INTO `sys_job_log` VALUES ('2249', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:35');
INSERT INTO `sys_job_log` VALUES ('2250', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:36');
INSERT INTO `sys_job_log` VALUES ('2251', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:37');
INSERT INTO `sys_job_log` VALUES ('2252', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:38');
INSERT INTO `sys_job_log` VALUES ('2253', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:39');
INSERT INTO `sys_job_log` VALUES ('2254', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:40');
INSERT INTO `sys_job_log` VALUES ('2255', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:41');
INSERT INTO `sys_job_log` VALUES ('2256', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:42');
INSERT INTO `sys_job_log` VALUES ('2257', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:43');
INSERT INTO `sys_job_log` VALUES ('2258', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:44');
INSERT INTO `sys_job_log` VALUES ('2259', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:45');
INSERT INTO `sys_job_log` VALUES ('2260', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:46');
INSERT INTO `sys_job_log` VALUES ('2261', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:47');
INSERT INTO `sys_job_log` VALUES ('2262', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:48');
INSERT INTO `sys_job_log` VALUES ('2263', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:49');
INSERT INTO `sys_job_log` VALUES ('2264', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:50');
INSERT INTO `sys_job_log` VALUES ('2265', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:51');
INSERT INTO `sys_job_log` VALUES ('2266', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:52');
INSERT INTO `sys_job_log` VALUES ('2267', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:53');
INSERT INTO `sys_job_log` VALUES ('2268', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:54');
INSERT INTO `sys_job_log` VALUES ('2269', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:55');
INSERT INTO `sys_job_log` VALUES ('2270', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:56');
INSERT INTO `sys_job_log` VALUES ('2271', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:57');
INSERT INTO `sys_job_log` VALUES ('2272', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:58');
INSERT INTO `sys_job_log` VALUES ('2273', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:39:59');
INSERT INTO `sys_job_log` VALUES ('2274', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:00');
INSERT INTO `sys_job_log` VALUES ('2275', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:01');
INSERT INTO `sys_job_log` VALUES ('2276', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:02');
INSERT INTO `sys_job_log` VALUES ('2277', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:03');
INSERT INTO `sys_job_log` VALUES ('2278', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:04');
INSERT INTO `sys_job_log` VALUES ('2279', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:05');
INSERT INTO `sys_job_log` VALUES ('2280', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:06');
INSERT INTO `sys_job_log` VALUES ('2281', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:07');
INSERT INTO `sys_job_log` VALUES ('2282', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:08');
INSERT INTO `sys_job_log` VALUES ('2283', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:09');
INSERT INTO `sys_job_log` VALUES ('2284', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:10');
INSERT INTO `sys_job_log` VALUES ('2285', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:11');
INSERT INTO `sys_job_log` VALUES ('2286', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:12');
INSERT INTO `sys_job_log` VALUES ('2287', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:13');
INSERT INTO `sys_job_log` VALUES ('2288', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:14');
INSERT INTO `sys_job_log` VALUES ('2289', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:15');
INSERT INTO `sys_job_log` VALUES ('2290', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:16');
INSERT INTO `sys_job_log` VALUES ('2291', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:17');
INSERT INTO `sys_job_log` VALUES ('2292', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:18');
INSERT INTO `sys_job_log` VALUES ('2293', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:19');
INSERT INTO `sys_job_log` VALUES ('2294', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:20');
INSERT INTO `sys_job_log` VALUES ('2295', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:21');
INSERT INTO `sys_job_log` VALUES ('2296', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:22');
INSERT INTO `sys_job_log` VALUES ('2297', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:23');
INSERT INTO `sys_job_log` VALUES ('2298', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:24');
INSERT INTO `sys_job_log` VALUES ('2299', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:25');
INSERT INTO `sys_job_log` VALUES ('2300', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:26');
INSERT INTO `sys_job_log` VALUES ('2301', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:27');
INSERT INTO `sys_job_log` VALUES ('2302', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:28');
INSERT INTO `sys_job_log` VALUES ('2303', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:29');
INSERT INTO `sys_job_log` VALUES ('2304', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:30');
INSERT INTO `sys_job_log` VALUES ('2305', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:31');
INSERT INTO `sys_job_log` VALUES ('2306', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:32');
INSERT INTO `sys_job_log` VALUES ('2307', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:33');
INSERT INTO `sys_job_log` VALUES ('2308', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:34');
INSERT INTO `sys_job_log` VALUES ('2309', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:35');
INSERT INTO `sys_job_log` VALUES ('2310', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:36');
INSERT INTO `sys_job_log` VALUES ('2311', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:37');
INSERT INTO `sys_job_log` VALUES ('2312', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:38');
INSERT INTO `sys_job_log` VALUES ('2313', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:39');
INSERT INTO `sys_job_log` VALUES ('2314', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:40');
INSERT INTO `sys_job_log` VALUES ('2315', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:41');
INSERT INTO `sys_job_log` VALUES ('2316', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:42');
INSERT INTO `sys_job_log` VALUES ('2317', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:43');
INSERT INTO `sys_job_log` VALUES ('2318', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:44');
INSERT INTO `sys_job_log` VALUES ('2319', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:45');
INSERT INTO `sys_job_log` VALUES ('2320', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:46');
INSERT INTO `sys_job_log` VALUES ('2321', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:47');
INSERT INTO `sys_job_log` VALUES ('2322', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:48');
INSERT INTO `sys_job_log` VALUES ('2323', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:49');
INSERT INTO `sys_job_log` VALUES ('2324', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:50');
INSERT INTO `sys_job_log` VALUES ('2325', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:51');
INSERT INTO `sys_job_log` VALUES ('2326', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:52');
INSERT INTO `sys_job_log` VALUES ('2327', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:53');
INSERT INTO `sys_job_log` VALUES ('2328', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:54');
INSERT INTO `sys_job_log` VALUES ('2329', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:55');
INSERT INTO `sys_job_log` VALUES ('2330', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:56');
INSERT INTO `sys_job_log` VALUES ('2331', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:57');
INSERT INTO `sys_job_log` VALUES ('2332', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:58');
INSERT INTO `sys_job_log` VALUES ('2333', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:40:59');
INSERT INTO `sys_job_log` VALUES ('2334', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:00');
INSERT INTO `sys_job_log` VALUES ('2335', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:01');
INSERT INTO `sys_job_log` VALUES ('2336', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:02');
INSERT INTO `sys_job_log` VALUES ('2337', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:03');
INSERT INTO `sys_job_log` VALUES ('2338', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:04');
INSERT INTO `sys_job_log` VALUES ('2339', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:05');
INSERT INTO `sys_job_log` VALUES ('2340', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:06');
INSERT INTO `sys_job_log` VALUES ('2341', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:07');
INSERT INTO `sys_job_log` VALUES ('2342', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:08');
INSERT INTO `sys_job_log` VALUES ('2343', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:09');
INSERT INTO `sys_job_log` VALUES ('2344', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:10');
INSERT INTO `sys_job_log` VALUES ('2345', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:11');
INSERT INTO `sys_job_log` VALUES ('2346', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:12');
INSERT INTO `sys_job_log` VALUES ('2347', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:13');
INSERT INTO `sys_job_log` VALUES ('2348', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:14');
INSERT INTO `sys_job_log` VALUES ('2349', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:15');
INSERT INTO `sys_job_log` VALUES ('2350', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:16');
INSERT INTO `sys_job_log` VALUES ('2351', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:17');
INSERT INTO `sys_job_log` VALUES ('2352', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:18');
INSERT INTO `sys_job_log` VALUES ('2353', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:19');
INSERT INTO `sys_job_log` VALUES ('2354', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:20');
INSERT INTO `sys_job_log` VALUES ('2355', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:21');
INSERT INTO `sys_job_log` VALUES ('2356', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:22');
INSERT INTO `sys_job_log` VALUES ('2357', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:23');
INSERT INTO `sys_job_log` VALUES ('2358', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:24');
INSERT INTO `sys_job_log` VALUES ('2359', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:25');
INSERT INTO `sys_job_log` VALUES ('2360', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:26');
INSERT INTO `sys_job_log` VALUES ('2361', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:27');
INSERT INTO `sys_job_log` VALUES ('2362', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:28');
INSERT INTO `sys_job_log` VALUES ('2363', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:29');
INSERT INTO `sys_job_log` VALUES ('2364', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:30');
INSERT INTO `sys_job_log` VALUES ('2365', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:31');
INSERT INTO `sys_job_log` VALUES ('2366', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:32');
INSERT INTO `sys_job_log` VALUES ('2367', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:33');
INSERT INTO `sys_job_log` VALUES ('2368', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:34');
INSERT INTO `sys_job_log` VALUES ('2369', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:35');
INSERT INTO `sys_job_log` VALUES ('2370', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:36');
INSERT INTO `sys_job_log` VALUES ('2371', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:37');
INSERT INTO `sys_job_log` VALUES ('2372', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:38');
INSERT INTO `sys_job_log` VALUES ('2373', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:39');
INSERT INTO `sys_job_log` VALUES ('2374', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:40');
INSERT INTO `sys_job_log` VALUES ('2375', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:41');
INSERT INTO `sys_job_log` VALUES ('2376', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:42');
INSERT INTO `sys_job_log` VALUES ('2377', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:43');
INSERT INTO `sys_job_log` VALUES ('2378', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:44');
INSERT INTO `sys_job_log` VALUES ('2379', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:45');
INSERT INTO `sys_job_log` VALUES ('2380', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:46');
INSERT INTO `sys_job_log` VALUES ('2381', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:47');
INSERT INTO `sys_job_log` VALUES ('2382', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:48');
INSERT INTO `sys_job_log` VALUES ('2383', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:49');
INSERT INTO `sys_job_log` VALUES ('2384', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:50');
INSERT INTO `sys_job_log` VALUES ('2385', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:51');
INSERT INTO `sys_job_log` VALUES ('2386', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:52');
INSERT INTO `sys_job_log` VALUES ('2387', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:53');
INSERT INTO `sys_job_log` VALUES ('2388', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:54');
INSERT INTO `sys_job_log` VALUES ('2389', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:55');
INSERT INTO `sys_job_log` VALUES ('2390', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:56');
INSERT INTO `sys_job_log` VALUES ('2391', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:57');
INSERT INTO `sys_job_log` VALUES ('2392', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:58');
INSERT INTO `sys_job_log` VALUES ('2393', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:41:59');
INSERT INTO `sys_job_log` VALUES ('2394', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:00');
INSERT INTO `sys_job_log` VALUES ('2395', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:01');
INSERT INTO `sys_job_log` VALUES ('2396', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:02');
INSERT INTO `sys_job_log` VALUES ('2397', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:03');
INSERT INTO `sys_job_log` VALUES ('2398', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:04');
INSERT INTO `sys_job_log` VALUES ('2399', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:05');
INSERT INTO `sys_job_log` VALUES ('2400', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:06');
INSERT INTO `sys_job_log` VALUES ('2401', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:07');
INSERT INTO `sys_job_log` VALUES ('2402', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:08');
INSERT INTO `sys_job_log` VALUES ('2403', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:09');
INSERT INTO `sys_job_log` VALUES ('2404', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:10');
INSERT INTO `sys_job_log` VALUES ('2405', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:11');
INSERT INTO `sys_job_log` VALUES ('2406', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:12');
INSERT INTO `sys_job_log` VALUES ('2407', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:13');
INSERT INTO `sys_job_log` VALUES ('2408', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:14');
INSERT INTO `sys_job_log` VALUES ('2409', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:15');
INSERT INTO `sys_job_log` VALUES ('2410', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:16');
INSERT INTO `sys_job_log` VALUES ('2411', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:17');
INSERT INTO `sys_job_log` VALUES ('2412', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:18');
INSERT INTO `sys_job_log` VALUES ('2413', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:19');
INSERT INTO `sys_job_log` VALUES ('2414', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:20');
INSERT INTO `sys_job_log` VALUES ('2415', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:21');
INSERT INTO `sys_job_log` VALUES ('2416', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:22');
INSERT INTO `sys_job_log` VALUES ('2417', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:23');
INSERT INTO `sys_job_log` VALUES ('2418', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:24');
INSERT INTO `sys_job_log` VALUES ('2419', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:25');
INSERT INTO `sys_job_log` VALUES ('2420', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:26');
INSERT INTO `sys_job_log` VALUES ('2421', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:27');
INSERT INTO `sys_job_log` VALUES ('2422', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:28');
INSERT INTO `sys_job_log` VALUES ('2423', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:29');
INSERT INTO `sys_job_log` VALUES ('2424', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:30');
INSERT INTO `sys_job_log` VALUES ('2425', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:31');
INSERT INTO `sys_job_log` VALUES ('2426', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:32');
INSERT INTO `sys_job_log` VALUES ('2427', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:33');
INSERT INTO `sys_job_log` VALUES ('2428', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:34');
INSERT INTO `sys_job_log` VALUES ('2429', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:35');
INSERT INTO `sys_job_log` VALUES ('2430', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:36');
INSERT INTO `sys_job_log` VALUES ('2431', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:37');
INSERT INTO `sys_job_log` VALUES ('2432', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:38');
INSERT INTO `sys_job_log` VALUES ('2433', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:39');
INSERT INTO `sys_job_log` VALUES ('2434', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:40');
INSERT INTO `sys_job_log` VALUES ('2435', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:41');
INSERT INTO `sys_job_log` VALUES ('2436', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:42');
INSERT INTO `sys_job_log` VALUES ('2437', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:43');
INSERT INTO `sys_job_log` VALUES ('2438', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:44');
INSERT INTO `sys_job_log` VALUES ('2439', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:45');
INSERT INTO `sys_job_log` VALUES ('2440', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:46');
INSERT INTO `sys_job_log` VALUES ('2441', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:47');
INSERT INTO `sys_job_log` VALUES ('2442', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:48');
INSERT INTO `sys_job_log` VALUES ('2443', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:49');
INSERT INTO `sys_job_log` VALUES ('2444', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:50');
INSERT INTO `sys_job_log` VALUES ('2445', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:51');
INSERT INTO `sys_job_log` VALUES ('2446', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:52');
INSERT INTO `sys_job_log` VALUES ('2447', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:53');
INSERT INTO `sys_job_log` VALUES ('2448', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:54');
INSERT INTO `sys_job_log` VALUES ('2449', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:55');
INSERT INTO `sys_job_log` VALUES ('2450', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:56');
INSERT INTO `sys_job_log` VALUES ('2451', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:57');
INSERT INTO `sys_job_log` VALUES ('2452', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:58');
INSERT INTO `sys_job_log` VALUES ('2453', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:42:59');
INSERT INTO `sys_job_log` VALUES ('2454', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:00');
INSERT INTO `sys_job_log` VALUES ('2455', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:01');
INSERT INTO `sys_job_log` VALUES ('2456', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:02');
INSERT INTO `sys_job_log` VALUES ('2457', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:03');
INSERT INTO `sys_job_log` VALUES ('2458', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:04');
INSERT INTO `sys_job_log` VALUES ('2459', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:05');
INSERT INTO `sys_job_log` VALUES ('2460', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:06');
INSERT INTO `sys_job_log` VALUES ('2461', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:07');
INSERT INTO `sys_job_log` VALUES ('2462', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:08');
INSERT INTO `sys_job_log` VALUES ('2463', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:09');
INSERT INTO `sys_job_log` VALUES ('2464', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:10');
INSERT INTO `sys_job_log` VALUES ('2465', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:11');
INSERT INTO `sys_job_log` VALUES ('2466', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:12');
INSERT INTO `sys_job_log` VALUES ('2467', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:13');
INSERT INTO `sys_job_log` VALUES ('2468', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:14');
INSERT INTO `sys_job_log` VALUES ('2469', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:15');
INSERT INTO `sys_job_log` VALUES ('2470', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:16');
INSERT INTO `sys_job_log` VALUES ('2471', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:17');
INSERT INTO `sys_job_log` VALUES ('2472', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:18');
INSERT INTO `sys_job_log` VALUES ('2473', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:19');
INSERT INTO `sys_job_log` VALUES ('2474', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:20');
INSERT INTO `sys_job_log` VALUES ('2475', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:21');
INSERT INTO `sys_job_log` VALUES ('2476', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:22');
INSERT INTO `sys_job_log` VALUES ('2477', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:23');
INSERT INTO `sys_job_log` VALUES ('2478', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:24');
INSERT INTO `sys_job_log` VALUES ('2479', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:25');
INSERT INTO `sys_job_log` VALUES ('2480', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:26');
INSERT INTO `sys_job_log` VALUES ('2481', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:27');
INSERT INTO `sys_job_log` VALUES ('2482', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:28');
INSERT INTO `sys_job_log` VALUES ('2483', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:29');
INSERT INTO `sys_job_log` VALUES ('2484', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:30');
INSERT INTO `sys_job_log` VALUES ('2485', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:31');
INSERT INTO `sys_job_log` VALUES ('2486', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:32');
INSERT INTO `sys_job_log` VALUES ('2487', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:33');
INSERT INTO `sys_job_log` VALUES ('2488', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:34');
INSERT INTO `sys_job_log` VALUES ('2489', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:35');
INSERT INTO `sys_job_log` VALUES ('2490', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:36');
INSERT INTO `sys_job_log` VALUES ('2491', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:37');
INSERT INTO `sys_job_log` VALUES ('2492', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:38');
INSERT INTO `sys_job_log` VALUES ('2493', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:39');
INSERT INTO `sys_job_log` VALUES ('2494', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:40');
INSERT INTO `sys_job_log` VALUES ('2495', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:41');
INSERT INTO `sys_job_log` VALUES ('2496', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:42');
INSERT INTO `sys_job_log` VALUES ('2497', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:43');
INSERT INTO `sys_job_log` VALUES ('2498', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:44');
INSERT INTO `sys_job_log` VALUES ('2499', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:45');
INSERT INTO `sys_job_log` VALUES ('2500', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:46');
INSERT INTO `sys_job_log` VALUES ('2501', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:47');
INSERT INTO `sys_job_log` VALUES ('2502', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:48');
INSERT INTO `sys_job_log` VALUES ('2503', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:49');
INSERT INTO `sys_job_log` VALUES ('2504', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:50');
INSERT INTO `sys_job_log` VALUES ('2505', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:51');
INSERT INTO `sys_job_log` VALUES ('2506', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:52');
INSERT INTO `sys_job_log` VALUES ('2507', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:53');
INSERT INTO `sys_job_log` VALUES ('2508', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:54');
INSERT INTO `sys_job_log` VALUES ('2509', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:55');
INSERT INTO `sys_job_log` VALUES ('2510', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:56');
INSERT INTO `sys_job_log` VALUES ('2511', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:57');
INSERT INTO `sys_job_log` VALUES ('2512', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:58');
INSERT INTO `sys_job_log` VALUES ('2513', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:43:59');
INSERT INTO `sys_job_log` VALUES ('2514', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:00');
INSERT INTO `sys_job_log` VALUES ('2515', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:01');
INSERT INTO `sys_job_log` VALUES ('2516', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:02');
INSERT INTO `sys_job_log` VALUES ('2517', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:03');
INSERT INTO `sys_job_log` VALUES ('2518', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:04');
INSERT INTO `sys_job_log` VALUES ('2519', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:05');
INSERT INTO `sys_job_log` VALUES ('2520', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:06');
INSERT INTO `sys_job_log` VALUES ('2521', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:07');
INSERT INTO `sys_job_log` VALUES ('2522', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:08');
INSERT INTO `sys_job_log` VALUES ('2523', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:09');
INSERT INTO `sys_job_log` VALUES ('2524', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:10');
INSERT INTO `sys_job_log` VALUES ('2525', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:11');
INSERT INTO `sys_job_log` VALUES ('2526', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:12');
INSERT INTO `sys_job_log` VALUES ('2527', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:13');
INSERT INTO `sys_job_log` VALUES ('2528', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:14');
INSERT INTO `sys_job_log` VALUES ('2529', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:15');
INSERT INTO `sys_job_log` VALUES ('2530', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:16');
INSERT INTO `sys_job_log` VALUES ('2531', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:17');
INSERT INTO `sys_job_log` VALUES ('2532', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:18');
INSERT INTO `sys_job_log` VALUES ('2533', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:19');
INSERT INTO `sys_job_log` VALUES ('2534', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:20');
INSERT INTO `sys_job_log` VALUES ('2535', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:21');
INSERT INTO `sys_job_log` VALUES ('2536', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:22');
INSERT INTO `sys_job_log` VALUES ('2537', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:23');
INSERT INTO `sys_job_log` VALUES ('2538', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:24');
INSERT INTO `sys_job_log` VALUES ('2539', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:25');
INSERT INTO `sys_job_log` VALUES ('2540', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:26');
INSERT INTO `sys_job_log` VALUES ('2541', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:27');
INSERT INTO `sys_job_log` VALUES ('2542', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:28');
INSERT INTO `sys_job_log` VALUES ('2543', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:29');
INSERT INTO `sys_job_log` VALUES ('2544', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:30');
INSERT INTO `sys_job_log` VALUES ('2545', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:31');
INSERT INTO `sys_job_log` VALUES ('2546', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:32');
INSERT INTO `sys_job_log` VALUES ('2547', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:33');
INSERT INTO `sys_job_log` VALUES ('2548', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:34');
INSERT INTO `sys_job_log` VALUES ('2549', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:35');
INSERT INTO `sys_job_log` VALUES ('2550', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:36');
INSERT INTO `sys_job_log` VALUES ('2551', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:37');
INSERT INTO `sys_job_log` VALUES ('2552', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:38');
INSERT INTO `sys_job_log` VALUES ('2553', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:39');
INSERT INTO `sys_job_log` VALUES ('2554', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:40');
INSERT INTO `sys_job_log` VALUES ('2555', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:41');
INSERT INTO `sys_job_log` VALUES ('2556', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:42');
INSERT INTO `sys_job_log` VALUES ('2557', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:43');
INSERT INTO `sys_job_log` VALUES ('2558', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:44');
INSERT INTO `sys_job_log` VALUES ('2559', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:45');
INSERT INTO `sys_job_log` VALUES ('2560', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:46');
INSERT INTO `sys_job_log` VALUES ('2561', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:47');
INSERT INTO `sys_job_log` VALUES ('2562', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:48');
INSERT INTO `sys_job_log` VALUES ('2563', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:49');
INSERT INTO `sys_job_log` VALUES ('2564', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:50');
INSERT INTO `sys_job_log` VALUES ('2565', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:51');
INSERT INTO `sys_job_log` VALUES ('2566', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:52');
INSERT INTO `sys_job_log` VALUES ('2567', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:53');
INSERT INTO `sys_job_log` VALUES ('2568', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:54');
INSERT INTO `sys_job_log` VALUES ('2569', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:55');
INSERT INTO `sys_job_log` VALUES ('2570', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:56');
INSERT INTO `sys_job_log` VALUES ('2571', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:57');
INSERT INTO `sys_job_log` VALUES ('2572', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:58');
INSERT INTO `sys_job_log` VALUES ('2573', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:44:59');
INSERT INTO `sys_job_log` VALUES ('2574', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:00');
INSERT INTO `sys_job_log` VALUES ('2575', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:01');
INSERT INTO `sys_job_log` VALUES ('2576', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:02');
INSERT INTO `sys_job_log` VALUES ('2577', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:03');
INSERT INTO `sys_job_log` VALUES ('2578', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:04');
INSERT INTO `sys_job_log` VALUES ('2579', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:05');
INSERT INTO `sys_job_log` VALUES ('2580', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:06');
INSERT INTO `sys_job_log` VALUES ('2581', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:07');
INSERT INTO `sys_job_log` VALUES ('2582', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:08');
INSERT INTO `sys_job_log` VALUES ('2583', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:09');
INSERT INTO `sys_job_log` VALUES ('2584', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:10');
INSERT INTO `sys_job_log` VALUES ('2585', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:11');
INSERT INTO `sys_job_log` VALUES ('2586', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:12');
INSERT INTO `sys_job_log` VALUES ('2587', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:13');
INSERT INTO `sys_job_log` VALUES ('2588', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:14');
INSERT INTO `sys_job_log` VALUES ('2589', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:15');
INSERT INTO `sys_job_log` VALUES ('2590', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:16');
INSERT INTO `sys_job_log` VALUES ('2591', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:17');
INSERT INTO `sys_job_log` VALUES ('2592', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:18');
INSERT INTO `sys_job_log` VALUES ('2593', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:19');
INSERT INTO `sys_job_log` VALUES ('2594', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:20');
INSERT INTO `sys_job_log` VALUES ('2595', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:21');
INSERT INTO `sys_job_log` VALUES ('2596', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:22');
INSERT INTO `sys_job_log` VALUES ('2597', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:23');
INSERT INTO `sys_job_log` VALUES ('2598', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:24');
INSERT INTO `sys_job_log` VALUES ('2599', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:25');
INSERT INTO `sys_job_log` VALUES ('2600', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:26');
INSERT INTO `sys_job_log` VALUES ('2601', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:27');
INSERT INTO `sys_job_log` VALUES ('2602', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:28');
INSERT INTO `sys_job_log` VALUES ('2603', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:29');
INSERT INTO `sys_job_log` VALUES ('2604', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:30');
INSERT INTO `sys_job_log` VALUES ('2605', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:31');
INSERT INTO `sys_job_log` VALUES ('2606', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:32');
INSERT INTO `sys_job_log` VALUES ('2607', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:33');
INSERT INTO `sys_job_log` VALUES ('2608', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:34');
INSERT INTO `sys_job_log` VALUES ('2609', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:35');
INSERT INTO `sys_job_log` VALUES ('2610', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:36');
INSERT INTO `sys_job_log` VALUES ('2611', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:37');
INSERT INTO `sys_job_log` VALUES ('2612', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:38');
INSERT INTO `sys_job_log` VALUES ('2613', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:39');
INSERT INTO `sys_job_log` VALUES ('2614', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:40');
INSERT INTO `sys_job_log` VALUES ('2615', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:41');
INSERT INTO `sys_job_log` VALUES ('2616', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:42');
INSERT INTO `sys_job_log` VALUES ('2617', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:43');
INSERT INTO `sys_job_log` VALUES ('2618', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:44');
INSERT INTO `sys_job_log` VALUES ('2619', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:45');
INSERT INTO `sys_job_log` VALUES ('2620', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:46');
INSERT INTO `sys_job_log` VALUES ('2621', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:47');
INSERT INTO `sys_job_log` VALUES ('2622', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:48');
INSERT INTO `sys_job_log` VALUES ('2623', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:49');
INSERT INTO `sys_job_log` VALUES ('2624', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:50');
INSERT INTO `sys_job_log` VALUES ('2625', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:51');
INSERT INTO `sys_job_log` VALUES ('2626', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:52');
INSERT INTO `sys_job_log` VALUES ('2627', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:53');
INSERT INTO `sys_job_log` VALUES ('2628', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:54');
INSERT INTO `sys_job_log` VALUES ('2629', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:55');
INSERT INTO `sys_job_log` VALUES ('2630', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:56');
INSERT INTO `sys_job_log` VALUES ('2631', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:57');
INSERT INTO `sys_job_log` VALUES ('2632', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:58');
INSERT INTO `sys_job_log` VALUES ('2633', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:45:59');
INSERT INTO `sys_job_log` VALUES ('2634', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:00');
INSERT INTO `sys_job_log` VALUES ('2635', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:01');
INSERT INTO `sys_job_log` VALUES ('2636', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:02');
INSERT INTO `sys_job_log` VALUES ('2637', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:03');
INSERT INTO `sys_job_log` VALUES ('2638', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:04');
INSERT INTO `sys_job_log` VALUES ('2639', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:05');
INSERT INTO `sys_job_log` VALUES ('2640', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:06');
INSERT INTO `sys_job_log` VALUES ('2641', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:07');
INSERT INTO `sys_job_log` VALUES ('2642', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:08');
INSERT INTO `sys_job_log` VALUES ('2643', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:09');
INSERT INTO `sys_job_log` VALUES ('2644', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:10');
INSERT INTO `sys_job_log` VALUES ('2645', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:11');
INSERT INTO `sys_job_log` VALUES ('2646', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:12');
INSERT INTO `sys_job_log` VALUES ('2647', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:13');
INSERT INTO `sys_job_log` VALUES ('2648', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:14');
INSERT INTO `sys_job_log` VALUES ('2649', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:15');
INSERT INTO `sys_job_log` VALUES ('2650', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:16');
INSERT INTO `sys_job_log` VALUES ('2651', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:17');
INSERT INTO `sys_job_log` VALUES ('2652', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:18');
INSERT INTO `sys_job_log` VALUES ('2653', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:19');
INSERT INTO `sys_job_log` VALUES ('2654', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:20');
INSERT INTO `sys_job_log` VALUES ('2655', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:21');
INSERT INTO `sys_job_log` VALUES ('2656', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:22');
INSERT INTO `sys_job_log` VALUES ('2657', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:23');
INSERT INTO `sys_job_log` VALUES ('2658', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:24');
INSERT INTO `sys_job_log` VALUES ('2659', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:25');
INSERT INTO `sys_job_log` VALUES ('2660', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:26');
INSERT INTO `sys_job_log` VALUES ('2661', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:27');
INSERT INTO `sys_job_log` VALUES ('2662', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:28');
INSERT INTO `sys_job_log` VALUES ('2663', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:29');
INSERT INTO `sys_job_log` VALUES ('2664', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:30');
INSERT INTO `sys_job_log` VALUES ('2665', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:46:31');
INSERT INTO `sys_job_log` VALUES ('2666', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:32');
INSERT INTO `sys_job_log` VALUES ('2667', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:33');
INSERT INTO `sys_job_log` VALUES ('2668', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:34');
INSERT INTO `sys_job_log` VALUES ('2669', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:35');
INSERT INTO `sys_job_log` VALUES ('2670', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:36');
INSERT INTO `sys_job_log` VALUES ('2671', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:37');
INSERT INTO `sys_job_log` VALUES ('2672', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:38');
INSERT INTO `sys_job_log` VALUES ('2673', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:39');
INSERT INTO `sys_job_log` VALUES ('2674', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:40');
INSERT INTO `sys_job_log` VALUES ('2675', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:41');
INSERT INTO `sys_job_log` VALUES ('2676', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:42');
INSERT INTO `sys_job_log` VALUES ('2677', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:43');
INSERT INTO `sys_job_log` VALUES ('2678', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:44');
INSERT INTO `sys_job_log` VALUES ('2679', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:45');
INSERT INTO `sys_job_log` VALUES ('2680', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:46');
INSERT INTO `sys_job_log` VALUES ('2681', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:47');
INSERT INTO `sys_job_log` VALUES ('2682', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:48');
INSERT INTO `sys_job_log` VALUES ('2683', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:49');
INSERT INTO `sys_job_log` VALUES ('2684', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:50');
INSERT INTO `sys_job_log` VALUES ('2685', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:51');
INSERT INTO `sys_job_log` VALUES ('2686', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:52');
INSERT INTO `sys_job_log` VALUES ('2687', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:53');
INSERT INTO `sys_job_log` VALUES ('2688', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:54');
INSERT INTO `sys_job_log` VALUES ('2689', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:55');
INSERT INTO `sys_job_log` VALUES ('2690', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:56');
INSERT INTO `sys_job_log` VALUES ('2691', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:57');
INSERT INTO `sys_job_log` VALUES ('2692', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:58');
INSERT INTO `sys_job_log` VALUES ('2693', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:46:59');
INSERT INTO `sys_job_log` VALUES ('2694', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:00');
INSERT INTO `sys_job_log` VALUES ('2695', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:01');
INSERT INTO `sys_job_log` VALUES ('2696', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:02');
INSERT INTO `sys_job_log` VALUES ('2697', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:03');
INSERT INTO `sys_job_log` VALUES ('2698', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:04');
INSERT INTO `sys_job_log` VALUES ('2699', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:05');
INSERT INTO `sys_job_log` VALUES ('2700', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:06');
INSERT INTO `sys_job_log` VALUES ('2701', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:07');
INSERT INTO `sys_job_log` VALUES ('2702', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:08');
INSERT INTO `sys_job_log` VALUES ('2703', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:09');
INSERT INTO `sys_job_log` VALUES ('2704', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:10');
INSERT INTO `sys_job_log` VALUES ('2705', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:11');
INSERT INTO `sys_job_log` VALUES ('2706', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:12');
INSERT INTO `sys_job_log` VALUES ('2707', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:13');
INSERT INTO `sys_job_log` VALUES ('2708', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:14');
INSERT INTO `sys_job_log` VALUES ('2709', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:15');
INSERT INTO `sys_job_log` VALUES ('2710', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:16');
INSERT INTO `sys_job_log` VALUES ('2711', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:17');
INSERT INTO `sys_job_log` VALUES ('2712', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:18');
INSERT INTO `sys_job_log` VALUES ('2713', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:19');
INSERT INTO `sys_job_log` VALUES ('2714', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:20');
INSERT INTO `sys_job_log` VALUES ('2715', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:21');
INSERT INTO `sys_job_log` VALUES ('2716', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:22');
INSERT INTO `sys_job_log` VALUES ('2717', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:23');
INSERT INTO `sys_job_log` VALUES ('2718', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:24');
INSERT INTO `sys_job_log` VALUES ('2719', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:25');
INSERT INTO `sys_job_log` VALUES ('2720', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:26');
INSERT INTO `sys_job_log` VALUES ('2721', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:27');
INSERT INTO `sys_job_log` VALUES ('2722', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:28');
INSERT INTO `sys_job_log` VALUES ('2723', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:29');
INSERT INTO `sys_job_log` VALUES ('2724', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:30');
INSERT INTO `sys_job_log` VALUES ('2725', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:31');
INSERT INTO `sys_job_log` VALUES ('2726', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:32');
INSERT INTO `sys_job_log` VALUES ('2727', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:33');
INSERT INTO `sys_job_log` VALUES ('2728', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:34');
INSERT INTO `sys_job_log` VALUES ('2729', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:35');
INSERT INTO `sys_job_log` VALUES ('2730', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:36');
INSERT INTO `sys_job_log` VALUES ('2731', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:37');
INSERT INTO `sys_job_log` VALUES ('2732', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:38');
INSERT INTO `sys_job_log` VALUES ('2733', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:39');
INSERT INTO `sys_job_log` VALUES ('2734', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:47:40');
INSERT INTO `sys_job_log` VALUES ('2735', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:41');
INSERT INTO `sys_job_log` VALUES ('2736', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:42');
INSERT INTO `sys_job_log` VALUES ('2737', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:43');
INSERT INTO `sys_job_log` VALUES ('2738', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:44');
INSERT INTO `sys_job_log` VALUES ('2739', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:45');
INSERT INTO `sys_job_log` VALUES ('2740', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:46');
INSERT INTO `sys_job_log` VALUES ('2741', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:47');
INSERT INTO `sys_job_log` VALUES ('2742', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:48');
INSERT INTO `sys_job_log` VALUES ('2743', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:49');
INSERT INTO `sys_job_log` VALUES ('2744', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:50');
INSERT INTO `sys_job_log` VALUES ('2745', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:51');
INSERT INTO `sys_job_log` VALUES ('2746', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:52');
INSERT INTO `sys_job_log` VALUES ('2747', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:53');
INSERT INTO `sys_job_log` VALUES ('2748', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:54');
INSERT INTO `sys_job_log` VALUES ('2749', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:55');
INSERT INTO `sys_job_log` VALUES ('2750', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:56');
INSERT INTO `sys_job_log` VALUES ('2751', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:57');
INSERT INTO `sys_job_log` VALUES ('2752', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:58');
INSERT INTO `sys_job_log` VALUES ('2753', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:47:59');
INSERT INTO `sys_job_log` VALUES ('2754', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:00');
INSERT INTO `sys_job_log` VALUES ('2755', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:01');
INSERT INTO `sys_job_log` VALUES ('2756', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:02');
INSERT INTO `sys_job_log` VALUES ('2757', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:03');
INSERT INTO `sys_job_log` VALUES ('2758', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:04');
INSERT INTO `sys_job_log` VALUES ('2759', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:05');
INSERT INTO `sys_job_log` VALUES ('2760', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:06');
INSERT INTO `sys_job_log` VALUES ('2761', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:07');
INSERT INTO `sys_job_log` VALUES ('2762', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:08');
INSERT INTO `sys_job_log` VALUES ('2763', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:09');
INSERT INTO `sys_job_log` VALUES ('2764', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:10');
INSERT INTO `sys_job_log` VALUES ('2765', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:11');
INSERT INTO `sys_job_log` VALUES ('2766', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:12');
INSERT INTO `sys_job_log` VALUES ('2767', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:13');
INSERT INTO `sys_job_log` VALUES ('2768', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:14');
INSERT INTO `sys_job_log` VALUES ('2769', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:15');
INSERT INTO `sys_job_log` VALUES ('2770', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:16');
INSERT INTO `sys_job_log` VALUES ('2771', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:17');
INSERT INTO `sys_job_log` VALUES ('2772', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:18');
INSERT INTO `sys_job_log` VALUES ('2773', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:19');
INSERT INTO `sys_job_log` VALUES ('2774', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:20');
INSERT INTO `sys_job_log` VALUES ('2775', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:21');
INSERT INTO `sys_job_log` VALUES ('2776', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:22');
INSERT INTO `sys_job_log` VALUES ('2777', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:23');
INSERT INTO `sys_job_log` VALUES ('2778', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:24');
INSERT INTO `sys_job_log` VALUES ('2779', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:25');
INSERT INTO `sys_job_log` VALUES ('2780', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:26');
INSERT INTO `sys_job_log` VALUES ('2781', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:27');
INSERT INTO `sys_job_log` VALUES ('2782', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:28');
INSERT INTO `sys_job_log` VALUES ('2783', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:29');
INSERT INTO `sys_job_log` VALUES ('2784', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:30');
INSERT INTO `sys_job_log` VALUES ('2785', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:31');
INSERT INTO `sys_job_log` VALUES ('2786', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:32');
INSERT INTO `sys_job_log` VALUES ('2787', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:33');
INSERT INTO `sys_job_log` VALUES ('2788', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:34');
INSERT INTO `sys_job_log` VALUES ('2789', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:35');
INSERT INTO `sys_job_log` VALUES ('2790', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:36');
INSERT INTO `sys_job_log` VALUES ('2791', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:37');
INSERT INTO `sys_job_log` VALUES ('2792', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:38');
INSERT INTO `sys_job_log` VALUES ('2793', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:39');
INSERT INTO `sys_job_log` VALUES ('2794', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:40');
INSERT INTO `sys_job_log` VALUES ('2795', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:41');
INSERT INTO `sys_job_log` VALUES ('2796', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:42');
INSERT INTO `sys_job_log` VALUES ('2797', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:43');
INSERT INTO `sys_job_log` VALUES ('2798', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:44');
INSERT INTO `sys_job_log` VALUES ('2799', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:45');
INSERT INTO `sys_job_log` VALUES ('2800', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:46');
INSERT INTO `sys_job_log` VALUES ('2801', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:47');
INSERT INTO `sys_job_log` VALUES ('2802', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:48');
INSERT INTO `sys_job_log` VALUES ('2803', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:49');
INSERT INTO `sys_job_log` VALUES ('2804', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:50');
INSERT INTO `sys_job_log` VALUES ('2805', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:51');
INSERT INTO `sys_job_log` VALUES ('2806', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:52');
INSERT INTO `sys_job_log` VALUES ('2807', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:53');
INSERT INTO `sys_job_log` VALUES ('2808', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:54');
INSERT INTO `sys_job_log` VALUES ('2809', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:55');
INSERT INTO `sys_job_log` VALUES ('2810', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:56');
INSERT INTO `sys_job_log` VALUES ('2811', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:57');
INSERT INTO `sys_job_log` VALUES ('2812', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:58');
INSERT INTO `sys_job_log` VALUES ('2813', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:48:59');
INSERT INTO `sys_job_log` VALUES ('2814', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:00');
INSERT INTO `sys_job_log` VALUES ('2815', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:01');
INSERT INTO `sys_job_log` VALUES ('2816', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:02');
INSERT INTO `sys_job_log` VALUES ('2817', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:03');
INSERT INTO `sys_job_log` VALUES ('2818', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:04');
INSERT INTO `sys_job_log` VALUES ('2819', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:05');
INSERT INTO `sys_job_log` VALUES ('2820', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:06');
INSERT INTO `sys_job_log` VALUES ('2821', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:07');
INSERT INTO `sys_job_log` VALUES ('2822', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:08');
INSERT INTO `sys_job_log` VALUES ('2823', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:09');
INSERT INTO `sys_job_log` VALUES ('2824', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:10');
INSERT INTO `sys_job_log` VALUES ('2825', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:11');
INSERT INTO `sys_job_log` VALUES ('2826', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:12');
INSERT INTO `sys_job_log` VALUES ('2827', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:13');
INSERT INTO `sys_job_log` VALUES ('2828', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:14');
INSERT INTO `sys_job_log` VALUES ('2829', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:15');
INSERT INTO `sys_job_log` VALUES ('2830', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:16');
INSERT INTO `sys_job_log` VALUES ('2831', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:17');
INSERT INTO `sys_job_log` VALUES ('2832', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:18');
INSERT INTO `sys_job_log` VALUES ('2833', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:19');
INSERT INTO `sys_job_log` VALUES ('2834', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:20');
INSERT INTO `sys_job_log` VALUES ('2835', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:21');
INSERT INTO `sys_job_log` VALUES ('2836', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:22');
INSERT INTO `sys_job_log` VALUES ('2837', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:23');
INSERT INTO `sys_job_log` VALUES ('2838', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:24');
INSERT INTO `sys_job_log` VALUES ('2839', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:25');
INSERT INTO `sys_job_log` VALUES ('2840', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:26');
INSERT INTO `sys_job_log` VALUES ('2841', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:27');
INSERT INTO `sys_job_log` VALUES ('2842', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:28');
INSERT INTO `sys_job_log` VALUES ('2843', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:29');
INSERT INTO `sys_job_log` VALUES ('2844', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:30');
INSERT INTO `sys_job_log` VALUES ('2845', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:31');
INSERT INTO `sys_job_log` VALUES ('2846', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:32');
INSERT INTO `sys_job_log` VALUES ('2847', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:33');
INSERT INTO `sys_job_log` VALUES ('2848', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:34');
INSERT INTO `sys_job_log` VALUES ('2849', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:35');
INSERT INTO `sys_job_log` VALUES ('2850', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:36');
INSERT INTO `sys_job_log` VALUES ('2851', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:37');
INSERT INTO `sys_job_log` VALUES ('2852', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:38');
INSERT INTO `sys_job_log` VALUES ('2853', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:39');
INSERT INTO `sys_job_log` VALUES ('2854', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:40');
INSERT INTO `sys_job_log` VALUES ('2855', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:41');
INSERT INTO `sys_job_log` VALUES ('2856', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:42');
INSERT INTO `sys_job_log` VALUES ('2857', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:43');
INSERT INTO `sys_job_log` VALUES ('2858', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:44');
INSERT INTO `sys_job_log` VALUES ('2859', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:45');
INSERT INTO `sys_job_log` VALUES ('2860', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:46');
INSERT INTO `sys_job_log` VALUES ('2861', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:47');
INSERT INTO `sys_job_log` VALUES ('2862', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:48');
INSERT INTO `sys_job_log` VALUES ('2863', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:49');
INSERT INTO `sys_job_log` VALUES ('2864', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:50');
INSERT INTO `sys_job_log` VALUES ('2865', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:51');
INSERT INTO `sys_job_log` VALUES ('2866', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:52');
INSERT INTO `sys_job_log` VALUES ('2867', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:53');
INSERT INTO `sys_job_log` VALUES ('2868', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:54');
INSERT INTO `sys_job_log` VALUES ('2869', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:55');
INSERT INTO `sys_job_log` VALUES ('2870', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:56');
INSERT INTO `sys_job_log` VALUES ('2871', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:57');
INSERT INTO `sys_job_log` VALUES ('2872', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:58');
INSERT INTO `sys_job_log` VALUES ('2873', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:49:59');
INSERT INTO `sys_job_log` VALUES ('2874', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:00');
INSERT INTO `sys_job_log` VALUES ('2875', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:01');
INSERT INTO `sys_job_log` VALUES ('2876', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:02');
INSERT INTO `sys_job_log` VALUES ('2877', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:03');
INSERT INTO `sys_job_log` VALUES ('2878', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:04');
INSERT INTO `sys_job_log` VALUES ('2879', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:05');
INSERT INTO `sys_job_log` VALUES ('2880', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:06');
INSERT INTO `sys_job_log` VALUES ('2881', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:07');
INSERT INTO `sys_job_log` VALUES ('2882', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:08');
INSERT INTO `sys_job_log` VALUES ('2883', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:09');
INSERT INTO `sys_job_log` VALUES ('2884', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:10');
INSERT INTO `sys_job_log` VALUES ('2885', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:11');
INSERT INTO `sys_job_log` VALUES ('2886', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:12');
INSERT INTO `sys_job_log` VALUES ('2887', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:13');
INSERT INTO `sys_job_log` VALUES ('2888', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:14');
INSERT INTO `sys_job_log` VALUES ('2889', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:15');
INSERT INTO `sys_job_log` VALUES ('2890', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:16');
INSERT INTO `sys_job_log` VALUES ('2891', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:17');
INSERT INTO `sys_job_log` VALUES ('2892', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:18');
INSERT INTO `sys_job_log` VALUES ('2893', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:19');
INSERT INTO `sys_job_log` VALUES ('2894', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:20');
INSERT INTO `sys_job_log` VALUES ('2895', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:21');
INSERT INTO `sys_job_log` VALUES ('2896', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:22');
INSERT INTO `sys_job_log` VALUES ('2897', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:23');
INSERT INTO `sys_job_log` VALUES ('2898', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:24');
INSERT INTO `sys_job_log` VALUES ('2899', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:25');
INSERT INTO `sys_job_log` VALUES ('2900', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:26');
INSERT INTO `sys_job_log` VALUES ('2901', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:27');
INSERT INTO `sys_job_log` VALUES ('2902', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:28');
INSERT INTO `sys_job_log` VALUES ('2903', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:29');
INSERT INTO `sys_job_log` VALUES ('2904', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:30');
INSERT INTO `sys_job_log` VALUES ('2905', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:31');
INSERT INTO `sys_job_log` VALUES ('2906', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:32');
INSERT INTO `sys_job_log` VALUES ('2907', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:33');
INSERT INTO `sys_job_log` VALUES ('2908', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:34');
INSERT INTO `sys_job_log` VALUES ('2909', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:35');
INSERT INTO `sys_job_log` VALUES ('2910', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:36');
INSERT INTO `sys_job_log` VALUES ('2911', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:37');
INSERT INTO `sys_job_log` VALUES ('2912', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:38');
INSERT INTO `sys_job_log` VALUES ('2913', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:39');
INSERT INTO `sys_job_log` VALUES ('2914', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:40');
INSERT INTO `sys_job_log` VALUES ('2915', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:41');
INSERT INTO `sys_job_log` VALUES ('2916', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:42');
INSERT INTO `sys_job_log` VALUES ('2917', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:43');
INSERT INTO `sys_job_log` VALUES ('2918', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:44');
INSERT INTO `sys_job_log` VALUES ('2919', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:45');
INSERT INTO `sys_job_log` VALUES ('2920', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:46');
INSERT INTO `sys_job_log` VALUES ('2921', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:47');
INSERT INTO `sys_job_log` VALUES ('2922', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:48');
INSERT INTO `sys_job_log` VALUES ('2923', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:49');
INSERT INTO `sys_job_log` VALUES ('2924', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:50');
INSERT INTO `sys_job_log` VALUES ('2925', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:51');
INSERT INTO `sys_job_log` VALUES ('2926', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:52');
INSERT INTO `sys_job_log` VALUES ('2927', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:53');
INSERT INTO `sys_job_log` VALUES ('2928', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:54');
INSERT INTO `sys_job_log` VALUES ('2929', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:55');
INSERT INTO `sys_job_log` VALUES ('2930', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:56');
INSERT INTO `sys_job_log` VALUES ('2931', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:57');
INSERT INTO `sys_job_log` VALUES ('2932', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:58');
INSERT INTO `sys_job_log` VALUES ('2933', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:50:59');
INSERT INTO `sys_job_log` VALUES ('2934', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：1毫秒', '0', '', '2022-07-18 22:51:00');
INSERT INTO `sys_job_log` VALUES ('2935', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:01');
INSERT INTO `sys_job_log` VALUES ('2936', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:02');
INSERT INTO `sys_job_log` VALUES ('2937', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:03');
INSERT INTO `sys_job_log` VALUES ('2938', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:04');
INSERT INTO `sys_job_log` VALUES ('2939', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:05');
INSERT INTO `sys_job_log` VALUES ('2940', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:06');
INSERT INTO `sys_job_log` VALUES ('2941', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:07');
INSERT INTO `sys_job_log` VALUES ('2942', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:08');
INSERT INTO `sys_job_log` VALUES ('2943', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:09');
INSERT INTO `sys_job_log` VALUES ('2944', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:10');
INSERT INTO `sys_job_log` VALUES ('2945', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:11');
INSERT INTO `sys_job_log` VALUES ('2946', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:12');
INSERT INTO `sys_job_log` VALUES ('2947', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:13');
INSERT INTO `sys_job_log` VALUES ('2948', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:14');
INSERT INTO `sys_job_log` VALUES ('2949', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:15');
INSERT INTO `sys_job_log` VALUES ('2950', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:16');
INSERT INTO `sys_job_log` VALUES ('2951', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:17');
INSERT INTO `sys_job_log` VALUES ('2952', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:18');
INSERT INTO `sys_job_log` VALUES ('2953', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:19');
INSERT INTO `sys_job_log` VALUES ('2954', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:20');
INSERT INTO `sys_job_log` VALUES ('2955', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:21');
INSERT INTO `sys_job_log` VALUES ('2956', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:22');
INSERT INTO `sys_job_log` VALUES ('2957', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:23');
INSERT INTO `sys_job_log` VALUES ('2958', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:24');
INSERT INTO `sys_job_log` VALUES ('2959', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:25');
INSERT INTO `sys_job_log` VALUES ('2960', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:26');
INSERT INTO `sys_job_log` VALUES ('2961', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:27');
INSERT INTO `sys_job_log` VALUES ('2962', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:28');
INSERT INTO `sys_job_log` VALUES ('2963', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:29');
INSERT INTO `sys_job_log` VALUES ('2964', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:30');
INSERT INTO `sys_job_log` VALUES ('2965', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:31');
INSERT INTO `sys_job_log` VALUES ('2966', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:32');
INSERT INTO `sys_job_log` VALUES ('2967', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:33');
INSERT INTO `sys_job_log` VALUES ('2968', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:34');
INSERT INTO `sys_job_log` VALUES ('2969', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:35');
INSERT INTO `sys_job_log` VALUES ('2970', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:36');
INSERT INTO `sys_job_log` VALUES ('2971', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:37');
INSERT INTO `sys_job_log` VALUES ('2972', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:38');
INSERT INTO `sys_job_log` VALUES ('2973', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:39');
INSERT INTO `sys_job_log` VALUES ('2974', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:40');
INSERT INTO `sys_job_log` VALUES ('2975', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:41');
INSERT INTO `sys_job_log` VALUES ('2976', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:42');
INSERT INTO `sys_job_log` VALUES ('2977', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:43');
INSERT INTO `sys_job_log` VALUES ('2978', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:44');
INSERT INTO `sys_job_log` VALUES ('2979', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:45');
INSERT INTO `sys_job_log` VALUES ('2980', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:46');
INSERT INTO `sys_job_log` VALUES ('2981', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:47');
INSERT INTO `sys_job_log` VALUES ('2982', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:48');
INSERT INTO `sys_job_log` VALUES ('2983', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:49');
INSERT INTO `sys_job_log` VALUES ('2984', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:50');
INSERT INTO `sys_job_log` VALUES ('2985', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:51');
INSERT INTO `sys_job_log` VALUES ('2986', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:52');
INSERT INTO `sys_job_log` VALUES ('2987', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:53');
INSERT INTO `sys_job_log` VALUES ('2988', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:54');
INSERT INTO `sys_job_log` VALUES ('2989', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:55');
INSERT INTO `sys_job_log` VALUES ('2990', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:56');
INSERT INTO `sys_job_log` VALUES ('2991', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:57');
INSERT INTO `sys_job_log` VALUES ('2992', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:58');
INSERT INTO `sys_job_log` VALUES ('2993', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:51:59');
INSERT INTO `sys_job_log` VALUES ('2994', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:00');
INSERT INTO `sys_job_log` VALUES ('2995', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:01');
INSERT INTO `sys_job_log` VALUES ('2996', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:02');
INSERT INTO `sys_job_log` VALUES ('2997', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:03');
INSERT INTO `sys_job_log` VALUES ('2998', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:04');
INSERT INTO `sys_job_log` VALUES ('2999', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:05');
INSERT INTO `sys_job_log` VALUES ('3000', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:06');
INSERT INTO `sys_job_log` VALUES ('3001', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:07');
INSERT INTO `sys_job_log` VALUES ('3002', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:08');
INSERT INTO `sys_job_log` VALUES ('3003', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:09');
INSERT INTO `sys_job_log` VALUES ('3004', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:10');
INSERT INTO `sys_job_log` VALUES ('3005', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:11');
INSERT INTO `sys_job_log` VALUES ('3006', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:12');
INSERT INTO `sys_job_log` VALUES ('3007', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:13');
INSERT INTO `sys_job_log` VALUES ('3008', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:14');
INSERT INTO `sys_job_log` VALUES ('3009', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:15');
INSERT INTO `sys_job_log` VALUES ('3010', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:16');
INSERT INTO `sys_job_log` VALUES ('3011', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:17');
INSERT INTO `sys_job_log` VALUES ('3012', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:18');
INSERT INTO `sys_job_log` VALUES ('3013', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:19');
INSERT INTO `sys_job_log` VALUES ('3014', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:20');
INSERT INTO `sys_job_log` VALUES ('3015', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:21');
INSERT INTO `sys_job_log` VALUES ('3016', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:22');
INSERT INTO `sys_job_log` VALUES ('3017', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:23');
INSERT INTO `sys_job_log` VALUES ('3018', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:24');
INSERT INTO `sys_job_log` VALUES ('3019', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:25');
INSERT INTO `sys_job_log` VALUES ('3020', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:26');
INSERT INTO `sys_job_log` VALUES ('3021', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:27');
INSERT INTO `sys_job_log` VALUES ('3022', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:28');
INSERT INTO `sys_job_log` VALUES ('3023', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:29');
INSERT INTO `sys_job_log` VALUES ('3024', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:30');
INSERT INTO `sys_job_log` VALUES ('3025', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:31');
INSERT INTO `sys_job_log` VALUES ('3026', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:32');
INSERT INTO `sys_job_log` VALUES ('3027', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:33');
INSERT INTO `sys_job_log` VALUES ('3028', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:34');
INSERT INTO `sys_job_log` VALUES ('3029', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:35');
INSERT INTO `sys_job_log` VALUES ('3030', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:36');
INSERT INTO `sys_job_log` VALUES ('3031', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:37');
INSERT INTO `sys_job_log` VALUES ('3032', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:38');
INSERT INTO `sys_job_log` VALUES ('3033', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:39');
INSERT INTO `sys_job_log` VALUES ('3034', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:40');
INSERT INTO `sys_job_log` VALUES ('3035', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:41');
INSERT INTO `sys_job_log` VALUES ('3036', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:42');
INSERT INTO `sys_job_log` VALUES ('3037', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:43');
INSERT INTO `sys_job_log` VALUES ('3038', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:44');
INSERT INTO `sys_job_log` VALUES ('3039', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:45');
INSERT INTO `sys_job_log` VALUES ('3040', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:46');
INSERT INTO `sys_job_log` VALUES ('3041', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:47');
INSERT INTO `sys_job_log` VALUES ('3042', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:48');
INSERT INTO `sys_job_log` VALUES ('3043', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:49');
INSERT INTO `sys_job_log` VALUES ('3044', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:50');
INSERT INTO `sys_job_log` VALUES ('3045', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:51');
INSERT INTO `sys_job_log` VALUES ('3046', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:52');
INSERT INTO `sys_job_log` VALUES ('3047', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:53');
INSERT INTO `sys_job_log` VALUES ('3048', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:54');
INSERT INTO `sys_job_log` VALUES ('3049', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:55');
INSERT INTO `sys_job_log` VALUES ('3050', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:56');
INSERT INTO `sys_job_log` VALUES ('3051', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:57');
INSERT INTO `sys_job_log` VALUES ('3052', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:58');
INSERT INTO `sys_job_log` VALUES ('3053', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:52:59');
INSERT INTO `sys_job_log` VALUES ('3054', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:00');
INSERT INTO `sys_job_log` VALUES ('3055', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:01');
INSERT INTO `sys_job_log` VALUES ('3056', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:02');
INSERT INTO `sys_job_log` VALUES ('3057', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:03');
INSERT INTO `sys_job_log` VALUES ('3058', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:04');
INSERT INTO `sys_job_log` VALUES ('3059', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:05');
INSERT INTO `sys_job_log` VALUES ('3060', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:06');
INSERT INTO `sys_job_log` VALUES ('3061', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:07');
INSERT INTO `sys_job_log` VALUES ('3062', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:08');
INSERT INTO `sys_job_log` VALUES ('3063', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:09');
INSERT INTO `sys_job_log` VALUES ('3064', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:10');
INSERT INTO `sys_job_log` VALUES ('3065', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:11');
INSERT INTO `sys_job_log` VALUES ('3066', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:12');
INSERT INTO `sys_job_log` VALUES ('3067', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:13');
INSERT INTO `sys_job_log` VALUES ('3068', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:14');
INSERT INTO `sys_job_log` VALUES ('3069', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:15');
INSERT INTO `sys_job_log` VALUES ('3070', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:16');
INSERT INTO `sys_job_log` VALUES ('3071', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:17');
INSERT INTO `sys_job_log` VALUES ('3072', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:18');
INSERT INTO `sys_job_log` VALUES ('3073', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:19');
INSERT INTO `sys_job_log` VALUES ('3074', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:20');
INSERT INTO `sys_job_log` VALUES ('3075', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:21');
INSERT INTO `sys_job_log` VALUES ('3076', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:22');
INSERT INTO `sys_job_log` VALUES ('3077', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:23');
INSERT INTO `sys_job_log` VALUES ('3078', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:24');
INSERT INTO `sys_job_log` VALUES ('3079', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:25');
INSERT INTO `sys_job_log` VALUES ('3080', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:26');
INSERT INTO `sys_job_log` VALUES ('3081', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:27');
INSERT INTO `sys_job_log` VALUES ('3082', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:28');
INSERT INTO `sys_job_log` VALUES ('3083', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:29');
INSERT INTO `sys_job_log` VALUES ('3084', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:30');
INSERT INTO `sys_job_log` VALUES ('3085', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:31');
INSERT INTO `sys_job_log` VALUES ('3086', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:32');
INSERT INTO `sys_job_log` VALUES ('3087', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:33');
INSERT INTO `sys_job_log` VALUES ('3088', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:34');
INSERT INTO `sys_job_log` VALUES ('3089', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:35');
INSERT INTO `sys_job_log` VALUES ('3090', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:36');
INSERT INTO `sys_job_log` VALUES ('3091', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:37');
INSERT INTO `sys_job_log` VALUES ('3092', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:38');
INSERT INTO `sys_job_log` VALUES ('3093', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:39');
INSERT INTO `sys_job_log` VALUES ('3094', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:40');
INSERT INTO `sys_job_log` VALUES ('3095', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:41');
INSERT INTO `sys_job_log` VALUES ('3096', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:42');
INSERT INTO `sys_job_log` VALUES ('3097', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:43');
INSERT INTO `sys_job_log` VALUES ('3098', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:44');
INSERT INTO `sys_job_log` VALUES ('3099', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:45');
INSERT INTO `sys_job_log` VALUES ('3100', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:46');
INSERT INTO `sys_job_log` VALUES ('3101', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:47');
INSERT INTO `sys_job_log` VALUES ('3102', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:48');
INSERT INTO `sys_job_log` VALUES ('3103', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:49');
INSERT INTO `sys_job_log` VALUES ('3104', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:50');
INSERT INTO `sys_job_log` VALUES ('3105', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:51');
INSERT INTO `sys_job_log` VALUES ('3106', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:52');
INSERT INTO `sys_job_log` VALUES ('3107', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:53');
INSERT INTO `sys_job_log` VALUES ('3108', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:54');
INSERT INTO `sys_job_log` VALUES ('3109', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:55');
INSERT INTO `sys_job_log` VALUES ('3110', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:56');
INSERT INTO `sys_job_log` VALUES ('3111', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:57');
INSERT INTO `sys_job_log` VALUES ('3112', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:58');
INSERT INTO `sys_job_log` VALUES ('3113', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:53:59');
INSERT INTO `sys_job_log` VALUES ('3114', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:00');
INSERT INTO `sys_job_log` VALUES ('3115', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:01');
INSERT INTO `sys_job_log` VALUES ('3116', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:02');
INSERT INTO `sys_job_log` VALUES ('3117', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:03');
INSERT INTO `sys_job_log` VALUES ('3118', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:04');
INSERT INTO `sys_job_log` VALUES ('3119', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:05');
INSERT INTO `sys_job_log` VALUES ('3120', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:06');
INSERT INTO `sys_job_log` VALUES ('3121', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:07');
INSERT INTO `sys_job_log` VALUES ('3122', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:08');
INSERT INTO `sys_job_log` VALUES ('3123', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:09');
INSERT INTO `sys_job_log` VALUES ('3124', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:10');
INSERT INTO `sys_job_log` VALUES ('3125', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:11');
INSERT INTO `sys_job_log` VALUES ('3126', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:12');
INSERT INTO `sys_job_log` VALUES ('3127', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:13');
INSERT INTO `sys_job_log` VALUES ('3128', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:14');
INSERT INTO `sys_job_log` VALUES ('3129', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:15');
INSERT INTO `sys_job_log` VALUES ('3130', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:16');
INSERT INTO `sys_job_log` VALUES ('3131', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:17');
INSERT INTO `sys_job_log` VALUES ('3132', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:18');
INSERT INTO `sys_job_log` VALUES ('3133', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:19');
INSERT INTO `sys_job_log` VALUES ('3134', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:20');
INSERT INTO `sys_job_log` VALUES ('3135', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:21');
INSERT INTO `sys_job_log` VALUES ('3136', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:22');
INSERT INTO `sys_job_log` VALUES ('3137', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:23');
INSERT INTO `sys_job_log` VALUES ('3138', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:24');
INSERT INTO `sys_job_log` VALUES ('3139', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:25');
INSERT INTO `sys_job_log` VALUES ('3140', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:26');
INSERT INTO `sys_job_log` VALUES ('3141', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:27');
INSERT INTO `sys_job_log` VALUES ('3142', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:28');
INSERT INTO `sys_job_log` VALUES ('3143', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:29');
INSERT INTO `sys_job_log` VALUES ('3144', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:30');
INSERT INTO `sys_job_log` VALUES ('3145', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:31');
INSERT INTO `sys_job_log` VALUES ('3146', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:32');
INSERT INTO `sys_job_log` VALUES ('3147', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:33');
INSERT INTO `sys_job_log` VALUES ('3148', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:34');
INSERT INTO `sys_job_log` VALUES ('3149', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:35');
INSERT INTO `sys_job_log` VALUES ('3150', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:36');
INSERT INTO `sys_job_log` VALUES ('3151', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:37');
INSERT INTO `sys_job_log` VALUES ('3152', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:38');
INSERT INTO `sys_job_log` VALUES ('3153', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:39');
INSERT INTO `sys_job_log` VALUES ('3154', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:40');
INSERT INTO `sys_job_log` VALUES ('3155', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:41');
INSERT INTO `sys_job_log` VALUES ('3156', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:42');
INSERT INTO `sys_job_log` VALUES ('3157', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:43');
INSERT INTO `sys_job_log` VALUES ('3158', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:44');
INSERT INTO `sys_job_log` VALUES ('3159', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:45');
INSERT INTO `sys_job_log` VALUES ('3160', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:46');
INSERT INTO `sys_job_log` VALUES ('3161', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:47');
INSERT INTO `sys_job_log` VALUES ('3162', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:48');
INSERT INTO `sys_job_log` VALUES ('3163', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:49');
INSERT INTO `sys_job_log` VALUES ('3164', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:50');
INSERT INTO `sys_job_log` VALUES ('3165', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:51');
INSERT INTO `sys_job_log` VALUES ('3166', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:52');
INSERT INTO `sys_job_log` VALUES ('3167', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:53');
INSERT INTO `sys_job_log` VALUES ('3168', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:54');
INSERT INTO `sys_job_log` VALUES ('3169', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:55');
INSERT INTO `sys_job_log` VALUES ('3170', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:56');
INSERT INTO `sys_job_log` VALUES ('3171', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:57');
INSERT INTO `sys_job_log` VALUES ('3172', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:58');
INSERT INTO `sys_job_log` VALUES ('3173', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:54:59');
INSERT INTO `sys_job_log` VALUES ('3174', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:00');
INSERT INTO `sys_job_log` VALUES ('3175', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:01');
INSERT INTO `sys_job_log` VALUES ('3176', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:02');
INSERT INTO `sys_job_log` VALUES ('3177', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:03');
INSERT INTO `sys_job_log` VALUES ('3178', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:04');
INSERT INTO `sys_job_log` VALUES ('3179', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:05');
INSERT INTO `sys_job_log` VALUES ('3180', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:06');
INSERT INTO `sys_job_log` VALUES ('3181', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:07');
INSERT INTO `sys_job_log` VALUES ('3182', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:08');
INSERT INTO `sys_job_log` VALUES ('3183', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:09');
INSERT INTO `sys_job_log` VALUES ('3184', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:10');
INSERT INTO `sys_job_log` VALUES ('3185', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:11');
INSERT INTO `sys_job_log` VALUES ('3186', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:12');
INSERT INTO `sys_job_log` VALUES ('3187', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:13');
INSERT INTO `sys_job_log` VALUES ('3188', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:14');
INSERT INTO `sys_job_log` VALUES ('3189', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:15');
INSERT INTO `sys_job_log` VALUES ('3190', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:16');
INSERT INTO `sys_job_log` VALUES ('3191', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:17');
INSERT INTO `sys_job_log` VALUES ('3192', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:18');
INSERT INTO `sys_job_log` VALUES ('3193', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:19');
INSERT INTO `sys_job_log` VALUES ('3194', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:20');
INSERT INTO `sys_job_log` VALUES ('3195', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:21');
INSERT INTO `sys_job_log` VALUES ('3196', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:22');
INSERT INTO `sys_job_log` VALUES ('3197', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:23');
INSERT INTO `sys_job_log` VALUES ('3198', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:24');
INSERT INTO `sys_job_log` VALUES ('3199', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:25');
INSERT INTO `sys_job_log` VALUES ('3200', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:26');
INSERT INTO `sys_job_log` VALUES ('3201', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:27');
INSERT INTO `sys_job_log` VALUES ('3202', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:28');
INSERT INTO `sys_job_log` VALUES ('3203', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:29');
INSERT INTO `sys_job_log` VALUES ('3204', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:30');
INSERT INTO `sys_job_log` VALUES ('3205', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:31');
INSERT INTO `sys_job_log` VALUES ('3206', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:32');
INSERT INTO `sys_job_log` VALUES ('3207', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:33');
INSERT INTO `sys_job_log` VALUES ('3208', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:34');
INSERT INTO `sys_job_log` VALUES ('3209', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:35');
INSERT INTO `sys_job_log` VALUES ('3210', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:36');
INSERT INTO `sys_job_log` VALUES ('3211', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:37');
INSERT INTO `sys_job_log` VALUES ('3212', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:38');
INSERT INTO `sys_job_log` VALUES ('3213', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:39');
INSERT INTO `sys_job_log` VALUES ('3214', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:40');
INSERT INTO `sys_job_log` VALUES ('3215', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:41');
INSERT INTO `sys_job_log` VALUES ('3216', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:42');
INSERT INTO `sys_job_log` VALUES ('3217', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:43');
INSERT INTO `sys_job_log` VALUES ('3218', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:44');
INSERT INTO `sys_job_log` VALUES ('3219', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:45');
INSERT INTO `sys_job_log` VALUES ('3220', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:46');
INSERT INTO `sys_job_log` VALUES ('3221', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:47');
INSERT INTO `sys_job_log` VALUES ('3222', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:48');
INSERT INTO `sys_job_log` VALUES ('3223', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:49');
INSERT INTO `sys_job_log` VALUES ('3224', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:50');
INSERT INTO `sys_job_log` VALUES ('3225', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:51');
INSERT INTO `sys_job_log` VALUES ('3226', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:52');
INSERT INTO `sys_job_log` VALUES ('3227', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:53');
INSERT INTO `sys_job_log` VALUES ('3228', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:54');
INSERT INTO `sys_job_log` VALUES ('3229', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:55');
INSERT INTO `sys_job_log` VALUES ('3230', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:56');
INSERT INTO `sys_job_log` VALUES ('3231', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:57');
INSERT INTO `sys_job_log` VALUES ('3232', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:58');
INSERT INTO `sys_job_log` VALUES ('3233', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:55:59');
INSERT INTO `sys_job_log` VALUES ('3234', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:56:00');
INSERT INTO `sys_job_log` VALUES ('3235', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:56:01');
INSERT INTO `sys_job_log` VALUES ('3236', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:56:02');
INSERT INTO `sys_job_log` VALUES ('3237', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:56:03');
INSERT INTO `sys_job_log` VALUES ('3238', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:56:04');
INSERT INTO `sys_job_log` VALUES ('3239', '缩略图后台任务', 'SYSTEM', 'thumbTask.initThumbTask()', '缩略图后台任务 总共耗时：0毫秒', '0', '', '2022-07-18 22:56:05');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '操作系统',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('1', 'undefined', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-06-21 16:39:35');
INSERT INTO `sys_logininfor` VALUES ('2', 'undefined', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-06-21 16:39:35');
INSERT INTO `sys_logininfor` VALUES ('3', 'undefined', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-06-21 16:39:35');
INSERT INTO `sys_logininfor` VALUES ('4', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-06-21 16:39:35');
INSERT INTO `sys_logininfor` VALUES ('5', 'user000', '183.222.197.149', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 20:14:17');
INSERT INTO `sys_logininfor` VALUES ('6', 'user000', '183.222.197.149', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-21 20:44:45');
INSERT INTO `sys_logininfor` VALUES ('7', 'user001', '192.168.1.67', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-06-22 09:08:04');
INSERT INTO `sys_logininfor` VALUES ('8', 'user001', '192.168.1.67', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-06-22 10:04:46');
INSERT INTO `sys_logininfor` VALUES ('9', 'user000', '192.168.1.67', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-22 10:18:34');
INSERT INTO `sys_logininfor` VALUES ('10', 'user000', '183.222.197.149', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-22 20:23:16');
INSERT INTO `sys_logininfor` VALUES ('11', 'user000', '171.221.129.190', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-06-22 20:53:00');
INSERT INTO `sys_logininfor` VALUES ('12', 'user000', '171.221.129.190', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-06-22 20:54:37');
INSERT INTO `sys_logininfor` VALUES ('13', 'user001', '171.221.129.190', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-06-22 20:56:15');
INSERT INTO `sys_logininfor` VALUES ('14', 'user001', '171.221.129.190', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-06-22 20:57:01');
INSERT INTO `sys_logininfor` VALUES ('15', 'user000', '183.222.197.149', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-23 20:08:45');
INSERT INTO `sys_logininfor` VALUES ('16', 'user000', '183.222.197.149', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-25 15:13:16');
INSERT INTO `sys_logininfor` VALUES ('17', 'user000', '183.222.196.105', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-26 16:18:14');
INSERT INTO `sys_logininfor` VALUES ('18', 'user000', '183.222.196.105', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-27 20:17:19');
INSERT INTO `sys_logininfor` VALUES ('19', 'user000', '183.222.196.105', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-28 20:07:34');
INSERT INTO `sys_logininfor` VALUES ('20', 'user000', '183.222.196.105', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-29 19:57:54');
INSERT INTO `sys_logininfor` VALUES ('21', 'admin', '222.212.88.7', 'XX XX', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-01 11:02:22');
INSERT INTO `sys_logininfor` VALUES ('22', 'admin', '222.212.88.7', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-01 11:02:27');
INSERT INTO `sys_logininfor` VALUES ('23', 'admin', '222.212.88.7', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-07-01 15:05:16');
INSERT INTO `sys_logininfor` VALUES ('24', 'admin', '222.212.88.7', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-01 15:06:00');
INSERT INTO `sys_logininfor` VALUES ('25', 'user000', '117.173.138.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-04 20:29:52');
INSERT INTO `sys_logininfor` VALUES ('26', 'user000', '117.173.138.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-04 20:36:22');
INSERT INTO `sys_logininfor` VALUES ('27', 'user000', '117.173.138.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-04 22:56:32');
INSERT INTO `sys_logininfor` VALUES ('28', 'user000', '117.173.138.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-04 23:11:58');
INSERT INTO `sys_logininfor` VALUES ('29', 'user000', '117.173.138.120', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-05 20:35:59');
INSERT INTO `sys_logininfor` VALUES ('30', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-07 21:00:11');
INSERT INTO `sys_logininfor` VALUES ('31', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-08 20:33:38');
INSERT INTO `sys_logininfor` VALUES ('32', 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-09 23:34:50');
INSERT INTO `sys_logininfor` VALUES ('33', 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-09 23:38:22');
INSERT INTO `sys_logininfor` VALUES ('34', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-10 17:41:09');
INSERT INTO `sys_logininfor` VALUES ('35', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-10 17:41:22');
INSERT INTO `sys_logininfor` VALUES ('36', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-10 17:44:44');
INSERT INTO `sys_logininfor` VALUES ('37', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-10 18:10:38');
INSERT INTO `sys_logininfor` VALUES ('38', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-10 18:42:51');
INSERT INTO `sys_logininfor` VALUES ('39', 'undefined', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-07-10 18:44:51');
INSERT INTO `sys_logininfor` VALUES ('40', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-10 18:47:56');
INSERT INTO `sys_logininfor` VALUES ('41', 'user001', '171.221.129.171', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-10 19:17:07');
INSERT INTO `sys_logininfor` VALUES ('42', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 20:15:30');
INSERT INTO `sys_logininfor` VALUES ('43', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 20:36:45');
INSERT INTO `sys_logininfor` VALUES ('44', 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-11 21:37:45');
INSERT INTO `sys_logininfor` VALUES ('45', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 21:42:56');
INSERT INTO `sys_logininfor` VALUES ('46', 'undefined', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '1', '登录用户：undefined 不存在', '2022-07-11 21:43:59');
INSERT INTO `sys_logininfor` VALUES ('47', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 21:44:00');
INSERT INTO `sys_logininfor` VALUES ('48', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 21:45:18');
INSERT INTO `sys_logininfor` VALUES ('49', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 21:59:59');
INSERT INTO `sys_logininfor` VALUES ('50', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 22:00:08');
INSERT INTO `sys_logininfor` VALUES ('51', 'user002', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 22:00:18');
INSERT INTO `sys_logininfor` VALUES ('52', 'user002', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 22:00:56');
INSERT INTO `sys_logininfor` VALUES ('53', 'user002', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 22:01:10');
INSERT INTO `sys_logininfor` VALUES ('54', 'user002', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-11 22:01:14');
INSERT INTO `sys_logininfor` VALUES ('55', 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-11 22:38:50');
INSERT INTO `sys_logininfor` VALUES ('56', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 20:09:27');
INSERT INTO `sys_logininfor` VALUES ('57', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 20:33:00');
INSERT INTO `sys_logininfor` VALUES ('58', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 21:28:32');
INSERT INTO `sys_logininfor` VALUES ('59', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 22:31:13');
INSERT INTO `sys_logininfor` VALUES ('60', 'user002', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 22:31:23');
INSERT INTO `sys_logininfor` VALUES ('61', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 22:31:35');
INSERT INTO `sys_logininfor` VALUES ('62', 'user000', '171.221.129.171', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 22:32:47');
INSERT INTO `sys_logininfor` VALUES ('63', 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-12 22:54:39');
INSERT INTO `sys_logininfor` VALUES ('64', 'user001', '171.221.129.171', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-12 23:17:06');
INSERT INTO `sys_logininfor` VALUES ('65', 'user001', '171.221.129.171', 'XX XX', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-12 23:18:20');
INSERT INTO `sys_logininfor` VALUES ('66', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 23:20:36');
INSERT INTO `sys_logininfor` VALUES ('67', 'user000', '117.173.137.4', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-12 23:38:11');
INSERT INTO `sys_logininfor` VALUES ('68', 'admin', '222.212.88.7', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-15 17:28:59');
INSERT INTO `sys_logininfor` VALUES ('69', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-15 18:05:34');
INSERT INTO `sys_logininfor` VALUES ('70', 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-17 23:39:32');
INSERT INTO `sys_logininfor` VALUES ('71', 'user001', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2022-07-17 23:39:34');
INSERT INTO `sys_logininfor` VALUES ('72', 'user000', '171.214.211.193', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-18 00:35:35');
INSERT INTO `sys_logininfor` VALUES ('73', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-18 21:33:36');
INSERT INTO `sys_logininfor` VALUES ('74', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-18 21:33:37');
INSERT INTO `sys_logininfor` VALUES ('75', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-18 21:33:56');
INSERT INTO `sys_logininfor` VALUES ('76', 'user000', '171.221.129.155', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-18 22:14:09');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) COLLATE utf8_bin DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) COLLATE utf8_bin DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) COLLATE utf8_bin DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2019 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2022-04-19 00:52:41', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '6', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:14', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '4', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:34', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '5', 'http://ruoyi.vip', null, '', '0', '0', 'M', '0', '0', '', 'guide', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:50', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '0', '2', 'system/user', 'system/user', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 00:07:01', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-04-19 00:52:41', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-04-19 00:52:41', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-04-19 00:52:41', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-04-19 00:52:41', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-04-19 00:52:41', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-04-19 00:52:41', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-04-19 00:52:41', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2022-04-19 00:52:41', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-04-19 00:52:41', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-04-19 00:52:41', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-04-19 00:52:41', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-04-19 00:52:41', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-04-19 00:52:41', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-04-19 00:52:41', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-04-19 00:52:41', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-04-19 00:52:41', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-04-19 00:52:41', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-04-19 00:52:41', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '7', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '115', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '115', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '115', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '115', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '115', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-04-19 00:52:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2003', '基础数据管理', '0', '3', 'fc/basetb', 'fc/basetb', null, '1', '0', 'C', '0', '0', '', 'chart', 'admin', '2022-04-19 20:24:47', 'admin', '2022-05-25 21:35:56', '');
INSERT INTO `sys_menu` VALUES ('2004', '新增数据', '2003', '1', '', null, null, '1', '0', 'F', '0', '0', 'fc:basetb:add', '#', 'admin', '2022-04-21 21:04:11', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '修改数据', '2003', '2', '', null, null, '1', '0', 'F', '0', '0', 'fc:basetb:edit', '#', 'admin', '2022-04-21 21:04:45', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '删除数据', '2003', '3', '', null, null, '1', '0', 'F', '0', '0', 'fc:basetb:remove', '#', 'admin', '2022-04-21 21:05:04', '', null, '');
INSERT INTO `sys_menu` VALUES ('2007', '数据查询', '2003', '0', '', null, null, '1', '0', 'F', '0', '0', 'fc:basetb:query', '#', 'admin', '2022-04-21 21:05:42', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '数据导出', '2003', '4', '', null, null, '1', '0', 'F', '0', '0', 'fc:basetb:export', '#', 'admin', '2022-04-21 21:06:15', '', null, '');
INSERT INTO `sys_menu` VALUES ('2009', '数据导入', '2003', '5', '', null, null, '1', '0', 'F', '0', '0', 'fc:basetb:import', '#', 'admin', '2022-04-21 21:06:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '相机分类管理', '0', '3', 'fc/camera_type', 'fc/camera_type', null, '1', '0', 'C', '0', '0', 'fc:camera_type:list', 'fullscreen', 'admin', '2022-04-23 23:23:34', 'admin', '2022-05-25 21:35:43', '');
INSERT INTO `sys_menu` VALUES ('2011', '新增', '2010', '0', '', null, null, '1', '0', 'F', '0', '0', 'fc:camera_type:add', '#', 'admin', '2022-04-23 23:27:29', '', null, '');
INSERT INTO `sys_menu` VALUES ('2012', '编辑', '2010', '1', '', null, null, '1', '0', 'F', '0', '0', 'fc:camera_type:edit', '#', 'admin', '2022-04-23 23:28:02', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '删除', '2010', '3', '', null, null, '1', '0', 'F', '0', '0', 'fc:camera_type:remove', '#', 'admin', '2022-04-23 23:28:25', '', null, '');
INSERT INTO `sys_menu` VALUES ('2014', '导出', '2010', '4', '', null, null, '1', '0', 'F', '0', '0', 'fc:camera_type:export', '#', 'admin', '2022-04-23 23:28:52', '', null, '');
INSERT INTO `sys_menu` VALUES ('2016', '相机管理', '0', '3', 'fc/camera', 'fc/camera', null, '1', '0', 'C', '0', '0', 'fc:camera:list', 'job', 'admin', '2022-04-23 23:32:41', 'admin', '2022-05-25 21:34:25', '');
INSERT INTO `sys_menu` VALUES ('2017', '新增', '2016', '1', '', null, null, '1', '0', 'F', '0', '0', 'fc:camera:add', '#', 'admin', '2022-04-23 23:33:10', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '修改', '2016', '2', '', null, null, '1', '0', 'F', '0', '0', 'fc:camera:edit', '#', 'admin', '2022-04-23 23:33:32', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-04-19 00:52:42', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-04-19 00:52:42', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) COLLATE utf8_bin DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) COLLATE utf8_bin DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fc_user,fc_basetb', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 00:59:12');
INSERT INTO `sys_oper_log` VALUES ('101', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301150000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Linename\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linename\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineName\"},{\"capJavaField\":\"Linealias\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linealias\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路别名\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineAlias\"},{\"capJavaField\":\"Direct\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"direct\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"行别（前往北京：上行/从北京出发：下行）\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:07:08');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301152000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Username\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"username\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"账号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"username\"},{\"capJavaField\":\"Password\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"password\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"密码\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"password\"},{\"capJavaField\":\"Usertype\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"usertype\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型(默认1)\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:08:04');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-19 01:08:15');
INSERT INTO `sys_oper_log` VALUES ('104', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc_user\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:12:55');
INSERT INTO `sys_oper_log` VALUES ('105', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2000', '127.0.0.1', '内网IP', '{menuId=2000}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:15:12');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1650301684000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301152000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Username\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"username\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"账号\",\"isQuery\":\"1\",\"updateTime\":1650301684000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"username\"},{\"capJavaField\":\"Password\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"password\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"密码\",\"isQuery\":\"1\",\"updateTime\":1650301684000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301152000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"password\"},{\"capJavaField\":\"Usertype\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"usertype\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"类型(默认1)\",\"isQuery\":\"1\",\"updateTime\":1650301684000,\"sort\":4,\"list\":true,\"para', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:15:40');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-19 01:15:45');
INSERT INTO `sys_oper_log` VALUES ('108', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"example\",\"orderNum\":1,\"menuName\":\"4C\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:19:46');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"fc/user/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 01:20:42');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"fc/user/index\",\"children\":[],\"createTime\":1650302442000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 20:15:29');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc_user\",\"component\":\"fc/user/index\",\"children\":[],\"createTime\":1650302442000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 20:15:56');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc_user\",\"component\":\"fc/user/index\",\"children\":[],\"createTime\":1650302442000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 20:16:27');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2001', '127.0.0.1', '内网IP', '{menuId=2001}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 20:16:42');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-19 20:19:00');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-19 20:21:14');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"updateTime\":1650301626000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650301150000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Linename\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linename\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路名称\",\"isQuery\":\"1\",\"updateTime\":1650301626000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineName\"},{\"capJavaField\":\"Linealias\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"linealias\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"线路别名\",\"isQuery\":\"1\",\"updateTime\":1650301626000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650301150000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"lineAlias\"},{\"capJavaField\":\"Direct\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"direct\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"行别（前往北京：上行/从北京出发：下行）\",\"isQuery\":\"1\",\"updateTime\":1650301626000,\"sort\":4,\"list\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 20:21:40');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-19 20:21:42');
INSERT INTO `sys_oper_log` VALUES ('118', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":2,\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/basetb\",\"component\":\"fc/basetb/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 20:24:47');
INSERT INTO `sys_oper_log` VALUES ('119', '用户', '5', 'com.ruoyi.web.controller.fc.FcUserController.export()', 'POST', '1', 'admin', null, '/fc/user/export', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '0', null, '2022-04-19 20:36:44');
INSERT INTO `sys_oper_log` VALUES ('120', '基础数据导入', '5', 'com.ruoyi.web.controller.fc.FcBasetbController.export()', 'POST', '1', 'admin', null, '/fc/basetb/export', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '0', null, '2022-04-19 20:50:57');
INSERT INTO `sys_oper_log` VALUES ('121', '基础数据导入', '6', 'com.ruoyi.web.controller.fc.FcBasetbController.importData()', 'POST', '1', 'admin', null, '/fc/basetb/importData', '127.0.0.1', '内网IP', 'true', '{\"msg\":\"恭喜您，数据已全部导入成功！共 18 条，数据如下：<br/>com.ruoyi.system.domain.FcBasetb@26c1d34[\\r\\n  id=1\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=190\\r\\n  realpol=\\r\\n  span=45\\r\\n  spanbywheel=0\\r\\n  kmv=1347953\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@61b78402[\\r\\n  id=2\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=188\\r\\n  realpol=\\r\\n  span=45\\r\\n  spanbywheel=0\\r\\n  kmv=1347953\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@78c6cd5c[\\r\\n  id=3\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=186\\r\\n  realpol=\\r\\n  span=40\\r\\n  spanbywheel=0\\r\\n  kmv=1347913\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@1d1777eb[\\r\\n  id=4\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=184\\r\\n  realpol=\\r\\n  span=40\\r\\n  spanbywheel=0\\r\\n  kmv=1347906\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@61c3f46b[\\r\\n  id=5\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=D046\\r\\n  realpol=\\r\\n  span=47\\r\\n  spanbywheel=0\\r\\n  kmv=1347866\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@6df2ffe[\\r\\n  id=6\\r\\n  linename=京港高铁\\r\\n  linealias=\\r\\n  direct=\\r\\n  stn=黄梅东站\\r\\n  tunnelname=\\r\\n  maoduan=\\r\\n  pol=D031\\r\\n  realpol=\\r\\n  span=47\\r\\n  spanbywheel=0\\r\\n  kmv=1347866\\r\\n  zig=-250\\r\\n  hei=5300\\r\\n  structtype=\\r\\n  latitude=\\r\\n  longitude=\\r\\n] 更新成功<br/>com.ruoyi.system.domain.FcBasetb@33ec80ed[\\r\\n  id=7\\r\\n  linename=京港高铁\\r\\n  linealias=\\r', '0', null, '2022-04-19 21:23:26');
INSERT INTO `sys_oper_log` VALUES ('122', '基础数据导入', '6', 'com.ruoyi.web.controller.fc.FcBasetbController.importData()', 'POST', '1', 'admin', null, '/fc/basetb/importData', '127.0.0.1', '内网IP', 'false', null, '1', '抱歉，导入失败！共 18 条数据格式不正确，错误如下：<br/>com.ruoyi.system.domain.FcBasetb@5144629e[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=190\r\n  realpol=\r\n  span=45\r\n  spanbywheel=0\r\n  kmv=1347953\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@7cf1195e[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=188\r\n  realpol=\r\n  span=45\r\n  spanbywheel=0\r\n  kmv=1347953\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@550adf6b[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=186\r\n  realpol=\r\n  span=40\r\n  spanbywheel=0\r\n  kmv=1347913\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@75492018[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=184\r\n  realpol=\r\n  span=40\r\n  spanbywheel=0\r\n  kmv=1347906\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@11b8371f[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=D046\r\n  realpol=\r\n  span=47\r\n  spanbywheel=0\r\n  kmv=1347866\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@1b6980b6[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=D031\r\n  realpol=\r\n  span=47\r\n  spanbywheel=0\r\n  kmv=1347866\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruoyi.system.domain.FcBasetb@bae834d[\r\n  id=<null>\r\n  linename=京港高铁\r\n  linealias=\r\n  direct=\r\n  stn=黄梅东站\r\n  tunnelname=\r\n  maoduan=\r\n  pol=182\r\n  realpol=\r\n  span=40\r\n  spanbywheel=0\r\n  kmv=1347866\r\n  zig=-250\r\n  hei=5300\r\n  structtype=\r\n  latitude=\r\n  longitude=\r\n] 已存在<br/>com.ruo', '2022-04-19 21:23:40');
INSERT INTO `sys_oper_log` VALUES ('123', '用户', '1', 'com.ruoyi.web.controller.fc.FcUserController.add()', 'POST', '1', 'admin', null, '/fc/user', '127.0.0.1', '内网IP', '{\"password\":\"123456\",\"id\":22,\"params\":{},\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:18:16');
INSERT INTO `sys_oper_log` VALUES ('124', '用户', '2', 'com.ruoyi.web.controller.fc.FcUserController.edit()', 'PUT', '1', 'admin', null, '/fc/user', '127.0.0.1', '内网IP', '{\"password\":\"admin123\",\"usertype\":1,\"id\":22,\"params\":{},\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:19:26');
INSERT INTO `sys_oper_log` VALUES ('125', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/101', '127.0.0.1', '内网IP', '{deptId=101}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', '0', null, '2022-04-19 23:33:27');
INSERT INTO `sys_oper_log` VALUES ('126', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', '0', null, '2022-04-19 23:33:32');
INSERT INTO `sys_oper_log` VALUES ('127', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"内部人员\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:37:20');
INSERT INTO `sys_oper_log` VALUES ('128', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650300761000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650300761000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:37:48');
INSERT INTO `sys_oper_log` VALUES ('129', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"管理人员\",\"leader\":\"\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:38:28');
INSERT INTO `sys_oper_log` VALUES ('130', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"管理员\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:47:08');
INSERT INTO `sys_oper_log` VALUES ('131', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:48:50');
INSERT INTO `sys_oper_log` VALUES ('132', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:48:52');
INSERT INTO `sys_oper_log` VALUES ('133', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"内部管理\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:50:52');
INSERT INTO `sys_oper_log` VALUES ('134', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"总部\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1650300761000,\"phone\":\"\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:51:36');
INSERT INTO `sys_oper_log` VALUES ('135', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"管理员\",\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:51:52');
INSERT INTO `sys_oper_log` VALUES ('136', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"普通人员\",\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:52:59');
INSERT INTO `sys_oper_log` VALUES ('137', '岗位管理', '3', 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', '1', 'admin', null, '/system/post/4,3,2', '127.0.0.1', '内网IP', '{postIds=4,3,2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:53:40');
INSERT INTO `sys_oper_log` VALUES ('138', '岗位管理', '2', 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', '1', 'admin', null, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1650300761000,\"updateBy\":\"admin\",\"postName\":\"内部员工\",\"postCode\":\"staff\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:54:15');
INSERT INTO `sys_oper_log` VALUES ('139', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1650300761000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"管理员\",\"deptId\":200,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650300761000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:54:26');
INSERT INTO `sys_oper_log` VALUES ('140', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$vDga9Kby1tutvsdyn1aJgufIuMuV/RKTSIicU8Q4HKohPCBosGGOK\",\"postIds\":[],\"nickName\":\"user000\",\"deptId\":201,\"params\":{},\"userName\":\"user000\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-19 23:55:13');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:05:01');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"system/user/index\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:05:16');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"component\":\"system/user\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:06:04');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":1,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system/user\",\"component\":\"system/user\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:06:28');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"user\",\"orderNum\":2,\"menuName\":\"用户管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system/user\",\"component\":\"system/user\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":100,\"menuType\":\"C\",\"perms\":\"system:user:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:07:01');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":6,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:07:14');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":5,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:07:24');
INSERT INTO `sys_oper_log` VALUES ('148', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":4,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:07:34');
INSERT INTO `sys_oper_log` VALUES ('149', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":3,\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/basetb\",\"component\":\"fc/basetb/index\",\"children\":[],\"createTime\":1650371087000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:07:43');
INSERT INTO `sys_oper_log` VALUES ('150', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":5,\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1650300761000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 00:07:50');
INSERT INTO `sys_oper_log` VALUES ('151', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '182.150.164.217', 'XX XX', '{\"admin\":false,\"password\":\"$2a$10$Z/mbv0lSKoAaEA7MNVrA0.765L7Gn3QesjyXzu2hDoib0.WlUXeo6\",\"postIds\":[],\"nickName\":\"user001\",\"params\":{},\"userName\":\"user001\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 22:47:30');
INSERT INTO `sys_oper_log` VALUES ('152', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '182.150.164.217', 'XX XX', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1650300761000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[100,1001,1002,1003,1004,1005,1006,1007,2003],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 22:48:08');
INSERT INTO `sys_oper_log` VALUES ('153', '参数管理', '9', 'com.ruoyi.web.controller.system.SysConfigController.refreshCache()', 'DELETE', '1', 'admin', null, '/system/config/refreshCache', '182.150.164.217', 'XX XX', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-20 22:51:49');
INSERT INTO `sys_oper_log` VALUES ('154', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"新增数据\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-21 21:04:11');
INSERT INTO `sys_oper_log` VALUES ('155', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":2,\"menuName\":\"修改数据\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-21 21:04:45');
INSERT INTO `sys_oper_log` VALUES ('156', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":3,\"menuName\":\"删除数据\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-21 21:05:04');
INSERT INTO `sys_oper_log` VALUES ('157', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":0,\"menuName\":\"数据查询\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-21 21:05:43');
INSERT INTO `sys_oper_log` VALUES ('158', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"数据导出\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-21 21:06:15');
INSERT INTO `sys_oper_log` VALUES ('159', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":5,\"menuName\":\"数据导入\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:basetb:import\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-21 21:06:34');
INSERT INTO `sys_oper_log` VALUES ('160', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$agkYaU5No2N0rJsZuU71HuECZV7So1Pb/TpK3mAoKtykN6LCEQa/W\",\"postIds\":[],\"nickName\":\"user002\",\"deptId\":100,\"params\":{},\"userName\":\"user002\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 13:26:20');
INSERT INTO `sys_oper_log` VALUES ('161', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1650691898000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"182.150.164.217\",\"email\":\"\",\"nickName\":\"user000\",\"sex\":\"0\",\"deptId\":201,\"avatar\":\"\",\"dept\":{\"deptName\":\"普通人员\",\"deptId\":201,\"orderNum\":\"2\",\"params\":{},\"parentId\":100,\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"},\"params\":{},\"userName\":\"user000\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650383712000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 13:34:45');
INSERT INTO `sys_oper_log` VALUES ('162', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1650640824000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"user001\",\"sex\":\"0\",\"avatar\":\"\",\"params\":{},\"userName\":\"user001\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650466050000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 13:34:51');
INSERT INTO `sys_oper_log` VALUES ('163', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"user002\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"总部\",\"leader\":\"\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"ancestors\":\"0\",\"status\":\"0\"},\"params\":{},\"userName\":\"user002\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650691580000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 13:34:56');
INSERT INTO `sys_oper_log` VALUES ('164', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fc_camera_type,fc_camera', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:11:50');
INSERT INTO `sys_oper_log` VALUES ('165', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650726709000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":23,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"相机名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726709000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Typeid\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"typeid\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"相机分类id\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(32)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726709000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"typeId\"}],\"businessName\":\"camera\",\"moduleName\":\"fc\",\"className\":\"FcCamera\",\"tableName\":\"fc_camera\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"相机\",\"tree\":false,\"tableComment\":\"相机\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":3,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:17:40');
INSERT INTO `sys_oper_log` VALUES ('166', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1650726710000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Typename\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"typename\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"分类名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726710000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"typeName\"},{\"capJavaField\":\"Isenable\",\"usableColumn\":false,\"columnId\":27,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"isenable\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"是否启用\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"tinyint(1) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1650726710000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"isEnable\"}],\"businessName\":\"camera_type\",\"moduleName\":\"fc\",\"className\":\"FcCameraType\",\"tableName\":\"fc_camera_type\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"相机分类\",\"tree\":false,\"tableComment\":\"相机分类\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":4,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:19:02');
INSERT INTO `sys_oper_log` VALUES ('167', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-23 23:19:27');
INSERT INTO `sys_oper_log` VALUES ('168', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:23:34');
INSERT INTO `sys_oper_log` VALUES ('169', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:25:13');
INSERT INTO `sys_oper_log` VALUES ('170', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":0,\"menuName\":\"新增\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:27:29');
INSERT INTO `sys_oper_log` VALUES ('171', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"编辑\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:28:02');
INSERT INTO `sys_oper_log` VALUES ('172', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":3,\"menuName\":\"删除\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:28:25');
INSERT INTO `sys_oper_log` VALUES ('173', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"导出\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:28:52');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":4,\"menuName\":\"导出\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera_type:export\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:28:52');
INSERT INTO `sys_oper_log` VALUES ('175', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2015', '127.0.0.1', '内网IP', '{menuId=2015}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:29:00');
INSERT INTO `sys_oper_log` VALUES ('176', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-23 23:29:50');
INSERT INTO `sys_oper_log` VALUES ('177', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":3,\"menuName\":\"相机管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera\",\"component\":\"fc/camera/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"fc:camera:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:32:41');
INSERT INTO `sys_oper_log` VALUES ('178', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":1,\"menuName\":\"新增\",\"params\":{},\"parentId\":2016,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:33:10');
INSERT INTO `sys_oper_log` VALUES ('179', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":2,\"menuName\":\"修改\",\"params\":{},\"parentId\":2016,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"fc:camera:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-23 23:33:32');
INSERT INTO `sys_oper_log` VALUES ('180', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fc_record', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-28 23:14:41');
INSERT INTO `sys_oper_log` VALUES ('181', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":28,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1651158880000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Imgkey\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"imgkey\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"图片id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1651158880000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"imgKey\"},{\"capJavaField\":\"Content\",\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"content\",\"htmlType\":\"editor\",\"edit\":true,\"query\":true,\"columnComment\":\"缺陷记录字符串\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"text\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1651158880000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"content\"},{\"capJavaField\":\"Taskpath\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"taskpath\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"任务全路径\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"text\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1651158880000,\"isEdit\":\"1\",\"tab', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-28 23:16:11');
INSERT INTO `sys_oper_log` VALUES ('182', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-04-28 23:16:15');
INSERT INTO `sys_oper_log` VALUES ('183', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"部件名称\",\"remark\":\"部件名称\",\"params\":{},\"dictType\":\"component_name\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:34:39');
INSERT INTO `sys_oper_log` VALUES ('184', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"缺陷部件\",\"remark\":\"缺陷部件\",\"params\":{},\"dictType\":\"component_defect\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:35:38');
INSERT INTO `sys_oper_log` VALUES ('185', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"缺陷类型\",\"params\":{},\"dictType\":\"defect_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:36:52');
INSERT INTO `sys_oper_log` VALUES ('186', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '182.150.134.180', 'XX XX', '{\"createBy\":\"admin\",\"dictName\":\"缺陷等级\",\"params\":{},\"dictType\":\"defect_level\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:37:10');
INSERT INTO `sys_oper_log` VALUES ('187', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:57:47');
INSERT INTO `sys_oper_log` VALUES ('188', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称2\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:57:57');
INSERT INTO `sys_oper_log` VALUES ('189', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称3\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:58:07');
INSERT INTO `sys_oper_log` VALUES ('190', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"4\",\"listClass\":\"default\",\"dictSort\":4,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称4\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:58:17');
INSERT INTO `sys_oper_log` VALUES ('191', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"5\",\"listClass\":\"default\",\"dictSort\":5,\"params\":{},\"dictType\":\"component_name\",\"dictLabel\":\"部件名称5\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:58:29');
INSERT INTO `sys_oper_log` VALUES ('192', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:58:44');
INSERT INTO `sys_oper_log` VALUES ('193', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件2\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:58:50');
INSERT INTO `sys_oper_log` VALUES ('194', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件3\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:58:57');
INSERT INTO `sys_oper_log` VALUES ('195', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"4\",\"listClass\":\"default\",\"dictSort\":4,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件4\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:59:08');
INSERT INTO `sys_oper_log` VALUES ('196', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"5\",\"listClass\":\"default\",\"dictSort\":5,\"params\":{},\"dictType\":\"component_defect\",\"dictLabel\":\"缺陷部件5\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:59:14');
INSERT INTO `sys_oper_log` VALUES ('197', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:59:31');
INSERT INTO `sys_oper_log` VALUES ('198', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型2\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:59:36');
INSERT INTO `sys_oper_log` VALUES ('199', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"3\",\"listClass\":\"default\",\"dictSort\":3,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型3\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:59:41');
INSERT INTO `sys_oper_log` VALUES ('200', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"4\",\"listClass\":\"default\",\"dictSort\":4,\"params\":{},\"dictType\":\"defect_type\",\"dictLabel\":\"缺陷类型4\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 20:59:57');
INSERT INTO `sys_oper_log` VALUES ('201', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":1,\"params\":{},\"dictType\":\"defect_level\",\"dictLabel\":\"一级\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 21:00:14');
INSERT INTO `sys_oper_log` VALUES ('202', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '182.150.134.180', 'XX XX', '{\"dictValue\":\"2\",\"listClass\":\"default\",\"dictSort\":2,\"params\":{},\"dictType\":\"defect_level\",\"dictLabel\":\"二级\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-04-29 21:00:24');
INSERT INTO `sys_oper_log` VALUES ('203', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/list\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:23:22');
INSERT INTO `sys_oper_log` VALUES ('204', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:23:57');
INSERT INTO `sys_oper_log` VALUES ('205', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:28:20');
INSERT INTO `sys_oper_log` VALUES ('206', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:34:19');
INSERT INTO `sys_oper_log` VALUES ('207', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"job\",\"orderNum\":3,\"menuName\":\"相机管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera\",\"component\":\"fc/camera\",\"children\":[],\"createTime\":1650727961000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2016,\"menuType\":\"C\",\"perms\":\"fc:camera:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:34:25');
INSERT INTO `sys_oper_log` VALUES ('208', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type/index\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:35:35');
INSERT INTO `sys_oper_log` VALUES ('209', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"fullscreen\",\"orderNum\":3,\"menuName\":\"相机分类管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/camera_type\",\"component\":\"fc/camera_type\",\"children\":[],\"createTime\":1650727414000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"fc:camera_type:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:35:43');
INSERT INTO `sys_oper_log` VALUES ('210', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '118.113.134.104', 'XX XX', '{\"visible\":\"0\",\"icon\":\"chart\",\"orderNum\":3,\"menuName\":\"基础数据管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"fc/basetb\",\"component\":\"fc/basetb\",\"children\":[],\"createTime\":1650371087000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:35:56');
INSERT INTO `sys_oper_log` VALUES ('211', '相机分类', '2', 'com.ruoyi.web.controller.fc.FcCameraTypeController.edit()', 'PUT', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":4,\"params\":{},\"typename\":\"吊悬\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:44:42');
INSERT INTO `sys_oper_log` VALUES ('212', '相机分类', '2', 'com.ruoyi.web.controller.fc.FcCameraTypeController.edit()', 'PUT', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":1,\"params\":{},\"typename\":\"支持装置\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:45:12');
INSERT INTO `sys_oper_log` VALUES ('213', '相机分类', '1', 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":5,\"params\":{},\"typename\":\"杆号相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:50:04');
INSERT INTO `sys_oper_log` VALUES ('214', '相机分类', '1', 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":6,\"params\":{},\"typename\":\"附加悬挂\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:50:14');
INSERT INTO `sys_oper_log` VALUES ('215', '相机分类', '1', 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":7,\"params\":{},\"typename\":\"平腕臂\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:50:27');
INSERT INTO `sys_oper_log` VALUES ('216', '相机分类', '1', 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":8,\"params\":{},\"typename\":\"斜腕臂\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:50:39');
INSERT INTO `sys_oper_log` VALUES ('217', '相机分类', '1', 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":9,\"params\":{},\"typename\":\"全局相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:50:53');
INSERT INTO `sys_oper_log` VALUES ('218', '相机分类', '1', 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":10,\"params\":{},\"typename\":\"中间局部相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:51:09');
INSERT INTO `sys_oper_log` VALUES ('219', '相机分类', '1', 'com.ruoyi.web.controller.fc.FcCameraTypeController.add()', 'POST', '1', 'admin', null, '/fc/camera_type', '118.113.134.104', 'XX XX', '{\"isenable\":1,\"id\":11,\"params\":{},\"typename\":\"承力索底座相机\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:51:27');
INSERT INTO `sys_oper_log` VALUES ('220', '相机', '2', 'com.ruoyi.web.controller.fc.FcCameraController.edit()', 'PUT', '1', 'admin', null, '/fc/camera', '118.113.134.104', 'XX XX', '{\"direct\":1,\"name\":\"正面吊柱底座相机左\",\"typeName\":\"支持装置\",\"typeid\":2,\"id\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:54:14');
INSERT INTO `sys_oper_log` VALUES ('221', '相机', '2', 'com.ruoyi.web.controller.fc.FcCameraController.edit()', 'PUT', '1', 'admin', null, '/fc/camera', '118.113.134.104', 'XX XX', '{\"direct\":1,\"name\":\"正面吊柱底座相机右\",\"typeName\":\"支持装置\",\"typeid\":2,\"id\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-25 21:54:19');
INSERT INTO `sys_oper_log` VALUES ('222', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '182.150.164.181', 'XX XX', 'fc_scan_status', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-30 22:54:12');
INSERT INTO `sys_oper_log` VALUES ('223', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '182.150.164.181', 'XX XX', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":38,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11) unsigned zerofill\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653922452000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Scanedpoles\",\"usableColumn\":false,\"columnId\":39,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"scanedpoles\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"浏览过的杆号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"mediumtext\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653922452000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"scanedPoles\"},{\"capJavaField\":\"Defectpoles\",\"usableColumn\":false,\"columnId\":40,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"defectpoles\",\"htmlType\":\"textarea\",\"edit\":true,\"query\":true,\"columnComment\":\"有缺陷的杆号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"mediumtext\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653922452000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"defectPoles\"},{\"capJavaField\":\"Userid\",\"usableColumn\":false,\"columnId\":41,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"userid\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"用户id\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-05-30 22:55:47');
INSERT INTO `sys_oper_log` VALUES ('224', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-05-30 23:02:21');
INSERT INTO `sys_oper_log` VALUES ('225', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15623547896\",\"admin\":false,\"remark\":\"无\",\"password\":\"$2a$10$NoYoOdd44JtD6iltw8eD/OwjPlKhj/B1tIXjc.U0mYHshW2cpONSq\",\"postIds\":[1],\"nickName\":\"悍匪\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"悍匪\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-06-21 11:29:03');
INSERT INTO `sys_oper_log` VALUES ('226', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'DELETE', '1', 'admin', null, '/monitor/online/cb1a951f-d16e-48a5-96c4-f70ea9f63ee0', '127.0.0.1', '内网IP', '{tokenId=cb1a951f-d16e-48a5-96c4-f70ea9f63ee0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-06-21 11:31:21');
INSERT INTO `sys_oper_log` VALUES ('227', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1650300761000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"xln4ccj\",\"sex\":\"2\",\"deptId\":200,\"avatar\":\"\",\"dept\":{\"deptName\":\"管理员\",\"deptId\":200,\"orderNum\":\"1\",\"params\":{},\"parentId\":100,\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1650300761000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-06-21 11:36:11');
INSERT INTO `sys_oper_log` VALUES ('228', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-06-21 11:36:30');
INSERT INTO `sys_oper_log` VALUES ('229', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13564852659\",\"admin\":false,\"password\":\"$2a$10$/kXLyebPZ8h6BbTGZu9H2ux8VGC9S/x4aOPbQ52gvUL9eWKLZCOTa\",\"postIds\":[1],\"nickName\":\"狂徒\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"狂徒\",\"userId\":104,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-06-21 16:14:36');
INSERT INTO `sys_oper_log` VALUES ('230', '登录日志', '9', 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'DELETE', '1', 'admin', null, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-06-21 16:36:35');
INSERT INTO `sys_oper_log` VALUES ('231', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '222.212.88.7', 'XX XX', 'fc_thumb', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-15 17:29:18');
INSERT INTO `sys_oper_log` VALUES ('232', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '222.212.88.7', 'XX XX', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":51,\"isIncrement\":\"1\",\"increment\":true,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1657877358000,\"tableId\":7,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Edittime\",\"usableColumn\":false,\"columnId\":52,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"edittime\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"生成的时间\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(0)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1657877358000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"editTime\"},{\"capJavaField\":\"Filepath\",\"usableColumn\":false,\"columnId\":53,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"filepath\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"db文件路径\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1657877358000,\"isEdit\":\"1\",\"tableId\":7,\"pk\":false,\"columnName\":\"filePath\"}],\"businessName\":\"thumb\",\"moduleName\":\"fc\",\"className\":\"FcThumb\",\"tableName\":\"fc_thumb\",\"crud\":true,\"options\":\"{}\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.system\",\"functionName\":\"缩略图\",\"tree\":false,\"tableComment\":\"缩略图\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":7,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-15 17:30:11');
INSERT INTO `sys_oper_log` VALUES ('233', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', null, '0', null, '2022-07-15 18:05:43');
INSERT INTO `sys_oper_log` VALUES ('234', '定时任务', '1', 'com.ruoyi.quartz.controller.SysJobController.add()', 'POST', '1', 'admin', null, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"缩略图后台任务\",\"concurrent\":\"1\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"0/10 * * * * ?\",\"jobId\":4,\"createBy\":\"admin\",\"nextValidTime\":1658151930000,\"invokeTarget\":\"thumbTask.initThumbTask()\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:45:30');
INSERT INTO `sys_oper_log` VALUES ('235', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', '1', 'admin', null, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:46:05');
INSERT INTO `sys_oper_log` VALUES ('236', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', '1', 'admin', null, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:46:51');
INSERT INTO `sys_oper_log` VALUES ('237', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', '1', 'admin', null, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"缩略图后台任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"0/10 * * * * ?\",\"jobId\":4,\"createBy\":\"admin\",\"nextValidTime\":1658152050000,\"createTime\":1658151929000,\"updateBy\":\"admin\",\"invokeTarget\":\"thumbTask.initThumbTask()\",\"misfirePolicy\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:47:24');
INSERT INTO `sys_oper_log` VALUES ('238', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', '1', 'admin', null, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:47:27');
INSERT INTO `sys_oper_log` VALUES ('239', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', '1', 'admin', null, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:47:29');
INSERT INTO `sys_oper_log` VALUES ('240', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', '1', 'admin', null, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"缩略图后台任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"* * * * * ?\",\"jobId\":4,\"createBy\":\"admin\",\"nextValidTime\":1658152076000,\"createTime\":1658151929000,\"updateBy\":\"admin\",\"invokeTarget\":\"thumbTask.initThumbTask()\",\"misfirePolicy\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:47:56');
INSERT INTO `sys_oper_log` VALUES ('241', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', '1', 'admin', null, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:48:09');
INSERT INTO `sys_oper_log` VALUES ('242', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', '1', 'admin', null, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"缩略图后台任务\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"SYSTEM\",\"params\":{},\"cronExpression\":\"* * * * * ?\",\"jobId\":4,\"createBy\":\"admin\",\"nextValidTime\":1658152377000,\"createTime\":1658151929000,\"updateBy\":\"admin\",\"invokeTarget\":\"thumbTask.initThumbTask()\",\"misfirePolicy\":\"2\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:52:57');
INSERT INTO `sys_oper_log` VALUES ('243', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', '1', 'admin', null, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:53:39');
INSERT INTO `sys_oper_log` VALUES ('244', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', '1', 'admin', null, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":4,\"misfirePolicy\":\"0\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2022-07-18 21:55:25');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'staff', '内部员工', '1', '0', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-19 23:54:15', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2022-04-19 00:52:41', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '1', '1', '0', '0', 'admin', '2022-04-19 00:52:41', 'admin', '2022-04-20 22:48:08', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '2003');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) COLLATE utf8_bin DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) COLLATE utf8_bin DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) COLLATE utf8_bin DEFAULT '' COMMENT '手机号码',
  `sex` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '密码',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '200', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-07-18 21:33:55', 'admin', '2022-04-19 00:52:41', '', '2022-07-18 21:33:56', '管理员');
INSERT INTO `sys_user` VALUES ('2', '200', 'ry', 'xln4ccj', '00', '', '', '2', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2022-04-19 00:52:41', 'admin', '2022-04-19 00:52:41', 'admin', '2022-06-21 11:36:11', '测试员');
INSERT INTO `sys_user` VALUES ('100', '201', 'user000', 'user000', '00', '', '', '0', '', '$2a$10$vDga9Kby1tutvsdyn1aJgufIuMuV/RKTSIicU8Q4HKohPCBosGGOK', '0', '0', '171.221.129.155', '2022-07-18 22:14:10', 'admin', '2022-04-19 23:55:12', 'admin', '2022-07-18 22:14:09', null);
INSERT INTO `sys_user` VALUES ('101', null, 'user001', 'user001', '00', '', '', '0', '', '$2a$10$Z/mbv0lSKoAaEA7MNVrA0.765L7Gn3QesjyXzu2hDoib0.WlUXeo6', '0', '0', '127.0.0.1', '2022-07-17 23:39:35', 'admin', '2022-04-20 22:47:30', 'admin', '2022-07-17 23:39:34', null);
INSERT INTO `sys_user` VALUES ('102', '100', 'user002', 'user002', '00', '', '', '0', '', '$2a$10$agkYaU5No2N0rJsZuU71HuECZV7So1Pb/TpK3mAoKtykN6LCEQa/W', '0', '0', '171.221.129.171', '2022-07-12 22:31:23', 'admin', '2022-04-23 13:26:20', 'admin', '2022-07-12 22:31:23', null);
INSERT INTO `sys_user` VALUES ('103', '100', '悍匪', '悍匪', '00', '', '15623547896', '0', '', '$2a$10$NoYoOdd44JtD6iltw8eD/OwjPlKhj/B1tIXjc.U0mYHshW2cpONSq', '0', '0', '127.0.0.1', '2022-06-21 11:34:18', 'admin', '2022-06-21 11:29:02', '', '2022-06-21 11:34:17', '无');
INSERT INTO `sys_user` VALUES ('104', '100', '狂徒', '狂徒', '00', '', '13564852659', '0', '', '$2a$10$/kXLyebPZ8h6BbTGZu9H2ux8VGC9S/x4aOPbQ52gvUL9eWKLZCOTa', '0', '0', '', null, 'admin', '2022-06-21 16:14:36', '', null, null);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('103', '1');
INSERT INTO `sys_user_post` VALUES ('104', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('100', '2');
INSERT INTO `sys_user_role` VALUES ('101', '2');
INSERT INTO `sys_user_role` VALUES ('102', '2');
INSERT INTO `sys_user_role` VALUES ('103', '2');

-- ----------------------------
-- Table structure for test_aaa
-- ----------------------------
DROP TABLE IF EXISTS `test_aaa`;
CREATE TABLE `test_aaa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `bbb` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of test_aaa
-- ----------------------------
INSERT INTO `test_aaa` VALUES ('1', 'hahha1', '18', 'hehehe1');
INSERT INTO `test_aaa` VALUES ('2', 'hahha2', '19', 'hehehe2');
INSERT INTO `test_aaa` VALUES ('3', 'hahha3', '19', 'hehehe3');
INSERT INTO `test_aaa` VALUES ('4', 'hahha4', '20', 'hehehe4');
INSERT INTO `test_aaa` VALUES ('5', 'hahha5', '20', 'hehehe5');
INSERT INTO `test_aaa` VALUES ('6', 'hahha6', '20', 'hehehe6');
INSERT INTO `test_aaa` VALUES ('7', 'hahha7', '21', 'hehehe7');
INSERT INTO `test_aaa` VALUES ('8', 'hahha8', '21', 'hehehe8');
INSERT INTO `test_aaa` VALUES ('9', 'hahha9', '21', 'hehehe9');
INSERT INTO `test_aaa` VALUES ('10', 'hahha10', '21', 'hehehe10');
