/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50641
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2018-11-29 13:54:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict`;
CREATE TABLE `t_sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `calzz` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `key_` varchar(255) NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `value_` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_dict
-- ----------------------------
INSERT INTO `t_sys_dict` VALUES ('1', 'user', 'status', '0', '1', '无效');
INSERT INTO `t_sys_dict` VALUES ('2', 'user', 'status', '1', '2', '有效');

-- ----------------------------
-- Table structure for t_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_log`;
CREATE TABLE `t_sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gmt_create` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=516 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_log
-- ----------------------------
INSERT INTO `t_sys_log` VALUES ('1', null, null, null, null, null, null, null, 'admin');
INSERT INTO `t_sys_log` VALUES ('2', null, null, null, null, null, null, null, 'admin');
INSERT INTO `t_sys_log` VALUES ('3', null, null, null, null, null, null, null, null);
INSERT INTO `t_sys_log` VALUES ('4', '2018-11-08 19:24:54', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '21', '0', '');
INSERT INTO `t_sys_log` VALUES ('5', '2018-11-08 19:26:15', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '159', '0', '');
INSERT INTO `t_sys_log` VALUES ('6', '2018-11-09 09:39:12', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '232', '0', '');
INSERT INTO `t_sys_log` VALUES ('7', '2018-11-09 10:42:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '139', '0', '');
INSERT INTO `t_sys_log` VALUES ('8', '2018-11-09 10:45:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('9', '2018-11-09 11:36:38', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '128', '0', '');
INSERT INTO `t_sys_log` VALUES ('10', '2018-11-09 11:37:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('11', '2018-11-09 11:38:33', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('12', '2018-11-09 14:44:51', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '179', '0', '');
INSERT INTO `t_sys_log` VALUES ('13', '2018-11-09 18:24:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '161', '0', '');
INSERT INTO `t_sys_log` VALUES ('14', '2018-11-10 09:15:58', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"passwoed\":null}', '158', '0', '');
INSERT INTO `t_sys_log` VALUES ('15', '2018-11-10 09:21:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '125', '0', '');
INSERT INTO `t_sys_log` VALUES ('16', '2018-11-10 10:13:54', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '10', '0', '');
INSERT INTO `t_sys_log` VALUES ('17', '2018-11-10 10:19:48', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('18', '2018-11-10 10:22:09', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '128', '0', '');
INSERT INTO `t_sys_log` VALUES ('19', '2018-11-10 11:26:08', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '188', '0', '');
INSERT INTO `t_sys_log` VALUES ('20', '2018-11-10 11:48:46', '127.0.0.1', 'com.wonders.base.controller.OrganController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1541821726084,\"nodePath\":\"0-1-3\",\"id\":5,\"name\":\"前端开发部\",\"enName\":\"qdkfb\",\"type\":\"type_3\",\"address\":\"武警路151 2FF\",\"contactTel\":\"12345678\",\"remark\":\"test data\",\"parent\":{\"id\":3}}', '54', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('21', '2018-11-10 15:16:45', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '9', '0', '');
INSERT INTO `t_sys_log` VALUES ('22', '2018-11-10 15:16:45', '192.254.5.158', 'com.wonders.base.controller.LogController.save()', '保存', '{\"id\":21,\"userId\":0,\"username\":\"\",\"operation\":\"登陆\",\"time\":9,\"method\":\"com.wonders.base.controller.LoginController.login()\",\"params\":\"{\\\"username\\\":\\\"admin\\\",\\\"password\\\":\\\"123456\\\"}\",\"ip\":\"127.0.0.1\",\"gmtCreate\":\"2018-11-10 15:16:45\"}', '59', '0', '');
INSERT INTO `t_sys_log` VALUES ('23', '2018-11-10 16:16:33', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '19', '0', '');
INSERT INTO `t_sys_log` VALUES ('24', '2018-11-10 16:16:33', '192.254.5.158', 'com.wonders.base.controller.LogController.save()', '保存', '{\"id\":23,\"userId\":0,\"username\":\"\",\"operation\":\"登陆\",\"time\":19,\"method\":\"com.wonders.base.controller.LoginController.login()\",\"params\":\"{\\\"username\\\":\\\"admin\\\",\\\"password\\\":\\\"123456\\\"}\",\"ip\":\"127.0.0.1\",\"gmtCreate\":\"2018-11-10 16:16:33\"}', '42', '0', '');
INSERT INTO `t_sys_log` VALUES ('25', '2018-11-10 16:17:00', '127.0.0.1', 'com.wonders.base.controller.OrganController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1541837820993,\"nodePath\":\"0-1-3\",\"id\":6,\"name\":\"后端开发部\",\"enName\":\"hdkfb\",\"type\":\"type_3\",\"address\":\"武警路151 2FF\",\"contactTel\":\"12345678\",\"remark\":\"test data\",\"parent\":{\"id\":3}}', '10', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('26', '2018-11-11 08:56:54', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '159', '0', '');
INSERT INTO `t_sys_log` VALUES ('27', '2018-11-11 08:56:54', '192.254.5.158', 'com.wonders.base.controller.LogController.save()', '保存', '{\"id\":26,\"userId\":0,\"username\":\"\",\"operation\":\"登陆\",\"time\":159,\"method\":\"com.wonders.base.controller.LoginController.login()\",\"params\":\"{\\\"username\\\":\\\"admin\\\",\\\"password\\\":\\\"123456\\\"}\",\"ip\":\"127.0.0.1\",\"gmtCreate\":\"2018-11-11 08:56:54\"}', '76', '0', '');
INSERT INTO `t_sys_log` VALUES ('28', '2018-11-11 09:00:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '121', '0', '');
INSERT INTO `t_sys_log` VALUES ('29', '2018-11-11 09:30:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '127', '0', '');
INSERT INTO `t_sys_log` VALUES ('30', '2018-11-11 15:21:53', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '25', '0', '');
INSERT INTO `t_sys_log` VALUES ('31', '2018-11-11 15:25:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('32', '2018-11-11 15:30:06', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('33', '2018-11-11 15:30:55', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('34', '2018-11-11 15:35:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('35', '2018-11-11 15:35:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('36', '2018-11-11 15:35:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('37', '2018-11-11 15:35:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('38', '2018-11-11 15:36:12', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('39', '2018-11-11 15:36:24', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('40', '2018-11-11 15:36:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('41', '2018-11-11 15:38:10', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('42', '2018-11-11 15:38:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('43', '2018-11-11 15:38:34', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('44', '2018-11-11 15:39:29', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('45', '2018-11-11 15:39:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('46', '2018-11-11 15:39:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('47', '2018-11-11 15:40:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('48', '2018-11-11 15:43:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('49', '2018-11-11 15:43:47', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('50', '2018-11-11 15:43:55', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('51', '2018-11-11 15:44:00', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('52', '2018-11-11 15:45:01', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('53', '2018-11-11 15:45:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('54', '2018-11-11 15:45:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('55', '2018-11-11 15:45:09', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('56', '2018-11-11 15:45:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('57', '2018-11-11 15:46:10', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('58', '2018-11-11 15:47:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('59', '2018-11-11 15:48:21', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('60', '2018-11-11 15:49:10', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('61', '2018-11-11 15:50:35', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('62', '2018-11-11 15:51:04', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('63', '2018-11-11 15:51:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('64', '2018-11-11 15:51:19', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('65', '2018-11-11 15:51:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('66', '2018-11-11 15:52:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('67', '2018-11-11 15:53:58', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('68', '2018-11-11 15:54:04', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('69', '2018-11-11 16:01:29', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('70', '2018-11-11 16:02:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('71', '2018-11-11 16:04:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('72', '2018-11-11 16:05:24', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('73', '2018-11-11 16:05:30', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('74', '2018-11-11 16:05:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('75', '2018-11-11 16:05:53', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('76', '2018-11-11 16:05:58', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('77', '2018-11-11 16:11:55', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('78', '2018-11-11 16:12:16', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('79', '2018-11-11 16:16:33', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('80', '2018-11-11 16:16:51', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('81', '2018-11-11 16:16:55', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('82', '2018-11-11 16:17:04', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('83', '2018-11-11 16:17:05', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('84', '2018-11-11 16:17:05', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('85', '2018-11-11 16:17:12', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('86', '2018-11-11 16:17:12', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('87', '2018-11-11 16:17:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('88', '2018-11-11 16:17:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('89', '2018-11-11 16:17:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('90', '2018-11-11 16:17:28', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('91', '2018-11-11 16:17:28', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('92', '2018-11-11 16:18:07', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('93', '2018-11-11 16:18:09', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('94', '2018-11-11 16:20:15', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('95', '2018-11-11 16:29:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('96', '2018-11-11 16:30:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('97', '2018-11-11 16:33:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('98', '2018-11-11 16:34:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '9', '0', '');
INSERT INTO `t_sys_log` VALUES ('99', '2018-11-11 16:34:48', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('100', '2018-11-11 16:37:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('101', '2018-11-11 16:38:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('102', '2018-11-11 16:47:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('103', '2018-11-11 16:50:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('104', '2018-11-11 16:52:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('105', '2018-11-11 16:57:05', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('106', '2018-11-11 16:57:12', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('107', '2018-11-11 16:58:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('108', '2018-11-11 17:03:10', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('109', '2018-11-11 17:26:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('110', '2018-11-12 09:48:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"xxx\",\"password\":\"xxxx\"}', '184', '0', '');
INSERT INTO `t_sys_log` VALUES ('111', '2018-11-12 09:51:04', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('112', '2018-11-12 09:51:34', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('113', '2018-11-12 09:52:44', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('114', '2018-11-12 09:53:00', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('115', '2018-11-12 09:54:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('116', '2018-11-12 09:54:44', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('117', '2018-11-12 09:57:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('118', '2018-11-12 09:57:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('119', '2018-11-12 09:57:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('120', '2018-11-12 09:58:15', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('121', '2018-11-12 09:58:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('122', '2018-11-12 10:12:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('123', '2018-11-12 10:12:29', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('124', '2018-11-12 10:16:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('125', '2018-11-12 10:22:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('126', '2018-11-12 10:23:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('127', '2018-11-12 10:25:35', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('128', '2018-11-12 10:26:30', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('129', '2018-11-12 10:31:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('130', '2018-11-12 10:41:34', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('131', '2018-11-12 10:41:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('132', '2018-11-12 10:58:57', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('133', '2018-11-12 11:06:01', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('134', '2018-11-12 11:08:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('135', '2018-11-12 11:10:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('136', '2018-11-12 11:16:45', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('137', '2018-11-12 11:24:02', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('138', '2018-11-12 11:25:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('139', '2018-11-12 11:26:06', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('140', '2018-11-12 11:27:57', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('141', '2018-11-12 11:28:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":null}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('142', '2018-11-12 13:26:21', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('143', '2018-11-12 13:26:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('144', '2018-11-12 13:26:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('145', '2018-11-12 13:26:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('146', '2018-11-12 13:26:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('147', '2018-11-12 13:26:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '6', '0', '');
INSERT INTO `t_sys_log` VALUES ('148', '2018-11-12 13:26:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('149', '2018-11-12 13:26:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('150', '2018-11-12 13:26:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('151', '2018-11-12 13:26:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('152', '2018-11-12 13:26:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('153', '2018-11-12 13:26:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '7', '0', '');
INSERT INTO `t_sys_log` VALUES ('154', '2018-11-12 13:27:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('155', '2018-11-12 13:27:58', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('156', '2018-11-12 13:28:45', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('157', '2018-11-12 13:29:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('158', '2018-11-12 13:30:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('159', '2018-11-12 13:31:19', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('160', '2018-11-12 13:34:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('161', '2018-11-12 13:44:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('162', '2018-11-12 13:44:44', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('163', '2018-11-12 13:44:55', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('164', '2018-11-12 13:47:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('165', '2018-11-12 13:47:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('166', '2018-11-12 13:47:34', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('167', '2018-11-12 13:49:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '6', '0', '');
INSERT INTO `t_sys_log` VALUES ('168', '2018-11-12 13:49:19', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('169', '2018-11-12 13:49:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '6', '0', '');
INSERT INTO `t_sys_log` VALUES ('170', '2018-11-12 13:53:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('171', '2018-11-12 13:54:16', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('172', '2018-11-12 13:54:31', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('173', '2018-11-12 13:54:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('174', '2018-11-12 13:55:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('175', '2018-11-12 13:56:19', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('176', '2018-11-12 13:56:26', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('177', '2018-11-12 13:56:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('178', '2018-11-12 13:57:02', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('179', '2018-11-12 13:57:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('180', '2018-11-12 13:57:04', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('181', '2018-11-12 13:57:05', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('182', '2018-11-12 13:57:55', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('183', '2018-11-12 13:57:58', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('184', '2018-11-12 13:58:28', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('185', '2018-11-12 13:58:30', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('186', '2018-11-12 13:58:32', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('187', '2018-11-12 13:59:06', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('188', '2018-11-12 14:00:05', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('189', '2018-11-12 14:01:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('190', '2018-11-12 14:02:07', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('191', '2018-11-12 14:03:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('192', '2018-11-12 14:03:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('193', '2018-11-12 14:04:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('194', '2018-11-12 14:04:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('195', '2018-11-12 14:04:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '6', '0', '');
INSERT INTO `t_sys_log` VALUES ('196', '2018-11-12 14:05:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('197', '2018-11-12 14:05:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('198', '2018-11-12 14:05:53', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('199', '2018-11-12 14:06:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('200', '2018-11-12 14:06:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('201', '2018-11-12 14:07:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('202', '2018-11-12 14:08:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('203', '2018-11-12 14:09:00', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('204', '2018-11-12 14:11:34', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('205', '2018-11-12 14:11:52', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('206', '2018-11-12 14:12:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('207', '2018-11-12 14:12:21', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('208', '2018-11-12 14:12:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('209', '2018-11-12 14:12:28', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('210', '2018-11-12 14:12:31', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('211', '2018-11-12 14:12:32', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('212', '2018-11-12 14:12:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('213', '2018-11-12 14:12:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('214', '2018-11-12 14:12:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('215', '2018-11-12 14:12:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('216', '2018-11-12 14:14:32', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('217', '2018-11-12 14:14:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('218', '2018-11-12 14:14:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('219', '2018-11-12 14:18:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('220', '2018-11-12 14:18:52', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('221', '2018-11-12 14:19:48', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('222', '2018-11-12 14:19:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('223', '2018-11-12 14:20:10', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('224', '2018-11-12 14:20:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('225', '2018-11-12 14:32:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('226', '2018-11-12 14:32:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('227', '2018-11-12 14:32:26', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('228', '2018-11-12 14:32:27', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('229', '2018-11-12 14:38:51', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('230', '2018-11-12 14:38:53', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('231', '2018-11-12 14:40:33', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('232', '2018-11-12 14:40:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('233', '2018-11-12 14:44:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('234', '2018-11-12 14:46:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('235', '2018-11-12 14:46:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('236', '2018-11-12 14:47:28', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('237', '2018-11-12 14:47:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('238', '2018-11-12 14:48:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('239', '2018-11-12 14:50:09', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('240', '2018-11-12 14:50:12', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('241', '2018-11-12 14:50:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('242', '2018-11-12 14:58:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('243', '2018-11-12 14:58:44', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('244', '2018-11-12 14:59:02', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('245', '2018-11-12 14:59:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('246', '2018-11-12 14:59:10', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('247', '2018-11-12 14:59:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('248', '2018-11-12 15:01:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('249', '2018-11-12 15:02:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('250', '2018-11-12 15:03:33', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('251', '2018-11-12 15:03:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('252', '2018-11-12 15:06:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('253', '2018-11-12 15:06:27', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('254', '2018-11-12 15:06:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('255', '2018-11-12 15:06:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('256', '2018-11-12 15:07:52', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('257', '2018-11-12 15:07:54', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('258', '2018-11-12 15:08:02', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('259', '2018-11-12 15:08:44', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"parkAdmin\",\"password\":\"Pwd111pwd\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('260', '2018-11-12 16:14:08', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('261', '2018-11-12 16:14:46', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('262', '2018-11-12 16:15:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('263', '2018-11-12 16:15:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('264', '2018-11-12 16:16:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('265', '2018-11-12 16:16:28', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('266', '2018-11-12 16:39:32', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123466\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('267', '2018-11-12 16:40:35', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('268', '2018-11-12 16:46:34', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('269', '2018-11-12 16:53:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('270', '2018-11-12 16:58:44', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('271', '2018-11-12 17:06:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('272', '2018-11-12 17:15:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('273', '2018-11-12 17:15:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('274', '2018-11-13 08:56:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '308', '0', '');
INSERT INTO `t_sys_log` VALUES ('275', '2018-11-13 09:31:32', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '148', '0', '');
INSERT INTO `t_sys_log` VALUES ('276', '2018-11-13 09:34:15', '127.0.0.1', 'com.wonders.base.controller.SubSystemController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542072855294,\"id\":1,\"name\":\"基础权限系统\",\"path\":\"base\",\"orderNum\":0}', '10', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('277', '2018-11-13 09:37:59', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542073079832,\"id\":1,\"code\":\"subSystem\",\"name\":\"子系统管理\",\"url\":\"/subSystem\",\"orderNum\":0,\"subSystem\":{\"id\":1}}', '8', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('278', '2018-11-13 09:44:21', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542073461042,\"id\":2,\"code\":\"SUBSYSTEM\",\"name\":\"子系统管理\",\"url\":\"/subSystem\",\"orderNum\":0,\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('279', '2018-11-13 09:44:51', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542073491484,\"id\":3,\"code\":\"MODULE\",\"name\":\"模块管理\",\"url\":\"/module\",\"orderNum\":1,\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('280', '2018-11-13 09:45:28', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542073528083,\"id\":4,\"code\":\"MODULEFUN\",\"name\":\"功能管理\",\"url\":\"/moduleFun\",\"orderNum\":2,\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('281', '2018-11-13 09:51:01', '127.0.0.1', 'com.wonders.base.controller.ModuleFunController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542073861232,\"id\":1,\"code\":\"LIST\",\"name\":\"查询\",\"url\":\"/subSystem/list\",\"orderNum\":0,\"parent\":{\"id\":2}}', '10', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('282', '2018-11-13 09:51:13', '127.0.0.1', 'com.wonders.base.controller.ModuleFunController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542073873632,\"id\":2,\"code\":\"LIST\",\"name\":\"查询\",\"url\":\"/module/list\",\"orderNum\":0,\"parent\":{\"id\":3}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('283', '2018-11-13 09:51:25', '127.0.0.1', 'com.wonders.base.controller.ModuleFunController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542073885687,\"id\":3,\"code\":\"LIST\",\"name\":\"查询\",\"url\":\"/moduleFun/list\",\"orderNum\":0,\"parent\":{\"id\":4}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('284', '2018-11-13 14:35:09', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '173', '0', '');
INSERT INTO `t_sys_log` VALUES ('285', '2018-11-13 14:43:48', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('286', '2018-11-13 14:45:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('287', '2018-11-13 17:05:00', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1294', '0', '');
INSERT INTO `t_sys_log` VALUES ('288', '2018-11-19 09:29:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '165', '0', '');
INSERT INTO `t_sys_log` VALUES ('289', '2018-11-19 10:33:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('290', '2018-11-19 10:42:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('291', '2018-11-19 10:42:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('292', '2018-11-19 11:06:06', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('293', '2018-11-19 11:16:04', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('294', '2018-11-19 11:26:08', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '9', '0', '');
INSERT INTO `t_sys_log` VALUES ('295', '2018-11-19 11:33:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('296', '2018-11-19 11:33:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('297', '2018-11-19 13:10:35', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('298', '2018-11-19 14:16:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('299', '2018-11-19 15:37:01', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '10', '0', '');
INSERT INTO `t_sys_log` VALUES ('300', '2018-11-19 16:52:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('301', '2018-11-19 16:52:25', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('302', '2018-11-20 09:58:16', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '200', '0', '');
INSERT INTO `t_sys_log` VALUES ('303', '2018-11-20 11:02:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('304', '2018-11-20 11:02:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('305', '2018-11-20 13:05:45', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('306', '2018-11-20 13:05:48', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('307', '2018-11-20 13:29:58', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('308', '2018-11-20 14:40:21', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '168', '0', '');
INSERT INTO `t_sys_log` VALUES ('309', '2018-11-20 15:43:39', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('310', '2018-11-20 15:43:51', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('311', '2018-11-20 16:53:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('312', '2018-11-20 16:53:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('313', '2018-11-21 09:26:19', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '10', '0', '');
INSERT INTO `t_sys_log` VALUES ('314', '2018-11-21 09:33:10', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542763990499,\"id\":2,\"name\":\"aa\",\"realName\":\"aaa\",\"password\":\"aaa\",\"status\":\"1\",\"remark\":\"\"}', '7', '1', '');
INSERT INTO `t_sys_log` VALUES ('315', '2018-11-21 10:26:09', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542767169389,\"id\":3,\"name\":\"bbb\",\"realName\":\"bbb\",\"password\":\"bbb\",\"status\":\"1\",\"remark\":\"\"}', '6', '1', '');
INSERT INTO `t_sys_log` VALUES ('316', '2018-11-21 10:27:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('317', '2018-11-21 10:27:22', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542767242867,\"id\":4,\"name\":\"xxx\",\"realName\":\"xxx\",\"password\":\"xxx\",\"status\":\"1\",\"remark\":\"\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('318', '2018-11-21 10:31:45', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542767505521,\"id\":5,\"name\":\"ccc\",\"realName\":\"ccc\",\"password\":\"ccc\",\"status\":\"1\",\"remark\":\"\"}', '3', '1', '');
INSERT INTO `t_sys_log` VALUES ('319', '2018-11-21 11:27:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('320', '2018-11-21 12:26:09', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"id\":1,\"name\":\"admin\",\"realName\":\"管理员\",\"password\":\"123456\",\"status\":\"1\"}', '37', '1', '');
INSERT INTO `t_sys_log` VALUES ('321', '2018-11-21 12:26:45', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"id\":1,\"name\":\"admin\",\"realName\":\"管理员\",\"password\":\"123456\",\"status\":\"1\"}', '1', '1', '');
INSERT INTO `t_sys_log` VALUES ('322', '2018-11-21 12:28:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('323', '2018-11-21 12:54:31', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('324', '2018-11-21 13:40:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '30', '0', '');
INSERT INTO `t_sys_log` VALUES ('325', '2018-11-21 13:44:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('326', '2018-11-21 13:57:15', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '10', '0', '');
INSERT INTO `t_sys_log` VALUES ('327', '2018-11-21 14:04:13', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[2,3]', '83', '1', '');
INSERT INTO `t_sys_log` VALUES ('328', '2018-11-21 14:05:53', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[2,3]', '98', '1', '');
INSERT INTO `t_sys_log` VALUES ('329', '2018-11-21 14:31:11', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[2,3]', '101', '1', '');
INSERT INTO `t_sys_log` VALUES ('330', '2018-11-21 14:33:40', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[5]', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('331', '2018-11-21 14:34:13', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[4]', '1', '1', '');
INSERT INTO `t_sys_log` VALUES ('332', '2018-11-21 14:37:46', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542782266026,\"id\":6,\"name\":\"aaa\",\"realName\":\"aaa\",\"password\":\"aaa\",\"status\":\"1\",\"remark\":\"\"}', '6', '1', '');
INSERT INTO `t_sys_log` VALUES ('333', '2018-11-21 14:42:29', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542782549706,\"id\":7,\"name\":\"bbb\",\"realName\":\"bbb\",\"password\":\"bbb\",\"status\":\"1\",\"remark\":\"\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('334', '2018-11-21 14:43:09', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"id\":1,\"name\":\"ccc\",\"realName\":\"ccc\",\"password\":\"ccc\",\"status\":\"1\",\"remark\":\"\"}', '23', '1', '');
INSERT INTO `t_sys_log` VALUES ('335', '2018-11-21 14:43:47', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542782550000,\"id\":7,\"name\":\"admin\",\"realName\":\"管理员\",\"password\":\"123456\",\"status\":\"1\",\"remark\":\"\"}', '3', '1', '');
INSERT INTO `t_sys_log` VALUES ('336', '2018-11-21 14:45:07', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542782589000,\"id\":1,\"name\":\"admin\",\"realName\":\"管理员\",\"password\":\"123456\",\"status\":\"1\",\"remark\":\"\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('337', '2018-11-21 14:45:19', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542782589000,\"id\":1,\"name\":\"ccc\",\"realName\":\"ccc\",\"password\":\"ccc\",\"status\":\"1\",\"remark\":\"\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('338', '2018-11-21 14:48:23', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542782903241,\"id\":8,\"name\":\"ccc\",\"realName\":\"ccc\",\"password\":\"ccc\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('339', '2018-11-21 14:48:42', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542782922412,\"id\":9,\"name\":\"ddd\",\"realName\":\"ddd\",\"password\":\"ddd\",\"status\":\"1\"}', '1', '1', '');
INSERT INTO `t_sys_log` VALUES ('340', '2018-11-21 14:50:44', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542783044832,\"id\":10,\"name\":\"eee\",\"realName\":\"eee\",\"password\":\"eee\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('341', '2018-11-21 14:50:55', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542783055157,\"id\":11,\"name\":\"fff\",\"realName\":\"fff\",\"password\":\"fff\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('342', '2018-11-21 14:51:03', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542783063206,\"id\":12,\"name\":\"hhh\",\"realName\":\"hhh\",\"password\":\"hhh\",\"status\":\"1\"}', '1', '1', '');
INSERT INTO `t_sys_log` VALUES ('343', '2018-11-21 14:51:14', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542783074167,\"id\":13,\"name\":\"jjj\",\"realName\":\"jjj\",\"password\":\"jjj\",\"status\":\"0\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('344', '2018-11-21 14:51:24', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542783084256,\"id\":14,\"name\":\"kkk\",\"realName\":\"kkk\",\"password\":\"kkk\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('345', '2018-11-21 14:51:32', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542783092920,\"id\":15,\"name\":\"lll\",\"realName\":\"lll\",\"password\":\"lll\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('346', '2018-11-21 14:51:44', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542783104087,\"id\":16,\"name\":\"mmm\",\"realName\":\"mmm\",\"password\":\"mmm\",\"status\":\"0\"}', '7', '1', '');
INSERT INTO `t_sys_log` VALUES ('347', '2018-11-21 15:06:46', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '31', '0', '');
INSERT INTO `t_sys_log` VALUES ('348', '2018-11-21 15:06:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('349', '2018-11-21 15:07:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123455\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('350', '2018-11-21 15:12:08', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('351', '2018-11-21 15:16:48', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[8]', '1', '1', '');
INSERT INTO `t_sys_log` VALUES ('352', '2018-11-21 15:17:04', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542784624918,\"id\":17,\"name\":\"ccc\",\"realName\":\"ccc\",\"password\":\"ccc\",\"status\":\"1\"}', '1', '1', '');
INSERT INTO `t_sys_log` VALUES ('353', '2018-11-21 15:28:30', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[17,16,15,14,13,12,11,10,9,7]', '29', '1', '');
INSERT INTO `t_sys_log` VALUES ('354', '2018-11-21 15:28:35', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[6]', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('355', '2018-11-21 15:28:46', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785326175,\"id\":18,\"name\":\"aaa\",\"realName\":\"aaa\",\"password\":\"aaa\",\"status\":\"1\"}', '5', '1', '');
INSERT INTO `t_sys_log` VALUES ('356', '2018-11-21 15:28:54', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785334235,\"id\":19,\"name\":\"bbb\",\"realName\":\"bbb\",\"password\":\"bbb\",\"status\":\"1\"}', '3', '1', '');
INSERT INTO `t_sys_log` VALUES ('357', '2018-11-21 15:29:04', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785344821,\"id\":20,\"name\":\"ccc\",\"realName\":\"ccc\",\"password\":\"ccc\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('358', '2018-11-21 15:29:12', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785352294,\"id\":21,\"name\":\"ddd\",\"realName\":\"ddd\",\"password\":\"ddd\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('359', '2018-11-21 15:29:21', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785361262,\"id\":22,\"name\":\"eee\",\"realName\":\"eeee\",\"password\":\"eee\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('360', '2018-11-21 15:29:29', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785369363,\"id\":23,\"name\":\"fff\",\"realName\":\"fff\",\"password\":\"fff\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('361', '2018-11-21 15:29:36', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785376533,\"id\":24,\"name\":\"ggg\",\"realName\":\"ggg\",\"password\":\"ggg\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('362', '2018-11-21 15:29:46', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785386811,\"id\":25,\"name\":\"hhh\",\"realName\":\"hhh\",\"password\":\"hhh\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('363', '2018-11-21 15:29:55', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785395772,\"id\":26,\"name\":\"iii\",\"realName\":\"iii\",\"password\":\"iii\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('364', '2018-11-21 15:30:02', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785402314,\"id\":27,\"name\":\"jjj\",\"realName\":\"jjj\",\"password\":\"jjj\",\"status\":\"1\"}', '2', '1', '');
INSERT INTO `t_sys_log` VALUES ('365', '2018-11-21 15:30:09', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785409163,\"id\":28,\"name\":\"kkk\",\"realName\":\"kkk\",\"password\":\"kkk\",\"status\":\"1\"}', '3', '1', '');
INSERT INTO `t_sys_log` VALUES ('366', '2018-11-21 15:30:19', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419468,\"id\":29,\"name\":\"llll\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '6', '1', '');
INSERT INTO `t_sys_log` VALUES ('367', '2018-11-21 16:19:33', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '8', '0', '');
INSERT INTO `t_sys_log` VALUES ('368', '2018-11-21 16:19:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('369', '2018-11-21 16:19:48', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('370', '2018-11-21 16:55:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '171', '0', '');
INSERT INTO `t_sys_log` VALUES ('371', '2018-11-21 18:55:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('372', '2018-11-22 15:39:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '459', '0', '');
INSERT INTO `t_sys_log` VALUES ('373', '2018-11-22 15:43:46', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('374', '2018-11-22 15:44:45', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('375', '2018-11-22 15:45:21', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('376', '2018-11-22 16:01:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('377', '2018-11-22 16:03:35', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('378', '2018-11-22 16:04:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('379', '2018-11-22 16:39:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('380', '2018-11-22 16:56:52', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('381', '2018-11-22 17:11:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('382', '2018-11-22 17:19:30', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('383', '2018-11-22 17:19:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('384', '2018-11-22 17:44:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('385', '2018-11-22 17:44:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('386', '2018-11-22 17:46:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"\",\"password\":\"xxxx\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('387', '2018-11-22 18:08:51', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('388', '2018-11-22 18:21:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('389', '2018-11-22 18:23:02', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"12345\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('390', '2018-11-23 09:45:05', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '413', '0', '');
INSERT INTO `t_sys_log` VALUES ('391', '2018-11-23 11:11:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('392', '2018-11-23 11:59:17', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('393', '2018-11-23 12:45:47', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"id\":29,\"name\":\"llll\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '20', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('394', '2018-11-23 12:46:15', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"id\":29,\"name\":\"llllaaaa\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '29', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('395', '2018-11-23 12:50:43', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542948375000,\"id\":29,\"name\":\"llll\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('396', '2018-11-23 12:51:57', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542948644000,\"id\":29,\"name\":\"llllaaaaa\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('397', '2018-11-23 12:52:17', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542948644000,\"id\":29,\"name\":\"llllaaaaa\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('398', '2018-11-23 12:53:23', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542948644000,\"id\":29,\"name\":\"llllaaaaa\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('399', '2018-11-23 13:01:47', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('400', '2018-11-23 13:02:13', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542948804000,\"id\":29,\"name\":\"llli\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('401', '2018-11-23 13:02:34', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542948804000,\"id\":29,\"name\":\"llli\",\"realName\":\"llll\",\"password\":\"llll\",\"status\":\"1\"}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('402', '2018-11-23 13:02:39', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785409000,\"id\":28,\"name\":\"kkk\",\"realName\":\"kkk\",\"password\":\"kkk\",\"status\":\"1\"}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('403', '2018-11-23 13:03:29', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785396000,\"id\":26,\"name\":\"iii\",\"realName\":\"iii\",\"password\":\"iii\",\"status\":\"1\"}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('404', '2018-11-23 13:03:44', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542949354000,\"id\":29,\"name\":\"lll\",\"realName\":\"lll\",\"password\":\"lll\",\"status\":\"1\"}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('405', '2018-11-23 13:04:19', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785419000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1542949354000,\"id\":29,\"name\":\"lll\",\"realName\":\"iii\",\"password\":\"iii\",\"status\":\"1\"}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('406', '2018-11-26 11:23:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '174', '0', '');
INSERT INTO `t_sys_log` VALUES ('407', '2018-11-26 11:23:38', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('408', '2018-11-26 11:24:07', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('409', '2018-11-26 11:29:50', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('410', '2018-11-26 11:32:24', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('411', '2018-11-26 11:35:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('412', '2018-11-26 11:37:45', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('413', '2018-11-26 11:41:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('414', '2018-11-26 11:43:12', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('415', '2018-11-26 11:44:52', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('416', '2018-11-26 11:45:53', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('417', '2018-11-26 11:47:35', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('418', '2018-11-26 11:50:53', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('419', '2018-11-26 11:51:53', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('420', '2018-11-26 12:13:27', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('421', '2018-11-26 12:16:02', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('422', '2018-11-26 12:16:43', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":null,\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('423', '2018-11-26 12:46:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('424', '2018-11-26 12:49:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '172', '0', '');
INSERT INTO `t_sys_log` VALUES ('425', '2018-11-26 12:55:20', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '133', '0', '');
INSERT INTO `t_sys_log` VALUES ('426', '2018-11-26 13:03:29', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('427', '2018-11-26 13:04:30', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('428', '2018-11-26 13:06:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('429', '2018-11-26 13:19:01', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('430', '2018-11-26 13:23:59', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543209839586,\"id\":30,\"name\":\"xxx\",\"realName\":\"xxx\",\"password\":\"xxx\",\"status\":\"1\"}', '7', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('431', '2018-11-26 13:24:13', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543209840000,\"id\":30,\"name\":\"xxx\",\"realName\":\"xxx\",\"password\":\"xxx\",\"status\":\"1\",\"remark\":\"xxxxxxxxxxxxxxxxxxxxxx\"}', '17', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('432', '2018-11-26 13:33:25', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[30]', '49', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('433', '2018-11-26 13:34:03', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543210443694,\"id\":31,\"name\":\"xxx\",\"realName\":\"xxx\",\"password\":\"xxx\",\"status\":\"1\",\"remark\":\"\"}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('434', '2018-11-26 13:34:09', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[31]', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('435', '2018-11-26 13:37:24', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543210644555,\"id\":32,\"name\":\"xxx\",\"realName\":\"xxx\",\"password\":\"xxx\",\"status\":\"1\"}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('436', '2018-11-26 13:37:31', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[32]', '1', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('437', '2018-11-26 14:20:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('438', '2018-11-26 14:21:37', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[29]', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('439', '2018-11-26 14:24:55', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543213495447,\"id\":33,\"name\":\"lll\",\"realName\":\"lll\",\"password\":\"lll\",\"status\":\"1\"}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('440', '2018-11-26 14:25:12', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543213495000,\"id\":33,\"name\":\"lll\",\"realName\":\"iii\",\"password\":\"lll\",\"status\":\"1\"}', '5', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('441', '2018-11-26 14:25:26', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543213495000,\"id\":33,\"name\":\"lll\",\"realName\":\"i\",\"password\":\"lll\",\"status\":\"1\"}', '4', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('442', '2018-11-26 14:25:35', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '删除', '[33]', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('443', '2018-11-26 17:21:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '19', '0', '');
INSERT INTO `t_sys_log` VALUES ('444', '2018-11-26 17:29:13', '127.0.0.1', 'com.wonders.base.controller.DictController.save()', '保存', '{\"id\":1,\"clazz\":\"user\",\"field\":\"status\",\"key\":\"0\",\"value\":\"无效\",\"orderNum\":null}', '5', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('445', '2018-11-26 17:30:12', '127.0.0.1', 'com.wonders.base.controller.DictController.save()', '保存', '{\"id\":2,\"clazz\":\"user\",\"field\":\"status\",\"key\":\"1\",\"value\":\"有效\",\"orderNum\":2}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('446', '2018-11-26 17:30:25', '127.0.0.1', 'com.wonders.base.controller.DictController.save()', '保存', '{\"id\":1,\"clazz\":\"user\",\"field\":\"status\",\"key\":\"0\",\"value\":\"无效\",\"orderNum\":1}', '22', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('447', '2018-11-27 09:21:46', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '10', '0', '');
INSERT INTO `t_sys_log` VALUES ('448', '2018-11-27 09:32:35', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"wonders123\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('449', '2018-11-27 11:20:21', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('450', '2018-11-27 13:15:47', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"123456\"}', '0', '0', '');
INSERT INTO `t_sys_log` VALUES ('451', '2018-11-27 13:39:33', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"7488e331b8b64e5794da3fa4eb10ad5d\"}', '42', '0', '');
INSERT INTO `t_sys_log` VALUES ('452', '2018-11-27 13:41:31', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"7488e331b8b64e5794da3fa4eb10ad5d\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('453', '2018-11-27 13:41:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"7488e331b8b64e5794da3fa4eb10ad5d\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('454', '2018-11-27 13:41:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '221', '0', '');
INSERT INTO `t_sys_log` VALUES ('455', '2018-11-27 13:51:27', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785409000,\"id\":28,\"name\":\"kkk\",\"realName\":\"kkk\",\"password\":\"d2fe7987bd400d584cb77c8ba93c091b\",\"status\":\"1\"}', '25', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('456', '2018-11-27 13:51:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"kkk\",\"password\":\"d2fe7987bd400d584cb77c8ba93c091b\"}', '27', '0', '');
INSERT INTO `t_sys_log` VALUES ('457', '2018-11-27 13:51:55', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"hhh\",\"password\":\"fe35c6a960bf8a2560c237cc9b516dcf\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('458', '2018-11-27 13:52:01', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('459', '2018-11-27 14:16:38', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1542785409000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1543297888000,\"id\":28,\"name\":\"kkk\",\"realName\":\"kkk\",\"status\":\"1\"}', '36', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('460', '2018-11-27 14:17:09', '127.0.0.1', 'com.wonders.base.controller.UserController.del()', '删除', '[28,27,26,25,24,23,22,21,20,19]', '24', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('461', '2018-11-27 14:17:17', '127.0.0.1', 'com.wonders.base.controller.UserController.del()', '删除', '[18]', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('462', '2018-11-27 14:24:33', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543299873535,\"id\":34,\"name\":\"xxx\",\"realName\":\"xxx\",\"status\":\"1\"}', '42', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('463', '2018-11-27 14:24:56', '127.0.0.1', 'com.wonders.base.controller.UserController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543299874000,\"id\":34,\"name\":\"xxx\",\"realName\":\"测试\",\"status\":\"1\"}', '12', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('464', '2018-11-27 14:52:07', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '62', '0', '');
INSERT INTO `t_sys_log` VALUES ('465', '2018-11-27 16:17:56', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '213', '0', '');
INSERT INTO `t_sys_log` VALUES ('466', '2018-11-27 17:21:23', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '21', '0', '');
INSERT INTO `t_sys_log` VALUES ('467', '2018-11-27 17:41:55', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543311715119,\"nodePath\":\"0\",\"id\":2,\"name\":\"home\",\"path\":\"/\",\"hideInBreadd\":0,\"hideInMenu\":1,\"notCache\":1,\"access\":\"/\",\"closeConfirm\":\"0\",\"subSystem\":{\"id\":1}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('468', '2018-11-27 17:42:09', '127.0.0.1', 'com.wonders.base.controller.ModuleController.del()', '删除', '[2]', '26', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('469', '2018-11-27 18:05:01', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543313101939,\"nodePath\":\"0\",\"id\":3,\"name\":\"home\",\"path\":\"/home\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"1\",\"notCache\":\"1\",\"access\":\"/home\",\"closeConfirm\":\"0\",\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '4', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('470', '2018-11-27 18:06:31', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543311350000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1543312674000,\"nodePath\":\"0\",\"id\":1,\"name\":\"_home\",\"path\":\"/\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"1\",\"notCache\":\"1\",\"access\":\"/\",\"closeConfirm\":\"0\",\"subSystem\":{\"id\":1}}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('471', '2018-11-27 18:07:46', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543313102000,\"nodePath\":\"0\",\"id\":3,\"name\":\"home\",\"path\":\"/home\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"1\",\"notCache\":\"1\",\"access\":\"/home\",\"closeConfirm\":\"0\",\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('472', '2018-11-27 18:12:46', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543313102000,\"nodePath\":\"0\",\"id\":3,\"name\":\"home\",\"path\":\"/home\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"1\",\"notCache\":\"1\",\"access\":\"/home\",\"closeConfirm\":\"0\",\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '4', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('473', '2018-11-27 18:20:30', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543313102000,\"nodePath\":\"0\",\"id\":3,\"name\":\"home\",\"path\":\"/home\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"1\",\"notCache\":\"1\",\"access\":\"/home\",\"closeConfirm\":\"0\",\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('474', '2018-11-27 18:22:36', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '30', '0', '');
INSERT INTO `t_sys_log` VALUES ('475', '2018-11-28 08:39:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '94', '0', '');
INSERT INTO `t_sys_log` VALUES ('476', '2018-11-28 09:39:49', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('477', '2018-11-28 09:48:07', '127.0.0.1', 'com.wonders.base.controller.ModuleController.del()', '删除', '[3]', '43', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('478', '2018-11-28 09:48:38', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543369718006,\"nodePath\":\"0\",\"id\":4,\"name\":\"home\",\"path\":\"/home\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"1\",\"notCache\":\"1\",\"access\":\"/\",\"closeConfirm\":\"0\",\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '9', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('479', '2018-11-28 09:49:00', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543369740639,\"nodePath\":\"0\",\"id\":5,\"name\":\"/xx\",\"path\":\"/xxx\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"0\",\"notCache\":\"1\",\"access\":\"/xxx\",\"closeConfirm\":\"0\",\"parent\":{\"id\":1},\"subSystem\":{\"id\":1}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('480', '2018-11-28 09:49:29', '127.0.0.1', 'com.wonders.base.controller.ModuleController.del()', '删除', '[5,4]', '9', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('481', '2018-11-28 10:48:59', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '115', '0', '');
INSERT INTO `t_sys_log` VALUES ('482', '2018-11-28 12:58:42', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');
INSERT INTO `t_sys_log` VALUES ('483', '2018-11-28 14:01:31', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');
INSERT INTO `t_sys_log` VALUES ('484', '2018-11-28 15:01:45', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('485', '2018-11-28 15:30:21', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543311350000,\"lastModifiedBy\":\"1\",\"lastModifiedTime\":1543313675000,\"nodePath\":\"1\",\"id\":1,\"name\":\"_home\",\"path\":\"/\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"1\",\"notCache\":\"1\",\"access\":\"/\",\"closeConfirm\":\"0\",\"subSystem\":{\"id\":1}}', '17', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('486', '2018-11-28 16:03:16', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '24', '0', '');
INSERT INTO `t_sys_log` VALUES ('487', '2018-11-28 16:20:57', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543393257494,\"nodePath\":\"1\",\"id\":11,\"name\":\"userManager\",\"path\":\"/\",\"title\":\"用户管理\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"0\",\"notCache\":\"0\",\"access\":\"/\",\"icon\":\"md-person\",\"closeConfirm\":\"1\",\"subSystem\":{\"id\":1,\"name\":\"基础权限系统\"}}', '3', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('488', '2018-11-28 16:22:57', '127.0.0.1', 'com.wonders.base.controller.ModuleController.save()', '保存', '{\"createdBy\":\"1\",\"createdTime\":1543393377996,\"nodePath\":\"1\",\"id\":13,\"name\":\"dictManager\",\"path\":\"/\",\"title\":\"字典管理\",\"hideInBreadd\":\"0\",\"hideInMenu\":\"0\",\"notCache\":\"0\",\"access\":\"/\",\"icon\":\"md-paper\",\"closeConfirm\":\"1\",\"subSystem\":{\"id\":1,\"name\":\"基础权限系统\"}}', '2', '1', 'admin');
INSERT INTO `t_sys_log` VALUES ('489', '2018-11-28 17:06:05', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '6', '0', '');
INSERT INTO `t_sys_log` VALUES ('490', '2018-11-28 17:48:51', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '3', '0', '');
INSERT INTO `t_sys_log` VALUES ('491', '2018-11-28 17:49:30', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '1', '0', '');
INSERT INTO `t_sys_log` VALUES ('492', '2018-11-28 18:18:13', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '195', '0', '');
INSERT INTO `t_sys_log` VALUES ('493', '2018-11-28 18:19:27', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '6', '0', '');
INSERT INTO `t_sys_log` VALUES ('494', '2018-11-28 18:20:27', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '10', '0', '');
INSERT INTO `t_sys_log` VALUES ('495', '2018-11-28 18:23:11', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('496', '2018-11-28 18:24:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('497', '2018-11-28 18:26:10', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '8', '0', '');
INSERT INTO `t_sys_log` VALUES ('498', '2018-11-28 18:27:18', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"7488e331b8b64e5794da3fa4eb10ad5d\"}', '2', '0', '');
INSERT INTO `t_sys_log` VALUES ('499', '2018-11-28 18:27:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '8', '0', '');
INSERT INTO `t_sys_log` VALUES ('500', '2018-11-28 18:29:01', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '6', '0', '');
INSERT INTO `t_sys_log` VALUES ('501', '2018-11-28 18:29:47', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');
INSERT INTO `t_sys_log` VALUES ('502', '2018-11-28 18:30:52', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');
INSERT INTO `t_sys_log` VALUES ('503', '2018-11-28 18:31:00', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');
INSERT INTO `t_sys_log` VALUES ('504', '2018-11-28 18:31:09', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');
INSERT INTO `t_sys_log` VALUES ('505', '2018-11-28 18:31:14', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '8', '0', '');
INSERT INTO `t_sys_log` VALUES ('506', '2018-11-28 18:31:34', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');
INSERT INTO `t_sys_log` VALUES ('507', '2018-11-28 18:33:01', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('508', '2018-11-28 18:39:22', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '9', '0', '');
INSERT INTO `t_sys_log` VALUES ('509', '2018-11-28 18:52:52', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('510', '2018-11-29 09:28:40', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '240', '0', '');
INSERT INTO `t_sys_log` VALUES ('511', '2018-11-29 09:48:16', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '8', '0', '');
INSERT INTO `t_sys_log` VALUES ('512', '2018-11-29 10:02:37', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '10', '0', '');
INSERT INTO `t_sys_log` VALUES ('513', '2018-11-29 10:04:41', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('514', '2018-11-29 10:13:03', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '5', '0', '');
INSERT INTO `t_sys_log` VALUES ('515', '2018-11-29 10:22:48', '127.0.0.1', 'com.wonders.base.controller.LoginController.login()', '登陆', '{\"username\":\"admin\",\"password\":\"a66abb5684c45962d887564f08346e8d\"}', '4', '0', '');

-- ----------------------------
-- Table structure for t_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module`;
CREATE TABLE `t_sys_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `access` varchar(255) NOT NULL,
  `close_confirm` varchar(255) DEFAULT NULL,
  `hide_in_breadd` int(11) NOT NULL,
  `hide_in_menu` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `not_cache` int(11) NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `subSystem_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7l9umndftjscb4cysx944iwsu` (`name`),
  KEY `FKejlkw2ekn6cn9jbf93cf5ofl6` (`parent_id`),
  KEY `FKgfevcruabpiw0ckad7tuj658l` (`subSystem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module
-- ----------------------------
INSERT INTO `t_sys_module` VALUES ('1', '1', '2018-11-27 17:35:50', '1', '2018-11-28 15:45:17', '1', '/,/home', '0', '0', '1', null, '_home', '1', null, '/', null, null, null, '1');
INSERT INTO `t_sys_module` VALUES ('6', '1', '2018-11-28 15:46:31', null, null, '1-1', '/', '0', '0', '1', 'md-home', 'home', '1', null, '/home', null, '首页', '1', '1');
INSERT INTO `t_sys_module` VALUES ('7', '1', '2018-11-28 16:12:21', null, null, '1', '/', '0', '0', '0', 'md-settings', 'subSysManager', '1', null, '/', null, '系统管理', null, '1');
INSERT INTO `t_sys_module` VALUES ('8', '1', '2018-11-28 16:17:50', null, null, '1-7', '/', '1', '0', '0', 'md-construct', 'subSystemList', '0', null, '/sub-system', null, '子系统列表', '7', '1');
INSERT INTO `t_sys_module` VALUES ('9', '1', '2018-11-28 16:18:50', null, null, '1-7', '/', '0', '0', '0', null, 'moduleList', '0', null, '/module', null, '模块列表', '7', '1');
INSERT INTO `t_sys_module` VALUES ('10', '1', '2018-11-28 16:19:49', null, null, '1-7', '/', '1', '0', '0', null, 'moduleFunList', '0', null, '/module-fun', null, '功能列表', '7', '1');
INSERT INTO `t_sys_module` VALUES ('11', '1', '2018-11-28 16:20:57', null, null, '1', '/', '1', '0', '0', 'md-person', 'userManager', '0', null, '/', null, '用户管理', null, '1');
INSERT INTO `t_sys_module` VALUES ('12', '1', '2018-11-28 16:22:01', null, null, '1-11', '/', '1', '0', '0', 'md-list', 'userList', '0', null, '/user', null, '用户列表', '11', '1');
INSERT INTO `t_sys_module` VALUES ('13', '1', '2018-11-28 16:22:58', null, null, '1', '/', '1', '0', '0', 'md-paper', 'dictManager', '0', null, '/', null, '字典管理', null, '1');
INSERT INTO `t_sys_module` VALUES ('14', '1', '2018-11-28 16:23:43', null, null, '1-13', '/', '1', '0', '0', 'md-list', 'dictList', '0', null, '/dict', null, '字典列表', '13', '1');

-- ----------------------------
-- Table structure for t_sys_module_fun
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module_fun`;
CREATE TABLE `t_sys_module_fun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6hx27f3bowmccq0hjtk8scg57` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module_fun
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_organ
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_organ`;
CREATE TABLE `t_sys_organ` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `node_path` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_tel` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjeqq7fki3my6y250b5ixog9m6` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_organ
-- ----------------------------
INSERT INTO `t_sys_organ` VALUES ('1', null, null, null, null, '0', '武警路', '12345678', 'jtb', '交通部', 'test data', 'type_1', null);
INSERT INTO `t_sys_organ` VALUES ('3', null, null, null, '2018-11-10 11:37:14', '0-1', '武警路151 2F', '12345678', 'kfb', '开发部', 'test data', 'type_2', '1');
INSERT INTO `t_sys_organ` VALUES ('4', null, null, null, null, '0-1-3', '武警路151 2F', '12345678', 'qdkfb', '前端开发部', 'test data', 'type_3', '3');
INSERT INTO `t_sys_organ` VALUES ('6', '1', '2018-11-10 16:17:01', null, null, '0-1-3', '武警路151 2FF', '12345678', 'hdkfb', '后端开发部', 'test data', 'type_3', '3');

-- ----------------------------
-- Table structure for t_sys_subsystem
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_subsystem`;
CREATE TABLE `t_sys_subsystem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `order_num` int(11) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_subsystem
-- ----------------------------
INSERT INTO `t_sys_subsystem` VALUES ('1', '1', '2018-11-13 09:34:15', null, null, '基础权限系统', '0', '/base', null);

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `last_modified_by` int(11) DEFAULT NULL,
  `last_modified_time` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `real_name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6mna1df1twri2blr37ywsbnne` (`name`),
  KEY `FK5r842ebis2thprdjut9wkf48k` (`organization_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', null, null, '1', '2018-11-21 14:45:20', 'admin', 'a66abb5684c45962d887564f08346e8d', '管理员', '', '1', null);
INSERT INTO `t_sys_user` VALUES ('34', '1', '2018-11-27 14:24:34', '1', '2018-11-27 14:24:57', 'xxx', '5c18216aeb19c1a79f821902d846067b', '测试', null, '1', null);
