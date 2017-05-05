/*
Navicat MySQL Data Transfer

Source Server         : mysql-localhost
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : cloudmarket

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-05-05 14:24:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'zhangpeng', '123');

-- ----------------------------
-- Table structure for cloudorder
-- ----------------------------
DROP TABLE IF EXISTS `cloudorder`;
CREATE TABLE `cloudorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `goodid` int(11) NOT NULL,
  `cloudcode` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `orderid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5764 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cloudorder
-- ----------------------------
INSERT INTO `cloudorder` VALUES ('5692', '16', '7', '864174167', '2017/5/3', '2017167');
INSERT INTO `cloudorder` VALUES ('5693', '16', '8', '206313168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5694', '16', '8', '182953168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5695', '16', '8', '901229168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5696', '16', '8', '645393168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5697', '16', '8', '4091168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5698', '16', '8', '236139168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5699', '16', '8', '477768168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5700', '16', '8', '553347168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5701', '16', '8', '142851168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5702', '16', '8', '611276168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5703', '16', '8', '916120168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5704', '16', '8', '994467168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5705', '16', '8', '4428168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5706', '16', '8', '806358168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5707', '16', '8', '180294168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5708', '16', '8', '248745168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5709', '16', '8', '606068168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5710', '16', '8', '915301168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5711', '16', '8', '463826168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5712', '16', '8', '870113168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5713', '16', '8', '586362168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5714', '16', '8', '40273168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5715', '16', '8', '146232168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5716', '16', '8', '89453168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5717', '16', '8', '168318168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5718', '16', '8', '976361168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5719', '16', '8', '678505168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5720', '16', '8', '581745168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5721', '16', '8', '776872168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5722', '16', '8', '234842168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5723', '16', '8', '552854168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5724', '16', '8', '838176168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5725', '16', '8', '837352168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5726', '16', '8', '643204168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5727', '16', '8', '688485168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5728', '16', '8', '623272168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5729', '16', '8', '701447168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5730', '16', '8', '359926168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5731', '16', '8', '645767168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5732', '16', '8', '432457168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5733', '16', '8', '173061168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5734', '16', '8', '52345168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5735', '16', '8', '880638168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5736', '16', '8', '742274168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5737', '16', '8', '704671168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5738', '16', '8', '917000168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5739', '16', '8', '791767168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5740', '16', '8', '491157168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5741', '16', '8', '594609168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5742', '16', '8', '944492168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5743', '16', '8', '77911168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5744', '16', '8', '464956168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5745', '16', '8', '585826168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5746', '16', '8', '933943168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5747', '16', '8', '410070168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5748', '16', '8', '166040168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5749', '16', '8', '36721168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5750', '16', '8', '811776168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5751', '16', '8', '477075168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5752', '16', '8', '27729168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5753', '16', '8', '557633168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5754', '16', '8', '896022168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5755', '16', '8', '776474168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5756', '16', '8', '908008168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5757', '16', '8', '58421168', '2017/5/3', '2017168');
INSERT INTO `cloudorder` VALUES ('5760', '17', '8', '77943178', '2017/5/3', '2017178');
INSERT INTO `cloudorder` VALUES ('5761', '16', '12', '6407271612', '2017/5/3', '20171612');
INSERT INTO `cloudorder` VALUES ('5762', '16', '12', '1674011612', '2017/5/3', '20171612');
INSERT INTO `cloudorder` VALUES ('5763', '16', '7', '307243167', '2017/5/5', '2017167');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `addtime` varchar(255) NOT NULL,
  `joinpeoplenum` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(255) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `joinpeople` int(11) DEFAULT NULL,
  `remainpeople` int(11) DEFAULT NULL,
  `luckycode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('7', '手机', '888', '2017/4/10', '898', '进行中', '17', 'http://oekmywyju.bkt.clouddn.com/2017041011411677279.jpg', '2', '896', '0');
INSERT INTO `good` VALUES ('8', '香草', '56', '2017/4/23', '66', '已揭晓', '17', 'http://oekmywyju.bkt.clouddn.com/2017042321570043556.jpg', '66', '0', '870113168');
INSERT INTO `good` VALUES ('11', '钱包', '56', '2017/4/29', '66', '进行中', '17', 'http://oekmywyju.bkt.clouddn.com/2017042917132533852.jpg', '0', '66', '0');
INSERT INTO `good` VALUES ('12', 'kindle', '499', '2017/4/30', '509', '进行中', '16', 'http://oekmywyju.bkt.clouddn.com/2017043009251901342.jpg', '2', '507', '0');
INSERT INTO `good` VALUES ('13', '笔袋', '88', '2017/5/5', '98', '进行中', '16', 'http://oekmywyju.bkt.clouddn.com/2017050510381335820.jpg', '0', '98', '0');
INSERT INTO `good` VALUES ('15', '水杯', '99', '2017/5/5', '109', '进行中', '16', 'http://oekmywyju.bkt.clouddn.com/2017050510433013830.jpg', '0', '109', '');
INSERT INTO `good` VALUES ('16', '圆珠笔', '78', '2017/5/5', '88', '进行中', '16', 'http://oekmywyju.bkt.clouddn.com/2017050510454023194.jpg', '0', '88', '');

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `gooid` int(11) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('16', null, '123', '18847163389', null);
INSERT INTO `user` VALUES ('17', null, '456', '13948616544', null);
INSERT INTO `user` VALUES ('18', null, '789', '15024847599', null);
