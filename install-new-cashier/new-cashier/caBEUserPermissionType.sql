/*
Navicat MySQL Data Transfer

Source Server         : Produccion Release
Source Server Version : 50619
Source Host           : midas-db2.im.priv:3306
Source Database       : midasone

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-07-18 15:00:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `caBEUserPermissionType`
-- ----------------------------
DROP TABLE IF EXISTS `caBEUserPermissionType`;
CREATE TABLE `caBEUserPermissionType` (
  `caBEUserPermissionType_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`caBEUserPermissionType_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of caBEUserPermissionType
-- ----------------------------
INSERT INTO `caBEUserPermissionType` VALUES ('1', 'Data');
INSERT INTO `caBEUserPermissionType` VALUES ('2', 'Page');
INSERT INTO `caBEUserPermissionType` VALUES ('3', 'Button');
INSERT INTO `caBEUserPermissionType` VALUES ('4', 'CheckBox');
INSERT INTO `caBEUserPermissionType` VALUES ('5', 'ComboBox');
INSERT INTO `caBEUserPermissionType` VALUES ('6', 'TextBox');
INSERT INTO `caBEUserPermissionType` VALUES ('7', 'Link (Open)');
INSERT INTO `caBEUserPermissionType` VALUES ('8', 'Option');
