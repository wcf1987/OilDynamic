/*
Navicat MySQL Data Transfer

Source Server         : Oil
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : cbm05039002

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-09-02 23:26:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_algorithmgraph
-- ----------------------------
DROP TABLE IF EXISTS `t_algorithmgraph`;
CREATE TABLE `t_algorithmgraph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CycleID` int(11) DEFAULT NULL,
  `graphType` int(11) DEFAULT NULL,
  `graphname` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_algorithmgraph
-- ----------------------------

-- ----------------------------
-- Table structure for t_algorithminput
-- ----------------------------
DROP TABLE IF EXISTS `t_algorithminput`;
CREATE TABLE `t_algorithminput` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CycleID` int(11) DEFAULT NULL,
  `ParamID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_algorithminput
-- ----------------------------

-- ----------------------------
-- Table structure for t_algorithmoutput
-- ----------------------------
DROP TABLE IF EXISTS `t_algorithmoutput`;
CREATE TABLE `t_algorithmoutput` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CycleID` int(11) DEFAULT NULL,
  `ParamID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_algorithmoutput
-- ----------------------------

-- ----------------------------
-- Table structure for t_algorithmscycle
-- ----------------------------
DROP TABLE IF EXISTS `t_algorithmscycle`;
CREATE TABLE `t_algorithmscycle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `InputID` int(11) DEFAULT NULL,
  `PlanID` int(11) DEFAULT NULL,
  `OutputID` int(11) DEFAULT NULL,
  `AuthorID` int(11) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `LastUpdateTime` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `FilePath` varchar(255) DEFAULT NULL,
  `ClassName` varchar(255) DEFAULT NULL,
  `alg_type` int(11) DEFAULT NULL,
  `structFileIn` varchar(255) DEFAULT NULL,
  `structFileOut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_algorithmscycle
-- ----------------------------
INSERT INTO `t_algorithmscycle` VALUES ('0', '0', '0', '0', '1', '1', '2014-08-02 11:10:13', '2014-08-02 11:10:13', '井底流压计算', 'simulation.jar', 'cn.edu.cup.zhoushiwei.calculation.Test', '1', '井底流压计算输入表.xls', '井底流压计算结果.xls');
INSERT INTO `t_algorithmscycle` VALUES ('1', '0', '0', '0', '1', '1', '2014-08-02 11:10:13', '2014-08-02 11:10:13', '单气相管网水力计算', 'simulation.jar', 'cn.edu.cup.zhoushiwei.calculation.Test', '1', '单相管网水力计算(不考虑热力)输入表.xls', '单相管网水力计算结果(不考虑热力).xls');
INSERT INTO `t_algorithmscycle` VALUES ('2', '0', '0', '0', '1', '1', '2014-08-02 11:10:13', '2014-08-02 11:10:13', '单气相管网热力计算', 'simulation.jar', 'cn.edu.cup.zhoushiwei.calculation.Test', '1', '单相管网水力计算(考虑热力)输入表.xls', '单相管网水力计算结果(考虑热力).xls');
INSERT INTO `t_algorithmscycle` VALUES ('3', '0', '0', '0', '1', '1', '2014-08-02 11:10:13', '2014-08-02 11:10:13', '气固两相管网水力计算', 'simulation.jar', 'cn.edu.cup.zhoushiwei.calculation.Test', '1', '气固两相管网水力计算输入表.xls', '气固两相管网水力计算结果.xls');
INSERT INTO `t_algorithmscycle` VALUES ('4', '0', '0', '0', '1', '1', '2014-08-02 11:10:13', '2014-08-02 11:10:13', '气液两相管网水力计算', 'simulation.jar', 'cn.edu.cup.zhoushiwei.calculation.Test', '1', '气液两相管网水力计算输入表.xls', '气液两相管网水力计算结果.xls');
INSERT INTO `t_algorithmscycle` VALUES ('5', '0', '0', '0', '1', '1', '2014-03-28 10:47:45', '2014-08-25 10:47:45', '自动计算', 'simulation.jar', 'cn.edu.cup.zhoushiwei.calculation.Test', '1', null, null);
INSERT INTO `t_algorithmscycle` VALUES ('6', '0', '0', '0', '1', '1', '2014-03-31 16:04:44', '2014-08-25 16:04:44', '系统扩建设计', 'CBMOPTIMIZATION_J01.jar', 'cbmopt.Test', '2', '系统扩建设计输入表.xls', '系统扩建设计结果.xls');
INSERT INTO `t_algorithmscycle` VALUES ('7', '0', '0', '0', '1', '1', '2014-07-22 22:01:14', '2014-08-25 22:01:14', '整体设计', 'CBMOPTIMIZATION_J01.jar', 'cbmopt.Test', '2', '整体设计输入表.xls', '整体设计结果.xls');
INSERT INTO `t_algorithmscycle` VALUES ('8', '0', '0', '0', '1', '1', '2014-08-02 11:10:13', '2014-08-25 21:10:13', '布局设计', 'CBMOPTIMIZATION_J01.jar', 'cbmopt.Test', '2', '布局设计输入表.xls', '布局设计结果.xls');
INSERT INTO `t_algorithmscycle` VALUES ('9', '0', '0', '0', '1', '1', '2014-08-25 21:27:08', '2014-08-25 21:27:12', '参数设计', 'CBMOPTIMIZATION_J01.jar', 'cbmopt.Test', '2', '参数设计输入表.xls', '参数设计结果.xls');

-- ----------------------------
-- Table structure for t_algrole
-- ----------------------------
DROP TABLE IF EXISTS `t_algrole`;
CREATE TABLE `t_algrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `algorithm_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `other` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_algrole
-- ----------------------------
INSERT INTO `t_algrole` VALUES ('1', '1', '17', '0', '0');

-- ----------------------------
-- Table structure for t_basicnode
-- ----------------------------
DROP TABLE IF EXISTS `t_basicnode`;
CREATE TABLE `t_basicnode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` int(11) DEFAULT NULL,
  `IconFile` varchar(255) DEFAULT NULL,
  `TypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_basicnode
-- ----------------------------
INSERT INTO `t_basicnode` VALUES ('0', '0', 'guandao.png', '连接');
INSERT INTO `t_basicnode` VALUES ('6', '10', 'zhongyangchulichang.png', '中央气站');
INSERT INTO `t_basicnode` VALUES ('10', '1', 'jiqizengyazhan.png', '集气站');
INSERT INTO `t_basicnode` VALUES ('11', '2', 'qijing.png', '气井');

-- ----------------------------
-- Table structure for t_calchis
-- ----------------------------
DROP TABLE IF EXISTS `t_calchis`;
CREATE TABLE `t_calchis` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_ID` int(11) DEFAULT NULL,
  `Algorith_ID` int(11) DEFAULT NULL,
  `Calc_StartTime` datetime DEFAULT NULL,
  `Calc_EndTime` datetime DEFAULT NULL,
  `status` int(50) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `filein` varchar(255) DEFAULT NULL,
  `fileout` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_calchis
-- ----------------------------
INSERT INTO `t_calchis` VALUES ('1', '176', '0', '2014-11-25 21:35:31', '2014-11-25 21:35:32', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('2', '176', '0', '2014-11-25 21:36:10', '2014-11-25 21:36:10', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('3', '176', '0', '2014-11-25 21:36:25', '2014-11-25 21:36:26', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('4', '176', '0', '2014-11-25 21:36:30', '2014-11-25 21:36:31', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('5', '177', '1', '2014-11-25 21:39:59', '2014-11-25 21:45:32', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('6', '176', '0', '2014-11-25 21:42:41', '2014-11-25 21:42:41', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('7', '176', '0', '2014-11-25 21:44:01', '2014-11-25 21:44:01', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('8', '176', '0', '2014-11-25 22:06:43', '2014-11-25 22:06:44', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('9', '176', '0', '2014-11-25 22:07:12', '2014-11-25 22:07:13', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('10', '176', '0', '2014-11-25 22:10:02', '2014-11-25 22:10:02', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('11', '176', '0', '2014-11-25 22:10:58', '2014-11-25 22:10:59', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('12', '176', '0', '2014-11-25 22:11:28', '2014-11-25 22:11:29', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('13', '176', '0', '2014-11-25 22:12:27', '2014-11-25 22:12:27', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('14', '176', '0', '2014-11-25 22:14:26', '2014-11-25 22:14:27', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('15', '176', '0', '2014-11-25 22:15:04', '2014-11-25 22:15:04', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('16', '176', '0', '2014-11-25 22:16:47', '2014-11-25 22:16:47', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('17', '176', '0', '2014-11-25 22:18:26', '2014-11-25 22:18:27', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('18', '176', '0', '2014-11-25 22:19:05', '2014-11-25 22:19:05', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('19', '176', '0', '2014-11-25 22:19:47', '2014-11-25 22:19:47', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('20', '176', '0', '2014-11-25 22:20:15', '2014-11-25 22:20:15', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('21', '176', '0', '2014-11-25 22:20:54', '2014-11-25 22:20:54', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('22', '176', '0', '2014-11-25 22:21:25', '2014-11-25 22:21:25', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('23', '176', '0', '2014-11-25 22:34:23', '2014-11-25 22:34:23', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('24', '176', '0', '2014-11-25 22:35:19', '2014-11-25 22:35:19', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('25', '176', '0', '2014-11-25 22:59:45', '2014-11-25 22:59:46', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('26', '176', '0', '2014-11-29 14:14:36', '2014-11-29 14:14:37', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('27', '176', '0', '2014-11-30 20:55:20', '2014-11-30 20:55:55', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('28', '176', '0', '2014-11-30 20:57:10', '2014-11-30 20:57:15', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('29', '179', '9', '2014-12-02 20:37:22', '2014-12-02 20:40:20', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('30', '180', '1', '2014-12-02 20:37:54', '2014-12-02 20:43:13', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('31', '179', '9', '2014-12-02 20:51:59', '2014-12-02 20:55:05', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('32', '180', '1', '2014-12-02 20:52:35', '2014-12-02 20:58:09', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('33', '181', '3', '2014-12-02 20:54:45', '2014-12-02 20:55:05', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('34', '182', '6', '2014-12-02 21:05:38', '2014-12-02 21:05:38', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('35', '183', '8', '2014-12-02 21:07:11', '2014-12-02 21:07:12', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('36', '184', '7', '2014-12-02 21:12:07', '2014-12-02 21:12:08', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('37', '184', '7', '2014-12-02 21:12:36', '2014-12-02 21:12:38', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('38', '179', '9', '2014-12-02 21:12:51', '2014-12-02 21:15:54', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('39', '185', '8', '2014-12-02 21:32:31', '2014-12-02 21:32:32', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('40', '182', '6', '2014-12-02 21:33:33', '2014-12-02 21:33:33', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('41', '186', '7', '2014-12-02 21:34:34', '2014-12-02 21:34:42', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('42', '187', '7', '2014-12-02 21:37:22', '2014-12-02 21:37:29', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('43', '188', '8', '2014-12-02 21:39:17', '2014-12-02 21:39:19', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('44', '189', '6', '2014-12-02 21:45:15', '2014-12-02 21:45:16', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('45', '189', '6', '2014-12-02 21:45:39', '2014-12-02 21:46:25', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('46', '190', '8', '2014-12-02 21:46:41', '2014-12-02 21:46:42', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('47', '191', '8', '2014-12-02 21:48:33', '2014-12-02 21:48:34', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('48', '192', '8', '2014-12-02 21:52:23', '2014-12-02 21:52:25', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('49', '192', '8', '2014-12-02 21:53:21', '2014-12-02 21:53:23', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('50', '193', '8', '2014-12-02 21:55:02', '2014-12-02 21:55:04', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('51', '193', '8', '2014-12-02 21:55:38', '2014-12-02 21:55:39', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('52', '193', '8', '2014-12-02 21:56:03', '2014-12-02 21:56:04', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('53', '194', '8', '2014-12-02 21:57:59', '2014-12-02 22:01:55', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('54', '195', '6', '2014-12-02 22:03:07', '2014-12-02 22:03:07', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('55', '195', '6', '2014-12-02 22:10:40', '2014-12-02 22:10:40', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('56', '187', '7', '2014-12-02 22:11:43', '2014-12-02 22:11:51', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('57', '179', '9', '2014-12-02 22:12:23', '2014-12-02 22:15:28', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('58', '180', '1', '2014-12-02 22:14:48', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('59', '196', '8', '2014-12-06 17:05:25', '2014-12-06 17:05:26', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('60', '196', '8', '2014-12-06 17:06:19', '2014-12-06 17:06:21', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('61', '197', '9', '2014-12-06 17:07:10', '2014-12-06 17:10:49', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('62', '198', '7', '2014-12-06 17:07:46', '2014-12-06 17:16:41', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('63', '199', '6', '2014-12-06 17:10:27', '2014-12-06 17:10:27', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('64', '197', '9', '2014-12-06 17:21:16', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('65', '197', '9', '2014-12-06 17:24:15', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('66', '197', '9', '2014-12-06 17:31:41', '2014-12-06 17:35:49', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('67', '198', '7', '2014-12-06 17:32:03', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('68', '196', '8', '2014-12-06 17:32:09', '2014-12-06 17:32:11', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('69', '198', '7', '2014-12-06 17:37:33', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('70', '198', '7', '2014-12-06 17:49:11', '2014-12-06 17:58:15', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('71', '198', '7', '2014-12-06 17:59:32', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('72', '197', '9', '2014-12-06 18:00:58', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('73', '198', '7', '2014-12-06 18:04:40', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('74', '196', '8', '2014-12-06 18:06:39', '2014-12-06 18:06:41', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('75', '197', '9', '2014-12-06 18:07:04', '2014-12-06 18:10:42', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('76', '198', '7', '2014-12-06 18:07:11', '2014-12-06 18:15:55', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('77', '197', '9', '2014-12-06 18:21:34', '2014-12-06 18:24:29', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('78', '200', '8', '2014-12-09 21:08:17', '2014-12-09 21:08:19', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('79', '180', '1', '2014-12-14 18:57:16', '2014-12-14 18:58:12', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('80', '180', '1', '2014-12-14 18:59:53', '2014-12-14 19:00:49', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('81', '205', '2', '2014-12-14 19:48:03', '2014-12-14 19:49:49', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('82', '176', '0', '2014-12-14 21:41:45', '2014-12-14 21:41:46', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('83', '200', '8', '2014-12-17 21:55:32', '2014-12-17 21:55:35', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('84', '207', '8', '2014-12-17 22:14:32', '2014-12-17 22:14:35', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('85', '211', '1', '2014-12-25 22:19:05', '2014-12-25 22:20:21', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('86', '213', '8', '2014-12-25 22:22:29', '2014-12-25 22:22:31', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('87', '211', '1', '2014-12-25 22:27:34', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('88', '214', '3', '2014-12-25 22:28:09', '2014-12-25 22:28:35', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('89', '216', '2', '2014-12-25 22:32:58', '2014-12-25 22:33:18', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('90', '214', '3', '2014-12-25 22:33:19', '2014-12-25 22:33:39', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('91', '217', '4', '2014-12-25 22:34:06', '2014-12-25 22:37:44', '1', 'java.lang.Exception: 计算不收敛，请重新输入.', null, null);
INSERT INTO `t_calchis` VALUES ('92', '211', '1', '2014-12-25 22:34:35', '2014-12-25 22:34:59', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('93', '214', '3', '2014-12-25 22:34:57', '2014-12-25 22:35:00', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('94', '218', '0', '2014-12-25 22:35:29', '2014-12-25 22:35:29', '1', 'java.lang.NumberFormatException: empty String', null, null);
INSERT INTO `t_calchis` VALUES ('95', '218', '0', '2014-12-25 22:35:48', '2014-12-25 22:35:49', '1', 'java.lang.NumberFormatException: empty String', null, null);
INSERT INTO `t_calchis` VALUES ('96', '218', '0', '2014-12-25 22:36:47', '2014-12-25 22:36:47', '1', 'java.lang.NumberFormatException: empty String', null, null);
INSERT INTO `t_calchis` VALUES ('97', '219', '0', '2014-12-25 22:44:41', '2014-12-25 22:44:41', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('98', '217', '4', '2014-12-25 22:45:03', '2014-12-25 22:48:42', '1', 'java.lang.Exception: 计算不收敛，请重新输入.', null, null);
INSERT INTO `t_calchis` VALUES ('99', '214', '3', '2014-12-25 22:47:02', '2014-12-25 22:47:05', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('100', '220', '1', '2014-12-25 22:47:36', '2014-12-25 22:47:43', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('101', '221', '2', '2014-12-25 22:47:54', '2014-12-25 22:48:24', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('102', '222', '0', '2014-12-25 22:50:00', '2014-12-25 22:50:00', '1', 'java.lang.NumberFormatException: empty String', null, null);
INSERT INTO `t_calchis` VALUES ('103', '222', '0', '2014-12-25 22:50:12', '2014-12-25 22:50:12', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('104', '223', '1', '2014-12-25 23:01:05', '2014-12-25 23:01:11', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('105', '224', '4', '2014-12-25 23:04:39', '2014-12-25 23:08:27', '1', 'java.lang.Exception: 计算不收敛，请重新输入.', null, null);
INSERT INTO `t_calchis` VALUES ('106', '225', '8', '2014-12-25 23:06:56', '2014-12-25 23:06:58', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('107', '225', '8', '2014-12-25 23:07:09', '2014-12-25 23:07:12', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('108', '226', '9', '2014-12-25 23:07:40', '2014-12-25 23:07:41', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('109', '226', '9', '2014-12-25 23:08:17', '2014-12-25 23:08:19', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('110', '227', '7', '2014-12-25 23:08:59', '2014-12-25 23:09:08', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('111', '199', '6', '2014-12-25 23:22:05', '2014-12-25 23:22:05', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('112', '228', '6', '2014-12-25 23:22:27', '2014-12-25 23:22:28', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('113', '226', '9', '2014-12-25 23:23:25', '2014-12-25 23:23:27', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('114', '226', '9', '2014-12-25 23:24:29', '2014-12-25 23:24:31', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('115', '229', '9', '2014-12-25 23:38:13', '2014-12-25 23:41:23', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('116', '230', '1', '2014-12-25 23:39:43', '2014-12-25 23:39:50', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('117', '230', '1', '2014-12-25 23:50:13', '2014-12-25 23:50:19', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('118', '233', '1', '2014-12-27 10:59:21', '2014-12-27 10:59:44', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('119', '234', '1', '2014-12-27 10:59:56', '2014-12-27 11:00:09', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('120', '235', '2', '2014-12-27 11:00:11', '2014-12-27 11:00:38', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('121', '236', '2', '2014-12-27 11:01:25', '2014-12-27 11:01:43', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('122', '214', '3', '2014-12-27 11:02:01', '2014-12-27 11:02:42', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('123', '224', '4', '2014-12-27 11:02:54', '2014-12-27 11:05:08', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('124', '237', '4', '2014-12-27 11:05:55', '2014-12-27 11:06:00', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('125', '237', '4', '2014-12-27 11:06:31', '2014-12-27 11:06:35', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('126', '237', '4', '2014-12-27 11:06:52', '2014-12-27 11:09:05', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('127', '214', '3', '2014-12-27 11:10:02', '2014-12-27 11:10:22', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('128', '214', '3', '2014-12-27 11:10:35', '2014-12-27 11:11:16', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('129', '235', '2', '2014-12-27 11:11:48', '2014-12-27 11:12:15', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('130', '235', '2', '2014-12-27 11:13:02', '2014-12-27 11:13:30', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('131', '214', '3', '2014-12-27 11:14:26', '2014-12-27 11:14:47', '1', 'java.lang.Exception: 计算不收敛，请重新输入', null, null);
INSERT INTO `t_calchis` VALUES ('132', '214', '3', '2014-12-27 12:03:02', '2014-12-27 12:03:20', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('133', '214', '3', '2014-12-27 12:04:19', '2014-12-27 12:04:41', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('134', '238', '1', '2014-12-30 21:58:58', '2014-12-30 22:02:02', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('135', '239', '1', '2014-12-30 22:00:31', null, null, null, null, null);
INSERT INTO `t_calchis` VALUES ('136', '241', '8', '2015-02-09 21:39:41', '2015-02-09 21:39:43', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('137', '242', '1', '2015-06-07 00:15:15', '2015-06-07 00:59:17', '1', '成功运行', null, null);
INSERT INTO `t_calchis` VALUES ('138', '243', '8', '2015-06-07 00:25:40', '2015-06-07 00:25:42', '1', '成功运行', null, null);

-- ----------------------------
-- Table structure for t_calchis_log
-- ----------------------------
DROP TABLE IF EXISTS `t_calchis_log`;
CREATE TABLE `t_calchis_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_ID` int(11) DEFAULT NULL,
  `par_id` int(11) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `logtime` datetime DEFAULT NULL,
  `calchis_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_calchis_log
-- ----------------------------
INSERT INTO `t_calchis_log` VALUES ('1', '176', null, '正在运行', '2014-11-25 21:35:31', '1');
INSERT INTO `t_calchis_log` VALUES ('2', '176', null, '成功运行', '2014-11-25 21:35:32', '1');
INSERT INTO `t_calchis_log` VALUES ('3', '176', null, '正在运行', '2014-11-25 21:36:10', '2');
INSERT INTO `t_calchis_log` VALUES ('4', '176', null, '成功运行', '2014-11-25 21:36:10', '2');
INSERT INTO `t_calchis_log` VALUES ('5', '176', null, '正在运行', '2014-11-25 21:36:25', '3');
INSERT INTO `t_calchis_log` VALUES ('6', '176', null, '成功运行', '2014-11-25 21:36:26', '3');
INSERT INTO `t_calchis_log` VALUES ('7', '176', null, '正在运行', '2014-11-25 21:36:30', '4');
INSERT INTO `t_calchis_log` VALUES ('8', '176', null, '成功运行', '2014-11-25 21:36:31', '4');
INSERT INTO `t_calchis_log` VALUES ('9', '177', null, '正在运行', '2014-11-25 21:39:59', '5');
INSERT INTO `t_calchis_log` VALUES ('10', '177', null, '阻尼系数为0.9999999999999999时的迭代次数为32;', '2014-11-25 21:40:02', '5');
INSERT INTO `t_calchis_log` VALUES ('11', '177', null, '计算不收敛.', '2014-11-25 21:40:02', '5');
INSERT INTO `t_calchis_log` VALUES ('12', '177', null, '阻尼系数为0.9989999999999999时的迭代次数为35;', '2014-11-25 21:40:12', '5');
INSERT INTO `t_calchis_log` VALUES ('13', '177', null, '计算不收敛.', '2014-11-25 21:40:12', '5');
INSERT INTO `t_calchis_log` VALUES ('14', '177', null, '阻尼系数为0.9979999999999999时的迭代次数为6;', '2014-11-25 21:40:12', '5');
INSERT INTO `t_calchis_log` VALUES ('15', '177', null, '计算不收敛.', '2014-11-25 21:40:12', '5');
INSERT INTO `t_calchis_log` VALUES ('16', '177', null, '阻尼系数为0.9969999999999999时的迭代次数为36;', '2014-11-25 21:40:15', '5');
INSERT INTO `t_calchis_log` VALUES ('17', '177', null, '计算不收敛.', '2014-11-25 21:40:15', '5');
INSERT INTO `t_calchis_log` VALUES ('18', '177', null, '阻尼系数为0.9959999999999999时的迭代次数为12;', '2014-11-25 21:40:20', '5');
INSERT INTO `t_calchis_log` VALUES ('19', '177', null, '计算不收敛.', '2014-11-25 21:40:20', '5');
INSERT INTO `t_calchis_log` VALUES ('20', '177', null, '阻尼系数为0.9949999999999999时的迭代次数为24;', '2014-11-25 21:40:22', '5');
INSERT INTO `t_calchis_log` VALUES ('21', '177', null, '计算不收敛.', '2014-11-25 21:40:22', '5');
INSERT INTO `t_calchis_log` VALUES ('22', '177', null, '阻尼系数为0.9939999999999999时的迭代次数为8;', '2014-11-25 21:40:23', '5');
INSERT INTO `t_calchis_log` VALUES ('23', '177', null, '计算不收敛.', '2014-11-25 21:40:23', '5');
INSERT INTO `t_calchis_log` VALUES ('24', '177', null, '阻尼系数为0.9929999999999999时的迭代次数为42;', '2014-11-25 21:40:25', '5');
INSERT INTO `t_calchis_log` VALUES ('25', '177', null, '计算不收敛.', '2014-11-25 21:40:25', '5');
INSERT INTO `t_calchis_log` VALUES ('26', '177', null, '阻尼系数为0.9919999999999999时的迭代次数为62;', '2014-11-25 21:40:29', '5');
INSERT INTO `t_calchis_log` VALUES ('27', '177', null, '计算不收敛.', '2014-11-25 21:40:29', '5');
INSERT INTO `t_calchis_log` VALUES ('28', '177', null, '阻尼系数为0.9909999999999999时的迭代次数为301;', '2014-11-25 21:40:44', '5');
INSERT INTO `t_calchis_log` VALUES ('29', '177', null, '计算不收敛.', '2014-11-25 21:40:44', '5');
INSERT INTO `t_calchis_log` VALUES ('30', '177', null, '阻尼系数为0.9899999999999999时的迭代次数为301;', '2014-11-25 21:41:00', '5');
INSERT INTO `t_calchis_log` VALUES ('31', '177', null, '计算不收敛.', '2014-11-25 21:41:00', '5');
INSERT INTO `t_calchis_log` VALUES ('32', '177', null, '阻尼系数为0.9889999999999999时的迭代次数为34;', '2014-11-25 21:41:02', '5');
INSERT INTO `t_calchis_log` VALUES ('33', '177', null, '计算不收敛.', '2014-11-25 21:41:02', '5');
INSERT INTO `t_calchis_log` VALUES ('34', '177', null, '阻尼系数为0.9879999999999999时的迭代次数为301;', '2014-11-25 21:41:17', '5');
INSERT INTO `t_calchis_log` VALUES ('35', '177', null, '计算不收敛.', '2014-11-25 21:41:17', '5');
INSERT INTO `t_calchis_log` VALUES ('36', '177', null, '阻尼系数为0.9869999999999999时的迭代次数为22;', '2014-11-25 21:41:20', '5');
INSERT INTO `t_calchis_log` VALUES ('37', '177', null, '计算不收敛.', '2014-11-25 21:41:20', '5');
INSERT INTO `t_calchis_log` VALUES ('38', '177', null, '阻尼系数为0.9859999999999999时的迭代次数为74;', '2014-11-25 21:41:25', '5');
INSERT INTO `t_calchis_log` VALUES ('39', '177', null, '计算不收敛.', '2014-11-25 21:41:25', '5');
INSERT INTO `t_calchis_log` VALUES ('40', '177', null, '阻尼系数为0.9849999999999999时的迭代次数为74;', '2014-11-25 21:41:30', '5');
INSERT INTO `t_calchis_log` VALUES ('41', '177', null, '计算不收敛.', '2014-11-25 21:41:30', '5');
INSERT INTO `t_calchis_log` VALUES ('42', '177', null, '阻尼系数为0.9839999999999999时的迭代次数为133;', '2014-11-25 21:41:44', '5');
INSERT INTO `t_calchis_log` VALUES ('43', '177', null, '计算不收敛.', '2014-11-25 21:41:44', '5');
INSERT INTO `t_calchis_log` VALUES ('44', '177', null, '阻尼系数为0.9829999999999999时的迭代次数为132;', '2014-11-25 21:41:51', '5');
INSERT INTO `t_calchis_log` VALUES ('45', '177', null, '计算不收敛.', '2014-11-25 21:41:51', '5');
INSERT INTO `t_calchis_log` VALUES ('46', '177', null, '阻尼系数为0.9819999999999999时的迭代次数为301;', '2014-11-25 21:42:05', '5');
INSERT INTO `t_calchis_log` VALUES ('47', '177', null, '计算不收敛.', '2014-11-25 21:42:05', '5');
INSERT INTO `t_calchis_log` VALUES ('48', '177', null, '阻尼系数为0.9809999999999999时的迭代次数为301;', '2014-11-25 21:42:20', '5');
INSERT INTO `t_calchis_log` VALUES ('49', '177', null, '计算不收敛.', '2014-11-25 21:42:20', '5');
INSERT INTO `t_calchis_log` VALUES ('50', '177', null, '阻尼系数为0.9799999999999999时的迭代次数为301;', '2014-11-25 21:42:35', '5');
INSERT INTO `t_calchis_log` VALUES ('51', '177', null, '计算不收敛.', '2014-11-25 21:42:35', '5');
INSERT INTO `t_calchis_log` VALUES ('52', '176', null, '正在运行', '2014-11-25 21:42:41', '6');
INSERT INTO `t_calchis_log` VALUES ('53', '176', null, '成功运行', '2014-11-25 21:42:41', '6');
INSERT INTO `t_calchis_log` VALUES ('54', '176', null, '阻尼系数为0.9789999999999999时的迭代次数为301;', '2014-11-25 21:42:50', '6');
INSERT INTO `t_calchis_log` VALUES ('55', '176', null, '计算不收敛.', '2014-11-25 21:42:50', '6');
INSERT INTO `t_calchis_log` VALUES ('56', '176', null, '阻尼系数为0.9779999999999999时的迭代次数为301;', '2014-11-25 21:43:05', '6');
INSERT INTO `t_calchis_log` VALUES ('57', '176', null, '计算不收敛.', '2014-11-25 21:43:05', '6');
INSERT INTO `t_calchis_log` VALUES ('58', '176', null, '阻尼系数为0.9769999999999999时的迭代次数为301;', '2014-11-25 21:43:20', '6');
INSERT INTO `t_calchis_log` VALUES ('59', '176', null, '计算不收敛.', '2014-11-25 21:43:20', '6');
INSERT INTO `t_calchis_log` VALUES ('60', '176', null, '阻尼系数为0.9759999999999999时的迭代次数为301;', '2014-11-25 21:43:34', '6');
INSERT INTO `t_calchis_log` VALUES ('61', '176', null, '计算不收敛.', '2014-11-25 21:43:34', '6');
INSERT INTO `t_calchis_log` VALUES ('62', '176', null, '阻尼系数为0.9749999999999999时的迭代次数为301;', '2014-11-25 21:43:49', '6');
INSERT INTO `t_calchis_log` VALUES ('63', '176', null, '计算不收敛.', '2014-11-25 21:43:49', '6');
INSERT INTO `t_calchis_log` VALUES ('64', '176', null, '正在运行', '2014-11-25 21:44:01', '7');
INSERT INTO `t_calchis_log` VALUES ('65', '176', null, '成功运行', '2014-11-25 21:44:01', '7');
INSERT INTO `t_calchis_log` VALUES ('66', '176', null, '阻尼系数为0.9739999999999999时的迭代次数为301;', '2014-11-25 21:44:04', '7');
INSERT INTO `t_calchis_log` VALUES ('67', '176', null, '计算不收敛.', '2014-11-25 21:44:04', '7');
INSERT INTO `t_calchis_log` VALUES ('68', '176', null, '阻尼系数为0.9729999999999999时的迭代次数为301;', '2014-11-25 21:44:19', '7');
INSERT INTO `t_calchis_log` VALUES ('69', '176', null, '计算不收敛.', '2014-11-25 21:44:19', '7');
INSERT INTO `t_calchis_log` VALUES ('70', '176', null, '阻尼系数为0.9719999999999999时的迭代次数为301;', '2014-11-25 21:44:34', '7');
INSERT INTO `t_calchis_log` VALUES ('71', '176', null, '计算不收敛.', '2014-11-25 21:44:34', '7');
INSERT INTO `t_calchis_log` VALUES ('72', '176', null, '阻尼系数为0.9709999999999999时的迭代次数为301;', '2014-11-25 21:44:49', '7');
INSERT INTO `t_calchis_log` VALUES ('73', '176', null, '计算不收敛.', '2014-11-25 21:44:49', '7');
INSERT INTO `t_calchis_log` VALUES ('74', '176', null, '阻尼系数为0.9699999999999999时的迭代次数为301;', '2014-11-25 21:45:03', '7');
INSERT INTO `t_calchis_log` VALUES ('75', '176', null, '计算不收敛.', '2014-11-25 21:45:03', '7');
INSERT INTO `t_calchis_log` VALUES ('76', '176', null, '阻尼系数为0.9689999999999999时的迭代次数为301;', '2014-11-25 21:45:17', '7');
INSERT INTO `t_calchis_log` VALUES ('77', '176', null, '计算不收敛.', '2014-11-25 21:45:17', '7');
INSERT INTO `t_calchis_log` VALUES ('78', '176', null, '阻尼系数为0.9679999999999999时的迭代次数为290;', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('79', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('80', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为4;', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('81', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('82', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为3;', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('83', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('84', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为4;', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('85', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('86', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为3;', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('87', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('88', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为4;', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('89', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:31', '7');
INSERT INTO `t_calchis_log` VALUES ('90', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为3;', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('91', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('92', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为3;', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('93', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('94', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为4;', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('95', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('96', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为3;', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('97', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('98', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为3;', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('99', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('100', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为3;', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('101', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('102', '176', null, '阻尼系数为0.9999999999999999时的迭代次数为2;', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('103', '176', null, '计算收敛，停止计算.', '2014-11-25 21:45:32', '7');
INSERT INTO `t_calchis_log` VALUES ('104', '177', null, '成功运行', '2014-11-25 21:45:32', '5');
INSERT INTO `t_calchis_log` VALUES ('105', '176', null, '正在运行', '2014-11-25 22:06:43', '8');
INSERT INTO `t_calchis_log` VALUES ('106', '176', null, '成功运行', '2014-11-25 22:06:44', '8');
INSERT INTO `t_calchis_log` VALUES ('107', '176', null, '正在运行', '2014-11-25 22:07:12', '9');
INSERT INTO `t_calchis_log` VALUES ('108', '176', null, '成功运行', '2014-11-25 22:07:13', '9');
INSERT INTO `t_calchis_log` VALUES ('109', '176', null, '正在运行', '2014-11-25 22:10:02', '10');
INSERT INTO `t_calchis_log` VALUES ('110', '176', null, '成功运行', '2014-11-25 22:10:02', '10');
INSERT INTO `t_calchis_log` VALUES ('111', '176', null, '正在运行', '2014-11-25 22:10:58', '11');
INSERT INTO `t_calchis_log` VALUES ('112', '176', null, '成功运行', '2014-11-25 22:10:59', '11');
INSERT INTO `t_calchis_log` VALUES ('113', '176', null, '正在运行', '2014-11-25 22:11:28', '12');
INSERT INTO `t_calchis_log` VALUES ('114', '176', null, '成功运行', '2014-11-25 22:11:29', '12');
INSERT INTO `t_calchis_log` VALUES ('115', '176', null, '正在运行', '2014-11-25 22:12:27', '13');
INSERT INTO `t_calchis_log` VALUES ('116', '176', null, '成功运行', '2014-11-25 22:12:27', '13');
INSERT INTO `t_calchis_log` VALUES ('117', '176', null, '正在运行', '2014-11-25 22:14:26', '14');
INSERT INTO `t_calchis_log` VALUES ('118', '176', null, '成功运行', '2014-11-25 22:14:27', '14');
INSERT INTO `t_calchis_log` VALUES ('119', '176', null, '正在运行', '2014-11-25 22:15:04', '15');
INSERT INTO `t_calchis_log` VALUES ('120', '176', null, '成功运行', '2014-11-25 22:15:04', '15');
INSERT INTO `t_calchis_log` VALUES ('121', '176', null, '正在运行', '2014-11-25 22:16:47', '16');
INSERT INTO `t_calchis_log` VALUES ('122', '176', null, '成功运行', '2014-11-25 22:16:47', '16');
INSERT INTO `t_calchis_log` VALUES ('123', '176', null, '正在运行', '2014-11-25 22:18:26', '17');
INSERT INTO `t_calchis_log` VALUES ('124', '176', null, '成功运行', '2014-11-25 22:18:27', '17');
INSERT INTO `t_calchis_log` VALUES ('125', '176', null, '正在运行', '2014-11-25 22:19:05', '18');
INSERT INTO `t_calchis_log` VALUES ('126', '176', null, '成功运行', '2014-11-25 22:19:05', '18');
INSERT INTO `t_calchis_log` VALUES ('127', '176', null, '正在运行', '2014-11-25 22:19:47', '19');
INSERT INTO `t_calchis_log` VALUES ('128', '176', null, '成功运行', '2014-11-25 22:19:47', '19');
INSERT INTO `t_calchis_log` VALUES ('129', '176', null, '正在运行', '2014-11-25 22:20:15', '20');
INSERT INTO `t_calchis_log` VALUES ('130', '176', null, '成功运行', '2014-11-25 22:20:15', '20');
INSERT INTO `t_calchis_log` VALUES ('131', '176', null, '正在运行', '2014-11-25 22:20:54', '21');
INSERT INTO `t_calchis_log` VALUES ('132', '176', null, '成功运行', '2014-11-25 22:20:54', '21');
INSERT INTO `t_calchis_log` VALUES ('133', '176', null, '正在运行', '2014-11-25 22:21:25', '22');
INSERT INTO `t_calchis_log` VALUES ('134', '176', null, '成功运行', '2014-11-25 22:21:25', '22');
INSERT INTO `t_calchis_log` VALUES ('135', '176', null, '正在运行', '2014-11-25 22:34:23', '23');
INSERT INTO `t_calchis_log` VALUES ('136', '176', null, '成功运行', '2014-11-25 22:34:23', '23');
INSERT INTO `t_calchis_log` VALUES ('137', '176', null, '正在运行', '2014-11-25 22:35:19', '24');
INSERT INTO `t_calchis_log` VALUES ('138', '176', null, '成功运行', '2014-11-25 22:35:19', '24');
INSERT INTO `t_calchis_log` VALUES ('139', '176', null, '正在运行', '2014-11-25 22:59:45', '25');
INSERT INTO `t_calchis_log` VALUES ('140', '176', null, '成功运行', '2014-11-25 22:59:46', '25');
INSERT INTO `t_calchis_log` VALUES ('141', '176', null, '正在运行', '2014-11-29 14:14:36', '26');
INSERT INTO `t_calchis_log` VALUES ('142', '176', null, '成功运行', '2014-11-29 14:14:37', '26');
INSERT INTO `t_calchis_log` VALUES ('143', '176', null, '正在运行', '2014-11-30 20:55:20', '27');
INSERT INTO `t_calchis_log` VALUES ('144', '176', null, '成功运行', '2014-11-30 20:55:21', '27');
INSERT INTO `t_calchis_log` VALUES ('145', '176', null, '正在运行', '2014-11-30 20:57:10', '28');
INSERT INTO `t_calchis_log` VALUES ('146', '176', null, '成功运行', '2014-11-30 20:57:11', '28');
INSERT INTO `t_calchis_log` VALUES ('147', '179', null, '正在运行', '2014-12-02 20:37:22', '29');
INSERT INTO `t_calchis_log` VALUES ('148', '180', null, '正在运行', '2014-12-02 20:37:54', '30');
INSERT INTO `t_calchis_log` VALUES ('149', '179', null, '成功运行', '2014-12-02 20:40:20', '29');
INSERT INTO `t_calchis_log` VALUES ('150', '180', null, '成功运行', '2014-12-02 20:43:13', '30');
INSERT INTO `t_calchis_log` VALUES ('151', '179', null, '正在运行', '2014-12-02 20:51:59', '31');
INSERT INTO `t_calchis_log` VALUES ('152', '180', null, '正在运行', '2014-12-02 20:52:35', '32');
INSERT INTO `t_calchis_log` VALUES ('153', '181', null, '正在运行', '2014-12-02 20:54:45', '33');
INSERT INTO `t_calchis_log` VALUES ('154', '181', null, '成功运行', '2014-12-02 20:55:05', '33');
INSERT INTO `t_calchis_log` VALUES ('155', '179', null, '成功运行', '2014-12-02 20:55:05', '31');
INSERT INTO `t_calchis_log` VALUES ('156', '180', null, '成功运行', '2014-12-02 20:58:09', '32');
INSERT INTO `t_calchis_log` VALUES ('157', '182', null, '正在运行', '2014-12-02 21:05:38', '34');
INSERT INTO `t_calchis_log` VALUES ('158', '182', null, '成功运行', '2014-12-02 21:05:38', '34');
INSERT INTO `t_calchis_log` VALUES ('159', '183', null, '正在运行', '2014-12-02 21:07:11', '35');
INSERT INTO `t_calchis_log` VALUES ('160', '183', null, '成功运行', '2014-12-02 21:07:12', '35');
INSERT INTO `t_calchis_log` VALUES ('161', '184', null, '正在运行', '2014-12-02 21:12:07', '36');
INSERT INTO `t_calchis_log` VALUES ('162', '184', null, '成功运行', '2014-12-02 21:12:08', '36');
INSERT INTO `t_calchis_log` VALUES ('163', '184', null, '正在运行', '2014-12-02 21:12:36', '37');
INSERT INTO `t_calchis_log` VALUES ('164', '184', null, '成功运行', '2014-12-02 21:12:38', '37');
INSERT INTO `t_calchis_log` VALUES ('165', '179', null, '正在运行', '2014-12-02 21:12:51', '38');
INSERT INTO `t_calchis_log` VALUES ('166', '179', null, '成功运行', '2014-12-02 21:15:54', '38');
INSERT INTO `t_calchis_log` VALUES ('167', '185', null, '正在运行', '2014-12-02 21:32:31', '39');
INSERT INTO `t_calchis_log` VALUES ('168', '185', null, '成功运行', '2014-12-02 21:32:32', '39');
INSERT INTO `t_calchis_log` VALUES ('169', '182', null, '正在运行', '2014-12-02 21:33:33', '40');
INSERT INTO `t_calchis_log` VALUES ('170', '182', null, '成功运行', '2014-12-02 21:33:33', '40');
INSERT INTO `t_calchis_log` VALUES ('171', '186', null, '正在运行', '2014-12-02 21:34:34', '41');
INSERT INTO `t_calchis_log` VALUES ('172', '186', null, '成功运行', '2014-12-02 21:34:42', '41');
INSERT INTO `t_calchis_log` VALUES ('173', '187', null, '正在运行', '2014-12-02 21:37:22', '42');
INSERT INTO `t_calchis_log` VALUES ('174', '187', null, '成功运行', '2014-12-02 21:37:29', '42');
INSERT INTO `t_calchis_log` VALUES ('175', '188', null, '正在运行', '2014-12-02 21:39:17', '43');
INSERT INTO `t_calchis_log` VALUES ('176', '188', null, '成功运行', '2014-12-02 21:39:19', '43');
INSERT INTO `t_calchis_log` VALUES ('177', '189', null, '正在运行', '2014-12-02 21:45:15', '44');
INSERT INTO `t_calchis_log` VALUES ('178', '189', null, '成功运行', '2014-12-02 21:45:16', '44');
INSERT INTO `t_calchis_log` VALUES ('179', '189', null, '正在运行', '2014-12-02 21:45:39', '45');
INSERT INTO `t_calchis_log` VALUES ('180', '189', null, '成功运行', '2014-12-02 21:46:25', '45');
INSERT INTO `t_calchis_log` VALUES ('181', '190', null, '正在运行', '2014-12-02 21:46:41', '46');
INSERT INTO `t_calchis_log` VALUES ('182', '190', null, '成功运行', '2014-12-02 21:46:42', '46');
INSERT INTO `t_calchis_log` VALUES ('183', '191', null, '正在运行', '2014-12-02 21:48:33', '47');
INSERT INTO `t_calchis_log` VALUES ('184', '191', null, '成功运行', '2014-12-02 21:48:34', '47');
INSERT INTO `t_calchis_log` VALUES ('185', '192', null, '正在运行', '2014-12-02 21:52:23', '48');
INSERT INTO `t_calchis_log` VALUES ('186', '192', null, '成功运行', '2014-12-02 21:52:25', '48');
INSERT INTO `t_calchis_log` VALUES ('187', '192', null, '正在运行', '2014-12-02 21:53:21', '49');
INSERT INTO `t_calchis_log` VALUES ('188', '192', null, '成功运行', '2014-12-02 21:53:23', '49');
INSERT INTO `t_calchis_log` VALUES ('189', '193', null, '正在运行', '2014-12-02 21:55:02', '50');
INSERT INTO `t_calchis_log` VALUES ('190', '193', null, '成功运行', '2014-12-02 21:55:04', '50');
INSERT INTO `t_calchis_log` VALUES ('191', '193', null, '正在运行', '2014-12-02 21:55:38', '51');
INSERT INTO `t_calchis_log` VALUES ('192', '193', null, '成功运行', '2014-12-02 21:55:39', '51');
INSERT INTO `t_calchis_log` VALUES ('193', '193', null, '正在运行', '2014-12-02 21:56:03', '52');
INSERT INTO `t_calchis_log` VALUES ('194', '193', null, '成功运行', '2014-12-02 21:56:04', '52');
INSERT INTO `t_calchis_log` VALUES ('195', '194', null, '正在运行', '2014-12-02 21:57:59', '53');
INSERT INTO `t_calchis_log` VALUES ('196', '194', null, '成功运行', '2014-12-02 22:01:55', '53');
INSERT INTO `t_calchis_log` VALUES ('197', '195', null, '正在运行', '2014-12-02 22:03:07', '54');
INSERT INTO `t_calchis_log` VALUES ('198', '195', null, '成功运行', '2014-12-02 22:03:07', '54');
INSERT INTO `t_calchis_log` VALUES ('199', '195', null, '正在运行', '2014-12-02 22:10:40', '55');
INSERT INTO `t_calchis_log` VALUES ('200', '195', null, '成功运行', '2014-12-02 22:10:40', '55');
INSERT INTO `t_calchis_log` VALUES ('201', '187', null, '正在运行', '2014-12-02 22:11:43', '56');
INSERT INTO `t_calchis_log` VALUES ('202', '187', null, '成功运行', '2014-12-02 22:11:51', '56');
INSERT INTO `t_calchis_log` VALUES ('203', '179', null, '正在运行', '2014-12-02 22:12:23', '57');
INSERT INTO `t_calchis_log` VALUES ('204', '180', null, '正在运行', '2014-12-02 22:14:48', '58');
INSERT INTO `t_calchis_log` VALUES ('205', '179', null, '成功运行', '2014-12-02 22:15:28', '57');
INSERT INTO `t_calchis_log` VALUES ('206', '196', null, '正在运行', '2014-12-06 17:05:25', '59');
INSERT INTO `t_calchis_log` VALUES ('207', '196', null, '成功运行', '2014-12-06 17:05:26', '59');
INSERT INTO `t_calchis_log` VALUES ('208', '196', null, '正在运行', '2014-12-06 17:06:19', '60');
INSERT INTO `t_calchis_log` VALUES ('209', '196', null, '成功运行', '2014-12-06 17:06:21', '60');
INSERT INTO `t_calchis_log` VALUES ('210', '197', null, '正在运行', '2014-12-06 17:07:10', '61');
INSERT INTO `t_calchis_log` VALUES ('211', '198', null, '正在运行', '2014-12-06 17:07:46', '62');
INSERT INTO `t_calchis_log` VALUES ('212', '199', null, '正在运行', '2014-12-06 17:10:27', '63');
INSERT INTO `t_calchis_log` VALUES ('213', '199', null, '成功运行', '2014-12-06 17:10:27', '63');
INSERT INTO `t_calchis_log` VALUES ('214', '197', null, '成功运行', '2014-12-06 17:10:49', '61');
INSERT INTO `t_calchis_log` VALUES ('215', '198', null, '成功运行', '2014-12-06 17:16:41', '62');
INSERT INTO `t_calchis_log` VALUES ('216', '197', null, '正在运行', '2014-12-06 17:21:16', '64');
INSERT INTO `t_calchis_log` VALUES ('217', '197', null, '正在运行', '2014-12-06 17:24:15', '65');
INSERT INTO `t_calchis_log` VALUES ('218', '197', null, '正在运行', '2014-12-06 17:31:41', '66');
INSERT INTO `t_calchis_log` VALUES ('219', '198', null, '正在运行', '2014-12-06 17:32:03', '67');
INSERT INTO `t_calchis_log` VALUES ('220', '196', null, '正在运行', '2014-12-06 17:32:09', '68');
INSERT INTO `t_calchis_log` VALUES ('221', '196', null, '成功运行', '2014-12-06 17:32:11', '68');
INSERT INTO `t_calchis_log` VALUES ('222', '197', null, '成功运行', '2014-12-06 17:35:49', '66');
INSERT INTO `t_calchis_log` VALUES ('223', '198', null, '正在运行', '2014-12-06 17:37:33', '69');
INSERT INTO `t_calchis_log` VALUES ('224', '198', null, '正在运行', '2014-12-06 17:49:11', '70');
INSERT INTO `t_calchis_log` VALUES ('225', '198', null, '成功运行', '2014-12-06 17:58:15', '70');
INSERT INTO `t_calchis_log` VALUES ('226', '198', null, '正在运行', '2014-12-06 17:59:32', '71');
INSERT INTO `t_calchis_log` VALUES ('227', '197', null, '正在运行', '2014-12-06 18:00:58', '72');
INSERT INTO `t_calchis_log` VALUES ('228', '198', null, '正在运行', '2014-12-06 18:04:40', '73');
INSERT INTO `t_calchis_log` VALUES ('229', '196', null, '正在运行', '2014-12-06 18:06:39', '74');
INSERT INTO `t_calchis_log` VALUES ('230', '196', null, '成功运行', '2014-12-06 18:06:41', '74');
INSERT INTO `t_calchis_log` VALUES ('231', '197', null, '正在运行', '2014-12-06 18:07:04', '75');
INSERT INTO `t_calchis_log` VALUES ('232', '198', null, '正在运行', '2014-12-06 18:07:11', '76');
INSERT INTO `t_calchis_log` VALUES ('233', '197', null, '成功运行', '2014-12-06 18:10:42', '75');
INSERT INTO `t_calchis_log` VALUES ('234', '198', null, '成功运行', '2014-12-06 18:15:55', '76');
INSERT INTO `t_calchis_log` VALUES ('235', '197', null, '正在运行', '2014-12-06 18:21:34', '77');
INSERT INTO `t_calchis_log` VALUES ('236', '197', null, '成功运行', '2014-12-06 18:24:29', '77');
INSERT INTO `t_calchis_log` VALUES ('237', '200', null, '正在运行', '2014-12-09 21:08:17', '78');
INSERT INTO `t_calchis_log` VALUES ('238', '200', null, '成功运行', '2014-12-09 21:08:19', '78');
INSERT INTO `t_calchis_log` VALUES ('239', '180', null, '正在运行', '2014-12-14 18:57:16', '79');
INSERT INTO `t_calchis_log` VALUES ('240', '180', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-14 18:58:12', '79');
INSERT INTO `t_calchis_log` VALUES ('241', '180', null, '正在运行', '2014-12-14 18:59:53', '80');
INSERT INTO `t_calchis_log` VALUES ('242', '180', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-14 19:00:49', '80');
INSERT INTO `t_calchis_log` VALUES ('243', '205', null, '正在运行', '2014-12-14 19:48:03', '81');
INSERT INTO `t_calchis_log` VALUES ('244', '205', null, '成功运行', '2014-12-14 19:49:49', '81');
INSERT INTO `t_calchis_log` VALUES ('245', '176', null, '正在运行', '2014-12-14 21:41:45', '82');
INSERT INTO `t_calchis_log` VALUES ('246', '176', null, '成功运行', '2014-12-14 21:41:46', '82');
INSERT INTO `t_calchis_log` VALUES ('247', '200', null, '正在运行', '2014-12-17 21:55:32', '83');
INSERT INTO `t_calchis_log` VALUES ('248', '200', null, '成功运行', '2014-12-17 21:55:35', '83');
INSERT INTO `t_calchis_log` VALUES ('249', '207', null, '正在运行', '2014-12-17 22:14:32', '84');
INSERT INTO `t_calchis_log` VALUES ('250', '207', null, '成功运行', '2014-12-17 22:14:35', '84');
INSERT INTO `t_calchis_log` VALUES ('251', '211', null, '正在运行', '2014-12-25 22:19:05', '85');
INSERT INTO `t_calchis_log` VALUES ('252', '211', null, '成功运行', '2014-12-25 22:20:21', '85');
INSERT INTO `t_calchis_log` VALUES ('253', '213', null, '正在运行', '2014-12-25 22:22:29', '86');
INSERT INTO `t_calchis_log` VALUES ('254', '213', null, '成功运行', '2014-12-25 22:22:31', '86');
INSERT INTO `t_calchis_log` VALUES ('255', '211', null, '正在运行', '2014-12-25 22:27:34', '87');
INSERT INTO `t_calchis_log` VALUES ('256', '214', null, '正在运行', '2014-12-25 22:28:09', '88');
INSERT INTO `t_calchis_log` VALUES ('257', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 22:28:35', '88');
INSERT INTO `t_calchis_log` VALUES ('258', '216', null, '正在运行', '2014-12-25 22:32:58', '89');
INSERT INTO `t_calchis_log` VALUES ('259', '216', null, '成功运行', '2014-12-25 22:33:18', '89');
INSERT INTO `t_calchis_log` VALUES ('260', '214', null, '正在运行', '2014-12-25 22:33:19', '90');
INSERT INTO `t_calchis_log` VALUES ('261', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 22:33:39', '90');
INSERT INTO `t_calchis_log` VALUES ('262', '217', null, '正在运行', '2014-12-25 22:34:06', '91');
INSERT INTO `t_calchis_log` VALUES ('263', '211', null, '正在运行', '2014-12-25 22:34:35', '92');
INSERT INTO `t_calchis_log` VALUES ('264', '214', null, '正在运行', '2014-12-25 22:34:57', '93');
INSERT INTO `t_calchis_log` VALUES ('265', '211', null, '成功运行', '2014-12-25 22:34:59', '92');
INSERT INTO `t_calchis_log` VALUES ('266', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 22:35:00', '93');
INSERT INTO `t_calchis_log` VALUES ('267', '218', null, '正在运行', '2014-12-25 22:35:29', '94');
INSERT INTO `t_calchis_log` VALUES ('268', '218', null, 'java.lang.NumberFormatException: empty String', '2014-12-25 22:35:29', '94');
INSERT INTO `t_calchis_log` VALUES ('269', '218', null, '正在运行', '2014-12-25 22:35:48', '95');
INSERT INTO `t_calchis_log` VALUES ('270', '218', null, 'java.lang.NumberFormatException: empty String', '2014-12-25 22:35:49', '95');
INSERT INTO `t_calchis_log` VALUES ('271', '218', null, '正在运行', '2014-12-25 22:36:47', '96');
INSERT INTO `t_calchis_log` VALUES ('272', '218', null, 'java.lang.NumberFormatException: empty String', '2014-12-25 22:36:47', '96');
INSERT INTO `t_calchis_log` VALUES ('273', '217', null, 'java.lang.Exception: 计算不收敛，请重新输入.', '2014-12-25 22:37:44', '91');
INSERT INTO `t_calchis_log` VALUES ('274', '219', null, '正在运行', '2014-12-25 22:44:41', '97');
INSERT INTO `t_calchis_log` VALUES ('275', '219', null, '成功运行', '2014-12-25 22:44:41', '97');
INSERT INTO `t_calchis_log` VALUES ('276', '217', null, '正在运行', '2014-12-25 22:45:03', '98');
INSERT INTO `t_calchis_log` VALUES ('277', '214', null, '正在运行', '2014-12-25 22:47:02', '99');
INSERT INTO `t_calchis_log` VALUES ('278', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 22:47:05', '99');
INSERT INTO `t_calchis_log` VALUES ('279', '220', null, '正在运行', '2014-12-25 22:47:36', '100');
INSERT INTO `t_calchis_log` VALUES ('280', '220', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 22:47:43', '100');
INSERT INTO `t_calchis_log` VALUES ('281', '221', null, '正在运行', '2014-12-25 22:47:54', '101');
INSERT INTO `t_calchis_log` VALUES ('282', '221', null, '成功运行', '2014-12-25 22:48:24', '101');
INSERT INTO `t_calchis_log` VALUES ('283', '217', null, 'java.lang.Exception: 计算不收敛，请重新输入.', '2014-12-25 22:48:42', '98');
INSERT INTO `t_calchis_log` VALUES ('284', '222', null, '正在运行', '2014-12-25 22:50:00', '102');
INSERT INTO `t_calchis_log` VALUES ('285', '222', null, 'java.lang.NumberFormatException: empty String', '2014-12-25 22:50:00', '102');
INSERT INTO `t_calchis_log` VALUES ('286', '222', null, '正在运行', '2014-12-25 22:50:12', '103');
INSERT INTO `t_calchis_log` VALUES ('287', '222', null, '成功运行', '2014-12-25 22:50:12', '103');
INSERT INTO `t_calchis_log` VALUES ('288', '223', null, '正在运行', '2014-12-25 23:01:05', '104');
INSERT INTO `t_calchis_log` VALUES ('289', '223', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 23:01:11', '104');
INSERT INTO `t_calchis_log` VALUES ('290', '224', null, '正在运行', '2014-12-25 23:04:39', '105');
INSERT INTO `t_calchis_log` VALUES ('291', '225', null, '正在运行', '2014-12-25 23:06:56', '106');
INSERT INTO `t_calchis_log` VALUES ('292', '225', null, '成功运行', '2014-12-25 23:06:58', '106');
INSERT INTO `t_calchis_log` VALUES ('293', '225', null, '正在运行', '2014-12-25 23:07:09', '107');
INSERT INTO `t_calchis_log` VALUES ('294', '225', null, '成功运行', '2014-12-25 23:07:12', '107');
INSERT INTO `t_calchis_log` VALUES ('295', '226', null, '正在运行', '2014-12-25 23:07:40', '108');
INSERT INTO `t_calchis_log` VALUES ('296', '226', null, '成功运行', '2014-12-25 23:07:41', '108');
INSERT INTO `t_calchis_log` VALUES ('297', '226', null, '正在运行', '2014-12-25 23:08:18', '109');
INSERT INTO `t_calchis_log` VALUES ('298', '226', null, '成功运行', '2014-12-25 23:08:19', '109');
INSERT INTO `t_calchis_log` VALUES ('299', '224', null, 'java.lang.Exception: 计算不收敛，请重新输入.', '2014-12-25 23:08:27', '105');
INSERT INTO `t_calchis_log` VALUES ('300', '227', null, '正在运行', '2014-12-25 23:08:59', '110');
INSERT INTO `t_calchis_log` VALUES ('301', '227', null, '成功运行', '2014-12-25 23:09:08', '110');
INSERT INTO `t_calchis_log` VALUES ('302', '199', null, '正在运行', '2014-12-25 23:22:05', '111');
INSERT INTO `t_calchis_log` VALUES ('303', '199', null, '成功运行', '2014-12-25 23:22:05', '111');
INSERT INTO `t_calchis_log` VALUES ('304', '228', null, '正在运行', '2014-12-25 23:22:27', '112');
INSERT INTO `t_calchis_log` VALUES ('305', '228', null, '成功运行', '2014-12-25 23:22:28', '112');
INSERT INTO `t_calchis_log` VALUES ('306', '226', null, '正在运行', '2014-12-25 23:23:25', '113');
INSERT INTO `t_calchis_log` VALUES ('307', '226', null, '成功运行', '2014-12-25 23:23:27', '113');
INSERT INTO `t_calchis_log` VALUES ('308', '226', null, '正在运行', '2014-12-25 23:24:29', '114');
INSERT INTO `t_calchis_log` VALUES ('309', '226', null, '成功运行', '2014-12-25 23:24:31', '114');
INSERT INTO `t_calchis_log` VALUES ('310', '229', null, '正在运行', '2014-12-25 23:38:13', '115');
INSERT INTO `t_calchis_log` VALUES ('311', '230', null, '正在运行', '2014-12-25 23:39:43', '116');
INSERT INTO `t_calchis_log` VALUES ('312', '230', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 23:39:50', '116');
INSERT INTO `t_calchis_log` VALUES ('313', '229', null, '成功运行', '2014-12-25 23:41:23', '115');
INSERT INTO `t_calchis_log` VALUES ('314', '230', null, '正在运行', '2014-12-25 23:50:13', '117');
INSERT INTO `t_calchis_log` VALUES ('315', '230', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-25 23:50:19', '117');
INSERT INTO `t_calchis_log` VALUES ('316', '233', null, '正在运行', '2014-12-27 10:59:21', '118');
INSERT INTO `t_calchis_log` VALUES ('317', '233', null, '成功运行', '2014-12-27 10:59:44', '118');
INSERT INTO `t_calchis_log` VALUES ('318', '234', null, '正在运行', '2014-12-27 10:59:56', '119');
INSERT INTO `t_calchis_log` VALUES ('319', '234', null, '成功运行', '2014-12-27 11:00:09', '119');
INSERT INTO `t_calchis_log` VALUES ('320', '235', null, '正在运行', '2014-12-27 11:00:11', '120');
INSERT INTO `t_calchis_log` VALUES ('321', '235', null, '成功运行', '2014-12-27 11:00:38', '120');
INSERT INTO `t_calchis_log` VALUES ('322', '236', null, '正在运行', '2014-12-27 11:01:25', '121');
INSERT INTO `t_calchis_log` VALUES ('323', '236', null, '成功运行', '2014-12-27 11:01:43', '121');
INSERT INTO `t_calchis_log` VALUES ('324', '214', null, '正在运行', '2014-12-27 11:02:01', '122');
INSERT INTO `t_calchis_log` VALUES ('325', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-27 11:02:42', '122');
INSERT INTO `t_calchis_log` VALUES ('326', '224', null, '正在运行', '2014-12-27 11:02:54', '123');
INSERT INTO `t_calchis_log` VALUES ('327', '224', null, '成功运行', '2014-12-27 11:05:08', '123');
INSERT INTO `t_calchis_log` VALUES ('328', '237', null, '正在运行', '2014-12-27 11:05:55', '124');
INSERT INTO `t_calchis_log` VALUES ('329', '237', null, '成功运行', '2014-12-27 11:06:00', '124');
INSERT INTO `t_calchis_log` VALUES ('330', '237', null, '正在运行', '2014-12-27 11:06:31', '125');
INSERT INTO `t_calchis_log` VALUES ('331', '237', null, '成功运行', '2014-12-27 11:06:35', '125');
INSERT INTO `t_calchis_log` VALUES ('332', '237', null, '正在运行', '2014-12-27 11:06:52', '126');
INSERT INTO `t_calchis_log` VALUES ('333', '237', null, '成功运行', '2014-12-27 11:09:04', '126');
INSERT INTO `t_calchis_log` VALUES ('334', '214', null, '正在运行', '2014-12-27 11:10:02', '127');
INSERT INTO `t_calchis_log` VALUES ('335', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-27 11:10:22', '127');
INSERT INTO `t_calchis_log` VALUES ('336', '214', null, '正在运行', '2014-12-27 11:10:35', '128');
INSERT INTO `t_calchis_log` VALUES ('337', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-27 11:11:16', '128');
INSERT INTO `t_calchis_log` VALUES ('338', '235', null, '正在运行', '2014-12-27 11:11:48', '129');
INSERT INTO `t_calchis_log` VALUES ('339', '235', null, '成功运行', '2014-12-27 11:12:15', '129');
INSERT INTO `t_calchis_log` VALUES ('340', '235', null, '正在运行', '2014-12-27 11:13:02', '130');
INSERT INTO `t_calchis_log` VALUES ('341', '235', null, '成功运行', '2014-12-27 11:13:30', '130');
INSERT INTO `t_calchis_log` VALUES ('342', '214', null, '正在运行', '2014-12-27 11:14:26', '131');
INSERT INTO `t_calchis_log` VALUES ('343', '214', null, 'java.lang.Exception: 计算不收敛，请重新输入', '2014-12-27 11:14:47', '131');
INSERT INTO `t_calchis_log` VALUES ('344', '214', null, '正在运行', '2014-12-27 12:03:02', '132');
INSERT INTO `t_calchis_log` VALUES ('345', '214', null, '成功运行', '2014-12-27 12:03:20', '132');
INSERT INTO `t_calchis_log` VALUES ('346', '214', null, '正在运行', '2014-12-27 12:04:19', '133');
INSERT INTO `t_calchis_log` VALUES ('347', '214', null, '成功运行', '2014-12-27 12:04:41', '133');
INSERT INTO `t_calchis_log` VALUES ('348', '238', null, '正在运行', '2014-12-30 21:58:58', '134');
INSERT INTO `t_calchis_log` VALUES ('349', '239', null, '正在运行', '2014-12-30 22:00:31', '135');
INSERT INTO `t_calchis_log` VALUES ('350', '238', null, '成功运行', '2014-12-30 22:02:02', '134');
INSERT INTO `t_calchis_log` VALUES ('351', '241', null, '正在运行', '2015-02-09 21:39:41', '136');
INSERT INTO `t_calchis_log` VALUES ('352', '241', null, '成功运行', '2015-02-09 21:39:43', '136');
INSERT INTO `t_calchis_log` VALUES ('353', '242', null, '正在运行', '2015-06-07 00:15:15', '137');
INSERT INTO `t_calchis_log` VALUES ('354', '243', null, '正在运行', '2015-06-07 00:25:40', '138');
INSERT INTO `t_calchis_log` VALUES ('355', '243', null, '成功运行', '2015-06-07 00:25:42', '138');
INSERT INTO `t_calchis_log` VALUES ('356', '242', null, '成功运行', '2015-06-07 00:59:17', '137');

-- ----------------------------
-- Table structure for t_calcinputlist_his
-- ----------------------------
DROP TABLE IF EXISTS `t_calcinputlist_his`;
CREATE TABLE `t_calcinputlist_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(32) DEFAULT NULL,
  `Pro_ID` int(11) DEFAULT NULL,
  `Par_ID` int(11) DEFAULT NULL,
  `list_index` int(11) DEFAULT NULL,
  `list_value` double DEFAULT NULL,
  `list_ISOValue` double DEFAULT NULL,
  `Calc_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_calcinputlist_his
-- ----------------------------

-- ----------------------------
-- Table structure for t_calcinput_his
-- ----------------------------
DROP TABLE IF EXISTS `t_calcinput_his`;
CREATE TABLE `t_calcinput_his` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_ID` int(11) DEFAULT NULL,
  `par_id` int(11) DEFAULT NULL,
  `par_display` varchar(50) DEFAULT NULL,
  `par_value` double DEFAULT NULL,
  `par_name` varchar(50) DEFAULT NULL,
  `par_messID` int(11) DEFAULT NULL,
  `par_ISOValue` double DEFAULT NULL,
  `Calc_ID` int(11) DEFAULT NULL,
  `par_type` int(11) DEFAULT NULL,
  `par_listUUID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_calcinput_his
-- ----------------------------

-- ----------------------------
-- Table structure for t_calcoutputlist_his
-- ----------------------------
DROP TABLE IF EXISTS `t_calcoutputlist_his`;
CREATE TABLE `t_calcoutputlist_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(32) DEFAULT NULL,
  `Pro_ID` int(11) DEFAULT NULL,
  `Par_ID` int(11) DEFAULT NULL,
  `list_index` int(11) DEFAULT NULL,
  `list_value` double DEFAULT NULL,
  `list_ISOValue` double DEFAULT NULL,
  `Calc_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_calcoutputlist_his
-- ----------------------------

-- ----------------------------
-- Table structure for t_calcoutput_his
-- ----------------------------
DROP TABLE IF EXISTS `t_calcoutput_his`;
CREATE TABLE `t_calcoutput_his` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_ID` int(11) DEFAULT NULL,
  `Par_ID` int(11) DEFAULT NULL,
  `par_display` varchar(50) DEFAULT NULL,
  `par_value` double DEFAULT NULL,
  `par_name` varchar(50) DEFAULT NULL,
  `par_messID` int(11) DEFAULT NULL,
  `par_ISOValue` double DEFAULT NULL,
  `Calc_ID` int(11) DEFAULT NULL,
  `par_type` int(11) DEFAULT NULL,
  `par_listUUID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_calcoutput_his
-- ----------------------------

-- ----------------------------
-- Table structure for t_diagramdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_diagramdetail`;
CREATE TABLE `t_diagramdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `y` double DEFAULT NULL,
  `lineID` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_diagramdetail
-- ----------------------------
INSERT INTO `t_diagramdetail` VALUES ('1', '1', '1', '2', '1', 'a1');
INSERT INTO `t_diagramdetail` VALUES ('2', '1', '2', '3', '1', 'a2');
INSERT INTO `t_diagramdetail` VALUES ('3', '1', '3', '12', '1', 'a3');
INSERT INTO `t_diagramdetail` VALUES ('4', '1', '4', '4', '1', 'a4');
INSERT INTO `t_diagramdetail` VALUES ('5', '1', '5', '2', '1', 'a5');
INSERT INTO `t_diagramdetail` VALUES ('6', '1', '6', '12', '1', 'a6');
INSERT INTO `t_diagramdetail` VALUES ('7', '1', '7', '5', '1', 'a7');
INSERT INTO `t_diagramdetail` VALUES ('8', '1', '8', '8', '1', 'a8');
INSERT INTO `t_diagramdetail` VALUES ('9', '2', '32', null, null, 'b1');
INSERT INTO `t_diagramdetail` VALUES ('10', '2', '42', null, null, 'b2');
INSERT INTO `t_diagramdetail` VALUES ('11', '2', '25', null, null, 'b3');
INSERT INTO `t_diagramdetail` VALUES ('12', '2', '36', null, null, 'b4');
INSERT INTO `t_diagramdetail` VALUES ('13', '2', '12', null, null, 'b5');
INSERT INTO `t_diagramdetail` VALUES ('14', '3', '9.1', '60', '小明', 'c1');
INSERT INTO `t_diagramdetail` VALUES ('15', '3', '9.2', '59', '小明', 'cx2');
INSERT INTO `t_diagramdetail` VALUES ('16', '3', '9.3', '50', '小明', 'c3');
INSERT INTO `t_diagramdetail` VALUES ('18', '1', '1', '2', '2', 'a1');
INSERT INTO `t_diagramdetail` VALUES ('19', '1', '2', '5', '2', 'a2');
INSERT INTO `t_diagramdetail` VALUES ('20', '1', '3', '2', '2', 'a3');
INSERT INTO `t_diagramdetail` VALUES ('21', '1', '4', '4', '2', 'a4');
INSERT INTO `t_diagramdetail` VALUES ('22', '1', '5', '9', '2', 'a5');
INSERT INTO `t_diagramdetail` VALUES ('23', '1', '6', '7', '2', 'a6');
INSERT INTO `t_diagramdetail` VALUES ('24', '1', '7', '4', '2', 'a7');
INSERT INTO `t_diagramdetail` VALUES ('25', '1', '8', '6', '2', 'a8');

-- ----------------------------
-- Table structure for t_diagrampro
-- ----------------------------
DROP TABLE IF EXISTS `t_diagrampro`;
CREATE TABLE `t_diagrampro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `xUnit` varchar(20) DEFAULT NULL,
  `yUnit` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `xname` varchar(20) DEFAULT NULL,
  `yname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_diagrampro
-- ----------------------------
INSERT INTO `t_diagrampro` VALUES ('1', '1', 'm', 'km', '线性图测试', '长度', '高度');
INSERT INTO `t_diagrampro` VALUES ('2', '2', 'kg', null, '饼图测试', '大家族的体重', null);
INSERT INTO `t_diagrampro` VALUES ('3', '3', '天', 'kg', '柱状图测试', '日期', '体重');

-- ----------------------------
-- Table structure for t_edge
-- ----------------------------
DROP TABLE IF EXISTS `t_edge`;
CREATE TABLE `t_edge` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sourceid` int(11) DEFAULT NULL,
  `targetid` int(11) DEFAULT NULL,
  `BasicNodeID` int(11) DEFAULT NULL,
  `proID` int(11) DEFAULT NULL,
  `EdgeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_edge
-- ----------------------------
INSERT INTO `t_edge` VALUES ('1', '0', '0', null, '5', 'a');
INSERT INTO `t_edge` VALUES ('2', '0', '0', null, '5', 'afd');
INSERT INTO `t_edge` VALUES ('3', '0', '0', null, '5', '1');
INSERT INTO `t_edge` VALUES ('4', '9', '10', '0', '5', 'abcde');
INSERT INTO `t_edge` VALUES ('5', '11', '10', '0', '5', '阿百川地方');

-- ----------------------------
-- Table structure for t_graphdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_graphdetail`;
CREATE TABLE `t_graphdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `graphid` int(11) DEFAULT NULL,
  `ParamID` int(11) DEFAULT NULL,
  `info1` varchar(32) DEFAULT NULL,
  `info2` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_graphdetail
-- ----------------------------

-- ----------------------------
-- Table structure for t_graphiproject
-- ----------------------------
DROP TABLE IF EXISTS `t_graphiproject`;
CREATE TABLE `t_graphiproject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(50) DEFAULT NULL,
  `authorID` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `ModifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_graphiproject
-- ----------------------------
INSERT INTO `t_graphiproject` VALUES ('1', 'abc', '1', '2015-04-05 16:48:23', '2015-04-05 16:48:23');
INSERT INTO `t_graphiproject` VALUES ('2', 'test', '1', '2015-04-05 16:48:48', '2015-04-05 16:48:48');
INSERT INTO `t_graphiproject` VALUES ('3', 'asfs', '1', '2015-04-05 16:49:07', '2015-04-05 16:49:07');
INSERT INTO `t_graphiproject` VALUES ('4', 'sadf', '1', '2015-04-05 16:49:45', '2015-04-05 16:49:45');
INSERT INTO `t_graphiproject` VALUES ('5', '3123', '1', '2015-04-05 16:50:25', '2015-04-05 16:50:25');

-- ----------------------------
-- Table structure for t_guiback
-- ----------------------------
DROP TABLE IF EXISTS `t_guiback`;
CREATE TABLE `t_guiback` (
  `jsonData` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guiback
-- ----------------------------
INSERT INTO `t_guiback` VALUES ('{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true},\"className\":\"Layer\",\"children\":[]}', '1');

-- ----------------------------
-- Table structure for t_guiconnect
-- ----------------------------
DROP TABLE IF EXISTS `t_guiconnect`;
CREATE TABLE `t_guiconnect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) DEFAULT NULL,
  `left_id` int(11) DEFAULT NULL,
  `pointleft` varchar(16) DEFAULT NULL,
  `right_id` int(11) DEFAULT NULL,
  `pointright` varchar(16) DEFAULT NULL,
  `statusNow` int(11) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guiconnect
-- ----------------------------

-- ----------------------------
-- Table structure for t_guijson
-- ----------------------------
DROP TABLE IF EXISTS `t_guijson`;
CREATE TABLE `t_guijson` (
  `ID` int(11) NOT NULL,
  `JSONData` text,
  `ScalN` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guijson
-- ----------------------------
INSERT INTO `t_guijson` VALUES ('178', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true},\"className\":\"Layer\",\"children\":[]}', '1');
INSERT INTO `t_guijson` VALUES ('185', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true},\"className\":\"Layer\",\"children\":[]}', '1');
INSERT INTO `t_guijson` VALUES ('186', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true},\"className\":\"Layer\",\"children\":[]}', '1');
INSERT INTO `t_guijson` VALUES ('187', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true,\"visible\":true,\"scaleX\":0.6400000000000003,\"scaleY\":0.6400000000000003},\"className\":\"Layer\",\"children\":[{\"attrs\":{\"x\":513,\"y\":136,\"name\":\"type1\",\"draggable\":true,\"id\":\"114630211212859\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type1\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":347.6874999999997,\"y\":135.99999999999983,\"name\":\"type5\",\"draggable\":true,\"id\":\"1146302112148\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type5\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,55.312500000000355,1.7763568394002505e-13],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-64.68749999999966,1.7763568394002505e-13],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-64.68749999999966,\"y\":25.000000000000174,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":105.31250000000034,\"y\":25.000000000000174,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":173,\"y\":136,\"name\":\"type2\",\"draggable\":true,\"id\":\"114630212548505\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":3,\"y\":136,\"name\":\"type0\",\"draggable\":true,\"id\":\"114630212551784\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type0\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":343,\"y\":-34,\"name\":\"type5\",\"draggable\":true,\"id\":\"11463021265452\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type5\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":258,\"y\":101,\"name\":\"type2\",\"draggable\":true,\"rotation\":270,\"id\":\"11463021266478\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":513,\"y\":-34,\"name\":\"type2\",\"draggable\":true,\"id\":\"114630212632247\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":683,\"y\":-34,\"name\":\"type3\",\"draggable\":true,\"id\":\"114630213629785\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":818,\"y\":50.99999999999999,\"name\":\"type2\",\"draggable\":true,\"rotation\":90,\"id\":\"114630213633902\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":853,\"y\":136,\"name\":\"type2\",\"draggable\":true,\"id\":\"114630213641264\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":1022.9999999999999,\"y\":136,\"name\":\"type3\",\"draggable\":true,\"id\":\"114630213644509\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":1158,\"y\":221.00000000000003,\"name\":\"type2\",\"draggable\":true,\"rotation\":90,\"id\":\"114630213648691\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":1072.9999999999998,\"y\":356.00000000000006,\"name\":\"type2\",\"draggable\":true,\"rotation\":-180,\"id\":\"114630213653623\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":902.9999999999998,\"y\":356.0000000000001,\"name\":\"type3\",\"draggable\":true,\"rotation\":180,\"id\":\"11463021370432\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":732.9999999999998,\"y\":356.00000000000006,\"name\":\"type4\",\"draggable\":true,\"rotation\":180,\"id\":\"11463021375909\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type4\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":562.9999999999998,\"y\":356.00000000000006,\"name\":\"type3\",\"draggable\":true,\"rotation\":-180,\"id\":\"114630213714633\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":427.9999999999998,\"y\":271.0000000000001,\"name\":\"type3\",\"draggable\":true,\"rotation\":270,\"id\":\"114630213724696\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]}]}', '0.6400000000000003');
INSERT INTO `t_guijson` VALUES ('188', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true,\"visible\":true},\"className\":\"Layer\",\"children\":[{\"attrs\":{\"x\":769,\"y\":35,\"name\":\"type1\",\"draggable\":true,\"id\":\"114630211221363\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type1\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-253,1],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-253,\"y\":26,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":73,\"y\":33,\"name\":\"type0\",\"draggable\":true,\"id\":\"114630211222375\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type0\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":352,\"y\":36,\"name\":\"type3\",\"draggable\":true,\"id\":\"114630211223229\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,114,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-169,-3],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-169,\"y\":22,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":164,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":208,\"y\":118,\"name\":\"type3\",\"draggable\":true,\"rotation\":90,\"id\":\"114630211623955\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":243,\"y\":203,\"name\":\"type4\",\"draggable\":true,\"id\":\"11463021184760\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type4\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":413,\"y\":203,\"name\":\"type3\",\"draggable\":true,\"id\":\"114630212159501\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":583,\"y\":203,\"name\":\"type1\",\"draggable\":true,\"id\":\"114630212432952\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type1\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":208,\"y\":288,\"name\":\"type3\",\"draggable\":true,\"rotation\":90,\"id\":\"11463021256207\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":243,\"y\":373,\"name\":\"type5\",\"draggable\":true,\"id\":\"114630212517612\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type5\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"red\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]}]}', '1');
INSERT INTO `t_guijson` VALUES ('189', '{\"attrs\":{\"x\":100,\"y\":-40,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true,\"visible\":false},\"className\":\"Layer\",\"children\":[{\"attrs\":{\"x\":165,\"y\":139,\"name\":\"type0\",\"draggable\":true,\"id\":\"114630212525173\"},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type0\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":335,\"y\":139,\"name\":\"type2\",\"draggable\":true,\"id\":\"114630212525956\"},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":505,\"y\":139,\"name\":\"type1\",\"draggable\":true,\"id\":\"1146302125281\"},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type1\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"}]}]}', '1');
INSERT INTO `t_guijson` VALUES ('190', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true,\"visible\":true},\"className\":\"Layer\",\"children\":[{\"attrs\":{\"x\":451,\"y\":10,\"name\":\"type1\",\"draggable\":true,\"id\":\"114630212636363\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type1\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":288,\"y\":63,\"name\":\"type2\",\"draggable\":true,\"id\":\"114630212637218\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,53,-53],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-67,-53],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-67,\"y\":-28,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":103,\"y\":-28,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":111,\"y\":10,\"name\":\"type0\",\"draggable\":true,\"id\":\"11463021263839\",\"visible\":true},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type0\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]}]}', '1');
INSERT INTO `t_guijson` VALUES ('191', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true,\"visible\":true},\"className\":\"Layer\",\"children\":[{\"attrs\":{\"x\":378,\"y\":56,\"name\":\"type2\",\"draggable\":true,\"id\":\"11481212019400\"},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type2\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":548,\"y\":56,\"name\":\"type3\",\"draggable\":true,\"id\":\"11481212020924\"},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type3\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"red\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]},{\"attrs\":{\"x\":208,\"y\":56,\"name\":\"type4\",\"draggable\":true,\"id\":\"11481212026368\"},\"className\":\"Group\",\"children\":[{\"attrs\":{\"width\":50,\"name\":\"type4\",\"height\":50},\"className\":\"Image\"},{\"attrs\":{\"x\":50,\"y\":25,\"points\":[0,0,60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineRight\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"y\":25,\"points\":[0,0,-60,0],\"stroke\":\"black\",\"strokeWidth\":5,\"name\":\"lineLeft\",\"closed\":true},\"className\":\"Line\"},{\"attrs\":{\"x\":-60,\"y\":25,\"radius\":5,\"fill\":\"red\",\"stroke\":\"black\",\"name\":\"connPointsLeft\",\"visible\":true},\"className\":\"Circle\"},{\"attrs\":{\"x\":110,\"y\":25,\"name\":\"connPointsRight\",\"radius\":5,\"fill\":\"yellow\",\"stroke\":\"black\",\"visible\":true},\"className\":\"Circle\"}]}]}', '1');
INSERT INTO `t_guijson` VALUES ('192', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true},\"className\":\"Layer\",\"children\":[]}', '1');
INSERT INTO `t_guijson` VALUES ('193', '{\"attrs\":{\"x\":100,\"y\":100,\"id\":\"painting\",\"width\":3000,\"height\":2000,\"fill\":\"#ff33ee\",\"draggable\":true},\"className\":\"Layer\",\"children\":[]}', '1');

-- ----------------------------
-- Table structure for t_guipoint
-- ----------------------------
DROP TABLE IF EXISTS `t_guipoint`;
CREATE TABLE `t_guipoint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `typename` varchar(15) DEFAULT NULL,
  `statusNow` int(11) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guipoint
-- ----------------------------

-- ----------------------------
-- Table structure for t_guipointproper
-- ----------------------------
DROP TABLE IF EXISTS `t_guipointproper`;
CREATE TABLE `t_guipointproper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `point_type` varchar(32) DEFAULT NULL,
  `point_type_id` int(11) DEFAULT NULL,
  `par_id` int(11) DEFAULT NULL,
  `par_display` varchar(50) DEFAULT NULL,
  `par_name` varchar(50) DEFAULT NULL,
  `par_messID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guipointproper
-- ----------------------------

-- ----------------------------
-- Table structure for t_guipointtype
-- ----------------------------
DROP TABLE IF EXISTS `t_guipointtype`;
CREATE TABLE `t_guipointtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guipointtype
-- ----------------------------
INSERT INTO `t_guipointtype` VALUES ('48', '气井', null, 'editor/icons/qijing.svg');
INSERT INTO `t_guipointtype` VALUES ('56', '分输点', null, 'editor/icons/waifenshudian.svg');
INSERT INTO `t_guipointtype` VALUES ('57', '气源', null, 'editor/icons/waiyuanjiedian.svg');
INSERT INTO `t_guipointtype` VALUES ('58', '撬装液化点', null, 'editor/icons/qiaozhuangyehuadian.svg');
INSERT INTO `t_guipointtype` VALUES ('60', '管道', null, 'editor/icons/guandao.svg');
INSERT INTO `t_guipointtype` VALUES ('61', '集气增压站', null, 'editor/icons/jiqizengyazhan.svg');
INSERT INTO `t_guipointtype` VALUES ('62', '主动增压点', null, 'editor/icons/zhudongzengyadian.svg');
INSERT INTO `t_guipointtype` VALUES ('63', '中央处理厂', null, 'editor/icons/zhongyangchulichang.svg');
INSERT INTO `t_guipointtype` VALUES ('64', '阀组', null, 'editor/icons/fazu.svg');
INSERT INTO `t_guipointtype` VALUES ('65', '过滤器', null, 'editor/icons/guolvqi.svg');
INSERT INTO `t_guipointtype` VALUES ('66', '阀', null, 'editor/icons/fa.svg');
INSERT INTO `t_guipointtype` VALUES ('67', '设备连接点', null, 'editor/icons/qita.png');

-- ----------------------------
-- Table structure for t_guipointvalue
-- ----------------------------
DROP TABLE IF EXISTS `t_guipointvalue`;
CREATE TABLE `t_guipointvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) DEFAULT NULL,
  `point_id` int(11) DEFAULT NULL,
  `point_name` varchar(15) DEFAULT NULL,
  `point_type` varchar(32) DEFAULT NULL,
  `proper_id` int(11) DEFAULT NULL,
  `par_value` double DEFAULT NULL,
  `par_ISOValue` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guipointvalue
-- ----------------------------
INSERT INTO `t_guipointvalue` VALUES ('1', '122', '56', '114616221841107', 'type0', '1', '32', '0.32');
INSERT INTO `t_guipointvalue` VALUES ('2', '122', '56', '114616221841107', 'type0', '2', '321', '3.21');
INSERT INTO `t_guipointvalue` VALUES ('4', '122', '0', '11461622553793', 'type0', '1', '0', '0');
INSERT INTO `t_guipointvalue` VALUES ('5', '122', '0', '11461622553793', 'type0', '2', '0', '0');
INSERT INTO `t_guipointvalue` VALUES ('6', '127', '63', '114616233447300', 'type0', '1', '50', '0.5');
INSERT INTO `t_guipointvalue` VALUES ('7', '127', '63', '114616233447300', 'type0', '2', '20', '0.2');
INSERT INTO `t_guipointvalue` VALUES ('8', '0', '0', '114621142053913', 'type0', '1', '0', '0');
INSERT INTO `t_guipointvalue` VALUES ('9', '0', '0', '114621142053913', 'type0', '2', '0', '0');
INSERT INTO `t_guipointvalue` VALUES ('11', '132', '76', '11462114434866', 'type0', '1', '0', '0');
INSERT INTO `t_guipointvalue` VALUES ('12', '132', '76', '11462114434866', 'type0', '2', '0', '0');
INSERT INTO `t_guipointvalue` VALUES ('13', '173', '0', '11462223508842', 'type0', '1', '0', '0');
INSERT INTO `t_guipointvalue` VALUES ('14', '173', '0', '11462223508842', 'type0', '2', '0', '0');

-- ----------------------------
-- Table structure for t_guipro
-- ----------------------------
DROP TABLE IF EXISTS `t_guipro`;
CREATE TABLE `t_guipro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorID` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `parentPro` int(11) DEFAULT NULL,
  `subID` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guipro
-- ----------------------------

-- ----------------------------
-- Table structure for t_mapline
-- ----------------------------
DROP TABLE IF EXISTS `t_mapline`;
CREATE TABLE `t_mapline` (
  `ProID` int(11) DEFAULT NULL,
  `Start` varchar(32) DEFAULT NULL,
  `End` varchar(32) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mapline
-- ----------------------------

-- ----------------------------
-- Table structure for t_mappoint
-- ----------------------------
DROP TABLE IF EXISTS `t_mappoint`;
CREATE TABLE `t_mappoint` (
  `ProID` int(11) DEFAULT NULL,
  `PointName` varchar(32) DEFAULT NULL,
  `Type` varchar(32) DEFAULT NULL,
  `GeodeticCoordinatesX` double DEFAULT NULL,
  `GeodeticCoordinatesY` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mappoint
-- ----------------------------

-- ----------------------------
-- Table structure for t_mappro
-- ----------------------------
DROP TABLE IF EXISTS `t_mappro`;
CREATE TABLE `t_mappro` (
  `ID` int(8) NOT NULL AUTO_INCREMENT,
  `ProName` varchar(25) DEFAULT NULL,
  `FilePath` varchar(255) DEFAULT NULL,
  `AddDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mappro
-- ----------------------------

-- ----------------------------
-- Table structure for t_measure
-- ----------------------------
DROP TABLE IF EXISTS `t_measure`;
CREATE TABLE `t_measure` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhysicalID` int(11) DEFAULT NULL,
  `EName` varchar(50) DEFAULT NULL,
  `CName` varchar(32) DEFAULT NULL,
  `Symbol` varchar(16) DEFAULT NULL,
  `RatioA` double DEFAULT NULL,
  `RatioB` double DEFAULT NULL,
  `StyleID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_measure
-- ----------------------------
INSERT INTO `t_measure` VALUES ('1', '1', 'Metre', '米', 'm', '1', '0', '1');
INSERT INTO `t_measure` VALUES ('2', '1', 'Decimeter', '分米', 'dm', '0.1', '0', '1');
INSERT INTO `t_measure` VALUES ('3', '1', 'Centimetre', '厘米', 'cm', '0.01', '0', '1');
INSERT INTO `t_measure` VALUES ('4', '1', 'Millimetre ', '毫米', 'mm', '0.001', '0', '1');
INSERT INTO `t_measure` VALUES ('5', '1', 'Kilometre', '千米', 'km', '1000', '0', '1');
INSERT INTO `t_measure` VALUES ('6', '1', 'Foot', '英尺', 'ft', '0.3048', '0', '2');
INSERT INTO `t_measure` VALUES ('7', '1', 'Inch', '英寸', 'in', '0.0254', '0', '2');
INSERT INTO `t_measure` VALUES ('8', '1', 'Yard', '码', 'yard', '0.9144', '0', '2');
INSERT INTO `t_measure` VALUES ('9', '1', 'Mile', '英里', 'mile', '1609.344', '0', '2');

-- ----------------------------
-- Table structure for t_node
-- ----------------------------
DROP TABLE IF EXISTS `t_node`;
CREATE TABLE `t_node` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nodeName` varchar(50) DEFAULT NULL,
  `BasicNodeID` int(11) DEFAULT NULL,
  `proID` int(11) DEFAULT NULL,
  `x_location` double DEFAULT NULL,
  `y_location` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `x_location_geo` double DEFAULT NULL,
  `y_location_geo` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_node
-- ----------------------------
INSERT INTO `t_node` VALUES ('9', 'abcd', '10', '5', '0', '0', '108.9375', '34.2742', '2', '0');
INSERT INTO `t_node` VALUES ('10', 'ad', '10', '5', '0', '0', '108.9356865', '34.2732', '3', '0');
INSERT INTO `t_node` VALUES ('11', 'final', '10', '5', '0', '0', '108.93325', '34.2632', '0', '0');
INSERT INTO `t_node` VALUES ('12', 'final', '6', '5', '0', '0', '108.945215', '34.2332', '0', '0');
INSERT INTO `t_node` VALUES ('13', 'final', '10', '5', '0', '0', '108.934253', '34.2232', '0', '0');
INSERT INTO `t_node` VALUES ('14', 'zdfa', '10', '5', '0', '0', '108.95342', '34.2132', '0', '0');
INSERT INTO `t_node` VALUES ('15', '法犯法的', '10', '5', '0', '0', '108.9987', '34.2932', '0', '0');

-- ----------------------------
-- Table structure for t_nodeproper
-- ----------------------------
DROP TABLE IF EXISTS `t_nodeproper`;
CREATE TABLE `t_nodeproper` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `properID` int(11) DEFAULT NULL,
  `propervalue` varchar(50) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `proID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nodeproper
-- ----------------------------
INSERT INTO `t_nodeproper` VALUES ('1', '8', '0', '0', '5');
INSERT INTO `t_nodeproper` VALUES ('2', '9', '5000', '0', '5');
INSERT INTO `t_nodeproper` VALUES ('4', '8', '1', '14', '5');
INSERT INTO `t_nodeproper` VALUES ('5', '9', '5000', '14', '5');
INSERT INTO `t_nodeproper` VALUES ('7', '1', '4', '13', '0');
INSERT INTO `t_nodeproper` VALUES ('8', '8', '0', '0', '0');
INSERT INTO `t_nodeproper` VALUES ('9', '9', '5000', '0', '0');
INSERT INTO `t_nodeproper` VALUES ('11', '1', '5', '12', '0');
INSERT INTO `t_nodeproper` VALUES ('12', '8', '0', '12', '0');
INSERT INTO `t_nodeproper` VALUES ('13', '9', '1', '12', '0');
INSERT INTO `t_nodeproper` VALUES ('15', '8', '500', '13', '0');
INSERT INTO `t_nodeproper` VALUES ('16', '9', '5000', '13', '0');
INSERT INTO `t_nodeproper` VALUES ('18', '1', '3865', '15', '5');
INSERT INTO `t_nodeproper` VALUES ('19', '8', '0', '15', '0');
INSERT INTO `t_nodeproper` VALUES ('20', '9', '5000', '15', '0');

-- ----------------------------
-- Table structure for t_parameters
-- ----------------------------
DROP TABLE IF EXISTS `t_parameters`;
CREATE TABLE `t_parameters` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `measureID` int(11) DEFAULT NULL,
  `display` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_parameters
-- ----------------------------
INSERT INTO `t_parameters` VALUES ('1', '4', '管道长度', 'lineslength', '0');
INSERT INTO `t_parameters` VALUES ('2', '2', '管道长度3', 'lineslength3', '0');
INSERT INTO `t_parameters` VALUES ('3', '5', '管道长度2', 'lineslength2', '0');
INSERT INTO `t_parameters` VALUES ('4', '2', '加数1', 'a', '0');
INSERT INTO `t_parameters` VALUES ('5', '3', '加数2', 'b', '0');
INSERT INTO `t_parameters` VALUES ('6', '3', '相加结果', 'c', '0');
INSERT INTO `t_parameters` VALUES ('7', '3', '直角边a', 'ZHIBIAN1', '0');
INSERT INTO `t_parameters` VALUES ('8', '1', '直角边b', 'ZHIBIAN2', '0');
INSERT INTO `t_parameters` VALUES ('9', '3', '斜边', 'XIEBIAN', '0');
INSERT INTO `t_parameters` VALUES ('10', '9', '阿萨德', 'ADS', '0');
INSERT INTO `t_parameters` VALUES ('11', '9', '阿萨德2', 'ADS2', '0');
INSERT INTO `t_parameters` VALUES ('12', '9', '阿萨德22', 'ADS22', '0');
INSERT INTO `t_parameters` VALUES ('13', '9', '123', '123', '0');
INSERT INTO `t_parameters` VALUES ('14', '9', '321', '321', '0');
INSERT INTO `t_parameters` VALUES ('15', '9', '3212', '3212', '0');
INSERT INTO `t_parameters` VALUES ('16', '9', '32122', '32123', '0');
INSERT INTO `t_parameters` VALUES ('17', '9', '32122速度', '32123的', '0');
INSERT INTO `t_parameters` VALUES ('18', '9', '32122速度2', '32123的1', '1');
INSERT INTO `t_parameters` VALUES ('19', '9', '列表测试1', 'listin', '1');
INSERT INTO `t_parameters` VALUES ('20', '6', '列表测试2', 'listout', '1');

-- ----------------------------
-- Table structure for t_physical
-- ----------------------------
DROP TABLE IF EXISTS `t_physical`;
CREATE TABLE `t_physical` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CName` varchar(32) DEFAULT NULL,
  `EName` varchar(32) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `ISOBasicUnit` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_physical
-- ----------------------------
INSERT INTO `t_physical` VALUES ('1', '长度单位', null, '长度\r\n', '米');
INSERT INTO `t_physical` VALUES ('15', '质量', '', null, '千克');
INSERT INTO `t_physical` VALUES ('16', '温度', '', null, '开尔文');
INSERT INTO `t_physical` VALUES ('17', '物质的量', '', null, '摩尔');
INSERT INTO `t_physical` VALUES ('18', '面积', '', null, '米^2');
INSERT INTO `t_physical` VALUES ('19', '体积', '', null, '米^3');
INSERT INTO `t_physical` VALUES ('26', '力', '', '力', 'M*L*T^(-2)');
INSERT INTO `t_physical` VALUES ('27', '压强', '', '压强', 'M*T^(-2)*L^(-1)');
INSERT INTO `t_physical` VALUES ('28', '速度', '', '速度', 'L*T^(-1)');
INSERT INTO `t_physical` VALUES ('29', '加速度', '', '加速度', '米/秒^2');
INSERT INTO `t_physical` VALUES ('30', '功率', '', '功率', '瓦');
INSERT INTO `t_physical` VALUES ('31', '动力粘度', '', '动力粘度', '帕秒');
INSERT INTO `t_physical` VALUES ('32', '运动粘度', '', '运动粘度', '米^2/秒');
INSERT INTO `t_physical` VALUES ('33', '密度', '', '密度', '千克/米^3');
INSERT INTO `t_physical` VALUES ('34', '摩尔流量', '', '摩尔流量', '摩尔/秒');
INSERT INTO `t_physical` VALUES ('35', '体积流量', '', '体积流量', '立方米/秒');
INSERT INTO `t_physical` VALUES ('36', '质量流量', '', '质量流量', '千克/秒');
INSERT INTO `t_physical` VALUES ('37', '热量/能量', '', '热量/能量', '焦耳');
INSERT INTO `t_physical` VALUES ('38', '导热系数', '', '导热系数', '瓦/(米*开)');
INSERT INTO `t_physical` VALUES ('39', '传热系数', '', '传热系数', '瓦/(米^2*开)');
INSERT INTO `t_physical` VALUES ('40', '负荷', 'Duty', '负荷', 'MM kJ/hr');
INSERT INTO `t_physical` VALUES ('41', 'test', 'test', 'tet', 'test');
INSERT INTO `t_physical` VALUES ('42', 'test', '', '', 'test ');

-- ----------------------------
-- Table structure for t_physicalstyle
-- ----------------------------
DROP TABLE IF EXISTS `t_physicalstyle`;
CREATE TABLE `t_physicalstyle` (
  `StyleID` int(11) DEFAULT NULL,
  `StyleName` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_physicalstyle
-- ----------------------------
INSERT INTO `t_physicalstyle` VALUES ('1', 'ISO');
INSERT INTO `t_physicalstyle` VALUES ('2', 'English');
INSERT INTO `t_physicalstyle` VALUES ('3', 'UserDefine');

-- ----------------------------
-- Table structure for t_projectdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_projectdetail`;
CREATE TABLE `t_projectdetail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `proID` int(11) DEFAULT NULL,
  `algID` int(11) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_projectdetail
-- ----------------------------
INSERT INTO `t_projectdetail` VALUES ('1', '11', '27', 'test2.xls');

-- ----------------------------
-- Table structure for t_projectinputlist
-- ----------------------------
DROP TABLE IF EXISTS `t_projectinputlist`;
CREATE TABLE `t_projectinputlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(32) DEFAULT NULL,
  `Pro_ID` int(11) DEFAULT NULL,
  `Par_ID` int(11) DEFAULT NULL,
  `list_index` int(11) DEFAULT NULL,
  `list_value` double DEFAULT NULL,
  `list_ISOValue` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_projectinputlist
-- ----------------------------

-- ----------------------------
-- Table structure for t_projectinputs
-- ----------------------------
DROP TABLE IF EXISTS `t_projectinputs`;
CREATE TABLE `t_projectinputs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_ID` int(11) DEFAULT NULL,
  `par_id` int(11) DEFAULT NULL,
  `par_display` varchar(50) DEFAULT NULL,
  `par_value` double DEFAULT NULL,
  `par_name` varchar(50) DEFAULT NULL,
  `par_messID` int(11) DEFAULT NULL,
  `par_ISOValue` double DEFAULT NULL,
  `par_type` int(11) DEFAULT NULL,
  `par_listUUID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_projectinputs
-- ----------------------------

-- ----------------------------
-- Table structure for t_projectoutputlist
-- ----------------------------
DROP TABLE IF EXISTS `t_projectoutputlist`;
CREATE TABLE `t_projectoutputlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(32) DEFAULT NULL,
  `Pro_ID` int(11) DEFAULT NULL,
  `Par_ID` int(11) DEFAULT NULL,
  `list_index` int(11) DEFAULT NULL,
  `list_value` double DEFAULT NULL,
  `list_ISOValue` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_projectoutputlist
-- ----------------------------

-- ----------------------------
-- Table structure for t_projectoutputs
-- ----------------------------
DROP TABLE IF EXISTS `t_projectoutputs`;
CREATE TABLE `t_projectoutputs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_ID` int(11) DEFAULT NULL,
  `Par_ID` int(11) DEFAULT NULL,
  `par_display` varchar(50) DEFAULT NULL,
  `par_value` double DEFAULT NULL,
  `par_name` varchar(50) DEFAULT NULL,
  `par_messID` int(11) DEFAULT NULL,
  `par_ISOValue` double DEFAULT NULL,
  `par_type` int(11) DEFAULT NULL,
  `par_listUUID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_projectoutputs
-- ----------------------------

-- ----------------------------
-- Table structure for t_projects
-- ----------------------------
DROP TABLE IF EXISTS `t_projects`;
CREATE TABLE `t_projects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_InputNum` int(11) DEFAULT NULL,
  `AuthorID` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `LastCalcTime` datetime DEFAULT NULL,
  `CalcHisNum` int(11) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Algorithm_ID` int(11) DEFAULT NULL,
  `CalcRes` varchar(50) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `ProfileIn` varchar(255) DEFAULT NULL,
  `ProfileOut` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'status==0   "未运行";\r\nstatus==1  "正在运行";\r\nstatus==2  "运行成功"\r\nstatus==3  "运行失败"\r\n		',
  `info` varchar(500) DEFAULT NULL,
  `LastCalcEndTime` datetime DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_projects
-- ----------------------------
INSERT INTO `t_projects` VALUES ('19', null, '1', '2014-08-07 15:51:19', null, null, 'test2', 'test4', '1', null, '1', 'f21f6938089e4b91b19c57598755314d.xls', '71ee7e07ef2e44e6ab33f0373a2f6602.xls', '2', '成功运行', '2014-08-07 17:20:07', '0');
INSERT INTO `t_projects` VALUES ('20', null, '1', '2014-08-08 11:38:18', null, null, '', 'run', '1', null, '1', '3dd5b03918ef41e4a3ece2c0092e9110.xls', 'd862419aed164078afa25cd1c347f82a.xls', '2', '成功运行', '2014-08-08 11:40:51', '0');
INSERT INTO `t_projects` VALUES ('21', null, '1', '2014-08-10 21:39:44', null, null, '我', '休息', '1', null, '1', 'f12d1d00ab364f3db0ee37ef5c3d8d01.xls', '086faf29562942d2aa78dc677369135d.xls', '2', '运行完毕', null, '0');
INSERT INTO `t_projects` VALUES ('22', null, '1', '2014-08-10 21:47:02', null, null, '请问', '请问', '1', null, '1', 'a34be0f8d98645d4bcd8f862eb71df04.xls', '31a2cb1a91934db69e74a5716e2128c9.xls', '2', '运行完毕', null, '0');
INSERT INTO `t_projects` VALUES ('23', null, '1', '2014-08-10 22:06:32', null, null, '321', 'ii', '1', null, '1', '37172fda2fa248148426c601fd7fac0a.xls', '9da84fcfc269494d913725e7362d8c91.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('24', null, '1', '2014-08-10 22:14:49', null, null, 'ff', 'final', '1', null, '1', '3b9b463f69b34da5a4b79553d46956e9.xls', 'b6a5d25034fd4966b6c3ca7313f8d0ed.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('25', null, '1', '2014-08-10 22:15:31', null, null, 'ff', 'final2', '1', null, '1', '5f606c99a8e444d08e657ae7e471c6e1.xls', '2d96cde51c4b44699c899def1a0be565.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('26', null, '1', '2014-08-10 22:17:45', null, null, 'wer', 'ewr', '1', null, '1', '1991685e592745ddb0ed9d61be6875cb.xls', '9479857e32724641a79cde6789ede109.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('27', null, '1', '2014-08-10 22:18:39', null, null, 'asd', 'asd', '1', null, '1', 'f6ef9753be134753a4f6eb105b974523.xls', 'b666b481b4154b3bb05701e4576be10d.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('28', null, '1', '2014-08-10 22:26:46', null, null, 'asd', 'asd1', '1', null, '1', '2cd0f411575a43409e2d5c53f90132dd.xls', '4f129a711ba147ed927fc2431483d14f.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('29', null, '1', '2014-08-10 22:28:05', null, null, 'asd', 'asd3', '1', null, '1', 'ae685eb11a7b464db712d5567165db65.xls', '8b3ca2e9e8b244328a793df02c76d2fe.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('30', null, '1', '2014-08-10 22:31:02', null, null, 'asd', 'asd3', '1', null, '1', '2277a244302c45419ebbcca8967379b0.xls', 'c0267e6e38bc47e0a4aebd5265f2ff78.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('31', null, '1', '2014-08-10 22:31:07', null, null, 'asd', 'asd4', '1', null, '1', '7eacd03c427542ec8c1324cab1930c46.xls', '9062722ed3334c51a99e61e39de3e168.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('32', null, '1', '2014-08-10 22:31:17', null, null, 'asd', 'as12', '1', null, '1', '2f9e9846612b40fbb4cea04466e067da.xls', '89757c6c246449d09886c222ea2d3ab4.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('33', null, '1', '2014-08-10 22:31:47', null, null, 'asd', 'as12', '1', null, '1', '5be9f33eca3b41b990b9ee6627ef1765.xls', '3bce21d1f2694e9995495de91944cbdf.xls', '2', '运行完毕', null, '0');
INSERT INTO `t_projects` VALUES ('34', null, '1', '2014-08-11 18:36:42', null, null, '', '64', '1', null, '1', '158d7d2bb11246c0863e497b08a94c94.xls', '80787ac5e6754bb396a1ed2f9c9ad784.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('35', null, '1', '2014-08-11 18:37:49', null, null, '', '649', '1', null, '1', '2a6cb0dca7c84489a9d8e48262e3b1ad.xls', '43e9f039b5334652a63b9cee45e40cd7.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('36', null, '1', '2014-08-11 18:40:35', null, null, '', '6494', '1', null, '1', 'ec9d764861994d2fb3ba5e96da007c62.xls', 'efada659b3654153a0919d3ee13ec192.xls', '2', '成功运行', '2014-08-11 19:07:20', '0');
INSERT INTO `t_projects` VALUES ('37', null, '1', '2014-08-11 19:53:13', null, null, '', '人员 ', '1', null, '1', '2e0e191423b64d4d90c7b837a1765ef6.xls', 'df2405e6ddc14a59a89f1a01b165738a.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('38', null, '1', '2014-08-11 20:41:21', null, null, '', '547', '0', null, '1', 'cea44537fb4b4f1bbe23f0650ac706e9.xls', 'dc862f21667d4dc1be6b9722b4f6f6ff.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('39', null, '1', '2014-08-11 20:43:43', null, null, '', '547', '0', null, '1', 'eb48b28d9caa4331928b50ff4c302b9e.xls', '54114dfbb9d0472095a91653fe487c6f.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('40', null, '1', '2014-08-11 20:44:27', null, null, '撒旦', '是', '0', null, '1', '62a1585295324671be3dccca05acf716.xls', '79e58139b98f4d79b4c493f0d41c34ad.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('41', null, '1', '2014-08-11 20:45:58', null, null, '撒旦', '是', '0', null, '1', 'f82502cc3afe4625b37b6113a8111276.xls', 'c9e9bcfd53b844ef93d2f7f725f86fb4.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('42', null, '1', '2014-08-11 20:46:21', null, null, '', '21', '0', null, '1', 'c1a7f73437d849d5bb3e4a8a5a2e4e8f.xls', '9f2aa05aea24489ca1ec8af585506309.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('43', null, '1', '2014-08-11 20:47:14', null, null, '', '21', '0', null, '1', '3560b5389cd649e283a4ffb73e8f1a33.xls', 'cb4f3f3ff9e4455d95dfc869a91af49f.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('44', null, '1', '2014-08-11 20:47:49', null, null, '', '213', '0', null, '1', '0e431020a3a14e63bbdbe72c9310f95b.xls', '51bc00ee47124d8b82bfcf78af96ea2f.xls', '2', '成功运行', '2014-08-11 20:48:01', '0');
INSERT INTO `t_projects` VALUES ('45', null, '1', '2014-08-25 09:21:50', null, null, '', 'thermaltest', '2', null, '1', '3860855c88934a848b8f7bea6e199c91.xls', 'd760069f0de54b73a95d5e59e8c4f7b2.xls', '2', '成功运行', '2014-08-25 10:35:20', '0');
INSERT INTO `t_projects` VALUES ('46', null, '1', '2014-08-25 10:21:12', null, null, '', 'gas_solid', '3', null, '1', '64a78e36cff1415c9839faaf1b09bf07.xls', '237c75e4bb554459b48b51ab29e00b57.xls', '2', '成功运行', '2014-08-25 10:33:45', '0');
INSERT INTO `t_projects` VALUES ('47', null, '1', '2014-08-25 10:34:35', null, null, '', 'liquid', '1', null, '1', '7c381712fabd418c9c68528b798edf90.xls', 'ddd18ae1745440488f5871c0da6585ef.xls', '2', '成功运行', '2014-08-25 10:34:55', '0');
INSERT INTO `t_projects` VALUES ('48', null, '1', '2014-08-25 10:36:42', null, null, '', 'thermal2', '2', null, '1', 'e74d3e8a11054efa9c7f6cc0efa8ade5.xls', 'e39b35d7bd0041848271eac49df57991.xls', '2', '成功运行', '2014-08-25 10:36:45', '0');
INSERT INTO `t_projects` VALUES ('49', null, '1', '2014-08-25 10:37:54', null, null, '', 'gas_solid2', '3', null, '1', '8bf9ad983b1e450787445c75f47aa307.xls', '2163498c8f6c462b8e2be8e8eb1446f7.xls', '2', '成功运行', '2014-08-25 10:37:59', '0');
INSERT INTO `t_projects` VALUES ('50', null, '1', '2014-08-25 15:00:09', null, null, '', 'gas_liquid', '4', null, '1', 'c3edaa5124a340bfafdb1cfeb6105b46.xls', '99cc641c2c264224b96ed12b05d9af63.xls', '2', '成功运行', '2014-08-25 15:02:25', '0');
INSERT INTO `t_projects` VALUES ('51', null, '1', '2014-08-25 21:27:56', null, null, '', 'global', '6', null, '1', '2b7102ec4dfc48e6845b52ce935227a8.xls', '7340b16ca0c1477994a3981a49534a31.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('52', null, '1', '2014-08-25 21:44:33', null, null, '阿道夫', '把', '6', null, '1', 'fba690c88ecb44cbb32ff505830b0283.xls', '17eb7d5fc2be4db4ab43ad80eff759c5.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('53', null, '1', '2014-08-25 21:46:06', null, null, '', '啊v', '6', null, '1', '266e9058b53f4bcdbd701371af8c1e03.xls', '638233d8df784b0187ed2fa82d345981.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('54', null, '1', '2014-08-25 21:46:29', null, null, '', '啊v', '1', null, '1', 'bf5b74d716ce44778dacb911f989bb0e.xls', '4096770cf268426eb2a8ba4c953cd961.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('55', null, '1', '2014-08-26 23:06:46', null, null, '4', '345', '1', null, '1', '484d6643f7c849f09e254302c8a6df33.xls', 'a215d5d814ac4a02b18d7e7b1135f227.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('56', null, '1', '2014-08-26 23:07:49', null, null, '', '打', '1', null, '1', '2c6042ce3d2d436e96b063d3fbef80b7.xls', '4f3855e11a844ef981906eddb65e26cc.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('57', null, '1', '2014-08-26 23:08:43', null, null, '', '阿萨德', '1', null, '1', 'd9af73fdf87b4f11b48b01ca156cf359.xls', 'f915e4ade16f4a9b9faa4c49e7fd2dd9.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('58', null, '1', '2014-08-26 23:09:08', null, null, '', '爱的', '2', null, '1', '83189aaec5d74d949d89ed1a18e0e5a8.xls', 'f340d4c81f2d4cba96f1fb6ecaefd5f9.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('59', null, '1', '2014-08-26 23:11:30', null, null, '', 'ui', '8', null, '1', '10bc6d1091ee4f56bb465f24a8774007.xls', '8bb81bc643da49d0a27cd8ba4110c5eb.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('60', null, '1', '2014-08-26 23:12:43', null, null, '', '58', '7', null, '1', '3e2851ecf2b24893a4fd947cab56495c.xls', '2fa12462772f47fd856c6eaaff252892.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('61', null, '1', '2014-08-27 22:08:11', null, null, '', 'new', '1', null, '1', 'e0d89b770788425fa34e5d4a11e7e971.xls', '352e05cf73d94530a00ee1b5618ce8a9.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('62', null, '1', '2014-08-27 22:10:05', null, null, '', '334', '7', null, '1', '42d0d1a1d25242539ce87da8029bb542.xls', '4d54485b635345f7ab16471d2d655be4.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('63', null, '1', '2014-08-27 22:32:47', null, null, '', '021', '1', null, '1', 'c8cb8c17352e43beafa39987e720abae.xls', 'a984de4040e04abb922d8ce7a98949a9.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('64', null, '1', '2014-08-31 11:55:28', null, null, '', 'abc', '1', null, '1', '3d4afffb2dab4a23aae14144730f062f.xls', '48fd7ce3a6484f7f8f3048b2023d483e.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('65', null, '1', '2014-08-31 11:55:44', null, null, '', 'avx', '2', null, '1', '1d6138fb98b44a6bb9e62ff43c1c6fc8.xls', 'f2bf4f718eab44ee8cdd1edafc3d691e.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('66', null, '1', '2014-08-31 11:56:02', null, null, '', 'adv', '7', null, '1', 'a6e0a27748ff4048b0dbe263cf2192d6.xls', '66742d583f0d40e69a422e52b2cd8ff1.xls', '2', '运行成功', null, '0');
INSERT INTO `t_projects` VALUES ('67', null, '1', '2014-08-31 11:57:43', null, null, '', 'abcde', '1', null, '1', 'a107ee62b85345098376e13c8bc6693a.xls', '3092b4e08abf47adae8dcaa6792ca446.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('68', null, '1', '2014-08-31 12:06:18', null, null, '', '爱上', '1', null, '1', 'cba4b48947894130b1e732ce7b5ab62a.xls', '8a1486005dd74636b784b1ab6f6410c8.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('69', null, '1', '2014-09-07 13:33:25', null, null, '123', 'ABCD', '1', null, '1', '7675a6bed1e44eef99c946bd90e327e4.xls', '39787fb665534e9e95af60d76da6fdcb.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('70', null, '1', '2014-09-07 13:41:25', null, null, '123', 'ABCDe', '1', null, '1', '828b435a13bf4e038ab33722c09c76d6.xls', '9c2012a32c3640ba87595104fa9861be.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('71', null, '1', '2014-09-07 13:45:04', null, null, '123', 'ABCDeg', '1', null, '1', 'd75ccb573ffb4f55882481b3c72c05da.xls', '3dbc1fb8cfa343db8628aeff90a86e7e.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('72', null, '1', '2014-09-07 14:27:21', null, null, '123', 'ABCDeg爱上', '1', null, '1', '18916a94e1a843e9a2eb44412377dbf7.xls', 'c7dc993e632a4d52af3fa2a17ed1fe3b.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('73', null, '1', '2014-09-07 14:47:14', null, null, '阿萨德', '爱的', '1', null, '1', '0b0ae1b5bdae412ba66434e6c8291bb7.xls', 'b5b0f7fe8d33426f92d01119ff850b06.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('74', null, '1', '2014-09-07 15:16:30', null, null, '', '321', '3', null, '1', '24141cff65f74b1b9d248f69431bf7a4.xls', '98ef937e084f4d9aa493c0e6c8195031.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('75', null, '1', '2014-09-07 16:43:32', null, null, '77', '7', '1', null, '1', '0bcba5d1784443b98ffadb81053a649e.xls', 'eaac785cdbd4413fa29f9bba5f12f2e3.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('76', null, '1', '2014-09-07 17:18:14', null, null, '', '1231', '3', null, '1', 'c54c55ba0a8b44efbdb0a052d8dcf738.xls', '47c4420aaa5c4253b1ef3c5c271ec039.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('77', null, '1', '2014-09-07 20:17:19', null, null, '', 'adfa', '1', null, '1', 'b1b12874989348cf83900efec5a7a016.xls', '0cd098a2df97404bae7f0ff93fdf5595.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('78', null, '1', '2014-09-09 18:54:30', null, null, '', 'asd', '1', null, '1', 'd386b00b3a334cdd8b4585e6defe65c6.xls', '0cfd4b090306433da130760e17696662.xls', '2', '成功运行', '2014-09-09 19:55:09', '0');
INSERT INTO `t_projects` VALUES ('79', null, '1', '2014-09-09 19:14:52', null, null, '', 'test321', '1', null, '1', '79ca7e92a5a049eb80c1fd440135d7df.xls', '24670bab1d3f4282b580061f3245bfc1.xls', '2', '成功运行', '2014-09-09 22:00:05', '0');
INSERT INTO `t_projects` VALUES ('80', null, '1', '2014-09-10 23:41:22', null, null, '', '65656', '1', null, '1', '740d63f82cb44bbcb41ce26d5464f996.xls', 'd1cde76942d94827baf1ec160c6c4576.xls', '2', '成功运行', '2014-09-10 23:47:03', '0');
INSERT INTO `t_projects` VALUES ('81', null, '1', '2014-09-16 20:48:03', null, null, '', 'Test水电费', '1', null, '1', 'c1356bdd97d549fe89f6514d95f1c6cb.xls', '874477b2e14c416ba7c31dd79887619d.xls', '2', '成功运行', '2014-09-16 20:57:01', '0');
INSERT INTO `t_projects` VALUES ('82', null, '1', '2014-09-16 21:07:15', null, null, '', 'test1', '1', null, '1', '26715441bf794321b3d939c899399741.xls', 'd8f76ea3ff58486bb6c2fe65fe498cd0.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('83', null, '1', '2014-09-16 21:10:08', null, null, '', 'test21', '1', null, '1', '31017b4c303a4c9198e24f9e181c5845.xls', 'bf62740d1e7140cc832c2c7f078ae099.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('84', null, '1', '2014-09-16 21:11:10', null, null, '', '3213213', '1', null, '1', 'ee5c9bd943834cf58799ec61c2e33a68.xls', 'c99102ca1dd3476da48fffa9261376d7.xls', '2', '成功运行', '2014-09-16 21:17:12', '0');
INSERT INTO `t_projects` VALUES ('85', null, '1', '2014-09-16 21:17:41', null, null, '', '12', '1', null, '1', 'e199ce3332574223abe0a487e526d369.xls', 'b9a7d774667c49bbac3b71725b0c2d3a.xls', '2', '成功运行', '2014-09-16 21:23:35', '0');
INSERT INTO `t_projects` VALUES ('86', null, '1', '2014-09-16 21:24:02', null, null, '', '坐在床上', '2', null, '1', '98ff66fd2fca474bb68ad6f7e8b5829e.xls', 'ab7b1b46d6a24f07a2c7e32574ae6951.xls', '2', '成功运行', '2014-09-16 21:28:44', '0');
INSERT INTO `t_projects` VALUES ('87', null, '1', '2014-09-16 21:29:55', null, null, '', '放水电费2', '2', null, '1', 'fefc35c3540a4b9dadf4083865feddb6.xls', 'c127dc5402bb4c25b404ec3c95ccbcc2.xls', '2', '成功运行', '2014-09-16 23:21:27', '0');
INSERT INTO `t_projects` VALUES ('88', null, '1', '2014-09-16 21:54:10', null, null, '', 'test31', '3', null, '1', '14420aa968a243068fc638a14f92a73b.xls', '42bcaf9d5ffe411d83a62eeb7bc97a66.xls', '2', '成功运行', '2014-09-16 21:54:44', '0');
INSERT INTO `t_projects` VALUES ('89', null, '1', '2014-09-16 21:55:10', null, null, '', '鞍山师范', '3', null, '1', '2b57fe5b275844199dce4c4e9161658d.xls', 'e4b55eaaedcd4f779a476f29e798c901.xls', '2', '成功运行', '2014-09-16 23:17:11', '0');
INSERT INTO `t_projects` VALUES ('90', null, '1', '2014-09-16 21:56:07', null, null, '', '爱上大叔', '4', null, '1', 'f6c4e7fd16e04f1c9fecef203f468a0e.xls', '07b81dd46a4c48d6aed734cb89ef2c96.xls', '2', '成功运行', '2014-09-16 22:08:17', '0');
INSERT INTO `t_projects` VALUES ('91', null, '1', '2014-09-16 22:08:40', null, null, '', 'asfa', '4', null, '1', '8324826f3c4544f5a4feb767083c1a1d.xls', '5175a74793bc437b8a3c9652c10e1dd7.xls', '2', '成功运行', '2014-09-16 22:12:45', '0');
INSERT INTO `t_projects` VALUES ('92', null, '1', '2014-09-22 20:52:24', null, null, '', 'zzzz', '1', null, '1', '6a04d6370ba34df8935589b367ac7256.xls', '1385ca9e89734433a998264115916dda.xls', '2', '成功运行', '2014-09-22 20:58:52', '0');
INSERT INTO `t_projects` VALUES ('93', null, '1', '2014-09-22 21:11:17', null, null, '', 'test2', '1', null, '1', '1d5fad79ad974a92942d71c0acc7420c.xls', 'b7e7ef0ebb2c487a992ed29e15b227d7.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('94', null, '1', '2014-09-22 21:16:21', null, null, '', '564745', '1', null, '1', 'db4d46419eb7419fbb389741aa8043ff.xls', 'bed7920aae7e422c8b44d7b342d844a7.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('95', null, '1', '2014-09-22 23:33:02', null, null, '', '656', '1', null, '1', '8d2feab63040433e87d110e2fa54ae24.xls', 'bf963e56978547538b82fa674c418bcd.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('96', null, '1', '2014-09-22 23:37:27', null, null, '', '121', '1', null, '1', '0e873d64d626439ea39380233274cd62.xls', '112327b0564c42478144708fe902241c.xls', '2', '成功运行', '2014-09-24 21:17:20', '0');
INSERT INTO `t_projects` VALUES ('97', null, '1', '2014-09-23 22:32:24', null, null, '', '0000', '1', null, '1', '8ee1c64a8aa24dfebc5d295f4ceab8a9.xls', 'ff2747a07cb343efb5539275bd89b7dc.xls', '2', '成功运行', '2014-09-23 22:42:42', '0');
INSERT INTO `t_projects` VALUES ('98', null, '1', '2014-09-23 22:59:18', null, null, '', '啧啧啧大武当', '1', null, '1', '37a7e0773a4f4f82b590d8b1903ccaac.xls', 'b06f8e65d4f445729f651145a90878f7.xls', '2', '成功运行', '2014-09-24 21:11:56', '0');
INSERT INTO `t_projects` VALUES ('99', null, '1', '2014-09-24 23:18:55', null, null, '', 'test321231', '7', null, '1', '4a1dae5c78ef4dd1a2212efb079d1447.xls', 'b815a03a5dad4745aaa0aba13f6fe45a.xls', '2', '成功运行', '2014-09-24 23:19:01', '0');
INSERT INTO `t_projects` VALUES ('100', null, '1', '2014-10-01 19:35:45', null, null, '', '321123156', '1', null, '1', '9c2d91c405864c5da74200894147c658.xls', 'ae6a5a0f7d29482b84b6f5a95d5c7404.xls', '2', '成功运行', '2014-10-01 21:18:07', '0');
INSERT INTO `t_projects` VALUES ('101', null, '1', '2014-10-01 23:56:42', null, null, '', '123123123', '1', null, '1', '4f5ef3494fa74834b15e1ce3dfc3ebce.xls', 'a94d07ef8fba4f5495dd2ef00a7d6631.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('102', null, '1', '2014-10-08 22:36:46', null, null, '', '计算测试1', '1', null, '1', '208de6f9ab234aa495cd02f4ed3c88e2.xls', '827b4d637e8143948bbaebb635d454de.xls', '2', '成功运行', '2014-10-25 22:36:21', '0');
INSERT INTO `t_projects` VALUES ('103', null, '1', '2014-10-23 22:28:48', null, null, 'test2', 'test2', '10', null, '1', '0e5223ae4c54458e9c03f5d59584fd7c.xls', '96f2141ac45548558ea76ae92f1138e2.xls', '2', '成功运行', '2014-10-26 09:17:51', '0');
INSERT INTO `t_projects` VALUES ('104', null, '1', '2014-10-26 09:19:30', null, null, 'ttt', 'ttt', '10', null, '1', '0f54128f15b649fbb684629087f85422.xls', '5ea813bbcf864cb899688638116bd3a3.xls', '2', '成功运行', '2014-10-26 21:00:40', '0');
INSERT INTO `t_projects` VALUES ('105', null, '1', '2014-10-26 09:25:34', null, null, '45', '454', '1', null, '1', '32593363ffcd4eeb8f475fcbf2e1683f.xls', 'ca898113254f447caf1da9fe78eda5de.xls', '2', '运行成功', null, '0');
INSERT INTO `t_projects` VALUES ('106', null, '1', '2014-10-26 21:03:38', null, null, 'test', 'yts', '10', null, '1', 'ea40febfccc74e39b414d0c5afc03633.xls', '1ec52f63bff54c789daf576da23d8c99.xls', '2', '成功运行', '2014-10-26 21:04:46', '0');
INSERT INTO `t_projects` VALUES ('107', null, '1', '2014-10-26 21:20:00', null, null, '1414', '1414', '0', null, '1', 'ad978fc6716b44f996f43e9b3a79f415.xls', 'c7d9fa5f3b4447e0abedf84ba036c0ff.xls', '2', '成功运行', '2014-10-30 23:35:20', '0');
INSERT INTO `t_projects` VALUES ('108', null, '1', '2014-10-28 21:01:38', null, null, '32132', '12311', '1', null, '1', 'e82e07d49d2d45709e6a1777c103eccc.xls', 'abd870d59b414900b29979d8c416eeb0.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('109', null, '1', '2014-10-30 22:24:17', null, null, '', '23', '1', null, '1', '1ce426b7b348416b835f3098f4195470.xls', 'fc50892184304b8995883de6ab80f6a5.xls', '2', '成功运行', '2014-10-30 23:33:49', '0');
INSERT INTO `t_projects` VALUES ('110', null, '1', '2014-10-30 23:22:29', null, null, 'sd', 'sd', '2', null, '1', 'c1dcfefd968e407195c8695103e95eb3.xls', 'f788ef3eba2d462b9088e0b2adc734ae.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('111', null, '1', '2014-10-30 23:35:39', null, null, '', '5', '0', null, '1', 'bf89c3904c234da19efebf28bb50e36b.xls', '081fe2a2a86b40d19cd06e041fd8a6a2.xls', '2', '成功运行', '2014-10-30 23:35:48', '0');
INSERT INTO `t_projects` VALUES ('112', null, '1', '2014-10-30 23:37:17', null, null, '', '89', '2', null, '1', 'e9869e75b28746d981ce90d92add864a.xls', '4d31575652044d1d9c6f6aa258a57ef5.xls', '2', '成功运行', '2014-10-30 23:45:49', '0');
INSERT INTO `t_projects` VALUES ('113', null, '1', '2014-10-30 23:58:24', null, null, '', '0-', '1', null, '1', '4d76751d27fc4c37b404d643dc489659.xls', 'cc581db2185b442d889b19d512f27bc4.xls', '2', '运行成功', null, '0');
INSERT INTO `t_projects` VALUES ('114', null, '1', '2014-10-31 00:01:42', null, null, '', '90', '2', null, '1', 'ea71a6cd62824bf590069e75734874f3.xls', '27a09bcd9fd541dd8075392fc92b5869.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('115', null, '1', '2014-10-31 00:07:23', null, null, '', '89', '2', null, '1', '978225a58ded49349e242fc68dd7e4ea.xls', 'd31d0f3bb6bb4fbda7913442b5dca9ce.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('116', null, '1', '2014-10-31 00:10:52', null, null, '', '676', '1', null, '1', '2b0a6c3126764846a7a7b1ca9f7501b9.xls', '17655b5b12eb479394dfa1a1c88ede52.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('117', null, '1', '2014-10-31 00:17:38', null, null, '', '45', '1', null, '1', 'e4421489414147a88fcbb1cdd593abad.xls', '4dfccc6176394106ad0e45afd1a8a118.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('118', null, '1', '2014-10-31 00:19:38', null, null, '', '987', '1', null, '1', 'd7cd14d2595e413487fe7379c0ca0579.xls', '173eda72eef94de5b989625f29f075af.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('119', null, '1', '2014-10-31 00:21:40', null, null, '', '889', '1', null, '1', '8082b1ef6c254eb7883c9c2fd215c086.xls', '02bd05e5259442aabca70dd6a182e8a6.xls', '2', '成功运行', '2014-10-31 00:31:34', '0');
INSERT INTO `t_projects` VALUES ('120', null, '1', '2014-10-31 00:32:06', null, null, '', '321', '1', null, '1', '02c19ab441b840c2aac6d09dbc9cc340.xls', 'fcf6bc0020bc4df58b6061fdb21aedb3.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('121', null, '1', '2014-10-31 00:37:06', null, null, '', '655', '2', null, '1', '846141c8d4444e599dbfaf0f95203960.xls', '0359afb02e2a4804a23ad21974c2ccbb.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('122', null, '1', '2014-10-31 00:38:33', null, null, '', '655', '2', null, '1', '7e64e14bbd5d47df9979d6771b2f1b38.xls', '44c4fe1fe29c4dde99d927926246a153.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('123', null, '1', '2014-10-31 00:39:50', null, null, '', '21212', '2', null, '1', 'def2d2877e7f4c1d9712f4521a1988aa.xls', 'd9daa701eb2a4ca08f5c95334ffebd49.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('124', null, '1', '2014-10-31 00:42:45', null, null, '', '21212', '2', null, '1', '4b168dc2b6204d72ba5fe22fddab8967.xls', 'a6f6f498a3b14ff5b01e478ccee1e18c.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('125', null, '1', '2014-10-31 00:48:07', null, null, '', '56', '2', null, '1', 'e44171e2eb3f483aa71e3f91a3cf8538.xls', '505b446370e74686a1971c329ea15d08.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('126', null, '1', '2014-10-31 00:51:00', null, null, '', '321', '2', null, '1', '1615f4dd3aa64031b837d87fbb4b01b1.xls', '3f3f9e91a77949de9a1d7a84558983b8.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('127', null, '1', '2014-10-31 00:52:30', null, null, '', '321', '2', null, '1', '5b6b9a3a8ff446f7b14f3607cc82f158.xls', '0b82f90552c04d6cbdc1758b28b70b56.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('128', null, '1', '2014-10-31 00:55:11', null, null, '', '656', '2', null, '1', '416650fa0ae145158c9401510bea723e.xls', 'e63a2f6e3ad8414bbd59b1b7cc27b87e.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('129', null, '1', '2014-10-31 00:58:21', null, null, '', '656', '2', null, '1', 'c8cacac3070a40fb9f93aadb8eb2e378.xls', '0ef9c1e85a87411599d72c31f92226cc.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('130', null, '1', '2014-10-31 01:27:27', null, null, '', '543', '2', null, '1', '57634d9f672444bcb1cc2e3ab5d7859d.xls', '885ddbfd66464e66b7e5fdade49527f5.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('131', null, '1', '2014-10-31 01:28:15', null, null, '', '9797', '2', null, '1', '03b69c80740241c3b6943bb597e28b33.xls', 'd985442de37d4f4ba0fbba41b9b293e5.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('132', null, '1', '2014-10-31 02:09:52', null, null, '', 'tt', '1', null, '1', '868518f9e91347d3bee80951f64fe16a.xls', '50f7ea505fb4415cb76def9b7bb14448.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('133', null, '1', '2014-10-31 02:10:13', null, null, 'wew', 'rw', '0', null, '1', '1ec41f65b2e541289a19c0f50989ee81.xls', 'f75562d31bda453ba0e1908a4fdc35dd.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('134', null, '1', '2014-10-31 02:10:39', null, null, 'zxzx', 'zxz', '1', null, '1', '206b64c2bf9c4d219fa10dcc37c7003f.xls', '6bffb69e770e4fcdb70b3d19efa3c33f.xls', '2', '成功运行', '2014-10-31 02:11:44', '0');
INSERT INTO `t_projects` VALUES ('135', null, '1', '2014-10-31 19:23:41', null, null, '321', 'test', '1', null, '1', '21f3a9b4410a479d800b764b86d4f07f.xls', '1296a3a9a1ea4093a7521f91f91a1203.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('136', null, '1', '2014-10-31 19:25:26', null, null, '121', '3123', '1', null, '1', 'dede31ad6e194e4989c496ce421f0dd8.xls', 'dff56dfe4a5242f4a489409219782eeb.xls', '2', '成功运行', '2014-10-31 19:25:34', '0');
INSERT INTO `t_projects` VALUES ('137', null, '1', '2014-10-31 19:27:59', null, null, '', '31231', '2', null, '1', '1c965ff3dd30446d91d86e3477872467.xls', 'fa34a45317264d35aec2d8cfee06a2b2.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('138', null, '1', '2014-10-31 19:28:29', null, null, '', '中文', '2', null, '1', 'df3302e4dffa46f4a09a9f12a779f6f9.xls', 'fdf1d00f3c1448b5bc3f282b97cb36f6.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('139', null, '1', '2014-10-31 19:55:50', null, null, '', '31', '2', null, '1', '942343f42fb34b61814f4f3e6318aab5.xls', '5ed940ac7dff49b4b5ef9f45533c2ac8.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('140', null, '1', '2014-10-31 20:51:10', null, null, '', '3123', '2', null, '1', '67fc532c578244ab91f5be2ab22bd2ca.xls', '83c97f2fd72f46a088d749af60705ab2.xls', '2', '成功运行', '2014-10-31 20:52:13', '0');
INSERT INTO `t_projects` VALUES ('141', null, '1', '2014-10-31 20:53:10', null, null, '', '3123', '2', null, '1', 'e411613cece44bd08ab76576d8adc6b7.xls', 'fc36c194e4bf4ebbb0f24df2dca6fc44.xls', '2', '成功运行', '2014-10-31 20:58:58', '0');
INSERT INTO `t_projects` VALUES ('142', null, '1', '2014-10-31 21:06:10', null, null, '', '3123', '2', null, '1', '49bdfc3aefab48fa830d5d74793463e7.xls', '192dd301d6b049be89dc03b41bd588b1.xls', '2', '运行成功', null, '0');
INSERT INTO `t_projects` VALUES ('143', null, '1', '2014-10-31 21:12:54', null, null, '', '432', '2', null, '1', '365fb83706f447e3b253885350c56214.xls', 'f62aeaad702a4046ba693a50652ac33e.xls', '2', '成功运行', '2014-10-31 21:23:30', '0');
INSERT INTO `t_projects` VALUES ('144', null, '1', '2014-10-31 21:23:51', null, null, '212', '321', '1', null, '1', '0ba8ff095c194d59be5591463d5cb2ed.xls', '6c826740191140dd813d66ab10babeee.xls', '2', '成功运行', '2014-10-31 21:24:13', '0');
INSERT INTO `t_projects` VALUES ('145', null, '1', '2014-10-31 21:24:39', null, null, '', '321', '3', null, '1', '71957bd3e78d4e3c8980166c554fa9e1.xls', 'e26815ffebf54a2c9d4d7906b350c693.xls', '2', '成功运行', '2014-10-31 21:24:55', '0');
INSERT INTO `t_projects` VALUES ('146', null, '1', '2014-10-31 21:26:13', null, null, '', '312', '4', null, '1', 'b3bf3bfce2ae44cf842222cecd8f102d.xls', '1e8abfe6ba014a978ed03f581134e9ec.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('147', null, '1', '2014-10-31 21:32:31', null, null, '', '4545', '0', null, '1', 'a4ccb6bae58d4ab69fa380306debe873.xls', 'a46aa5fafb6b4b8d96a498f597d31a8b.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('148', null, '1', '2014-10-31 22:11:28', null, null, '', '243', '4', null, '1', 'a772489efac243389ba526bf05065e60.xls', '4cc87c8a47ab4962861f9f43530557ba.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('149', null, '1', '2014-10-31 22:24:14', null, null, '', '66', '1', null, '1', '77e4cfdda45b469d8b751635ddde9d28.xls', '27af957987254d098b54cf494d6cd6db.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('150', null, '1', '2014-10-31 22:43:13', null, null, '', '959', '2', null, '1', '7835f51a09fa4fd088b99e46a1efa816.xls', '8e5cbd17fb384d0b91eb7fa5d96642c0.xls', '2', '成功运行', '2014-10-31 22:53:45', '0');
INSERT INTO `t_projects` VALUES ('151', null, '1', '2014-10-31 22:55:05', null, null, '123456', '987987', '1', null, '1', '28727b7e8aa34d64b68cffbc772c4eb2.xls', '36ac3635afea4f708d32f5be5347082f.xls', '2', '成功运行', '2014-10-31 22:55:20', '0');
INSERT INTO `t_projects` VALUES ('152', null, '1', '2014-10-31 23:05:04', null, null, '', '最低收费', '1', null, '1', '3ad9854259f044479928c856dfe994a1.xls', '0583f5c8c9d14f9ba74f38d1af53c385.xls', '2', '成功运行', '2014-10-31 23:05:12', '0');
INSERT INTO `t_projects` VALUES ('153', null, '1', '2014-10-31 23:06:30', null, null, '', '阿萨', '1', null, '1', '6e02aa8c10eb4a14b206d1c704d73e88.xls', '772b30498d2f41afaff236a654690e1c.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('154', null, '1', '2014-10-31 23:08:47', null, null, '', 'test', '1', null, '1', 'b107fb0b5e884711b7031a4a5d109e7e.xls', '9caad8fac9e642d4a4ed11031e70bc9a.xls', '2', '成功运行', '2014-10-31 23:08:56', '0');
INSERT INTO `t_projects` VALUES ('155', null, '1', '2014-10-31 23:09:30', null, null, '', 'zzzzzzzzzzzzzzzzz', '1', null, '1', '0ee41ebdb02d4cd79d61ce92d1d529b4.xls', '6cce2d0dcffd4c2d8eb2ec6f5b5c7ff3.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('156', null, '1', '2014-10-31 23:19:07', null, null, '', 'asds', '1', null, '1', 'eefc337b27f84fd6b139b41129ac9380.xls', 'fb12e0f318c7481898ac303193c5da46.xls', '2', '成功运行', '2014-10-31 23:24:47', '0');
INSERT INTO `t_projects` VALUES ('157', null, '1', '2014-11-01 20:48:21', null, null, '', '阿斯达', '1', null, '1', '1420fd8ebf3646bebf4a201715158d49.xls', '95c0d0f2d69345adab8116f610eb9442.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('158', null, '1', '2014-11-01 20:49:26', null, null, '', '阿萨', '1', null, '1', 'fc39be70b3e248d8961dd751a7246426.xls', '6628bdc4621848c1bcc4dca7f89288b4.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('159', null, '1', '2014-11-01 21:17:39', null, null, '', '454', '2', null, '1', 'f8c5251b87594633a1b2f66307922505.xls', '9a161c3d33b9464cabbd3ebdb1a484f9.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('160', null, '1', '2014-11-01 21:21:08', null, null, '', '424', '3', null, '1', 'c904209954f74c48acf8fa5840726db5.xls', '00bef254270442bbada728351dab62ba.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('161', null, '1', '2014-11-01 21:22:23', null, null, '', '44545', '4', null, '1', '5f79c422ece243f2a81db09dd5bcee91.xls', '99d7fa31c9114c77a9c291562264e9e1.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('162', null, '1', '2014-11-01 21:39:54', null, null, '', '3212', '4', null, '1', '92ce9b6cd6da4a84937b7893929410f4.xls', '690c00436279443091f5cb00420a3af6.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('163', null, '1', '2014-11-01 21:48:15', null, null, '', '31', '1', null, '1', 'f270b18a42cb49ccba0fdce413191963.xls', 'b376f77199044b75968bbc6e3eae2203.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('164', null, '1', '2014-11-01 21:51:05', null, null, '', 'test', '1', null, '1', 'b7d0ec3d973c4a7cbaa8f73aa91f3544.xls', 'e3d83a0cf65c4fd79e47713722876e9b.xls', '2', '成功运行', '2014-11-01 22:29:31', '0');
INSERT INTO `t_projects` VALUES ('165', null, '1', '2014-11-02 10:36:01', null, null, '', 'test12312', '1', null, '1', 'e12bb36720b4476f875a880eb51429d3.xls', 'e352b7f210754d63a3557a6e9ed82107.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('166', null, '1', '2014-11-16 10:09:03', null, null, '66', '666', '1', null, '1', '523f4f288d404f2c9eecbdbfc8d599b3.xls', '1915020f13f84739b098f27c6580f184.xls', '2', '成功运行', '2014-11-16 13:50:06', '0');
INSERT INTO `t_projects` VALUES ('167', null, '1', '2014-11-16 10:53:44', null, null, '12', '321', '0', null, '1', '2df87e00fd654069bc4f94d8097136e7.xls', 'c0a6a8d44fa747e6b92cc723dac6b5c1.xls', '2', '成功运行', '2014-11-16 10:54:10', '0');
INSERT INTO `t_projects` VALUES ('168', null, '1', '2014-11-16 11:06:17', null, null, '12', '321', '0', null, '1', 'bced8c9c8c07442991549dfb65e1a275.xls', '66cdc99478ba469faf8300da4e568c2f.xls', '2', '成功运行', '2014-11-16 11:06:25', '0');
INSERT INTO `t_projects` VALUES ('169', null, '1', '2014-11-16 13:46:44', null, null, '', '333', '0', null, '1', '9f285de6c06541d5939f23e979867bf6.xls', '5d4c06be26b74f1dbc1e7860e8e1701f.xls', '2', '成功运行', '2014-11-16 13:46:47', '0');
INSERT INTO `t_projects` VALUES ('170', null, '1', '2014-11-16 13:48:42', null, null, '', '特殊图1', '1', null, '1', '04297880d6704597af91b2a7a3a96d0f.xls', 'd0f20535f64f48fda4e6dca658360112.xls', '2', '成功运行', '2014-11-16 14:25:38', '0');
INSERT INTO `t_projects` VALUES ('171', null, '1', '2014-11-16 14:36:43', null, null, '', '6565', '7', null, '1', 'f7c7854b0ae446868a8ad3fbe41ca036.xls', 'd7b6c2cd3bb24a439b3322b534596f37.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('172', null, '1', '2014-11-17 18:35:07', null, null, '', 'zzz', '1', null, '1', '3e9de9febafe498883fde4102cbf688f.xls', 'b8d5a2a37c8d400a96e63135a2ef90b5.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('173', null, '1', '2014-11-17 19:53:43', null, null, '', '56656', '1', null, '1', 'c70a01a6fc04400a97fae6514eb532c3.xls', '41d7006515a148a38ad5eadbb5ab24ec.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('174', null, '1', '2014-11-17 20:07:56', null, null, '32', '3213', '6', null, '1', '03f14395740445daa5420be6e0a90c68.xls', '992e76a721f0499ea12c096f793741a3.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('175', null, '1', '2014-11-17 20:38:52', null, null, '', '真真正正', '1', null, '1', '6b17689f142844d58baae5792200ed2b.xls', '112ddbe7d1264f78831e2c721acd419f.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('176', null, '1', '2014-11-25 21:35:27', '2014-12-14 21:41:46', null, '', '早作打算', '0', null, '1', '307900fcd00d44f28325a8bd5dde499a.xls', '2373f719b87c47ccb04d066f07edb692.xls', '2', '成功运行', '2014-11-30 20:55:44', '0');
INSERT INTO `t_projects` VALUES ('177', null, '1', '2014-11-25 21:39:42', null, null, '', '2313', '1', null, '1', '7b92fbe6aa50476fb331d47fddac57c3.xls', '44d811acdc194b2b81dec2887e75cc50.xls', '2', '成功运行', '2014-11-25 21:45:32', '0');
INSERT INTO `t_projects` VALUES ('178', null, '1', '2014-11-30 18:15:45', '2014-11-30 20:56:56', null, '', 'test', '1', null, '1', 'f0f08f8c37514118bb418ba0a2d7ecd3.xls', '127d60b40be54352ac3b87771b4f8246.xls', '0', '未运行', '2014-11-30 20:56:30', '0');
INSERT INTO `t_projects` VALUES ('179', null, '1', '2014-12-02 20:37:04', '2014-12-02 22:15:28', null, '', 'tttt', '9', null, '1', '56189574828644ada98d6a6e4bcf17ab.xls', '06c77fa284194c5f9926734751d8979e.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('180', null, '1', '2014-12-02 20:37:43', '2014-12-14 19:00:49', null, '', '43242', '1', null, '1', 'd96881e412fa4c24b7be9eb128f14085.xls', 'eb5f8416478c4d79b90506bc3f8880f4.xls', '3', 'java.lang.Exception: 计算不收敛，请重新输入', null, '0');
INSERT INTO `t_projects` VALUES ('181', null, '1', '2014-12-02 20:54:34', '2014-12-02 20:55:05', null, '', '所发生的发顺丰', '3', null, '1', 'be42f448fb034c509675ec549f45ad59.xls', '2748a09de194404eb929b122c18972ee.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('182', null, '1', '2014-12-02 21:05:06', '2014-12-02 21:33:33', null, '', '最低收费', '6', null, '1', '2f40316263bb40ad9f60301cf83dee21.xls', '0f6b23067e304a89b9df9ef43b1acbd3.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('183', null, '1', '2014-12-02 21:07:03', '2014-12-02 21:07:12', null, '', '31212', '8', null, '1', '8b022c02c8b34055b2513be9a49fed52.xls', 'b29e6d536d704c09a33eb98cf0289a47.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('184', null, '1', '2014-12-02 21:11:52', '2014-12-02 21:12:38', null, '', '阿斯顿发送到', '7', null, '1', 'c0a8b568685e4790a28dce7df2315d9e.xls', 'e1d39227d6a942af8535cd4961cb0472.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('185', null, '1', '2014-12-02 21:32:24', '2014-12-02 21:32:32', null, '', '1231', '8', null, '1', '349a65eac5a24627a297283000787b2b.xls', '5ecd9d07263d4391bcd04179d2b109e3.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('186', null, '1', '2014-12-02 21:34:24', '2014-12-02 21:34:42', null, '', '12313', '7', null, '1', '58d7066a25554d94be7a067f07972cb7.xls', '6c69836d8c224c3d931eb248539f55cb.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('187', null, '1', '2014-12-02 21:37:11', '2014-12-02 22:11:51', null, '', '123131', '7', null, '1', '9ce0ed33c49343fc81c7d5fd1bf8fd4b.xls', '1a554f14092d42ffb895cbf4c61ad91a.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('188', null, '1', '2014-12-02 21:39:06', '2014-12-02 21:39:19', null, '', '1231231', '8', null, '1', '15ba7d5092c14902904537226a28fc49.xls', '6c73107421354060908d85b2d0e1e35e.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('189', null, '1', '2014-12-02 21:45:08', '2014-12-02 21:46:25', null, '', '恶趣味', '6', null, '1', '6cbd33d69d45453585f143051dd0455e.xls', 'bcde47a7c5a7454abe0fb3132ad45e45.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('190', null, '1', '2014-12-02 21:46:32', '2014-12-02 21:46:42', null, '', '3123123', '8', null, '1', 'e2d04e5a35d9427cb149a87d4431def1.xls', 'a7d86ea505254a21b8981f990d26a406.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('191', null, '1', '2014-12-02 21:48:28', '2014-12-02 21:48:34', null, '', '312312', '8', null, '1', '64043d3ae54a4ffca32dfab5784d28fe.xls', '10c262dbe94a45cf84ecdc13bc612857.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('192', null, '1', '2014-12-02 21:50:03', '2014-12-02 21:53:23', null, '', '3123', '8', null, '1', '71f34afbaffd4d3f88e0755b00658c10.xls', 'c4bb5994b4d947658e0971efcdafd7af.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('193', null, '1', '2014-12-02 21:54:30', '2014-12-02 21:56:04', null, '', '热污染', '8', null, '1', '4d8e359fe8d344c9876493c5aeb8118f.xls', '32cd7882f1824f9191636cad3fe11f35.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('194', null, '1', '2014-12-02 21:57:52', '2014-12-02 22:01:55', null, '', '321', '8', null, '1', '1efde74effde431bb55c5e6cec70b1a3.xls', '8169714a7c664490a58dc1ab8aef8cd0.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('195', null, '1', '2014-12-02 22:02:38', '2014-12-02 22:10:40', null, '', '撒的发生的', '6', null, '1', '6925026e60d4438e810b9baf70032764.xls', 'af1df39fb1b54e6597678b4a4b0e7a93.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('196', null, '1', '2014-12-06 17:05:08', '2014-12-06 18:06:41', null, '', '321', '8', null, '1', '459ff0aeff094074a817a30c3766cbce.xls', 'bcc8980bfe7a42509a2bde55a8cdf095.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('197', null, '1', '2014-12-06 17:06:49', '2014-12-06 18:24:29', null, '', '3123', '9', null, '1', '7808de9c539c471bbc4ad2a5d287d2b7.xls', '23b659080f5a4367878580b7c80a43d2.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('198', null, '1', '2014-12-06 17:07:38', '2014-12-06 18:15:55', null, '', '32131', '7', null, '1', '79e542e03bf54271abf1e9538fc70375.xls', 'd00b9819d5c34e6e8deabe7a17171d7e.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('199', null, '1', '2014-12-06 17:10:17', '2014-12-25 23:22:05', null, '', '32131', '6', null, '1', '9edf6178c2da42bcacd4a20c72c941b5.xls', '6897e2a0e0d44c3b9a604d39681fede2.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('200', null, '1', '2014-12-09 21:08:09', '2014-12-17 21:55:35', null, '', '热热', '8', null, '1', '94fb0650f3624773983c9488a68d8f6e.xls', '35921f763b1542e4868e552aee863ac4.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('201', null, '1', '2014-12-14 19:03:43', null, null, '', '12312', '2', null, '1', 'ca7408e9cd23439e96bbac9a94985f5e.xls', '4f280526350d46b088d3491e2e29cf83.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('202', null, '1', '2014-12-14 19:04:44', null, null, '', 'abcd', '2', null, '1', 'fac60e70b79f4dcb9ded79e5b7a4721e.xls', 'a2cc1b2dce4c417b957d57b176937eae.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('203', null, '1', '2014-12-14 19:04:44', null, null, '', 'abcd', '2', null, '1', '70ce96d65a52432dbdeb46c1027d1fcd.xls', '980d63e46aca4140afa027de30f33d5c.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('204', null, '1', '2014-12-14 19:07:09', null, null, '', '312', '2', null, '1', 'e57e1f6a2f0949b696f83a0add04fbe5.xls', '2c30342025254c4bb97b0df54b25547f.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('205', null, '1', '2014-12-14 19:08:54', '2014-12-14 19:49:49', null, '', 'abcd123123', '2', null, '1', '9ccc0292b04846f78b2273c34f52365d.xls', 'a35d1dd4cb164b3bb43cfe5fa4c51162.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('206', null, '1', '2014-12-17 21:56:25', null, null, '', '3123', '8', null, '1', '123b0cc016a340e48550b50d8f42a24d.xls', '7e0817371c5b4755a62d5577a4f8e20b.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('207', null, '1', '2014-12-17 22:01:21', '2014-12-17 22:14:35', null, 'werwer', 'qrqwe', '8', null, '1', '4115d905e19f464dba3a39ff2b04c4c2.xls', '140a1f2091fd4fb6862f68f59af1a42b.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('208', null, '1', '2014-12-25 21:24:11', null, null, '123', 'test321', '2', null, '1', '8acb85fd75f54d5db3e62af38c2f86f8.xls', '8ef1c0c1d637459eaea6008224724c16.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('209', null, '1', '2014-12-25 21:40:36', null, null, '', '反反复复飞', '2', null, '1', 'e6917f46211c4abfa26e1bfa99d24c28.xls', 'b4d706ec824b4db688d7bf6dfbfcd444.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('210', null, '1', '2014-12-25 21:56:20', null, null, '', '23424', '2', null, '1', 'b364ceaf7db248abb238640e89dd836a.xls', '5b4e1daa6f594e2aa44f6f41dcdae210.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('212', null, '1', '2014-12-25 22:21:43', null, null, '', '31231', '8', null, '1', 'd16e33aab34849cc8a859facf0056af2.xls', 'b9c8b629710a4445898518dbf294dee2.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('213', null, '1', '2014-12-25 22:22:16', '2014-12-25 22:22:31', null, '热污染', '31231', '8', null, '1', '286b94b845aa42f59e7e45862907a772.xls', 'd839b217d29346cd98751f78077acb68.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('214', null, '1', '2014-12-25 22:27:51', '2014-12-27 12:04:41', null, '', '35435', '3', null, '1', 'd270305b34b6485397919640b31db9f3.xls', '71a07d4636514b32b5b6c68ee5ca24cb.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('215', null, '1', '2014-12-25 22:28:28', null, null, '', '345354345', '2', null, '1', 'e1e8a1cafdf54df0a1c2dbb21518467d.xls', 'ccd03df0f10a4aa299ce74a0594cc910.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('216', null, '1', '2014-12-25 22:32:49', '2014-12-25 22:33:18', null, '', '32132', '2', null, '1', '7f7425768dfd4e3a8cf3bf79dc1e5ce0.xls', '17ac2e0e409b4f49805dfec5a8ed5df9.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('217', null, '1', '2014-12-25 22:33:59', '2014-12-25 22:48:42', null, '', '9849', '4', null, '1', '4746a001d31c437aba8cae756864726d.xls', '04ba765bab55479abe642128f3ac7b49.xls', '3', 'java.lang.Exception: 计算不收敛，请重新输入.', null, '0');
INSERT INTO `t_projects` VALUES ('218', null, '1', '2014-12-25 22:35:27', '2014-12-25 22:36:47', null, '945', '595', '0', null, '1', 'e8aab54943264b518d7e72ec9194848d.xls', 'b9768758ebea4ca1bd0620e85894bf8b.xls', '3', 'java.lang.NumberFormatException: empty String', null, '0');
INSERT INTO `t_projects` VALUES ('219', null, '1', '2014-12-25 22:44:30', '2014-12-25 22:44:41', null, '', '正坐在', '0', null, '1', '62ad4f9d13eb4b13bea1d3de3903ed07.xls', 'bb20c4911f9d4188bca69f4c0fa069be.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('221', null, '1', '2014-12-25 22:47:44', '2014-12-25 22:48:24', null, '', '32123123', '2', null, '1', '61db63ec97124c3db55a5821925f16ae.xls', 'ccf553d918314816bb4aa915641e0564.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('222', null, '1', '2014-12-25 22:49:57', '2014-12-25 22:50:12', null, '', '撒地方', '0', null, '1', '573790f709f84cef973acd51e3b30032.xls', '498d184154b04f8dbc0e7bcbc257203f.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('223', null, '1', '2014-12-25 23:00:50', '2014-12-25 23:01:11', null, '', '=-=-', '1', null, '1', 'a608ace0e9da4b71a388fedd2d6f314d.xls', '91c42d7ec4c446d7a0a3d46bee9d84e3.xls', '3', 'java.lang.Exception: 计算不收敛，请重新输入', null, '0');
INSERT INTO `t_projects` VALUES ('224', null, '1', '2014-12-25 23:04:27', '2014-12-27 11:05:08', null, '', '23424', '4', null, '1', '41d0dbdf797f4924b238787803e28a16.xls', 'bfdc9ec4ea20423d8ad834ab5adf9a7a.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('225', null, '1', '2014-12-25 23:06:46', '2014-12-25 23:07:12', null, '', '4242', '8', null, '1', '53a2731df28c468db90c489fd24050a7.xls', '2454452c4ad14787931a0534cf75aa3d.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('226', null, '1', '2014-12-25 23:07:27', '2014-12-25 23:24:31', null, '', '-=-', '9', null, '1', 'ba655440f4504a8894013c423e8bb207.xls', '9f479502d93e4b469b747d53451dda18.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('227', null, '1', '2014-12-25 23:08:51', '2014-12-25 23:09:08', null, '', '-=-=-=-', '7', null, '1', 'f3297e0c648b4b589dc969535492751b.xls', 'aee82d9672e04bd38aa4a54eaa97bb5d.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('228', null, '1', '2014-12-25 23:22:14', '2014-12-25 23:22:28', null, '212', '54445454', '6', null, '1', 'b50cb81ac97747cf9edc669bdcc6b0e9.xls', 'dbfa59938880435284f8f63ae8183ff1.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('229', null, '1', '2014-12-25 23:37:42', '2014-12-25 23:41:23', null, '', '5656', '9', null, '1', '0146eb3a5ba34a97a3a116a53bf4e3a8.xls', '0ef9a412d3c14f83bfdf6b112aad78b0.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('230', null, '1', '2014-12-25 23:39:22', '2014-12-25 23:50:19', null, '', '4242', '1', null, '1', 'e6203f6a76724c1f9157782f5b80ab4f.xls', '1902ef2f8c2c4d4fb2884adc8c96cce9.xls', '3', 'java.lang.Exception: 计算不收敛，请重新输入', null, '0');
INSERT INTO `t_projects` VALUES ('231', null, '1', '2014-12-26 21:48:12', null, null, '', '1000', '1', null, '1', '49f044f55fb44fb694bf8fa289ae1141.xls', 'd3f89a33c34447cc82b5030d18181bdf.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('232', null, '1', '2014-12-26 21:50:50', null, null, '', 'testsimple', '1', null, '1', '7b22f00f56bd4079a7709f3042d37dc4.xls', '91473e81991c451098f4a34aa4a95221.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('233', null, '1', '2014-12-27 10:59:05', '2014-12-27 10:59:44', null, '', '999', '1', null, '1', 'cb5afc98371a47f4a8b402e57b6a1222.xls', '1c6bec751dd545e2abcad1705bb065fa.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('234', null, '1', '2014-12-27 10:59:50', '2014-12-27 11:00:09', null, '', '22', '1', null, '1', 'ffd31fa8a91348abb60bef2e733cccc4.xls', '6a200c03eb974e8080150242336e4560.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('235', null, '1', '2014-12-27 11:00:06', '2014-12-27 11:13:30', null, '', '221', '2', null, '1', '74abe035f8354fccbf570d5869a2f31c.xls', '831b0bc6ef1f49208c220b230ae6d6a0.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('236', null, '1', '2014-12-27 11:01:18', '2014-12-27 11:01:43', null, '', '3222', '2', null, '1', 'b5618ebb5c7a41d2b80f7b7e2d5e2584.xls', '88e82bdb524e41b2b728853d18822638.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('237', null, '1', '2014-12-27 11:05:48', '2014-12-27 11:09:05', null, '', '313213', '4', null, '1', '99f2ff2e987a422b9fbb589dd239504e.xls', 'c1d83218aef14bb9af455fa94b159141.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('238', null, '1', '2014-12-30 21:58:50', '2014-12-30 22:02:02', null, '', '正坐在', '1', null, '1', '2522723bf87244169051b09abfde9188.xls', 'bcce94a4b8a6488883cc1d925342b471.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('239', null, '1', '2014-12-30 22:00:03', null, null, '', '1024', '1', null, '1', 'be784b9fdcc44df9acfc88bbdabeab32.xls', 'f84c6477d18d4138bfa00be8e5a42333.xls', '2', '运行成功', null, '0');
INSERT INTO `t_projects` VALUES ('240', null, '1', '2015-02-09 21:38:18', null, null, '', 'zzzdfsf', '8', null, '1', 'cc9084539d5c4a9bbe5294731d3ec4ae.xls', '59b33a5efa0f410f89ba6125177fada4.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('241', null, '1', '2015-02-09 21:38:58', '2015-02-09 21:39:43', null, '', 'ss', '8', null, '1', '928be957102d42e6ac85368884210b5c.xls', 'a896d1d8cca74ac18ea5517baa96b4ba.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('242', null, '1', '2015-06-06 17:18:30', '2015-06-07 00:59:17', null, '', 'testfinal321', '1', null, '1', '75d94f1164cd46e0a95b9b0e9d4a5acf.xls', '3038d6bab54f408f926b5af42eda5c06.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('243', null, '1', '2015-06-07 00:24:44', '2015-06-07 00:25:42', null, '', 'final', '8', null, '1', 'f478821619c6425592f511efc868889b.xls', '37189b483ba8494aa71a9c9a14845e36.xls', '2', '成功运行', null, '0');
INSERT INTO `t_projects` VALUES ('244', null, '1', '2015-06-07 00:31:12', null, null, '测试2', 'test', '6', null, '1', '21b36e952c3c4c3584690bddedd260ab.xls', '5bda1acd3fc048bda2043cec968d7579.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('245', null, '1', '2015-06-07 00:31:30', null, null, '测试final', '整体测试', '7', null, '1', '1b0e8766d3084129855d49f284ba21ee.xls', '851fe9532c194955b40ae4196e54f185.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('246', null, '1', '2015-06-07 00:31:45', null, null, '测试321', '测试境地', '0', null, '1', '1126fe7b266c4f3c86e5fd8076f1ccc3.xls', '51ed8127b2f34b4f84fbd5994310f965.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('247', null, '1', '2015-06-07 13:37:24', null, null, '', '测试', '1', null, '1', '26a921f12a434d70a53cd2c7acc99144.xls', 'd9263dc5d1704f0c8ff0d17189bf9097.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('248', null, '1', '2015-06-07 13:59:16', null, null, '', 'obs', '8', null, '1', '1f5dc01afac74e049754cd5b9b69e59b.xls', '0f960bf6a8bd4c529a62248e82d7877b.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('249', null, '1', '2015-08-31 21:37:53', null, null, 'test', '测试23', '1', null, '1', '88c8d051bfcf4af0ad30392fc8c2c099.xls', 'f5da17982ea74fac9310f02a1b13ec15.xls', '0', '未运行', null, '0');
INSERT INTO `t_projects` VALUES ('250', null, '1', '2015-08-31 21:38:45', null, null, '', 'final测测', '8', null, '1', '254a4cf8f3d0417cb93e7c5c61968e63.xls', '7ae21090c53b4bd486933f2cd57ffa0c.xls', '0', '未运行', null, '0');

-- ----------------------------
-- Table structure for t_proper
-- ----------------------------
DROP TABLE IF EXISTS `t_proper`;
CREATE TABLE `t_proper` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProperName` varchar(50) DEFAULT NULL,
  `ProperDefaultValue` varchar(50) DEFAULT NULL,
  `ProperUnit` varchar(50) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_proper
-- ----------------------------
INSERT INTO `t_proper` VALUES ('1', '周长', '3865', 'km', '6');
INSERT INTO `t_proper` VALUES ('5', null, null, null, '5');
INSERT INTO `t_proper` VALUES ('6', null, null, null, null);
INSERT INTO `t_proper` VALUES ('7', null, null, null, null);
INSERT INTO `t_proper` VALUES ('8', '重量', '0', 'kg', '10');
INSERT INTO `t_proper` VALUES ('9', '日流量', '5000', 'm3', '10');
INSERT INTO `t_proper` VALUES ('10', 'test2', '0', 'cm', '11');

-- ----------------------------
-- Table structure for t_roles
-- ----------------------------
DROP TABLE IF EXISTS `t_roles`;
CREATE TABLE `t_roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(32) DEFAULT NULL,
  `RoleDescription` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_roles
-- ----------------------------
INSERT INTO `t_roles` VALUES ('1', '一般工程用户', '一般工程用户');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(32) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `LastLoginTime` datetime DEFAULT NULL,
  `LoginTimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'ice', 'ice', null, null, null);

-- ----------------------------
-- Table structure for t_userrole
-- ----------------------------
DROP TABLE IF EXISTS `t_userrole`;
CREATE TABLE `t_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userrole
-- ----------------------------
INSERT INTO `t_userrole` VALUES ('1', '1', '1');
