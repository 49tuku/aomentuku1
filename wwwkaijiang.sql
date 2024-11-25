/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : wwwkaijiang

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2024-07-09 22:18:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fa_activities_index
-- ----------------------------
DROP TABLE IF EXISTS `fa_activities_index`;
CREATE TABLE `fa_activities_index` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `sort` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fa_activities_index
-- ----------------------------
INSERT INTO `fa_activities_index` VALUES ('1', '尊享贴心服务1S,全民手机话费天天送', null, '0');
INSERT INTO `fa_activities_index` VALUES ('2', '尊享贴心服务2S,全国星级酒店免费住', null, '0');
INSERT INTO `fa_activities_index` VALUES ('3', '尊享贴心服务3S,全国各地机票免费预订', null, '0');
INSERT INTO `fa_activities_index` VALUES ('4', '尊享贴心服务4S,全国美女免费空投服务', null, '0');
INSERT INTO `fa_activities_index` VALUES ('5', '尊享贴心服务5S,健康养生免费服务到家', null, '0');

-- ----------------------------
-- Table structure for fa_admin_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_admin`;
CREATE TABLE `fa_admin_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(30) NOT NULL COMMENT '用户名，登陆使用',
  `password` varchar(30) NOT NULL COMMENT '用户密码',
  `nickname` varchar(30) NOT NULL COMMENT '用户昵称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户状态：1正常,2禁用 默认1',
  `token` varchar(60) DEFAULT NULL COMMENT 'token',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理表';

-- ----------------------------
-- Records of fa_admin_admin
-- ----------------------------
INSERT INTO `fa_admin_admin` VALUES ('1', 'admin', 'adc3949ba59abbe56e057f20f8', '超级管理员', '1', 'Ih3N9fPZvCQhztXg23G1PXRCHTOkdhFw11699336234.561', null, '2023-11-07 13:50:35', null);

-- ----------------------------
-- Table structure for fa_admin_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_admin_log`;
CREATE TABLE `fa_admin_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) DEFAULT NULL COMMENT '管理员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '操作页面',
  `desc` text COMMENT '日志内容',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT '操作IP',
  `user_agent` text NOT NULL COMMENT 'User-Agent',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员日志';

-- ----------------------------
-- Records of fa_admin_admin_log
-- ----------------------------
INSERT INTO `fa_admin_admin_log` VALUES ('1', '1', '/admin.php', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-11-05 10:58:12');
INSERT INTO `fa_admin_admin_log` VALUES ('2', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-11-05 10:58:13');
INSERT INTO `fa_admin_admin_log` VALUES ('3', '1', '/admin.php/crud/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-11-05 10:59:20');
INSERT INTO `fa_admin_admin_log` VALUES ('4', '1', '/admin.php/crud/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-11-05 11:02:58');
INSERT INTO `fa_admin_admin_log` VALUES ('5', '1', '/admin.php/crud/crud/name/fa_ad', '{\"name\":\"fa_ad\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-11-05 11:07:19');
INSERT INTO `fa_admin_admin_log` VALUES ('6', '1', '/admin.php/crud/crud/name/fa_user_rule', '{\"name\":\"fa_user_rule\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-11-05 11:08:20');
INSERT INTO `fa_admin_admin_log` VALUES ('7', '1', '/admin.php/crud/remove', '{\"name\":\"fa_user_rule\",\"type\":\"true\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', '2023-11-05 11:08:29');
INSERT INTO `fa_admin_admin_log` VALUES ('8', '1', '/admin.php/login/index', '{\"username\":\"admin\",\"remember\":\"on\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:10:27');
INSERT INTO `fa_admin_admin_log` VALUES ('9', '1', '/admin.php', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:10:29');
INSERT INTO `fa_admin_admin_log` VALUES ('10', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:10:29');
INSERT INTO `fa_admin_admin_log` VALUES ('11', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:10:34');
INSERT INTO `fa_admin_admin_log` VALUES ('12', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:17:39');
INSERT INTO `fa_admin_admin_log` VALUES ('13', '1', '/admin.php/index/optPhoto', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:17:44');
INSERT INTO `fa_admin_admin_log` VALUES ('14', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:19:18');
INSERT INTO `fa_admin_admin_log` VALUES ('15', '1', '/admin.php/config/index', '{\"title\":\"\",\"key\":\"\",\"desc\":\"\",\"tel\":\"\",\"qq\":\"\",\"mail\":\"\",\"addr\":\"\",\"logo\":\"\",\"banner1\":\"\",\"banner2\":\"\",\"banner3\":\"\",\"video\":\"\",\"login_captcha\":\"0\",\"smtp-user\":\"\",\"smtp-pass\":\"\",\"smtp-port\":\"\",\"smtp-host\":\"\",\"file-type\":\"1\",\"file-endpoint\":\"\",\"file-OssName\":\"\",\"file-accessKeyId\":\"\",\"file-accessKeySecret\":\"\",\"qiniu-Domain\":\"\",\"qiniu-Bucket\":\"\",\"qiniu-AK\":\"\",\"qiniu-SK\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:19:25');
INSERT INTO `fa_admin_admin_log` VALUES ('16', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:19:26');
INSERT INTO `fa_admin_admin_log` VALUES ('17', '1', '/admin.php/crud/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:21:58');
INSERT INTO `fa_admin_admin_log` VALUES ('18', '1', '/admin.php/crud/crud/name/fa_activities_index', '{\"name\":\"fa_activities_index\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:22:01');
INSERT INTO `fa_admin_admin_log` VALUES ('19', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:31:12');
INSERT INTO `fa_admin_admin_log` VALUES ('20', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:32:07');
INSERT INTO `fa_admin_admin_log` VALUES ('21', '1', '/admin.php/index/upload', '{\"name\":\"file\",\"path\":\"images\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:32:24');
INSERT INTO `fa_admin_admin_log` VALUES ('22', '1', '/admin.php/index/upload', '{\"name\":\"file\",\"path\":\"images\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:33:09');
INSERT INTO `fa_admin_admin_log` VALUES ('23', '1', '/admin.php/index/upload', '{\"name\":\"file\",\"path\":\"images\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:33:17');
INSERT INTO `fa_admin_admin_log` VALUES ('24', '1', '/admin.php/index/upload', '{\"name\":\"file\",\"path\":\"images\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:33:22');
INSERT INTO `fa_admin_admin_log` VALUES ('25', '1', '/admin.php/config/index', '{\"title\":\"webname\",\"key\":\"key\",\"desc\":\"key\",\"tel\":\"123123123\",\"addr\":\"123123123\",\"logo\":\"\\/upload\\/images\\/20231105\\/ecb0e3acc3bb6ed477ee03619fd1dd3f.png\",\"banner1\":\"\\/upload\\/images\\/20231105\\/ca9817ed96d3ef90a0609973ef7df012.jpg\",\"banner2\":\"\\/upload\\/images\\/20231105\\/c070cdd2dcbe1a5c6e7f76cf3438ce93.jpg\",\"banner3\":\"\\/upload\\/images\\/20231105\\/e4473ff16bd7db9ded890a91fb564f57.jpg\",\"video\":\"\",\"login_captcha\":\"0\",\"smtp-user\":\"\",\"smtp-pass\":\"\",\"smtp-port\":\"\",\"smtp-host\":\"\",\"file-type\":\"1\",\"file-endpoint\":\"\",\"file-OssName\":\"\",\"file-accessKeyId\":\"\",\"file-accessKeySecret\":\"\",\"qiniu-Domain\":\"\",\"qiniu-Bucket\":\"\",\"qiniu-AK\":\"\",\"qiniu-SK\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:33:47');
INSERT INTO `fa_admin_admin_log` VALUES ('26', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 12:33:48');
INSERT INTO `fa_admin_admin_log` VALUES ('27', '1', '/admin.php', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:02:56');
INSERT INTO `fa_admin_admin_log` VALUES ('28', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:02:58');
INSERT INTO `fa_admin_admin_log` VALUES ('29', '1', '/admin.php/crud/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:03:01');
INSERT INTO `fa_admin_admin_log` VALUES ('30', '1', '/admin.php/crud/crud/name/fa_type_index', '{\"name\":\"fa_type_index\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:03:07');
INSERT INTO `fa_admin_admin_log` VALUES ('31', '1', '/admin.php/crud/crud/name/fa_type_index', '{\"ename\":\"\\u5f69\\u79cd\\u7c7b\\u578b\",\"menu\":\"0\",\"name\":\"fa_type_index\",\"type\":[\"int(10)\",\"varchar(100)\"],\"desc\":[\"\",\"\"],\"null\":[\"1\",\"1\"],\"list\":[\"on\",\"on\"],\"formType\":[\"1\",\"1\"],\"form\":{\"1\":\"on\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:03:30');
INSERT INTO `fa_admin_admin_log` VALUES ('32', '1', '/admin.php/crud/crud/name/fa_data_times', '{\"name\":\"fa_data_times\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:03:35');
INSERT INTO `fa_admin_admin_log` VALUES ('33', '1', '/admin.php/crud/crud/name/fa_data_times', '{\"ename\":\"\\u5f69\\u79cd\\u671f\\u6570\",\"menu\":\"0\",\"name\":\"fa_data_times\",\"type\":[\"int(10)\",\"int(2)\",\"varchar(100)\",\"int(11)\"],\"desc\":[\"\",\"\",\"\",\"\"],\"null\":[\"1\",\"1\",\"1\",\"1\"],\"list\":[\"on\",\"on\",\"on\",\"on\"],\"formType\":[\"1\",\"1\",\"1\",\"1\"],\"search\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"},\"form\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:03:59');
INSERT INTO `fa_admin_admin_log` VALUES ('34', '1', '/admin.php/crud/crud/name/fa_data_index', '{\"name\":\"fa_data_index\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:04:04');
INSERT INTO `fa_admin_admin_log` VALUES ('35', '1', '/admin.php/crud/crud/name/fa_data_index', '{\"ename\":\"\\u5f69\\u79cd\\u5f00\\u5956\",\"menu\":\"0\",\"name\":\"fa_data_index\",\"type\":[\"int(10)\",\"int(2)\",\"int(11)\",\"varchar(100)\",\"varchar(100)\"],\"desc\":[\"\",\"\",\"\",\"\",\"\"],\"null\":[\"1\",\"1\",\"1\",\"1\",\"1\"],\"list\":[\"on\",\"on\",\"on\",\"on\",\"on\"],\"formType\":[\"1\",\"1\",\"1\",\"1\",\"1\"],\"search\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\",\"4\":\"on\"},\"form\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\",\"4\":\"on\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:04:22');
INSERT INTO `fa_admin_admin_log` VALUES ('36', '1', '/admin.php/index/cache', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:04:26');
INSERT INTO `fa_admin_admin_log` VALUES ('37', '1', '/admin.php/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:04:26');
INSERT INTO `fa_admin_admin_log` VALUES ('38', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:04:27');
INSERT INTO `fa_admin_admin_log` VALUES ('39', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:04:29');
INSERT INTO `fa_admin_admin_log` VALUES ('40', '1', '/admin.php/crud/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:06:11');
INSERT INTO `fa_admin_admin_log` VALUES ('41', '1', '/admin.php/crud/crud/name/fa_data_index', '{\"name\":\"fa_data_index\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:07:54');
INSERT INTO `fa_admin_admin_log` VALUES ('42', '1', '/admin.php/crud/crud/name/fa_data_index', '{\"ename\":\"\\u5f00\\u5956\\u6570\\u636e\",\"menu\":\"\",\"name\":\"fa_data_index\",\"type\":[\"int(10)\",\"int(2)\",\"int(11)\",\"varchar(100)\",\"varchar(100)\"],\"desc\":[\"\",\"\\u5f69\\u79cd\\u7c7b\\u578b\",\"\\u65f6\\u95f4\",\"\\u671f\\u6570\",\"\\u7ed3\\u679c\"],\"null\":[\"1\",\"1\",\"1\",\"1\",\"1\"],\"list\":[\"on\",\"on\",\"on\",\"on\",\"on\"],\"formType\":[\"1\",\"1\",\"1\",\"1\",\"1\"],\"search\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\",\"4\":\"on\"},\"form\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\",\"4\":\"on\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:03');
INSERT INTO `fa_admin_admin_log` VALUES ('43', '1', '/admin.php/crud/crud/name/fa_data_times', '{\"name\":\"fa_data_times\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:06');
INSERT INTO `fa_admin_admin_log` VALUES ('44', '1', '/admin.php/crud/crud/name/fa_data_times', '{\"ename\":\"\\u5f00\\u5956\\u65f6\\u95f4\",\"menu\":\"\",\"name\":\"fa_data_times\",\"type\":[\"int(10)\",\"int(2)\",\"varchar(100)\",\"int(11)\"],\"desc\":[\"\",\"\\u5f69\\u79cd\\u7c7b\\u578b\",\"\\u671f\\u6570\",\"\\u5f00\\u5956\\u65f6\\u95f4\"],\"null\":[\"1\",\"1\",\"1\",\"1\"],\"list\":[\"on\",\"on\",\"on\",\"on\"],\"formType\":[\"1\",\"1\",\"1\",\"1\"],\"search\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"},\"form\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:14');
INSERT INTO `fa_admin_admin_log` VALUES ('45', '1', '/admin.php/crud/crud/name/fa_type_index', '{\"name\":\"fa_type_index\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:16');
INSERT INTO `fa_admin_admin_log` VALUES ('46', '1', '/admin.php/crud/crud/name/fa_type_index', '{\"ename\":\"\\u5f69\\u79cd\\u7c7b\\u578b\",\"menu\":\"\",\"name\":\"fa_type_index\",\"type\":[\"int(10)\",\"varchar(100)\"],\"desc\":[\"id\",\"\\u5f69\\u79cd\\u540d\\u79f0\"],\"null\":[\"1\",\"1\"],\"list\":[\"on\",\"on\"],\"formType\":[\"1\",\"1\"],\"search\":{\"1\":\"on\"},\"form\":{\"1\":\"on\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:20');
INSERT INTO `fa_admin_admin_log` VALUES ('47', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:24');
INSERT INTO `fa_admin_admin_log` VALUES ('48', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:27');
INSERT INTO `fa_admin_admin_log` VALUES ('49', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:08:31');
INSERT INTO `fa_admin_admin_log` VALUES ('50', '1', '/admin.php/data.index/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:09:36');
INSERT INTO `fa_admin_admin_log` VALUES ('51', '1', '/admin.php/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:29:55');
INSERT INTO `fa_admin_admin_log` VALUES ('52', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:29:55');
INSERT INTO `fa_admin_admin_log` VALUES ('53', '1', '/admin.php/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:30:22');
INSERT INTO `fa_admin_admin_log` VALUES ('54', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-05 18:30:22');
INSERT INTO `fa_admin_admin_log` VALUES ('55', '1', '/admin.php/login/index', '{\"username\":\"admin\",\"remember\":\"on\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:35');
INSERT INTO `fa_admin_admin_log` VALUES ('56', '1', '/admin.php', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:36');
INSERT INTO `fa_admin_admin_log` VALUES ('57', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:36');
INSERT INTO `fa_admin_admin_log` VALUES ('58', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:41');
INSERT INTO `fa_admin_admin_log` VALUES ('59', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:48');
INSERT INTO `fa_admin_admin_log` VALUES ('60', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:52');
INSERT INTO `fa_admin_admin_log` VALUES ('61', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:53');
INSERT INTO `fa_admin_admin_log` VALUES ('62', '1', '/admin.php/type.index/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:50:56');
INSERT INTO `fa_admin_admin_log` VALUES ('63', '1', '/admin.php/type.index/add', '{\"name\":\"\\u6d88\\u606f\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:51:00');
INSERT INTO `fa_admin_admin_log` VALUES ('64', '1', '/admin.php/type.index/add', '{\"name\":\"\\u6d88\\u606f\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:51:03');
INSERT INTO `fa_admin_admin_log` VALUES ('65', '1', '/admin.php/type.index/add', '{\"name\":\"\\u6d88\\u606f\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:51:05');
INSERT INTO `fa_admin_admin_log` VALUES ('66', '1', '/admin.php/type.index/add', '{\"name\":\"\\u6d88\\u606f\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:51:07');
INSERT INTO `fa_admin_admin_log` VALUES ('67', '1', '/admin.php/type.index/add', '{\"name\":\"\\u6d88\\u606f\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:51:11');
INSERT INTO `fa_admin_admin_log` VALUES ('68', '1', '/admin.php/type.index/add', '{\"name\":\"\\u6d88\\u606f\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:51:13');
INSERT INTO `fa_admin_admin_log` VALUES ('69', '1', '/admin.php/type.index/add', '{\"name\":\"\\u6d88\\u606f\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:51:37');
INSERT INTO `fa_admin_admin_log` VALUES ('70', '1', '/admin.php/crud/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:08');
INSERT INTO `fa_admin_admin_log` VALUES ('71', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:12');
INSERT INTO `fa_admin_admin_log` VALUES ('72', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:17');
INSERT INTO `fa_admin_admin_log` VALUES ('73', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:19');
INSERT INTO `fa_admin_admin_log` VALUES ('74', '1', '/admin.php/admin.photo/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:23');
INSERT INTO `fa_admin_admin_log` VALUES ('75', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:25');
INSERT INTO `fa_admin_admin_log` VALUES ('76', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:27');
INSERT INTO `fa_admin_admin_log` VALUES ('77', '1', '/admin.php/index/cache', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:45');
INSERT INTO `fa_admin_admin_log` VALUES ('78', '1', '/admin.php/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:46');
INSERT INTO `fa_admin_admin_log` VALUES ('79', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:46');
INSERT INTO `fa_admin_admin_log` VALUES ('80', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:53');
INSERT INTO `fa_admin_admin_log` VALUES ('81', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:54');
INSERT INTO `fa_admin_admin_log` VALUES ('82', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:52:56');
INSERT INTO `fa_admin_admin_log` VALUES ('83', '1', '/admin.php/data.index/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:00');
INSERT INTO `fa_admin_admin_log` VALUES ('84', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:10');
INSERT INTO `fa_admin_admin_log` VALUES ('85', '1', '/admin.php/data.times/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:13');
INSERT INTO `fa_admin_admin_log` VALUES ('86', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:34');
INSERT INTO `fa_admin_admin_log` VALUES ('87', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:37');
INSERT INTO `fa_admin_admin_log` VALUES ('88', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:39');
INSERT INTO `fa_admin_admin_log` VALUES ('89', '1', '/admin.php/type.index/remove', '{\"id\":\"2\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:43');
INSERT INTO `fa_admin_admin_log` VALUES ('90', '1', '/admin.php/type.index/edit/id/1', '{\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:53:46');
INSERT INTO `fa_admin_admin_log` VALUES ('91', '1', '/admin.php/type.index/edit/id/1', '{\"name\":\"\\u9999\\u6e2f\\u516d\\u5408\\u5f69\",\"id\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:54:01');
INSERT INTO `fa_admin_admin_log` VALUES ('92', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:54:49');
INSERT INTO `fa_admin_admin_log` VALUES ('93', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:54:50');
INSERT INTO `fa_admin_admin_log` VALUES ('94', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:55:00');
INSERT INTO `fa_admin_admin_log` VALUES ('95', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:55:20');
INSERT INTO `fa_admin_admin_log` VALUES ('96', '1', '/admin.php/data.index/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:55:25');
INSERT INTO `fa_admin_admin_log` VALUES ('97', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:55:29');
INSERT INTO `fa_admin_admin_log` VALUES ('98', '1', '/admin.php/data.times/edit/id/331', '{\"id\":\"331\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:55:58');
INSERT INTO `fa_admin_admin_log` VALUES ('99', '1', '/admin.php/data.times/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:56:03');
INSERT INTO `fa_admin_admin_log` VALUES ('100', '1', '/admin.php/data.times/add', '{\"type\":\"tm\",\"actionNo\":\"4\",\"lhcTime\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:56:07');
INSERT INTO `fa_admin_admin_log` VALUES ('101', '1', '/admin.php/data.times/add', '{\"type\":\"1\",\"actionNo\":\"4\",\"lhcTime\":\"3\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:56:11');
INSERT INTO `fa_admin_admin_log` VALUES ('102', '1', '/admin.php/data.times/edit/id/332', '{\"id\":\"332\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:56:17');
INSERT INTO `fa_admin_admin_log` VALUES ('103', '1', '/admin.php/data.times/edit/id/332', '{\"type\":\"1\",\"actionNo\":\"4\",\"lhcTime\":\"2023-05-16 21:30:00\",\"id\":\"332\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:56:21');
INSERT INTO `fa_admin_admin_log` VALUES ('104', '1', '/admin.php/data.times/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:58:29');
INSERT INTO `fa_admin_admin_log` VALUES ('105', '1', '/admin.php/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:58:40');
INSERT INTO `fa_admin_admin_log` VALUES ('106', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 13:58:41');
INSERT INTO `fa_admin_admin_log` VALUES ('107', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:01:36');
INSERT INTO `fa_admin_admin_log` VALUES ('108', '1', '/admin.php/data.times/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:01:39');
INSERT INTO `fa_admin_admin_log` VALUES ('109', '1', '/admin.php/data.times/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:02:44');
INSERT INTO `fa_admin_admin_log` VALUES ('110', '1', '/admin.php/data.times/add', '{\"type\":\"\",\"actionNo\":\"\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:02:54');
INSERT INTO `fa_admin_admin_log` VALUES ('111', '1', '/admin.php/data.times/add', '{\"type\":\"\",\"actionNo\":\"\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:04:11');
INSERT INTO `fa_admin_admin_log` VALUES ('112', '1', '/admin.php/data.times/add', '{\"type\":\"\",\"actionNo\":\"\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:04:12');
INSERT INTO `fa_admin_admin_log` VALUES ('113', '1', '/admin.php/data.times/add', '{\"type\":\"2\",\"actionNo\":\"\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:04:15');
INSERT INTO `fa_admin_admin_log` VALUES ('114', '1', '/admin.php/data.times/add', '{\"type\":\"2\",\"actionNo\":\"12\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:04:18');
INSERT INTO `fa_admin_admin_log` VALUES ('115', '1', '/admin.php/data.times/add', '{\"type\":\"2\",\"actionNo\":\"12\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:04:21');
INSERT INTO `fa_admin_admin_log` VALUES ('116', '1', '/admin.php/data.times/add', '{\"type\":\"2\",\"actionNo\":\"12\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:05:21');
INSERT INTO `fa_admin_admin_log` VALUES ('117', '1', '/admin.php/data.times/add', '{\"type\":\"2\",\"actionNo\":\"12\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:05:24');
INSERT INTO `fa_admin_admin_log` VALUES ('118', '1', '/admin.php/data.times/add', '{\"type\":\"2\",\"actionNo\":\"12\",\"lhcTime\":\"2023-11-20 03:03\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:05:27');
INSERT INTO `fa_admin_admin_log` VALUES ('119', '1', '/admin.php/data.times/edit/id/332', '{\"id\":\"332\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:05:32');
INSERT INTO `fa_admin_admin_log` VALUES ('120', '1', '/admin.php/data.times/edit/id/332', '{\"type\":\"1\",\"actionNo\":\"4\",\"lhcTime\":\"2023-05-16 21:30:00\",\"id\":\"332\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:05:37');
INSERT INTO `fa_admin_admin_log` VALUES ('121', '1', '/admin.php/data.times/edit/id/332', '{\"id\":\"332\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:06:36');
INSERT INTO `fa_admin_admin_log` VALUES ('122', '1', '/admin.php/data.times/edit/id/332', '{\"type\":\"1\",\"actionNo\":\"4\",\"lhcTime\":\"2023-11-07 14:06\",\"id\":\"332\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:06:42');
INSERT INTO `fa_admin_admin_log` VALUES ('123', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:08:21');
INSERT INTO `fa_admin_admin_log` VALUES ('124', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:08:21');
INSERT INTO `fa_admin_admin_log` VALUES ('125', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:08:32');
INSERT INTO `fa_admin_admin_log` VALUES ('126', '1', '/admin.php/data.index/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:11:35');
INSERT INTO `fa_admin_admin_log` VALUES ('127', '1', '/admin.php/data.index/edit/id/480', '{\"id\":\"480\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:11:45');
INSERT INTO `fa_admin_admin_log` VALUES ('128', '1', '/admin.php/data.index/edit/id/481', '{\"id\":\"481\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:12:43');
INSERT INTO `fa_admin_admin_log` VALUES ('129', '1', '/admin.php/data.index/edit/id/481', '{\"type\":\"1\",\"time\":\"2023-11-07 14:12\",\"number\":\"2023193\",\"data\":\"22,08,23,19,37,49,44\",\"id\":\"481\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:12:48');
INSERT INTO `fa_admin_admin_log` VALUES ('130', '1', '/admin.php/data.index/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:14:26');
INSERT INTO `fa_admin_admin_log` VALUES ('131', '1', '/admin.php/data.index/edit/id/481', '{\"id\":\"481\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:14:32');
INSERT INTO `fa_admin_admin_log` VALUES ('132', '1', '/admin.php/data.index/add', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:16:49');
INSERT INTO `fa_admin_admin_log` VALUES ('133', '1', '/admin.php/data.index/edit/id/481', '{\"id\":\"481\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:16:53');
INSERT INTO `fa_admin_admin_log` VALUES ('134', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:17:19');
INSERT INTO `fa_admin_admin_log` VALUES ('135', '1', '/admin.php/data.times/edit/id/332', '{\"id\":\"332\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:17:22');
INSERT INTO `fa_admin_admin_log` VALUES ('136', '1', '/admin.php/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:28');
INSERT INTO `fa_admin_admin_log` VALUES ('137', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:28');
INSERT INTO `fa_admin_admin_log` VALUES ('138', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:29');
INSERT INTO `fa_admin_admin_log` VALUES ('139', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:31');
INSERT INTO `fa_admin_admin_log` VALUES ('140', '1', '/admin.php/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:45');
INSERT INTO `fa_admin_admin_log` VALUES ('141', '1', '/admin.php/index/home', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:45');
INSERT INTO `fa_admin_admin_log` VALUES ('142', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:46');
INSERT INTO `fa_admin_admin_log` VALUES ('143', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:48');
INSERT INTO `fa_admin_admin_log` VALUES ('144', '1', '/admin.php/type.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:53');
INSERT INTO `fa_admin_admin_log` VALUES ('145', '1', '/admin.php/data.times/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:57');
INSERT INTO `fa_admin_admin_log` VALUES ('146', '1', '/admin.php/data.index/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:19:59');
INSERT INTO `fa_admin_admin_log` VALUES ('147', '1', '/admin.php/config/index', '[]', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2023-11-07 14:49:13');

-- ----------------------------
-- Table structure for fa_admin_admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_admin_permission`;
CREATE TABLE `fa_admin_admin_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理-权限中间表';

-- ----------------------------
-- Records of fa_admin_admin_permission
-- ----------------------------

-- ----------------------------
-- Table structure for fa_admin_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_admin_role`;
CREATE TABLE `fa_admin_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理-角色中间表';

-- ----------------------------
-- Records of fa_admin_admin_role
-- ----------------------------

-- ----------------------------
-- Table structure for fa_admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_permission`;
CREATE TABLE `fa_admin_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(50) DEFAULT NULL COMMENT '名称',
  `href` varchar(50) NOT NULL COMMENT '地址',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` tinyint(4) NOT NULL DEFAULT '99' COMMENT '排序',
  `type` tinyint(1) DEFAULT '1' COMMENT '菜单',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限表';

-- ----------------------------
-- Records of fa_admin_permission
-- ----------------------------
INSERT INTO `fa_admin_permission` VALUES ('1', '0', '后台权限', '', 'layui-icon layui-icon-username', '2', '0', '1');
INSERT INTO `fa_admin_permission` VALUES ('2', '1', '管理员', '/admin.admin/index', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('3', '2', '新增管理员', '/admin.admin/add', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('4', '2', '编辑管理员', '/admin.admin/edit', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('5', '2', '修改管理员状态', '/admin.admin/status', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('6', '2', '删除管理员', '/admin.admin/remove', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('7', '2', '批量删除管理员', '/admin.admin/batchRemove', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('8', '2', '管理员分配角色', '/admin.admin/role', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('9', '2', '管理员分配直接权限', '/admin.admin/permission', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('10', '2', '管理员回收站', '/admin.admin/recycle', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('11', '1', '角色管理', '/admin.role/index', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('12', '11', '新增角色', '/admin.role/add', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('13', '11', '编辑角色', '/admin.role/edit', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('14', '11', '删除角色', '/admin.role/remove', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('15', '11', '角色分配权限', '/admin.role/permission', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('16', '11', '角色回收站', '/admin.role/recycle', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('17', '1', '菜单权限', '/admin.permission/index', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('18', '17', '新增菜单', '/admin.permission/add', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('19', '17', '编辑菜单', '/admin.permission/edit', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('20', '17', '修改菜单状态', '/admin.permission/status', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('21', '17', '删除菜单', '/admin.permission/remove', '', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('22', '0', '系统管理', '', 'layui-icon layui-icon-set', '3', '0', '1');
INSERT INTO `fa_admin_permission` VALUES ('23', '22', '后台日志', '/admin.admin/log', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('24', '23', '清空管理员日志', '/admin.admin/removeLog', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('25', '22', '系统设置', '/config/index', '', '1', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('26', '22', '图片管理', '/admin.photo/index', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('27', '26', '新增图片文件夹', '/admin.photo/add', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('28', '26', '删除图片文件夹', '/admin.photo/del', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('29', '26', '图片列表', '/admin.photo/list', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('30', '26', '添加单图', '/admin.photo/addPhoto', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('31', '26', '添加多图', '/admin.photo/addPhotos', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('32', '26', '删除图片', '/admin.photo/remove', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('33', '26', '批量删除图片', '/admin.photo/batchRemove', '', '2', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('34', '0', '彩种类型', '/type.index/index', 'layui-icon layui-icon-fire', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('35', '34', '新增彩种类型', '/type.index/add', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('36', '34', '修改彩种类型', '/type.index/edit', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('37', '34', '删除彩种类型', '/type.index/remove', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('38', '34', '批量删除彩种类型', '/type.index/batchRemove', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('39', '34', '回收站彩种类型', '/type.index/recycle', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('40', '0', '彩种期数', '/data.times/index', 'layui-icon layui-icon-fire', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('41', '40', '新增彩种期数', '/data.times/add', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('42', '40', '修改彩种期数', '/data.times/edit', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('43', '40', '删除彩种期数', '/data.times/remove', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('44', '40', '批量删除彩种期数', '/data.times/batchRemove', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('45', '40', '回收站彩种期数', '/data.times/recycle', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('46', '0', '彩种开奖', '/data.index/index', 'layui-icon layui-icon-fire', '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('47', '46', '新增彩种开奖', '/data.index/add', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('48', '46', '修改彩种开奖', '/data.index/edit', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('49', '46', '删除彩种开奖', '/data.index/remove', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('50', '46', '批量删除彩种开奖', '/data.index/batchRemove', null, '99', '1', '1');
INSERT INTO `fa_admin_permission` VALUES ('51', '46', '回收站彩种开奖', '/data.index/recycle', null, '99', '1', '1');

-- ----------------------------
-- Table structure for fa_admin_photo
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_photo`;
CREATE TABLE `fa_admin_photo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '文件名称',
  `href` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `path` varchar(30) DEFAULT NULL COMMENT '路径',
  `mime` varchar(50) NOT NULL COMMENT 'mime类型',
  `size` varchar(30) NOT NULL COMMENT '大小',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1本地2阿里云3七牛云',
  `ext` varchar(10) DEFAULT NULL COMMENT '文件后缀',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='图片表';

-- ----------------------------
-- Records of fa_admin_photo
-- ----------------------------
INSERT INTO `fa_admin_photo` VALUES ('1', 'card.png', '/upload/images/20231105/ecb0e3acc3bb6ed477ee03619fd1dd3f.png', 'images', 'image/png', '3413', '1', 'png', '2023-11-05 12:32:24');
INSERT INTO `fa_admin_photo` VALUES ('2', 'banner1.fc7ab7b5.jpg', '/upload/images/20231105/ca9817ed96d3ef90a0609973ef7df012.jpg', 'images', 'image/jpeg', '105463', '1', 'jpg', '2023-11-05 12:33:09');
INSERT INTO `fa_admin_photo` VALUES ('3', 'banner2.5d746ace.jpg', '/upload/images/20231105/c070cdd2dcbe1a5c6e7f76cf3438ce93.jpg', 'images', 'image/jpeg', '94058', '1', 'jpg', '2023-11-05 12:33:17');
INSERT INTO `fa_admin_photo` VALUES ('4', 'banner3.c220e76e.jpg', '/upload/images/20231105/e4473ff16bd7db9ded890a91fb564f57.jpg', 'images', 'image/jpeg', '118956', '1', 'jpg', '2023-11-05 12:33:22');

-- ----------------------------
-- Table structure for fa_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_role`;
CREATE TABLE `fa_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(30) DEFAULT NULL COMMENT '名称',
  `desc` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of fa_admin_role
-- ----------------------------
INSERT INTO `fa_admin_role` VALUES ('1', '超级管理员', '拥有所有管理权限', '2020-09-01 11:01:34', '2020-09-01 11:01:34', null);

-- ----------------------------
-- Table structure for fa_admin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_role_permission`;
CREATE TABLE `fa_admin_role_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色-权限中间表';

-- ----------------------------
-- Records of fa_admin_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for fa_data_index
-- ----------------------------
DROP TABLE IF EXISTS `fa_data_index`;
CREATE TABLE `fa_data_index` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL COMMENT '彩种类型',
  `time` int(11) NOT NULL COMMENT '时间',
  `number` varchar(100) NOT NULL COMMENT '期数',
  `data` varchar(100) NOT NULL COMMENT '结果',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开奖数据';

-- ----------------------------
-- Records of fa_data_index
-- ----------------------------
INSERT INTO `fa_data_index` VALUES ('277', '1', '1672580063', ' 2023001', '01,49,14,23,31,46,32');
INSERT INTO `fa_data_index` VALUES ('279', '1', '1672666381', '2023002', '34,48,41,24,30,04,39');
INSERT INTO `fa_data_index` VALUES ('280', '1', '1672752860', '2023003', '10,35,43,30,47,36,18');
INSERT INTO `fa_data_index` VALUES ('281', '1', '1672839240', '2023004', '26,21,13,03,49,41,39');
INSERT INTO `fa_data_index` VALUES ('282', '1', '1672925648', '2023005', '44,09,21,36,03,49,41');
INSERT INTO `fa_data_index` VALUES ('283', '1', '1673012018', '2023006', '32,12,26,20,08,48,47');
INSERT INTO `fa_data_index` VALUES ('284', '1', '1673098442', '2023007', '14,47,42,27,23,39,26');
INSERT INTO `fa_data_index` VALUES ('285', '1', '1673184801', '2023008', '43,11,30,28,20,05,06');
INSERT INTO `fa_data_index` VALUES ('286', '1', '1673271261', '2023009', '14,23,26,49,18,43,09');
INSERT INTO `fa_data_index` VALUES ('287', '1', '1673357641', '2023010', '24,12,20,46,42,15,09');
INSERT INTO `fa_data_index` VALUES ('288', '1', '1673444053', ' 2023011', '06,20,27,25,44,05,16');
INSERT INTO `fa_data_index` VALUES ('289', '1', '1673530473', '2023012', '06,02,23,22,10,03,49');
INSERT INTO `fa_data_index` VALUES ('290', '1', '1673616854', '2023013', '35,20,12,44,07,36,15');
INSERT INTO `fa_data_index` VALUES ('291', '1', '1673703264', '2023014', '36,08,16,39,01,30,13');
INSERT INTO `fa_data_index` VALUES ('292', '1', '1673789652', '2023015', '40,42,30,16,07,08,12');
INSERT INTO `fa_data_index` VALUES ('293', '1', '1673876057', '2023016', '47,25,38,06,17,11,36');
INSERT INTO `fa_data_index` VALUES ('294', '1', '1673962454', '2023017', '23,33,13,07,49,05,48');
INSERT INTO `fa_data_index` VALUES ('295', '1', '1674048867', '2023018', '35,29,17,11,46,32,26');
INSERT INTO `fa_data_index` VALUES ('296', '1', '1674135247', '2023019', '30,45,15,17,12,19,32');
INSERT INTO `fa_data_index` VALUES ('297', '1', '1674221652', '2023020', '44,31,26,04,38,03,49');
INSERT INTO `fa_data_index` VALUES ('298', '1', '1674308067', '2023021', '47,37,27,39,19,18,45');
INSERT INTO `fa_data_index` VALUES ('299', '1', '1674394461', '2023022', '40,12,14,19,18,02,07');
INSERT INTO `fa_data_index` VALUES ('300', '1', '1674480846', '2023023', '17,47,34,44,27,13,40');
INSERT INTO `fa_data_index` VALUES ('301', '1', '1674567252', '2023024', '02,38,01,48,27,11,36');
INSERT INTO `fa_data_index` VALUES ('302', '1', '1674653659', '2023025', '04,11,16,38,29,26,09');
INSERT INTO `fa_data_index` VALUES ('303', '1', '1674740055', '2023026', '45,06,43,25,05,34,32');
INSERT INTO `fa_data_index` VALUES ('304', '1', '1674826466', '2023027', '12,43,30,09,02,36,35');
INSERT INTO `fa_data_index` VALUES ('305', '1', '1674912865', '2023028', '45,19,12,48,28,20,02');
INSERT INTO `fa_data_index` VALUES ('306', '1', '1674999257', '2023029', '24,47,40,42,08,36,18');
INSERT INTO `fa_data_index` VALUES ('307', '1', '1675085656', '2023030', '07,01,43,48,37,44,36');
INSERT INTO `fa_data_index` VALUES ('308', '1', '1675172058', '2023031', '23,09,42,44,37,10,11');
INSERT INTO `fa_data_index` VALUES ('309', '1', '1675258468', '2023032', '38,07,08,01,30,19,11');
INSERT INTO `fa_data_index` VALUES ('310', '1', '1675344852', '2023033', '14,16,13,41,07,20,04');
INSERT INTO `fa_data_index` VALUES ('311', '1', '1675431257', '2023034', '02,30,15,41,34,42,47');
INSERT INTO `fa_data_index` VALUES ('312', '1', '1675517655', '2023035', '34,10,42,27,32,38,48');
INSERT INTO `fa_data_index` VALUES ('313', '1', '1675604054', '2023036', '09,35,03,14,01,42,04');
INSERT INTO `fa_data_index` VALUES ('314', '1', '1675690451', '2023037', '47,23,44,45,39,42,21');
INSERT INTO `fa_data_index` VALUES ('315', '1', '1675776856', '2023038', '41,04,01,21,47,38,30');
INSERT INTO `fa_data_index` VALUES ('316', '1', '1675863249', '2023039', '17,42,10,08,07,26,09');
INSERT INTO `fa_data_index` VALUES ('317', '1', '1675949645', '2023040', '18,01,22,39,28,02,31');
INSERT INTO `fa_data_index` VALUES ('318', '1', '1676036056', '2023041', '09,37,29,34,05,22,23');
INSERT INTO `fa_data_index` VALUES ('322', '1', '1676122456', '2023042', '06,20,19,34,02,16,05');
INSERT INTO `fa_data_index` VALUES ('323', '1', '1676208867', '2023043', '06,41,23,13,21,05,39');
INSERT INTO `fa_data_index` VALUES ('324', '1', '1676295270', '2023044', '08,32,44,49,15,07,11');
INSERT INTO `fa_data_index` VALUES ('325', '1', '1676381662', '2023045', '31,03,07,26,05,18,16');
INSERT INTO `fa_data_index` VALUES ('326', '1', '1676468058', '2023046', '44,25,11,13,40,08,30');
INSERT INTO `fa_data_index` VALUES ('327', '1', '1676554463', '2023047', '38,45,43,28,02,31,12');
INSERT INTO `fa_data_index` VALUES ('328', '1', '1676640860', '2023048', '10,19,25,26,29,22,02');
INSERT INTO `fa_data_index` VALUES ('329', '1', '1676727257', '2023049', '35,16,29,11,19,43,13');
INSERT INTO `fa_data_index` VALUES ('330', '1', '1676813665', '2023050', '22,26,32,43,11,49,23');
INSERT INTO `fa_data_index` VALUES ('331', '1', '1676900068', '2023051', '40,35,29,26,46,11,05');
INSERT INTO `fa_data_index` VALUES ('332', '1', '1676986460', '2023052 ', '27,01,03,08,29,28,26');
INSERT INTO `fa_data_index` VALUES ('333', '1', '1677072871', '2023053', '35,31,38,41,43,36,21');
INSERT INTO `fa_data_index` VALUES ('334', '1', '1677159265', '2023054', '24,19,14,37,45,43,46');
INSERT INTO `fa_data_index` VALUES ('335', '1', '1677245668', '2023055', '18,27,11,46,31,03,06');
INSERT INTO `fa_data_index` VALUES ('336', '1', '1677332061', '2023056', '01,35,31,16,48,28,21');
INSERT INTO `fa_data_index` VALUES ('337', '1', '1677418459', '2023057', '18,24,32,21,30,38,03');
INSERT INTO `fa_data_index` VALUES ('338', '1', '1677504854', '2023058', '39,37,09,19,16,47,49');
INSERT INTO `fa_data_index` VALUES ('339', '1', '1677591256', '2023059', '41,45,49,31,40,44,39');
INSERT INTO `fa_data_index` VALUES ('340', '1', '1677677663', '2023060', '17,36,45,02,48,11,04');
INSERT INTO `fa_data_index` VALUES ('341', '1', '1677764068', '2023061', '16,12,39,27,36,41,46');
INSERT INTO `fa_data_index` VALUES ('342', '1', '1677850470', '2023062', '45,40,33,08,39,46,27');
INSERT INTO `fa_data_index` VALUES ('343', '1', '1677936852', '2023063', '10,35,49,22,34,33,32');
INSERT INTO `fa_data_index` VALUES ('344', '1', '1678023257', '2023064', '26,28,45,08,21,02,46');
INSERT INTO `fa_data_index` VALUES ('345', '1', '1678109663', '2023065', '41,30,10,17,34,14,09');
INSERT INTO `fa_data_index` VALUES ('347', '1', '1678196066', '2023066', '47,24,23,02,27,28,42');
INSERT INTO `fa_data_index` VALUES ('348', '1', '1678282465', '2023067', '27,33,38,13,43,39,08');
INSERT INTO `fa_data_index` VALUES ('349', '1', '1678368865', '2023068', '25,22,08,17,14,46,48');
INSERT INTO `fa_data_index` VALUES ('350', '1', '1678541659', '2023070', '36,28,17,37,22,01,40');
INSERT INTO `fa_data_index` VALUES ('351', '1', '1678628058', '2023071', '11,42,13,43,10,32,49');
INSERT INTO `fa_data_index` VALUES ('352', '1', '1678714455', '2023072', '48,33,17,40,20,16,06');
INSERT INTO `fa_data_index` VALUES ('353', '1', '1678800861', '2023073', '27,12,42,01,10,24,09');
INSERT INTO `fa_data_index` VALUES ('354', '1', '1678887261', '2023074', '40,12,20,08,33,29,02');
INSERT INTO `fa_data_index` VALUES ('355', '1', '1678973661', '2023075', '39,45,19,09,11,49,18');
INSERT INTO `fa_data_index` VALUES ('356', '1', '1679060056', '2023076', '09,12,38,14,47,45,07');
INSERT INTO `fa_data_index` VALUES ('357', '1', '1679146466', '2023077', '47,30,37,39,22,44,21');
INSERT INTO `fa_data_index` VALUES ('358', '1', '1679232863', '2023078', '45,30,05,49,25,22,37');
INSERT INTO `fa_data_index` VALUES ('359', '1', '1679319257', '2023079', '22,25,15,41,48,12,05');
INSERT INTO `fa_data_index` VALUES ('360', '1', '1679405662', '2023080', '13,10,39,28,22,21,19');
INSERT INTO `fa_data_index` VALUES ('361', '1', '1679492064', '2023081', '21,24,18,17,27,39,35');
INSERT INTO `fa_data_index` VALUES ('362', '1', '1679578464', '2023082', '23,30,13,36,43,02,25');
INSERT INTO `fa_data_index` VALUES ('363', '1', '1679664864', '2023083', '11,16,18,15,44,28,01');
INSERT INTO `fa_data_index` VALUES ('364', '1', '1679751252', '2023084 ', '25,43,34,04,20,38,39');
INSERT INTO `fa_data_index` VALUES ('365', '1', '1679837668', '2023085', '36,38,40,24,31,06,37');
INSERT INTO `fa_data_index` VALUES ('366', '1', '1679924064', '2023086', '32,37,14,24,01,10,30');
INSERT INTO `fa_data_index` VALUES ('367', '1', '1680010467', '2023087', '03,45,18,01,14,44,31');
INSERT INTO `fa_data_index` VALUES ('369', '1', '1680096874', '2023088', '06,32,17,14,37,47,27');
INSERT INTO `fa_data_index` VALUES ('370', '1', '1680183262', '2023089', '29,05,31,08,14,45,06');
INSERT INTO `fa_data_index` VALUES ('371', '1', '1680269679', '2023090', '21,13,41,12,24,48,30');
INSERT INTO `fa_data_index` VALUES ('372', '1', '1680356055', '2023091', '06,08,13,32,40,28,35');
INSERT INTO `fa_data_index` VALUES ('374', '1', '1680528851', '2023093', '02,49,37,16,36,04,44');
INSERT INTO `fa_data_index` VALUES ('375', '1', '1680615260', '2023094', '09,05,39,43,38,11,01');
INSERT INTO `fa_data_index` VALUES ('376', '1', '1680701667', '2023095', '11,30,09,25,41,04,24');
INSERT INTO `fa_data_index` VALUES ('378', '1', '1680788066', '2023096', '25,16,08,07,01,26,04');
INSERT INTO `fa_data_index` VALUES ('379', '1', '1680874465', '2023097', '18,40,30,47,14,44,13');
INSERT INTO `fa_data_index` VALUES ('380', '1', '1680960853', '2023098', '39,35,16,21,45,11,28');
INSERT INTO `fa_data_index` VALUES ('381', '1', '1681047267', '2023099', '08,11,32,44,29,04,06');
INSERT INTO `fa_data_index` VALUES ('382', '1', '1681133654', '2023100', '35,38,29,39,41,02,08');
INSERT INTO `fa_data_index` VALUES ('383', '1', '1681220052', '2023101', '49,21,41,35,45,32,23');
INSERT INTO `fa_data_index` VALUES ('384', '1', '1681306468', '2023102', '30,19,35,41,10,46,47');
INSERT INTO `fa_data_index` VALUES ('385', '1', '1681392850', '2023103', '15,16,12,20,31,23,39');
INSERT INTO `fa_data_index` VALUES ('386', '1', '1681479271', '2023104', '06,29,17,31,12,26,24');
INSERT INTO `fa_data_index` VALUES ('387', '1', '1681565662', '2023105', '47,44,24,40,20,12,33');
INSERT INTO `fa_data_index` VALUES ('388', '1', '1681652056', '2023106', '43,48,41,12,30,45,16');
INSERT INTO `fa_data_index` VALUES ('389', '1', '1681738454', '2023107', '19,04,06,47,46,21,28');
INSERT INTO `fa_data_index` VALUES ('390', '1', '1681824860', '2023108', '39,49,41,09,47,11,20');
INSERT INTO `fa_data_index` VALUES ('391', '1', '1681911271', '2023109', '47,38,26,03,15,09,36');
INSERT INTO `fa_data_index` VALUES ('392', '1', '1681997644', '2023110', '29,35,44,49,13,11,16');
INSERT INTO `fa_data_index` VALUES ('393', '1', '1682084066', '2023111', '37,12,36,13,45,16,18');
INSERT INTO `fa_data_index` VALUES ('394', '1', '1682170457', '2023112', '43,17,48,47,12,40,14');
INSERT INTO `fa_data_index` VALUES ('395', '1', '1682256859', '2023113', '41,15,23,48,32,13,01');
INSERT INTO `fa_data_index` VALUES ('396', '1', '1682343267', '2023114', '31,11,25,26,23,17,43');
INSERT INTO `fa_data_index` VALUES ('397', '1', '1680442468', '2023092', '31,11,25,26,23,17,43');
INSERT INTO `fa_data_index` VALUES ('398', '1', '1680442468', '2023092', '48,27,17,20,39,10,33');
INSERT INTO `fa_data_index` VALUES ('399', '1', '1682429412', '2023115', '26,28,45,08,21,02,46');
INSERT INTO `fa_data_index` VALUES ('400', '1', '1682515991', '2023116', '06,47,12,15,24,33,21');
INSERT INTO `fa_data_index` VALUES ('401', '1', '1682602364', '2023117', '34,10,03,14,46,11,45');
INSERT INTO `fa_data_index` VALUES ('402', '1', '1682688822', '2023118', '48,15,28,03,22,06,01');
INSERT INTO `fa_data_index` VALUES ('403', '1', '1682775169', '2023119', '28,20,16,32,07,05,41');
INSERT INTO `fa_data_index` VALUES ('404', '1', '1682861560', '2023120', '12,15,03,41,28,07,31');
INSERT INTO `fa_data_index` VALUES ('405', '1', '1682861573', '2023121', '01,15,05,24,47,29,22');
INSERT INTO `fa_data_index` VALUES ('406', '1', '1683034400', '2023122', '30,12,14,42,06,37,22');
INSERT INTO `fa_data_index` VALUES ('407', '1', '1683120791', '2023123', '45,11,05,34,19,22,06');
INSERT INTO `fa_data_index` VALUES ('408', '1', '1683207187', '2023124', '30,01,41,16,05,33,42');
INSERT INTO `fa_data_index` VALUES ('409', '1', '1683293642', '2023125', '02,16,08,44,37,18,30');
INSERT INTO `fa_data_index` VALUES ('410', '1', '1683379983', '2023126', '29,05,31,20,14,07,15');
INSERT INTO `fa_data_index` VALUES ('411', '1', '1683466392', '2023127', '11,13,39,25,22,38,07');
INSERT INTO `fa_data_index` VALUES ('412', '1', '1683552830', '2023128', '38,03,23,49,06,15,46');
INSERT INTO `fa_data_index` VALUES ('413', '1', '1683639192', '2023129', '43,29,39,10,15,41,02');
INSERT INTO `fa_data_index` VALUES ('414', '1', '1683725593', '2023130', '32,27,25,49,10,21,43');
INSERT INTO `fa_data_index` VALUES ('415', '1', '1683811961', '2023131', '23,05,44,19,01,10,13');
INSERT INTO `fa_data_index` VALUES ('416', '1', '1683898364', '2023132 ', '08,02,38,37,24,48,41');
INSERT INTO `fa_data_index` VALUES ('417', '1', '1683984708', '2023133', '19,33,42,46,05,26,27');
INSERT INTO `fa_data_index` VALUES ('421', '1', '1684071173', '2023134', '14,03,06,31,04,19,34');
INSERT INTO `fa_data_index` VALUES ('422', '1', '1684157603', '2023135', '43,20,06,17,28,04,12');
INSERT INTO `fa_data_index` VALUES ('423', '1', '1684244063', '2023136', '27,04,43,09,18,17,35');
INSERT INTO `fa_data_index` VALUES ('424', '1', '1684330401', '2023137', '30,23,02,41,34,07,20');
INSERT INTO `fa_data_index` VALUES ('425', '1', '1684416801', '2023138', '32,36,40,23,04,18,21');
INSERT INTO `fa_data_index` VALUES ('426', '1', '1684503202', '2023139', '47,03,17,26,13,39,34');
INSERT INTO `fa_data_index` VALUES ('427', '1', '1683725602', '2023140', '10,25,38,03,11,37,07');
INSERT INTO `fa_data_index` VALUES ('428', '1', '1684676022', '2023141', '05,18,35,40,11,26,03');
INSERT INTO `fa_data_index` VALUES ('429', '1', '1684762362', '2023142', '25,12,07,34,33,04,17');
INSERT INTO `fa_data_index` VALUES ('430', '1', '1684848600', '2023143', '10,08,11,45,29,34,18');
INSERT INTO `fa_data_index` VALUES ('431', '1', '1684935000', '2023144', '26,19,05,36,39,08,44');
INSERT INTO `fa_data_index` VALUES ('432', '1', '1685021400', '2023145', '08,12,37,09,18,43,31');
INSERT INTO `fa_data_index` VALUES ('433', '1', '1685107800', '2023146', '10,22,41,07,15,06,47');
INSERT INTO `fa_data_index` VALUES ('434', '1', '1685194200', '2023147', '43,24,03,13,06,35,10');
INSERT INTO `fa_data_index` VALUES ('435', '1', '1685280600', '2023148', '28,20,05,09,46,17,02');
INSERT INTO `fa_data_index` VALUES ('436', '1', '1685367000', '2023149', '17,03,28,34,13,09,38');
INSERT INTO `fa_data_index` VALUES ('437', '1', '1685376000', '2023150', '08,27,11,10,46,33,37');
INSERT INTO `fa_data_index` VALUES ('438', '1', '1685539800', '2023151', '29,11,43,04,20,05,23');
INSERT INTO `fa_data_index` VALUES ('439', '1', '1685626200', '2023152', '06,08,29,47,40,32,15');
INSERT INTO `fa_data_index` VALUES ('440', '1', '1685712600', '2023153', '37,11,32,10,21,02,28');
INSERT INTO `fa_data_index` VALUES ('442', '1', '1685799000', '2023154', '09,30,42,44,19,28,06');
INSERT INTO `fa_data_index` VALUES ('443', '1', '1685885400', '2023155', '37,05,26,40,02,19,07');
INSERT INTO `fa_data_index` VALUES ('444', '1', '1685971800', '2023156', '29,32,09,17,48,02,38');
INSERT INTO `fa_data_index` VALUES ('445', '1', '1686058200', '2023157', '43,37,08,18,23,06,46');
INSERT INTO `fa_data_index` VALUES ('446', '1', '1686144600', '2023158', '03,18,25,41,37,22,05');
INSERT INTO `fa_data_index` VALUES ('447', '1', '1686231000', '2023159', '25,32,04,09,40,26,39');
INSERT INTO `fa_data_index` VALUES ('448', '1', '1686317400', '2023160', '16,47,20,04,30,39,08');
INSERT INTO `fa_data_index` VALUES ('449', '1', '1686403800', '2023161', '23,03,28,41,39,12,04');
INSERT INTO `fa_data_index` VALUES ('450', '1', '1686490200', '2023162', '28,18,33,04,41,11,25');
INSERT INTO `fa_data_index` VALUES ('451', '1', '1686576600', '2023163', '18,39,07,26,10,03,44');
INSERT INTO `fa_data_index` VALUES ('452', '1', '1686663000', '2023164', '05,31,29,36,17,40,23');
INSERT INTO `fa_data_index` VALUES ('453', '1', '1686749400', '2023165', '21,45,23,04,16,19,07');
INSERT INTO `fa_data_index` VALUES ('454', '1', '1686835800', '2023166', '34,42,02,17,07,19,22');
INSERT INTO `fa_data_index` VALUES ('455', '1', '1686922200', '2023167', '24,11,40,05,38,16,31');
INSERT INTO `fa_data_index` VALUES ('456', '1', '1687008600', '2023168', '07,37,18,29,42,23,10');
INSERT INTO `fa_data_index` VALUES ('457', '1', '1687095000', '2023169', '24,12,06,19,44,37,28');
INSERT INTO `fa_data_index` VALUES ('458', '1', '1687181400', '2023170', '33,14,29,38,08,41,05');
INSERT INTO `fa_data_index` VALUES ('459', '1', '1687267800', '2023171', '06,23,42,19,38,07,26');
INSERT INTO `fa_data_index` VALUES ('460', '1', '1687354200', '2023172', '17,02,20,31,38,07,45');
INSERT INTO `fa_data_index` VALUES ('461', '1', '1687440600', '2023173', '29,44,01,06,30,14,37');
INSERT INTO `fa_data_index` VALUES ('462', '1', '1687527000', '2023174', '17,20,28,04,39,48,13');
INSERT INTO `fa_data_index` VALUES ('463', '1', '1687613400', '2023175', '31,23,06,09,44,30,13');
INSERT INTO `fa_data_index` VALUES ('464', '1', '0', '2023176', '25,07,23,09,18,41,33');
INSERT INTO `fa_data_index` VALUES ('465', '1', '1687786200', '2023177', '21,02,47,40,14,07,39');
INSERT INTO `fa_data_index` VALUES ('466', '1', '1687872600', '2023178', '32,29,07,14,05,46,10');
INSERT INTO `fa_data_index` VALUES ('467', '1', '1687959000', '2023179', '27,13,02,40,41,38,11');
INSERT INTO `fa_data_index` VALUES ('468', '1', '1688045400', '2023180', '05,12,07,36,21,17,40');
INSERT INTO `fa_data_index` VALUES ('469', '1', '1688131800', '2023181', '15,29,08,35,48,47,09');
INSERT INTO `fa_data_index` VALUES ('470', '1', '1688218200', '2023182', '19,17,05,22,04,43,26');
INSERT INTO `fa_data_index` VALUES ('471', '1', '1688304600', '2023183', '15,18,36,01,40,29,42');
INSERT INTO `fa_data_index` VALUES ('472', '1', '1688391000', '2023184', '12,03,23,30,11,28,39');
INSERT INTO `fa_data_index` VALUES ('473', '1', '1688477400', '2023185', '03,09,12,34,40,08,11');
INSERT INTO `fa_data_index` VALUES ('474', '1', '1688563800', '2023186', '08,27,23,09,19,02,30');
INSERT INTO `fa_data_index` VALUES ('475', '1', '1688650200', '2023187', '14,27,42,11,05,12,22');
INSERT INTO `fa_data_index` VALUES ('476', '1', '1688736600', '2023188', '36,15,34,03,20,21,45');
INSERT INTO `fa_data_index` VALUES ('477', '1', '1688823000', '2023189', '27,48,10,35,07,25,37');
INSERT INTO `fa_data_index` VALUES ('478', '1', '1688909400', '2023190', '37,04,31,12,16,01,20');
INSERT INTO `fa_data_index` VALUES ('479', '1', '1688995800', '2023191', '10,11,30,26,14,39,06');
INSERT INTO `fa_data_index` VALUES ('480', '1', '1689082200', '2023192', '15,44,08,25,31,48,03');
INSERT INTO `fa_data_index` VALUES ('481', '1', '1699337520', '2023193', '22,08,23,19,37,49,44');

-- ----------------------------
-- Table structure for fa_data_times
-- ----------------------------
DROP TABLE IF EXISTS `fa_data_times`;
CREATE TABLE `fa_data_times` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL COMMENT '彩种类型',
  `actionNo` varchar(100) NOT NULL COMMENT '期数',
  `lhcTime` int(11) NOT NULL COMMENT '开奖时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='开奖时间';

-- ----------------------------
-- Records of fa_data_times
-- ----------------------------
INSERT INTO `fa_data_times` VALUES ('271', '1', '2023141', '1684675800');
INSERT INTO `fa_data_times` VALUES ('272', '1', '2023142', '1684762200');
INSERT INTO `fa_data_times` VALUES ('273', '1', '2023143', '1684848600');
INSERT INTO `fa_data_times` VALUES ('274', '1', '2023144', '1684935000');
INSERT INTO `fa_data_times` VALUES ('275', '1', '2023145', '1685021400');
INSERT INTO `fa_data_times` VALUES ('276', '1', '2023146', '1685107800');
INSERT INTO `fa_data_times` VALUES ('277', '1', '2023147', '1685194200');
INSERT INTO `fa_data_times` VALUES ('278', '1', '2023148', '1685280600');
INSERT INTO `fa_data_times` VALUES ('279', '1', '2023149', '1685367000');
INSERT INTO `fa_data_times` VALUES ('280', '1', '2023150', '1685453400');
INSERT INTO `fa_data_times` VALUES ('281', '1', '2023151', '1685539800');
INSERT INTO `fa_data_times` VALUES ('282', '1', '2023152', '1685626200');
INSERT INTO `fa_data_times` VALUES ('283', '1', '2023153', '1685712600');
INSERT INTO `fa_data_times` VALUES ('284', '1', '2023154', '1685799000');
INSERT INTO `fa_data_times` VALUES ('285', '1', '2023155', '1685885400');
INSERT INTO `fa_data_times` VALUES ('286', '1', '2023156', '1685971800');
INSERT INTO `fa_data_times` VALUES ('287', '1', '2023157', '1686058200');
INSERT INTO `fa_data_times` VALUES ('288', '1', '2023158', '1686144600');
INSERT INTO `fa_data_times` VALUES ('289', '1', '2023159', '1686231000');
INSERT INTO `fa_data_times` VALUES ('290', '1', '2023160', '1686317400');
INSERT INTO `fa_data_times` VALUES ('291', '1', '2023161', '1686403800');
INSERT INTO `fa_data_times` VALUES ('292', '1', '2023162', '1686490200');
INSERT INTO `fa_data_times` VALUES ('293', '1', '2023163', '1686576600');
INSERT INTO `fa_data_times` VALUES ('294', '1', '2023164', '1686663000');
INSERT INTO `fa_data_times` VALUES ('295', '1', '2023165', '1686749400');
INSERT INTO `fa_data_times` VALUES ('296', '1', '2023166', '1686835800');
INSERT INTO `fa_data_times` VALUES ('297', '1', '2023167', '1686922200');
INSERT INTO `fa_data_times` VALUES ('298', '1', '2023168', '1687008600');
INSERT INTO `fa_data_times` VALUES ('299', '1', '2023169', '1687095000');
INSERT INTO `fa_data_times` VALUES ('300', '1', '2023170', '1687181400');
INSERT INTO `fa_data_times` VALUES ('301', '1', '2023171', '1687267800');
INSERT INTO `fa_data_times` VALUES ('302', '1', '2023172', '1687354200');
INSERT INTO `fa_data_times` VALUES ('303', '1', '2023173', '1687440600');
INSERT INTO `fa_data_times` VALUES ('304', '1', '2023174', '1687527000');
INSERT INTO `fa_data_times` VALUES ('306', '1', '2023175', '1687613400');
INSERT INTO `fa_data_times` VALUES ('307', '1', '2023176', '1687699800');
INSERT INTO `fa_data_times` VALUES ('308', '1', '2023177', '1687786200');
INSERT INTO `fa_data_times` VALUES ('309', '1', '2023178', '1687872600');
INSERT INTO `fa_data_times` VALUES ('310', '1', '2023179', '1687959000');
INSERT INTO `fa_data_times` VALUES ('311', '1', '2023180', '1688045400');
INSERT INTO `fa_data_times` VALUES ('313', '1', '2023182', '1688218200');
INSERT INTO `fa_data_times` VALUES ('314', '1', '2023183', '1688304600');
INSERT INTO `fa_data_times` VALUES ('315', '1', '2023181', '1688131800');
INSERT INTO `fa_data_times` VALUES ('317', '1', '2023184', '1688391000');
INSERT INTO `fa_data_times` VALUES ('318', '1', '2023185', '1688477400');
INSERT INTO `fa_data_times` VALUES ('319', '1', '2023186', '1688563800');
INSERT INTO `fa_data_times` VALUES ('320', '1', '2023187', '1688650200');
INSERT INTO `fa_data_times` VALUES ('321', '1', '2023188', '1688736600');
INSERT INTO `fa_data_times` VALUES ('322', '1', '2023189', '1688823000');
INSERT INTO `fa_data_times` VALUES ('323', '1', '2023190', '1688909400');
INSERT INTO `fa_data_times` VALUES ('324', '1', '2023191', '1688995800');
INSERT INTO `fa_data_times` VALUES ('325', '1', '2023192', '1689082200');
INSERT INTO `fa_data_times` VALUES ('326', '1', '2023193', '1689168600');
INSERT INTO `fa_data_times` VALUES ('327', '1', '2023194', '1689255000');
INSERT INTO `fa_data_times` VALUES ('328', '1', '2023195', '1689341400');
INSERT INTO `fa_data_times` VALUES ('329', '1', '2023196', '1689427800');
INSERT INTO `fa_data_times` VALUES ('330', '1', '2023197', '1689514200');
INSERT INTO `fa_data_times` VALUES ('331', '1', '2023198', '1689600600');
INSERT INTO `fa_data_times` VALUES ('332', '1', '4', '1699337160');

-- ----------------------------
-- Table structure for fa_type_index
-- ----------------------------
DROP TABLE IF EXISTS `fa_type_index`;
CREATE TABLE `fa_type_index` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) NOT NULL COMMENT '彩种名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='彩种类型';

-- ----------------------------
-- Records of fa_type_index
-- ----------------------------
INSERT INTO `fa_type_index` VALUES ('1', '香港六合彩');
