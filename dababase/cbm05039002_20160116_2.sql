/*
Navicat MySQL Data Transfer

Source Server         : Oil
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : oildynamic

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-01-16 18:38:02
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_basicnode
-- ----------------------------
INSERT INTO `t_basicnode` VALUES ('6', '10', 'zhongyangchulichang.png', '中央气站');
INSERT INTO `t_basicnode` VALUES ('10', '1', 'jiqizengyazhan.png', '集气站');
INSERT INTO `t_basicnode` VALUES ('11', '2', 'qijing.png', '气井');
INSERT INTO `t_basicnode` VALUES ('12', '0', 'guandao.png', '连接');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_edge
-- ----------------------------
INSERT INTO `t_edge` VALUES ('5', '11', '10', '0', '5', '阿百川地方');
INSERT INTO `t_edge` VALUES ('7', '10', '23', '0', '5', '水电费');
INSERT INTO `t_edge` VALUES ('10', '23', '27', '0', '5', 'dwqdq');
INSERT INTO `t_edge` VALUES ('23', '32', '31', '0', '5', 'aaaa');
INSERT INTO `t_edge` VALUES ('24', '29', '32', '0', '5', 'asdfas');
INSERT INTO `t_edge` VALUES ('25', '30', '29', '0', '5', 'asdfasd');
INSERT INTO `t_edge` VALUES ('26', '10', '30', '0', '5', 'abcd');
INSERT INTO `t_edge` VALUES ('27', '38', '28', '0', '5', 'abcdef');
INSERT INTO `t_edge` VALUES ('28', '37', '38', '0', '5', 'abcd');
INSERT INTO `t_edge` VALUES ('29', '33', '37', '0', '5', 'abcefds');
INSERT INTO `t_edge` VALUES ('30', '25', '33', '0', '5', 'abce');
INSERT INTO `t_edge` VALUES ('31', '35', '34', '0', '5', 'aadfsdfs');
INSERT INTO `t_edge` VALUES ('32', '23', '35', '0', '5', 'abcde');
INSERT INTO `t_edge` VALUES ('33', '35', '41', '0', '5', 'dfs');
INSERT INTO `t_edge` VALUES ('34', '27', '39', '0', '5', 'aadfs');
INSERT INTO `t_edge` VALUES ('35', '39', '25', '0', '5', '5635463');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_node
-- ----------------------------
INSERT INTO `t_node` VALUES ('10', 'ad', '10', '5', '0', '0', '108.9356865', '34.2732', '3', '0');
INSERT INTO `t_node` VALUES ('11', 'final', '10', '5', '0', '0', '108.93325', '34.2632', '0', '0');
INSERT INTO `t_node` VALUES ('20', '12312', '11', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('21', '9987', '11', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('23', 'zfew', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('25', '瓦尔特', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('26', null, null, '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('27', 'qweq', '10', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('28', 'dqwdq', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('29', '1231231', '6', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('30', '1231231', '10', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('31', 'avx', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('32', 'adf', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('33', 'b', '6', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('34', 'adfasdffds', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('35', 'abc', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('36', 'bbb', null, '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('37', 'abcedfe', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('38', 'abcfe', '11', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('39', 'abcd', '10', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('40', 'aaaa', null, '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_node` VALUES ('41', 'adfs', '6', '5', '0', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_nodeproper` VALUES ('21', '10', '0', '20', '0');
INSERT INTO `t_nodeproper` VALUES ('22', '10', '0', '21', '0');
INSERT INTO `t_nodeproper` VALUES ('23', '10', '0', '22', '5');
INSERT INTO `t_nodeproper` VALUES ('24', '10', '0', '23', '5');
INSERT INTO `t_nodeproper` VALUES ('25', '10', '0', '25', '5');
INSERT INTO `t_nodeproper` VALUES ('26', '8', '0', '27', '5');
INSERT INTO `t_nodeproper` VALUES ('27', '9', '5000', '27', '5');
INSERT INTO `t_nodeproper` VALUES ('29', '10', '3', '28', '5');
INSERT INTO `t_nodeproper` VALUES ('30', '1', '3865', '29', '5');
INSERT INTO `t_nodeproper` VALUES ('31', '8', '0', '30', '5');
INSERT INTO `t_nodeproper` VALUES ('32', '9', '5000', '30', '5');
INSERT INTO `t_nodeproper` VALUES ('33', '10', '0', '31', '5');
INSERT INTO `t_nodeproper` VALUES ('34', '10', '0', '32', '5');
INSERT INTO `t_nodeproper` VALUES ('35', '1', '3865', '33', '5');
INSERT INTO `t_nodeproper` VALUES ('36', '10', '0', '34', '5');
INSERT INTO `t_nodeproper` VALUES ('37', '10', '0', '35', '5');
INSERT INTO `t_nodeproper` VALUES ('38', '10', '0', '37', '5');
INSERT INTO `t_nodeproper` VALUES ('39', '10', '0', '38', '5');
INSERT INTO `t_nodeproper` VALUES ('40', '8', '32', '39', '5');
INSERT INTO `t_nodeproper` VALUES ('41', '9', '5000', '39', '5');
INSERT INTO `t_nodeproper` VALUES ('43', '1', '3865', '41', '5');

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
INSERT INTO `t_proper` VALUES ('10', '周长', '0', 'cm', '11');

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
INSERT INTO `t_user` VALUES ('1', 'ice', 'ice', null, null, '6');
