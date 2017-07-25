/*
Navicat MySQL Data Transfer

Source Server         : Produccion Release
Source Server Version : 50619
Source Host           : midas-db2.im.priv:3306
Source Database       : midasone

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2017-07-18 14:59:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `caBEUserPermissionGroup`
-- ----------------------------
DROP TABLE IF EXISTS `caBEUserPermissionGroup`;
CREATE TABLE `caBEUserPermissionGroup` (
  `caBEUserPermissionGroup_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`caBEUserPermissionGroup_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of caBEUserPermissionGroup
-- ----------------------------
INSERT INTO `caBEUserPermissionGroup` VALUES ('1', 'Menu');
INSERT INTO `caBEUserPermissionGroup` VALUES ('2', 'Customer: Quick Access');
INSERT INTO `caBEUserPermissionGroup` VALUES ('3', 'Customer: Information');
INSERT INTO `caBEUserPermissionGroup` VALUES ('4', 'Global Permissions');
INSERT INTO `caBEUserPermissionGroup` VALUES ('5', 'Transaction');
INSERT INTO `caBEUserPermissionGroup` VALUES ('9', 'Board: Pending Bank Transactions');
INSERT INTO `caBEUserPermissionGroup` VALUES ('10', 'Board: Pending Deposits');
INSERT INTO `caBEUserPermissionGroup` VALUES ('11', 'Board: Pending Pre-Approved');
INSERT INTO `caBEUserPermissionGroup` VALUES ('12', 'Board: Pending Payouts');
INSERT INTO `caBEUserPermissionGroup` VALUES ('13', 'Board: Cancelled Payouts');
INSERT INTO `caBEUserPermissionGroup` VALUES ('14', 'Board: Pending Transfers');
INSERT INTO `caBEUserPermissionGroup` VALUES ('15', 'Board: Declined Attempts');
INSERT INTO `caBEUserPermissionGroup` VALUES ('16', 'Board: Pending FreePlays');
INSERT INTO `caBEUserPermissionGroup` VALUES ('17', 'Board: Pending EPOS Deposits');
INSERT INTO `caBEUserPermissionGroup` VALUES ('18', 'Board: Pending EPOS Payouts');
INSERT INTO `caBEUserPermissionGroup` VALUES ('19', 'Board: Customer Requests');
INSERT INTO `caBEUserPermissionGroup` VALUES ('20', 'Report: Search By Journal');
INSERT INTO `caBEUserPermissionGroup` VALUES ('21', 'Report: Customer Search');
INSERT INTO `caBEUserPermissionGroup` VALUES ('22', 'Report: Volume P2P');
INSERT INTO `caBEUserPermissionGroup` VALUES ('23', 'Report: P2P Names Trace');
INSERT INTO `caBEUserPermissionGroup` VALUES ('24', 'Report: Advanced Search');
INSERT INTO `caBEUserPermissionGroup` VALUES ('25', 'Report: Credit Cards');
INSERT INTO `caBEUserPermissionGroup` VALUES ('26', 'Report: P2P Search Names');
INSERT INTO `caBEUserPermissionGroup` VALUES ('27', 'Report: Freeplay');
INSERT INTO `caBEUserPermissionGroup` VALUES ('28', 'Report: New Sign Up');
INSERT INTO `caBEUserPermissionGroup` VALUES ('29', 'Report: Search By ProcessorTransactionId');
INSERT INTO `caBEUserPermissionGroup` VALUES ('30', 'Report: P2P Payout');
INSERT INTO `caBEUserPermissionGroup` VALUES ('31', 'Report: Transfers Search');
INSERT INTO `caBEUserPermissionGroup` VALUES ('32', 'Report: Epos Bank Transfer Search');
INSERT INTO `caBEUserPermissionGroup` VALUES ('33', 'Report: Epos Search');
INSERT INTO `caBEUserPermissionGroup` VALUES ('34', 'Report: Fraud Detection');
INSERT INTO `caBEUserPermissionGroup` VALUES ('35', 'Report: Chargeback Report');
INSERT INTO `caBEUserPermissionGroup` VALUES ('36', 'Report: Payment Method Search');
INSERT INTO `caBEUserPermissionGroup` VALUES ('37', 'Report: Refund Report');
INSERT INTO `caBEUserPermissionGroup` VALUES ('38', 'Report: Volume CC');
INSERT INTO `caBEUserPermissionGroup` VALUES ('39', 'Report: Processor Filter');
INSERT INTO `caBEUserPermissionGroup` VALUES ('40', 'Menu: Terminal');
INSERT INTO `caBEUserPermissionGroup` VALUES ('41', 'Menu: Terminal Deposit');
INSERT INTO `caBEUserPermissionGroup` VALUES ('42', 'Menu: Terminal Payouts');
INSERT INTO `caBEUserPermissionGroup` VALUES ('43', 'Menu: Terminal Miscellaneus');
INSERT INTO `caBEUserPermissionGroup` VALUES ('44', 'Menu: Terminal Other');
INSERT INTO `caBEUserPermissionGroup` VALUES ('50', 'Menu: Deferred');
INSERT INTO `caBEUserPermissionGroup` VALUES ('51', 'Menu: Deferred Deposit');
INSERT INTO `caBEUserPermissionGroup` VALUES ('52', 'Menu: Deferred Payouts');
INSERT INTO `caBEUserPermissionGroup` VALUES ('53', 'Menu: Deferred Miscellaneous');
INSERT INTO `caBEUserPermissionGroup` VALUES ('54', 'Menu: Deferred Other');
INSERT INTO `caBEUserPermissionGroup` VALUES ('55', 'Methods: POS Cash');
INSERT INTO `caBEUserPermissionGroup` VALUES ('56', 'Methods: Dinero Electrónico');
INSERT INTO `caBEUserPermissionGroup` VALUES ('57', 'Methods: Lottery Funds');
INSERT INTO `caBEUserPermissionGroup` VALUES ('58', 'Methods: iDebit');
INSERT INTO `caBEUserPermissionGroup` VALUES ('59', 'Methods: InstaDebit');
INSERT INTO `caBEUserPermissionGroup` VALUES ('60', 'Methods: Credit Card');
INSERT INTO `caBEUserPermissionGroup` VALUES ('61', 'Methods: Pay2Card');
INSERT INTO `caBEUserPermissionGroup` VALUES ('62', 'Methods: WU/MG');
INSERT INTO `caBEUserPermissionGroup` VALUES ('63', 'Methods: Bank Wire');
INSERT INTO `caBEUserPermissionGroup` VALUES ('64', 'Methods: GENCK');
INSERT INTO `caBEUserPermissionGroup` VALUES ('65', 'Methods: Neteller');
INSERT INTO `caBEUserPermissionGroup` VALUES ('66', 'Methods: Skrill');
INSERT INTO `caBEUserPermissionGroup` VALUES ('67', 'Methods: EcoPayz');
INSERT INTO `caBEUserPermissionGroup` VALUES ('68', 'Methods: BitCoin');
INSERT INTO `caBEUserPermissionGroup` VALUES ('69', 'Methods: TBL');
INSERT INTO `caBEUserPermissionGroup` VALUES ('70', 'Methods: Player2Player');
INSERT INTO `caBEUserPermissionGroup` VALUES ('71', 'Methods: Freeplays');
INSERT INTO `caBEUserPermissionGroup` VALUES ('72', 'Methods: BetPoints');
INSERT INTO `caBEUserPermissionGroup` VALUES ('73', 'Methods: Debit Cards');
INSERT INTO `caBEUserPermissionGroup` VALUES ('74', 'Methods: Player2Agent');
INSERT INTO `caBEUserPermissionGroup` VALUES ('75', 'Methods: Player2Player Between Companies');
INSERT INTO `caBEUserPermissionGroup` VALUES ('76', 'Methods: Cash');
INSERT INTO `caBEUserPermissionGroup` VALUES ('77', 'Methods: Bank Transfer');
INSERT INTO `caBEUserPermissionGroup` VALUES ('78', 'Methods: Miscellaneous');
INSERT INTO `caBEUserPermissionGroup` VALUES ('79', 'Methods: AstroPay');
INSERT INTO `caBEUserPermissionGroup` VALUES ('80', 'Methods: SafetyPay');
INSERT INTO `caBEUserPermissionGroup` VALUES ('90', 'User: Management');
INSERT INTO `caBEUserPermissionGroup` VALUES ('91', 'User: Permission Management');
INSERT INTO `caBEUserPermissionGroup` VALUES ('92', 'User: Role Management');
INSERT INTO `caBEUserPermissionGroup` VALUES ('93', 'User: IP Access Management');
INSERT INTO `caBEUserPermissionGroup` VALUES ('94', 'User: Active Sessions');
INSERT INTO `caBEUserPermissionGroup` VALUES ('100', 'Batches');
INSERT INTO `caBEUserPermissionGroup` VALUES ('101', 'Batches: SolidPay');
INSERT INTO `caBEUserPermissionGroup` VALUES ('102', 'Batches: TBL');
INSERT INTO `caBEUserPermissionGroup` VALUES ('103', 'Batches: WesternUnion');
INSERT INTO `caBEUserPermissionGroup` VALUES ('104', 'Batches: MoneyGram');
INSERT INTO `caBEUserPermissionGroup` VALUES ('105', 'Batches: DebitCard');
INSERT INTO `caBEUserPermissionGroup` VALUES ('106', 'Batches: Pay2Card');
INSERT INTO `caBEUserPermissionGroup` VALUES ('107', 'Batches: Bank Wire');
INSERT INTO `caBEUserPermissionGroup` VALUES ('108', 'Batches: Ria');
INSERT INTO `caBEUserPermissionGroup` VALUES ('109', 'Batches: CK3');
INSERT INTO `caBEUserPermissionGroup` VALUES ('120', 'Fraud: Customer Accounts Manager');
INSERT INTO `caBEUserPermissionGroup` VALUES ('121', 'Fraud: Prepaid Card BIN\'s');
INSERT INTO `caBEUserPermissionGroup` VALUES ('122', 'Fraud: Restriction Management');
INSERT INTO `caBEUserPermissionGroup` VALUES ('123', 'Fraud: Restriction Management Filters');
INSERT INTO `caBEUserPermissionGroup` VALUES ('140', 'EPOS Location: Management');
INSERT INTO `caBEUserPermissionGroup` VALUES ('150', 'Banks: Management');
INSERT INTO `caBEUserPermissionGroup` VALUES ('160', 'SetUp');
INSERT INTO `caBEUserPermissionGroup` VALUES ('161', 'SetUp: Processor Display');
INSERT INTO `caBEUserPermissionGroup` VALUES ('170', 'P2P: Board Pending');
INSERT INTO `caBEUserPermissionGroup` VALUES ('171', 'P2P: Board Processing');
INSERT INTO `caBEUserPermissionGroup` VALUES ('172', 'P2P: Report Search');
INSERT INTO `caBEUserPermissionGroup` VALUES ('173', 'P2P: New Transaction');
INSERT INTO `caBEUserPermissionGroup` VALUES ('174', 'P2P: Available Names');
INSERT INTO `caBEUserPermissionGroup` VALUES ('175', 'P2P: Search Totals');
