-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: midas-db1.im.priv    Database: midasone
-- ------------------------------------------------------
-- Server version	5.6.29-76.2-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Records of caProcessorClass
-- ----------------------------
INSERT INTO `caProcessorClass` VALUES ('1', 'RR_CreditCards', 'Credit Card', '1');
INSERT INTO `caProcessorClass` VALUES ('2', 'RR_Checks', 'Checks', '99');
INSERT INTO `caProcessorClass` VALUES ('3', 'RR_Cash', 'Cash', '99');
INSERT INTO `caProcessorClass` VALUES ('4', 'RR_Others', 'Other Methods', '99');
INSERT INTO `caProcessorClass` VALUES ('5', 'RR_eWallet', 'Popular e-Wallet', '5');
INSERT INTO `caProcessorClass` VALUES ('6', 'RR_Miscellaneous', 'Miscellaneous', '99');
INSERT INTO `caProcessorClass` VALUES ('9', 'RR_Transfers', 'Funds Transfer', '99');
INSERT INTO `caProcessorClass` VALUES ('13', 'RR_MoneyTransfer', 'Money Transfer', '99');
INSERT INTO `caProcessorClass` VALUES ('14', 'RR_PrepaidCards', 'Prepaid Cards', '4');
INSERT INTO `caProcessorClass` VALUES ('16', 'RR_Withdraw', 'Withdrawals', '99');
INSERT INTO `caProcessorClass` VALUES ('23', 'RR_P2P', 'Person 2 Person', '6');
INSERT INTO `caProcessorClass` VALUES ('24', 'RR_Bank', 'Bank Deposits', '2');
INSERT INTO `caProcessorClass` VALUES ('25', 'RR_LocalShop', 'Local Shop', '5');
INSERT INTO `caProcessorClass` VALUES ('26', 'RR_Network', 'Payment Network', '3');
INSERT INTO `caProcessorClass` VALUES ('27', 'RR_DebitCards', 'Debit Cards', '99');

-- ----------------------------
-- Records of caProcessorStep_Header
-- ----------------------------
INSERT INTO `caProcessorStep_Header` VALUES ('1', 'Default header', 'default set of steps');
INSERT INTO `caProcessorStep_Header` VALUES ('2', 'CCScreen', 'CCScreen');
INSERT INTO `caProcessorStep_Header` VALUES ('3', 'CreditCardProcessing', 'Credit Card Processing');
INSERT INTO `caProcessorStep_Header` VALUES ('5', 'Prepaid', 'Prepaid - CrisCards');
INSERT INTO `caProcessorStep_Header` VALUES ('6', 'Text Processors', 'Text Processors');
INSERT INTO `caProcessorStep_Header` VALUES ('7', 'ProcessorsRedirect', 'Processors with redirection');
INSERT INTO `caProcessorStep_Header` VALUES ('8', 'ProcessorsRedirect', 'Processors with optional redirection');
INSERT INTO `caProcessorStep_Header` VALUES ('9', 'Default header CC', 'default set of steps for CC');
INSERT INTO `caProcessorStep_Header` VALUES ('10', 'DineroMail', 'DineroMail');
INSERT INTO `caProcessorStep_Header` VALUES ('11', 'P2PScreen', 'P2PScreen');
INSERT INTO `caProcessorStep_Header` VALUES ('12', 'P2PProcessing', 'P2P Processing');
INSERT INTO `caProcessorStep_Header` VALUES ('13', 'CC_PPCC', 'CC_PPCC');
INSERT INTO `caProcessorStep_Header` VALUES ('14', 'CCProcessorsRedirect', 'CC Processors with Redirect');
INSERT INTO `caProcessorStep_Header` VALUES ('15', 'Skrill 1Tap', 'Skrill 1Tap');
INSERT INTO `caProcessorStep_Header` VALUES ('16', 'BitCoin', 'BitCoin');
INSERT INTO `caProcessorStep_Header` VALUES ('20', 'Default header', 'Default set of steps (AskInfo)');
INSERT INTO `caProcessorStep_Header` VALUES ('21', 'Default Screen', 'Default set of steps (AskInfo+Cascading)');
INSERT INTO `caProcessorStep_Header` VALUES ('22', 'Default ScreenChild', 'Default set of steps (AskInfo+Cascading)');
INSERT INTO `caProcessorStep_Header` VALUES ('23', 'ProcessorRedirect', 'Processors with optional redirection (AskInfo)');

--
-- Dumping data for table `caProcessorSettingLabelType`
--


INSERT INTO `caProcessorSettingLabelType` (`caProcessorSettingLabelType_Id`, `Name`)
VALUES
 (1,'Username'),
 (2,'Password'),
 (3,'Channel'),
 (4,'Key');

-- ----------------------------
-- Records of caCurrency
-- ----------------------------
INSERT INTO `caCurrency` VALUES ('1', 'United States Dollar', 'USD', '840', '$', '1.000000000000000000000000000000', '2011-06-28 00:00:00', '1', 'DGS');
INSERT INTO `caCurrency` VALUES ('2', 'Canadian Dollar', 'CAD', '124', 'C', '1.370000000000000000000000000000', '2016-02-19 06:06:02', '2', 'DGS');
INSERT INTO `caCurrency` VALUES ('3', 'Euro', 'EUR', '978', '€', '0.900000000000000000000000000000', '2016-02-17 05:08:02', '3', 'DGS');
INSERT INTO `caCurrency` VALUES ('4', 'Great British Pounds', 'GBP', '826', '£', '0.700000000000000000000000000000', '2016-02-18 06:38:02', '4', 'DGS');
INSERT INTO `caCurrency` VALUES ('5', 'MEXICAN PESO', 'MXN', '484', '$', '18.000000000000000000000000000000', '2016-02-12 05:26:02', '5', 'DGS');
INSERT INTO `caCurrency` VALUES ('6', 'Pesos Argentinos', 'ARS', '32', '$', '15.110000000000000000000000000000', '2016-02-18 06:22:02', '6', 'DGS');
INSERT INTO `caCurrency` VALUES ('7', 'Danish Krone', 'DKK', '208', 'D', '6.710000000000000000000000000000', '2016-02-19 06:16:02', '7', 'DGS');
INSERT INTO `caCurrency` VALUES ('8', 'Polish Zloty', 'PLN', '985', 'z', '3.950000000000000000000000000000', '2016-02-18 06:38:02', '8', 'DGS');
INSERT INTO `caCurrency` VALUES ('9', 'China Yuan Renminbi', 'CNY', '156', 'C', '6.520000000000000000000000000000', '2016-02-19 06:14:02', '9', 'DGS');
INSERT INTO `caCurrency` VALUES ('11', 'NICARAGUA CORDOBA', 'COR', '558', '$', '22.930000000000000000000000000000', '2011-06-28 00:00:00', '10', 'DGS');
INSERT INTO `caCurrency` VALUES ('14', 'NICARAGUA  CORDBA', 'NIO', '558', '$', '23.210000000000000000000000000000', '2015-08-31 15:50:10', '11', 'DGS');
INSERT INTO `caCurrency` VALUES ('18', 'Dominican Rep. Peso', 'DOP', '214', '$', '46.000000000000000000000000000000', '2015-10-02 06:49:02', '12', 'DGS');
INSERT INTO `caCurrency` VALUES ('19', 'Nuevos Soles', 'PEN', '604', 'S', '3.500000000000000000000000000000', '2016-02-02 06:11:03', '13', 'DGS');
INSERT INTO `caCurrency` VALUES ('21', 'Bolivares Fuertes', 'VEF', '937', 'B', '1000.000000000000000000000000000000', '2016-02-01 06:02:02', '14', 'DGS');
INSERT INTO `caCurrency` VALUES ('22', 'Chile Peso', 'CLP', '152', '$', '700.790000000000000000000000000000', '2016-02-19 06:14:02', '15', 'DGS');
INSERT INTO `caCurrency` VALUES ('24', 'Hondura Lempira', 'HNL', '340', 'L', '22.000000000000000000000000000000', '2015-09-03 05:54:02', '16', 'DGS');
INSERT INTO `caCurrency` VALUES ('25', 'Real Brasilero', 'BRL', '76', 'R', '4.000000000000000000000000000000', '2016-02-19 06:06:02', '17', 'DGS');
INSERT INTO `caCurrency` VALUES ('27', 'Peso Uruguayo', 'UYU', '858', '$', '24.500000000000000000000000000000', '2015-08-31 15:50:04', '18', 'DGS');
INSERT INTO `caCurrency` VALUES ('30', 'Rwandan franc', 'RWF', '', '', '690.000000000000000000000000000000', '2015-08-31 15:50:10', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('31', 'Philippine peso', 'PHP', '', '', '47.000000000000000000000000000000', '2016-01-04 05:48:01', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('32', 'Guatemalan quetzal', 'GTQ', '', '', '7.700000000000000000000000000000', '2015-08-31 15:50:11', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('33', 'Japanese yen', 'JPY', '', '', '113.840000000000000000000000000000', '2016-02-19 06:18:02', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('34', 'Colombian peso', 'COL', '', '$', '2053.180000000000000000000000000000', '2014-02-28 05:02:23', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('35', 'Paraguayan guaraní', 'PYG', '', '', '5686.660000000000000000000000000000', '2016-02-19 06:18:02', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('36', 'Swedish krona', 'SEK', '', '', '8.480000000000000000000000000000', '2016-02-19 06:18:02', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('37', 'Norwegian krone', 'NOK', '', '', '8.560000000000000000000000000000', '2016-02-19 06:18:02', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('38', 'Panama Dollar', 'BAB', '', '', '1.000000000000000000000000000000', '2012-03-14 13:20:21', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('40', 'BOB', 'BOB', '', '?', '6.710000000000000000000000000000', '2016-02-19 06:04:02', '999', 'DGS');
INSERT INTO `caCurrency` VALUES ('41', 'JMD', 'JMD', '', '?', '120.000000000000000000000000000000', '2016-02-15 05:08:02', '999', 'DGS');
INSERT INTO `caCurrency` VALUES ('42', 'AUD', 'AUD', '', '?', '1.400000000000000000000000000000', '2016-02-16 05:22:02', '999', 'DGS');
INSERT INTO `caCurrency` VALUES ('43', 'Colombian peso', 'COP', '', '$', '3349.900000000000000000000000000000', '2016-02-19 06:16:02', '99', 'DGS');
INSERT INTO `caCurrency` VALUES ('51', 'No Usar', 'NNN', null, '?', '5.796900000000000000000000000000', '2013-05-06 11:00:07', '999', 'DGS');
INSERT INTO `caCurrency` VALUES ('100', 'Bitcoin', 'BTC', '', 'B', '0.001524134672539700000000000000', '2016-10-25 09:14:36', '100', 'BTC');
INSERT INTO `caCurrency` VALUES ('101', 'VCOIN', 'VCO', '', '?', '100.000000000000000000000000000000', '2015-08-31 15:50:04', '999', 'DGS');

-- ----------------------------
-- Records of caSoftwareProvider
-- ----------------------------
INSERT INTO `caSoftwareProvider` VALUES ('19', 'PARLAY', '0', '2', '1', '1');
INSERT INTO `caSoftwareProvider` VALUES ('20', 'PARLAY', '0', '30', '1', '0');
INSERT INTO `caSoftwareProvider` VALUES ('24', 'DGS', '1', '30', '1', '0');
INSERT INTO `caSoftwareProvider` VALUES ('35', 'IGSOFT', '0', '2', '1', '0');

--
-- Dumping data for table `caCompany`
--
-- ----------------------------
-- Records of caCompany
-- ----------------------------

INSERT INTO `caCompany` VALUES ('-1', '24', 'GLOBAL', '0000-00-00 00:00:00', '0', 'admin@midascashier.com', 'http://midascashier.com', null, '1-816-275-0970', '1-800-270-0971', null, null, null, null);
INSERT INTO `caCompany` VALUES ('1', '24', 'DEV Company', '0000-00-00 00:00:00', '0', 'admin@midascashier.com', 'http://midascashier.com', null, '1-800-270-0971', '1-800-270-0971', null, '9', null, null);
INSERT INTO `caCompany` VALUES ('2', '24', 'BookMaker', '0000-00-00 00:00:00', '1', 'cs@bmaker.ag', 'http://www.bmaker.ag', null, '1-800-270-0971', '1-800-270-0971', '1-888-2870-5265', '9', 'Lottery', null);
INSERT INTO `caCompany` VALUES ('3', '24', 'BetDSI', '0000-00-00 00:00:00', '1', 'cos@betdsi.com', 'http://www.betdsi.com/', null, '1-800-270-0971', '1-800-270-0971', null, '9', 'BetDsi', null);
INSERT INTO `caCompany` VALUES ('4', '24', 'ACR', '0000-00-00 00:00:00', '0', 'support@americascardroom.com', 'http://www.americascardroom.com', null, null, '', null, null, null, null);
INSERT INTO `caCompany` VALUES ('6', '35', 'Poker', '0000-00-00 00:00:00', '0', 'test@test.com', 'test@test.com', '', '1-800-270-0971', '1-800-270-0971', '', '9', 'BookMaker', null);
INSERT INTO `caCompany` VALUES ('9', '24', 'TestingOnly', '0000-00-00 00:00:00', '1', 'csd1@betcris.com', 'http://www.betcris.com', null, '1-800-000-000', '', null, '9', 'BookMaker', null);
INSERT INTO `caCompany` VALUES ('13', '24', 'BetCRIS', '0000-00-00 00:00:00', '1', 'csd@betcris.com', 'http://www.betcris.com', null, '1-800-270-0971', '1-800-270-0971', null, '9', 'BookMaker', null);
INSERT INTO `caCompany` VALUES ('50', '35', 'Poker', null, '1', null, null, null, null, '', null, null, 'Poker', null);
INSERT INTO `caCompany` VALUES ('70', '19', 'Amigo Bingo', '2015-07-02 12:44:48', '1', 'test@test.com', 'http://midascashier.com', '', '1-800-270-0971', '1-800-800-800', '', null, 'Bingo', null);
INSERT INTO `caCompany` VALUES ('71', '19', 'New Bingo Billy', '2015-07-02 12:44:48', '1', 'test@test.com', 'http://midascashier.com', '', '1-800-270-0971', '1-800-800-800', '', null, 'Bingo', null);

--
-- Dumping data for table `caBEUserPermissionType`
--

INSERT INTO `caBEUserPermissionType` (`caBEUserPermissionType_Id`, `Name`)
VALUES
 (1,'Data'),
 (2,'Page'),
 (3,'Button'),
 (4,'CheckBox'),
 (5,'ComboBox'),
 (6,'TextBox'),
 (7,'Link (Open)'),
 (8,'Option');

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

-- ------------------------------
-- Records of caBEUserPermission
-- ------------------------------
INSERT INTO `caBEUserPermission` VALUES ('1', '1', '8', 'MAIN_NAV_CUSTOMERS', 'Navegación principal de la sección de Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('2', '1', '8', 'MAIN_NAV_BOARD', 'Navegación principal para Revisar los distintos Board de Transacciones', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('3', '1', '8', 'MAIN_NAV_REPORTS', 'Navegación principal para la Consulta de Reporte', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('4', '1', '8', 'MAIN_NAV_FRAUD', 'Navegación principal de Fraude y Restricciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('5', '1', '8', 'MAIN_NAV_USERS', 'Navegación principal de Seguridad de Usuarios y Permisos', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('6', '1', '8', 'MAIN_NAV_BATCHES', 'Navegación principal de Batches', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('7', '90', '2', 'USER_MANAGEMENT_SEARCH', 'Administración de Usuarios', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('8', '90', '2', 'USER_MANAGEMENT_ADD', 'Permite Agregar Usuario', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('9', '90', '2', 'USER_MANAGEMENT_EDIT', 'Permite Editar Usuario', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('10', '90', '3', 'USER_MANAGEMENT_EDIT_SAVE', 'Permite Guarda los Cambios Realizados en el Usuario', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('11', '90', '3', 'USER_MANAGEMENT_EDIT_RESET_PASSWORD', 'Permite Modificar la Contraseña', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('12', '91', '2', 'USER_ROLE_MANAGEMENT_SEARCH', 'User role management page. Change role permissions', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('13', '91', '3', 'USER_ROLE_MANAGEMENT_SAVE', 'Permite Guarda los Cambios Realizados en el Rol', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('14', '92', '2', 'USER_PERMISSION_MANAGEMENT_SEARCH', 'User permission Management Page', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('15', '92', '3', 'USER_PERMISSION_MANAGEMENT_AUTHORIZE', 'Option to authorize and remove extra permissions', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('158', '120', '2', 'FRAUD_CUSTOMER_ACCOUNT_MANAGER_SEARCH', 'Opción para buscar cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('159', '122', '2', 'FRAUD_RESTRICTION_MANAGEMENT', 'Opción para buscar restricciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('160', '122', '3', 'FRAUD_RESTRICTION_MANAGEMENT_ADD', 'Opción para agregar restricciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('161', '122', '3', 'FRAUD_RESTRICTION_MANAGEMENT_DELETE', 'Opción para borrar restricciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('162', '121', '2', 'FRAUD_PREPAIDCARD_BIN_ADD', 'Opción para agregar un Bin', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('163', '121', '3', 'FRAUD_PREPAIDCARD_BIN_REMOVE', 'Opción para remover BIN', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('164', '24', '2', 'REPORTS_ADVANCED_SEARCH', 'Opción para realizar consulta de Transacciones por Multiples Filtros', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('165', '25', '2', 'REPORTS_CREDITCARD_SEARCH', 'Opción para buscar tarjeta por Usuario, Dígitos y Descriptor', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('166', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_ALL_DIGITS_CC', 'Permiso para Ver TODOS los Dígitos de laTarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('167', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_FIRST_DIGITS_CC', 'Permiso para Ver los primeros 4 dígitos de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('168', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_LAST_DIGITS_CC', 'Permiso para Ver los últimos 4 dígitos de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('169', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_CVV', 'Permiso para Ver el CVV de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('170', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_SSN', 'Permiso para ver Número de Seguro Social (SSN)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('171', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_CUSTOMER_INFORMATION', 'Permiso para Ver la Información del Cliente desde Terminal', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('174', '4', '4', 'GLOBAL_PERMISSIONS_IGNORE_ALL_LIMITS', 'Permiso para IGNORAR todos los límites', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('211', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_PROCESSOR', 'Habilita Filtro: Procesadores', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('212', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_PROCESSOR_CLASS', 'Habilita Filtro: Clase de Procesadores', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('213', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_TRANSACTION_STATUS', 'Habilita Filtro: Estado de las Transacciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('214', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_TRANSACTION_TYPE', 'Habilita Filtro: Tipo de Transacciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('215', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_COMPANY', 'Habilita Filtro: Compañías', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('216', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_JOURNAL_ID', 'Habilita Filtro: Journal ID', '0', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('219', '24', '1', 'REPORTS_ADVANCED_SEARCH_RESULTS_LAYOUT_PROCESSORS', 'Resultado de Consulta para Processors', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('220', '24', '6', 'REPORTS_ADVANCED_SEARCH_FILTER_PROC_TRANS_ID', 'Habilita Filtro:  ProcTransID', '0', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('221', '24', '6', 'REPORTS_ADVANCED_SEARCH_FILTER_USERNAME', 'Habilita Filtro: UserName', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('228', '12', '2', 'BOARD_PAYOUTS', 'Board de Transacciones: Retiros', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('229', '121', '3', 'FRAUD_PREPAIDCARD_BIN_ADDS', 'Opcion para agregar BINS', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('231', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_CARD_HOLDER_NAME', 'Permiso para Ver el Nombre en la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('232', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_EXPIRATION_DATE', 'Permiso para Ver la Fecha de Expiración de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('233', '40', '8', 'TERMINAL', 'Menú de Terminales', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('234', '41', '8', 'TERMINAL_DEPOSIT', 'Submenú de Depositos en Terminales', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('235', '41', '2', 'TERMINAL_DEPOSIT_CC', 'Acceso a Depósitos con Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('236', '41', '2', 'TERMINAL_DEPOSIT_P2P', 'Acceso a Depósitos con WU/MG/RIA', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('237', '41', '2', 'TERMINAL_DEPOSIT_EW_TBEW', 'Acceso a Depósitos con TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('238', '43', '8', 'TERMINAL_MISC', 'Submenú de Miscelaneos en Terminales', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('239', '43', '2', 'TERMINAL_MISC_CC', 'Acceso a Miscelaneo de Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('240', '43', '2', 'TERMINAL_MISC_BANKWIRE', 'Acceso a Miscelaneo de BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('241', '43', '2', 'TERMINAL_MISC_GENCK', 'Acceso a Miscelaneo de Genck (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('242', '42', '8', 'TERMINAL_WITHDRAW', 'Submenú de Retiros en Terminales', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('243', '42', '2', 'TERMINAL_WITHDRAW_CC', 'Acceso a Retiros con Pay2Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('244', '42', '2', 'TERMINAL_WITHDRAW_P2P', 'Acceso a Retiros con WU/MG/RIA', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('245', '42', '2', 'TERMINAL_WITHDRAW_BANK_WIRE', 'Acceso a Retiros con BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('246', '42', '2', 'TERMINAL_WITHDRAW_GENCK', 'Acceso a Retiros con Genck (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('247', '42', '2', 'TERMINAL_WITHDRAW_NETELLER_NEW', 'Acceso a Retiros con Neteller', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('248', '42', '2', 'TERMINAL_WITHDRAW_SKRILL_EW', 'Acceso a Retiros con Skrill', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('249', '50', '8', 'DEFERRED', 'Menú de Diferidas', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('250', '51', '2', 'DEFERRED_DEPOSIT', 'Submenú de Depósitos Diferidos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('251', '51', '2', 'DEFERRED_DEPOSIT_CC', 'Acceso a Retiros Diferidos con Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('252', '53', '8', 'DEFERRED_MISC', 'Submenú de Depósitos Miscelaneos Diferidos', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('253', '53', '2', 'DEFERRED_MISC_BANKWIRE', 'Acceso a Miscelaneo Diferido con BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('254', '53', '2', 'DEFERRED_MISC_GENCK', 'Acceso a Miscelaneo Diferido con Genck (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('255', '52', '8', 'DEFERRED_WITHDRAW', 'Submenú de Retiros Diferidos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('256', '52', '2', 'DEFERRED_WITHDRAW_CC', 'Acceso a Retiros Diferidos con Pay2Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('257', '52', '2', 'DEFERRED_WITHDRAW_P2P', 'Acceso a Retiros Diferidos con WU/MG/RIA', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('258', '52', '2', 'DEFERRED_WITHDRAW_BANKWIRE', 'Acceso a Retiros Diferidos con BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('259', '52', '2', 'DEFERRED_WITHDRAW_GENCK', 'Acceso a Retiros Diferidos con Genck (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('260', '52', '2', 'DEFERRED_WITHDRAW_NETELLER', 'Acceso a Retiros Diferidos con Neteller', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('261', '52', '2', 'DEFERRED_WITHDRAW_MONEYBOOKERS', 'Acceso a Retiros Diferidos con Skrill', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('262', '60', '3', 'CC_PROCESS', 'Botón Proccesar Transacción de Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('263', '60', '3', 'CC_REMOVE', 'Boton Remover Tarjeta', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('264', '60', '3', 'CC_ADD', 'Botón Agregar en Tarjeta para Credit Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('265', '60', '3', 'CC_EDIT', 'Boton Editar en CC', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('266', '60', '5', 'CC_MANUAL_PROCESSOR', 'Listado de Procesadores de CC (Procesar Manual)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('267', '62', '3', 'P2P_PROCESS', 'Botón Proccesar Transacción de WU/MG/RIA', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('268', '62', '3', 'P2P_REMOVE', 'Boton Remover en  P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('269', '62', '3', 'P2P_ADD', 'Botón agregar en  P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('270', '62', '3', 'P2P_EDIT', 'Boton Editar en  P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('271', '62', '5', 'P2P_MANUAL_PROCESSOR', 'Listado de Procesadores de WU/MG/RIA  (Procesar Manual)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('272', '69', '3', 'TBL_PROCESS', 'Botón Proccesar Transacción de TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('273', '69', '3', 'TBL_REMOVE', 'Boton Remover en TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('274', '69', '3', 'TBL_ADD', 'Botón para Agregar en TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('275', '69', '3', 'TBL_EDIT', 'Boton Editar en  TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('276', '63', '3', 'BANKWIRE_PROCESS', 'Botón Proccesar Transacción de BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('277', '63', '3', 'BANKWIRE_REMOVE', 'Boton Remover en   BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('278', '63', '3', 'BANKWIRE_ADD', 'Botón agregar en  BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('279', '63', '3', 'BANKWIRE_EDIT', 'Boton Editar en  BankWire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('280', '64', '3', 'GENCK_PROCESS', 'Botón Proccesar Transacción de GenCK (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('281', '64', '3', 'GENCK_REMOVE', 'Botón para Remover en GenCK (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('282', '64', '3', 'GENCK_ADD', 'Botón para agregar en GenCK (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('283', '64', '3', 'GENCK_EDIT', 'Botón para Editar en  GenCK (BankDraft)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('284', '65', '3', 'NETELLER_PROCESS', 'Botón Proccesar Transacción de Neteller', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('285', '65', '3', 'NETELLER_REMOVE', 'Boton Remover en  Neteller', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('286', '65', '3', 'NETELLER_ADD', 'Botón para Agregar Cuenta de Neteller', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('287', '65', '3', 'NETELLER_EDIT', 'Boton Editar en  Neteller', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('288', '66', '3', 'SKRILL_PROCESS', 'Botón Proccesar Transacción de Skrill', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('289', '66', '3', 'SKRILL_REMOVE', 'Boton Remover en Skrill', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('290', '66', '3', 'SKRILL_ADD', 'Botón para Agregar Cuenta de Skrill', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('291', '66', '3', 'SKRILL_EDIT', 'Boton Editar en Skrill', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('293', '4', '4', 'GLOBAL_PERMISSIONS_UPDATE_PAYMETHOD', 'Permite Editar el Método de Pago desde Terminal', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('295', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_CHANGE_TO_APPROVED', 'Permite APROBAR la Transacción desde Journal Search', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('297', '4', '4', 'GLOBAL_PERMISSIONS_EDIT_CARD_NUMBER', 'Permite Editar el Número de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('302', '4', '4', 'GLOBAL_PERMISSIONS_EDIT_CARD_HOLDER_NAME', 'Permite Editar el Nombre de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('303', '4', '4', 'GLOBAL_PERMISSIONS_EDIT_EXPIRATION_DATE', 'Permite Editar la Fecha de Expiración de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('304', '4', '4', 'GLOBAL_PERMISSIONS_EDIT_CVV', 'Permite Editar CVV de la Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('306', '4', '4', 'GLOBAL_PERMISSIONS_REJECT_PAYMETHOD', 'Permite RECHAZAR una transacción desde Terminal', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('307', '53', '2', 'DEFERRED_MISC_CC', 'Acceso a Miscelaneo Diferido con Tarjeta de Crédito', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('308', '4', '1', 'GLOBAL_PERMISSIONS_VIEW_CUSTOMER_PASSWORD', 'Permite Ver la Contraseña del Cliente', '1', '1', '1');
INSERT INTO `caBEUserPermission` VALUES ('313', '20', '2', 'REPORTS_JOURNAL_SEARCH', 'Opción para realizar consulta de Multiples Journal ID/Midas ID', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('314', '21', '2', 'REPORTS_CUSTOMER_SEARCH', 'Opción para realizar consulta de Clientes', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('316', '28', '2', 'REPORTS_NEW_SIGN_UPS_SEARCH', 'Opción para realizar consulta de Cuentas Nuevas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('317', '22', '2', 'REPORTS_P2P_SEARCH', 'Opción para realizar consulta el Volumen de Transacciones de P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('318', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_TRANS_DETAILS', 'Permite ver los Detalles de la Transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('319', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_FUND', 'Permite dar los Fondos de la Transacción a la Cuenta del Cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('320', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_BONUS_APPLY', 'Permite Ver los detalles de los Bonos Aplicados a una Transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('321', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_LIMIT_TRACE', 'Permite ver el Seguimiento de los Límites', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('322', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_CLERKS', 'Habilita Filtro: Clerks', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('323', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_CAPTURE', 'Permite realizar la Captura de una Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('324', '3', '7', 'CUSTOMER_CUSTOMER_RESTRICTION_TRACE', 'Permite ver el Seguimiento la Restricción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('325', '11', '2', 'BOARD_PENDING_PREAPPROVED', 'Board de Transacciones: Pre-Aprobadas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('326', '10', '2', 'BOARD_PENDING_DEPOSITS', 'Board de Transacciones: Depósitos Pendientes', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('327', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_CHANGE_TO_REJECTED', 'Permite RECHAZAR la Transacción desde Journal Search', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('328', '27', '2', 'REPORTS_FREEPLAY_SEARCH', 'Opción para realizar consulta de Freeplay', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('329', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_DOB', 'Editar Fecha de Nacimiento del Cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('330', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_SSN', 'Editar Número de Seguro Social (SSN) del Cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('331', '40', '2', 'TERMINAL_SUB_NAV_REPORT_PROBLEM', 'Permite Reportar la Transacción con Problemas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('332', '40', '2', 'TERMINAL_SUB_NAV_REJECT', 'Permite Rechazar la Transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('333', '40', '2', 'TERMINAL_SUB_NAV_NOTES', 'Permite Ver las Notas de una Transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('335', '4', '4', 'GLOBAL_PERMISSIONS_IGNORE_TIME_CONTROL', 'Permiso para IGNORAR el Tiempo de espera entre Transacciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('336', '26', '2', 'REPORTS_P2P_SEARCH_NAME', 'Opción para realizar consulta de Nombre de P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('337', '23', '2', 'REPORTS_P2P_NAMES_TRACE', 'Opción para realizar consulta de Names Trace de P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('338', '2', '7', 'OPEN_CUSTOMER_ACCOUNT', 'Permite Abrir un Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('339', '2', '7', 'OPEN_TRANSACTION_JOURNAL', 'Permite Abrir una Transacción por Journal ID', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('340', '2', '7', 'OPEN_TRANSACTION_ACUITYTEC', 'Permite Abrir una Transacción por AcuityTec ID', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('341', '3', '2', 'CUSTOMER_ACCOUNT_INFO', 'Permite Ver la Información de la Cuenta del Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('342', '3', '2', 'CUSTOMER_PERSONAL_INFO', 'Permite Ver la Información Personal del Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('343', '3', '2', 'CUSTOMER_LOGIN_ACTIVITY', 'Permite Ver las Últimos IPs accedidas por el Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('344', '3', '2', 'CUSTOMER_AVAILABLE_PROCESSORS', 'Permite Ver los Procesadores que se le Muestran al Cliente Online', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('346', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_ADD_NOTE', 'Permite AGREGAR Notas a una Transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('347', '10', '3', 'EXPORT_PENDING_DEPOSIT', 'Permite Exportar del Board de Pending Deposit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('348', '11', '3', 'EXPORT_PENDING_PREAPPROVED', 'Permite Exportar del Board de Pre-Aprobadas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('349', '12', '3', 'EXPORT_PENDING_PAYOUTS', 'Permite Exportar del Board de Retiros', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('350', '3', '1', 'CUSTOMER_P2P_PENDING_MTCN', 'Permite Ver las Transacciones de P2P con Control Number Pendientes', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('351', '3', '1', 'CUSTOMER_LAST_TRANSACTIONS_ATTEMPTS', 'Permite Ver las Últimas Transacciones o Intentos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('352', '3', '1', 'CUSTOMER_CS_NOTES', 'Permite Ver las Notas de Customer Service (DGS)', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('353', '3', '1', 'CUSTOMER_MARKETING_NOTES', 'Permite Ver las Notas de Marketing (DGS)', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('354', '24', '3', 'REPORTS_ADVANCED_SEARCH_EXPORT', 'Permite Exportar las Transacciones a un Archivo Excel', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('355', '24', '1', 'REPORTS_ADVANCED_SEARCH_RESULTS_LAYOUT_FRAUD\r\n', 'Resultado de Consulta para Fraude', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('356', '24', '6', 'REPORTS_ADVANCED_SEARCH_FILTER_VIP', 'Habilita Filtro: VIP', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('358', '5', '3', 'TRANSACTION_APPLY_BONUS_NO_AVAILABLE', 'Permite APLICAR Bonos a una Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('360', '13', '2', 'BOARD_CANCELLED_PAYOUTS', 'Board de Transacciones: Payouts Cancelados', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('361', '13', '3', 'EXPORT_CANCELLED_PAYOUTS', 'Permite Exportar del Board de Payouts Cancelados', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('362', '5', '3', 'TRANSACTION_LIMIT_TRACE', 'Permite ver el proceso de la transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('363', '3', '2', 'CUSTOMER_ADDRESS_INFO', 'Permite Ver la Información del Domicilio del Cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('364', '44', '8', 'TERMINAL_OTHER', 'Submenú de Otros Métodos en Terminales', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('365', '44', '2', 'TERMINAL_OTHER_PLAYER2PLAYER', 'Acceso a Transaferencias: Player2Player', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('366', '44', '2', 'TERMINAL_OTHER_FREEPLAY', 'Acceso para Dar Freeplay', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('367', '44', '2', 'TERMINAL_OTHER_BETPOINTS', 'Acceso a Canjear BetPoints', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('368', '5', '3', 'TRANSACTION_CHANGE_FEES', 'Permite Cambiar los Fees de la Transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('369', '42', '2', 'TERMINAL_WITHDRAW_CRD3CO', 'Acceso a Retiros con EcoPayz', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('370', '42', '2', 'TERMINAL_WITHDRAW_BTCSCREEN', 'Acceso a Retiros con BitCoin', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('371', '52', '2', 'DEFERRED_WITHDRAW_ECOPAYZ', 'Acceso a Retiros Diferidos con EcoPayz', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('372', '52', '2', 'DEFERRED_WITHDRAW_BITCOIN', 'Acceso a Retiros Diferidos con BitCoin', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('373', '5', '3', 'TRANSACTION_CHANGE_TO_REJECT', 'Permite RECHAZAR la Transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('374', '61', '3', 'PAY2CARD_REMOVE', 'Boton Remover Tarjeta de Pay2Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('375', '61', '3', 'PAY2CARD_PROCESS', 'Botón Proccesar Transacción de Pay2Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('376', '61', '3', 'PAY2CARD_MANUAL_PROCESSOR', 'Listado de Procesadores de Pay2Card (Procesar Manual)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('377', '61', '3', 'PAY2CARD_ADD', 'Botón Agregar en Tarjeta para Pay2Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('378', '61', '3', 'PAY2CARD_EDIT', 'Boton Editar en Tarjeta Pay2Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('379', '71', '4', 'TERMINAL_OTHER_FREEPLAY_IGNORE_RESTRICTION', 'Permite Ignorar Restricciones para Freeplays', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('380', '68', '3', 'BITCOIN_PROCESS', 'Botón Proccesar Transacción de BitCoin', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('381', '68', '3', 'BITCOIN_ADD', 'Botón para Agregar Cuenta de BitCoin', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('382', '68', '3', 'BITCOIN_EDIT', 'Botón para Editar Cuenta BitCoin', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('383', '68', '3', 'BITCOIN_REMOVE', 'Botón para Remover en Cuenta de BitCoin', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('384', '40', '2', 'TERMINAL_TRANSACTION_OPTION_MANUAL_PROCESSORS', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('386', '67', '3', 'ECOPAYZ_PROCESS', 'Botón Proccesar Transacción de EcoPayz', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('387', '67', '3', 'ECOPAYZ_ADD', 'Botón para Agregar Cuenta de EcoPayz', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('388', '67', '3', 'ECOPAYZ_EDIT', 'Botón para Editar Cuenta EcoPayz', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('389', '67', '3', 'ECOPAYZ_REMOVE', 'Botón para Remover en Cuenta de EcoPayz', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('390', '106', '2', 'BATCHES_PAY2CARD', 'Opción para consultar Batches de Pay2Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('391', '101', '2', 'BATCHES_SOLIDPAY', 'Opción para consultar Batches de SolidPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('392', '102', '2', 'BATCHES_TBL', 'Opción para consultar Batches de TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('393', '103', '2', 'BATCHES_WU', 'Opción para consultar Batches de WesternUnion', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('394', '104', '2', 'BATCHES_MG', 'Opción para consultar Batches de MoneyGram', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('395', '100', '3', 'BATCHES_CLOSE', 'Permite Cerrar y Exportar el Batch', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('396', '100', '3', 'BATCHES_EXPORT', 'Permite Exportar el Batch', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('405', '100', '3', 'BATCHES_REMOVE', 'Permite Remover Transacción del Batch', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('406', '70', '3', 'PLAYER2PLAYER_PROCESS', 'Botón Procesar las Transferencia entre Players', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('409', '24', '1', 'REPORTS_ADVANCED_SEARCH_RESULTS_LAYOUT_ACCOUNTING', 'Resultado de Consulta para Contabilidad', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('410', '4', '3', 'GLOBAL_PERMISSIONS_IGNORE_RESTRICTIONS', 'Permiso para IGNORAR todas las Restricciones', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('411', '123', '8', 'FRAUD_RESTRICTION_COMPANY_COUNTRY', 'Opción para limitar restricciones de compañía', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('412', '123', '8', 'FRAUD_RESTRICTION_COMPANY_STATE', 'Opción para limitar restricciones de compañia', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('413', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_ACCOUNT', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('414', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_BIN', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('415', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_EMAIL', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('416', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_IP', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('417', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_PROCESSOR', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('418', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_PROCESSOR_CLASS', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('419', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_ACCOUNT', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('420', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_BIN', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('421', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_COUNTRY', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('422', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_EMAIL', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('423', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_IP', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('424', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_LOYALTY', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('425', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_BOOK', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('426', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_STATE', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('427', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_AMOUNT', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('428', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_CLASS_COUNTRY', 'Opción para limitar restricciones de la clase del procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('429', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_CLASS_EMAIL', 'Opción para limitar restricciones de la clase del procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('430', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_CLASS_IP', 'Opción para limitar restricciones de la clase del procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('431', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_CLASS_STATE', 'Opción para limitar restricciones de la clase del procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('432', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_SKIN_COUNTRY', 'Opción para limitar restricciones del skin del procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('433', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_SKIN_STATE', 'Opción para limitar restricciones del skin del procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('434', '123', '8', 'FRAUD_RESTRICTION_BOOK_COUNTRY', 'Opción para limitar restricciones de software provider', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('435', '123', '8', 'FRAUD_RESTRICTION_BOOK_PROCESSOR', 'Opción para limitar restricciones de software provider', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('436', '123', '8', 'FRAUD_RESTRICTION_BOOK_PROCESSOR_CLASS', 'Opción para limitar restricciones de software provider', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('437', '123', '8', 'FRAUD_RESTRICTION_BOOK_STATE', 'Opción para limitar restricciones de software provider', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('438', '123', '8', 'FRAUD_RESTRICTION_SYSTEM_ACCOUNT', 'Opción para limitar restricciones del sistema', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('439', '123', '8', 'FRAUD_RESTRICTION_SYSTEM_BIN', 'Opción para limitar restricciones del sistema', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('440', '123', '8', 'FRAUD_RESTRICTION_SYSTEM_COUNTRY', 'Opción para limitar restricciones del sistema', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('441', '123', '8', 'FRAUD_RESTRICTION_SYSTEM_EMAIL', 'Opción para limitar restricciones del sistema', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('442', '123', '8', 'FRAUD_RESTRICTION_SYSTEM_IP', 'Opción para limitar restricciones del sistema', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('443', '123', '8', 'FRAUD_RESTRICTION_SYSTEM_STATE', 'Opción para limitar restricciones del sistema', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('444', '123', '8', 'FRAUD_RESTRICTION_SYSTEM_BANK_SWIFT', 'Opción para limitar restricciones del sistema', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('445', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_DOCSONFILE', 'Edita el estado del Docs On File (Si/No)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('446', '42', '2', 'TERMINAL_WITHDRAW_DEBITCARDS', 'Acceso a Retiros con Debit Cards', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('448', '29', '2', 'REPORTS_PROCESSOR_TRANSACTION_SEARCH', 'Opción para realizar consulta por Processor Transaction Id', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('449', '3', '7', 'CUSTOMER_IMPORT', 'Permite Importar el Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('450', '105', '2', 'BATCHES_DEBITCARDS', 'Opción para consultar Batches DebitCard', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('451', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_NAME', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('452', '52', '2', 'DEFERRED_WITHDRAW_DEBITCARDS', 'Acceso a Retiros Diferidos con Debit Cards', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('453', '52', '2', 'DEFERRED_WITHDRAW_TBL', 'Acceso a Retiros Diferidos con TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('454', '42', '2', 'TERMINAL_WITHDRAW_EW_TBEW', 'Acceso a Retiros con TBL', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('456', '73', '3', 'DEBITCARDS_PROCESS', 'Botón Proccesar Transacción de Debit Cards', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('457', '73', '3', 'DEBITCARDS_REMOVE', 'Boton Remover en Debit Cards', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('458', '73', '3', 'DEBITCARDS_ADD', 'Botón para Agregar en Debit Cards', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('459', '73', '3', 'DEBITCARDS_EDIT', 'Boton Editar en Debit Cards', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('461', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_PROCESSOR_SKIN', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('462', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_UPDATE_TRANSACTION', 'Permite MODIFICAR Datos de la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('463', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_UPDATE_P2P_INFO', 'Permite Modificar el Sender/Receiver de la transaccion', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('464', '30', '2', 'REPORTS_P2P_PAYOUT', 'Opción para realizar consulta de  P2P Payouts', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('467', '14', '2', 'BOARD_PENDING_TRANSFERS', 'Board de Transferencias', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('468', '14', '3', 'EXPORT_PENDING_TRANSFERS', 'Permite Exportar del Board de Transferencias Pendientes', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('469', '44', '2', 'TERMINAL_WITHDRAW_PLAYER2AGENT', 'Acceso a Transaferencias: Agent Transfers', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('470', '44', '2', 'TERMINAL_OTHER_PLAYER2PLAYER_BTC', 'Acceso a Transaferencias: Company Transfers', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('471', '54', '8', 'DEFERRED_OTHER', 'Submenú de Otros Métodos en Diferidas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('472', '54', '2', 'DEFERRED_OTHER_PLAYER2PLAYER', 'Acceso a Diferidas: Player2Player', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('473', '54', '2', 'DEFERRED_OTHER_PLAYER2PLAYER_BTC', 'Acceso a Diferidas: Company Transfers', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('474', '54', '2', 'DEFERRED_OTHER_PLAYER2AGENT', 'Acceso a Diferidas: Agent Transfers', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('475', '70', '3', 'PLAYER2PLAYER_ADD', 'Botón Activar las Transferencia entre Players', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('476', '74', '3', 'PLAYER2AGENT_PROCESS', 'Botón Procesar las Transferencia de Player a Agente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('477', '74', '3', 'PLAYER2AGENT_ADD', 'Botón Activar las Transferencias de Player a Agente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('478', '75', '3', 'PLAYER2PLAYERBTC_PROCESS', 'Botón Procesar las Transferencia entre Compañías', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('479', '75', '3', 'PLAYER2PLAYERBTC_ADD', 'Botón Activar las Transferencia entre Compañías', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('480', '31', '2', 'REPORTS_TRANSFERS_SEARCH', 'Opción para realizar consulta de Transaferencias', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('482', '31', '3', 'REPORTS_TRANSFERS_EXPORT', 'Permite Exportar las Transferencias a un Archivo Excel', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('483', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_IS_AGENT', 'Edita el si un cliente de Agente (Si/No)', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('484', '15', '2', 'BOARD_DECLINED_ATTEMPTS', 'Board: Declined Attempts', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('485', '54', '2', 'DEFERRED_OTHER_FREEPLAY', 'Acceso a Diferidas: FreePlays', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('486', '16', '2', 'BOARD_FREEPLAYS', 'Board: Pending FreePlays', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('487', '76', '2', 'TERMINAL_DEPOSIT_CASH', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('488', '42', '2', 'TERMINAL_WITHDRAW_CASH', 'Acceso a Retiros de cash en Locación', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('489', '52', '2', 'DEFERRED_WITHDRAW_CASH', 'Acceso a Retiros Diferidos de Cash en Locación', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('490', '76', '3', 'CASH_PROCESS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('491', '76', '3', 'CASH_ADD', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('492', '76', '3', 'CASH_EDIT', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('493', '76', '3', 'CASH_REMOVE', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('494', '77', '2', 'TERMINAL_DEPOSIT_BNK_TRANSFER', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('495', '77', '2', 'DEFERRED_DEPOSIT_BNK_TRANSFER', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('496', '42', '2', 'TERMINAL_WITHDRAW_BNK_TRANSFER', 'Permiso para PROCESAR retiros preaprobados de bank transfer', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('497', '52', '2', 'DEFERRED_WITHDRAW_BNK_TRANSFER_MENU', 'Acceso al Menu de Retiros Diferidos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('498', '77', '3', 'BNKTRANSFER_PROCESS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('499', '77', '3', 'BNKTRANSFER_ADD', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('500', '77', '3', 'BNKTRANSFER_EDIT', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('501', '77', '3', 'BNKTRANSFER_REMOVE', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('502', '32', '2', 'REPORTS_EPOS_BANK_TRANSFER_SEARCH', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('503', '33', '2', 'REPORTS_EPOS_SEARCH', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('504', '33', '5', 'EPOS_SEARCH_FILTER_STATUS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('505', '33', '5', 'EPOS_SEARCH_FILTER_TYPE', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('506', '33', '5', 'EPOS_SEARCH_FILTER_DEPARTMENT_USER', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('507', '33', '5', 'EPOS_SEARCH_FILTER_BANK', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('508', '33', '5', 'EPOS_SEARCH_FILTER_LOCATION', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('509', '33', '5', 'EPOS_SEARCH_FILTER_COUNTRY', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('510', '33', '5', 'EPOS_SEARCH_FILTER_USERNAME', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('511', '140', '2', 'MAIN_NAV_LOCATIONS', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('512', '140', '2', 'LOCATION_SEARCH', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('513', '140', '3', 'LOCATION_ADD', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('514', '140', '3', 'LOCATION_EDIT', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('515', '150', '2', 'MAIN_NAV_BANK', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('516', '150', '2', 'BANK_MANAGER', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('517', '150', '2', 'BANK_ACCOUNT_MANAGER', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('518', '150', '2', 'BANK_SEARCH', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('519', '150', '3', 'BANK_ADD', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('520', '150', '3', 'BANK_EDIT', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('521', '150', '2', 'BANK_EDIT_MESSAGE', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('522', '150', '2', 'BANK_ACCOUNT_SEARCH', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('523', '150', '3', 'BANK_ACCOUNT_ADD', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('524', '150', '3', 'BANK_ACCOUNT_EDIT', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('525', '150', '2', 'BANK_ACCOUNT_EDIT_FILTER', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('526', '150', '2', 'BANK_ACCOUNT_EDIT_DISPLAY', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('527', '17', '2', 'BOARD_EPOS_DEPOSITS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('528', '17', '3', 'EXPORT_EPOS_DEPOSITS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('529', '18', '2', 'BOARD_EPOS_PAYOUTS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('530', '18', '3', 'EXPORT_EPOS_PAYOUTS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('531', '123', '8', 'FRAUD_RESTRICTION_CUSTOMER_TRANS_TYPE', 'Opción para limitar restricciones de cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('532', '5', '3', 'TRANSACTION_P2P_SUBMIT', 'Permite confirmar un control number en P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('533', '5', '3', 'TRANSACTION_P2P_RESUBMIT', 'Permite re-enviar una transaction rechazada de P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('534', '5', '3', 'TRANSACTION_CHANGE_PRE_APPROVE', 'Permite PRE-APROBAR una transacción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('535', '42', '2', 'TERMINAL_WITHDRAW_BNK_TRANSFER_MENU', 'Permiso para CREAR retiros de bank transfer', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('536', '43', '2', 'TERMINAL_MISC_RECEIPT', 'Acceso a Miscelaneo Receipt', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('537', '53', '2', 'DEFERRED_MISC_RECEIPT', 'Acceso a Miscelaneo Receipt', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('538', '78', '3', 'MISCELLANEOUS_PROCESS', 'Botón Proccesar Transacción de Método Miscelaneo', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('539', '78', '3', 'MISCELLANEOUS_ADD', 'Boton para Habilitar el Método Miscelaneo', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('540', '78', '3', 'MISCELLANEOUS_EDIT', 'Boton para Editar el Método Miscelaneo', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('541', '78', '3', 'MISCELLANEOUS_REMOVE', 'Boton para Borrar (Inhabilitar) el Método Miscelaneo', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('542', '5', '3', 'TRANSACTION_ADD_REFERENCE', 'Permite agregarle una referencia a un retiro ya aprobado', '0', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('543', '43', '2', 'TERMINAL_MISCELLANEOUS', 'Acceso para Abrir Transacciones del Board Miscelaneas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('544', '3', '1', 'CUSTOMER_LIFETIME_TOTAL', 'Permite Ver el Lifetime Total del Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('550', '5', '3', 'CASH_TRANSACTION_ADD_REFERENCE', 'Permite agregarle una referencia a un retiro de cash ya aprobado', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('551', '5', '3', 'CASH_TRANSACTION_CHANGE_PRE_APPROVE', 'Permite Pre-Aprobar una transccion de Cash', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('552', '5', '3', 'BANK_TRANSACTION_CHANGE_PRE_APPROVE', 'Permite Pre-Aprobar una tranaccion de Bancos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('553', '5', '3', 'BANK_TRANSACTION_ADD_REFERENCE', 'Permite agregarle una referencia a un retiro de bancos ya aprobado', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('554', '5', '3', 'BNK_TRANSFER_BONUS_APPLY', 'Muestra el combo de bonus en el terminal de Bancos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('555', '5', '3', 'CASH_BONUS_APPLY', 'Muestra el combo de bonus en el terminal de cash', '0', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('556', '52', '2', 'DEFERRED_WITHDRAW_ASTROPAY', 'Acceso a Retiros Diferidos con AstroPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('557', '42', '2', 'TERMINAL_WITHDRAW_ASTROPAY', 'Acceso a Retiros con AstroPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('559', '79', '3', 'ASTROPAY_PROCESS', 'Botón Proccesar Transacción de AstroPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('561', '79', '3', 'ASTROPAY_ADD', 'Botón para Agregar en AstroPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('562', '79', '3', 'ASTROPAY_EDIT', 'Boton Editar en AstroPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('563', '79', '3', 'ASTROPAY_REMOVE', 'Boton Remover en AstroPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('564', '42', '2', 'TERMINAL_WITHDRAW_CASH_MENU', 'Permiso para CREAR retiros de cash', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('565', '52', '2', 'DEFERRED_WITHDRAW_CASH_MENU', 'Acceso a Retiros Deferidos de CASH en Locación', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('566', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_ADD_ALERT', 'Permite Agregar Alertas a los Journal', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('567', '3', '2', 'CUSTOMER_GLOBAL_PERSONAL_INFO', 'Permite ver el resto de la informacion del Cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('568', '3', '2', 'CUSTOMER_GLOBAL_NAME', 'Permite ver el Nombre y Apellidos del cliente', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('569', '5', '3', 'TRANSACTION_GO_TO_BATCH', 'Permite ver la opción  Go To Batch de la transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('570', '5', '3', 'CUSTOMERS_CUSTOMER_ALERT_CHANGE_STATUS', 'Permite Cambiar el Activar|Desabilitar una alerta', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('571', '69', '2', 'ALWAYS_DISPLAY_TBL_WITHDRAW_OPTION', 'Permite ver siempre la opción de TBL en el menú de withdraw ', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('572', '58', '3', 'IDEBIT_PROCESS', 'Botón Procesar Transacción de IDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('573', '58', '3', 'IDEBIT_ADD', 'Botón para agregar en iDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('574', '58', '3', 'IDEBIT_EDIT', 'Botón para Editar en iDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('575', '58', '3', 'IDEBIT_REMOVE', 'Botón para Remover en iDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('576', '59', '3', 'INSTADEBIT_PROCESS', 'Botón Procesar Transacción de InstaDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('577', '59', '3', '', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('578', '59', '3', 'INSTADEBIT_ADD', 'Botón para agregar en InstaDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('579', '59', '3', 'INSTADEBIT_EDIT', 'Botón para Editar en InstaDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('580', '59', '3', 'INSTADEBIT_REMOVE', 'Botón para Remover en InstaDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('581', '42', '2', 'TERMINAL_WITHDRAW_IDEBIT', 'Acceso a Retiros con iDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('582', '42', '2', 'TERMINAL_WITHDRAW_INSTADEBIT', 'Acceso a Retiros con InstaDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('583', '52', '2', 'DEFERRED_WITHDRAW_IDEBIT', 'Acceso a Retiros Diferidos con iDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('584', '52', '2', 'DEFERRED_WITHDRAW_INSTADEBIT', 'Acceso a Retiros Diferidos con InstaDebit', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('585', '24', '5', 'REPORTS_ADVANCED_SEARCH_FILTER_SP_COMPANY', 'Habilita Filtro: Book', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('586', '42', '2', 'TERMINAL_PAYOUT_MANUAL_CURRENCY_TO_PROCESSOR', 'Seleccionar manualmente la moneda enviada al procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('587', '77', '5', 'BNKTRANSFER_MANUAL_TRANSACTION_TYPE', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('588', '123', '8', 'FRAUD_RESTRICTION_PROCESSOR_CURRENCY', 'Opción para limitar restricciones de procesador', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('590', '19', '2', 'BOARD_CUSTOMER_REQUESTS', 'Board: Customer Requests', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('591', '3', '2', 'CUSTOMER_ADD_REQUEST', 'Allows the user to add a new customer request to the system', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('592', '3', '3', 'CUSTOMER_EDIT_REQUEST', 'Allows the user to edit a customer request in the system', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('593', '3', '3', 'CUSTOMER_PROCESS_REQUEST', 'Allows the user to process a customer request in the system', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('594', '5', '3', 'TRANSACTION_REFUND', 'Permite solicitar un refund para la transcción', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('595', '24', '3', 'REPORTS_ADVANCED_SEARCH_SUMMARY', 'Habilita la opción de solicitar el resumen ', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('596', '34', '2', 'REPORTS_FRAUD_SEARCH', 'Opción para realizar consulta de Transacciones rechazadas por restricciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('597', '34', '3', 'REPORTS_FRAUD_SEARCH_EXPORT', 'Permite Exportar las Transacciones a un Archivo Excel', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('598', '33', '3', 'EPOS_SEARCH_SUMMARY', 'Permite solicitar el resumen del reporte', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('601', '77', '6', 'BNKTRANSFER_CHANGE_PREAPPROVED_AMOUNT', 'Permiso para restringuir la modificación del monto de retiros ya preaprobados', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('602', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_CHANGE_STATUS', 'Permite cambiar el estado de una transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('603', '42', '2', 'TERMINAL_WITHDRAW_LOTTERYFUNDS', 'Acceso a Retiros de Lottery Funds', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('604', '42', '2', 'TERMINAL_WITHDRAW_LOTTERY_FUNDS_MENU', 'Permiso para CREAR retiros de lottery funds', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('605', '52', '2', 'DEFERRED_WITHDRAW_LOTTERY_FUNDS_MENU', 'Acceso a Retiros Deferidos de Lottery Funds', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('606', '5', '3', 'LOTTERYFUNDS_TRANSACTION_CHANGE_PRE_APPROVE', 'Permite Pre-Aprobar una transccion de Lottery Funds', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('609', '57', '2', 'TERMINAL_DEPOSIT_LOTTERY_FUNDS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('610', '57', '3', 'LOTTERYFUNDS_PROCESS', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('611', '57', '3', 'LOTTERYFUNDS_ADD', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('612', '57', '3', 'LOTTERYFUNDS_EDIT', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('613', '57', '3', 'LOTTERYFUNDS_REMOVE', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('614', '2', '7', 'OPEN_CUSTOMER_ACCOUNT_BY_CEDULA', '', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('615', '42', '2', 'TERMINAL_WITHDRAW_DINEROELECTRONICO', 'Acceso a Retiros con Dinero Electrónico', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('616', '52', '2', 'DEFERRED_WITHDRAW_DINEROELECTRONICO', 'Acceso a Retiros Deferidos de Dinero Electrónico', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('617', '56', '3', 'DINEROELECTRONICO_PROCESS', 'Botón Proccesar Transacción de Dinero Electrónico', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('618', '56', '3', 'DINEROELECTRONICO_ADD', 'Botón para Agregar Cuenta de Dinero Electrónico', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('619', '56', '3', 'DINEROELECTRONICO_EDIT', 'Botón para Editar Cuenta de Dinero Electrónico', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('620', '56', '3', 'DINEROELECTRONICO_REMOVE', 'Botón para Remover en Cuenta de Dinero Electrónico', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('621', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_AUTHORIZATION_FORMS', 'Permite enviar los Formularios de Autorización al Cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('622', '62', '3', 'P2P_FIND_PROCESSOR', 'Boton Encontrar Procesador en  P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('623', '60', '3', 'CC_FIND_PROCESSOR', 'Botón Encontrar Procesador para Credit Card', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('624', '5', '8', 'CUSTOMERS_CUSTOMER_DETAILS_CHANGE_STATUS_AMOUNT', 'Permite modificar el monto con el que una transacción será aprobada', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('625', '107', '2', 'BATCHES_BANKWIRE', 'Opción para consultar Batches de Bank Wire', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('626', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_ALLOW_MANUAL_FUNDING', 'Permite al Fondear Manualmente Transaccciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('628', '35', '2', 'REPORTS_CHARGEBACK_SEARCH', 'Opción para realizar consultas de transacciones con estado Chargeback', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('629', '108', '2', 'BATCHES_RIA', 'Opción para consultar Batches de Ria', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('631', '36', '2', 'REPORTS_PAYMENT_METHOD_SEARCH', 'Opción para realizar consultas de transacciones por medio de la cuenta', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('632', '93', '2', 'ACCESS_IP_MANAGEMENT', 'IP Access Management', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('633', '93', '3', 'ACCESS_IP_MANAGEMENT_ADD', 'IP Access Management Add Option', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('634', '94', '2', 'USER_ACTIVE_USER_SESSIONS', 'Allows access to the active user session screen', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('635', '94', '3', 'USER_ACTIVE_USER_SESSIONS_KICK', 'Grants access to kick out a user', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('636', '94', '3', 'USER_ACTIVE_USER_SESSIONS_DISABLE', 'Grants access to disable an user', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('637', '42', '2', 'TERMINAL_WITHDRAW_POSCASH', 'Acceso a Retiros termial de POSCASH', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('638', '76', '6', 'CASH_CHANGE_PREAPPROVED_AMOUNT', 'Permiso para restringuir la modificación del monto de retiros ya preaprobados', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('639', '57', '6', 'LOTTERYFUNDS_CHANGE_PREAPPROVED_AMOUNT', 'Permiso para restringuir la modificación del monto de retiros ya preaprobados', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('640', '55', '6', 'POSCASH_FUNDS_CHANGE_PREAPPROVED_AMOUNT', 'Permiso para restringuir la modificación del monto de retiros ya preaprobados', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('641', '3', '3', 'CUSTOMER_PHONE_VERIFICATION', 'Permite Verificar el número de teléfono del Cliente', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('642', '160', '2', 'MARKETING_PROCESSOR_DISPLAY', 'Permite ingresar a la opción para configurar el orden de los procesadores', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('643', '161', '3', 'MARKETING_PROCESSOR_DISPLAY_ADD', 'Permite agregar una nueva configuración', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('644', '161', '3', 'MARKETING_PROCESSOR_DISPLAY_EDIT', 'Permite cambiar la configuración seleccionada', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('645', '161', '3', 'MARKETING_PROCESSOR_DISPLAY_REMOVE', 'Permite eliminar la configuración seleccionada', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('646', '1', '8', 'MAIN_NAV_SETUP', 'Navegación principal de las opciones para Mercadeo', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('647', '109', '2', 'BATCHES_CK3', 'Opción para consultar Batches de CK3', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('648', '42', '2', 'TERMINAL_WITHDRAW_SAFETYPAY', 'Acceso a Retiros con SafetyPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('649', '52', '2', 'DEFERRED_WITHDRAW_SAFETYPAY', 'Acceso a Retiros Diferidos con SafetyPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('650', '80', '3', 'SAFETYPAY_PROCESS', 'Botón Proccesar Transacción de SafetyPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('651', '80', '3', 'SAFETYPAY_ADD', 'Botón para agregar en SafetyPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('652', '80', '3', 'SAFETYPAY_REMOVE', 'Boton Remover en SafetyPay', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('653', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_TRANS_DETAILS_CC', 'Permite ver el Request de la Transacción de Tarjetas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('654', '37', '2', 'REPORTS_REFUND_SEARCH', 'Opción para realizar consultas de transacciones con estado Refund', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('655', '15', '2', 'OPEN_TRANSACTION_ATTEMPT', 'Permite Abrir un Intento de Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('656', '70', '2', 'PLAYER2PLAYER_REGISTER_NEW_PLAYER', 'Acceso para Agregar una nueva cuenta transaferencias', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('657', '5', '3', 'CUSTOMERS_CUSTOMER_DETAILS_BIN_INFORMATION', 'Permite ver la Información de BIN de la tarjeta', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('658', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_PERSONAL_INFO', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('659', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_ADDRESS_INFO', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('660', '4', '3', 'GLOBAL_PERMISSIONS_EDIT_PERSONAL_ID', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('661', '4', '3', 'GLOBAL_PERMISSIONS_PLAYER_INFO_CHANGE_LOG', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('663', '38', '2', 'REPORTS_CC_SEARCH_VOLUME', 'Opción para realizar consulta el Volumen de Transacciones de CC', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('664', '3', '2', 'CUSTOMER_VERIFICATION_CODE_HISTORY', 'Permite Ver el historial de 2FA', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('665', '3', '3', 'CUSTOMER_EMAIL_VERIFICATION_CODE', 'Permite Ver el boton para habilitar el envio de email 2FA', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('666', '9', '2', 'BOARD_BANK_DEPOSITS', 'Permite ver el Board de Depósitos pendientes de Bancos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('667', '77', '3', 'BNKTRANSFER_KR_PROCESS', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('668', '77', '3', 'BNKTRANSFER_KR_ADD', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('669', '77', '3', 'BNKTRANSFER_KR_EDIT', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('670', '77', '3', 'BNKTRANSFER_KR_REMOVE', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('671', '77', '2', 'TERMINAL_WITHDRAW_BNK_TRANSFER_KR', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('672', '77', '2', 'TERMINAL_WITHDRAW_BNK_TRANSFER_KR_MENU', '', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('673', '9', '2', 'BOARD_BANK_PAYOUTS', 'Permite ver el Board de Retiros pendientes de Bancos', '1', '0', '1');
INSERT INTO `caBEUserPermission` VALUES ('674', '38', '2', 'REPORTS_PROCESSOR_FILTER', 'Permite ver el Reporte de Filtros del Procesador de Tarjetas', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('675', '60', '3', 'CUSTOMERS_CUSTOMER_DETAILS_CC_BLOCK_AUTHORIZE', 'Permite bloquear/autorizar CC desde la lista de payaccounts', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('676', '1', '8', 'MAIN_NAV_P2P', 'Navegación principal para P2P', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('677', '170', '2', 'P2P_BOARD_PENDING', 'Muestra las transacciones con estado pending', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('678', '170', '3', 'P2P_BOARD_PENDING_SAVE', 'Permite guardar cambios si son editados', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('679', '171', '2', 'P2P_BOARD_PROCESSING', 'Muestra las transacciones con estado processing', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('680', '171', '3', 'P2P_BOARD_PROCESSING_SAVE', 'Permite guardar cambios si son editados', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('681', '171', '3', 'P2P_BOARD_PROCESSING_CHANGE_PERSON', 'Permite Cambiar el Nombre de la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('682', '171', '3', 'P2P_BOARD_PROCESSING_AUTHORIZE', 'Permite Autorizar la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('683', '172', '1', 'P2P_REPORT_TRANSACTION', 'Permite el Ingreso al Reporte de Transacciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('684', '172', '3', 'P2P_REPORT_TRANSACTION_SAVE', 'Permite Guardar los Cambios realizados a la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('685', '172', '4', 'P2P_REPORT_TRANSACTION_CHANGE_STATUS', 'Permite Cambiar el Estado de la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('686', '172', '4', 'P2P_REPORT_TRANSACTION_CHANGE_AMOUNT', 'Permite Cambiar el Monto de la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('687', '172', '4', 'P2P_REPORT_TRANSACTION_CHANGE_FEE', 'Permite Cambiar el Costo de la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('688', '172', '4', 'P2P_REPORT_TRANSACTION_CHANGE_MTCN', 'Permite Cambiar el Control Number de la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('689', '172', '3', 'P2P_REPORT_EXPORT', 'Permite Exportar las Transacciones', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('690', '172', '3', 'P2P_REPORT_TRANSACTION_GET_NEW_PERSON', 'Permite Cambiar el Nombre de la Transacción', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('691', '173', '2', 'P2P_NEW_TRANSACTION', 'Permite agragar una nueva transaccion', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('692', '174', '2', 'P2P_AVAILABLE_NAMES', 'Permite ver la lista de nombres disponibles y utilizados', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('693', '175', '2', 'P2P_TOTALS_SEARCH', 'Permite ver el reporte de Totales', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('695', '171', '4', 'P2P_TRANSACTION_IGNORE_LIMITS', 'Permite Ignorar los límites', '1', '0', '0');
INSERT INTO `caBEUserPermission` VALUES ('696', '160', '3', 'SETUP_ERROR_TRANSLATION', 'Permite Ingreso a la sección de Error Code', '1', '0', '0');

--
-- Dumping data for table `caBEUserRole`
--
INSERT INTO `caBEUserRole` (`caBEUserRole_Id`, `Name`, `IsActive`, `IsEpos`)
VALUES
 (1,'CC/Fraud',1,0),
 (2,'CS Clerk',1,0),
 (3,'Payouts CS',1,0),
 (4,'Processing',1,0),
 (7,'Casino',1,0),
 (8,'K-23 Processors',1,0),
 (9,'Poker Fraud',1,0),
 (10,'Poker CS',1,0),
 (11,'Poker Supervisor',1,0),
 (12,'Accounting',1,0),
 (13,'VIP Supervisor',1,0),
 (14,'VIP CS',1,0),
 (15,'Payouts Supervisor',1,0),
 (16,'CS Supervisor',1,0),
 (18,'Poker Payouts CS',1,0),
 (19,'Epos CS',1,0),
 (21,'Poker Payouts Supervisor',1,0),
 (22,'BetCRIS Recovery',1,0),
 (23,'Network Admin',1,0),
 (24,'Fraud Supervisor',1,0),
 (25,'BetCRIS Supervisor',1,1),
 (26,'BetCRIS Deferred',1,1),
 (27,'BetCRIS Operations',1,0),
 (28,'BetCRIS Banks',1,0),
 (29,'BetCRIS Call Center',1,0),
 (30,'BetCRIS CC',1,0),
 (31,'BetCRIS Management',1,0),
 (32,'BetCRIS Asia-OP',1,1),
 (33,'BetCRIS Reporting',1,0),
 (34,'BetCRIS Korea',1,0),
 (40,'Affiliates',1,0),
 (50,'Loteria Ecuador Call Center',1,0),
 (51,'Loteria Ecuador Operations',1,0),
 (60,'P2P Supervisor',1,0),
 (61,'P2P Cashier',1,0),
 (100,'Bingo',1,0),
 (101,'Treasury',1,0),
 (102,'Poker Fraud Supervisor',1,0),
 (200,'Midas',1,0),
 (201,'Only Pre-Approved',1,0),
 (202, 'Test', '1', '0'),
 (203, 'Admin', '1', '0');

-- ------------------------------
-- Records of caCompanyLabelType
-- ------------------------------
INSERT INTO `caCompanyLabelType` VALUES ('1', 'COMPANY_NAME', 'Company Name');
INSERT INTO `caCompanyLabelType` VALUES ('2', 'COMPANY_EMAIL', 'Company Main Email Address');
INSERT INTO `caCompanyLabelType` VALUES ('3', 'COMPANY_EMAIL_CS', 'Customer Service Email');
INSERT INTO `caCompanyLabelType` VALUES ('4', 'COMPANY_EMAIL_PAYOUT', 'Payout Email');
INSERT INTO `caCompanyLabelType` VALUES ('5', 'COMPANY_PHONE', 'Company Main Phone Number');
INSERT INTO `caCompanyLabelType` VALUES ('6', 'COMPANY_PHONE_WAGERING', 'Wager Phone Number');
INSERT INTO `caCompanyLabelType` VALUES ('7', 'COMPANY_PHONE_CS', 'Customer Service Phone');
INSERT INTO `caCompanyLabelType` VALUES ('8', 'COMPANY_FAX', 'Company Main Fax Number');
INSERT INTO `caCompanyLabelType` VALUES ('9', 'COMPANY_FAX_CS', 'Customer Services Fax Number');
INSERT INTO `caCompanyLabelType` VALUES ('10', 'COMPANY_WEBSITE', 'Company Main Web Site');

--
-- Dumping data for table `caConfig_Num`
--
/*!40000 ALTER TABLE `caConfig_Num` DISABLE KEYS */;
INSERT INTO `caConfig_Num` (`caConfigNum_Id`, `Description`, `Value`, `IsActive`)
VALUES
 (100,'Add random cents to CC deposits',1,1),
 (2000,'Number of transactions to notify',5,1),
 (2001,'Number of transactions after shutdown processor',10,1),
 (2002,'Time out of service processor',20,1),
 (2003,'Number of transactions before shutdown processor',15,1);
/*!40000 ALTER TABLE `caConfig_Num` ENABLE KEYS */;

--
-- Dumping data for table `caConfig_Str`
--
/*!40000 ALTER TABLE `caConfig_Str` DISABLE KEYS */;
INSERT INTO `caConfig_Str` (`caConfigStr_Id`, `Description`, `Value`, `IsActive`)
VALUES
 (200000,'Default Url for News','[home]/Administration/News/News.aspx',1);
/*!40000 ALTER TABLE `caConfig_Str` ENABLE KEYS */;

INSERT INTO `caCurrencyProcessor` (`caCurrencyProcessor_Id`, `caCurrency_Id`, `caProcessor_Id`, `IsActive`, `SortOrder`)
VALUES
 (1,1,13,1,NULL),
 (2,1,33,1,NULL);

-- ----------------------------
-- Records of caCustomerRequestType
-- ----------------------------
INSERT INTO `caCustomerRequestType` VALUES ('1', 'Credit Card Forms');
INSERT INTO `caCustomerRequestType` VALUES ('2', 'Debit Cards Payout Forms');
INSERT INTO `caCustomerRequestType` VALUES ('3', 'Rollover Status');

-- ----------------------------
-- Records of caDatabase
-- ----------------------------
INSERT INTO `caDatabase` VALUES ('1', '0001', 'initial version', '1', '2012-07-24 11:07:57', '2012-07-24 11:07:57');

--
-- Dumping data for table `caDepartment`
--
INSERT INTO `caDepartment` (`caDepartment_Id`, `Name`, `Manager`, `ManagerPhone`, `ManagerPhoneExt`, `ManagerEmail`)
VALUES
 (1,'Midas',NULL,NULL,NULL,NULL),
 (10,'Processors',NULL,NULL,NULL,NULL),
 (20,'Marketing',NULL,NULL,NULL,NULL);

--
-- Dumping data for table `caExceptionType`
--
INSERT INTO `caExceptionType` (`caExceptionType_Id`, `Name`, `Description`)
VALUES
 (1,'Processor Exception Type','ProcessorException'),
 (2,'Software Provider Type','It catch the specifics exceptions from software providers when end a transaction or change status');

-- ----------------------------
-- Records of caFee
-- ----------------------------
INSERT INTO `caFee` VALUES ('1', 'Checks');

-- ----------------------------
-- Records of caFeeCompany
-- ----------------------------
INSERT INTO `caFeeCompany` VALUES ('1', '1', '50', '1', '0', 'flat');

-- ----------------------------
-- Records of caFeeDetail
-- ----------------------------
INSERT INTO `caFeeDetail` VALUES ('1', '1', '1.00', '150.00', '2.00', '1.00', '2.00', '3.00', '1', '2', '3', '1.00', '1.00', '2.00', '3.00', '1', '2', '3');

-- ----------------------------
-- Records of caFeeProcessor
-- ----------------------------
INSERT INTO `caFeeProcessor` VALUES ('1', '1', '70000');

-- ----------------------------
-- Records of caLanguage
-- ----------------------------
INSERT INTO `caLanguage` (`caLanguage_Id`, `Culture`)
VALUES
 (10,'en-US'),
 (11,'en'),
 (30,'es-ES'),
 (31,'es-MX'),
 (32,'es-AR'),
 (33,'es'),
 (40,'pt-BR'),
 (41,'pt'),
 (50,'pl-PL'),
 (60,'fr-FR'),
 (80,'zh-CN'),
 (81,'zh'),
 (90,'km'),
 (100,'th'),
 (110,'tl'),
 (120,'vi'),
 (130,'jp'),
 (140,'ko'),
 (150,'hr'),
 (160,'uk');


-- ----------------------------
-- Records of caLocCountry
-- ----------------------------
INSERT INTO `caLocCountry` VALUES ('1', null, 'AF', 'AFG', '004', 'Afghanistan ', '93', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('2', null, 'AL', 'ALB', '008', 'Albania ', '355', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('3', null, 'DZ', 'DZA', '012', 'Algeria ', '213', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('4', null, 'AS', 'ASM', '016', 'American Samoa', '684', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('5', null, 'AD', 'AND', '020', 'Andorra, Principality of ', '376', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('6', null, 'AO', 'AGO', '024', 'Angola', '244', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('7', null, 'AI', 'AIA', '660', 'Anguilla ', '264', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('8', null, 'AQ', 'ATA', '010', 'Antarctica', '672', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('9', null, 'AG', 'ATG', '028', 'Antigua and Barbuda', '268', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('10', '6', 'AR', 'ARG', '032', 'Argentina', '54', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('11', null, 'AM', 'ARM', '051', 'Armenia', '374', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('12', null, 'AW', 'ABW', '533', 'Aruba', '297', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('13', null, 'AU', 'AUS', '036', 'Australia', '61', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('14', null, 'AT', 'AUT', '040', 'Austria', '43', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('15', null, 'AZ', 'AZE', '031', 'Azerbaijan', '994', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('16', null, 'BS', 'BHS', '044', 'Bahamas, Commonwealth of The', '242', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('17', null, 'BH', 'BHR', '048', 'Bahrain, Kingdom of', '973', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('18', null, 'BD', 'BGD', '050', 'Bangladesh', '880', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('19', null, 'BB', 'BRB', '052', 'Barbados ', '246', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('20', null, 'BY', 'BLR', '112', 'Belarus', '375', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('21', null, 'BE', 'BEL', '056', 'Belgium ', '372', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('22', null, 'BZ', 'BLZ', '084', 'Belize', '501', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('23', null, 'BJ', 'BEN', '204', 'Benin', '229', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('24', null, 'BM', 'BMU', '060', 'Bermuda ', '441', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('25', null, 'BT', 'BTN', '064', 'Bhutan, Kingdom of', '975', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('26', null, 'BO', 'BOL', '068', 'Bolivia ', '591', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('27', null, 'BA', 'BIH', '070', 'Bosnia and Herzegovina ', '387', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('28', null, 'BW', 'BWA', '072', 'Botswana', '267', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('29', null, 'BV', 'BVT', '074', 'Bouvet Island (Territory of Norway)', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('30', '25', 'BR', 'BRA', '076', 'Brazil ', '55', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('31', null, 'IO', 'IOT', '086', 'British Indian Ocean Territory (BIOT)', '284', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('32', null, 'BN', 'BRN', '096', 'Brunei (Negara Brunei Darussalam) ', '673', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('33', null, 'BG', 'BGR', '100', 'Bulgaria ', '359', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('34', null, 'BF', 'BFA', '854', 'Burkina Faso', '226', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('35', null, 'BI', 'BDI', '108', 'Burundi', '257', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('36', null, 'KH', 'KHM', '116', 'Cambodia, Kingdom of', '855', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('37', null, 'CM', 'CMR', '120', 'Cameroon', '237', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('38', null, 'CA', 'CAN', '124', 'Canada', '1', '10,7', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('39', null, 'CV', 'CPV', '132', 'Cape Verde ', '238', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('40', null, 'KY', 'CYM', '136', 'Cayman Islands ', '345', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('41', null, 'CF', 'CAF', '140', 'Central African Republic ', '236', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('42', null, 'TD', 'TCD', '148', 'Chad ', '235', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('43', '22', 'CL', 'CHL', '152', 'Chile ', '56', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('44', null, 'CN', 'CHN', '156', 'China ', '86', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('45', null, 'CX', 'CXR', '162', 'Christmas Island', '672', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('46', null, 'CC', 'CCK', '166', 'Cocos (Keeling) Islands ', '672', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('47', null, 'CO', 'COL', '170', 'Colombia ', '57', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('48', null, 'KM', 'COM', '174', 'Comoros, Union of the ', '269', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('49', null, 'CD', 'COD', '180', 'Congo, Democratic Republic of the', '242', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('50', null, 'CG', 'COG', '178', 'Congo, Republic of the', '243', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('51', null, 'CK', 'COK', '184', 'Cook Islands', '682', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('52', null, 'CR', 'CRI', '188', 'Costa Rica', '506', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('53', null, 'CI', 'CIV', '384', 'Cote D\'Ivoire', '225', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('54', null, 'HR', 'HRV', '191', 'Croatia (Hrvatska) ', '385', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('55', null, 'CU', 'CUB', '192', 'Cuba ', '53', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('56', null, 'CY', 'CYP', '196', 'Cyprus ', '357', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('57', null, 'CZ', 'CZE', '203', 'Czech Republic', '420', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('58', null, 'CS', 'SCG', '891', 'Serbia and Montenegro', '381', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('59', null, 'DK', 'DNK', '208', 'Denmark ', '45', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('60', null, 'DJ', 'DJI', '262', 'Djibouti', '253', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('61', null, 'DM', 'DMA', '212', 'Dominica', '767', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('62', null, 'DO', 'DOM', '214', 'Dominican Republic ', '809', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('63', null, 'TL', 'TLS', '626', 'Timor-Leste, Democratic Republic of', '670', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('64', null, 'EC', 'ECU', '218', 'Ecuador ', '593', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('65', null, 'EG', 'EGY', '818', 'Egypt', '20', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('66', null, 'SV', 'SLV', '222', 'El Salvador ', '503', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('67', null, 'GQ', 'GNQ', '226', 'Equatorial Guinea', '240', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('68', null, 'ER', 'ERI', '232', 'Eritrea', '291', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('69', null, 'EE', 'EST', '233', 'Estonia', '372', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('70', null, 'ET', 'ETH', '231', 'Ethiopia', '251', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('71', null, 'FK', 'FLK', '238', 'Falkland Islands (Islas Malvinas) ', '500', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('72', null, 'FO', 'FRO', '234', 'Faroe Islands ', '298', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('73', null, 'FJ', 'FJI', '242', 'Fiji ', '679', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('74', null, 'FI', 'FIN', '246', 'Finland ', '358', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('75', null, 'FR', 'FRA', '250', 'France ', '33', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('76', null, 'GF', 'GUF', '254', 'French Guiana or French Guyana ', '594', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('77', null, 'PF', 'PYF', '258', 'French Polynesia', '689', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('78', null, 'TF', 'ATF', '260', 'French Southern Territories', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('79', null, 'GA', 'GAB', '266', 'Gabon (Gabonese Republic)', '241', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('80', null, 'GM', 'GMB', '270', 'Gambia, Republic of the ', '220', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('81', null, 'GE', 'GEO', '268', 'Georgia', '995', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('82', null, 'DE', 'DEU', '276', 'Germany ', '49', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('83', null, 'GH', 'GHA', '288', 'Ghana', '233', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('84', null, 'GI', 'GIB', '292', 'Gibraltar ', '350', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('85', null, 'GR', 'GRC', '300', 'Greece ', '30', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('86', null, 'GL', 'GRL', '304', 'Greenland ', '299', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('87', null, 'GD', 'GRD', '308', 'Grenada ', '473', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('88', null, 'GP', 'GLP', '312', 'Guadeloupe', '590', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('89', null, 'GU', 'GUM', '316', 'Guam', '671', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('90', null, 'GT', 'GTM', '320', 'Guatemala ', '502', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('91', null, 'GN', 'GIN', '324', 'Guinea', '224', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('92', null, 'GW', 'GNB', '624', 'Guinea-Bissau', '245', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('93', null, 'GY', 'GUY', '328', 'Guyana', '592', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('94', null, 'HT', 'HTI', '332', 'Haiti ', '509', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('95', null, 'HM', 'HMD', '334', 'Heard I. and McDonald I. (Terr. of Australia)', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('96', null, 'HN', 'HND', '340', 'Honduras ', '504', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('97', null, 'HK', 'HKG', '344', 'Hong Kong ', '852', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('98', null, 'HU', 'HUN', '348', 'Hungary ', '36', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('99', null, 'IS', 'ISL', '352', 'Iceland ', '354', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('100', null, 'IN', 'IND', '356', 'India ', '91', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('101', null, 'ID', 'IDN', '360', 'Indonesia', '62', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('102', null, 'IR', 'IRN', '364', 'Iran, Islamic Republic of', '98', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('103', null, 'IQ', 'IRQ', '368', 'Iraq ', '964', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('104', null, 'IE', 'IRL', '372', 'Ireland ', '353', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('105', null, 'IL', 'ISR', '376', 'Israel ', '972', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('106', null, 'IT', 'ITA', '380', 'Italy ', '39', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('107', null, 'JM', 'JAM', '388', 'Jamaica ', '876', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('108', null, 'JP', 'JPN', '392', 'Japan ', '81', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('109', null, 'JO', 'JOR', '400', 'Jordan', '962', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('110', null, 'KZ', 'KAZ', '398', 'Kazakhstan or Kazakhstan', '7', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('111', null, 'KE', 'KEN', '404', 'Kenya', '254', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('112', null, 'KI', 'KIR', '296', 'Kiribati (Pronounced keer-ree-bahss)', '686', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('113', null, 'KP', 'PRK', '408', 'Korea, Dem. Peop. Rep. of (North Korea)', '850', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('114', null, 'KR', 'KOR', '410', 'Korea, Republic of (South Korea) ', '82', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('115', null, 'KW', 'KWT', '414', 'Kuwait ', '965', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('116', null, 'KG', 'KGZ', '417', 'Kyrgyzstan (Kyrgyz Republic)', '996', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('117', null, 'LA', 'LAO', '418', 'Lao People\'s Democratic Republic (Laos)', '856', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('118', null, 'LV', 'LVA', '428', 'Latvia', '371', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('119', null, 'LB', 'LBN', '422', 'Lebanon ', '961', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('120', null, 'LS', 'LSO', '426', 'Lesotho', '266', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('121', null, 'LR', 'LBR', '430', 'Liberia ', '231', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('122', null, 'LY', 'LBY', '434', 'Libya (Libyan Arab Jamahiriya)', '218', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('123', null, 'LI', 'LIE', '438', 'Liechtenstein ', '423', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('124', null, 'LT', 'LTU', '440', 'Lithuania', '370', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('125', null, 'LU', 'LUX', '442', 'Luxembourg ', '352', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('126', null, 'MO', 'MAC', '446', 'Macau ', '853', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('127', null, 'MK', 'MKD', '807', 'Macedonia, Former Yugoslav Rep. of', '389', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('128', null, 'MG', 'MDG', '450', 'Madagascar', '261', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('129', null, 'MW', 'MWI', '454', 'Malawi', '265', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('130', null, 'MY', 'MYS', '458', 'Malaysia ', '60', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('131', null, 'MV', 'MDV', '462', 'Maldives ', '960', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('132', null, 'ML', 'MLI', '466', 'Mali', '223', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('133', null, 'MT', 'MLT', '470', 'Malta ', '356', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('134', null, 'MH', 'MHL', '584', 'Marshall Islands', '692', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('135', null, 'MQ', 'MTQ', '474', 'Martinique (French) ', '596', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('136', null, 'MR', 'MRT', '478', 'Mauritania ', '222', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('137', null, 'MU', 'MUS', '480', 'Mauritius ', '230', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('138', null, 'YT', 'MYT', '175', 'Mayotte', '269', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('139', '5', 'MX', 'MEX', '484', 'Mexico ', '52', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('140', null, 'FM', 'FSM', '583', 'Micronesia, Federated States of', '691', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('141', null, 'MD', 'MDA', '498', 'Moldova, Republic of', '373', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('142', null, 'MC', 'MCO', '492', 'Monaco, Principality of', '377', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('143', null, 'MN', 'MNG', '496', 'Mongolia', '976', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('144', null, 'MS', 'MSR', '500', 'Montserrat ', '664', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('145', null, 'MA', 'MAR', '504', 'Morocco ', '212', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('146', null, 'MZ', 'MOZ', '508', 'Mozambique', '258', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('147', null, 'MM', 'MMR', '104', 'Myanmar, Union of', '95', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('148', null, 'NA', 'NAM', '516', 'Namibia', '264', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('149', null, 'NR', 'NRU', '520', 'Nauru', '674', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('150', null, 'NP', 'NPL', '524', 'Nepal ', '977', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('151', null, 'NL', 'NLD', '528', 'Netherlands ', '31', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('152', null, 'AN', 'ANT', '530', 'Netherlands Antilles', '599', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('153', null, 'NC', 'NCL', '540', 'New Caledonia ', '687', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('154', null, 'NZ', 'NZL', '554', 'New Zealand (Aotearoa) ', '64', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('155', null, 'NI', 'NIC', '558', 'Nicaragua', '505', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('156', null, 'NE', 'NER', '562', 'Niger ', '227', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('157', null, 'NG', 'NGA', '566', 'Nigeria ', '234', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('158', null, 'NU', 'NIU', '570', 'Niue', '683', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('159', null, 'NF', 'NFK', '574', 'Norfolk Island ', '672', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('160', null, 'MP', 'MNP', '580', 'Northern Mariana Islands', '670', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('161', null, 'NO', 'NOR', '578', 'Norway ', '47', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('162', null, 'OM', 'OMN', '512', 'Oman, Sultanate of', '968', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('163', null, 'PK', 'PAK', '586', 'Pakistan', '92', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('164', null, 'PW', 'PLW', '585', 'Palau', '680', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('165', null, 'PS', 'PSE', '275', 'Palestinian State (Proposed)', '970', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('166', null, 'PA', 'PAN', '591', 'Panama ', '507', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('167', null, 'PG', 'PNG', '598', 'Papua New Guinea', '675', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('168', null, 'PY', 'PRY', '600', 'Paraguay ', '595', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('169', '19', 'PE', 'PER', '604', 'Peru ', '51', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('170', null, 'PH', 'PHL', '608', 'Philippines', '63', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('171', null, 'PN', 'PCN', '612', 'Pitcairn Island', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('172', null, 'PL', 'POL', '616', 'Poland ', '48', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('173', null, 'PT', 'PRT', '620', 'Portugal ', '351', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('174', null, 'PR', 'PRI', '630', 'Puerto Rico ', '787', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('175', null, 'QA', 'QAT', '634', 'Qatar, State of ', '974', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('176', null, 'RE', 'REU', '638', 'Reunion (French)', '262', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('177', null, 'RO', 'ROU', '642', 'Romania ', '40', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('178', null, 'RU', 'RUS', '643', 'Russian Federation ', '7', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('179', null, 'RW', 'RWA', '646', 'Rwanda (Rwandese Republic)', '250', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('180', null, 'SH', 'SHN', '654', 'Saint Helena ', '290', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('181', null, 'KN', 'KNA', '659', 'Saint Kitts and Nevis', '869', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('182', null, 'LC', 'LCA', '662', 'Saint Lucia ', '758', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('183', null, 'PM', 'SPM', '666', 'Saint Pierre and Miquelon ', '508', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('184', null, 'VC', 'VCT', '670', 'Saint Vincent and the Grenadines ', '784', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('185', null, 'WS', 'WSM', '882', 'Samoa', '686', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('186', null, 'SM', 'SMR', '674', 'San Marino ', '378', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('187', null, 'ST', 'STP', '678', 'Sao Tome and Principe ', '239', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('188', null, 'SA', 'SAU', '682', 'Saudi Arabia ', '966', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('189', null, 'SN', 'SEN', '686', 'Senegal ', '221', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('190', null, 'SC', 'SYC', '690', 'Seychelles ', '248', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('191', null, 'SL', 'SLE', '694', 'Sierra Leone ', '232', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('192', null, 'SG', 'SGP', '702', 'Singapore ', '65', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('193', null, 'SK', 'SVK', '703', 'Slovakia ', '421', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('194', null, 'SI', 'SVN', '705', 'Slovenia ', '386', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('195', null, 'SB', 'SLB', '090', 'Solomon Islands', '677', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('196', null, 'SO', 'SOM', '706', 'Somalia', '252', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('197', null, 'ZA', 'ZAF', '710', 'South Africa', '27', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('198', null, 'GS', 'SGS', '239', 'South Georgia and the S. Sandwich Is.', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('199', null, 'ES', 'ESP', '724', 'Spain ', '34', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('200', null, 'LK', 'LKA', '144', 'Sri Lanka', '94', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('201', null, 'SD', 'SDN', '736', 'Sudan', '249', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('202', null, 'SR', 'SUR', '740', 'Suriname', '597', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('203', null, 'SJ', 'SJM', '744', 'Svalbard (Spitzbergen) and', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('204', null, 'SZ', 'SWZ', '748', 'Swaziland, Kingdom of ', '268', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('205', null, 'SE', 'SWE', '752', 'Sweden ', '46', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('206', null, 'CH', 'CHE', '756', 'Switzerland ', '41', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('207', null, 'SY', 'SYR', '760', 'Syria (Syrian Arab Republic)', '963', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('208', null, 'TW', 'TWN', '158', 'Taiwan', '886', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('209', null, 'TJ', 'TJK', '762', 'Tajikistan', '992', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('210', null, 'TZ', 'TZA', '834', 'Tanzania, United Republic of', '255', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('211', null, 'TH', 'THA', '764', 'Thailand', '66', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('212', null, 'TG', 'TGO', '768', 'Togo', '228', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('213', null, 'TK', 'TKL', '772', 'Tokelau ', '690', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('214', null, 'TO', 'TON', '776', 'Tonga, Kingdom of', '676', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('215', null, 'TT', 'TTO', '780', 'Trinidad and Tobago ', '868', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('216', null, 'TN', 'TUN', '788', 'Tunisia ', '216', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('217', null, 'TR', 'TUR', '792', 'Turkey ', '90', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('218', null, 'TM', 'TKM', '795', 'Turkmenistan', '993', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('219', null, 'TC', 'TCA', '796', 'Turks and Caicos Islands ', '649', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('220', null, 'TV', 'TUV', '798', 'Tuvalu', '688', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('221', null, 'UG', 'UGA', '800', 'Uganda, Republic of', '256', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('222', null, 'UA', 'UKR', '804', 'Ukraine', '380', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('223', null, 'AE', 'ARE', '784', 'United Arab Emirates (UAE)', '971', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('224', null, 'GB', 'GBR', '826', 'United Kingdom (Great Britain / UK)', '44', '0', null, '0', '0', '');
INSERT INTO `caLocCountry` VALUES ('225', null, 'US', 'USA', '840', 'United States ', '1', '10,7', null, '1', '1', '');
INSERT INTO `caLocCountry` VALUES ('226', null, 'UM', 'UMI', '581', 'United States Minor Outlying Islands ', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('227', '27', 'UY', 'URY', '858', 'Uruguay, Oriental Republic of', '598', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('228', null, 'UZ', 'UZB', '860', 'Uzbekistan', '998', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('229', null, 'VU', 'VUT', '548', 'Vanuatu', '678', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('230', null, 'VA', 'VAT', '336', 'Vatican City State (Holy See)', '379', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('231', null, 'VE', 'VEN', '862', 'Venezuela ', '58', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('232', null, 'VN', 'VNM', '704', 'Viet Nam, Socialist Republic of ', '84', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('233', null, 'VG', 'VGB', '092', 'Virgin Islands, British ', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('234', null, 'VI', 'VIR', '850', 'Virgin Islands, United States', '340', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('235', null, 'WF', 'WLF', '876', 'Wallis and Futuna Islands ', '681', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('236', null, 'EH', 'ESH', '732', 'Western Sahara', '0', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('237', null, 'YE', 'YEM', '887', 'Yemen ', '967', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('238', null, 'YU', 'YUG', '890', 'Yugoslavia ', '381', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('239', null, 'ZM', 'ZMB', '894', 'Zambia, Republic of', '260', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('240', null, 'ZW', 'ZWE', '716', 'Zimbabwe, Republic of', '263', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('241', null, 'UK', 'GBR', '826', 'United Kingdom (UK)', '44', '0', null, '1', '0', '');
INSERT INTO `caLocCountry` VALUES ('244', null, 'CW', 'CUW', '531', 'Curaçao', '', '0', null, '1', '0', '');

-- ----------------------------
-- Table structure for `caLocCountryRestriction`
-- ----------------------------
DROP TABLE IF EXISTS `caLocCountryRestriction`;
CREATE TABLE `caLocCountryRestriction` (
  `caLocCountryRestriction_Id` int(10) NOT NULL AUTO_INCREMENT,
  `caCompany_Id` int(10) DEFAULT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsIncluded` tinyint(1) DEFAULT '0',
  `IsActive` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`caLocCountryRestriction_Id`),
  KEY `caLocCountryRestriction_caCompany` (`caCompany_Id`) USING BTREE,
  CONSTRAINT `caLocCountryRestriction_caCompany` FOREIGN KEY (`caCompany_Id`) REFERENCES `caCompany` (`caCompany_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of caLocCountryRestriction
-- ----------------------------

-- ----------------------------
-- Table structure for `caLocCountryRestrictionDetail`
-- ----------------------------
DROP TABLE IF EXISTS `caLocCountryRestrictionDetail`;
CREATE TABLE `caLocCountryRestrictionDetail` (
  `caLocCountryRestriction_Id` int(10) NOT NULL DEFAULT '0',
  `caLocCountry_Id` smallint(6) NOT NULL,
  PRIMARY KEY (`caLocCountryRestriction_Id`,`caLocCountry_Id`),
  KEY `caLocCountryRestrictionDetail_caLocCountry` (`caLocCountry_Id`) USING BTREE,
  CONSTRAINT `caLocCountryRestriction_caLocCountry` FOREIGN KEY (`caLocCountry_Id`) REFERENCES `caLocCountry` (`caLocCountry_Id`),
  CONSTRAINT `caLocCountryRestriction_caLocCountryRestrictionDetail` FOREIGN KEY (`caLocCountryRestriction_Id`) REFERENCES `caLocCountryRestriction` (`caLocCountryRestriction_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of caLocCountryRestrictionDetail
-- ----------------------------

-- ----------------------------
-- Table structure for `caLocState`
-- ----------------------------
DROP TABLE IF EXISTS `caLocState`;
CREATE TABLE `caLocState` (
  `caLocState_Id` smallint(6) NOT NULL AUTO_INCREMENT,
  `caLocCountry_Id` smallint(6) DEFAULT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Small` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Note` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`caLocState_Id`),
  KEY `caLocState_caLocCountry_Id` (`caLocCountry_Id`) USING BTREE,
  CONSTRAINT `caLocState_caLocCountry_Id` FOREIGN KEY (`caLocCountry_Id`) REFERENCES `caLocCountry` (`caLocCountry_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4837 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of caLocState
-- ----------------------------
INSERT INTO `caLocState` VALUES ('1', '1', 'Badakhshān', 'BDS', null, '1');
INSERT INTO `caLocState` VALUES ('2', '1', 'Baghlān', 'BGL', null, '1');
INSERT INTO `caLocState` VALUES ('3', '1', 'Balkh', 'BAL', null, '1');
INSERT INTO `caLocState` VALUES ('4', '1', 'Bādghīs', 'BDG', null, '1');
INSERT INTO `caLocState` VALUES ('5', '1', 'Bāmyān', 'BAM', null, '1');
INSERT INTO `caLocState` VALUES ('6', '1', 'Dāykundī', 'DAY', null, '1');
INSERT INTO `caLocState` VALUES ('7', '1', 'Farāh', 'FRA', null, '1');
INSERT INTO `caLocState` VALUES ('8', '1', 'Fāryāb', 'FYB', null, '1');
INSERT INTO `caLocState` VALUES ('9', '1', 'Ghaznī', 'GHA', null, '1');
INSERT INTO `caLocState` VALUES ('10', '1', 'Ghōr', 'GHO', null, '1');
INSERT INTO `caLocState` VALUES ('11', '1', 'Helmand', 'HEL', null, '1');
INSERT INTO `caLocState` VALUES ('12', '1', 'Herāt', 'HER', null, '1');
INSERT INTO `caLocState` VALUES ('13', '1', 'Jowzjān', 'JOW', null, '1');
INSERT INTO `caLocState` VALUES ('14', '1', 'Kandahār', 'KAN', null, '1');
INSERT INTO `caLocState` VALUES ('15', '1', 'Khōst', 'KHO', null, '1');
INSERT INTO `caLocState` VALUES ('16', '1', 'Kunar', 'KNR', null, '1');
INSERT INTO `caLocState` VALUES ('17', '1', 'Kunduz', 'KDZ', null, '1');
INSERT INTO `caLocState` VALUES ('18', '1', 'Kābul', 'KAB', null, '1');
INSERT INTO `caLocState` VALUES ('19', '1', 'Kāpīsā', 'KAP', null, '1');
INSERT INTO `caLocState` VALUES ('20', '1', 'Laghmān', 'LAG', null, '1');
INSERT INTO `caLocState` VALUES ('21', '1', 'Lōgar', 'LOG', null, '1');
INSERT INTO `caLocState` VALUES ('22', '1', 'Nangarhār', 'NAN', null, '1');
INSERT INTO `caLocState` VALUES ('23', '1', 'Nīmrōz', 'NIM', null, '1');
INSERT INTO `caLocState` VALUES ('24', '1', 'Nūristān', 'NUR', null, '1');
INSERT INTO `caLocState` VALUES ('25', '1', 'Paktia', 'PIA', null, '1');
INSERT INTO `caLocState` VALUES ('26', '1', 'Paktika', 'PKA', null, '1');
INSERT INTO `caLocState` VALUES ('27', '1', 'Panjshayr', 'PAN', null, '1');
INSERT INTO `caLocState` VALUES ('28', '1', 'Parwān', 'PAR', null, '1');
INSERT INTO `caLocState` VALUES ('29', '1', 'Samangan', 'SAM', null, '1');
INSERT INTO `caLocState` VALUES ('30', '1', 'Sar-e Pul', 'SAR', null, '1');
INSERT INTO `caLocState` VALUES ('31', '1', 'Takhar', 'TAK', null, '1');
INSERT INTO `caLocState` VALUES ('32', '1', 'Uruzgān', 'URU', null, '1');
INSERT INTO `caLocState` VALUES ('33', '1', 'Wardak', 'WAR', null, '1');
INSERT INTO `caLocState` VALUES ('34', '1', 'Zābul', 'ZAB', null, '1');
INSERT INTO `caLocState` VALUES ('35', '2', 'Berat', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('36', '2', 'Berat', '1', null, '1');
INSERT INTO `caLocState` VALUES ('37', '2', 'Bulqizë', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('38', '2', 'Delvinë', 'DL', null, '1');
INSERT INTO `caLocState` VALUES ('39', '2', 'Devoll', 'DV', null, '1');
INSERT INTO `caLocState` VALUES ('40', '2', 'Dibër', 'DI', null, '1');
INSERT INTO `caLocState` VALUES ('41', '2', 'Dibër', '9', null, '1');
INSERT INTO `caLocState` VALUES ('42', '2', 'Durrës', '2', null, '1');
INSERT INTO `caLocState` VALUES ('43', '2', 'Durrës', 'DR', null, '1');
INSERT INTO `caLocState` VALUES ('44', '2', 'Elbasan', 'EL', null, '1');
INSERT INTO `caLocState` VALUES ('45', '2', 'Elbasan', '3', null, '1');
INSERT INTO `caLocState` VALUES ('46', '2', 'Fier', '4', null, '1');
INSERT INTO `caLocState` VALUES ('47', '2', 'Fier', 'FR', null, '1');
INSERT INTO `caLocState` VALUES ('48', '2', 'Gjirokastër', 'GJ', null, '1');
INSERT INTO `caLocState` VALUES ('49', '2', 'Gjirokastër', '5', null, '1');
INSERT INTO `caLocState` VALUES ('50', '2', 'Gramsh', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('51', '2', 'Has', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('52', '2', 'Kavajë', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('53', '2', 'Kolonjë', 'ER', null, '1');
INSERT INTO `caLocState` VALUES ('54', '2', 'Korçë', '6', null, '1');
INSERT INTO `caLocState` VALUES ('55', '2', 'Korçë', 'KO', null, '1');
INSERT INTO `caLocState` VALUES ('56', '2', 'Krujë', 'KR', null, '1');
INSERT INTO `caLocState` VALUES ('57', '2', 'Kukës', '7', null, '1');
INSERT INTO `caLocState` VALUES ('58', '2', 'Kukës', 'KU', null, '1');
INSERT INTO `caLocState` VALUES ('59', '2', 'Kurbin', 'KB', null, '1');
INSERT INTO `caLocState` VALUES ('60', '2', 'Kuçovë', 'KC', null, '1');
INSERT INTO `caLocState` VALUES ('61', '2', 'Lezhë', 'LE', null, '1');
INSERT INTO `caLocState` VALUES ('62', '2', 'Lezhë', '8', null, '1');
INSERT INTO `caLocState` VALUES ('63', '2', 'Librazhd', 'LB', null, '1');
INSERT INTO `caLocState` VALUES ('64', '2', 'Lushnjë', 'LU', null, '1');
INSERT INTO `caLocState` VALUES ('65', '2', 'Mallakastër', 'MK', null, '1');
INSERT INTO `caLocState` VALUES ('66', '2', 'Malësi e Madhe', 'MM', null, '1');
INSERT INTO `caLocState` VALUES ('67', '2', 'Mat', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('68', '2', 'Mirditë', 'MR', null, '1');
INSERT INTO `caLocState` VALUES ('69', '2', 'Peqin', 'PQ', null, '1');
INSERT INTO `caLocState` VALUES ('70', '2', 'Pogradec', 'PG', null, '1');
INSERT INTO `caLocState` VALUES ('71', '2', 'Pukë', 'PU', null, '1');
INSERT INTO `caLocState` VALUES ('72', '2', 'Përmet', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('73', '2', 'Sarandë', 'SR', null, '1');
INSERT INTO `caLocState` VALUES ('74', '2', 'Shkodër', '10', null, '1');
INSERT INTO `caLocState` VALUES ('75', '2', 'Shkodër', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('76', '2', 'Skrapar', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('77', '2', 'Tepelenë', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('78', '2', 'Tiranë', '11', null, '1');
INSERT INTO `caLocState` VALUES ('79', '2', 'Tiranë', 'TR', null, '1');
INSERT INTO `caLocState` VALUES ('80', '2', 'Tropojë', 'TP', null, '1');
INSERT INTO `caLocState` VALUES ('81', '2', 'Vlorë', 'VL', null, '1');
INSERT INTO `caLocState` VALUES ('82', '2', 'Vlorë', '12', null, '1');
INSERT INTO `caLocState` VALUES ('83', '3', 'Adrar', '1', null, '1');
INSERT INTO `caLocState` VALUES ('84', '3', 'Alger', '16', null, '1');
INSERT INTO `caLocState` VALUES ('85', '3', 'Annaba', '23', null, '1');
INSERT INTO `caLocState` VALUES ('86', '3', 'Aïn Defla', '44', null, '1');
INSERT INTO `caLocState` VALUES ('87', '3', 'Aïn Témouchent', '46', null, '1');
INSERT INTO `caLocState` VALUES ('88', '3', 'Batna', '5', null, '1');
INSERT INTO `caLocState` VALUES ('89', '3', 'Biskra', '7', null, '1');
INSERT INTO `caLocState` VALUES ('90', '3', 'Blida', '9', null, '1');
INSERT INTO `caLocState` VALUES ('91', '3', 'Bordj Bou Arréridj', '34', null, '1');
INSERT INTO `caLocState` VALUES ('92', '3', 'Bouira', '10', null, '1');
INSERT INTO `caLocState` VALUES ('93', '3', 'Boumerdès', '35', null, '1');
INSERT INTO `caLocState` VALUES ('94', '3', 'Béchar', '8', null, '1');
INSERT INTO `caLocState` VALUES ('95', '3', 'Béjaïa', '6', null, '1');
INSERT INTO `caLocState` VALUES ('96', '3', 'Chlef', '2', null, '1');
INSERT INTO `caLocState` VALUES ('97', '3', 'Constantine', '25', null, '1');
INSERT INTO `caLocState` VALUES ('98', '3', 'Djelfa', '17', null, '1');
INSERT INTO `caLocState` VALUES ('99', '3', 'El Bayadh', '32', null, '1');
INSERT INTO `caLocState` VALUES ('100', '3', 'El Oued', '39', null, '1');
INSERT INTO `caLocState` VALUES ('101', '3', 'El Tarf', '36', null, '1');
INSERT INTO `caLocState` VALUES ('102', '3', 'Ghardaïa', '47', null, '1');
INSERT INTO `caLocState` VALUES ('103', '3', 'Guelma', '24', null, '1');
INSERT INTO `caLocState` VALUES ('104', '3', 'Illizi', '33', null, '1');
INSERT INTO `caLocState` VALUES ('105', '3', 'Jijel', '18', null, '1');
INSERT INTO `caLocState` VALUES ('106', '3', 'Khenchela', '40', null, '1');
INSERT INTO `caLocState` VALUES ('107', '3', 'Laghouat', '3', null, '1');
INSERT INTO `caLocState` VALUES ('108', '3', 'Mascara', '29', null, '1');
INSERT INTO `caLocState` VALUES ('109', '3', 'Mila', '43', null, '1');
INSERT INTO `caLocState` VALUES ('110', '3', 'Mostaganem', '27', null, '1');
INSERT INTO `caLocState` VALUES ('111', '3', 'Msila', '28', null, '1');
INSERT INTO `caLocState` VALUES ('112', '3', 'Médéa', '26', null, '1');
INSERT INTO `caLocState` VALUES ('113', '3', 'Naama', '45', null, '1');
INSERT INTO `caLocState` VALUES ('114', '3', 'Oran', '31', null, '1');
INSERT INTO `caLocState` VALUES ('115', '3', 'Ouargla', '30', null, '1');
INSERT INTO `caLocState` VALUES ('116', '3', 'Oum el Bouaghi', '4', null, '1');
INSERT INTO `caLocState` VALUES ('117', '3', 'Relizane', '48', null, '1');
INSERT INTO `caLocState` VALUES ('118', '3', 'Saïda', '20', null, '1');
INSERT INTO `caLocState` VALUES ('119', '3', 'Sidi Bel Abbès', '22', null, '1');
INSERT INTO `caLocState` VALUES ('120', '3', 'Skikda', '21', null, '1');
INSERT INTO `caLocState` VALUES ('121', '3', 'Souk Ahras', '41', null, '1');
INSERT INTO `caLocState` VALUES ('122', '3', 'Sétif', '19', null, '1');
INSERT INTO `caLocState` VALUES ('123', '3', 'Tamanghasset', '11', null, '1');
INSERT INTO `caLocState` VALUES ('124', '3', 'Tiaret', '14', null, '1');
INSERT INTO `caLocState` VALUES ('125', '3', 'Tindouf', '37', null, '1');
INSERT INTO `caLocState` VALUES ('126', '3', 'Tipaza', '42', null, '1');
INSERT INTO `caLocState` VALUES ('127', '3', 'Tissemsilt', '38', null, '1');
INSERT INTO `caLocState` VALUES ('128', '3', 'Tizi Ouzou', '15', null, '1');
INSERT INTO `caLocState` VALUES ('129', '3', 'Tlemcen', '13', null, '1');
INSERT INTO `caLocState` VALUES ('130', '3', 'Tébessa', '12', null, '1');
INSERT INTO `caLocState` VALUES ('131', '5', 'Andorra la Vella', '7', null, '1');
INSERT INTO `caLocState` VALUES ('132', '5', 'Canillo', '2', null, '1');
INSERT INTO `caLocState` VALUES ('133', '5', 'Encamp', '3', null, '1');
INSERT INTO `caLocState` VALUES ('134', '5', 'Escaldes-Engordany', '8', null, '1');
INSERT INTO `caLocState` VALUES ('135', '5', 'La Massana', '4', null, '1');
INSERT INTO `caLocState` VALUES ('136', '5', 'Ordino', '5', null, '1');
INSERT INTO `caLocState` VALUES ('137', '5', 'Sant Julià de Lòria', '6', null, '1');
INSERT INTO `caLocState` VALUES ('138', '6', 'Bengo', 'BGO', null, '1');
INSERT INTO `caLocState` VALUES ('139', '6', 'Benguela', 'BGU', null, '1');
INSERT INTO `caLocState` VALUES ('140', '6', 'Bié', 'BIE', null, '1');
INSERT INTO `caLocState` VALUES ('141', '6', 'Cabinda', 'CAB', null, '1');
INSERT INTO `caLocState` VALUES ('142', '6', 'Cuando-Cubango', 'CCU', null, '1');
INSERT INTO `caLocState` VALUES ('143', '6', 'Cuanza Norte', 'CNO', null, '1');
INSERT INTO `caLocState` VALUES ('144', '6', 'Cuanza Sul', 'CUS', null, '1');
INSERT INTO `caLocState` VALUES ('145', '6', 'Cunene', 'CNN', null, '1');
INSERT INTO `caLocState` VALUES ('146', '6', 'Huambo', 'HUA', null, '1');
INSERT INTO `caLocState` VALUES ('147', '6', 'Huíla', 'HUI', null, '1');
INSERT INTO `caLocState` VALUES ('148', '6', 'Luanda', 'LUA', null, '1');
INSERT INTO `caLocState` VALUES ('149', '6', 'Lunda Norte', 'LNO', null, '1');
INSERT INTO `caLocState` VALUES ('150', '6', 'Lunda Sul', 'LSU', null, '1');
INSERT INTO `caLocState` VALUES ('151', '6', 'Malange', 'MAL', null, '1');
INSERT INTO `caLocState` VALUES ('152', '6', 'Moxico', 'MOX', null, '1');
INSERT INTO `caLocState` VALUES ('153', '6', 'Namibe', 'NAM', null, '1');
INSERT INTO `caLocState` VALUES ('154', '6', 'Uíge', 'UIG', null, '1');
INSERT INTO `caLocState` VALUES ('155', '6', 'Zaire', 'ZAI', null, '1');
INSERT INTO `caLocState` VALUES ('156', '9', 'Barbuda', '10', null, '1');
INSERT INTO `caLocState` VALUES ('157', '9', 'Redonda', '11', null, '1');
INSERT INTO `caLocState` VALUES ('158', '9', 'Saint George', '3', null, '1');
INSERT INTO `caLocState` VALUES ('159', '9', 'Saint John’s', '4', null, '1');
INSERT INTO `caLocState` VALUES ('160', '9', 'Saint Mary', '5', null, '1');
INSERT INTO `caLocState` VALUES ('161', '9', 'Saint Paul', '6', null, '1');
INSERT INTO `caLocState` VALUES ('162', '9', 'Saint Peter', '7', null, '1');
INSERT INTO `caLocState` VALUES ('163', '9', 'Saint Philip', '8', null, '1');
INSERT INTO `caLocState` VALUES ('164', '10', 'Buenos Aires', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('165', '10', 'Catamarca', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('166', '10', 'Chaco', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('167', '10', 'Chubut', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('168', '10', 'Ciudad Autónoma de Buenos Aires', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('169', '10', 'Corrientes', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('170', '10', 'Córdoba', 'X', null, '1');
INSERT INTO `caLocState` VALUES ('171', '10', 'Entre Ríos', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('172', '10', 'Formosa', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('173', '10', 'Jujuy', 'Y', null, '1');
INSERT INTO `caLocState` VALUES ('174', '10', 'La Pampa', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('175', '10', 'La Rioja', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('176', '10', 'Mendoza', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('177', '10', 'Misiones', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('178', '10', 'Neuquén', 'Q', null, '1');
INSERT INTO `caLocState` VALUES ('179', '10', 'Río Negro', 'R', null, '1');
INSERT INTO `caLocState` VALUES ('180', '10', 'Salta', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('181', '10', 'San Juan', 'J', null, '1');
INSERT INTO `caLocState` VALUES ('182', '10', 'San Luis', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('183', '10', 'Santa Cruz', 'Z', null, '1');
INSERT INTO `caLocState` VALUES ('184', '10', 'Santa Fe', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('185', '10', 'Santiago del Estero', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('186', '10', 'Tierra del Fuego', 'V', null, '1');
INSERT INTO `caLocState` VALUES ('187', '10', 'Tucumán', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('188', '11', 'Aragatsotn', 'AG', null, '1');
INSERT INTO `caLocState` VALUES ('189', '11', 'Ararat', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('190', '11', 'Armavir', 'AV', null, '1');
INSERT INTO `caLocState` VALUES ('191', '11', 'Erevan', 'ER', null, '1');
INSERT INTO `caLocState` VALUES ('192', '11', 'Gegark\'unik\'', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('193', '11', 'Kotayk\'', 'KT', null, '1');
INSERT INTO `caLocState` VALUES ('194', '11', 'Lory', 'LO', null, '1');
INSERT INTO `caLocState` VALUES ('195', '11', 'Syunik\'', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('196', '11', 'Tavuš', 'TV', null, '1');
INSERT INTO `caLocState` VALUES ('197', '11', 'Vayoc Jor', 'VD', null, '1');
INSERT INTO `caLocState` VALUES ('198', '11', 'Širak', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('199', '13', 'Australian Capital Territory', 'ACT', null, '1');
INSERT INTO `caLocState` VALUES ('200', '13', 'New South Wales', 'NSW', null, '1');
INSERT INTO `caLocState` VALUES ('201', '13', 'Northern Territory', 'NT', null, '1');
INSERT INTO `caLocState` VALUES ('202', '13', 'Queensland', 'QLD', null, '1');
INSERT INTO `caLocState` VALUES ('203', '13', 'South Australia', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('204', '13', 'Tasmania', 'TAS', null, '1');
INSERT INTO `caLocState` VALUES ('205', '13', 'Victoria', 'VIC', null, '1');
INSERT INTO `caLocState` VALUES ('206', '13', 'Western Australia', 'WA', null, '1');
INSERT INTO `caLocState` VALUES ('207', '14', 'Burgenland', '1', null, '1');
INSERT INTO `caLocState` VALUES ('208', '14', 'Kärnten', '2', null, '1');
INSERT INTO `caLocState` VALUES ('209', '14', 'Niederösterreich', '3', null, '1');
INSERT INTO `caLocState` VALUES ('210', '14', 'Oberösterreich', '4', null, '1');
INSERT INTO `caLocState` VALUES ('211', '14', 'Salzburg', '5', null, '1');
INSERT INTO `caLocState` VALUES ('212', '14', 'Steiermark', '6', null, '1');
INSERT INTO `caLocState` VALUES ('213', '14', 'Tirol', '7', null, '1');
INSERT INTO `caLocState` VALUES ('214', '14', 'Vorarlberg', '8', null, '1');
INSERT INTO `caLocState` VALUES ('215', '14', 'Wien', '9', null, '1');
INSERT INTO `caLocState` VALUES ('216', '15', 'Abseron', 'ABS', null, '1');
INSERT INTO `caLocState` VALUES ('217', '15', 'Agcabädi', 'AGC', null, '1');
INSERT INTO `caLocState` VALUES ('218', '15', 'Agdam', 'AGM', null, '1');
INSERT INTO `caLocState` VALUES ('219', '15', 'Agdas', 'AGS', null, '1');
INSERT INTO `caLocState` VALUES ('220', '15', 'Agstafa', 'AGA', null, '1');
INSERT INTO `caLocState` VALUES ('221', '15', 'Agsu', 'AGU', null, '1');
INSERT INTO `caLocState` VALUES ('222', '15', 'Astara', 'AST', null, '1');
INSERT INTO `caLocState` VALUES ('223', '15', 'Babäk', 'BAB', null, '1');
INSERT INTO `caLocState` VALUES ('224', '15', 'Baki', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('225', '15', 'Balakän', 'BAL', null, '1');
INSERT INTO `caLocState` VALUES ('226', '15', 'Beyläqan', 'BEY', null, '1');
INSERT INTO `caLocState` VALUES ('227', '15', 'Biläsuvar', 'BIL', null, '1');
INSERT INTO `caLocState` VALUES ('228', '15', 'Bärdä', 'BAR', null, '1');
INSERT INTO `caLocState` VALUES ('229', '15', 'Culfa', 'CUL', null, '1');
INSERT INTO `caLocState` VALUES ('230', '15', 'Cäbrayil', 'CAB', null, '1');
INSERT INTO `caLocState` VALUES ('231', '15', 'Cälilabab', 'CAL', null, '1');
INSERT INTO `caLocState` VALUES ('232', '15', 'Daskäsän', 'DAS', null, '1');
INSERT INTO `caLocState` VALUES ('233', '15', 'Füzuli', 'FUZ', null, '1');
INSERT INTO `caLocState` VALUES ('234', '15', 'Goranboy', 'GOR', null, '1');
INSERT INTO `caLocState` VALUES ('235', '15', 'Gädäbäy', 'GAD', null, '1');
INSERT INTO `caLocState` VALUES ('236', '15', 'Göygöl', 'GYG', null, '1');
INSERT INTO `caLocState` VALUES ('237', '15', 'Göyçay', 'GOY', null, '1');
INSERT INTO `caLocState` VALUES ('238', '15', 'Gəncə', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('239', '15', 'Haciqabul', 'HAC', null, '1');
INSERT INTO `caLocState` VALUES ('240', '15', 'Imisli', 'IMI', null, '1');
INSERT INTO `caLocState` VALUES ('241', '15', 'Ismayilli', 'ISM', null, '1');
INSERT INTO `caLocState` VALUES ('242', '15', 'Kälbäcär', 'KAL', null, '1');
INSERT INTO `caLocState` VALUES ('243', '15', 'Kürdämir', 'KUR', null, '1');
INSERT INTO `caLocState` VALUES ('244', '15', 'Kǝngǝrli', 'KAN', null, '1');
INSERT INTO `caLocState` VALUES ('245', '15', 'Laçin', 'LAC', null, '1');
INSERT INTO `caLocState` VALUES ('246', '15', 'Lerik', 'LER', null, '1');
INSERT INTO `caLocState` VALUES ('247', '15', 'Länkäran', 'LAN', null, '1');
INSERT INTO `caLocState` VALUES ('248', '15', 'Lənkəran', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('249', '15', 'Masalli', 'MAS', null, '1');
INSERT INTO `caLocState` VALUES ('250', '15', 'Mingəçevir', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('251', '15', 'Naftalan', 'NA', null, '1');
INSERT INTO `caLocState` VALUES ('252', '15', 'Naxçivan', 'NX', null, '1');
INSERT INTO `caLocState` VALUES ('253', '15', 'Naxçıvan', 'NV', null, '1');
INSERT INTO `caLocState` VALUES ('254', '15', 'Neftçala', 'NEF', null, '1');
INSERT INTO `caLocState` VALUES ('255', '15', 'Oguz', 'OGU', null, '1');
INSERT INTO `caLocState` VALUES ('256', '15', 'Ordubad', 'ORD', null, '1');
INSERT INTO `caLocState` VALUES ('257', '15', 'Qax', 'QAX', null, '1');
INSERT INTO `caLocState` VALUES ('258', '15', 'Qazax', 'QAZ', null, '1');
INSERT INTO `caLocState` VALUES ('259', '15', 'Qobustan', 'QOB', null, '1');
INSERT INTO `caLocState` VALUES ('260', '15', 'Quba', 'QBA', null, '1');
INSERT INTO `caLocState` VALUES ('261', '15', 'Qubadli', 'QBI', null, '1');
INSERT INTO `caLocState` VALUES ('262', '15', 'Qusar', 'QUS', null, '1');
INSERT INTO `caLocState` VALUES ('263', '15', 'Qäbälä', 'QAB', null, '1');
INSERT INTO `caLocState` VALUES ('264', '15', 'Saatli', 'SAT', null, '1');
INSERT INTO `caLocState` VALUES ('265', '15', 'Sabirabad', 'SAB', null, '1');
INSERT INTO `caLocState` VALUES ('266', '15', 'Sahbuz', 'SAH', null, '1');
INSERT INTO `caLocState` VALUES ('267', '15', 'Salyan', 'SAL', null, '1');
INSERT INTO `caLocState` VALUES ('268', '15', 'Samaxi', 'SMI', null, '1');
INSERT INTO `caLocState` VALUES ('269', '15', 'Samux', 'SMX', null, '1');
INSERT INTO `caLocState` VALUES ('270', '15', 'Siyäzän', 'SIY', null, '1');
INSERT INTO `caLocState` VALUES ('271', '15', 'Sumqayıt', 'SM', null, '1');
INSERT INTO `caLocState` VALUES ('272', '15', 'Susa', 'SUS', null, '1');
INSERT INTO `caLocState` VALUES ('273', '15', 'Sädäräk', 'SAD', null, '1');
INSERT INTO `caLocState` VALUES ('274', '15', 'Säki', 'SAK', null, '1');
INSERT INTO `caLocState` VALUES ('275', '15', 'Sämkir', 'SKR', null, '1');
INSERT INTO `caLocState` VALUES ('276', '15', 'Särur', 'SAR', null, '1');
INSERT INTO `caLocState` VALUES ('277', '15', 'Tovuz', 'TOV', null, '1');
INSERT INTO `caLocState` VALUES ('278', '15', 'Tärtär', 'TAR', null, '1');
INSERT INTO `caLocState` VALUES ('279', '15', 'Ucar', 'UCA', null, '1');
INSERT INTO `caLocState` VALUES ('280', '15', 'Xankəndi', 'XA', null, '1');
INSERT INTO `caLocState` VALUES ('281', '15', 'Xaçmaz', 'XAC', null, '1');
INSERT INTO `caLocState` VALUES ('282', '15', 'Xizi', 'XIZ', null, '1');
INSERT INTO `caLocState` VALUES ('283', '15', 'Xocali', 'XCI', null, '1');
INSERT INTO `caLocState` VALUES ('284', '15', 'Xocavänd', 'XVD', null, '1');
INSERT INTO `caLocState` VALUES ('285', '15', 'Yardimli', 'YAR', null, '1');
INSERT INTO `caLocState` VALUES ('286', '15', 'Yevlax', 'YEV', null, '1');
INSERT INTO `caLocState` VALUES ('287', '15', 'Yevlax City', 'YE', null, '1');
INSERT INTO `caLocState` VALUES ('288', '15', 'Zaqatala', 'ZAQ', null, '1');
INSERT INTO `caLocState` VALUES ('289', '15', 'Zängilan', 'ZAN', null, '1');
INSERT INTO `caLocState` VALUES ('290', '15', 'Zärdab', 'ZAR', null, '1');
INSERT INTO `caLocState` VALUES ('291', '15', 'Şabran', 'SBN', null, '1');
INSERT INTO `caLocState` VALUES ('292', '15', 'Şirvan', 'SR', null, '1');
INSERT INTO `caLocState` VALUES ('293', '15', 'Şəki', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('294', '16', 'Acklins Islands', 'AK', null, '1');
INSERT INTO `caLocState` VALUES ('295', '16', 'Berry Islands', 'BY', null, '1');
INSERT INTO `caLocState` VALUES ('296', '16', 'Bimini and Cat Cay', 'BI', null, '1');
INSERT INTO `caLocState` VALUES ('297', '16', 'Black Point', 'BP', null, '1');
INSERT INTO `caLocState` VALUES ('298', '16', 'Cat Island', 'CI', null, '1');
INSERT INTO `caLocState` VALUES ('299', '16', 'Central Abaco', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('300', '16', 'Central Andros', 'CS', null, '1');
INSERT INTO `caLocState` VALUES ('301', '16', 'Central Eleuthera', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('302', '16', 'City of Freeport', 'FP', null, '1');
INSERT INTO `caLocState` VALUES ('303', '16', 'Crooked Island and Long Cay', 'CK', null, '1');
INSERT INTO `caLocState` VALUES ('304', '16', 'East Grand Bahama', 'EG', null, '1');
INSERT INTO `caLocState` VALUES ('305', '16', 'Exuma', 'EX', null, '1');
INSERT INTO `caLocState` VALUES ('306', '16', 'Grand Cay', 'GC', null, '1');
INSERT INTO `caLocState` VALUES ('307', '16', 'Green Turtle Cay', 'GT', null, '1');
INSERT INTO `caLocState` VALUES ('308', '16', 'Harbour Island', 'HI', null, '1');
INSERT INTO `caLocState` VALUES ('309', '16', 'Hope Town', 'HT', null, '1');
INSERT INTO `caLocState` VALUES ('310', '16', 'Inagua', 'IN', null, '1');
INSERT INTO `caLocState` VALUES ('311', '16', 'Long Island', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('312', '16', 'Mangrove Cay', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('313', '16', 'Mayaguana', 'MG', null, '1');
INSERT INTO `caLocState` VALUES ('314', '16', 'Moore’s Island', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('315', '16', 'North Abaco', 'NO', null, '1');
INSERT INTO `caLocState` VALUES ('316', '16', 'North Andros', 'NS', null, '1');
INSERT INTO `caLocState` VALUES ('317', '16', 'North Eleuthera', 'NE', null, '1');
INSERT INTO `caLocState` VALUES ('318', '16', 'Ragged Island', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('319', '16', 'Rum Cay', 'RC', null, '1');
INSERT INTO `caLocState` VALUES ('320', '16', 'San Salvador', 'SS', null, '1');
INSERT INTO `caLocState` VALUES ('321', '16', 'South Abaco', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('322', '16', 'South Andros', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('323', '16', 'South Eleuthera', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('324', '16', 'Spanish Wells', 'SW', null, '1');
INSERT INTO `caLocState` VALUES ('325', '16', 'West Grand Bahama', 'WG', null, '1');
INSERT INTO `caLocState` VALUES ('326', '17', 'Al Janubiyah', '14', null, '1');
INSERT INTO `caLocState` VALUES ('327', '17', 'Al Manamah (Al ‘Asimah)', '13', null, '1');
INSERT INTO `caLocState` VALUES ('328', '17', 'Al Muharraq', '15', null, '1');
INSERT INTO `caLocState` VALUES ('329', '17', 'Al Wustá', '16', null, '1');
INSERT INTO `caLocState` VALUES ('330', '17', 'Ash Shamaliyah', '17', null, '1');
INSERT INTO `caLocState` VALUES ('331', '18', 'Bagerhat', '5', null, '1');
INSERT INTO `caLocState` VALUES ('332', '18', 'Bandarban', '1', null, '1');
INSERT INTO `caLocState` VALUES ('333', '18', 'Barguna', '2', null, '1');
INSERT INTO `caLocState` VALUES ('334', '18', 'Barisal', '6', null, '1');
INSERT INTO `caLocState` VALUES ('335', '18', 'Barisal', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('336', '18', 'Bhola', '7', null, '1');
INSERT INTO `caLocState` VALUES ('337', '18', 'Bogra', '3', null, '1');
INSERT INTO `caLocState` VALUES ('338', '18', 'Brahmanbaria', '4', null, '1');
INSERT INTO `caLocState` VALUES ('339', '18', 'Chandpur', '9', null, '1');
INSERT INTO `caLocState` VALUES ('340', '18', 'Chittagong', '10', null, '1');
INSERT INTO `caLocState` VALUES ('341', '18', 'Chittagong', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('342', '18', 'Chuadanga', '12', null, '1');
INSERT INTO `caLocState` VALUES ('343', '18', 'Comilla', '8', null, '1');
INSERT INTO `caLocState` VALUES ('344', '18', 'Cox\'s Bazar', '11', null, '1');
INSERT INTO `caLocState` VALUES ('345', '18', 'Dhaka', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('346', '18', 'Dhaka', '13', null, '1');
INSERT INTO `caLocState` VALUES ('347', '18', 'Dinajpur', '14', null, '1');
INSERT INTO `caLocState` VALUES ('348', '18', 'Faridpur', '15', null, '1');
INSERT INTO `caLocState` VALUES ('349', '18', 'Feni', '16', null, '1');
INSERT INTO `caLocState` VALUES ('350', '18', 'Gaibandha', '19', null, '1');
INSERT INTO `caLocState` VALUES ('351', '18', 'Gazipur', '18', null, '1');
INSERT INTO `caLocState` VALUES ('352', '18', 'Gopalganj', '17', null, '1');
INSERT INTO `caLocState` VALUES ('353', '18', 'Habiganj', '20', null, '1');
INSERT INTO `caLocState` VALUES ('354', '18', 'Jaipurhat', '24', null, '1');
INSERT INTO `caLocState` VALUES ('355', '18', 'Jamalpur', '21', null, '1');
INSERT INTO `caLocState` VALUES ('356', '18', 'Jessore', '22', null, '1');
INSERT INTO `caLocState` VALUES ('357', '18', 'Jhalakati', '25', null, '1');
INSERT INTO `caLocState` VALUES ('358', '18', 'Jhenaidah', '23', null, '1');
INSERT INTO `caLocState` VALUES ('359', '18', 'Khagrachari', '29', null, '1');
INSERT INTO `caLocState` VALUES ('360', '18', 'Khulna', '27', null, '1');
INSERT INTO `caLocState` VALUES ('361', '18', 'Khulna', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('362', '18', 'Kishoreganj', '26', null, '1');
INSERT INTO `caLocState` VALUES ('363', '18', 'Kurigram', '28', null, '1');
INSERT INTO `caLocState` VALUES ('364', '18', 'Kushtia', '30', null, '1');
INSERT INTO `caLocState` VALUES ('365', '18', 'Lakshmipur', '31', null, '1');
INSERT INTO `caLocState` VALUES ('366', '18', 'Lalmonirhat', '32', null, '1');
INSERT INTO `caLocState` VALUES ('367', '18', 'Madaripur', '36', null, '1');
INSERT INTO `caLocState` VALUES ('368', '18', 'Magura', '37', null, '1');
INSERT INTO `caLocState` VALUES ('369', '18', 'Manikganj', '33', null, '1');
INSERT INTO `caLocState` VALUES ('370', '18', 'Meherpur', '39', null, '1');
INSERT INTO `caLocState` VALUES ('371', '18', 'Moulvibazar', '38', null, '1');
INSERT INTO `caLocState` VALUES ('372', '18', 'Munshiganj', '35', null, '1');
INSERT INTO `caLocState` VALUES ('373', '18', 'Mymensingh', '34', null, '1');
INSERT INTO `caLocState` VALUES ('374', '18', 'Naogaon', '48', null, '1');
INSERT INTO `caLocState` VALUES ('375', '18', 'Narail', '43', null, '1');
INSERT INTO `caLocState` VALUES ('376', '18', 'Narayanganj', '40', null, '1');
INSERT INTO `caLocState` VALUES ('377', '18', 'Narsingdi', '42', null, '1');
INSERT INTO `caLocState` VALUES ('378', '18', 'Natore', '44', null, '1');
INSERT INTO `caLocState` VALUES ('379', '18', 'Nawabganj', '45', null, '1');
INSERT INTO `caLocState` VALUES ('380', '18', 'Netrakona', '41', null, '1');
INSERT INTO `caLocState` VALUES ('381', '18', 'Nilphamari', '46', null, '1');
INSERT INTO `caLocState` VALUES ('382', '18', 'Noakhali', '47', null, '1');
INSERT INTO `caLocState` VALUES ('383', '18', 'Pabna', '49', null, '1');
INSERT INTO `caLocState` VALUES ('384', '18', 'Panchagarh', '52', null, '1');
INSERT INTO `caLocState` VALUES ('385', '18', 'Patuakhali', '51', null, '1');
INSERT INTO `caLocState` VALUES ('386', '18', 'Pirojpur', '50', null, '1');
INSERT INTO `caLocState` VALUES ('387', '18', 'Rajbari', '53', null, '1');
INSERT INTO `caLocState` VALUES ('388', '18', 'Rajshahi', '54', null, '1');
INSERT INTO `caLocState` VALUES ('389', '18', 'Rajshahi', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('390', '18', 'Rangamati Parbattya Chattagram', '56', null, '1');
INSERT INTO `caLocState` VALUES ('391', '18', 'Rangpur', '55', null, '1');
INSERT INTO `caLocState` VALUES ('392', '18', 'Rangpur', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('393', '18', 'Satkhira', '58', null, '1');
INSERT INTO `caLocState` VALUES ('394', '18', 'Shariatpur', '62', null, '1');
INSERT INTO `caLocState` VALUES ('395', '18', 'Sherpur', '57', null, '1');
INSERT INTO `caLocState` VALUES ('396', '18', 'Sirajganj', '59', null, '1');
INSERT INTO `caLocState` VALUES ('397', '18', 'Sunamganj', '61', null, '1');
INSERT INTO `caLocState` VALUES ('398', '18', 'Sylhet', '60', null, '1');
INSERT INTO `caLocState` VALUES ('399', '18', 'Sylhet', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('400', '18', 'Tangail', '63', null, '1');
INSERT INTO `caLocState` VALUES ('401', '18', 'Thakurgaon', '64', null, '1');
INSERT INTO `caLocState` VALUES ('402', '19', 'Christ Church', '1', null, '1');
INSERT INTO `caLocState` VALUES ('403', '19', 'Saint Andrew', '2', null, '1');
INSERT INTO `caLocState` VALUES ('404', '19', 'Saint George', '3', null, '1');
INSERT INTO `caLocState` VALUES ('405', '19', 'Saint James', '4', null, '1');
INSERT INTO `caLocState` VALUES ('406', '19', 'Saint John', '5', null, '1');
INSERT INTO `caLocState` VALUES ('407', '19', 'Saint Joseph', '6', null, '1');
INSERT INTO `caLocState` VALUES ('408', '19', 'Saint Lucy', '7', null, '1');
INSERT INTO `caLocState` VALUES ('409', '19', 'Saint Michael', '8', null, '1');
INSERT INTO `caLocState` VALUES ('410', '19', 'Saint Peter', '9', null, '1');
INSERT INTO `caLocState` VALUES ('411', '19', 'Saint Philip', '10', null, '1');
INSERT INTO `caLocState` VALUES ('412', '19', 'Saint Thomas', '11', null, '1');
INSERT INTO `caLocState` VALUES ('413', '20', 'Brestskaya voblasts', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('414', '20', 'Homyel\'skaya voblasts', 'HO', null, '1');
INSERT INTO `caLocState` VALUES ('415', '20', 'Horad Minsk', 'HM', null, '1');
INSERT INTO `caLocState` VALUES ('416', '20', 'Hrodzenskaya voblasts', 'HR', null, '1');
INSERT INTO `caLocState` VALUES ('417', '20', 'Mahilyowskaya voblasts', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('418', '20', 'Minskaya voblasts', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('419', '20', 'Vitsyebskaya voblasts', 'VI', null, '1');
INSERT INTO `caLocState` VALUES ('420', '21', 'Antwerpen', 'VAN', null, '1');
INSERT INTO `caLocState` VALUES ('421', '21', 'Brabant Wallon', 'WBR', null, '1');
INSERT INTO `caLocState` VALUES ('422', '21', 'Brussels', 'BRU', null, '1');
INSERT INTO `caLocState` VALUES ('423', '21', 'Flemish Region', 'VLG', null, '1');
INSERT INTO `caLocState` VALUES ('424', '21', 'Hainaut', 'WHT', null, '1');
INSERT INTO `caLocState` VALUES ('425', '21', 'Limburg', 'VLI', null, '1');
INSERT INTO `caLocState` VALUES ('426', '21', 'Liège', 'WLG', null, '1');
INSERT INTO `caLocState` VALUES ('427', '21', 'Luxembourg', 'WLX', null, '1');
INSERT INTO `caLocState` VALUES ('428', '21', 'Namur', 'WNA', null, '1');
INSERT INTO `caLocState` VALUES ('429', '21', 'Oost-Vlaanderen', 'VOV', null, '1');
INSERT INTO `caLocState` VALUES ('430', '21', 'Vlaams Brabant', 'VBR', null, '1');
INSERT INTO `caLocState` VALUES ('431', '21', 'Wallonia', 'WAL', null, '1');
INSERT INTO `caLocState` VALUES ('432', '21', 'West-Vlaanderen', 'VWV', null, '1');
INSERT INTO `caLocState` VALUES ('433', '22', 'Belize', 'BZ', null, '1');
INSERT INTO `caLocState` VALUES ('434', '22', 'Cayo', 'CY', null, '1');
INSERT INTO `caLocState` VALUES ('435', '22', 'Corozal', 'CZL', null, '1');
INSERT INTO `caLocState` VALUES ('436', '22', 'Orange Walk', 'OW', null, '1');
INSERT INTO `caLocState` VALUES ('437', '22', 'Stann Creek', 'SC', null, '1');
INSERT INTO `caLocState` VALUES ('438', '22', 'Toledo', 'TOL', null, '1');
INSERT INTO `caLocState` VALUES ('439', '23', 'Alibori', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('440', '23', 'Atakora', 'AK', null, '1');
INSERT INTO `caLocState` VALUES ('441', '23', 'Atlantique', 'AQ', null, '1');
INSERT INTO `caLocState` VALUES ('442', '23', 'Borgou', 'BO', null, '1');
INSERT INTO `caLocState` VALUES ('443', '23', 'Collines', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('444', '23', 'Donga', 'DO', null, '1');
INSERT INTO `caLocState` VALUES ('445', '23', 'Kouffo', 'KO', null, '1');
INSERT INTO `caLocState` VALUES ('446', '23', 'Littoral', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('447', '23', 'Mono', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('448', '23', 'Ouémé', 'OU', null, '1');
INSERT INTO `caLocState` VALUES ('449', '23', 'Plateau', 'PL', null, '1');
INSERT INTO `caLocState` VALUES ('450', '23', 'Zou', 'ZO', null, '1');
INSERT INTO `caLocState` VALUES ('451', '24', 'Devonshire', 'DEV', null, '1');
INSERT INTO `caLocState` VALUES ('452', '24', 'Hamilton', 'HAM', null, '1');
INSERT INTO `caLocState` VALUES ('453', '24', 'Hamilton municipality', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('454', '24', 'Paget', 'PAG', null, '1');
INSERT INTO `caLocState` VALUES ('455', '24', 'Pembroke', 'PEM', null, '1');
INSERT INTO `caLocState` VALUES ('456', '24', 'Saint George', 'SGE', null, '1');
INSERT INTO `caLocState` VALUES ('457', '24', 'Saint George municipality', 'SG', null, '1');
INSERT INTO `caLocState` VALUES ('458', '24', 'Sandys', 'SAN', null, '1');
INSERT INTO `caLocState` VALUES ('459', '24', 'Smiths', 'SMI', null, '1');
INSERT INTO `caLocState` VALUES ('460', '24', 'Southampton', 'SOU', null, '1');
INSERT INTO `caLocState` VALUES ('461', '24', 'Warwick', 'WAR', null, '1');
INSERT INTO `caLocState` VALUES ('462', '25', 'Bumthang', '33', null, '1');
INSERT INTO `caLocState` VALUES ('463', '25', 'Chhukha', '12', null, '1');
INSERT INTO `caLocState` VALUES ('464', '25', 'Dagana', '22', null, '1');
INSERT INTO `caLocState` VALUES ('465', '25', 'Gasa', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('466', '25', 'Ha', '13', null, '1');
INSERT INTO `caLocState` VALUES ('467', '25', 'Lhuentse', '44', null, '1');
INSERT INTO `caLocState` VALUES ('468', '25', 'Monggar', '42', null, '1');
INSERT INTO `caLocState` VALUES ('469', '25', 'Paro', '11', null, '1');
INSERT INTO `caLocState` VALUES ('470', '25', 'Pemagatshel', '43', null, '1');
INSERT INTO `caLocState` VALUES ('471', '25', 'Punakha', '23', null, '1');
INSERT INTO `caLocState` VALUES ('472', '25', 'Samdrup Jongkha', '45', null, '1');
INSERT INTO `caLocState` VALUES ('473', '25', 'Samtse', '14', null, '1');
INSERT INTO `caLocState` VALUES ('474', '25', 'Sarpang', '31', null, '1');
INSERT INTO `caLocState` VALUES ('475', '25', 'Thimphu', '15', null, '1');
INSERT INTO `caLocState` VALUES ('476', '25', 'Trashi Yangtse', 'TY', null, '1');
INSERT INTO `caLocState` VALUES ('477', '25', 'Trashigang', '41', null, '1');
INSERT INTO `caLocState` VALUES ('478', '25', 'Trongsa', '32', null, '1');
INSERT INTO `caLocState` VALUES ('479', '25', 'Tsirang', '21', null, '1');
INSERT INTO `caLocState` VALUES ('480', '25', 'Wangdue Phodrang', '24', null, '1');
INSERT INTO `caLocState` VALUES ('481', '25', 'Zhemgang', '34', null, '1');
INSERT INTO `caLocState` VALUES ('482', '26', 'Chuquisaca', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('483', '26', 'Cochabamba', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('484', '26', 'El Beni', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('485', '26', 'La Paz', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('486', '26', 'Oruro', 'O', null, '1');
INSERT INTO `caLocState` VALUES ('487', '26', 'Pando', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('488', '26', 'Potosí', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('489', '26', 'Santa Cruz', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('490', '26', 'Tarija', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('491', '27', 'Bosansko-podrinjski kanton', '5', null, '1');
INSERT INTO `caLocState` VALUES ('492', '27', 'Brčko distrikt', 'BRC', null, '1');
INSERT INTO `caLocState` VALUES ('493', '27', 'Federacija Bosna i Hercegovina', 'BIH', null, '1');
INSERT INTO `caLocState` VALUES ('494', '27', 'Hercegova?ko-neretvanski kanton', '7', null, '1');
INSERT INTO `caLocState` VALUES ('495', '27', 'Kanton br. 10 (Livanjski kanton)', '10', null, '1');
INSERT INTO `caLocState` VALUES ('496', '27', 'Kanton Sarajevo', '9', null, '1');
INSERT INTO `caLocState` VALUES ('497', '27', 'Posavski kanton', '2', null, '1');
INSERT INTO `caLocState` VALUES ('498', '27', 'Republika Srpska', 'SRP', null, '1');
INSERT INTO `caLocState` VALUES ('499', '27', 'Srednjobosanski kanton', '6', null, '1');
INSERT INTO `caLocState` VALUES ('500', '27', 'Tuzlanski kanton', '3', null, '1');
INSERT INTO `caLocState` VALUES ('501', '27', 'Unsko-sanski kanton', '1', null, '1');
INSERT INTO `caLocState` VALUES ('502', '27', 'Zapadnohercegova?ki kanton', '8', null, '1');
INSERT INTO `caLocState` VALUES ('503', '27', 'Zeni?ko-dobojski kanton', '4', null, '1');
INSERT INTO `caLocState` VALUES ('504', '28', 'Central', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('505', '28', 'Ghanzi', 'GH', null, '1');
INSERT INTO `caLocState` VALUES ('506', '28', 'Kgalagadi', 'KG', null, '1');
INSERT INTO `caLocState` VALUES ('507', '28', 'Kgatleng', 'KL', null, '1');
INSERT INTO `caLocState` VALUES ('508', '28', 'Kweneng', 'KW', null, '1');
INSERT INTO `caLocState` VALUES ('509', '28', 'North-East', 'NE', null, '1');
INSERT INTO `caLocState` VALUES ('510', '28', 'North-West', 'NW', null, '1');
INSERT INTO `caLocState` VALUES ('511', '28', 'South-East', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('512', '28', 'Southern', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('513', '30', 'Acre', 'AC', null, '1');
INSERT INTO `caLocState` VALUES ('514', '30', 'Alagoas', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('515', '30', 'Amapá', 'AP', null, '1');
INSERT INTO `caLocState` VALUES ('516', '30', 'Amazonas', 'AM', null, '1');
INSERT INTO `caLocState` VALUES ('517', '30', 'Bahia', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('518', '30', 'Ceará', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('519', '30', 'Distrito Federal', 'DF', null, '1');
INSERT INTO `caLocState` VALUES ('520', '30', 'Espírito Santo', 'ES', null, '1');
INSERT INTO `caLocState` VALUES ('521', '30', 'Goiás', 'GO', null, '1');
INSERT INTO `caLocState` VALUES ('522', '30', 'Maranhão', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('523', '30', 'Mato Grosso', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('524', '30', 'Mato Grosso do Sul', 'MS', null, '1');
INSERT INTO `caLocState` VALUES ('525', '30', 'Minas Gerais', 'MG', null, '1');
INSERT INTO `caLocState` VALUES ('526', '30', 'Paraná', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('527', '30', 'Paraíba', 'PB', null, '1');
INSERT INTO `caLocState` VALUES ('528', '30', 'Pará', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('529', '30', 'Pernambuco', 'PE', null, '1');
INSERT INTO `caLocState` VALUES ('530', '30', 'Piauí', 'PI', null, '1');
INSERT INTO `caLocState` VALUES ('531', '30', 'Rio de Janeiro', 'RJ', null, '1');
INSERT INTO `caLocState` VALUES ('532', '30', 'Rio Grande do Norte', 'RN', null, '1');
INSERT INTO `caLocState` VALUES ('533', '30', 'Rio Grande do Sul', 'RS', null, '1');
INSERT INTO `caLocState` VALUES ('534', '30', 'Rondônia', 'RO', null, '1');
INSERT INTO `caLocState` VALUES ('535', '30', 'Roraima', 'RR', null, '1');
INSERT INTO `caLocState` VALUES ('536', '30', 'Santa Catarina', 'SC', null, '1');
INSERT INTO `caLocState` VALUES ('537', '30', 'Sergipe', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('538', '30', 'São Paulo', 'SP', null, '1');
INSERT INTO `caLocState` VALUES ('539', '30', 'Tocantins', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('540', '32', 'Belait', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('541', '32', 'Brunei-Muara', 'BM', null, '1');
INSERT INTO `caLocState` VALUES ('542', '32', 'Temburong', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('543', '32', 'Tutong', 'TU', null, '1');
INSERT INTO `caLocState` VALUES ('544', '33', 'Blagoevgrad', '1', null, '1');
INSERT INTO `caLocState` VALUES ('545', '33', 'Burgas', '2', null, '1');
INSERT INTO `caLocState` VALUES ('546', '33', 'Dobrich', '8', null, '1');
INSERT INTO `caLocState` VALUES ('547', '33', 'Gabrovo', '7', null, '1');
INSERT INTO `caLocState` VALUES ('548', '33', 'Haskovo', '26', null, '1');
INSERT INTO `caLocState` VALUES ('549', '33', 'Kardzhali', '9', null, '1');
INSERT INTO `caLocState` VALUES ('550', '33', 'Kjustendil', '10', null, '1');
INSERT INTO `caLocState` VALUES ('551', '33', 'Lovech', '11', null, '1');
INSERT INTO `caLocState` VALUES ('552', '33', 'Montana', '12', null, '1');
INSERT INTO `caLocState` VALUES ('553', '33', 'Pazardzhik', '13', null, '1');
INSERT INTO `caLocState` VALUES ('554', '33', 'Pernik', '14', null, '1');
INSERT INTO `caLocState` VALUES ('555', '33', 'Pleven', '15', null, '1');
INSERT INTO `caLocState` VALUES ('556', '33', 'Plovdiv', '16', null, '1');
INSERT INTO `caLocState` VALUES ('557', '33', 'Razgrad', '17', null, '1');
INSERT INTO `caLocState` VALUES ('558', '33', 'Ruse', '18', null, '1');
INSERT INTO `caLocState` VALUES ('559', '33', 'Silistra', '19', null, '1');
INSERT INTO `caLocState` VALUES ('560', '33', 'Sliven', '20', null, '1');
INSERT INTO `caLocState` VALUES ('561', '33', 'Smolyan', '21', null, '1');
INSERT INTO `caLocState` VALUES ('562', '33', 'Sofia', '23', null, '1');
INSERT INTO `caLocState` VALUES ('563', '33', 'Sofia-Grad', '22', null, '1');
INSERT INTO `caLocState` VALUES ('564', '33', 'Stara Zagora', '24', null, '1');
INSERT INTO `caLocState` VALUES ('565', '33', 'Targovishte', '25', null, '1');
INSERT INTO `caLocState` VALUES ('566', '33', 'Varna', '3', null, '1');
INSERT INTO `caLocState` VALUES ('567', '33', 'Veliko Tarnovo', '4', null, '1');
INSERT INTO `caLocState` VALUES ('568', '33', 'Vidin', '5', null, '1');
INSERT INTO `caLocState` VALUES ('569', '33', 'Vratsa', '6', null, '1');
INSERT INTO `caLocState` VALUES ('570', '33', 'Yambol', '28', null, '1');
INSERT INTO `caLocState` VALUES ('571', '33', 'Šumen', '27', null, '1');
INSERT INTO `caLocState` VALUES ('572', '34', 'Balé', 'BAL', null, '1');
INSERT INTO `caLocState` VALUES ('573', '34', 'Bam', 'BAM', null, '1');
INSERT INTO `caLocState` VALUES ('574', '34', 'Banwa', 'BAN', null, '1');
INSERT INTO `caLocState` VALUES ('575', '34', 'Bazèga', 'BAZ', null, '1');
INSERT INTO `caLocState` VALUES ('576', '34', 'Boucle du Mouhoun', '1', null, '1');
INSERT INTO `caLocState` VALUES ('577', '34', 'Bougouriba', 'BGR', null, '1');
INSERT INTO `caLocState` VALUES ('578', '34', 'Boulgou', 'BLG', null, '1');
INSERT INTO `caLocState` VALUES ('579', '34', 'Boulkiemdé', 'BLK', null, '1');
INSERT INTO `caLocState` VALUES ('580', '34', 'Cascades', '2', null, '1');
INSERT INTO `caLocState` VALUES ('581', '34', 'Centre', '3', null, '1');
INSERT INTO `caLocState` VALUES ('582', '34', 'Centre-Est', '4', null, '1');
INSERT INTO `caLocState` VALUES ('583', '34', 'Centre-Nord', '5', null, '1');
INSERT INTO `caLocState` VALUES ('584', '34', 'Centre-Ouest', '6', null, '1');
INSERT INTO `caLocState` VALUES ('585', '34', 'Centre-Sud', '7', null, '1');
INSERT INTO `caLocState` VALUES ('586', '34', 'Comoé', 'COM', null, '1');
INSERT INTO `caLocState` VALUES ('587', '34', 'Est', '8', null, '1');
INSERT INTO `caLocState` VALUES ('588', '34', 'Ganzourgou', 'GAN', null, '1');
INSERT INTO `caLocState` VALUES ('589', '34', 'Gnagna', 'GNA', null, '1');
INSERT INTO `caLocState` VALUES ('590', '34', 'Gourma', 'GOU', null, '1');
INSERT INTO `caLocState` VALUES ('591', '34', 'Hauts-Bassins', '9', null, '1');
INSERT INTO `caLocState` VALUES ('592', '34', 'Houet', 'HOU', null, '1');
INSERT INTO `caLocState` VALUES ('593', '34', 'Ioba', 'IOB', null, '1');
INSERT INTO `caLocState` VALUES ('594', '34', 'Kadiogo', 'KAD', null, '1');
INSERT INTO `caLocState` VALUES ('595', '34', 'Komondjari', 'KMD', null, '1');
INSERT INTO `caLocState` VALUES ('596', '34', 'Kompienga', 'KMP', null, '1');
INSERT INTO `caLocState` VALUES ('597', '34', 'Kossi', 'KOS', null, '1');
INSERT INTO `caLocState` VALUES ('598', '34', 'Koulpélogo', 'KOP', null, '1');
INSERT INTO `caLocState` VALUES ('599', '34', 'Kouritenga', 'KOT', null, '1');
INSERT INTO `caLocState` VALUES ('600', '34', 'Kourwéogo', 'KOW', null, '1');
INSERT INTO `caLocState` VALUES ('601', '34', 'Kénédougou', 'KEN', null, '1');
INSERT INTO `caLocState` VALUES ('602', '34', 'Loroum', 'LOR', null, '1');
INSERT INTO `caLocState` VALUES ('603', '34', 'Léraba', 'LER', null, '1');
INSERT INTO `caLocState` VALUES ('604', '34', 'Mouhoun', 'MOU', null, '1');
INSERT INTO `caLocState` VALUES ('605', '34', 'Nahouri', 'NAO', null, '1');
INSERT INTO `caLocState` VALUES ('606', '34', 'Namentenga', 'NAM', null, '1');
INSERT INTO `caLocState` VALUES ('607', '34', 'Nayala', 'NAY', null, '1');
INSERT INTO `caLocState` VALUES ('608', '34', 'Nord', '10', null, '1');
INSERT INTO `caLocState` VALUES ('609', '34', 'Noumbiel', 'NOU', null, '1');
INSERT INTO `caLocState` VALUES ('610', '34', 'Oubritenga', 'OUB', null, '1');
INSERT INTO `caLocState` VALUES ('611', '34', 'Oudalan', 'OUD', null, '1');
INSERT INTO `caLocState` VALUES ('612', '34', 'Passoré', 'PAS', null, '1');
INSERT INTO `caLocState` VALUES ('613', '34', 'Plateau-Central', '11', null, '1');
INSERT INTO `caLocState` VALUES ('614', '34', 'Poni', 'PON', null, '1');
INSERT INTO `caLocState` VALUES ('615', '34', 'Sahel', '12', null, '1');
INSERT INTO `caLocState` VALUES ('616', '34', 'Sanguié', 'SNG', null, '1');
INSERT INTO `caLocState` VALUES ('617', '34', 'Sanmatenga', 'SMT', null, '1');
INSERT INTO `caLocState` VALUES ('618', '34', 'Sissili', 'SIS', null, '1');
INSERT INTO `caLocState` VALUES ('619', '34', 'Soum', 'SOM', null, '1');
INSERT INTO `caLocState` VALUES ('620', '34', 'Sourou', 'SOR', null, '1');
INSERT INTO `caLocState` VALUES ('621', '34', 'Sud-Ouest', '13', null, '1');
INSERT INTO `caLocState` VALUES ('622', '34', 'Séno', 'SEN', null, '1');
INSERT INTO `caLocState` VALUES ('623', '34', 'Tapoa', 'TAP', null, '1');
INSERT INTO `caLocState` VALUES ('624', '34', 'Tui', 'TUI', null, '1');
INSERT INTO `caLocState` VALUES ('625', '34', 'Yagha', 'YAG', null, '1');
INSERT INTO `caLocState` VALUES ('626', '34', 'Yatenga', 'YAT', null, '1');
INSERT INTO `caLocState` VALUES ('627', '34', 'Ziro', 'ZIR', null, '1');
INSERT INTO `caLocState` VALUES ('628', '34', 'Zondoma', 'ZON', null, '1');
INSERT INTO `caLocState` VALUES ('629', '34', 'Zoundwéogo', 'ZOU', null, '1');
INSERT INTO `caLocState` VALUES ('630', '35', 'Bubanza', 'BB', null, '1');
INSERT INTO `caLocState` VALUES ('631', '35', 'Bujumbura Mairie', 'BM', null, '1');
INSERT INTO `caLocState` VALUES ('632', '35', 'Bujumbura Rural', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('633', '35', 'Bururi', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('634', '35', 'Cankuzo', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('635', '35', 'Cibitoke', 'CI', null, '1');
INSERT INTO `caLocState` VALUES ('636', '35', 'Gitega', 'GI', null, '1');
INSERT INTO `caLocState` VALUES ('637', '35', 'Karuzi', 'KR', null, '1');
INSERT INTO `caLocState` VALUES ('638', '35', 'Kayanza', 'KY', null, '1');
INSERT INTO `caLocState` VALUES ('639', '35', 'Kirundo', 'KI', null, '1');
INSERT INTO `caLocState` VALUES ('640', '35', 'Makamba', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('641', '35', 'Muramvya', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('642', '35', 'Muyinga', 'MY', null, '1');
INSERT INTO `caLocState` VALUES ('643', '35', 'Mwaro', 'MW', null, '1');
INSERT INTO `caLocState` VALUES ('644', '35', 'Ngozi', 'NG', null, '1');
INSERT INTO `caLocState` VALUES ('645', '35', 'Rutana', 'RT', null, '1');
INSERT INTO `caLocState` VALUES ('646', '35', 'Ruyigi', 'RY', null, '1');
INSERT INTO `caLocState` VALUES ('647', '36', 'Baat Dambang [Batdâmbâng]', '2', null, '1');
INSERT INTO `caLocState` VALUES ('648', '36', 'Banteay Mean Chey [Bântéay Méanchey]', '1', null, '1');
INSERT INTO `caLocState` VALUES ('649', '36', 'Kampong Chaam [Kâmpóng Cham]', '3', null, '1');
INSERT INTO `caLocState` VALUES ('650', '36', 'Kampong Chhnang [Kâmpóng Chhnang]', '4', null, '1');
INSERT INTO `caLocState` VALUES ('651', '36', 'Kampong Spueu [Kâmpóng Spœ]', '5', null, '1');
INSERT INTO `caLocState` VALUES ('652', '36', 'Kampong Thum [Kâmpóng Thum]', '6', null, '1');
INSERT INTO `caLocState` VALUES ('653', '36', 'Kampot [Kâmpôt]', '7', null, '1');
INSERT INTO `caLocState` VALUES ('654', '36', 'Kandaal [Kândal]', '8', null, '1');
INSERT INTO `caLocState` VALUES ('655', '36', 'Kaoh Kong [Kaôh Kong]', '9', null, '1');
INSERT INTO `caLocState` VALUES ('656', '36', 'Kracheh [Krâchéh]', '10', null, '1');
INSERT INTO `caLocState` VALUES ('657', '36', 'Krong Kaeb [Krong Kêb]', '23', null, '1');
INSERT INTO `caLocState` VALUES ('658', '36', 'Krong Pailin [Krong Pailin]', '24', null, '1');
INSERT INTO `caLocState` VALUES ('659', '36', 'Krong Preah Sihanouk [Krong Preah Sihanouk]', '18', null, '1');
INSERT INTO `caLocState` VALUES ('660', '36', 'Mondol Kiri [Môndól Kiri]', '11', null, '1');
INSERT INTO `caLocState` VALUES ('661', '36', 'Otdar Mean Chey [Otdâr Méanchey]', '22', null, '1');
INSERT INTO `caLocState` VALUES ('662', '36', 'Phnom Penh [Phnum Pénh]', '12', null, '1');
INSERT INTO `caLocState` VALUES ('663', '36', 'Pousaat [Pouthisat]', '15', null, '1');
INSERT INTO `caLocState` VALUES ('664', '36', 'Preah Vihear [Preah Vihéar]', '13', null, '1');
INSERT INTO `caLocState` VALUES ('665', '36', 'Prey Veaeng [Prey Vêng]', '14', null, '1');
INSERT INTO `caLocState` VALUES ('666', '36', 'Rotanak Kiri [Rôtânôkiri]', '16', null, '1');
INSERT INTO `caLocState` VALUES ('667', '36', 'Siem Reab [Siemréab]', '17', null, '1');
INSERT INTO `caLocState` VALUES ('668', '36', 'Stueng Traeng [Stœ?ng Trêng]', '19', null, '1');
INSERT INTO `caLocState` VALUES ('669', '36', 'Svaay Rieng [Svay Rieng]', '20', null, '1');
INSERT INTO `caLocState` VALUES ('670', '36', 'Taakaev [Takêv]', '21', null, '1');
INSERT INTO `caLocState` VALUES ('671', '37', 'Adamaoua', 'AD', null, '1');
INSERT INTO `caLocState` VALUES ('672', '37', 'Centre', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('673', '37', 'East', 'ES', null, '1');
INSERT INTO `caLocState` VALUES ('674', '37', 'Far North', 'EN', null, '1');
INSERT INTO `caLocState` VALUES ('675', '37', 'Littoral', 'LT', null, '1');
INSERT INTO `caLocState` VALUES ('676', '37', 'North', 'NO', null, '1');
INSERT INTO `caLocState` VALUES ('677', '37', 'North-West', 'NW', null, '1');
INSERT INTO `caLocState` VALUES ('678', '37', 'South', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('679', '37', 'South-West', 'SW', null, '1');
INSERT INTO `caLocState` VALUES ('680', '37', 'West', 'OU', null, '1');
INSERT INTO `caLocState` VALUES ('681', '38', 'Alberta', 'AB', null, '1');
INSERT INTO `caLocState` VALUES ('682', '38', 'British Columbia', 'BC', null, '1');
INSERT INTO `caLocState` VALUES ('683', '38', 'Manitoba', 'MB', null, '1');
INSERT INTO `caLocState` VALUES ('684', '38', 'New Brunswick', 'NB', null, '1');
INSERT INTO `caLocState` VALUES ('685', '38', 'Newfoundland and Labrador', 'NL', null, '1');
INSERT INTO `caLocState` VALUES ('686', '38', 'Northwest Territories', 'NT', null, '1');
INSERT INTO `caLocState` VALUES ('687', '38', 'Nova Scotia', 'NS', null, '1');
INSERT INTO `caLocState` VALUES ('688', '38', 'Nunavut', 'NU', null, '1');
INSERT INTO `caLocState` VALUES ('689', '38', 'Ontario', 'ON', null, '1');
INSERT INTO `caLocState` VALUES ('690', '38', 'Prince Edward Island', 'PE', null, '1');
INSERT INTO `caLocState` VALUES ('691', '38', 'Quebec', 'QC', null, '1');
INSERT INTO `caLocState` VALUES ('692', '38', 'Saskatchewan', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('693', '38', 'Yukon Territory', 'YT', null, '1');
INSERT INTO `caLocState` VALUES ('694', '39', 'Boa Vista', 'BV', null, '1');
INSERT INTO `caLocState` VALUES ('695', '39', 'Brava', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('696', '39', 'Ilhas de Barlavento', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('697', '39', 'Ilhas de Sotavento', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('698', '39', 'Maio', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('699', '39', 'Mosteiros', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('700', '39', 'Paul', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('701', '39', 'Porto Novo', 'PN', null, '1');
INSERT INTO `caLocState` VALUES ('702', '39', 'Praia', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('703', '39', 'Ribeira Brava', 'RB', null, '1');
INSERT INTO `caLocState` VALUES ('704', '39', 'Ribeira Grande', 'RG', null, '1');
INSERT INTO `caLocState` VALUES ('705', '39', 'Ribeira Grande de Santiago', 'RS', null, '1');
INSERT INTO `caLocState` VALUES ('706', '39', 'Sal', 'SL', null, '1');
INSERT INTO `caLocState` VALUES ('707', '39', 'Santa Catarina', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('708', '39', 'Santa Catarina do Fogo', 'CF', null, '1');
INSERT INTO `caLocState` VALUES ('709', '39', 'Santa Cruz', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('710', '39', 'São Domingos', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('711', '39', 'São Filipe', 'SF', null, '1');
INSERT INTO `caLocState` VALUES ('712', '39', 'São Lourenço dos Órgãos', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('713', '39', 'São Miguel', 'SM', null, '1');
INSERT INTO `caLocState` VALUES ('714', '39', 'São Salvador do Mundo', 'SS', null, '1');
INSERT INTO `caLocState` VALUES ('715', '39', 'São Vicente', 'SV', null, '1');
INSERT INTO `caLocState` VALUES ('716', '39', 'Tarrafal', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('717', '39', 'Tarrafal de São Nicolau', 'TS', null, '1');
INSERT INTO `caLocState` VALUES ('718', '40', 'Bodden Town', '01~', null, '1');
INSERT INTO `caLocState` VALUES ('719', '40', 'Cayman Brac', '02~', null, '1');
INSERT INTO `caLocState` VALUES ('720', '40', 'East End', '03~', null, '1');
INSERT INTO `caLocState` VALUES ('721', '40', 'George Town', '04~', null, '1');
INSERT INTO `caLocState` VALUES ('722', '40', 'Little Cayman', '05~', null, '1');
INSERT INTO `caLocState` VALUES ('723', '40', 'North Side', '06~', null, '1');
INSERT INTO `caLocState` VALUES ('724', '40', 'West Bay', '07~', null, '1');
INSERT INTO `caLocState` VALUES ('725', '41', 'Bamingui-Bangoran', 'BB', null, '1');
INSERT INTO `caLocState` VALUES ('726', '41', 'Bangui', 'BGF', null, '1');
INSERT INTO `caLocState` VALUES ('727', '41', 'Basse-Kotto', 'BK', null, '1');
INSERT INTO `caLocState` VALUES ('728', '41', 'Gribingui', 'KB', null, '1');
INSERT INTO `caLocState` VALUES ('729', '41', 'Haut-Mbomou', 'HM', null, '1');
INSERT INTO `caLocState` VALUES ('730', '41', 'Haute-Kotto', 'HK', null, '1');
INSERT INTO `caLocState` VALUES ('731', '41', 'Haute-Sangha / Mambéré-Kadéï', 'HS', null, '1');
INSERT INTO `caLocState` VALUES ('732', '41', 'Kémo-Gribingui', 'KG', null, '1');
INSERT INTO `caLocState` VALUES ('733', '41', 'Lobaye', 'LB', null, '1');
INSERT INTO `caLocState` VALUES ('734', '41', 'Mbomou', 'MB', null, '1');
INSERT INTO `caLocState` VALUES ('735', '41', 'Nana-Mambéré', 'NM', null, '1');
INSERT INTO `caLocState` VALUES ('736', '41', 'Ombella-Mpoko', 'MP', null, '1');
INSERT INTO `caLocState` VALUES ('737', '41', 'Ouaka', 'UK', null, '1');
INSERT INTO `caLocState` VALUES ('738', '41', 'Ouham', 'AC', null, '1');
INSERT INTO `caLocState` VALUES ('739', '41', 'Ouham-Pendé', 'OP', null, '1');
INSERT INTO `caLocState` VALUES ('740', '41', 'Sangha', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('741', '41', 'Vakaga', 'VK', null, '1');
INSERT INTO `caLocState` VALUES ('742', '42', 'Al Baṭḩah', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('743', '42', 'Al Buḩayrah', 'LC', null, '1');
INSERT INTO `caLocState` VALUES ('744', '42', 'Baḩr al Ghazāl', 'BG', null, '1');
INSERT INTO `caLocState` VALUES ('745', '42', 'Būrkū', 'BO', null, '1');
INSERT INTO `caLocState` VALUES ('746', '42', 'Innīdī', 'EN', null, '1');
INSERT INTO `caLocState` VALUES ('747', '42', 'Kānim', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('748', '42', 'Lūqūn al Gharbī', 'LO', null, '1');
INSERT INTO `caLocState` VALUES ('749', '42', 'Lūqūn ash Sharqī', 'LR', null, '1');
INSERT INTO `caLocState` VALUES ('750', '42', 'Madīnat Injamīnā', 'ND', null, '1');
INSERT INTO `caLocState` VALUES ('751', '42', 'Māndūl', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('752', '42', 'Māyū Kībbī al Gharbī', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('753', '42', 'Māyū Kībbī ash Sharqī', 'ME', null, '1');
INSERT INTO `caLocState` VALUES ('754', '42', 'Qīrā', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('755', '42', 'Salāmāt', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('756', '42', 'Shārī al Awsaṭ', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('757', '42', 'Shārī Bāqirmī', 'CB', null, '1');
INSERT INTO `caLocState` VALUES ('758', '42', 'Sīlā', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('759', '42', 'Tibastī', 'TI', null, '1');
INSERT INTO `caLocState` VALUES ('760', '42', 'Tānjilī', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('761', '42', 'Waddāy', 'OD', null, '1');
INSERT INTO `caLocState` VALUES ('762', '42', 'Wādī Fīrā', 'WF', null, '1');
INSERT INTO `caLocState` VALUES ('763', '42', 'Ḥajjar Lamīs', 'HL', null, '1');
INSERT INTO `caLocState` VALUES ('764', '43', 'Aisén del General Carlos Ibáñez del Campo', 'AI', null, '1');
INSERT INTO `caLocState` VALUES ('765', '43', 'Antofagasta', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('766', '43', 'Araucanía', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('767', '43', 'Arica y Parinacota', 'AP', null, '1');
INSERT INTO `caLocState` VALUES ('768', '43', 'Atacama', 'AT', null, '1');
INSERT INTO `caLocState` VALUES ('769', '43', 'Bío-Bío', 'BI', null, '1');
INSERT INTO `caLocState` VALUES ('770', '43', 'Coquimbo', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('771', '43', 'Libertador General Bernardo O\'Higgins', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('772', '43', 'Los Lagos', 'LL', null, '1');
INSERT INTO `caLocState` VALUES ('773', '43', 'Los Ríos', 'LR', null, '1');
INSERT INTO `caLocState` VALUES ('774', '43', 'Magallanes', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('775', '43', 'Maule', 'ML', null, '1');
INSERT INTO `caLocState` VALUES ('776', '43', 'Región Metropolitana de Santiago', 'RM', null, '1');
INSERT INTO `caLocState` VALUES ('777', '43', 'Tarapacá', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('778', '43', 'Valparaíso', 'VS', null, '1');
INSERT INTO `caLocState` VALUES ('779', '44', 'Anhui', '34', null, '1');
INSERT INTO `caLocState` VALUES ('780', '44', 'Aomen (zh) ***', '92', null, '1');
INSERT INTO `caLocState` VALUES ('781', '44', 'Beijing', '11', null, '1');
INSERT INTO `caLocState` VALUES ('782', '44', 'Chongqing', '50', null, '1');
INSERT INTO `caLocState` VALUES ('783', '44', 'Fujian', '35', null, '1');
INSERT INTO `caLocState` VALUES ('784', '44', 'Gansu', '62', null, '1');
INSERT INTO `caLocState` VALUES ('785', '44', 'Guangdong', '44', null, '1');
INSERT INTO `caLocState` VALUES ('786', '44', 'Guangxi', '45', null, '1');
INSERT INTO `caLocState` VALUES ('787', '44', 'Guizhou', '52', null, '1');
INSERT INTO `caLocState` VALUES ('788', '44', 'Hainan', '46', null, '1');
INSERT INTO `caLocState` VALUES ('789', '44', 'Hebei', '13', null, '1');
INSERT INTO `caLocState` VALUES ('790', '44', 'Heilongjiang', '23', null, '1');
INSERT INTO `caLocState` VALUES ('791', '44', 'Henan', '41', null, '1');
INSERT INTO `caLocState` VALUES ('792', '44', 'Hubei', '42', null, '1');
INSERT INTO `caLocState` VALUES ('793', '44', 'Hunan', '43', null, '1');
INSERT INTO `caLocState` VALUES ('794', '44', 'Jiangsu', '32', null, '1');
INSERT INTO `caLocState` VALUES ('795', '44', 'Jiangxi', '36', null, '1');
INSERT INTO `caLocState` VALUES ('796', '44', 'Jilin', '22', null, '1');
INSERT INTO `caLocState` VALUES ('797', '44', 'Liaoning', '21', null, '1');
INSERT INTO `caLocState` VALUES ('798', '44', 'Nei Mongol (mn)', '15', null, '1');
INSERT INTO `caLocState` VALUES ('799', '44', 'Ningxia', '64', null, '1');
INSERT INTO `caLocState` VALUES ('800', '44', 'Qinghai', '63', null, '1');
INSERT INTO `caLocState` VALUES ('801', '44', 'Shaanxi', '61', null, '1');
INSERT INTO `caLocState` VALUES ('802', '44', 'Shandong', '37', null, '1');
INSERT INTO `caLocState` VALUES ('803', '44', 'Shanghai', '31', null, '1');
INSERT INTO `caLocState` VALUES ('804', '44', 'Shanxi', '14', null, '1');
INSERT INTO `caLocState` VALUES ('805', '44', 'Sichuan', '51', null, '1');
INSERT INTO `caLocState` VALUES ('806', '44', 'Taiwan *', '71', null, '1');
INSERT INTO `caLocState` VALUES ('807', '44', 'Tianjin', '12', null, '1');
INSERT INTO `caLocState` VALUES ('808', '44', 'Xianggang (zh) **', '91', null, '1');
INSERT INTO `caLocState` VALUES ('809', '44', 'Xinjiang', '65', null, '1');
INSERT INTO `caLocState` VALUES ('810', '44', 'Xizang', '54', null, '1');
INSERT INTO `caLocState` VALUES ('811', '44', 'Yunnan', '53', null, '1');
INSERT INTO `caLocState` VALUES ('812', '44', 'Zhejiang', '33', null, '1');
INSERT INTO `caLocState` VALUES ('813', '47', 'Amazonas', 'AMA', null, '1');
INSERT INTO `caLocState` VALUES ('814', '47', 'Antioquia', 'ANT', null, '1');
INSERT INTO `caLocState` VALUES ('815', '47', 'Arauca', 'ARA', null, '1');
INSERT INTO `caLocState` VALUES ('816', '47', 'Atlántico', 'ATL', null, '1');
INSERT INTO `caLocState` VALUES ('817', '47', 'Bolívar', 'BOL', null, '1');
INSERT INTO `caLocState` VALUES ('818', '47', 'Boyacá', 'BOY', null, '1');
INSERT INTO `caLocState` VALUES ('819', '47', 'Caldas', 'CAL', null, '1');
INSERT INTO `caLocState` VALUES ('820', '47', 'Caquetá', 'CAQ', null, '1');
INSERT INTO `caLocState` VALUES ('821', '47', 'Casanare', 'CAS', null, '1');
INSERT INTO `caLocState` VALUES ('822', '47', 'Cauca', 'CAU', null, '1');
INSERT INTO `caLocState` VALUES ('823', '47', 'Cesar', 'CES', null, '1');
INSERT INTO `caLocState` VALUES ('824', '47', 'Chocó', 'CHO', null, '1');
INSERT INTO `caLocState` VALUES ('825', '47', 'Cundinamarca', 'CUN', null, '1');
INSERT INTO `caLocState` VALUES ('826', '47', 'Córdoba', 'COR', null, '1');
INSERT INTO `caLocState` VALUES ('827', '47', 'Distrito Capital de Bogotá', 'DC', null, '1');
INSERT INTO `caLocState` VALUES ('828', '47', 'Guainía', 'GUA', null, '1');
INSERT INTO `caLocState` VALUES ('829', '47', 'Guaviare', 'GUV', null, '1');
INSERT INTO `caLocState` VALUES ('830', '47', 'Huila', 'HUI', null, '1');
INSERT INTO `caLocState` VALUES ('831', '47', 'La Guajira', 'LAG', null, '1');
INSERT INTO `caLocState` VALUES ('832', '47', 'Magdalena', 'MAG', null, '1');
INSERT INTO `caLocState` VALUES ('833', '47', 'Meta', 'MET', null, '1');
INSERT INTO `caLocState` VALUES ('834', '47', 'Nariño', 'NAR', null, '1');
INSERT INTO `caLocState` VALUES ('835', '47', 'Norte de Santander', 'NSA', null, '1');
INSERT INTO `caLocState` VALUES ('836', '47', 'Putumayo', 'PUT', null, '1');
INSERT INTO `caLocState` VALUES ('837', '47', 'Quindío', 'QUI', null, '1');
INSERT INTO `caLocState` VALUES ('838', '47', 'Risaralda', 'RIS', null, '1');
INSERT INTO `caLocState` VALUES ('839', '47', 'San Andrés, Providencia y Santa Catalina', 'SAP', null, '1');
INSERT INTO `caLocState` VALUES ('840', '47', 'Santander', 'SAN', null, '1');
INSERT INTO `caLocState` VALUES ('841', '47', 'Sucre', 'SUC', null, '1');
INSERT INTO `caLocState` VALUES ('842', '47', 'Tolima', 'TOL', null, '1');
INSERT INTO `caLocState` VALUES ('843', '47', 'Valle del Cauca', 'VAC', null, '1');
INSERT INTO `caLocState` VALUES ('844', '47', 'Vaupés', 'VAU', null, '1');
INSERT INTO `caLocState` VALUES ('845', '47', 'Vichada', 'VID', null, '1');
INSERT INTO `caLocState` VALUES ('846', '48', 'Andjazîdja', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('847', '48', 'Andjouân (Anjwān)', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('848', '48', 'Moûhîlî (Mūhīlī)', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('849', '50', 'Bouenza', '11', null, '1');
INSERT INTO `caLocState` VALUES ('850', '50', 'Brazzaville', 'BZV', null, '1');
INSERT INTO `caLocState` VALUES ('851', '50', 'Cuvette', '8', null, '1');
INSERT INTO `caLocState` VALUES ('852', '50', 'Cuvette-Ouest', '15', null, '1');
INSERT INTO `caLocState` VALUES ('853', '50', 'Kouilou', '5', null, '1');
INSERT INTO `caLocState` VALUES ('854', '50', 'Likouala', '7', null, '1');
INSERT INTO `caLocState` VALUES ('855', '50', 'Lékoumou', '2', null, '1');
INSERT INTO `caLocState` VALUES ('856', '50', 'Niari', '9', null, '1');
INSERT INTO `caLocState` VALUES ('857', '50', 'Plateaux', '14', null, '1');
INSERT INTO `caLocState` VALUES ('858', '50', 'Pool', '12', null, '1');
INSERT INTO `caLocState` VALUES ('859', '50', 'Sangha', '13', null, '1');
INSERT INTO `caLocState` VALUES ('860', '49', 'Bandundu', 'BN', null, '1');
INSERT INTO `caLocState` VALUES ('861', '49', 'Bas-Congo', 'BC', null, '1');
INSERT INTO `caLocState` VALUES ('862', '49', 'Kasai-Occidental', 'KW', null, '1');
INSERT INTO `caLocState` VALUES ('863', '49', 'Kasai-Oriental', 'KE', null, '1');
INSERT INTO `caLocState` VALUES ('864', '49', 'Katanga', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('865', '49', 'Kinshasa', 'KN', null, '1');
INSERT INTO `caLocState` VALUES ('866', '49', 'Maniema', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('867', '49', 'Nord-Kivu', 'NK', null, '1');
INSERT INTO `caLocState` VALUES ('868', '49', 'Orientale', 'OR', null, '1');
INSERT INTO `caLocState` VALUES ('869', '49', 'Sud-Kivu', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('870', '49', 'Équateur', 'EQ', null, '1');
INSERT INTO `caLocState` VALUES ('871', '52', 'Alajuela', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('872', '52', 'Cartago', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('873', '52', 'Guanacaste', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('874', '52', 'Heredia', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('875', '52', 'Limón', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('876', '52', 'Puntarenas', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('877', '52', 'San José', 'SJ', null, '1');
INSERT INTO `caLocState` VALUES ('878', '54', 'Bjelovarsko-bilogorska županija', '7', null, '1');
INSERT INTO `caLocState` VALUES ('879', '54', 'Brodsko-posavska županija', '12', null, '1');
INSERT INTO `caLocState` VALUES ('880', '54', 'Dubrovacko-neretvanska županija', '19', null, '1');
INSERT INTO `caLocState` VALUES ('881', '54', 'Grad Zagreb', '21', null, '1');
INSERT INTO `caLocState` VALUES ('882', '54', 'Istarska županija', '18', null, '1');
INSERT INTO `caLocState` VALUES ('883', '54', 'Karlovacka županija', '4', null, '1');
INSERT INTO `caLocState` VALUES ('884', '54', 'Koprivnicko-križevacka županija', '6', null, '1');
INSERT INTO `caLocState` VALUES ('885', '54', 'Krapinsko-zagorska županija', '2', null, '1');
INSERT INTO `caLocState` VALUES ('886', '54', 'Licko-senjska županija', '9', null, '1');
INSERT INTO `caLocState` VALUES ('887', '54', 'Medimurska županija', '20', null, '1');
INSERT INTO `caLocState` VALUES ('888', '54', 'Osjecko-baranjska županija', '14', null, '1');
INSERT INTO `caLocState` VALUES ('889', '54', 'Požeško-slavonska županija', '11', null, '1');
INSERT INTO `caLocState` VALUES ('890', '54', 'Primorsko-goranska županija', '8', null, '1');
INSERT INTO `caLocState` VALUES ('891', '54', 'Sisacko-moslavacka županija', '3', null, '1');
INSERT INTO `caLocState` VALUES ('892', '54', 'Splitsko-dalmatinska županija', '17', null, '1');
INSERT INTO `caLocState` VALUES ('893', '54', 'Varaždinska županija', '5', null, '1');
INSERT INTO `caLocState` VALUES ('894', '54', 'Viroviticko-podravska županija', '10', null, '1');
INSERT INTO `caLocState` VALUES ('895', '54', 'Vukovarsko-srijemska županija', '16', null, '1');
INSERT INTO `caLocState` VALUES ('896', '54', 'Zadarska županija', '13', null, '1');
INSERT INTO `caLocState` VALUES ('897', '54', 'Zagrebacka županija', '1', null, '1');
INSERT INTO `caLocState` VALUES ('898', '54', 'Šibensko-kninska županija', '15', null, '1');
INSERT INTO `caLocState` VALUES ('899', '55', 'Camagüey', '9', null, '1');
INSERT INTO `caLocState` VALUES ('900', '55', 'Ciego de Ávila', '8', null, '1');
INSERT INTO `caLocState` VALUES ('901', '55', 'Cienfuegos', '6', null, '1');
INSERT INTO `caLocState` VALUES ('902', '55', 'Ciudad de La Habana', '3', null, '1');
INSERT INTO `caLocState` VALUES ('903', '55', 'Granma', '12', null, '1');
INSERT INTO `caLocState` VALUES ('904', '55', 'Guantánamo', '14', null, '1');
INSERT INTO `caLocState` VALUES ('905', '55', 'Holguín', '11', null, '1');
INSERT INTO `caLocState` VALUES ('906', '55', 'Isla de la Juventud', '99', null, '1');
INSERT INTO `caLocState` VALUES ('907', '55', 'La Habana', '2', null, '1');
INSERT INTO `caLocState` VALUES ('908', '55', 'Las Tunas', '10', null, '1');
INSERT INTO `caLocState` VALUES ('909', '55', 'Matanzas', '4', null, '1');
INSERT INTO `caLocState` VALUES ('910', '55', 'Pinar del Río', '1', null, '1');
INSERT INTO `caLocState` VALUES ('911', '55', 'Sancti Spíritus', '7', null, '1');
INSERT INTO `caLocState` VALUES ('912', '55', 'Santiago de Cuba', '13', null, '1');
INSERT INTO `caLocState` VALUES ('913', '55', 'Villa Clara', '5', null, '1');
INSERT INTO `caLocState` VALUES ('914', '56', 'Ammochostos', '4', null, '1');
INSERT INTO `caLocState` VALUES ('915', '56', 'Keryneia', '6', null, '1');
INSERT INTO `caLocState` VALUES ('916', '56', 'Larnaka', '3', null, '1');
INSERT INTO `caLocState` VALUES ('917', '56', 'Lefkosia', '1', null, '1');
INSERT INTO `caLocState` VALUES ('918', '56', 'Lemesos', '2', null, '1');
INSERT INTO `caLocState` VALUES ('919', '56', 'Pafos', '5', null, '1');
INSERT INTO `caLocState` VALUES ('920', '57', 'Benešov', '201', null, '1');
INSERT INTO `caLocState` VALUES ('921', '57', 'Beroun', '202', null, '1');
INSERT INTO `caLocState` VALUES ('922', '57', 'Blansko', '621', null, '1');
INSERT INTO `caLocState` VALUES ('923', '57', 'Brno-město', '622', null, '1');
INSERT INTO `caLocState` VALUES ('924', '57', 'Brno-venkov', '623', null, '1');
INSERT INTO `caLocState` VALUES ('925', '57', 'Bruntál', '801', null, '1');
INSERT INTO `caLocState` VALUES ('926', '57', 'Břeclav', '624', null, '1');
INSERT INTO `caLocState` VALUES ('927', '57', 'Cheb', '411', null, '1');
INSERT INTO `caLocState` VALUES ('928', '57', 'Chomutov', '422', null, '1');
INSERT INTO `caLocState` VALUES ('929', '57', 'Chrudim', '531', null, '1');
INSERT INTO `caLocState` VALUES ('930', '57', 'Domažlice', '321', null, '1');
INSERT INTO `caLocState` VALUES ('931', '57', 'Děčín', '421', null, '1');
INSERT INTO `caLocState` VALUES ('932', '57', 'Frýdek Místek', '802', null, '1');
INSERT INTO `caLocState` VALUES ('933', '57', 'Havlíčkův Brod', '611', null, '1');
INSERT INTO `caLocState` VALUES ('934', '57', 'Hodonín', '625', null, '1');
INSERT INTO `caLocState` VALUES ('935', '57', 'Hradec Králové', '521', null, '1');
INSERT INTO `caLocState` VALUES ('936', '57', 'Jablonec nad Nisou', '512', null, '1');
INSERT INTO `caLocState` VALUES ('937', '57', 'Jeseník', '711', null, '1');
INSERT INTO `caLocState` VALUES ('938', '57', 'Jihlava', '612', null, '1');
INSERT INTO `caLocState` VALUES ('939', '57', 'Jihoceský kraj', 'JC', null, '1');
INSERT INTO `caLocState` VALUES ('940', '57', 'Jihomoravský kraj', 'JM', null, '1');
INSERT INTO `caLocState` VALUES ('941', '57', 'Jindřichův Hradec', '313', null, '1');
INSERT INTO `caLocState` VALUES ('942', '57', 'Jičín', '522', null, '1');
INSERT INTO `caLocState` VALUES ('943', '57', 'Karlovarský kraj', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('944', '57', 'Karlovy Vary', '412', null, '1');
INSERT INTO `caLocState` VALUES ('945', '57', 'Karviná', '803', null, '1');
INSERT INTO `caLocState` VALUES ('946', '57', 'Kladno', '203', null, '1');
INSERT INTO `caLocState` VALUES ('947', '57', 'Klatovy', '322', null, '1');
INSERT INTO `caLocState` VALUES ('948', '57', 'Kolín', '204', null, '1');
INSERT INTO `caLocState` VALUES ('949', '57', 'Kromĕříž', '721', null, '1');
INSERT INTO `caLocState` VALUES ('950', '57', 'Královéhradecký kraj', 'KR', null, '1');
INSERT INTO `caLocState` VALUES ('951', '57', 'Kutná Hora', '205', null, '1');
INSERT INTO `caLocState` VALUES ('952', '57', 'Liberec', '513', null, '1');
INSERT INTO `caLocState` VALUES ('953', '57', 'Liberecký kraj', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('954', '57', 'Litoměřice', '423', null, '1');
INSERT INTO `caLocState` VALUES ('955', '57', 'Louny', '424', null, '1');
INSERT INTO `caLocState` VALUES ('956', '57', 'Mladá Boleslav', '207', null, '1');
INSERT INTO `caLocState` VALUES ('957', '57', 'Moravskoslezský kraj', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('958', '57', 'Most', '425', null, '1');
INSERT INTO `caLocState` VALUES ('959', '57', 'Mělník', '206', null, '1');
INSERT INTO `caLocState` VALUES ('960', '57', 'Nový Jičín', '804', null, '1');
INSERT INTO `caLocState` VALUES ('961', '57', 'Nymburk', '208', null, '1');
INSERT INTO `caLocState` VALUES ('962', '57', 'Náchod', '523', null, '1');
INSERT INTO `caLocState` VALUES ('963', '57', 'Olomouc', '712', null, '1');
INSERT INTO `caLocState` VALUES ('964', '57', 'Olomoucký kraj', 'OL', null, '1');
INSERT INTO `caLocState` VALUES ('965', '57', 'Opava', '805', null, '1');
INSERT INTO `caLocState` VALUES ('966', '57', 'Ostrava město', '806', null, '1');
INSERT INTO `caLocState` VALUES ('967', '57', 'Pardubice', '532', null, '1');
INSERT INTO `caLocState` VALUES ('968', '57', 'Pardubický kraj', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('969', '57', 'Pelhřimov', '613', null, '1');
INSERT INTO `caLocState` VALUES ('970', '57', 'Plzenský kraj', 'PL', null, '1');
INSERT INTO `caLocState` VALUES ('971', '57', 'Plzeň jih', '324', null, '1');
INSERT INTO `caLocState` VALUES ('972', '57', 'Plzeň město', '323', null, '1');
INSERT INTO `caLocState` VALUES ('973', '57', 'Plzeň sever', '325', null, '1');
INSERT INTO `caLocState` VALUES ('974', '57', 'Prachatice', '315', null, '1');
INSERT INTO `caLocState` VALUES ('975', '57', 'Praha 1', '101', null, '1');
INSERT INTO `caLocState` VALUES ('976', '57', 'Praha 10', '10A', null, '1');
INSERT INTO `caLocState` VALUES ('977', '57', 'Praha 11', '10B', null, '1');
INSERT INTO `caLocState` VALUES ('978', '57', 'Praha 12', '10C', null, '1');
INSERT INTO `caLocState` VALUES ('979', '57', 'Praha 13', '10D', null, '1');
INSERT INTO `caLocState` VALUES ('980', '57', 'Praha 14', '10E', null, '1');
INSERT INTO `caLocState` VALUES ('981', '57', 'Praha 15', '10F', null, '1');
INSERT INTO `caLocState` VALUES ('982', '57', 'Praha 2', '102', null, '1');
INSERT INTO `caLocState` VALUES ('983', '57', 'Praha 3', '103', null, '1');
INSERT INTO `caLocState` VALUES ('984', '57', 'Praha 4', '104', null, '1');
INSERT INTO `caLocState` VALUES ('985', '57', 'Praha 5', '105', null, '1');
INSERT INTO `caLocState` VALUES ('986', '57', 'Praha 6', '106', null, '1');
INSERT INTO `caLocState` VALUES ('987', '57', 'Praha 7', '107', null, '1');
INSERT INTO `caLocState` VALUES ('988', '57', 'Praha 8', '108', null, '1');
INSERT INTO `caLocState` VALUES ('989', '57', 'Praha 9', '109', null, '1');
INSERT INTO `caLocState` VALUES ('990', '57', 'Praha východ', '209', null, '1');
INSERT INTO `caLocState` VALUES ('991', '57', 'Praha západ', '20A', null, '1');
INSERT INTO `caLocState` VALUES ('992', '57', 'Praha, hlavní mesto', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('993', '57', 'Prostĕjov', '713', null, '1');
INSERT INTO `caLocState` VALUES ('994', '57', 'Písek', '314', null, '1');
INSERT INTO `caLocState` VALUES ('995', '57', 'Přerov', '714', null, '1');
INSERT INTO `caLocState` VALUES ('996', '57', 'Příbram', '20B', null, '1');
INSERT INTO `caLocState` VALUES ('997', '57', 'Rakovník', '20C', null, '1');
INSERT INTO `caLocState` VALUES ('998', '57', 'Rokycany', '326', null, '1');
INSERT INTO `caLocState` VALUES ('999', '57', 'Rychnov nad Kněžnou', '524', null, '1');
INSERT INTO `caLocState` VALUES ('1000', '57', 'Semily', '514', null, '1');
INSERT INTO `caLocState` VALUES ('1001', '57', 'Sokolov', '413', null, '1');
INSERT INTO `caLocState` VALUES ('1002', '57', 'Strakonice', '316', null, '1');
INSERT INTO `caLocState` VALUES ('1003', '57', 'Stredoceský kraj', 'ST', null, '1');
INSERT INTO `caLocState` VALUES ('1004', '57', 'Svitavy', '533', null, '1');
INSERT INTO `caLocState` VALUES ('1005', '57', 'Tachov', '327', null, '1');
INSERT INTO `caLocState` VALUES ('1006', '57', 'Teplice', '426', null, '1');
INSERT INTO `caLocState` VALUES ('1007', '57', 'Trutnov', '525', null, '1');
INSERT INTO `caLocState` VALUES ('1008', '57', 'Tábor', '317', null, '1');
INSERT INTO `caLocState` VALUES ('1009', '57', 'Třebíč', '614', null, '1');
INSERT INTO `caLocState` VALUES ('1010', '57', 'Uherské Hradištĕ', '722', null, '1');
INSERT INTO `caLocState` VALUES ('1011', '57', 'Vsetín', '723', null, '1');
INSERT INTO `caLocState` VALUES ('1012', '57', 'Vysocina', 'VY', null, '1');
INSERT INTO `caLocState` VALUES ('1013', '57', 'Vyškov', '626', null, '1');
INSERT INTO `caLocState` VALUES ('1014', '57', 'Zlín', '724', null, '1');
INSERT INTO `caLocState` VALUES ('1015', '57', 'Zlínský kraj', 'ZL', null, '1');
INSERT INTO `caLocState` VALUES ('1016', '57', 'Znojmo', '627', null, '1');
INSERT INTO `caLocState` VALUES ('1017', '57', 'Ústecký kraj', 'US', null, '1');
INSERT INTO `caLocState` VALUES ('1018', '57', 'Ústí nad Labem', '427', null, '1');
INSERT INTO `caLocState` VALUES ('1019', '57', 'Ústí nad Orlicí', '534', null, '1');
INSERT INTO `caLocState` VALUES ('1020', '57', 'Česká Lípa', '511', null, '1');
INSERT INTO `caLocState` VALUES ('1021', '57', 'České Budějovice', '311', null, '1');
INSERT INTO `caLocState` VALUES ('1022', '57', 'Český Krumlov', '312', null, '1');
INSERT INTO `caLocState` VALUES ('1023', '57', 'Šumperk', '715', null, '1');
INSERT INTO `caLocState` VALUES ('1024', '57', 'Žd’ár nad Sázavou', '615', null, '1');
INSERT INTO `caLocState` VALUES ('1025', '53', '18 Montagnes (Région des)', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1026', '53', 'Agnébi (Région de l\')', '16', null, '1');
INSERT INTO `caLocState` VALUES ('1027', '53', 'Bafing (Région du)', '17', null, '1');
INSERT INTO `caLocState` VALUES ('1028', '53', 'Bas-Sassandra (Région du)', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1029', '53', 'Denguélé (Région du)', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1030', '53', 'Fromager (Région du)', '18', null, '1');
INSERT INTO `caLocState` VALUES ('1031', '53', 'Haut-Sassandra (Région du)', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1032', '53', 'Lacs (Région des)', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1033', '53', 'Lagunes (Région des)', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1034', '53', 'Marahoué (Région de la)', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1035', '53', 'Moyen-Cavally (Région du)', '19', null, '1');
INSERT INTO `caLocState` VALUES ('1036', '53', 'Moyen-Comoé (Région du)', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1037', '53', 'Nzi-Comoé (Région)', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1038', '53', 'Savanes (Région des)', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1039', '53', 'Sud-Bandama (Région du)', '15', null, '1');
INSERT INTO `caLocState` VALUES ('1040', '53', 'Sud-Comoé (Région du)', '13', null, '1');
INSERT INTO `caLocState` VALUES ('1041', '53', 'Vallée du Bandama (Région de la)', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1042', '53', 'Worodougou (Région du)', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1043', '53', 'Zanzan (Région du)', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1044', '59', 'Capital', '84', null, '1');
INSERT INTO `caLocState` VALUES ('1045', '59', 'Central Jutland', '82', null, '1');
INSERT INTO `caLocState` VALUES ('1046', '59', 'North Jutland', '81', null, '1');
INSERT INTO `caLocState` VALUES ('1047', '59', 'South Denmark', '83', null, '1');
INSERT INTO `caLocState` VALUES ('1048', '59', 'Zeeland', '85', null, '1');
INSERT INTO `caLocState` VALUES ('1049', '60', 'Ali Sabieh', 'AS', null, '1');
INSERT INTO `caLocState` VALUES ('1050', '60', 'Arta', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('1051', '60', 'Dikhil', 'DI', null, '1');
INSERT INTO `caLocState` VALUES ('1052', '60', 'Djibouti', 'DJ', null, '1');
INSERT INTO `caLocState` VALUES ('1053', '60', 'Obock', 'OB', null, '1');
INSERT INTO `caLocState` VALUES ('1054', '60', 'Tadjourah', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('1055', '61', 'Saint Andrew', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1056', '61', 'Saint David', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1057', '61', 'Saint George', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1058', '61', 'Saint John', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1059', '61', 'Saint Joseph', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1060', '61', 'Saint Luke', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1061', '61', 'Saint Mark', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1062', '61', 'Saint Patrick', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1063', '61', 'Saint Paul', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1064', '61', 'Saint Peter', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1065', '62', 'Azua', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1066', '62', 'Bahoruco', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1067', '62', 'Barahona', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1068', '62', 'Dajabón', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1069', '62', 'Distrito Nacional (Santo Domingo)', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1070', '62', 'Duarte', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1071', '62', 'El Seybo [El Seibo]', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1072', '62', 'Espaillat', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1073', '62', 'Hato Mayor', '30', null, '1');
INSERT INTO `caLocState` VALUES ('1074', '62', 'Independencia', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1075', '62', 'La Altagracia', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1076', '62', 'La Estrelleta [Elías Piña]', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1077', '62', 'La Romana', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1078', '62', 'La Vega', '13', null, '1');
INSERT INTO `caLocState` VALUES ('1079', '62', 'María Trinidad Sánchez', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1080', '62', 'Monseñor Nouel', '28', null, '1');
INSERT INTO `caLocState` VALUES ('1081', '62', 'Monte Cristi', '15', null, '1');
INSERT INTO `caLocState` VALUES ('1082', '62', 'Monte Plata', '29', null, '1');
INSERT INTO `caLocState` VALUES ('1083', '62', 'Pedernales', '16', null, '1');
INSERT INTO `caLocState` VALUES ('1084', '62', 'Peravia', '17', null, '1');
INSERT INTO `caLocState` VALUES ('1085', '62', 'Puerto Plata', '18', null, '1');
INSERT INTO `caLocState` VALUES ('1086', '62', 'Salcedo', '19', null, '1');
INSERT INTO `caLocState` VALUES ('1087', '62', 'Samaná', '20', null, '1');
INSERT INTO `caLocState` VALUES ('1088', '62', 'San Cristóbal', '21', null, '1');
INSERT INTO `caLocState` VALUES ('1089', '62', 'San Jose de Ocoa', '31', null, '1');
INSERT INTO `caLocState` VALUES ('1090', '62', 'San Juan', '22', null, '1');
INSERT INTO `caLocState` VALUES ('1091', '62', 'San Pedro de Macorís', '23', null, '1');
INSERT INTO `caLocState` VALUES ('1092', '62', 'Santiago', '25', null, '1');
INSERT INTO `caLocState` VALUES ('1093', '62', 'Santiago Rodríguez', '26', null, '1');
INSERT INTO `caLocState` VALUES ('1094', '62', 'Santo Domingo', '32', null, '1');
INSERT INTO `caLocState` VALUES ('1095', '62', 'Sánchez Ramírez', '24', null, '1');
INSERT INTO `caLocState` VALUES ('1096', '62', 'Valverde', '27', null, '1');
INSERT INTO `caLocState` VALUES ('1097', '64', 'Azuay', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('1098', '64', 'Bolívar', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('1099', '64', 'Carchi', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1100', '64', 'Cañar', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('1101', '64', 'Chimborazo', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('1102', '64', 'Cotopaxi', 'X', null, '1');
INSERT INTO `caLocState` VALUES ('1103', '64', 'El Oro', 'O', null, '1');
INSERT INTO `caLocState` VALUES ('1104', '64', 'Esmeraldas', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('1105', '64', 'Galápagos', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('1106', '64', 'Guayas', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('1107', '64', 'Imbabura', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('1108', '64', 'Loja', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('1109', '64', 'Los Ríos', 'R', null, '1');
INSERT INTO `caLocState` VALUES ('1110', '64', 'Manabí', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('1111', '64', 'Morona-Santiago', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('1112', '64', 'Napo', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('1113', '64', 'Orellana', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('1114', '64', 'Pastaza', 'Y', null, '1');
INSERT INTO `caLocState` VALUES ('1115', '64', 'Pichincha', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('1116', '64', 'Santa Elena', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('1117', '64', 'Santo Domingo de los Tsachilas', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('1118', '64', 'Sucumbíos', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('1119', '64', 'Tungurahua', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('1120', '64', 'Zamora-Chinchipe', 'Z', null, '1');
INSERT INTO `caLocState` VALUES ('1121', '65', 'Ad Daqahliyah', 'DK', null, '1');
INSERT INTO `caLocState` VALUES ('1122', '65', 'Al Bahr al Ahmar', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1123', '65', 'Al Buhayrah', 'BH', null, '1');
INSERT INTO `caLocState` VALUES ('1124', '65', 'Al Fayyum', 'FYM', null, '1');
INSERT INTO `caLocState` VALUES ('1125', '65', 'Al Gharbiyah', 'GH', null, '1');
INSERT INTO `caLocState` VALUES ('1126', '65', 'Al Iskandariyah', 'ALX', null, '1');
INSERT INTO `caLocState` VALUES ('1127', '65', 'Al Ismā`īlīyah', 'IS', null, '1');
INSERT INTO `caLocState` VALUES ('1128', '65', 'Al Jizah', 'GZ', null, '1');
INSERT INTO `caLocState` VALUES ('1129', '65', 'Al Minufiyah', 'MNF', null, '1');
INSERT INTO `caLocState` VALUES ('1130', '65', 'Al Minya', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('1131', '65', 'Al Qahirah', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1132', '65', 'Al Qalyubiyah', 'KB', null, '1');
INSERT INTO `caLocState` VALUES ('1133', '65', 'Al Wadi al Jadid', 'WAD', null, '1');
INSERT INTO `caLocState` VALUES ('1134', '65', 'al-Uqsur', 'LX', null, '1');
INSERT INTO `caLocState` VALUES ('1135', '65', 'As Suways', 'SUZ', null, '1');
INSERT INTO `caLocState` VALUES ('1136', '65', 'As Sādis min Uktūbar', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('1137', '65', 'Ash Sharqiyah', 'SHR', null, '1');
INSERT INTO `caLocState` VALUES ('1138', '65', 'Aswan', 'ASN', null, '1');
INSERT INTO `caLocState` VALUES ('1139', '65', 'Asyut', 'AST', null, '1');
INSERT INTO `caLocState` VALUES ('1140', '65', 'Bani Suwayf', 'BNS', null, '1');
INSERT INTO `caLocState` VALUES ('1141', '65', 'Būr Sa`īd', 'PTS', null, '1');
INSERT INTO `caLocState` VALUES ('1142', '65', 'Dumyat', 'DT', null, '1');
INSERT INTO `caLocState` VALUES ('1143', '65', 'Ḩulwān', 'HU', null, '1');
INSERT INTO `caLocState` VALUES ('1144', '65', 'Janub Sina\'', 'JS', null, '1');
INSERT INTO `caLocState` VALUES ('1145', '65', 'Kafr ash Shaykh', 'KFS', null, '1');
INSERT INTO `caLocState` VALUES ('1146', '65', 'Matrūh', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('1147', '65', 'Qina', 'KN', null, '1');
INSERT INTO `caLocState` VALUES ('1148', '65', 'Shamal Sina\'', 'SIN', null, '1');
INSERT INTO `caLocState` VALUES ('1149', '65', 'Suhaj', 'SHG', null, '1');
INSERT INTO `caLocState` VALUES ('1150', '66', 'Ahuachapán', 'AH', null, '1');
INSERT INTO `caLocState` VALUES ('1151', '66', 'Cabañas', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('1152', '66', 'Chalatenango', 'CH', null, '1');
INSERT INTO `caLocState` VALUES ('1153', '66', 'Cuscatlán', 'CU', null, '1');
INSERT INTO `caLocState` VALUES ('1154', '66', 'La Libertad', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('1155', '66', 'La Paz', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('1156', '66', 'La Unión', 'UN', null, '1');
INSERT INTO `caLocState` VALUES ('1157', '66', 'Morazán', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('1158', '66', 'San Miguel', 'SM', null, '1');
INSERT INTO `caLocState` VALUES ('1159', '66', 'San Salvador', 'SS', null, '1');
INSERT INTO `caLocState` VALUES ('1160', '66', 'San Vicente', 'SV', null, '1');
INSERT INTO `caLocState` VALUES ('1161', '66', 'Santa Ana', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('1162', '66', 'Sonsonate', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('1163', '66', 'Usulután', 'US', null, '1');
INSERT INTO `caLocState` VALUES ('1164', '67', 'Annobón', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('1165', '67', 'Bioko Norte', 'BN', null, '1');
INSERT INTO `caLocState` VALUES ('1166', '67', 'Bioko Sur', 'BS', null, '1');
INSERT INTO `caLocState` VALUES ('1167', '67', 'Centro Sur', 'CS', null, '1');
INSERT INTO `caLocState` VALUES ('1168', '67', 'Kie-Ntem', 'KN', null, '1');
INSERT INTO `caLocState` VALUES ('1169', '67', 'Litoral', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('1170', '67', 'Región Continental', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1171', '67', 'Región Insular', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('1172', '67', 'Wele-Nzás', 'WN', null, '1');
INSERT INTO `caLocState` VALUES ('1173', '68', 'Anseba', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('1174', '68', 'Debub', 'DU', null, '1');
INSERT INTO `caLocState` VALUES ('1175', '68', 'Debubawi K’eyyĭḥ Baḥri', 'DK', null, '1');
INSERT INTO `caLocState` VALUES ('1176', '68', 'Gash-Barka', 'GB', null, '1');
INSERT INTO `caLocState` VALUES ('1177', '68', 'Ma’ĭkel', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('1178', '68', 'Semienawi K’eyyĭḥ Baḥri', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('1179', '69', 'Harjumaa', '37', null, '1');
INSERT INTO `caLocState` VALUES ('1180', '69', 'Hiiumaa', '39', null, '1');
INSERT INTO `caLocState` VALUES ('1181', '69', 'Ida-Virumaa', '44', null, '1');
INSERT INTO `caLocState` VALUES ('1182', '69', 'Järvamaa', '51', null, '1');
INSERT INTO `caLocState` VALUES ('1183', '69', 'Jõgevamaa', '49', null, '1');
INSERT INTO `caLocState` VALUES ('1184', '69', 'Lääne-Virumaa', '59', null, '1');
INSERT INTO `caLocState` VALUES ('1185', '69', 'Läänemaa', '57', null, '1');
INSERT INTO `caLocState` VALUES ('1186', '69', 'Pärnumaa', '67', null, '1');
INSERT INTO `caLocState` VALUES ('1187', '69', 'Põlvamaa', '65', null, '1');
INSERT INTO `caLocState` VALUES ('1188', '69', 'Raplamaa', '70', null, '1');
INSERT INTO `caLocState` VALUES ('1189', '69', 'Saaremaa', '74', null, '1');
INSERT INTO `caLocState` VALUES ('1190', '69', 'Tartumaa', '78', null, '1');
INSERT INTO `caLocState` VALUES ('1191', '69', 'Valgamaa', '82', null, '1');
INSERT INTO `caLocState` VALUES ('1192', '69', 'Viljandimaa', '84', null, '1');
INSERT INTO `caLocState` VALUES ('1193', '69', 'Võrumaa', '86', null, '1');
INSERT INTO `caLocState` VALUES ('1194', '70', 'Adis Abeba', 'AA', null, '1');
INSERT INTO `caLocState` VALUES ('1195', '70', 'Afar', 'AF', null, '1');
INSERT INTO `caLocState` VALUES ('1196', '70', 'Amara', 'AM', null, '1');
INSERT INTO `caLocState` VALUES ('1197', '70', 'Binshangul Gumuz', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('1198', '70', 'Dire Dawa', 'DD', null, '1');
INSERT INTO `caLocState` VALUES ('1199', '70', 'Gambela Hizboch', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('1200', '70', 'Hareri Hizb', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('1201', '70', 'Oromiya', 'OR', null, '1');
INSERT INTO `caLocState` VALUES ('1202', '70', 'Sumale', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('1203', '70', 'Tigray', 'TI', null, '1');
INSERT INTO `caLocState` VALUES ('1204', '70', 'YeDebub Biheroch Bihereseboch na Hizboch', 'SN', null, '1');
INSERT INTO `caLocState` VALUES ('1205', '73', 'Central', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1206', '73', 'Eastern', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('1207', '73', 'Northern', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('1208', '73', 'Rotuma', 'R', null, '1');
INSERT INTO `caLocState` VALUES ('1209', '73', 'Western', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('1210', '74', 'Ahvenanmaan maakunta', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1211', '74', 'Etelä-Karjala', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1212', '74', 'Etelä-Pohjanmaa', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1213', '74', 'Etelä-Savo', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1214', '74', 'Kainuu', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1215', '74', 'Kanta-Häme', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1216', '74', 'Keski-Pohjanmaa', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1217', '74', 'Keski-Suomi', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1218', '74', 'Kymenlaakso', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1219', '74', 'Lappi', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1220', '74', 'Pirkanmaa', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1221', '74', 'Pohjanmaa', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1222', '74', 'Pohjois-Karjala', '13', null, '1');
INSERT INTO `caLocState` VALUES ('1223', '74', 'Pohjois-Pohjanmaa', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1224', '74', 'Pohjois-Savo', '15', null, '1');
INSERT INTO `caLocState` VALUES ('1225', '74', 'Päijät-Häme', '16', null, '1');
INSERT INTO `caLocState` VALUES ('1226', '74', 'Satakunta', '17', null, '1');
INSERT INTO `caLocState` VALUES ('1227', '74', 'Uusimaa', '18', null, '1');
INSERT INTO `caLocState` VALUES ('1228', '74', 'Varsinais-Suomi', '19', null, '1');
INSERT INTO `caLocState` VALUES ('1229', '75', 'Ain', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1230', '75', 'Aisne', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1231', '75', 'Allier', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1232', '75', 'Alpes-de-Haute-Provence', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1233', '75', 'Alpes-Maritimes', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1234', '75', 'Alsace', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('1235', '75', 'Aquitaine', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('1236', '75', 'Ardennes', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1237', '75', 'Ardèche', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1238', '75', 'Ariège', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1239', '75', 'Aube', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1240', '75', 'Aude', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1241', '75', 'Auvergne', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1242', '75', 'Aveyron', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1243', '75', 'Bas-Rhin', '67', null, '1');
INSERT INTO `caLocState` VALUES ('1244', '75', 'Basse-Normandie', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('1245', '75', 'Bouches-du-Rhône', '13', null, '1');
INSERT INTO `caLocState` VALUES ('1246', '75', 'Bourgogne', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('1247', '75', 'Bretagne', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('1248', '75', 'Calvados', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1249', '75', 'Cantal', '15', null, '1');
INSERT INTO `caLocState` VALUES ('1250', '75', 'Centre', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('1251', '75', 'Champagne-Ardenne', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('1252', '75', 'Charente', '16', null, '1');
INSERT INTO `caLocState` VALUES ('1253', '75', 'Charente-Maritime', '17', null, '1');
INSERT INTO `caLocState` VALUES ('1254', '75', 'Cher', '18', null, '1');
INSERT INTO `caLocState` VALUES ('1255', '75', 'Clipperton', 'CP', null, '1');
INSERT INTO `caLocState` VALUES ('1256', '75', 'Corrèze', '19', null, '1');
INSERT INTO `caLocState` VALUES ('1257', '75', 'Corse', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('1258', '75', 'Corse-du-Sud', '2A', null, '1');
INSERT INTO `caLocState` VALUES ('1259', '75', 'Creuse', '23', null, '1');
INSERT INTO `caLocState` VALUES ('1260', '75', 'Côte-d\'Or', '21', null, '1');
INSERT INTO `caLocState` VALUES ('1261', '75', 'Côtes-d\'Armor', '22', null, '1');
INSERT INTO `caLocState` VALUES ('1262', '75', 'Deux-Sèvres', '79', null, '1');
INSERT INTO `caLocState` VALUES ('1263', '75', 'Dordogne', '24', null, '1');
INSERT INTO `caLocState` VALUES ('1264', '75', 'Doubs', '25', null, '1');
INSERT INTO `caLocState` VALUES ('1265', '75', 'Drôme', '26', null, '1');
INSERT INTO `caLocState` VALUES ('1266', '75', 'Essonne', '91', null, '1');
INSERT INTO `caLocState` VALUES ('1267', '75', 'Eure', '27', null, '1');
INSERT INTO `caLocState` VALUES ('1268', '75', 'Eure-et-Loir', '28', null, '1');
INSERT INTO `caLocState` VALUES ('1269', '75', 'Finistère', '29', null, '1');
INSERT INTO `caLocState` VALUES ('1270', '75', 'Franche-Comté', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('1271', '75', 'Gard', '30', null, '1');
INSERT INTO `caLocState` VALUES ('1272', '75', 'Gers', '32', null, '1');
INSERT INTO `caLocState` VALUES ('1273', '75', 'Gironde', '33', null, '1');
INSERT INTO `caLocState` VALUES ('1274', '75', 'Guadeloupe', 'GP', null, '1');
INSERT INTO `caLocState` VALUES ('1275', '75', 'Guyane (française)', 'GF', null, '1');
INSERT INTO `caLocState` VALUES ('1276', '75', 'Haut-Rhin', '68', null, '1');
INSERT INTO `caLocState` VALUES ('1277', '75', 'Haute-Corse', '2B', null, '1');
INSERT INTO `caLocState` VALUES ('1278', '75', 'Haute-Garonne', '31', null, '1');
INSERT INTO `caLocState` VALUES ('1279', '75', 'Haute-Loire', '43', null, '1');
INSERT INTO `caLocState` VALUES ('1280', '75', 'Haute-Marne', '52', null, '1');
INSERT INTO `caLocState` VALUES ('1281', '75', 'Haute-Normandie', 'Q', null, '1');
INSERT INTO `caLocState` VALUES ('1282', '75', 'Haute-Savoie', '74', null, '1');
INSERT INTO `caLocState` VALUES ('1283', '75', 'Haute-Saône', '70', null, '1');
INSERT INTO `caLocState` VALUES ('1284', '75', 'Haute-Vienne', '87', null, '1');
INSERT INTO `caLocState` VALUES ('1285', '75', 'Hautes-Alpes', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1286', '75', 'Hautes-Pyrénées', '65', null, '1');
INSERT INTO `caLocState` VALUES ('1287', '75', 'Hauts-de-Seine', '92', null, '1');
INSERT INTO `caLocState` VALUES ('1288', '75', 'Hérault', '34', null, '1');
INSERT INTO `caLocState` VALUES ('1289', '75', 'Ille-et-Vilaine', '35', null, '1');
INSERT INTO `caLocState` VALUES ('1290', '75', 'Indre', '36', null, '1');
INSERT INTO `caLocState` VALUES ('1291', '75', 'Indre-et-Loire', '37', null, '1');
INSERT INTO `caLocState` VALUES ('1292', '75', 'Isère', '38', null, '1');
INSERT INTO `caLocState` VALUES ('1293', '75', 'Jura', '39', null, '1');
INSERT INTO `caLocState` VALUES ('1294', '75', 'La Réunion', 'RE', null, '1');
INSERT INTO `caLocState` VALUES ('1295', '75', 'Landes', '40', null, '1');
INSERT INTO `caLocState` VALUES ('1296', '75', 'Languedoc-Roussillon', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('1297', '75', 'Limousin', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('1298', '75', 'Loir-et-Cher', '41', null, '1');
INSERT INTO `caLocState` VALUES ('1299', '75', 'Loire', '42', null, '1');
INSERT INTO `caLocState` VALUES ('1300', '75', 'Loire-Atlantique', '44', null, '1');
INSERT INTO `caLocState` VALUES ('1301', '75', 'Loiret', '45', null, '1');
INSERT INTO `caLocState` VALUES ('1302', '75', 'Lorraine', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('1303', '75', 'Lot', '46', null, '1');
INSERT INTO `caLocState` VALUES ('1304', '75', 'Lot-et-Garonne', '47', null, '1');
INSERT INTO `caLocState` VALUES ('1305', '75', 'Lozère', '48', null, '1');
INSERT INTO `caLocState` VALUES ('1306', '75', 'Maine-et-Loire', '49', null, '1');
INSERT INTO `caLocState` VALUES ('1307', '75', 'Manche', '50', null, '1');
INSERT INTO `caLocState` VALUES ('1308', '75', 'Marne', '51', null, '1');
INSERT INTO `caLocState` VALUES ('1309', '75', 'Martinique', 'MQ', null, '1');
INSERT INTO `caLocState` VALUES ('1310', '75', 'Mayenne', '53', null, '1');
INSERT INTO `caLocState` VALUES ('1311', '75', 'Mayotte', 'YT', null, '1');
INSERT INTO `caLocState` VALUES ('1312', '75', 'Meurthe-et-Moselle', '54', null, '1');
INSERT INTO `caLocState` VALUES ('1313', '75', 'Meuse', '55', null, '1');
INSERT INTO `caLocState` VALUES ('1314', '75', 'Midi-Pyrénées', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('1315', '75', 'Morbihan', '56', null, '1');
INSERT INTO `caLocState` VALUES ('1316', '75', 'Moselle', '57', null, '1');
INSERT INTO `caLocState` VALUES ('1317', '75', 'Nièvre', '58', null, '1');
INSERT INTO `caLocState` VALUES ('1318', '75', 'Nord', '59', null, '1');
INSERT INTO `caLocState` VALUES ('1319', '75', 'Nord-Pas-de-Calais', 'O', null, '1');
INSERT INTO `caLocState` VALUES ('1320', '75', 'Nouvelle-Calédonie', 'NC', null, '1');
INSERT INTO `caLocState` VALUES ('1321', '75', 'Oise', '60', null, '1');
INSERT INTO `caLocState` VALUES ('1322', '75', 'Orne', '61', null, '1');
INSERT INTO `caLocState` VALUES ('1323', '75', 'Paris', '75', null, '1');
INSERT INTO `caLocState` VALUES ('1324', '75', 'Pas-de-Calais', '62', null, '1');
INSERT INTO `caLocState` VALUES ('1325', '75', 'Pays-de-la-Loire', 'R', null, '1');
INSERT INTO `caLocState` VALUES ('1326', '75', 'Picardie', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('1327', '75', 'Poitou-Charentes', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('1328', '75', 'Polynésie française', 'PF', null, '1');
INSERT INTO `caLocState` VALUES ('1329', '75', 'Provence-Alpes-Côte-d\'Azur', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('1330', '75', 'Puy-de-Dôme', '63', null, '1');
INSERT INTO `caLocState` VALUES ('1331', '75', 'Pyrénées-Atlantiques', '64', null, '1');
INSERT INTO `caLocState` VALUES ('1332', '75', 'Pyrénées-Orientales', '66', null, '1');
INSERT INTO `caLocState` VALUES ('1333', '75', 'Rhône', '69', null, '1');
INSERT INTO `caLocState` VALUES ('1334', '75', 'Rhône-Alpes', 'V', null, '1');
INSERT INTO `caLocState` VALUES ('1335', '75', 'Saint-Barthélemy', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('1336', '75', 'Saint-Martin', 'MF', null, '1');
INSERT INTO `caLocState` VALUES ('1337', '75', 'Saint-Pierre-et-Miquelon', 'PM', null, '1');
INSERT INTO `caLocState` VALUES ('1338', '75', 'Sarthe', '72', null, '1');
INSERT INTO `caLocState` VALUES ('1339', '75', 'Savoie', '73', null, '1');
INSERT INTO `caLocState` VALUES ('1340', '75', 'Saône-et-Loire', '71', null, '1');
INSERT INTO `caLocState` VALUES ('1341', '75', 'Seine-et-Marne', '77', null, '1');
INSERT INTO `caLocState` VALUES ('1342', '75', 'Seine-Maritime', '76', null, '1');
INSERT INTO `caLocState` VALUES ('1343', '75', 'Seine-Saint-Denis', '93', null, '1');
INSERT INTO `caLocState` VALUES ('1344', '75', 'Somme', '80', null, '1');
INSERT INTO `caLocState` VALUES ('1345', '75', 'Tarn', '81', null, '1');
INSERT INTO `caLocState` VALUES ('1346', '75', 'Tarn-et-Garonne', '82', null, '1');
INSERT INTO `caLocState` VALUES ('1347', '75', 'Terres Australes Françaises', 'TF', null, '1');
INSERT INTO `caLocState` VALUES ('1348', '75', 'Territoire de Belfort', '90', null, '1');
INSERT INTO `caLocState` VALUES ('1349', '75', 'Val-d\'Oise', '95', null, '1');
INSERT INTO `caLocState` VALUES ('1350', '75', 'Val-de-Marne', '94', null, '1');
INSERT INTO `caLocState` VALUES ('1351', '75', 'Var', '83', null, '1');
INSERT INTO `caLocState` VALUES ('1352', '75', 'Vaucluse', '84', null, '1');
INSERT INTO `caLocState` VALUES ('1353', '75', 'Vendée', '85', null, '1');
INSERT INTO `caLocState` VALUES ('1354', '75', 'Vienne', '86', null, '1');
INSERT INTO `caLocState` VALUES ('1355', '75', 'Vosges', '88', null, '1');
INSERT INTO `caLocState` VALUES ('1356', '75', 'Wallis et Futuna', 'WF', null, '1');
INSERT INTO `caLocState` VALUES ('1357', '75', 'Yonne', '89', null, '1');
INSERT INTO `caLocState` VALUES ('1358', '75', 'Yvelines', '78', null, '1');
INSERT INTO `caLocState` VALUES ('1359', '75', 'Île-de-France', 'J', null, '1');
INSERT INTO `caLocState` VALUES ('1360', '78', 'Crozet Islands', 'X2~', null, '1');
INSERT INTO `caLocState` VALUES ('1361', '78', 'Ile Saint-Paul et Ile Amsterdam', 'X1~', null, '1');
INSERT INTO `caLocState` VALUES ('1362', '78', 'Iles Eparses', 'X4~', null, '1');
INSERT INTO `caLocState` VALUES ('1363', '78', 'Kerguelen', 'X3~', null, '1');
INSERT INTO `caLocState` VALUES ('1364', '79', 'Estuaire', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1365', '79', 'Haut-Ogooué', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1366', '79', 'Moyen-Ogooué', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1367', '79', 'Ngounié', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1368', '79', 'Nyanga', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1369', '79', 'Ogooué-Ivindo', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1370', '79', 'Ogooué-Lolo', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1371', '79', 'Ogooué-Maritime', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1372', '79', 'Woleu-Ntem', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1373', '80', 'Banjul', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('1374', '80', 'Lower River', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('1375', '80', 'MacCarthy Island', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('1376', '80', 'North Bank', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('1377', '80', 'Upper River', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('1378', '80', 'Western', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('1379', '81', 'Abkhazia', 'AB', null, '1');
INSERT INTO `caLocState` VALUES ('1380', '81', 'Ajaria', 'AJ', null, '1');
INSERT INTO `caLocState` VALUES ('1381', '81', 'Guria', 'GU', null, '1');
INSERT INTO `caLocState` VALUES ('1382', '81', 'Imereti', 'IM', null, '1');
INSERT INTO `caLocState` VALUES ('1383', '81', 'Kakheti', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('1384', '81', 'Kvemo Kartli', 'KK', null, '1');
INSERT INTO `caLocState` VALUES ('1385', '81', 'Mtskheta-Mtianeti', 'MM', null, '1');
INSERT INTO `caLocState` VALUES ('1386', '81', 'Racha-Lechkhumi [and] Kvemo Svaneti', 'RL', null, '1');
INSERT INTO `caLocState` VALUES ('1387', '81', 'Samegrelo-Zemo Svaneti', 'SZ', null, '1');
INSERT INTO `caLocState` VALUES ('1388', '81', 'Samtskhe-Javakheti', 'SJ', null, '1');
INSERT INTO `caLocState` VALUES ('1389', '81', 'Shida Kartli', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('1390', '81', 'Tbilisi', 'TB', null, '1');
INSERT INTO `caLocState` VALUES ('1391', '82', 'Baden-Württemberg', 'BW', null, '1');
INSERT INTO `caLocState` VALUES ('1392', '82', 'Bayern', 'BY', null, '1');
INSERT INTO `caLocState` VALUES ('1393', '82', 'Berlin', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('1394', '82', 'Brandenburg', 'BB', null, '1');
INSERT INTO `caLocState` VALUES ('1395', '82', 'Bremen', 'HB', null, '1');
INSERT INTO `caLocState` VALUES ('1396', '82', 'Hamburg', 'HH', null, '1');
INSERT INTO `caLocState` VALUES ('1397', '82', 'Hessen', 'HE', null, '1');
INSERT INTO `caLocState` VALUES ('1398', '82', 'Mecklenburg-Vorpommern', 'MV', null, '1');
INSERT INTO `caLocState` VALUES ('1399', '82', 'Niedersachsen', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('1400', '82', 'Nordrhein-Westfalen', 'NW', null, '1');
INSERT INTO `caLocState` VALUES ('1401', '82', 'Rheinland-Pfalz', 'RP', null, '1');
INSERT INTO `caLocState` VALUES ('1402', '82', 'Saarland', 'SL', null, '1');
INSERT INTO `caLocState` VALUES ('1403', '82', 'Sachsen', 'SN', null, '1');
INSERT INTO `caLocState` VALUES ('1404', '82', 'Sachsen-Anhalt', 'ST', null, '1');
INSERT INTO `caLocState` VALUES ('1405', '82', 'Schleswig-Holstein', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('1406', '82', 'Thüringen', 'TH', null, '1');
INSERT INTO `caLocState` VALUES ('1407', '83', 'Ashanti', 'AH', null, '1');
INSERT INTO `caLocState` VALUES ('1408', '83', 'Brong-Ahafo', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1409', '83', 'Central', 'CP', null, '1');
INSERT INTO `caLocState` VALUES ('1410', '83', 'Eastern', 'EP', null, '1');
INSERT INTO `caLocState` VALUES ('1411', '83', 'Greater Accra', 'AA', null, '1');
INSERT INTO `caLocState` VALUES ('1412', '83', 'Northern', 'NP', null, '1');
INSERT INTO `caLocState` VALUES ('1413', '83', 'Upper East', 'UE', null, '1');
INSERT INTO `caLocState` VALUES ('1414', '83', 'Upper West', 'UW', null, '1');
INSERT INTO `caLocState` VALUES ('1415', '83', 'Volta', 'TV', null, '1');
INSERT INTO `caLocState` VALUES ('1416', '83', 'Western', 'WP', null, '1');
INSERT INTO `caLocState` VALUES ('1417', '85', 'Achaïa', '13', null, '1');
INSERT INTO `caLocState` VALUES ('1418', '85', 'Agio Oros', '69', null, '1');
INSERT INTO `caLocState` VALUES ('1419', '85', 'Aitolia kai Akarnania', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1420', '85', 'Anatoliki Makedonia kai Thraki', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('1421', '85', 'Argolida', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1422', '85', 'Arkadia', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1423', '85', 'Arta', '31', null, '1');
INSERT INTO `caLocState` VALUES ('1424', '85', 'Attiki', 'A1', null, '1');
INSERT INTO `caLocState` VALUES ('1425', '85', 'Attiki', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('1426', '85', 'Chalkidiki', '64', null, '1');
INSERT INTO `caLocState` VALUES ('1427', '85', 'Chania', '94', null, '1');
INSERT INTO `caLocState` VALUES ('1428', '85', 'Chios', '85', null, '1');
INSERT INTO `caLocState` VALUES ('1429', '85', 'Dodekanisos', '81', null, '1');
INSERT INTO `caLocState` VALUES ('1430', '85', 'Drama', '52', null, '1');
INSERT INTO `caLocState` VALUES ('1431', '85', 'Dytiki Ellada', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('1432', '85', 'Dytiki Makedonia', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1433', '85', 'Evros', '71', null, '1');
INSERT INTO `caLocState` VALUES ('1434', '85', 'Evrytania', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1435', '85', 'Evvoia', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1436', '85', 'Florina', '63', null, '1');
INSERT INTO `caLocState` VALUES ('1437', '85', 'Fokida', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1438', '85', 'Fthiotida', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1439', '85', 'Grevena', '51', null, '1');
INSERT INTO `caLocState` VALUES ('1440', '85', 'Ileia', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1441', '85', 'Imathia', '53', null, '1');
INSERT INTO `caLocState` VALUES ('1442', '85', 'Ioannina', '33', null, '1');
INSERT INTO `caLocState` VALUES ('1443', '85', 'Ionia Nisia', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('1444', '85', 'Ipeiros', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('1445', '85', 'Irakleio', '91', null, '1');
INSERT INTO `caLocState` VALUES ('1446', '85', 'Karditsa', '41', null, '1');
INSERT INTO `caLocState` VALUES ('1447', '85', 'Kastoria', '56', null, '1');
INSERT INTO `caLocState` VALUES ('1448', '85', 'Kavala', '55', null, '1');
INSERT INTO `caLocState` VALUES ('1449', '85', 'Kefallonia', '23', null, '1');
INSERT INTO `caLocState` VALUES ('1450', '85', 'Kentriki Makedonia', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('1451', '85', 'Kerkyra', '22', null, '1');
INSERT INTO `caLocState` VALUES ('1452', '85', 'Kilkis', '57', null, '1');
INSERT INTO `caLocState` VALUES ('1453', '85', 'Korinthia', '15', null, '1');
INSERT INTO `caLocState` VALUES ('1454', '85', 'Kozani', '58', null, '1');
INSERT INTO `caLocState` VALUES ('1455', '85', 'Kriti', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('1456', '85', 'Kyklades', '82', null, '1');
INSERT INTO `caLocState` VALUES ('1457', '85', 'Lakonia', '16', null, '1');
INSERT INTO `caLocState` VALUES ('1458', '85', 'Larisa', '42', null, '1');
INSERT INTO `caLocState` VALUES ('1459', '85', 'Lasithi', '92', null, '1');
INSERT INTO `caLocState` VALUES ('1460', '85', 'Lefkada', '24', null, '1');
INSERT INTO `caLocState` VALUES ('1461', '85', 'Lesvos', '83', null, '1');
INSERT INTO `caLocState` VALUES ('1462', '85', 'Magnisia', '43', null, '1');
INSERT INTO `caLocState` VALUES ('1463', '85', 'Messinia', '17', null, '1');
INSERT INTO `caLocState` VALUES ('1464', '85', 'Notio Aigaio', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('1465', '85', 'Pella', '59', null, '1');
INSERT INTO `caLocState` VALUES ('1466', '85', 'Peloponnisos', 'J', null, '1');
INSERT INTO `caLocState` VALUES ('1467', '85', 'Pieria', '61', null, '1');
INSERT INTO `caLocState` VALUES ('1468', '85', 'Preveza', '34', null, '1');
INSERT INTO `caLocState` VALUES ('1469', '85', 'Rethymno', '93', null, '1');
INSERT INTO `caLocState` VALUES ('1470', '85', 'Rodopi', '73', null, '1');
INSERT INTO `caLocState` VALUES ('1471', '85', 'Samos', '84', null, '1');
INSERT INTO `caLocState` VALUES ('1472', '85', 'Serres', '62', null, '1');
INSERT INTO `caLocState` VALUES ('1473', '85', 'Sterea Ellada', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('1474', '85', 'Thesprotia', '32', null, '1');
INSERT INTO `caLocState` VALUES ('1475', '85', 'Thessalia', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('1476', '85', 'Thessaloniki', '54', null, '1');
INSERT INTO `caLocState` VALUES ('1477', '85', 'Trikala', '44', null, '1');
INSERT INTO `caLocState` VALUES ('1478', '85', 'Voiotia', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1479', '85', 'Voreio Aigaio', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('1480', '85', 'Xanthi', '72', null, '1');
INSERT INTO `caLocState` VALUES ('1481', '85', 'Zakynthos', '21', null, '1');
INSERT INTO `caLocState` VALUES ('1482', '86', 'Kommune Kujalleq (kl)', 'KU', null, '1');
INSERT INTO `caLocState` VALUES ('1483', '86', 'Kommuneqarfik Sermersooq (kl)', 'SM', null, '1');
INSERT INTO `caLocState` VALUES ('1484', '86', 'Qaasuitsup Kommunia (kl)', 'QA', null, '1');
INSERT INTO `caLocState` VALUES ('1485', '86', 'Qeqqata Kommunia (kl)', 'QE', null, '1');
INSERT INTO `caLocState` VALUES ('1486', '87', 'Saint Andrew', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1487', '87', 'Saint David', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1488', '87', 'Saint George', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1489', '87', 'Saint John', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1490', '87', 'Saint Mark', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1491', '87', 'Saint Patrick', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1492', '87', 'Southern Grenadine Islands', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1493', '90', 'Alta Verapaz', 'AV', null, '1');
INSERT INTO `caLocState` VALUES ('1494', '90', 'Baja Verapaz', 'BV', null, '1');
INSERT INTO `caLocState` VALUES ('1495', '90', 'Chimaltenango', 'CM', null, '1');
INSERT INTO `caLocState` VALUES ('1496', '90', 'Chiquimula', 'CQ', null, '1');
INSERT INTO `caLocState` VALUES ('1497', '90', 'El Progreso', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('1498', '90', 'Escuintla', 'ES', null, '1');
INSERT INTO `caLocState` VALUES ('1499', '90', 'Guatemala', 'GU', null, '1');
INSERT INTO `caLocState` VALUES ('1500', '90', 'Huehuetenango', 'HU', null, '1');
INSERT INTO `caLocState` VALUES ('1501', '90', 'Izabal', 'IZ', null, '1');
INSERT INTO `caLocState` VALUES ('1502', '90', 'Jalapa', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('1503', '90', 'Jutiapa', 'JU', null, '1');
INSERT INTO `caLocState` VALUES ('1504', '90', 'Petén', 'PE', null, '1');
INSERT INTO `caLocState` VALUES ('1505', '90', 'Quetzaltenango', 'QZ', null, '1');
INSERT INTO `caLocState` VALUES ('1506', '90', 'Quiché', 'QC', null, '1');
INSERT INTO `caLocState` VALUES ('1507', '90', 'Retalhuleu', 'RE', null, '1');
INSERT INTO `caLocState` VALUES ('1508', '90', 'Sacatepéquez', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('1509', '90', 'San Marcos', 'SM', null, '1');
INSERT INTO `caLocState` VALUES ('1510', '90', 'Santa Rosa', 'SR', null, '1');
INSERT INTO `caLocState` VALUES ('1511', '90', 'Sololá', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('1512', '90', 'Suchitepéquez', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('1513', '90', 'Totonicapán', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('1514', '90', 'Zacapa', 'ZA', null, '1');
INSERT INTO `caLocState` VALUES ('1515', '91', 'Beyla', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('1516', '91', 'Boffa', 'BF', null, '1');
INSERT INTO `caLocState` VALUES ('1517', '91', 'Boké', 'BK', null, '1');
INSERT INTO `caLocState` VALUES ('1518', '91', 'Boké', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('1519', '91', 'Conakry', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1520', '91', 'Coyah', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('1521', '91', 'Dabola', 'DB', null, '1');
INSERT INTO `caLocState` VALUES ('1522', '91', 'Dalaba', 'DL', null, '1');
INSERT INTO `caLocState` VALUES ('1523', '91', 'Dinguiraye', 'DI', null, '1');
INSERT INTO `caLocState` VALUES ('1524', '91', 'Dubréka', 'DU', null, '1');
INSERT INTO `caLocState` VALUES ('1525', '91', 'Faranah', 'FA', null, '1');
INSERT INTO `caLocState` VALUES ('1526', '91', 'faranah', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('1527', '91', 'Forécariah', 'FO', null, '1');
INSERT INTO `caLocState` VALUES ('1528', '91', 'Fria', 'FR', null, '1');
INSERT INTO `caLocState` VALUES ('1529', '91', 'Gaoual', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('1530', '91', 'Guékédou', 'GU', null, '1');
INSERT INTO `caLocState` VALUES ('1531', '91', 'Kankan', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('1532', '91', 'Kankan', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('1533', '91', 'Kindia', 'KD', null, '1');
INSERT INTO `caLocState` VALUES ('1534', '91', 'Kindia', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('1535', '91', 'Kissidougou', 'KS', null, '1');
INSERT INTO `caLocState` VALUES ('1536', '91', 'Koubia', 'KB', null, '1');
INSERT INTO `caLocState` VALUES ('1537', '91', 'Koundara', 'KN', null, '1');
INSERT INTO `caLocState` VALUES ('1538', '91', 'Kouroussa', 'KO', null, '1');
INSERT INTO `caLocState` VALUES ('1539', '91', 'Kérouané', 'KE', null, '1');
INSERT INTO `caLocState` VALUES ('1540', '91', 'Labé', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('1541', '91', 'Labé', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('1542', '91', 'Lola', 'LO', null, '1');
INSERT INTO `caLocState` VALUES ('1543', '91', 'Lélouma', 'LE', null, '1');
INSERT INTO `caLocState` VALUES ('1544', '91', 'Macenta', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('1545', '91', 'Mali', 'ML', null, '1');
INSERT INTO `caLocState` VALUES ('1546', '91', 'Mamou', 'MM', null, '1');
INSERT INTO `caLocState` VALUES ('1547', '91', 'Mamou', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('1548', '91', 'Mandiana', 'MD', null, '1');
INSERT INTO `caLocState` VALUES ('1549', '91', 'Nzérékoré', 'NZ', null, '1');
INSERT INTO `caLocState` VALUES ('1550', '91', 'Nzérékoré', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('1551', '91', 'Pita', 'PI', null, '1');
INSERT INTO `caLocState` VALUES ('1552', '91', 'Siguiri', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('1553', '91', 'Tougué', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('1554', '91', 'Télimélé', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('1555', '91', 'Yomou', 'YO', null, '1');
INSERT INTO `caLocState` VALUES ('1556', '92', 'Bafatá', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1557', '92', 'Biombo', 'BM', null, '1');
INSERT INTO `caLocState` VALUES ('1558', '92', 'Bissau', 'BS', null, '1');
INSERT INTO `caLocState` VALUES ('1559', '92', 'Bolama', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('1560', '92', 'Cacheu', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('1561', '92', 'Gabú', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('1562', '92', 'Leste', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('1563', '92', 'Norte', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('1564', '92', 'Oio', 'OI', null, '1');
INSERT INTO `caLocState` VALUES ('1565', '92', 'Quinara', 'QU', null, '1');
INSERT INTO `caLocState` VALUES ('1566', '92', 'Sul', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('1567', '92', 'Tombali', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('1568', '93', 'Barima-Waini', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1569', '93', 'Cuyuni-Mazaruni', 'CU', null, '1');
INSERT INTO `caLocState` VALUES ('1570', '93', 'Demerara-Mahaica', 'DE', null, '1');
INSERT INTO `caLocState` VALUES ('1571', '93', 'East Berbice-Corentyne', 'EB', null, '1');
INSERT INTO `caLocState` VALUES ('1572', '93', 'Essequibo Islands-West Demerara', 'ES', null, '1');
INSERT INTO `caLocState` VALUES ('1573', '93', 'Mahaica-Berbice', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('1574', '93', 'Pomeroon-Supenaam', 'PM', null, '1');
INSERT INTO `caLocState` VALUES ('1575', '93', 'Potaro-Siparuni', 'PT', null, '1');
INSERT INTO `caLocState` VALUES ('1576', '93', 'Upper Demerara-Berbice', 'UD', null, '1');
INSERT INTO `caLocState` VALUES ('1577', '93', 'Upper Takutu-Upper Essequibo', 'UT', null, '1');
INSERT INTO `caLocState` VALUES ('1578', '94', 'Artibonite', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('1579', '94', 'Centre', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('1580', '94', 'Grande-Anse', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('1581', '94', 'Nippes', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('1582', '94', 'Nord', 'ND', null, '1');
INSERT INTO `caLocState` VALUES ('1583', '94', 'Nord-Est', 'NE', null, '1');
INSERT INTO `caLocState` VALUES ('1584', '94', 'Nord-Ouest', 'NO', null, '1');
INSERT INTO `caLocState` VALUES ('1585', '94', 'Ouest', 'OU', null, '1');
INSERT INTO `caLocState` VALUES ('1586', '94', 'Sud', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('1587', '94', 'Sud-Est', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('1588', '96', 'Atlántida', 'AT', null, '1');
INSERT INTO `caLocState` VALUES ('1589', '96', 'Choluteca', 'CH', null, '1');
INSERT INTO `caLocState` VALUES ('1590', '96', 'Colón', 'CL', null, '1');
INSERT INTO `caLocState` VALUES ('1591', '96', 'Comayagua', 'CM', null, '1');
INSERT INTO `caLocState` VALUES ('1592', '96', 'Copán', 'CP', null, '1');
INSERT INTO `caLocState` VALUES ('1593', '96', 'Cortés', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('1594', '96', 'El Paraíso', 'EP', null, '1');
INSERT INTO `caLocState` VALUES ('1595', '96', 'Francisco Morazán', 'FM', null, '1');
INSERT INTO `caLocState` VALUES ('1596', '96', 'Gracias a Dios', 'GD', null, '1');
INSERT INTO `caLocState` VALUES ('1597', '96', 'Intibucá', 'IN', null, '1');
INSERT INTO `caLocState` VALUES ('1598', '96', 'Islas de la Bahía', 'IB', null, '1');
INSERT INTO `caLocState` VALUES ('1599', '96', 'La Paz', 'LP', null, '1');
INSERT INTO `caLocState` VALUES ('1600', '96', 'Lempira', 'LE', null, '1');
INSERT INTO `caLocState` VALUES ('1601', '96', 'Ocotepeque', 'OC', null, '1');
INSERT INTO `caLocState` VALUES ('1602', '96', 'Olancho', 'OL', null, '1');
INSERT INTO `caLocState` VALUES ('1603', '96', 'Santa Bárbara', 'SB', null, '1');
INSERT INTO `caLocState` VALUES ('1604', '96', 'Valle', 'VA', null, '1');
INSERT INTO `caLocState` VALUES ('1605', '96', 'Yoro', 'YO', null, '1');
INSERT INTO `caLocState` VALUES ('1606', '98', 'Baranya', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1607', '98', 'Borsod-Abaúj-Zemplén', 'BZ', null, '1');
INSERT INTO `caLocState` VALUES ('1608', '98', 'Budapest', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('1609', '98', 'Bács-Kiskun', 'BK', null, '1');
INSERT INTO `caLocState` VALUES ('1610', '98', 'Békés', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('1611', '98', 'Békéscsaba', 'BC', null, '1');
INSERT INTO `caLocState` VALUES ('1612', '98', 'Csongrád', 'CS', null, '1');
INSERT INTO `caLocState` VALUES ('1613', '98', 'Debrecen', 'DE', null, '1');
INSERT INTO `caLocState` VALUES ('1614', '98', 'Dunaújváros', 'DU', null, '1');
INSERT INTO `caLocState` VALUES ('1615', '98', 'Eger', 'EG', null, '1');
INSERT INTO `caLocState` VALUES ('1616', '98', 'Erd', 'ER', null, '1');
INSERT INTO `caLocState` VALUES ('1617', '98', 'Fejér', 'FE', null, '1');
INSERT INTO `caLocState` VALUES ('1618', '98', 'Gyor', 'GY', null, '1');
INSERT INTO `caLocState` VALUES ('1619', '98', 'Gyor-Moson-Sopron', 'GS', null, '1');
INSERT INTO `caLocState` VALUES ('1620', '98', 'Hajdú-Bihar', 'HB', null, '1');
INSERT INTO `caLocState` VALUES ('1621', '98', 'Heves', 'HE', null, '1');
INSERT INTO `caLocState` VALUES ('1622', '98', 'Hódmezovásárhely', 'HV', null, '1');
INSERT INTO `caLocState` VALUES ('1623', '98', 'Jász-Nagykun-Szolnok', 'JN', null, '1');
INSERT INTO `caLocState` VALUES ('1624', '98', 'Kaposvár', 'KV', null, '1');
INSERT INTO `caLocState` VALUES ('1625', '98', 'Kecskemét', 'KM', null, '1');
INSERT INTO `caLocState` VALUES ('1626', '98', 'Komárom-Esztergom', 'KE', null, '1');
INSERT INTO `caLocState` VALUES ('1627', '98', 'Miskolc', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('1628', '98', 'Nagykanizsa', 'NK', null, '1');
INSERT INTO `caLocState` VALUES ('1629', '98', 'Nyíregyháza', 'NY', null, '1');
INSERT INTO `caLocState` VALUES ('1630', '98', 'Nógrád', 'NO', null, '1');
INSERT INTO `caLocState` VALUES ('1631', '98', 'Pest', 'PE', null, '1');
INSERT INTO `caLocState` VALUES ('1632', '98', 'Pécs', 'PS', null, '1');
INSERT INTO `caLocState` VALUES ('1633', '98', 'Salgótarján', 'ST', null, '1');
INSERT INTO `caLocState` VALUES ('1634', '98', 'Somogy', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('1635', '98', 'Sopron', 'SN', null, '1');
INSERT INTO `caLocState` VALUES ('1636', '98', 'Szabolcs-Szatmár-Bereg', 'SZ', null, '1');
INSERT INTO `caLocState` VALUES ('1637', '98', 'Szeged', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('1638', '98', 'Szekszárd', 'SS', null, '1');
INSERT INTO `caLocState` VALUES ('1639', '98', 'Szolnok', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('1640', '98', 'Szombathely', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('1641', '98', 'Székesfehérvár', 'SF', null, '1');
INSERT INTO `caLocState` VALUES ('1642', '98', 'Tatabánya', 'TB', null, '1');
INSERT INTO `caLocState` VALUES ('1643', '98', 'Tolna', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('1644', '98', 'Vas', 'VA', null, '1');
INSERT INTO `caLocState` VALUES ('1645', '98', 'Veszprém', 'VE', null, '1');
INSERT INTO `caLocState` VALUES ('1646', '98', 'Veszprém City', 'VM', null, '1');
INSERT INTO `caLocState` VALUES ('1647', '98', 'Zala', 'ZA', null, '1');
INSERT INTO `caLocState` VALUES ('1648', '98', 'Zalaegerszeg', 'ZE', null, '1');
INSERT INTO `caLocState` VALUES ('1649', '99', 'Austurland', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1650', '99', 'Höfuðborgarsvæði utan Reykjavíkur', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1651', '99', 'Norðurland eystra', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1652', '99', 'Norðurland vestra', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1653', '99', 'Reykjavík', '0', null, '1');
INSERT INTO `caLocState` VALUES ('1654', '99', 'Suðurland', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1655', '99', 'Suðurnes', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1656', '99', 'Vestfirðir', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1657', '99', 'Vesturland', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1658', '100', 'Andaman and Nicobar Islands', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('1659', '100', 'Andhra Pradesh', 'AP', null, '1');
INSERT INTO `caLocState` VALUES ('1660', '100', 'Arunachal Pradesh', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('1661', '100', 'Assam', 'AS', null, '1');
INSERT INTO `caLocState` VALUES ('1662', '100', 'Bihar', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('1663', '100', 'Chandigarh', 'CH', null, '1');
INSERT INTO `caLocState` VALUES ('1664', '100', 'Chhattisgarh', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('1665', '100', 'Dadra and Nagar Haveli', 'DN', null, '1');
INSERT INTO `caLocState` VALUES ('1666', '100', 'Daman and Diu', 'DD', null, '1');
INSERT INTO `caLocState` VALUES ('1667', '100', 'Delhi', 'DL', null, '1');
INSERT INTO `caLocState` VALUES ('1668', '100', 'Goa', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('1669', '100', 'Gujarat', 'GJ', null, '1');
INSERT INTO `caLocState` VALUES ('1670', '100', 'Haryana', 'HR', null, '1');
INSERT INTO `caLocState` VALUES ('1671', '100', 'Himachal Pradesh', 'HP', null, '1');
INSERT INTO `caLocState` VALUES ('1672', '100', 'Jammu and Kashmir', 'JK', null, '1');
INSERT INTO `caLocState` VALUES ('1673', '100', 'Jharkhand', 'JH', null, '1');
INSERT INTO `caLocState` VALUES ('1674', '100', 'Karnataka', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('1675', '100', 'Kerala', 'KL', null, '1');
INSERT INTO `caLocState` VALUES ('1676', '100', 'Lakshadweep', 'LD', null, '1');
INSERT INTO `caLocState` VALUES ('1677', '100', 'Madhya Pradesh', 'MP', null, '1');
INSERT INTO `caLocState` VALUES ('1678', '100', 'Maharashtra', 'MH', null, '1');
INSERT INTO `caLocState` VALUES ('1679', '100', 'Manipur', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('1680', '100', 'Meghalaya', 'ML', null, '1');
INSERT INTO `caLocState` VALUES ('1681', '100', 'Mizoram', 'MZ', null, '1');
INSERT INTO `caLocState` VALUES ('1682', '100', 'Nagaland', 'NL', null, '1');
INSERT INTO `caLocState` VALUES ('1683', '100', 'Orissa', 'OR', null, '1');
INSERT INTO `caLocState` VALUES ('1684', '100', 'Pondicherry', 'PY', null, '1');
INSERT INTO `caLocState` VALUES ('1685', '100', 'Punjab', 'PB', null, '1');
INSERT INTO `caLocState` VALUES ('1686', '100', 'Rajasthan', 'RJ', null, '1');
INSERT INTO `caLocState` VALUES ('1687', '100', 'Sikkim', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('1688', '100', 'Tamil Nadu', 'TN', null, '1');
INSERT INTO `caLocState` VALUES ('1689', '100', 'Tripura', 'TR', null, '1');
INSERT INTO `caLocState` VALUES ('1690', '100', 'Uttar Pradesh', 'UP', null, '1');
INSERT INTO `caLocState` VALUES ('1691', '100', 'Uttaranchal', 'UT', null, '1');
INSERT INTO `caLocState` VALUES ('1692', '100', 'West Bengal', 'WB', null, '1');
INSERT INTO `caLocState` VALUES ('1693', '101', 'Aceh', 'AC', null, '1');
INSERT INTO `caLocState` VALUES ('1694', '101', 'Bali', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1695', '101', 'Bangka Belitung', 'BB', null, '1');
INSERT INTO `caLocState` VALUES ('1696', '101', 'Banten', 'BT', null, '1');
INSERT INTO `caLocState` VALUES ('1697', '101', 'Bengkulu', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('1698', '101', 'Gorontalo', 'GO', null, '1');
INSERT INTO `caLocState` VALUES ('1699', '101', 'Jakarta Raya', 'JK', null, '1');
INSERT INTO `caLocState` VALUES ('1700', '101', 'Jambi', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('1701', '101', 'Jawa', 'JW', null, '1');
INSERT INTO `caLocState` VALUES ('1702', '101', 'Jawa Barat', 'JB', null, '1');
INSERT INTO `caLocState` VALUES ('1703', '101', 'Jawa Tengah', 'JT', null, '1');
INSERT INTO `caLocState` VALUES ('1704', '101', 'Jawa Timur', 'JI', null, '1');
INSERT INTO `caLocState` VALUES ('1705', '101', 'Kalimantan', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('1706', '101', 'Kalimantan Barat', 'KB', null, '1');
INSERT INTO `caLocState` VALUES ('1707', '101', 'Kalimantan Selatan', 'KS', null, '1');
INSERT INTO `caLocState` VALUES ('1708', '101', 'Kalimantan Tengah', 'KT', null, '1');
INSERT INTO `caLocState` VALUES ('1709', '101', 'Kalimantan Timur', 'KI', null, '1');
INSERT INTO `caLocState` VALUES ('1710', '101', 'Kepulauan Riau', 'KR', null, '1');
INSERT INTO `caLocState` VALUES ('1711', '101', 'Lampung', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('1712', '101', 'Maluku', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('1713', '101', 'Maluku', 'ML', null, '1');
INSERT INTO `caLocState` VALUES ('1714', '101', 'Maluku Utara', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('1715', '101', 'Nusa Tenggara', 'NU', null, '1');
INSERT INTO `caLocState` VALUES ('1716', '101', 'Nusa Tenggara Barat', 'NB', null, '1');
INSERT INTO `caLocState` VALUES ('1717', '101', 'Nusa Tenggara Timur', 'NT', null, '1');
INSERT INTO `caLocState` VALUES ('1718', '101', 'Papua', 'IJ', null, '1');
INSERT INTO `caLocState` VALUES ('1719', '101', 'Papua', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('1720', '101', 'Papua Barat', 'PB', null, '1');
INSERT INTO `caLocState` VALUES ('1721', '101', 'Riau', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('1722', '101', 'Sulawesi', 'SL', null, '1');
INSERT INTO `caLocState` VALUES ('1723', '101', 'Sulawesi Barat', 'SR', null, '1');
INSERT INTO `caLocState` VALUES ('1724', '101', 'Sulawesi Selatan', 'SN', null, '1');
INSERT INTO `caLocState` VALUES ('1725', '101', 'Sulawesi Tengah', 'ST', null, '1');
INSERT INTO `caLocState` VALUES ('1726', '101', 'Sulawesi Tenggara', 'SG', null, '1');
INSERT INTO `caLocState` VALUES ('1727', '101', 'Sulawesi Utara', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('1728', '101', 'Sumatera', 'SM', null, '1');
INSERT INTO `caLocState` VALUES ('1729', '101', 'Sumatera Barat', 'SB', null, '1');
INSERT INTO `caLocState` VALUES ('1730', '101', 'Sumatera Selatan', 'SS', null, '1');
INSERT INTO `caLocState` VALUES ('1731', '101', 'Sumatera Utara', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('1732', '101', 'Yogyakarta', 'YO', null, '1');
INSERT INTO `caLocState` VALUES ('1733', '102', 'Ardabil', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1734', '102', 'Az¯arbayjan-e Gharbi', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1735', '102', 'Az¯arbayjan-e Sharqi', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1736', '102', 'Bushehr', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1737', '102', 'Chahar Mah¸all va Bakhtiari', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1738', '102', 'Esfahan', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1739', '102', 'Fars', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1740', '102', 'Gilan', '19', null, '1');
INSERT INTO `caLocState` VALUES ('1741', '102', 'Golestan', '27', null, '1');
INSERT INTO `caLocState` VALUES ('1742', '102', 'Hamadan', '24', null, '1');
INSERT INTO `caLocState` VALUES ('1743', '102', 'Hormozgan', '23', null, '1');
INSERT INTO `caLocState` VALUES ('1744', '102', 'Ilam', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1745', '102', 'Kerman', '15', null, '1');
INSERT INTO `caLocState` VALUES ('1746', '102', 'Kermanshah', '17', null, '1');
INSERT INTO `caLocState` VALUES ('1747', '102', 'Khorasan', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1748', '102', 'Khorasan-e Janubi', '29', null, '1');
INSERT INTO `caLocState` VALUES ('1749', '102', 'Khorasan-e Razavi', '30', null, '1');
INSERT INTO `caLocState` VALUES ('1750', '102', 'Khorasan-e Shemali', '31', null, '1');
INSERT INTO `caLocState` VALUES ('1751', '102', 'Khuzestan', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1752', '102', 'Kohkiluyeh va Buyer Ahmad', '18', null, '1');
INSERT INTO `caLocState` VALUES ('1753', '102', 'Kordestan', '16', null, '1');
INSERT INTO `caLocState` VALUES ('1754', '102', 'Lorestan', '20', null, '1');
INSERT INTO `caLocState` VALUES ('1755', '102', 'Markazi', '22', null, '1');
INSERT INTO `caLocState` VALUES ('1756', '102', 'Mazandaran', '21', null, '1');
INSERT INTO `caLocState` VALUES ('1757', '102', 'Qazvin', '28', null, '1');
INSERT INTO `caLocState` VALUES ('1758', '102', 'Qom', '26', null, '1');
INSERT INTO `caLocState` VALUES ('1759', '102', 'Semnan', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1760', '102', 'Sistan va Baluchestan', '13', null, '1');
INSERT INTO `caLocState` VALUES ('1761', '102', 'Tehran', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1762', '102', 'Yazd', '25', null, '1');
INSERT INTO `caLocState` VALUES ('1763', '102', 'Zanjan', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1764', '103', 'Al Anbar', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('1765', '103', 'Al Basrah', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1766', '103', 'Al Muthanná', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('1767', '103', 'Al Qadisiyah', 'QA', null, '1');
INSERT INTO `caLocState` VALUES ('1768', '103', 'An Najaf', 'NA', null, '1');
INSERT INTO `caLocState` VALUES ('1769', '103', 'Arbil', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('1770', '103', 'As Sulaymaniyah', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('1771', '103', 'At Ta\'mim', 'TS', null, '1');
INSERT INTO `caLocState` VALUES ('1772', '103', 'Babil', 'BB', null, '1');
INSERT INTO `caLocState` VALUES ('1773', '103', 'Baghdad', 'BG', null, '1');
INSERT INTO `caLocState` VALUES ('1774', '103', 'Dahuk', 'DA', null, '1');
INSERT INTO `caLocState` VALUES ('1775', '103', 'Dhi Qar', 'DQ', null, '1');
INSERT INTO `caLocState` VALUES ('1776', '103', 'Diyalá', 'DI', null, '1');
INSERT INTO `caLocState` VALUES ('1777', '103', 'Karbala\'', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('1778', '103', 'Maysan', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('1779', '103', 'Ninawá', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('1780', '103', 'Salah ad Din', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('1781', '103', 'Wasit', 'WA', null, '1');
INSERT INTO `caLocState` VALUES ('1782', '104', 'Carlow', 'CW', null, '1');
INSERT INTO `caLocState` VALUES ('1783', '104', 'Cavan', 'CN', null, '1');
INSERT INTO `caLocState` VALUES ('1784', '104', 'Clare', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('1785', '104', 'Connaught', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('1786', '104', 'Cork', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('1787', '104', 'Donegal', 'DL', null, '1');
INSERT INTO `caLocState` VALUES ('1788', '104', 'Dublin', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('1789', '104', 'Galway', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('1790', '104', 'Kerry', 'KY', null, '1');
INSERT INTO `caLocState` VALUES ('1791', '104', 'Kildare', 'KE', null, '1');
INSERT INTO `caLocState` VALUES ('1792', '104', 'Kilkenny', 'KK', null, '1');
INSERT INTO `caLocState` VALUES ('1793', '104', 'Laois', 'LS', null, '1');
INSERT INTO `caLocState` VALUES ('1794', '104', 'Leinster', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('1795', '104', 'Leitrim', 'LM', null, '1');
INSERT INTO `caLocState` VALUES ('1796', '104', 'Limerick', 'LK', null, '1');
INSERT INTO `caLocState` VALUES ('1797', '104', 'Longford', 'LD', null, '1');
INSERT INTO `caLocState` VALUES ('1798', '104', 'Louth', 'LH', null, '1');
INSERT INTO `caLocState` VALUES ('1799', '104', 'Mayo', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('1800', '104', 'Meath', 'MH', null, '1');
INSERT INTO `caLocState` VALUES ('1801', '104', 'Monaghan', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('1802', '104', 'Munster', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('1803', '104', 'Offaly', 'OY', null, '1');
INSERT INTO `caLocState` VALUES ('1804', '104', 'Roscommon', 'RN', null, '1');
INSERT INTO `caLocState` VALUES ('1805', '104', 'Sligo', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('1806', '104', 'Tipperary', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('1807', '104', 'Ulster', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('1808', '104', 'Waterford', 'WD', null, '1');
INSERT INTO `caLocState` VALUES ('1809', '104', 'Westmeath', 'WH', null, '1');
INSERT INTO `caLocState` VALUES ('1810', '104', 'Wexford', 'WX', null, '1');
INSERT INTO `caLocState` VALUES ('1811', '104', 'Wicklow', 'WW', null, '1');
INSERT INTO `caLocState` VALUES ('1812', '105', 'HaDarom', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('1813', '105', 'Haifa', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('1814', '105', 'HaMerkaz', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('1815', '105', 'HaZafon', 'Z', null, '1');
INSERT INTO `caLocState` VALUES ('1816', '105', 'Tel-Aviv', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('1817', '105', 'Yerushalayim', 'JM', null, '1');
INSERT INTO `caLocState` VALUES ('1818', '106', 'Abruzzo', '65', null, '1');
INSERT INTO `caLocState` VALUES ('1819', '106', 'Agrigento', 'AG', null, '1');
INSERT INTO `caLocState` VALUES ('1820', '106', 'Alessandria', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('1821', '106', 'Ancona', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('1822', '106', 'Aosta', 'AO', null, '1');
INSERT INTO `caLocState` VALUES ('1823', '106', 'Arezzo', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('1824', '106', 'Ascoli Piceno', 'AP', null, '1');
INSERT INTO `caLocState` VALUES ('1825', '106', 'Asti', 'AT', null, '1');
INSERT INTO `caLocState` VALUES ('1826', '106', 'Avellino', 'AV', null, '1');
INSERT INTO `caLocState` VALUES ('1827', '106', 'Bari', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('1828', '106', 'Barletta-Andria-Trani', 'BT', null, '1');
INSERT INTO `caLocState` VALUES ('1829', '106', 'Basilicata', '77', null, '1');
INSERT INTO `caLocState` VALUES ('1830', '106', 'Belluno', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('1831', '106', 'Benevento', 'BN', null, '1');
INSERT INTO `caLocState` VALUES ('1832', '106', 'Bergamo', 'BG', null, '1');
INSERT INTO `caLocState` VALUES ('1833', '106', 'Biella', 'BI', null, '1');
INSERT INTO `caLocState` VALUES ('1834', '106', 'Bologna', 'BO', null, '1');
INSERT INTO `caLocState` VALUES ('1835', '106', 'Bolzano', 'BZ', null, '1');
INSERT INTO `caLocState` VALUES ('1836', '106', 'Brescia', 'BS', null, '1');
INSERT INTO `caLocState` VALUES ('1837', '106', 'Brindisi', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('1838', '106', 'Cagliari', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('1839', '106', 'Calabria', '78', null, '1');
INSERT INTO `caLocState` VALUES ('1840', '106', 'Caltanissetta', 'CL', null, '1');
INSERT INTO `caLocState` VALUES ('1841', '106', 'Campania', '72', null, '1');
INSERT INTO `caLocState` VALUES ('1842', '106', 'Campobasso', 'CB', null, '1');
INSERT INTO `caLocState` VALUES ('1843', '106', 'Carbonia-Iglesias', 'CI', null, '1');
INSERT INTO `caLocState` VALUES ('1844', '106', 'Caserta', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('1845', '106', 'Catania', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('1846', '106', 'Catanzaro', 'CZ', null, '1');
INSERT INTO `caLocState` VALUES ('1847', '106', 'Chieti', 'CH', null, '1');
INSERT INTO `caLocState` VALUES ('1848', '106', 'Como', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('1849', '106', 'Cosenza', 'CS', null, '1');
INSERT INTO `caLocState` VALUES ('1850', '106', 'Cremona', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('1851', '106', 'Crotone', 'KR', null, '1');
INSERT INTO `caLocState` VALUES ('1852', '106', 'Cuneo', 'CN', null, '1');
INSERT INTO `caLocState` VALUES ('1853', '106', 'Emilia-Romagna', '45', null, '1');
INSERT INTO `caLocState` VALUES ('1854', '106', 'Enna', 'EN', null, '1');
INSERT INTO `caLocState` VALUES ('1855', '106', 'Fermo', 'FM', null, '1');
INSERT INTO `caLocState` VALUES ('1856', '106', 'Ferrara', 'FE', null, '1');
INSERT INTO `caLocState` VALUES ('1857', '106', 'Firenze', 'FI', null, '1');
INSERT INTO `caLocState` VALUES ('1858', '106', 'Foggia', 'FG', null, '1');
INSERT INTO `caLocState` VALUES ('1859', '106', 'Forli-Cesena', 'FC', null, '1');
INSERT INTO `caLocState` VALUES ('1860', '106', 'Friuli-Venezia Giulia', '36', null, '1');
INSERT INTO `caLocState` VALUES ('1861', '106', 'Frosinone', 'FR', null, '1');
INSERT INTO `caLocState` VALUES ('1862', '106', 'Genova', 'GE', null, '1');
INSERT INTO `caLocState` VALUES ('1863', '106', 'Gorizia', 'GO', null, '1');
INSERT INTO `caLocState` VALUES ('1864', '106', 'Grosseto', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('1865', '106', 'Imperia', 'IM', null, '1');
INSERT INTO `caLocState` VALUES ('1866', '106', 'Isernia', 'IS', null, '1');
INSERT INTO `caLocState` VALUES ('1867', '106', 'L\'Aquila', 'AQ', null, '1');
INSERT INTO `caLocState` VALUES ('1868', '106', 'La Spezia', 'SP', null, '1');
INSERT INTO `caLocState` VALUES ('1869', '106', 'Latina', 'LT', null, '1');
INSERT INTO `caLocState` VALUES ('1870', '106', 'Lazio', '62', null, '1');
INSERT INTO `caLocState` VALUES ('1871', '106', 'Lecce', 'LE', null, '1');
INSERT INTO `caLocState` VALUES ('1872', '106', 'Lecco', 'LC', null, '1');
INSERT INTO `caLocState` VALUES ('1873', '106', 'Liguria', '42', null, '1');
INSERT INTO `caLocState` VALUES ('1874', '106', 'Livorno', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('1875', '106', 'Lodi', 'LO', null, '1');
INSERT INTO `caLocState` VALUES ('1876', '106', 'Lombardia', '25', null, '1');
INSERT INTO `caLocState` VALUES ('1877', '106', 'Lucca', 'LU', null, '1');
INSERT INTO `caLocState` VALUES ('1878', '106', 'Macerata', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('1879', '106', 'Mantova', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('1880', '106', 'Marche', '57', null, '1');
INSERT INTO `caLocState` VALUES ('1881', '106', 'Massa-Carrara', 'MS', null, '1');
INSERT INTO `caLocState` VALUES ('1882', '106', 'Matera', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('1883', '106', 'Medio Campidano', 'VS', null, '1');
INSERT INTO `caLocState` VALUES ('1884', '106', 'Messina', 'ME', null, '1');
INSERT INTO `caLocState` VALUES ('1885', '106', 'Milano', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('1886', '106', 'Modena', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('1887', '106', 'Molise', '67', null, '1');
INSERT INTO `caLocState` VALUES ('1888', '106', 'Monza e Brianza', 'MB', null, '1');
INSERT INTO `caLocState` VALUES ('1889', '106', 'Napoli', 'NA', null, '1');
INSERT INTO `caLocState` VALUES ('1890', '106', 'Novara', 'NO', null, '1');
INSERT INTO `caLocState` VALUES ('1891', '106', 'Nuoro', 'NU', null, '1');
INSERT INTO `caLocState` VALUES ('1892', '106', 'Ogliastra', 'OG', null, '1');
INSERT INTO `caLocState` VALUES ('1893', '106', 'Olbia-Tempio', 'OT', null, '1');
INSERT INTO `caLocState` VALUES ('1894', '106', 'Oristano', 'OR', null, '1');
INSERT INTO `caLocState` VALUES ('1895', '106', 'Padova', 'PD', null, '1');
INSERT INTO `caLocState` VALUES ('1896', '106', 'Palermo', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('1897', '106', 'Parma', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('1898', '106', 'Pavia', 'PV', null, '1');
INSERT INTO `caLocState` VALUES ('1899', '106', 'Perugia', 'PG', null, '1');
INSERT INTO `caLocState` VALUES ('1900', '106', 'Pesaro e Urbino', 'PU', null, '1');
INSERT INTO `caLocState` VALUES ('1901', '106', 'Pescara', 'PE', null, '1');
INSERT INTO `caLocState` VALUES ('1902', '106', 'Piacenza', 'PC', null, '1');
INSERT INTO `caLocState` VALUES ('1903', '106', 'Piemonte', '21', null, '1');
INSERT INTO `caLocState` VALUES ('1904', '106', 'Pisa', 'PI', null, '1');
INSERT INTO `caLocState` VALUES ('1905', '106', 'Pistoia', 'PT', null, '1');
INSERT INTO `caLocState` VALUES ('1906', '106', 'Pordenone', 'PN', null, '1');
INSERT INTO `caLocState` VALUES ('1907', '106', 'Potenza', 'PZ', null, '1');
INSERT INTO `caLocState` VALUES ('1908', '106', 'Prato', 'PO', null, '1');
INSERT INTO `caLocState` VALUES ('1909', '106', 'Puglia', '75', null, '1');
INSERT INTO `caLocState` VALUES ('1910', '106', 'Ragusa', 'RG', null, '1');
INSERT INTO `caLocState` VALUES ('1911', '106', 'Ravenna', 'RA', null, '1');
INSERT INTO `caLocState` VALUES ('1912', '106', 'Reggio Calabria', 'RC', null, '1');
INSERT INTO `caLocState` VALUES ('1913', '106', 'Reggio Emilia', 'RE', null, '1');
INSERT INTO `caLocState` VALUES ('1914', '106', 'Rieti', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('1915', '106', 'Rimini', 'RN', null, '1');
INSERT INTO `caLocState` VALUES ('1916', '106', 'Roma', 'RM', null, '1');
INSERT INTO `caLocState` VALUES ('1917', '106', 'Rovigo', 'RO', null, '1');
INSERT INTO `caLocState` VALUES ('1918', '106', 'Salerno', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('1919', '106', 'Sardegna', '88', null, '1');
INSERT INTO `caLocState` VALUES ('1920', '106', 'Sassari', 'SS', null, '1');
INSERT INTO `caLocState` VALUES ('1921', '106', 'Savona', 'SV', null, '1');
INSERT INTO `caLocState` VALUES ('1922', '106', 'Sicilia', '82', null, '1');
INSERT INTO `caLocState` VALUES ('1923', '106', 'Siena', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('1924', '106', 'Siracusa', 'SR', null, '1');
INSERT INTO `caLocState` VALUES ('1925', '106', 'Sondrio', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('1926', '106', 'Taranto', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('1927', '106', 'Teramo', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('1928', '106', 'Terni', 'TR', null, '1');
INSERT INTO `caLocState` VALUES ('1929', '106', 'Torino', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('1930', '106', 'Toscana', '52', null, '1');
INSERT INTO `caLocState` VALUES ('1931', '106', 'Trapani', 'TP', null, '1');
INSERT INTO `caLocState` VALUES ('1932', '106', 'Trentino-Alto Adige', '32', null, '1');
INSERT INTO `caLocState` VALUES ('1933', '106', 'Trento', 'TN', null, '1');
INSERT INTO `caLocState` VALUES ('1934', '106', 'Treviso', 'TV', null, '1');
INSERT INTO `caLocState` VALUES ('1935', '106', 'Trieste', 'TS', null, '1');
INSERT INTO `caLocState` VALUES ('1936', '106', 'Udine', 'UD', null, '1');
INSERT INTO `caLocState` VALUES ('1937', '106', 'Umbria', '55', null, '1');
INSERT INTO `caLocState` VALUES ('1938', '106', 'Valle d\'Aosta', '23', null, '1');
INSERT INTO `caLocState` VALUES ('1939', '106', 'Varese', 'VA', null, '1');
INSERT INTO `caLocState` VALUES ('1940', '106', 'Veneto', '34', null, '1');
INSERT INTO `caLocState` VALUES ('1941', '106', 'Venezia', 'VE', null, '1');
INSERT INTO `caLocState` VALUES ('1942', '106', 'Verbano-Cusio-Ossola', 'VB', null, '1');
INSERT INTO `caLocState` VALUES ('1943', '106', 'Vercelli', 'VC', null, '1');
INSERT INTO `caLocState` VALUES ('1944', '106', 'Verona', 'VR', null, '1');
INSERT INTO `caLocState` VALUES ('1945', '106', 'Vibo Valentia', 'VV', null, '1');
INSERT INTO `caLocState` VALUES ('1946', '106', 'Vicenza', 'VI', null, '1');
INSERT INTO `caLocState` VALUES ('1947', '106', 'Viterbo', 'VT', null, '1');
INSERT INTO `caLocState` VALUES ('1948', '107', 'Clarendon', '13', null, '1');
INSERT INTO `caLocState` VALUES ('1949', '107', 'Hanover', '9', null, '1');
INSERT INTO `caLocState` VALUES ('1950', '107', 'Kingston', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1951', '107', 'Manchester', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1952', '107', 'Portland', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1953', '107', 'Saint Andrew', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1954', '107', 'Saint Ann', '6', null, '1');
INSERT INTO `caLocState` VALUES ('1955', '107', 'Saint Catherine', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1956', '107', 'Saint Elizabeth', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1957', '107', 'Saint James', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1958', '107', 'Saint Mary', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1959', '107', 'Saint Thomas', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1960', '107', 'Trelawny', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1961', '107', 'Westmoreland', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1962', '108', 'Aiti [Aichi]', '23', null, '1');
INSERT INTO `caLocState` VALUES ('1963', '108', 'Akita', '5', null, '1');
INSERT INTO `caLocState` VALUES ('1964', '108', 'Aomori', '2', null, '1');
INSERT INTO `caLocState` VALUES ('1965', '108', 'Ehime', '38', null, '1');
INSERT INTO `caLocState` VALUES ('1966', '108', 'Gihu [Gifu]', '21', null, '1');
INSERT INTO `caLocState` VALUES ('1967', '108', 'Gunma', '10', null, '1');
INSERT INTO `caLocState` VALUES ('1968', '108', 'Hirosima [Hiroshima]', '34', null, '1');
INSERT INTO `caLocState` VALUES ('1969', '108', 'Hokkaidô [Hokkaido]', '1', null, '1');
INSERT INTO `caLocState` VALUES ('1970', '108', 'Hukui [Fukui]', '18', null, '1');
INSERT INTO `caLocState` VALUES ('1971', '108', 'Hukuoka [Fukuoka]', '40', null, '1');
INSERT INTO `caLocState` VALUES ('1972', '108', 'Hukusima [Fukushima]', '7', null, '1');
INSERT INTO `caLocState` VALUES ('1973', '108', 'Hyôgo [Hyogo]', '28', null, '1');
INSERT INTO `caLocState` VALUES ('1974', '108', 'Ibaraki', '8', null, '1');
INSERT INTO `caLocState` VALUES ('1975', '108', 'Isikawa [Ishikawa]', '17', null, '1');
INSERT INTO `caLocState` VALUES ('1976', '108', 'Iwate', '3', null, '1');
INSERT INTO `caLocState` VALUES ('1977', '108', 'Kagawa', '37', null, '1');
INSERT INTO `caLocState` VALUES ('1978', '108', 'Kagosima [Kagoshima]', '46', null, '1');
INSERT INTO `caLocState` VALUES ('1979', '108', 'Kanagawa', '14', null, '1');
INSERT INTO `caLocState` VALUES ('1980', '108', 'Kumamoto', '43', null, '1');
INSERT INTO `caLocState` VALUES ('1981', '108', 'Kyôto [Kyoto]', '26', null, '1');
INSERT INTO `caLocState` VALUES ('1982', '108', 'Kôti [Kochi]', '39', null, '1');
INSERT INTO `caLocState` VALUES ('1983', '108', 'Mie', '24', null, '1');
INSERT INTO `caLocState` VALUES ('1984', '108', 'Miyagi', '4', null, '1');
INSERT INTO `caLocState` VALUES ('1985', '108', 'Miyazaki', '45', null, '1');
INSERT INTO `caLocState` VALUES ('1986', '108', 'Nagano', '20', null, '1');
INSERT INTO `caLocState` VALUES ('1987', '108', 'Nagasaki', '42', null, '1');
INSERT INTO `caLocState` VALUES ('1988', '108', 'Nara', '29', null, '1');
INSERT INTO `caLocState` VALUES ('1989', '108', 'Niigata', '15', null, '1');
INSERT INTO `caLocState` VALUES ('1990', '108', 'Okayama', '33', null, '1');
INSERT INTO `caLocState` VALUES ('1991', '108', 'Okinawa', '47', null, '1');
INSERT INTO `caLocState` VALUES ('1992', '108', 'Saga', '41', null, '1');
INSERT INTO `caLocState` VALUES ('1993', '108', 'Saitama', '11', null, '1');
INSERT INTO `caLocState` VALUES ('1994', '108', 'Siga [Shiga]', '25', null, '1');
INSERT INTO `caLocState` VALUES ('1995', '108', 'Simane [Shimane]', '32', null, '1');
INSERT INTO `caLocState` VALUES ('1996', '108', 'Sizuoka [Shizuoka]', '22', null, '1');
INSERT INTO `caLocState` VALUES ('1997', '108', 'Tiba [Chiba]', '12', null, '1');
INSERT INTO `caLocState` VALUES ('1998', '108', 'Tokusima [Tokushima]', '36', null, '1');
INSERT INTO `caLocState` VALUES ('1999', '108', 'Totigi [Tochigi]', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2000', '108', 'Tottori', '31', null, '1');
INSERT INTO `caLocState` VALUES ('2001', '108', 'Toyama', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2002', '108', 'Tôkyô [Tokyo]', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2003', '108', 'Wakayama', '30', null, '1');
INSERT INTO `caLocState` VALUES ('2004', '108', 'Yamagata', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2005', '108', 'Yamaguti [Yamaguchi]', '35', null, '1');
INSERT INTO `caLocState` VALUES ('2006', '108', 'Yamanasi [Yamanashi]', '19', null, '1');
INSERT INTO `caLocState` VALUES ('2007', '108', 'Ôita [Oita]', '44', null, '1');
INSERT INTO `caLocState` VALUES ('2008', '108', 'Ôsaka [Osaka]', '27', null, '1');
INSERT INTO `caLocState` VALUES ('2009', '109', 'Al Balqa\'', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2010', '109', 'Al Karak', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('2011', '109', 'Al Mafraq', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('2012', '109', 'Al ‘Aqabah', 'AQ', null, '1');
INSERT INTO `caLocState` VALUES ('2013', '109', 'At Tafilah', 'AT', null, '1');
INSERT INTO `caLocState` VALUES ('2014', '109', 'Az Zarqā\'', 'AZ', null, '1');
INSERT INTO `caLocState` VALUES ('2015', '109', 'Irbid', 'IR', null, '1');
INSERT INTO `caLocState` VALUES ('2016', '109', 'Jarash', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('2017', '109', 'Ma`an', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('2018', '109', 'Mādabā', 'MD', null, '1');
INSERT INTO `caLocState` VALUES ('2019', '109', '‘Ajlūn', 'AJ', null, '1');
INSERT INTO `caLocState` VALUES ('2020', '109', '‘Ammān (Al ‘A̅ şimah)', 'AM', null, '1');
INSERT INTO `caLocState` VALUES ('2021', '110', 'Almaty', 'ALA', null, '1');
INSERT INTO `caLocState` VALUES ('2022', '110', 'Almaty oblysy', 'ALM', null, '1');
INSERT INTO `caLocState` VALUES ('2023', '110', 'Aqmola oblysy', 'AKM', null, '1');
INSERT INTO `caLocState` VALUES ('2024', '110', 'Aqtöbe oblysy', 'AKT', null, '1');
INSERT INTO `caLocState` VALUES ('2025', '110', 'Astana', 'AST', null, '1');
INSERT INTO `caLocState` VALUES ('2026', '110', 'Atyrau oblysy', 'ATY', null, '1');
INSERT INTO `caLocState` VALUES ('2027', '110', 'Batys Qazaqstan oblysy', 'ZAP', null, '1');
INSERT INTO `caLocState` VALUES ('2028', '110', 'Bayqongyr', 'BAY', null, '1');
INSERT INTO `caLocState` VALUES ('2029', '110', 'Mangghystau oblysy', 'MAN', null, '1');
INSERT INTO `caLocState` VALUES ('2030', '110', 'Ongtüstik Qazaqstan oblysy', 'YUZ', null, '1');
INSERT INTO `caLocState` VALUES ('2031', '110', 'Pavlodar oblysy', 'PAV', null, '1');
INSERT INTO `caLocState` VALUES ('2032', '110', 'Qaraghandy oblysy', 'KAR', null, '1');
INSERT INTO `caLocState` VALUES ('2033', '110', 'Qostanay oblysy', 'KUS', null, '1');
INSERT INTO `caLocState` VALUES ('2034', '110', 'Qyzylorda oblysy', 'KZY', null, '1');
INSERT INTO `caLocState` VALUES ('2035', '110', 'Shyghys Qazaqstan oblysy', 'VOS', null, '1');
INSERT INTO `caLocState` VALUES ('2036', '110', 'Soltüstik Qazaqstan oblysy', 'SEV', null, '1');
INSERT INTO `caLocState` VALUES ('2037', '110', 'Zhambyl oblysy', 'ZHA', null, '1');
INSERT INTO `caLocState` VALUES ('2038', '111', 'Central', '200', null, '1');
INSERT INTO `caLocState` VALUES ('2039', '111', 'Coast', '300', null, '1');
INSERT INTO `caLocState` VALUES ('2040', '111', 'Eastern', '400', null, '1');
INSERT INTO `caLocState` VALUES ('2041', '111', 'Nairobi', '110', null, '1');
INSERT INTO `caLocState` VALUES ('2042', '111', 'North-Eastern', '500', null, '1');
INSERT INTO `caLocState` VALUES ('2043', '111', 'Nyanza', '600', null, '1');
INSERT INTO `caLocState` VALUES ('2044', '111', 'Rift Valley', '700', null, '1');
INSERT INTO `caLocState` VALUES ('2045', '111', 'Western', '800', null, '1');
INSERT INTO `caLocState` VALUES ('2046', '112', 'Gilbert Islands', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('2047', '112', 'Line Islands', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('2048', '112', 'Phoenix Islands', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('2049', '113', 'Chagang-do', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2050', '113', 'Hamgyong-bukdo', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2051', '113', 'Hamgyong-namdo', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2052', '113', 'Hwanghae-bukto', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2053', '113', 'Hwanghae-namdo', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2054', '113', 'Kangwon-do', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2055', '113', 'Nason', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2056', '113', 'Pyongan-bukdo', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2057', '113', 'Pyongan-namdo', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2058', '113', 'Pyongyang', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2059', '113', 'Yanggang-do', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2060', '114', 'Busan Gwang\'yeogsi [Pusan-Kwangyokshi]', '26', null, '1');
INSERT INTO `caLocState` VALUES ('2061', '114', 'Chungcheongbugdo [Ch\'ungch\'ongbuk-do]', '43', null, '1');
INSERT INTO `caLocState` VALUES ('2062', '114', 'Chungcheongnamdo [Ch\'ungch\'ongnam-do]', '44', null, '1');
INSERT INTO `caLocState` VALUES ('2063', '114', 'Daegu Gwang\'yeogsi [Taegu-Kwangyokshi]', '27', null, '1');
INSERT INTO `caLocState` VALUES ('2064', '114', 'Daejeon Gwang\'yeogsi [Taejon-Kwangyokshi]', '30', null, '1');
INSERT INTO `caLocState` VALUES ('2065', '114', 'Gang\'weondo [Kang-won-do]', '42', null, '1');
INSERT INTO `caLocState` VALUES ('2066', '114', 'Gwangju Gwang\'yeogsi [Kwangju-Kwangyokshi]', '29', null, '1');
INSERT INTO `caLocState` VALUES ('2067', '114', 'Gyeonggido [Kyonggi-do]', '41', null, '1');
INSERT INTO `caLocState` VALUES ('2068', '114', 'Gyeongsangbugdo [Kyongsangbuk-do]', '47', null, '1');
INSERT INTO `caLocState` VALUES ('2069', '114', 'Gyeongsangnamdo [Kyongsangnam-do]', '48', null, '1');
INSERT INTO `caLocState` VALUES ('2070', '114', 'Incheon Gwang\'yeogsi [Inch\'n-Kwangyokshi]', '28', null, '1');
INSERT INTO `caLocState` VALUES ('2071', '114', 'Jejudo [Cheju-do]', '49', null, '1');
INSERT INTO `caLocState` VALUES ('2072', '114', 'Jeonrabugdo[Chollabuk-do]', '45', null, '1');
INSERT INTO `caLocState` VALUES ('2073', '114', 'Jeonranamdo [Chollanam-do]', '46', null, '1');
INSERT INTO `caLocState` VALUES ('2074', '114', 'Seoul Teugbyeolsi [Seoul-T\'ukpyolshi]', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2075', '114', 'Ulsan Gwang\'yeogsi [Ulsan-Kwangyokshi]', '31', null, '1');
INSERT INTO `caLocState` VALUES ('2076', '115', 'Al Ahmadi', 'AH', null, '1');
INSERT INTO `caLocState` VALUES ('2077', '115', 'Al Farwaniyah', 'FA', null, '1');
INSERT INTO `caLocState` VALUES ('2078', '115', 'Al Jahrah', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('2079', '115', 'Al Kuwayt (Al ‘Āşimah)', 'KU', null, '1');
INSERT INTO `caLocState` VALUES ('2080', '115', 'Hawalli', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('2081', '115', 'Mubarak al-Kabir', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('2082', '116', 'Batken', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('2083', '116', 'Bishkek', 'GB', null, '1');
INSERT INTO `caLocState` VALUES ('2084', '116', 'Chü', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('2085', '116', 'Jalal-Abad', 'J', null, '1');
INSERT INTO `caLocState` VALUES ('2086', '116', 'Naryn', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('2087', '116', 'Osh', 'O', null, '1');
INSERT INTO `caLocState` VALUES ('2088', '116', 'Talas', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('2089', '116', 'Ysyk-Köl', 'Y', null, '1');
INSERT INTO `caLocState` VALUES ('2090', '117', 'Attapu [Attopeu]', 'AT', null, '1');
INSERT INTO `caLocState` VALUES ('2091', '117', 'Bokèo', 'BK', null, '1');
INSERT INTO `caLocState` VALUES ('2092', '117', 'Bolikhamxai [Borikhane]', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('2093', '117', 'Champasak [Champassak]', 'CH', null, '1');
INSERT INTO `caLocState` VALUES ('2094', '117', 'Houaphan', 'HO', null, '1');
INSERT INTO `caLocState` VALUES ('2095', '117', 'Khammouan', 'KH', null, '1');
INSERT INTO `caLocState` VALUES ('2096', '117', 'Louang Namtha', 'LM', null, '1');
INSERT INTO `caLocState` VALUES ('2097', '117', 'Louangphabang [Louang Prabang]', 'LP', null, '1');
INSERT INTO `caLocState` VALUES ('2098', '117', 'Oudômxai [Oudomsai]', 'OU', null, '1');
INSERT INTO `caLocState` VALUES ('2099', '117', 'Phôngsali [Phong Saly]', 'PH', null, '1');
INSERT INTO `caLocState` VALUES ('2100', '117', 'Salavan [Saravane]', 'SL', null, '1');
INSERT INTO `caLocState` VALUES ('2101', '117', 'Savannakhét', 'SV', null, '1');
INSERT INTO `caLocState` VALUES ('2102', '117', 'Vientiane', 'VI', null, '1');
INSERT INTO `caLocState` VALUES ('2103', '117', 'Vientiane Prefecture', 'VT', null, '1');
INSERT INTO `caLocState` VALUES ('2104', '117', 'Xaignabouli [Sayaboury]', 'XA', null, '1');
INSERT INTO `caLocState` VALUES ('2105', '117', 'Xaisômboun', 'XN', null, '1');
INSERT INTO `caLocState` VALUES ('2106', '117', 'Xiangkhoang [Xieng Khouang]', 'XI', null, '1');
INSERT INTO `caLocState` VALUES ('2107', '117', 'Xékong [Sékong]', 'XE', null, '1');
INSERT INTO `caLocState` VALUES ('2108', '118', 'Aglonas novads (Aglona)', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2109', '118', 'Aizkraukles novads (Aizkraukle)', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2110', '118', 'Aizputes novads (Aizpute)', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2111', '118', 'Aknīstes novads (Aknīste)', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2112', '118', 'Alojas novads (Aloja)', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2113', '118', 'Alsungas novads (Alsunga)', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2114', '118', 'Alūksnes novads (Alūksne)', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2115', '118', 'Amatas novads (Amata)', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2116', '118', 'Apes novads (Ape)', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2117', '118', 'Auces novads (Auce)', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2118', '118', 'Babītes novads (Babīte)', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2119', '118', 'Baldones novads (Baldone)', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2120', '118', 'Baltinavas novads (Baltinava)', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2121', '118', 'Balvu novads (Balvi)', '15', null, '1');
INSERT INTO `caLocState` VALUES ('2122', '118', 'Bauskas novads (Bauska)', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2123', '118', 'Beverīnas novads (Beverīna)', '17', null, '1');
INSERT INTO `caLocState` VALUES ('2124', '118', 'Brocēnu novads (Brocēni)', '18', null, '1');
INSERT INTO `caLocState` VALUES ('2125', '118', 'Burtnieku novads (Burtnieki)', '19', null, '1');
INSERT INTO `caLocState` VALUES ('2126', '118', 'Carnikavas novads (Carnikava)', '20', null, '1');
INSERT INTO `caLocState` VALUES ('2127', '118', 'Cesvaines novads (Cesvaine)', '21', null, '1');
INSERT INTO `caLocState` VALUES ('2128', '118', 'Ciblas novads (Cibla)', '23', null, '1');
INSERT INTO `caLocState` VALUES ('2129', '118', 'Cēsu novads (Cēsis)', '22', null, '1');
INSERT INTO `caLocState` VALUES ('2130', '118', 'Dagdas novads (Dagda)', '24', null, '1');
INSERT INTO `caLocState` VALUES ('2131', '118', 'Daugavpils', 'DGV', null, '1');
INSERT INTO `caLocState` VALUES ('2132', '118', 'Daugavpils novads (Daugavpils)', '25', null, '1');
INSERT INTO `caLocState` VALUES ('2133', '118', 'Dobeles novads (Dobele)', '26', null, '1');
INSERT INTO `caLocState` VALUES ('2134', '118', 'Dundagas novads (Dundaga)', '27', null, '1');
INSERT INTO `caLocState` VALUES ('2135', '118', 'Durbes novads (Durbe)', '28', null, '1');
INSERT INTO `caLocState` VALUES ('2136', '118', 'Engures novads (Engure)', '29', null, '1');
INSERT INTO `caLocState` VALUES ('2137', '118', 'Garkalnes novads (Garkalne)', '31', null, '1');
INSERT INTO `caLocState` VALUES ('2138', '118', 'Grobiņas novads (Grobiņa)', '32', null, '1');
INSERT INTO `caLocState` VALUES ('2139', '118', 'Gulbenes novads (Gulbene)', '33', null, '1');
INSERT INTO `caLocState` VALUES ('2140', '118', 'Iecavas novads (Iecava)', '34', null, '1');
INSERT INTO `caLocState` VALUES ('2141', '118', 'Ikšķiles novads (Ikšķile)', '35', null, '1');
INSERT INTO `caLocState` VALUES ('2142', '118', 'Ilūkstes novads (Ilūkste)', '36', null, '1');
INSERT INTO `caLocState` VALUES ('2143', '118', 'Inčukalna novads (Inčukalns)', '37', null, '1');
INSERT INTO `caLocState` VALUES ('2144', '118', 'Jaunjelgavas novads (Jaunjelgava)', '38', null, '1');
INSERT INTO `caLocState` VALUES ('2145', '118', 'Jaunpiebalgas novads (Jaunpiebalga)', '39', null, '1');
INSERT INTO `caLocState` VALUES ('2146', '118', 'Jaunpils novads (Jaunpils)', '40', null, '1');
INSERT INTO `caLocState` VALUES ('2147', '118', 'Jelgava', 'JEL', null, '1');
INSERT INTO `caLocState` VALUES ('2148', '118', 'Jelgavas novads (Jelgava)', '41', null, '1');
INSERT INTO `caLocState` VALUES ('2149', '118', 'Jurmala', 'JUR', null, '1');
INSERT INTO `caLocState` VALUES ('2150', '118', 'Jēkabpils', 'JKB', null, '1');
INSERT INTO `caLocState` VALUES ('2151', '118', 'Jēkabpils novads (Jēkabpils)', '42', null, '1');
INSERT INTO `caLocState` VALUES ('2152', '118', 'Kandavas novads (Kandava)', '43', null, '1');
INSERT INTO `caLocState` VALUES ('2153', '118', 'Kocēnu novads', '45', null, '1');
INSERT INTO `caLocState` VALUES ('2154', '118', 'Kokneses novads (Koknese)', '46', null, '1');
INSERT INTO `caLocState` VALUES ('2155', '118', 'Krimuldas novads (Krimulda)', '48', null, '1');
INSERT INTO `caLocState` VALUES ('2156', '118', 'Krustpils novads (Krustpils)', '49', null, '1');
INSERT INTO `caLocState` VALUES ('2157', '118', 'Krāslavas novads (Krāslava)', '47', null, '1');
INSERT INTO `caLocState` VALUES ('2158', '118', 'Kuldīgas novads (Kuldīga)', '50', null, '1');
INSERT INTO `caLocState` VALUES ('2159', '118', 'Kārsavas novads (Kārsava)', '44', null, '1');
INSERT INTO `caLocState` VALUES ('2160', '118', 'Lielvārdes novads (Lielvārde)', '53', null, '1');
INSERT INTO `caLocState` VALUES ('2161', '118', 'Liepaja', 'LPX', null, '1');
INSERT INTO `caLocState` VALUES ('2162', '118', 'Limbažu novads (Limbaži)', '54', null, '1');
INSERT INTO `caLocState` VALUES ('2163', '118', 'Lubānas novads (Lubāna)', '57', null, '1');
INSERT INTO `caLocState` VALUES ('2164', '118', 'Ludzas novads (Ludza)', '58', null, '1');
INSERT INTO `caLocState` VALUES ('2165', '118', 'Līgatnes novads (Līgatne)', '55', null, '1');
INSERT INTO `caLocState` VALUES ('2166', '118', 'Līvānu novads (Līvāni)', '56', null, '1');
INSERT INTO `caLocState` VALUES ('2167', '118', 'Madonas novads (Madona)', '59', null, '1');
INSERT INTO `caLocState` VALUES ('2168', '118', 'Mazsalacas novads (Mazsalaca)', '60', null, '1');
INSERT INTO `caLocState` VALUES ('2169', '118', 'Mālpils novads (Mālpils)', '61', null, '1');
INSERT INTO `caLocState` VALUES ('2170', '118', 'Mārupes novads (Mārupe)', '62', null, '1');
INSERT INTO `caLocState` VALUES ('2171', '118', 'Mērsraga novads', '63', null, '1');
INSERT INTO `caLocState` VALUES ('2172', '118', 'Naukšēnu novads (Naukšēni)', '64', null, '1');
INSERT INTO `caLocState` VALUES ('2173', '118', 'Neretas novads (Nereta)', '65', null, '1');
INSERT INTO `caLocState` VALUES ('2174', '118', 'Nīcas novads (Nīca)', '66', null, '1');
INSERT INTO `caLocState` VALUES ('2175', '118', 'Ogres novads (Ogre)', '67', null, '1');
INSERT INTO `caLocState` VALUES ('2176', '118', 'Olaines novads (Olaine)', '68', null, '1');
INSERT INTO `caLocState` VALUES ('2177', '118', 'Ozolnieku novads (Ozolnieki)', '69', null, '1');
INSERT INTO `caLocState` VALUES ('2178', '118', 'Preiļu novads (Preiļi)', '73', null, '1');
INSERT INTO `caLocState` VALUES ('2179', '118', 'Priekules novads (Priekule)', '74', null, '1');
INSERT INTO `caLocState` VALUES ('2180', '118', 'Priekuļu novads (Priekuļi)', '75', null, '1');
INSERT INTO `caLocState` VALUES ('2181', '118', 'Pārgaujas novads (Pārgauja)', '70', null, '1');
INSERT INTO `caLocState` VALUES ('2182', '118', 'Pāvilostas novads (Pāvilosta)', '71', null, '1');
INSERT INTO `caLocState` VALUES ('2183', '118', 'Pļaviņu novads (Pļaviņas)', '72', null, '1');
INSERT INTO `caLocState` VALUES ('2184', '118', 'Raunas novads (Rauna)', '76', null, '1');
INSERT INTO `caLocState` VALUES ('2185', '118', 'Rezekne', 'REZ', null, '1');
INSERT INTO `caLocState` VALUES ('2186', '118', 'Riebiņu novads (Riebiņi)', '78', null, '1');
INSERT INTO `caLocState` VALUES ('2187', '118', 'Riga', 'RIX', null, '1');
INSERT INTO `caLocState` VALUES ('2188', '118', 'Rojas novads (Roja)', '79', null, '1');
INSERT INTO `caLocState` VALUES ('2189', '118', 'Ropažu novads (Ropaži)', '80', null, '1');
INSERT INTO `caLocState` VALUES ('2190', '118', 'Rucavas novads (Rucava)', '81', null, '1');
INSERT INTO `caLocState` VALUES ('2191', '118', 'Rugāju novads (Rugāji)', '82', null, '1');
INSERT INTO `caLocState` VALUES ('2192', '118', 'Rundāles novads (Rundāle)', '83', null, '1');
INSERT INTO `caLocState` VALUES ('2193', '118', 'Rēzeknes novads (Rēzekne)', '77', null, '1');
INSERT INTO `caLocState` VALUES ('2194', '118', 'Rūjienas novads (Rūjiena)', '84', null, '1');
INSERT INTO `caLocState` VALUES ('2195', '118', 'Salacgrīvas novads (Salacgrīva)', '86', null, '1');
INSERT INTO `caLocState` VALUES ('2196', '118', 'Salas novads (Sala)', '85', null, '1');
INSERT INTO `caLocState` VALUES ('2197', '118', 'Salaspils novads (Salaspils)', '87', null, '1');
INSERT INTO `caLocState` VALUES ('2198', '118', 'Saldus novads (Saldus)', '88', null, '1');
INSERT INTO `caLocState` VALUES ('2199', '118', 'Saulkrastu novads (Saulkrasti)', '89', null, '1');
INSERT INTO `caLocState` VALUES ('2200', '118', 'Siguldas novads (Sigulda)', '91', null, '1');
INSERT INTO `caLocState` VALUES ('2201', '118', 'Skrundas novads (Skrunda)', '93', null, '1');
INSERT INTO `caLocState` VALUES ('2202', '118', 'Skrīveru novads (Skrīveri)', '92', null, '1');
INSERT INTO `caLocState` VALUES ('2203', '118', 'Smiltenes novads (Smiltene)', '94', null, '1');
INSERT INTO `caLocState` VALUES ('2204', '118', 'Stopiņu novads (Stopiņi)', '95', null, '1');
INSERT INTO `caLocState` VALUES ('2205', '118', 'Strenču novads (Strenči)', '96', null, '1');
INSERT INTO `caLocState` VALUES ('2206', '118', 'Sējas novads (Sēja)', '90', null, '1');
INSERT INTO `caLocState` VALUES ('2207', '118', 'Talsu novads (Talsi)', '97', null, '1');
INSERT INTO `caLocState` VALUES ('2208', '118', 'Tukuma novads (Tukums)', '99', null, '1');
INSERT INTO `caLocState` VALUES ('2209', '118', 'Tērvetes novads (Tērvete)', '98', null, '1');
INSERT INTO `caLocState` VALUES ('2210', '118', 'Vaiņodes novads (Vaiņode)', '100', null, '1');
INSERT INTO `caLocState` VALUES ('2211', '118', 'Valkas novads (Valka)', '101', null, '1');
INSERT INTO `caLocState` VALUES ('2212', '118', 'Valmiera', 'VMR', null, '1');
INSERT INTO `caLocState` VALUES ('2213', '118', 'Varakļānu novads (Varakļāni)', '102', null, '1');
INSERT INTO `caLocState` VALUES ('2214', '118', 'Vecpiebalgas novads (Vecpiebalga)', '104', null, '1');
INSERT INTO `caLocState` VALUES ('2215', '118', 'Vecumnieku novads (Vecumnieki)', '105', null, '1');
INSERT INTO `caLocState` VALUES ('2216', '118', 'Ventspils', 'VEN', null, '1');
INSERT INTO `caLocState` VALUES ('2217', '118', 'Ventspils novads (Ventspils)', '106', null, '1');
INSERT INTO `caLocState` VALUES ('2218', '118', 'Viesītes novads (Viesīte)', '107', null, '1');
INSERT INTO `caLocState` VALUES ('2219', '118', 'Viļakas novads (Viļaka)', '108', null, '1');
INSERT INTO `caLocState` VALUES ('2220', '118', 'Viļānu novads (Viļāni)', '109', null, '1');
INSERT INTO `caLocState` VALUES ('2221', '118', 'Vārkavas novads (Vārkava)', '103', null, '1');
INSERT INTO `caLocState` VALUES ('2222', '118', 'Zilupes novads (Zilupe)', '110', null, '1');
INSERT INTO `caLocState` VALUES ('2223', '118', 'Ādažu novads (Ādaži)', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2224', '118', 'Ērgļu novads (Ērgļi)', '30', null, '1');
INSERT INTO `caLocState` VALUES ('2225', '118', 'Ķeguma novads (Ķegums)', '51', null, '1');
INSERT INTO `caLocState` VALUES ('2226', '118', 'Ķekavas novads (Ķekava)', '52', null, '1');
INSERT INTO `caLocState` VALUES ('2227', '119', 'Aakkar', 'AK', null, '1');
INSERT INTO `caLocState` VALUES ('2228', '119', 'Baalbek-Hermel', 'BH', null, '1');
INSERT INTO `caLocState` VALUES ('2229', '119', 'Beirut', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2230', '119', 'El Béqaa', 'BI', null, '1');
INSERT INTO `caLocState` VALUES ('2231', '119', 'Jabal Loubnâne', 'JL', null, '1');
INSERT INTO `caLocState` VALUES ('2232', '119', 'Loubnâne ech Chemâli', 'AS', null, '1');
INSERT INTO `caLocState` VALUES ('2233', '119', 'Loubnâne ej Jnoûbi', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('2234', '119', 'Nabatîyé', 'NA', null, '1');
INSERT INTO `caLocState` VALUES ('2235', '120', 'Berea', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('2236', '120', 'Butha-Buthe', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('2237', '120', 'Leribe', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('2238', '120', 'Mafeteng', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('2239', '120', 'Maseru', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('2240', '120', 'Mohale\'s Hoek', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('2241', '120', 'Mokhotlong', 'J', null, '1');
INSERT INTO `caLocState` VALUES ('2242', '120', 'Qacha\'s Nek', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('2243', '120', 'Quthing', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('2244', '120', 'Thaba-Tseka', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('2245', '121', 'Bomi', 'BM', null, '1');
INSERT INTO `caLocState` VALUES ('2246', '121', 'Bong', 'BG', null, '1');
INSERT INTO `caLocState` VALUES ('2247', '121', 'Gbarpolu', 'X1~', null, '1');
INSERT INTO `caLocState` VALUES ('2248', '121', 'Grand Bassa', 'GB', null, '1');
INSERT INTO `caLocState` VALUES ('2249', '121', 'Grand Cape Mount', 'CM', null, '1');
INSERT INTO `caLocState` VALUES ('2250', '121', 'Grand Gedeh', 'GG', null, '1');
INSERT INTO `caLocState` VALUES ('2251', '121', 'Grand Kru', 'GK', null, '1');
INSERT INTO `caLocState` VALUES ('2252', '121', 'Lofa', 'LO', null, '1');
INSERT INTO `caLocState` VALUES ('2253', '121', 'Margibi', 'MG', null, '1');
INSERT INTO `caLocState` VALUES ('2254', '121', 'Maryland', 'MY', null, '1');
INSERT INTO `caLocState` VALUES ('2255', '121', 'Montserrado', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('2256', '121', 'Nimba', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('2257', '121', 'River Gee', 'X2~', null, '1');
INSERT INTO `caLocState` VALUES ('2258', '121', 'Rivercess', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('2259', '121', 'Sinoe', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('2260', '122', 'Al Butnan', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('2261', '122', 'Al Jabal al Akh?ar', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('2262', '122', 'Al Jabal al Gharbī', 'JG', null, '1');
INSERT INTO `caLocState` VALUES ('2263', '122', 'Al Jifarah', 'JI', null, '1');
INSERT INTO `caLocState` VALUES ('2264', '122', 'Al Jufrah', 'JU', null, '1');
INSERT INTO `caLocState` VALUES ('2265', '122', 'Al Kufrah', 'KF', null, '1');
INSERT INTO `caLocState` VALUES ('2266', '122', 'Al Marj', 'MJ', null, '1');
INSERT INTO `caLocState` VALUES ('2267', '122', 'Al Marqab', 'MB', null, '1');
INSERT INTO `caLocState` VALUES ('2268', '122', 'Al Wāḩāt', 'WA', null, '1');
INSERT INTO `caLocState` VALUES ('2269', '122', 'An Nuqat al Khams', 'NQ', null, '1');
INSERT INTO `caLocState` VALUES ('2270', '122', 'Az Zawiyah', 'ZA', null, '1');
INSERT INTO `caLocState` VALUES ('2271', '122', 'Banghazi', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2272', '122', 'Darnah', 'DR', null, '1');
INSERT INTO `caLocState` VALUES ('2273', '122', 'Ghat', 'GT', null, '1');
INSERT INTO `caLocState` VALUES ('2274', '122', 'Misratah', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('2275', '122', 'Murzuq', 'MQ', null, '1');
INSERT INTO `caLocState` VALUES ('2276', '122', 'Nalut', 'NL', null, '1');
INSERT INTO `caLocState` VALUES ('2277', '122', 'Sabha', 'SB', null, '1');
INSERT INTO `caLocState` VALUES ('2278', '122', 'Surt', 'SR', null, '1');
INSERT INTO `caLocState` VALUES ('2279', '122', 'Tarabulus', 'TB', null, '1');
INSERT INTO `caLocState` VALUES ('2280', '122', 'Wadi al ?ayat', 'WD', null, '1');
INSERT INTO `caLocState` VALUES ('2281', '122', 'Wādī ash Shāţiʾ', 'WS', null, '1');
INSERT INTO `caLocState` VALUES ('2282', '123', 'Balzers', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2283', '123', 'Eschen', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2284', '123', 'Gamprin', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2285', '123', 'Mauren', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2286', '123', 'Planken', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2287', '123', 'Ruggell', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2288', '123', 'Schaan', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2289', '123', 'Schellenberg', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2290', '123', 'Triesen', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2291', '123', 'Triesenberg', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2292', '123', 'Vaduz', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2293', '124', 'Alytaus Apskritis', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('2294', '124', 'Kauno Apskritis', 'KU', null, '1');
INSERT INTO `caLocState` VALUES ('2295', '124', 'Klaipedos Apskritis', 'KL', null, '1');
INSERT INTO `caLocState` VALUES ('2296', '124', 'Marijampoles Apskritis', 'MR', null, '1');
INSERT INTO `caLocState` VALUES ('2297', '124', 'Panevežio Apskritis', 'PN', null, '1');
INSERT INTO `caLocState` VALUES ('2298', '124', 'Taurages Apskritis', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('2299', '124', 'Telšiu Apskritis', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('2300', '124', 'Utenos Apskritis', 'UT', null, '1');
INSERT INTO `caLocState` VALUES ('2301', '124', 'Vilniaus Apskritis', 'VL', null, '1');
INSERT INTO `caLocState` VALUES ('2302', '124', 'Šiauliu Apskritis', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('2303', '125', 'Diekirch', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('2304', '125', 'Grevenmacher', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('2305', '125', 'Luxembourg (fr)', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('2306', '126', 'Ilhas', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('2307', '126', 'Macau', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('2308', '127', 'Aerodrom', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2309', '127', 'Aračinovo', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2310', '127', 'Berovo', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2311', '127', 'Bitola', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2312', '127', 'Bogdanci', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2313', '127', 'Bogovinje', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2314', '127', 'Bosilovo', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2315', '127', 'Brvenica', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2316', '127', 'Butel', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2317', '127', 'Centar', '77', null, '1');
INSERT INTO `caLocState` VALUES ('2318', '127', 'Centar Župa', '78', null, '1');
INSERT INTO `caLocState` VALUES ('2319', '127', 'Debar', '21', null, '1');
INSERT INTO `caLocState` VALUES ('2320', '127', 'Debarca', '22', null, '1');
INSERT INTO `caLocState` VALUES ('2321', '127', 'Delčevo', '23', null, '1');
INSERT INTO `caLocState` VALUES ('2322', '127', 'Demir Hisar', '25', null, '1');
INSERT INTO `caLocState` VALUES ('2323', '127', 'Demir Kapija', '24', null, '1');
INSERT INTO `caLocState` VALUES ('2324', '127', 'Dojran', '26', null, '1');
INSERT INTO `caLocState` VALUES ('2325', '127', 'Dolneni', '27', null, '1');
INSERT INTO `caLocState` VALUES ('2326', '127', 'Drugovo', '28', null, '1');
INSERT INTO `caLocState` VALUES ('2327', '127', 'Gazi Baba', '17', null, '1');
INSERT INTO `caLocState` VALUES ('2328', '127', 'Gevgelija', '18', null, '1');
INSERT INTO `caLocState` VALUES ('2329', '127', 'Gjorče Petrov', '29', null, '1');
INSERT INTO `caLocState` VALUES ('2330', '127', 'Gostivar', '19', null, '1');
INSERT INTO `caLocState` VALUES ('2331', '127', 'Gradsko', '20', null, '1');
INSERT INTO `caLocState` VALUES ('2332', '127', 'Ilinden', '34', null, '1');
INSERT INTO `caLocState` VALUES ('2333', '127', 'Jegunovce', '35', null, '1');
INSERT INTO `caLocState` VALUES ('2334', '127', 'Karbinci', '37', null, '1');
INSERT INTO `caLocState` VALUES ('2335', '127', 'Karpoš', '38', null, '1');
INSERT INTO `caLocState` VALUES ('2336', '127', 'Kavadarci', '36', null, '1');
INSERT INTO `caLocState` VALUES ('2337', '127', 'Kisela Voda', '39', null, '1');
INSERT INTO `caLocState` VALUES ('2338', '127', 'Kičevo', '40', null, '1');
INSERT INTO `caLocState` VALUES ('2339', '127', 'Konče', '41', null, '1');
INSERT INTO `caLocState` VALUES ('2340', '127', 'Kočani', '42', null, '1');
INSERT INTO `caLocState` VALUES ('2341', '127', 'Kratovo', '43', null, '1');
INSERT INTO `caLocState` VALUES ('2342', '127', 'Kriva Palanka', '44', null, '1');
INSERT INTO `caLocState` VALUES ('2343', '127', 'Krivogaštani', '45', null, '1');
INSERT INTO `caLocState` VALUES ('2344', '127', 'Kruševo', '46', null, '1');
INSERT INTO `caLocState` VALUES ('2345', '127', 'Kumanovo', '47', null, '1');
INSERT INTO `caLocState` VALUES ('2346', '127', 'Lipkovo', '48', null, '1');
INSERT INTO `caLocState` VALUES ('2347', '127', 'Lozovo', '49', null, '1');
INSERT INTO `caLocState` VALUES ('2348', '127', 'Makedonska Kamenica', '51', null, '1');
INSERT INTO `caLocState` VALUES ('2349', '127', 'Makedonski Brod', '52', null, '1');
INSERT INTO `caLocState` VALUES ('2350', '127', 'Mavrovo i Rostuša', '50', null, '1');
INSERT INTO `caLocState` VALUES ('2351', '127', 'Mogila', '53', null, '1');
INSERT INTO `caLocState` VALUES ('2352', '127', 'Negotino', '54', null, '1');
INSERT INTO `caLocState` VALUES ('2353', '127', 'Novaci', '55', null, '1');
INSERT INTO `caLocState` VALUES ('2354', '127', 'Novo Selo', '56', null, '1');
INSERT INTO `caLocState` VALUES ('2355', '127', 'Ohrid', '58', null, '1');
INSERT INTO `caLocState` VALUES ('2356', '127', 'Oslomej', '57', null, '1');
INSERT INTO `caLocState` VALUES ('2357', '127', 'Pehčevo', '60', null, '1');
INSERT INTO `caLocState` VALUES ('2358', '127', 'Petrovec', '59', null, '1');
INSERT INTO `caLocState` VALUES ('2359', '127', 'Plasnica', '61', null, '1');
INSERT INTO `caLocState` VALUES ('2360', '127', 'Prilep', '62', null, '1');
INSERT INTO `caLocState` VALUES ('2361', '127', 'Probištip', '63', null, '1');
INSERT INTO `caLocState` VALUES ('2362', '127', 'Radoviš', '64', null, '1');
INSERT INTO `caLocState` VALUES ('2363', '127', 'Rankovce', '65', null, '1');
INSERT INTO `caLocState` VALUES ('2364', '127', 'Resen', '66', null, '1');
INSERT INTO `caLocState` VALUES ('2365', '127', 'Rosoman', '67', null, '1');
INSERT INTO `caLocState` VALUES ('2366', '127', 'Saraj', '68', null, '1');
INSERT INTO `caLocState` VALUES ('2367', '127', 'Sopište', '70', null, '1');
INSERT INTO `caLocState` VALUES ('2368', '127', 'Staro Nagoričane', '71', null, '1');
INSERT INTO `caLocState` VALUES ('2369', '127', 'Struga', '72', null, '1');
INSERT INTO `caLocState` VALUES ('2370', '127', 'Strumica', '73', null, '1');
INSERT INTO `caLocState` VALUES ('2371', '127', 'Studeničani', '74', null, '1');
INSERT INTO `caLocState` VALUES ('2372', '127', 'Sveti Nikole', '69', null, '1');
INSERT INTO `caLocState` VALUES ('2373', '127', 'Tearce', '75', null, '1');
INSERT INTO `caLocState` VALUES ('2374', '127', 'Tetovo', '76', null, '1');
INSERT INTO `caLocState` VALUES ('2375', '127', 'Valandovo', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2376', '127', 'Vasilevo', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2377', '127', 'Veles', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2378', '127', 'Vevčani', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2379', '127', 'Vinica', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2380', '127', 'Vraneštica', '15', null, '1');
INSERT INTO `caLocState` VALUES ('2381', '127', 'Vrapčište', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2382', '127', 'Zajas', '31', null, '1');
INSERT INTO `caLocState` VALUES ('2383', '127', 'Zelenikovo', '32', null, '1');
INSERT INTO `caLocState` VALUES ('2384', '127', 'Zrnovci', '33', null, '1');
INSERT INTO `caLocState` VALUES ('2385', '127', 'Čair', '79', null, '1');
INSERT INTO `caLocState` VALUES ('2386', '127', 'Čaška', '80', null, '1');
INSERT INTO `caLocState` VALUES ('2387', '127', 'Češinovo-Obleševo', '81', null, '1');
INSERT INTO `caLocState` VALUES ('2388', '127', 'Čučer Sandevo', '82', null, '1');
INSERT INTO `caLocState` VALUES ('2389', '127', 'Štip', '83', null, '1');
INSERT INTO `caLocState` VALUES ('2390', '127', 'Šuto Orizari', '84', null, '1');
INSERT INTO `caLocState` VALUES ('2391', '127', 'Želino', '30', null, '1');
INSERT INTO `caLocState` VALUES ('2392', '128', 'Antananarivo', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('2393', '128', 'Antsiranana', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('2394', '128', 'Fianarantsoa', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('2395', '128', 'Mahajanga', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('2396', '128', 'Toamasina', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('2397', '128', 'Toliara', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('2398', '129', 'Balaka', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2399', '129', 'Blantyre', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('2400', '129', 'Central Region', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('2401', '129', 'Chikwawa', 'CK', null, '1');
INSERT INTO `caLocState` VALUES ('2402', '129', 'Chiradzulu', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('2403', '129', 'Chitipa', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('2404', '129', 'Dedza', 'DE', null, '1');
INSERT INTO `caLocState` VALUES ('2405', '129', 'Dowa', 'DO', null, '1');
INSERT INTO `caLocState` VALUES ('2406', '129', 'Karonga', 'KR', null, '1');
INSERT INTO `caLocState` VALUES ('2407', '129', 'Kasungu', 'KS', null, '1');
INSERT INTO `caLocState` VALUES ('2408', '129', 'Likoma', 'LK', null, '1');
INSERT INTO `caLocState` VALUES ('2409', '129', 'Lilongwe', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('2410', '129', 'Machinga', 'MH', null, '1');
INSERT INTO `caLocState` VALUES ('2411', '129', 'Mangochi', 'MG', null, '1');
INSERT INTO `caLocState` VALUES ('2412', '129', 'Mchinji', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('2413', '129', 'Mulanje', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('2414', '129', 'Mwanza', 'MW', null, '1');
INSERT INTO `caLocState` VALUES ('2415', '129', 'Mzimba', 'MZ', null, '1');
INSERT INTO `caLocState` VALUES ('2416', '129', 'Neno', 'NE', null, '1');
INSERT INTO `caLocState` VALUES ('2417', '129', 'Nkhata Bay', 'NB', null, '1');
INSERT INTO `caLocState` VALUES ('2418', '129', 'Nkhotakota', 'NK', null, '1');
INSERT INTO `caLocState` VALUES ('2419', '129', 'Northern Region', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('2420', '129', 'Nsanje', 'NS', null, '1');
INSERT INTO `caLocState` VALUES ('2421', '129', 'Ntcheu', 'NU', null, '1');
INSERT INTO `caLocState` VALUES ('2422', '129', 'Ntchisi', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('2423', '129', 'Phalombe', 'PH', null, '1');
INSERT INTO `caLocState` VALUES ('2424', '129', 'Rumphi', 'RU', null, '1');
INSERT INTO `caLocState` VALUES ('2425', '129', 'Salima', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('2426', '129', 'Southern Region', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('2427', '129', 'Thyolo', 'TH', null, '1');
INSERT INTO `caLocState` VALUES ('2428', '129', 'Zomba', 'ZO', null, '1');
INSERT INTO `caLocState` VALUES ('2429', '130', 'Johor', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2430', '130', 'Kedah', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2431', '130', 'Kelantan', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2432', '130', 'Melaka', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2433', '130', 'Negeri Sembilan', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2434', '130', 'Pahang', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2435', '130', 'Perak', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2436', '130', 'Perlis', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2437', '130', 'Pulau Pinang', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2438', '130', 'Sabah', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2439', '130', 'Sarawak', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2440', '130', 'Selangor', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2441', '130', 'Terengganu', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2442', '130', 'Wilayah Persekutuan Kuala Lumpur', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2443', '130', 'Wilayah Persekutuan Labuan', '15', null, '1');
INSERT INTO `caLocState` VALUES ('2444', '130', 'Wilayah Persekutuan Putrajaya', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2445', '131', 'Alif', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2446', '131', 'Alif Dhaal', '0', null, '1');
INSERT INTO `caLocState` VALUES ('2447', '131', 'Baa', '20', null, '1');
INSERT INTO `caLocState` VALUES ('2448', '131', 'Central', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('2449', '131', 'Dhaalu', '17', null, '1');
INSERT INTO `caLocState` VALUES ('2450', '131', 'Faafu', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2451', '131', 'Gaaf Alif', '27', null, '1');
INSERT INTO `caLocState` VALUES ('2452', '131', 'Gaafu Dhaalu', '28', null, '1');
INSERT INTO `caLocState` VALUES ('2453', '131', 'Gnaviyani', '29', null, '1');
INSERT INTO `caLocState` VALUES ('2454', '131', 'Haa Alif', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2455', '131', 'Haa Dhaalu', '23', null, '1');
INSERT INTO `caLocState` VALUES ('2456', '131', 'Kaafu', '26', null, '1');
INSERT INTO `caLocState` VALUES ('2457', '131', 'Laamu', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2458', '131', 'Lhaviyani', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2459', '131', 'Male', 'MLE', null, '1');
INSERT INTO `caLocState` VALUES ('2460', '131', 'Meemu', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2461', '131', 'Noonu', '25', null, '1');
INSERT INTO `caLocState` VALUES ('2462', '131', 'North', 'NO', null, '1');
INSERT INTO `caLocState` VALUES ('2463', '131', 'North Central', 'NC', null, '1');
INSERT INTO `caLocState` VALUES ('2464', '131', 'Raa', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2465', '131', 'Seenu', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2466', '131', 'Shaviyani', '24', null, '1');
INSERT INTO `caLocState` VALUES ('2467', '131', 'South', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('2468', '131', 'South Central', 'SC', null, '1');
INSERT INTO `caLocState` VALUES ('2469', '131', 'Thaa', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2470', '131', 'Upper North', 'UN', null, '1');
INSERT INTO `caLocState` VALUES ('2471', '131', 'Upper South', 'US', null, '1');
INSERT INTO `caLocState` VALUES ('2472', '131', 'Vaavu', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2473', '132', 'Bamako', 'BKO', null, '1');
INSERT INTO `caLocState` VALUES ('2474', '132', 'Gao', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2475', '132', 'Kayes', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2476', '132', 'Kidal', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2477', '132', 'Koulikoro', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2478', '132', 'Mopti', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2479', '132', 'Sikasso', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2480', '132', 'Ségou', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2481', '132', 'Tombouctou', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2482', '133', 'Attard', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2483', '133', 'Balzan', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2484', '133', 'Birgu', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2485', '133', 'Birkirkara', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2486', '133', 'Birżebbuġa', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2487', '133', 'Bormla', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2488', '133', 'Dingli', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2489', '133', 'Fgura', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2490', '133', 'Floriana', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2491', '133', 'Fontana', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2492', '133', 'Gudja', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2493', '133', 'Għajnsielem', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2494', '133', 'Għarb', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2495', '133', 'Għargħur', '15', null, '1');
INSERT INTO `caLocState` VALUES ('2496', '133', 'Għasri', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2497', '133', 'Għaxaq', '17', null, '1');
INSERT INTO `caLocState` VALUES ('2498', '133', 'Gżira', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2499', '133', 'Iklin', '19', null, '1');
INSERT INTO `caLocState` VALUES ('2500', '133', 'Isla', '20', null, '1');
INSERT INTO `caLocState` VALUES ('2501', '133', 'Kalkara', '21', null, '1');
INSERT INTO `caLocState` VALUES ('2502', '133', 'Kerċem', '22', null, '1');
INSERT INTO `caLocState` VALUES ('2503', '133', 'Kirkop', '23', null, '1');
INSERT INTO `caLocState` VALUES ('2504', '133', 'Lija', '24', null, '1');
INSERT INTO `caLocState` VALUES ('2505', '133', 'Luqa', '25', null, '1');
INSERT INTO `caLocState` VALUES ('2506', '133', 'Marsa', '26', null, '1');
INSERT INTO `caLocState` VALUES ('2507', '133', 'Marsaskala', '27', null, '1');
INSERT INTO `caLocState` VALUES ('2508', '133', 'Marsaxlokk', '28', null, '1');
INSERT INTO `caLocState` VALUES ('2509', '133', 'Mdina', '29', null, '1');
INSERT INTO `caLocState` VALUES ('2510', '133', 'Mellieħa', '30', null, '1');
INSERT INTO `caLocState` VALUES ('2511', '133', 'Mosta', '32', null, '1');
INSERT INTO `caLocState` VALUES ('2512', '133', 'Mqabba', '33', null, '1');
INSERT INTO `caLocState` VALUES ('2513', '133', 'Msida', '34', null, '1');
INSERT INTO `caLocState` VALUES ('2514', '133', 'Mtarfa', '35', null, '1');
INSERT INTO `caLocState` VALUES ('2515', '133', 'Munxar', '36', null, '1');
INSERT INTO `caLocState` VALUES ('2516', '133', 'Mġarr', '31', null, '1');
INSERT INTO `caLocState` VALUES ('2517', '133', 'Nadur', '37', null, '1');
INSERT INTO `caLocState` VALUES ('2518', '133', 'Naxxar', '38', null, '1');
INSERT INTO `caLocState` VALUES ('2519', '133', 'Paola', '39', null, '1');
INSERT INTO `caLocState` VALUES ('2520', '133', 'Pembroke', '40', null, '1');
INSERT INTO `caLocState` VALUES ('2521', '133', 'Pietà', '41', null, '1');
INSERT INTO `caLocState` VALUES ('2522', '133', 'Qala', '42', null, '1');
INSERT INTO `caLocState` VALUES ('2523', '133', 'Qormi', '43', null, '1');
INSERT INTO `caLocState` VALUES ('2524', '133', 'Qrendi', '44', null, '1');
INSERT INTO `caLocState` VALUES ('2525', '133', 'Rabat Għawdex(mt)', '45', null, '1');
INSERT INTO `caLocState` VALUES ('2526', '133', 'Rabat Malta', '46', null, '1');
INSERT INTO `caLocState` VALUES ('2527', '133', 'Safi', '47', null, '1');
INSERT INTO `caLocState` VALUES ('2528', '133', 'San Lawrenz', '50', null, '1');
INSERT INTO `caLocState` VALUES ('2529', '133', 'San Pawl il-Baħar', '51', null, '1');
INSERT INTO `caLocState` VALUES ('2530', '133', 'San Ġiljan', '48', null, '1');
INSERT INTO `caLocState` VALUES ('2531', '133', 'San Ġwann', '49', null, '1');
INSERT INTO `caLocState` VALUES ('2532', '133', 'Sannat', '52', null, '1');
INSERT INTO `caLocState` VALUES ('2533', '133', 'Santa Luċija', '53', null, '1');
INSERT INTO `caLocState` VALUES ('2534', '133', 'Santa Venera', '54', null, '1');
INSERT INTO `caLocState` VALUES ('2535', '133', 'Siġġiewi', '55', null, '1');
INSERT INTO `caLocState` VALUES ('2536', '133', 'Sliema', '56', null, '1');
INSERT INTO `caLocState` VALUES ('2537', '133', 'Swieqi', '57', null, '1');
INSERT INTO `caLocState` VALUES ('2538', '133', 'Tarxien', '59', null, '1');
INSERT INTO `caLocState` VALUES ('2539', '133', 'Ta’ Xbiex', '58', null, '1');
INSERT INTO `caLocState` VALUES ('2540', '133', 'Valletta', '60', null, '1');
INSERT INTO `caLocState` VALUES ('2541', '133', 'Xagħra', '61', null, '1');
INSERT INTO `caLocState` VALUES ('2542', '133', 'Xewkija', '62', null, '1');
INSERT INTO `caLocState` VALUES ('2543', '133', 'Xgħajra', '63', null, '1');
INSERT INTO `caLocState` VALUES ('2544', '133', 'Ħamrun', '18', null, '1');
INSERT INTO `caLocState` VALUES ('2545', '133', 'Żabbar', '64', null, '1');
INSERT INTO `caLocState` VALUES ('2546', '133', 'Żebbuġ Għawdex', '65', null, '1');
INSERT INTO `caLocState` VALUES ('2547', '133', 'Żebbuġ Malta', '66', null, '1');
INSERT INTO `caLocState` VALUES ('2548', '133', 'Żejtun', '67', null, '1');
INSERT INTO `caLocState` VALUES ('2549', '133', 'Żurrieq', '68', null, '1');
INSERT INTO `caLocState` VALUES ('2550', '134', 'Ailinglaplap', 'ALL', null, '1');
INSERT INTO `caLocState` VALUES ('2551', '134', 'Ailuk', 'ALK', null, '1');
INSERT INTO `caLocState` VALUES ('2552', '134', 'Arno', 'ARN', null, '1');
INSERT INTO `caLocState` VALUES ('2553', '134', 'Aur', 'AUR', null, '1');
INSERT INTO `caLocState` VALUES ('2554', '134', 'Ebon', 'EBO', null, '1');
INSERT INTO `caLocState` VALUES ('2555', '134', 'Enewetak', 'ENI', null, '1');
INSERT INTO `caLocState` VALUES ('2556', '134', 'Jabat', 'JAB', null, '1');
INSERT INTO `caLocState` VALUES ('2557', '134', 'Jaluit', 'JAL', null, '1');
INSERT INTO `caLocState` VALUES ('2558', '134', 'Kili', 'KIL', null, '1');
INSERT INTO `caLocState` VALUES ('2559', '134', 'Kwajalein', 'KWA', null, '1');
INSERT INTO `caLocState` VALUES ('2560', '134', 'Lae', 'LAE', null, '1');
INSERT INTO `caLocState` VALUES ('2561', '134', 'Lib', 'LIB', null, '1');
INSERT INTO `caLocState` VALUES ('2562', '134', 'Likiep', 'LIK', null, '1');
INSERT INTO `caLocState` VALUES ('2563', '134', 'Majuro', 'MAJ', null, '1');
INSERT INTO `caLocState` VALUES ('2564', '134', 'Maloelap', 'MAL', null, '1');
INSERT INTO `caLocState` VALUES ('2565', '134', 'Mejit', 'MEJ', null, '1');
INSERT INTO `caLocState` VALUES ('2566', '134', 'Mili', 'MIL', null, '1');
INSERT INTO `caLocState` VALUES ('2567', '134', 'Namdrik', 'NMK', null, '1');
INSERT INTO `caLocState` VALUES ('2568', '134', 'Namu', 'NMU', null, '1');
INSERT INTO `caLocState` VALUES ('2569', '134', 'Ralik chain', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('2570', '134', 'Ratak chain', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('2571', '134', 'Rongelap', 'RON', null, '1');
INSERT INTO `caLocState` VALUES ('2572', '134', 'Ujae', 'UJA', null, '1');
INSERT INTO `caLocState` VALUES ('2573', '134', 'Utirik', 'UTI', null, '1');
INSERT INTO `caLocState` VALUES ('2574', '134', 'Wotho', 'WTH', null, '1');
INSERT INTO `caLocState` VALUES ('2575', '134', 'Wotje', 'WTJ', null, '1');
INSERT INTO `caLocState` VALUES ('2576', '136', 'Adrar', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2577', '136', 'Assaba', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2578', '136', 'Brakna', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2579', '136', 'Dakhlet Nouâdhibou', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2580', '136', 'Gorgol', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2581', '136', 'Guidimaka', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2582', '136', 'Hodh ech Chargui', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2583', '136', 'Hodh el Gharbi', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2584', '136', 'Inchiri', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2585', '136', 'Nouakchott', 'NKC', null, '1');
INSERT INTO `caLocState` VALUES ('2586', '136', 'Tagant', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2587', '136', 'Tiris Zemmour', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2588', '136', 'Trarza', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2589', '137', 'Agalega Islands', 'AG', null, '1');
INSERT INTO `caLocState` VALUES ('2590', '137', 'Beau Bassin-Rose Hill', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('2591', '137', 'Black River', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('2592', '137', 'Cargados Carajos Shoals [Saint Brandon Islands]', 'CC', null, '1');
INSERT INTO `caLocState` VALUES ('2593', '137', 'Curepipe', 'CU', null, '1');
INSERT INTO `caLocState` VALUES ('2594', '137', 'Flacq', 'FL', null, '1');
INSERT INTO `caLocState` VALUES ('2595', '137', 'Grand Port', 'GP', null, '1');
INSERT INTO `caLocState` VALUES ('2596', '137', 'Moka', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('2597', '137', 'Pamplemousses', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('2598', '137', 'Plaines Wilhems', 'PW', null, '1');
INSERT INTO `caLocState` VALUES ('2599', '137', 'Port Louis City', 'PL', null, '1');
INSERT INTO `caLocState` VALUES ('2600', '137', 'Port Louis District', 'PU', null, '1');
INSERT INTO `caLocState` VALUES ('2601', '137', 'Quatre Bornes', 'QB', null, '1');
INSERT INTO `caLocState` VALUES ('2602', '137', 'Rivière du Rempart', 'RR', null, '1');
INSERT INTO `caLocState` VALUES ('2603', '137', 'Rodrigues Island', 'RO', null, '1');
INSERT INTO `caLocState` VALUES ('2604', '137', 'Savanne', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('2605', '137', 'Vacoas-Phoenix', 'VP', null, '1');
INSERT INTO `caLocState` VALUES ('2606', '139', 'Aguascalientes', 'AGU', null, '1');
INSERT INTO `caLocState` VALUES ('2607', '139', 'Baja California', 'BCN', null, '1');
INSERT INTO `caLocState` VALUES ('2608', '139', 'Baja California Sur', 'BCS', null, '1');
INSERT INTO `caLocState` VALUES ('2609', '139', 'Campeche', 'CAM', null, '1');
INSERT INTO `caLocState` VALUES ('2610', '139', 'Chiapas', 'CHP', null, '1');
INSERT INTO `caLocState` VALUES ('2611', '139', 'Chihuahua', 'CHH', null, '1');
INSERT INTO `caLocState` VALUES ('2612', '139', 'Coahuila', 'COA', null, '1');
INSERT INTO `caLocState` VALUES ('2613', '139', 'Colima', 'COL', null, '1');
INSERT INTO `caLocState` VALUES ('2614', '139', 'Distrito Federal', 'DIF', null, '1');
INSERT INTO `caLocState` VALUES ('2615', '139', 'Durango', 'DUR', null, '1');
INSERT INTO `caLocState` VALUES ('2616', '139', 'Guanajuato', 'GUA', null, '1');
INSERT INTO `caLocState` VALUES ('2617', '139', 'Guerrero', 'GRO', null, '1');
INSERT INTO `caLocState` VALUES ('2618', '139', 'Hidalgo', 'HID', null, '1');
INSERT INTO `caLocState` VALUES ('2619', '139', 'Jalisco', 'JAL', null, '1');
INSERT INTO `caLocState` VALUES ('2620', '139', 'Michoacán', 'MIC', null, '1');
INSERT INTO `caLocState` VALUES ('2621', '139', 'Morelos', 'MOR', null, '1');
INSERT INTO `caLocState` VALUES ('2622', '139', 'México', 'MEX', null, '1');
INSERT INTO `caLocState` VALUES ('2623', '139', 'Nayarit', 'NAY', null, '1');
INSERT INTO `caLocState` VALUES ('2624', '139', 'Nuevo León', 'NLE', null, '1');
INSERT INTO `caLocState` VALUES ('2625', '139', 'Oaxaca', 'OAX', null, '1');
INSERT INTO `caLocState` VALUES ('2626', '139', 'Puebla', 'PUE', null, '1');
INSERT INTO `caLocState` VALUES ('2627', '139', 'Querétaro', 'QUE', null, '1');
INSERT INTO `caLocState` VALUES ('2628', '139', 'Quintana Roo', 'ROO', null, '1');
INSERT INTO `caLocState` VALUES ('2629', '139', 'San Luis Potosí', 'SLP', null, '1');
INSERT INTO `caLocState` VALUES ('2630', '139', 'Sinaloa', 'SIN', null, '1');
INSERT INTO `caLocState` VALUES ('2631', '139', 'Sonora', 'SON', null, '1');
INSERT INTO `caLocState` VALUES ('2632', '139', 'Tabasco', 'TAB', null, '1');
INSERT INTO `caLocState` VALUES ('2633', '139', 'Tamaulipas', 'TAM', null, '1');
INSERT INTO `caLocState` VALUES ('2634', '139', 'Tlaxcala', 'TLA', null, '1');
INSERT INTO `caLocState` VALUES ('2635', '139', 'Veracruz', 'VER', null, '1');
INSERT INTO `caLocState` VALUES ('2636', '139', 'Yucatán', 'YUC', null, '1');
INSERT INTO `caLocState` VALUES ('2637', '139', 'Zacatecas', 'ZAC', null, '1');
INSERT INTO `caLocState` VALUES ('2638', '140', 'Chuuk', 'TRK', null, '1');
INSERT INTO `caLocState` VALUES ('2639', '140', 'Kosrae', 'KSA', null, '1');
INSERT INTO `caLocState` VALUES ('2640', '140', 'Pohnpei', 'PNI', null, '1');
INSERT INTO `caLocState` VALUES ('2641', '140', 'Yap', 'YAP', null, '1');
INSERT INTO `caLocState` VALUES ('2642', '141', 'Anenii Noi', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('2643', '141', 'Basarabeasca', 'BS', null, '1');
INSERT INTO `caLocState` VALUES ('2644', '141', 'Briceni', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('2645', '141', 'Bălţi', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2646', '141', 'Cahul', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('2647', '141', 'Cantemir', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('2648', '141', 'Chisinau', 'CU', null, '1');
INSERT INTO `caLocState` VALUES ('2649', '141', 'Cimişlia', 'CM', null, '1');
INSERT INTO `caLocState` VALUES ('2650', '141', 'Criuleni', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('2651', '141', 'Călăraşi', 'CL', null, '1');
INSERT INTO `caLocState` VALUES ('2652', '141', 'Căuşeni', 'CS', null, '1');
INSERT INTO `caLocState` VALUES ('2653', '141', 'Donduşeni', 'DO', null, '1');
INSERT INTO `caLocState` VALUES ('2654', '141', 'Drochia', 'DR', null, '1');
INSERT INTO `caLocState` VALUES ('2655', '141', 'Dubăsari', 'DU', null, '1');
INSERT INTO `caLocState` VALUES ('2656', '141', 'Edinet', 'ED', null, '1');
INSERT INTO `caLocState` VALUES ('2657', '141', 'Floreşti', 'FL', null, '1');
INSERT INTO `caLocState` VALUES ('2658', '141', 'Făleşti', 'FA', null, '1');
INSERT INTO `caLocState` VALUES ('2659', '141', 'Gagauzia, Unitatea teritoriala autonoma (UTAG)', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('2660', '141', 'Glodeni', 'GL', null, '1');
INSERT INTO `caLocState` VALUES ('2661', '141', 'Hînceşti', 'HI', null, '1');
INSERT INTO `caLocState` VALUES ('2662', '141', 'Ialoveni', 'IA', null, '1');
INSERT INTO `caLocState` VALUES ('2663', '141', 'Leova', 'LE', null, '1');
INSERT INTO `caLocState` VALUES ('2664', '141', 'Nisporeni', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('2665', '141', 'Ocniţa', 'OC', null, '1');
INSERT INTO `caLocState` VALUES ('2666', '141', 'Orhei', 'OR', null, '1');
INSERT INTO `caLocState` VALUES ('2667', '141', 'Rezina', 'RE', null, '1');
INSERT INTO `caLocState` VALUES ('2668', '141', 'Rîşcani', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('2669', '141', 'Soroca', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('2670', '141', 'Străşeni', 'ST', null, '1');
INSERT INTO `caLocState` VALUES ('2671', '141', 'Stînga Nistrului, unitatea teritoriala din', 'SN', null, '1');
INSERT INTO `caLocState` VALUES ('2672', '141', 'Sîngerei', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('2673', '141', 'Taraclia', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('2674', '141', 'Teleneşti', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('2675', '141', 'Tighina', 'BD', null, '1');
INSERT INTO `caLocState` VALUES ('2676', '141', 'Ungheni', 'UN', null, '1');
INSERT INTO `caLocState` VALUES ('2677', '141', 'Şoldăneşti', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('2678', '141', 'Ştefan Vodă', 'SV', null, '1');
INSERT INTO `caLocState` VALUES ('2679', '142', 'Fontvieille', 'FO', null, '1');
INSERT INTO `caLocState` VALUES ('2680', '142', 'Jardin Exotique', 'JE', null, '1');
INSERT INTO `caLocState` VALUES ('2681', '142', 'La Colle', 'CL', null, '1');
INSERT INTO `caLocState` VALUES ('2682', '142', 'La Condamine', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('2683', '142', 'La Gare', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('2684', '142', 'La Source', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('2685', '142', 'Larvotto', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('2686', '142', 'Malbousquet', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('2687', '142', 'Monaco-Ville', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('2688', '142', 'Moneghetti', 'MG', null, '1');
INSERT INTO `caLocState` VALUES ('2689', '142', 'Monte-Carlo', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('2690', '142', 'Moulins', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('2691', '142', 'Port-Hercule', 'PH', null, '1');
INSERT INTO `caLocState` VALUES ('2692', '142', 'Saint-Roman', 'SR', null, '1');
INSERT INTO `caLocState` VALUES ('2693', '142', 'Sainte-Dévote', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('2694', '142', 'Spélugues', 'SP', null, '1');
INSERT INTO `caLocState` VALUES ('2695', '142', 'Vallon de la Rousse', 'VR', null, '1');
INSERT INTO `caLocState` VALUES ('2696', '143', 'Arhangay', '73', null, '1');
INSERT INTO `caLocState` VALUES ('2697', '143', 'Bayan-Ölgiy', '71', null, '1');
INSERT INTO `caLocState` VALUES ('2698', '143', 'Bayanhongor', '69', null, '1');
INSERT INTO `caLocState` VALUES ('2699', '143', 'Bulgan', '67', null, '1');
INSERT INTO `caLocState` VALUES ('2700', '143', 'Darhan uul', '37', null, '1');
INSERT INTO `caLocState` VALUES ('2701', '143', 'Dornod', '61', null, '1');
INSERT INTO `caLocState` VALUES ('2702', '143', 'Dornogovi', '63', null, '1');
INSERT INTO `caLocState` VALUES ('2703', '143', 'Dundgovi', '59', null, '1');
INSERT INTO `caLocState` VALUES ('2704', '143', 'Dzavhan', '57', null, '1');
INSERT INTO `caLocState` VALUES ('2705', '143', 'Govi-Altay', '65', null, '1');
INSERT INTO `caLocState` VALUES ('2706', '143', 'Govi-Sümber', '64', null, '1');
INSERT INTO `caLocState` VALUES ('2707', '143', 'Hentiy', '39', null, '1');
INSERT INTO `caLocState` VALUES ('2708', '143', 'Hovd', '43', null, '1');
INSERT INTO `caLocState` VALUES ('2709', '143', 'Hövsgöl', '41', null, '1');
INSERT INTO `caLocState` VALUES ('2710', '143', 'Orhon', '35', null, '1');
INSERT INTO `caLocState` VALUES ('2711', '143', 'Selenge', '49', null, '1');
INSERT INTO `caLocState` VALUES ('2712', '143', 'Sühbaatar', '51', null, '1');
INSERT INTO `caLocState` VALUES ('2713', '143', 'Töv', '47', null, '1');
INSERT INTO `caLocState` VALUES ('2714', '143', 'Ulaanbaatar', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2715', '143', 'Uvs', '46', null, '1');
INSERT INTO `caLocState` VALUES ('2716', '143', 'Ömnögovi', '53', null, '1');
INSERT INTO `caLocState` VALUES ('2717', '143', 'Övörhangay', '55', null, '1');
INSERT INTO `caLocState` VALUES ('2718', '145', 'Agadir-Ida-Outanane', 'AGD', null, '1');
INSERT INTO `caLocState` VALUES ('2719', '145', 'Al Haouz', 'HAO', null, '1');
INSERT INTO `caLocState` VALUES ('2720', '145', 'Al Hoceïma', 'HOC', null, '1');
INSERT INTO `caLocState` VALUES ('2721', '145', 'Aousserd', 'AOU', null, '1');
INSERT INTO `caLocState` VALUES ('2722', '145', 'Assa-Zag', 'ASZ', null, '1');
INSERT INTO `caLocState` VALUES ('2723', '145', 'Azilal', 'AZI', null, '1');
INSERT INTO `caLocState` VALUES ('2724', '145', 'Ben Slimane', 'BES', null, '1');
INSERT INTO `caLocState` VALUES ('2725', '145', 'Beni Mellal', 'BEM', null, '1');
INSERT INTO `caLocState` VALUES ('2726', '145', 'Berkane', 'BER', null, '1');
INSERT INTO `caLocState` VALUES ('2727', '145', 'Boujdour (EH)', 'BOD', null, '1');
INSERT INTO `caLocState` VALUES ('2728', '145', 'Boulemane', 'BOM', null, '1');
INSERT INTO `caLocState` VALUES ('2729', '145', 'Casablanca [Dar el Beïda]*', 'CAS', null, '1');
INSERT INTO `caLocState` VALUES ('2730', '145', 'Chaouia-Ouardigh', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2731', '145', 'Chefchaouen', 'CHE', null, '1');
INSERT INTO `caLocState` VALUES ('2732', '145', 'Chichaoua', 'CHI', null, '1');
INSERT INTO `caLocState` VALUES ('2733', '145', 'Chtouka-Ait Baha', 'CHT', null, '1');
INSERT INTO `caLocState` VALUES ('2734', '145', 'Connaught Salé', 'SAL', null, '1');
INSERT INTO `caLocState` VALUES ('2735', '145', 'Doukkala-Abda', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2736', '145', 'El Hajeb', 'HAJ', null, '1');
INSERT INTO `caLocState` VALUES ('2737', '145', 'El Jadida', 'JDI', null, '1');
INSERT INTO `caLocState` VALUES ('2738', '145', 'Errachidia', 'ERR', null, '1');
INSERT INTO `caLocState` VALUES ('2739', '145', 'Es Smara (EH)', 'ESM', null, '1');
INSERT INTO `caLocState` VALUES ('2740', '145', 'Essaouira', 'ESI', null, '1');
INSERT INTO `caLocState` VALUES ('2741', '145', 'Fahs-Beni Makada', 'FAH', null, '1');
INSERT INTO `caLocState` VALUES ('2742', '145', 'Fes-Boulemane', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2743', '145', 'Figuig', 'FIG', null, '1');
INSERT INTO `caLocState` VALUES ('2744', '145', 'Fès-Dar-Dbibegh', 'FES', null, '1');
INSERT INTO `caLocState` VALUES ('2745', '145', 'Gharb-Chrarda-Beni Hssen', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2746', '145', 'Grand Casablanca', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2747', '145', 'Guelmim', 'GUE', null, '1');
INSERT INTO `caLocState` VALUES ('2748', '145', 'Guelmim-Es Smar', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2749', '145', 'Ifrane', 'IFR', null, '1');
INSERT INTO `caLocState` VALUES ('2750', '145', 'Inezgane-Ait Melloul', 'INE', null, '1');
INSERT INTO `caLocState` VALUES ('2751', '145', 'Jrada', 'JRA', null, '1');
INSERT INTO `caLocState` VALUES ('2752', '145', 'Kelaat es Sraghna', 'KES', null, '1');
INSERT INTO `caLocState` VALUES ('2753', '145', 'Khemisset', 'KHE', null, '1');
INSERT INTO `caLocState` VALUES ('2754', '145', 'Khenifra', 'KHN', null, '1');
INSERT INTO `caLocState` VALUES ('2755', '145', 'Khouribga', 'KHO', null, '1');
INSERT INTO `caLocState` VALUES ('2756', '145', 'Kénitra', 'KEN', null, '1');
INSERT INTO `caLocState` VALUES ('2757', '145', 'L\'Oriental', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2758', '145', 'Laayoune-Boujdour-Sakia El Hamra', '15', null, '1');
INSERT INTO `caLocState` VALUES ('2759', '145', 'Larache', 'LAR', null, '1');
INSERT INTO `caLocState` VALUES ('2760', '145', 'Laâyoune*', 'LAA', null, '1');
INSERT INTO `caLocState` VALUES ('2761', '145', 'Marrakech-Medina', 'MMD', null, '1');
INSERT INTO `caLocState` VALUES ('2762', '145', 'Marrakech-Menara', 'MMN', null, '1');
INSERT INTO `caLocState` VALUES ('2763', '145', 'Marrakech-Tensift-Al Haouz', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2764', '145', 'Mediouna', 'MED', null, '1');
INSERT INTO `caLocState` VALUES ('2765', '145', 'Meknes-Tafilalet', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2766', '145', 'Meknès', 'MEK', null, '1');
INSERT INTO `caLocState` VALUES ('2767', '145', 'Mohammadia', 'MOH', null, '1');
INSERT INTO `caLocState` VALUES ('2768', '145', 'Moulay Yacoub', 'MOU', null, '1');
INSERT INTO `caLocState` VALUES ('2769', '145', 'Nador', 'NAD', null, '1');
INSERT INTO `caLocState` VALUES ('2770', '145', 'Nouaceur', 'NOU', null, '1');
INSERT INTO `caLocState` VALUES ('2771', '145', 'Ouarzazate', 'OUA', null, '1');
INSERT INTO `caLocState` VALUES ('2772', '145', 'Oued ed Dahab (EH)', 'OUD', null, '1');
INSERT INTO `caLocState` VALUES ('2773', '145', 'Oued ed Dahab-Lagouira', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2774', '145', 'Oujda*', 'OUJ', null, '1');
INSERT INTO `caLocState` VALUES ('2775', '145', 'Rabat', 'RAB', null, '1');
INSERT INTO `caLocState` VALUES ('2776', '145', 'Rabat-Salé-Zemmour-Zaer', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2777', '145', 'Safi', 'SAF', null, '1');
INSERT INTO `caLocState` VALUES ('2778', '145', 'Sefrou', 'SEF', null, '1');
INSERT INTO `caLocState` VALUES ('2779', '145', 'Settat', 'SET', null, '1');
INSERT INTO `caLocState` VALUES ('2780', '145', 'Sidi Kacem', 'SIK', null, '1');
INSERT INTO `caLocState` VALUES ('2781', '145', 'Sidi Youssef Ben Ali', 'SYB', null, '1');
INSERT INTO `caLocState` VALUES ('2782', '145', 'Skhirate-Témara', 'SKH', null, '1');
INSERT INTO `caLocState` VALUES ('2783', '145', 'Souss-Massa-Draa', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2784', '145', 'Tadla-Azilal', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2785', '145', 'Tan-Tan', 'TNT', null, '1');
INSERT INTO `caLocState` VALUES ('2786', '145', 'Tanger-Assilah', 'TNG', null, '1');
INSERT INTO `caLocState` VALUES ('2787', '145', 'Tanger-Tetouan', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2788', '145', 'Taounate', 'TAO', null, '1');
INSERT INTO `caLocState` VALUES ('2789', '145', 'Taourirt', 'TAI', null, '1');
INSERT INTO `caLocState` VALUES ('2790', '145', 'Taroudant', 'TAR', null, '1');
INSERT INTO `caLocState` VALUES ('2791', '145', 'Tata', 'TAT', null, '1');
INSERT INTO `caLocState` VALUES ('2792', '145', 'Taza', 'TAZ', null, '1');
INSERT INTO `caLocState` VALUES ('2793', '145', 'Taza-Al Hoceima-Taounate', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2794', '145', 'Tiznit', 'TIZ', null, '1');
INSERT INTO `caLocState` VALUES ('2795', '145', 'Zagora', 'ZAG', null, '1');
INSERT INTO `caLocState` VALUES ('2796', '146', 'Cabo Delgado', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('2797', '146', 'Gaza', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('2798', '146', 'Inhambane', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('2799', '146', 'Manica', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('2800', '146', 'Maputo', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('2801', '146', 'Maputo City', 'MPM', null, '1');
INSERT INTO `caLocState` VALUES ('2802', '146', 'Nampula', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('2803', '146', 'Niassa', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('2804', '146', 'Sofala', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('2805', '146', 'Tete', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('2806', '146', 'Zambézia', 'Q', null, '1');
INSERT INTO `caLocState` VALUES ('2807', '147', 'Ayeyarwady', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2808', '147', 'Bago', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2809', '147', 'Chin', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2810', '147', 'Kachin', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2811', '147', 'Kayah', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2812', '147', 'Kayin', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2813', '147', 'Magway', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2814', '147', 'Mandalay', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2815', '147', 'Mon', '15', null, '1');
INSERT INTO `caLocState` VALUES ('2816', '147', 'Rakhine', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2817', '147', 'Sagaing', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2818', '147', 'Shan', '17', null, '1');
INSERT INTO `caLocState` VALUES ('2819', '147', 'Tanintharyi', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2820', '147', 'Yangon', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2821', '148', 'Caprivi', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('2822', '148', 'Erongo', 'ER', null, '1');
INSERT INTO `caLocState` VALUES ('2823', '148', 'Hardap', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('2824', '148', 'Karas', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('2825', '148', 'Khomas', 'KH', null, '1');
INSERT INTO `caLocState` VALUES ('2826', '148', 'Kunene', 'KU', null, '1');
INSERT INTO `caLocState` VALUES ('2827', '148', 'Ohangwena', 'OW', null, '1');
INSERT INTO `caLocState` VALUES ('2828', '148', 'Okavango', 'OK', null, '1');
INSERT INTO `caLocState` VALUES ('2829', '148', 'Omaheke', 'OH', null, '1');
INSERT INTO `caLocState` VALUES ('2830', '148', 'Omusati', 'OS', null, '1');
INSERT INTO `caLocState` VALUES ('2831', '148', 'Oshana', 'ON', null, '1');
INSERT INTO `caLocState` VALUES ('2832', '148', 'Oshikoto', 'OT', null, '1');
INSERT INTO `caLocState` VALUES ('2833', '148', 'Otjozondjupa', 'OD', null, '1');
INSERT INTO `caLocState` VALUES ('2834', '149', 'Aiwo', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2835', '149', 'Anabar', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2836', '149', 'Anetan', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2837', '149', 'Anibare', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2838', '149', 'Baiti', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2839', '149', 'Boe', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2840', '149', 'Buada', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2841', '149', 'Denigomodu', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2842', '149', 'Ewa', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2843', '149', 'Ijuw', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2844', '149', 'Meneng', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2845', '149', 'Nibok', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2846', '149', 'Uaboe', '13', null, '1');
INSERT INTO `caLocState` VALUES ('2847', '149', 'Yaren', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2848', '150', 'Bagmati', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2849', '150', 'Bheri', 'BH', null, '1');
INSERT INTO `caLocState` VALUES ('2850', '150', 'Dhawalagiri', 'DH', null, '1');
INSERT INTO `caLocState` VALUES ('2851', '150', 'Gandaki', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('2852', '150', 'Janakpur', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('2853', '150', 'Karnali', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('2854', '150', 'Kosi [Koshi]', 'KO', null, '1');
INSERT INTO `caLocState` VALUES ('2855', '150', 'Lumbini', 'LU', null, '1');
INSERT INTO `caLocState` VALUES ('2856', '150', 'Madhya Pashchimanchal', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2857', '150', 'Madhyamanchal', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2858', '150', 'Mahakali', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('2859', '150', 'Mechi', 'ME', null, '1');
INSERT INTO `caLocState` VALUES ('2860', '150', 'Narayani', 'NA', null, '1');
INSERT INTO `caLocState` VALUES ('2861', '150', 'Pashchimanchal', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2862', '150', 'Purwanchal', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2863', '150', 'Rapti', 'RA', null, '1');
INSERT INTO `caLocState` VALUES ('2864', '150', 'Sagarmatha', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('2865', '150', 'Seti', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('2866', '150', 'Sudur Pashchimanchal', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2867', '151', 'Aruba', 'AW', null, '1');
INSERT INTO `caLocState` VALUES ('2868', '151', 'Bonaire', 'BQ1', null, '1');
INSERT INTO `caLocState` VALUES ('2869', '151', 'Curaçao', 'CW', null, '1');
INSERT INTO `caLocState` VALUES ('2870', '151', 'Drenthe', 'DR', null, '1');
INSERT INTO `caLocState` VALUES ('2871', '151', 'Flevoland', 'FL', null, '1');
INSERT INTO `caLocState` VALUES ('2872', '151', 'Friesland', 'FR', null, '1');
INSERT INTO `caLocState` VALUES ('2873', '151', 'Gelderland', 'GE', null, '1');
INSERT INTO `caLocState` VALUES ('2874', '151', 'Groningen', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('2875', '151', 'Limburg', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('2876', '151', 'Noord-Brabant', 'NB', null, '1');
INSERT INTO `caLocState` VALUES ('2877', '151', 'Noord-Holland', 'NH', null, '1');
INSERT INTO `caLocState` VALUES ('2878', '151', 'Overijssel', 'OV', null, '1');
INSERT INTO `caLocState` VALUES ('2879', '151', 'Saba', 'BQ2', null, '1');
INSERT INTO `caLocState` VALUES ('2880', '151', 'Sint Eustatius', 'BQ3', null, '1');
INSERT INTO `caLocState` VALUES ('2881', '151', 'Sint Maarten', 'SX', null, '1');
INSERT INTO `caLocState` VALUES ('2882', '151', 'Utrecht', 'UT', null, '1');
INSERT INTO `caLocState` VALUES ('2883', '151', 'Zeeland', 'ZE', null, '1');
INSERT INTO `caLocState` VALUES ('2884', '151', 'Zuid-Holland', 'ZH', null, '1');
INSERT INTO `caLocState` VALUES ('2885', '154', 'Auckland', 'AUK', null, '1');
INSERT INTO `caLocState` VALUES ('2886', '154', 'Bay of Plenty', 'BOP', null, '1');
INSERT INTO `caLocState` VALUES ('2887', '154', 'Canterbury', 'CAN', null, '1');
INSERT INTO `caLocState` VALUES ('2888', '154', 'Chatham Islands Territory', 'CIT', null, '1');
INSERT INTO `caLocState` VALUES ('2889', '154', 'Gisborne District', 'GIS', null, '1');
INSERT INTO `caLocState` VALUES ('2890', '154', 'Hawkes\'s Bay', 'HKB', null, '1');
INSERT INTO `caLocState` VALUES ('2891', '154', 'Manawatu-Wanganui', 'MWT', null, '1');
INSERT INTO `caLocState` VALUES ('2892', '154', 'Marlborough District', 'MBH', null, '1');
INSERT INTO `caLocState` VALUES ('2893', '154', 'Nelson City', 'NSN', null, '1');
INSERT INTO `caLocState` VALUES ('2894', '154', 'North Island', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('2895', '154', 'Northland', 'NTL', null, '1');
INSERT INTO `caLocState` VALUES ('2896', '154', 'Otago', 'OTA', null, '1');
INSERT INTO `caLocState` VALUES ('2897', '154', 'South Island', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('2898', '154', 'Southland', 'STL', null, '1');
INSERT INTO `caLocState` VALUES ('2899', '154', 'Taranaki', 'TKI', null, '1');
INSERT INTO `caLocState` VALUES ('2900', '154', 'Tasman District', 'TAS', null, '1');
INSERT INTO `caLocState` VALUES ('2901', '154', 'Waikato', 'WKO', null, '1');
INSERT INTO `caLocState` VALUES ('2902', '154', 'Wellington', 'WGN', null, '1');
INSERT INTO `caLocState` VALUES ('2903', '154', 'West Coast', 'WTC', null, '1');
INSERT INTO `caLocState` VALUES ('2904', '155', 'Atlántico Norte*', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('2905', '155', 'Atlántico Sur*', 'AS', null, '1');
INSERT INTO `caLocState` VALUES ('2906', '155', 'Boaco', 'BO', null, '1');
INSERT INTO `caLocState` VALUES ('2907', '155', 'Carazo', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('2908', '155', 'Chinandega', 'CI', null, '1');
INSERT INTO `caLocState` VALUES ('2909', '155', 'Chontales', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('2910', '155', 'Estelí', 'ES', null, '1');
INSERT INTO `caLocState` VALUES ('2911', '155', 'Granada', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('2912', '155', 'Jinotega', 'JI', null, '1');
INSERT INTO `caLocState` VALUES ('2913', '155', 'León', 'LE', null, '1');
INSERT INTO `caLocState` VALUES ('2914', '155', 'Madriz', 'MD', null, '1');
INSERT INTO `caLocState` VALUES ('2915', '155', 'Managua', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('2916', '155', 'Masaya', 'MS', null, '1');
INSERT INTO `caLocState` VALUES ('2917', '155', 'Matagalpa', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('2918', '155', 'Nueva Segovia', 'NS', null, '1');
INSERT INTO `caLocState` VALUES ('2919', '155', 'Rivas', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('2920', '155', 'Río San Juan', 'SJ', null, '1');
INSERT INTO `caLocState` VALUES ('2921', '156', 'Agadez', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2922', '156', 'Diffa', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2923', '156', 'Dosso', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2924', '156', 'Maradi', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2925', '156', 'Niamey', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2926', '156', 'Tahoua', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2927', '156', 'Tillabéri', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2928', '156', 'Zinder', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2929', '157', 'Abia', 'AB', null, '1');
INSERT INTO `caLocState` VALUES ('2930', '157', 'Abuja Federal Capital Territory', 'FC', null, '1');
INSERT INTO `caLocState` VALUES ('2931', '157', 'Adamawa', 'AD', null, '1');
INSERT INTO `caLocState` VALUES ('2932', '157', 'Akwa Ibom', 'AK', null, '1');
INSERT INTO `caLocState` VALUES ('2933', '157', 'Anambra', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('2934', '157', 'Bauchi', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2935', '157', 'Bayelsa', 'BY', null, '1');
INSERT INTO `caLocState` VALUES ('2936', '157', 'Benue', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('2937', '157', 'Borno', 'BO', null, '1');
INSERT INTO `caLocState` VALUES ('2938', '157', 'Cross River', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('2939', '157', 'Delta', 'DE', null, '1');
INSERT INTO `caLocState` VALUES ('2940', '157', 'Ebonyi', 'EB', null, '1');
INSERT INTO `caLocState` VALUES ('2941', '157', 'Edo', 'ED', null, '1');
INSERT INTO `caLocState` VALUES ('2942', '157', 'Ekiti', 'EK', null, '1');
INSERT INTO `caLocState` VALUES ('2943', '157', 'Enugu', 'EN', null, '1');
INSERT INTO `caLocState` VALUES ('2944', '157', 'Gombe', 'GO', null, '1');
INSERT INTO `caLocState` VALUES ('2945', '157', 'Imo', 'IM', null, '1');
INSERT INTO `caLocState` VALUES ('2946', '157', 'Jigawa', 'JI', null, '1');
INSERT INTO `caLocState` VALUES ('2947', '157', 'Kaduna', 'KD', null, '1');
INSERT INTO `caLocState` VALUES ('2948', '157', 'Kano', 'KN', null, '1');
INSERT INTO `caLocState` VALUES ('2949', '157', 'Katsina', 'KT', null, '1');
INSERT INTO `caLocState` VALUES ('2950', '157', 'Kebbi', 'KE', null, '1');
INSERT INTO `caLocState` VALUES ('2951', '157', 'Kogi', 'KO', null, '1');
INSERT INTO `caLocState` VALUES ('2952', '157', 'Kwara', 'KW', null, '1');
INSERT INTO `caLocState` VALUES ('2953', '157', 'Lagos', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('2954', '157', 'Nassarawa', 'NA', null, '1');
INSERT INTO `caLocState` VALUES ('2955', '157', 'Niger', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('2956', '157', 'Ogun', 'OG', null, '1');
INSERT INTO `caLocState` VALUES ('2957', '157', 'Ondo', 'ON', null, '1');
INSERT INTO `caLocState` VALUES ('2958', '157', 'Osun', 'OS', null, '1');
INSERT INTO `caLocState` VALUES ('2959', '157', 'Oyo', 'OY', null, '1');
INSERT INTO `caLocState` VALUES ('2960', '157', 'Plateau', 'PL', null, '1');
INSERT INTO `caLocState` VALUES ('2961', '157', 'Rivers', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('2962', '157', 'Sokoto', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('2963', '157', 'Taraba', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('2964', '157', 'Yobe', 'YO', null, '1');
INSERT INTO `caLocState` VALUES ('2965', '157', 'Zamfara', 'ZA', null, '1');
INSERT INTO `caLocState` VALUES ('2966', '161', 'Akershus', '2', null, '1');
INSERT INTO `caLocState` VALUES ('2967', '161', 'Aust-Agder', '9', null, '1');
INSERT INTO `caLocState` VALUES ('2968', '161', 'Buskerud', '6', null, '1');
INSERT INTO `caLocState` VALUES ('2969', '161', 'Finnmark', '20', null, '1');
INSERT INTO `caLocState` VALUES ('2970', '161', 'Hedmark', '4', null, '1');
INSERT INTO `caLocState` VALUES ('2971', '161', 'Hordaland', '12', null, '1');
INSERT INTO `caLocState` VALUES ('2972', '161', 'Jan Mayen (Arctic Region)', '22', null, '1');
INSERT INTO `caLocState` VALUES ('2973', '161', 'Møre og Romsdal', '15', null, '1');
INSERT INTO `caLocState` VALUES ('2974', '161', 'Nord-Trøndelag', '17', null, '1');
INSERT INTO `caLocState` VALUES ('2975', '161', 'Nordland', '18', null, '1');
INSERT INTO `caLocState` VALUES ('2976', '161', 'Oppland', '5', null, '1');
INSERT INTO `caLocState` VALUES ('2977', '161', 'Oslo', '3', null, '1');
INSERT INTO `caLocState` VALUES ('2978', '161', 'Rogaland', '11', null, '1');
INSERT INTO `caLocState` VALUES ('2979', '161', 'Sogn og Fjordane', '14', null, '1');
INSERT INTO `caLocState` VALUES ('2980', '161', 'Svalbard (Arctic Region)', '21', null, '1');
INSERT INTO `caLocState` VALUES ('2981', '161', 'Sør-Trøndelag', '16', null, '1');
INSERT INTO `caLocState` VALUES ('2982', '161', 'Telemark', '8', null, '1');
INSERT INTO `caLocState` VALUES ('2983', '161', 'Troms', '19', null, '1');
INSERT INTO `caLocState` VALUES ('2984', '161', 'Vest-Agder', '10', null, '1');
INSERT INTO `caLocState` VALUES ('2985', '161', 'Vestfold', '7', null, '1');
INSERT INTO `caLocState` VALUES ('2986', '161', 'Østfold', '1', null, '1');
INSERT INTO `caLocState` VALUES ('2987', '162', 'Ad Dakhiliyah', 'DA', null, '1');
INSERT INTO `caLocState` VALUES ('2988', '162', 'Al Batinah', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2989', '162', 'Al Buraymi', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('2990', '162', 'Al Wustá', 'WU', null, '1');
INSERT INTO `caLocState` VALUES ('2991', '162', 'Ash Sharqiyah', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('2992', '162', 'Az̧ Z̧āhirah', 'ZA', null, '1');
INSERT INTO `caLocState` VALUES ('2993', '162', 'Masqat', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('2994', '162', 'Musandam', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('2995', '162', 'Z̧ufār', 'ZU', null, '1');
INSERT INTO `caLocState` VALUES ('2996', '163', 'Azad Kashmir', 'JK', null, '1');
INSERT INTO `caLocState` VALUES ('2997', '163', 'Baluchistan (en)', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('2998', '163', 'Federally Administered Tribal Areas', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('2999', '163', 'Gilgit-Baltistan', 'GB', null, '1');
INSERT INTO `caLocState` VALUES ('3000', '163', 'Islamabad', 'IS', null, '1');
INSERT INTO `caLocState` VALUES ('3001', '163', 'Khyber Pakhtunkhwa', 'KP', null, '1');
INSERT INTO `caLocState` VALUES ('3002', '163', 'Punjab', 'PB', null, '1');
INSERT INTO `caLocState` VALUES ('3003', '163', 'Sindh', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('3004', '164', 'Aimeliik', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3005', '164', 'Airai', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3006', '164', 'Angaur', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3007', '164', 'Hatobohei', '50', null, '1');
INSERT INTO `caLocState` VALUES ('3008', '164', 'Kayangel', '100', null, '1');
INSERT INTO `caLocState` VALUES ('3009', '164', 'Koror', '150', null, '1');
INSERT INTO `caLocState` VALUES ('3010', '164', 'Melekeok', '212', null, '1');
INSERT INTO `caLocState` VALUES ('3011', '164', 'Ngaraard', '214', null, '1');
INSERT INTO `caLocState` VALUES ('3012', '164', 'Ngarchelong', '218', null, '1');
INSERT INTO `caLocState` VALUES ('3013', '164', 'Ngardmau', '222', null, '1');
INSERT INTO `caLocState` VALUES ('3014', '164', 'Ngatpang', '224', null, '1');
INSERT INTO `caLocState` VALUES ('3015', '164', 'Ngchesar', '226', null, '1');
INSERT INTO `caLocState` VALUES ('3016', '164', 'Ngeremlengui', '227', null, '1');
INSERT INTO `caLocState` VALUES ('3017', '164', 'Ngiwal', '228', null, '1');
INSERT INTO `caLocState` VALUES ('3018', '164', 'Peleliu', '350', null, '1');
INSERT INTO `caLocState` VALUES ('3019', '164', 'Sonsorol', '370', null, '1');
INSERT INTO `caLocState` VALUES ('3020', '165', 'Bethlehem Bayt Laḩm', 'BTH', null, '1');
INSERT INTO `caLocState` VALUES ('3021', '165', 'Deir El Balah Dayr al Balaḩ', 'DEB', null, '1');
INSERT INTO `caLocState` VALUES ('3022', '165', 'Gaza Ghazzah', 'GZA', null, '1');
INSERT INTO `caLocState` VALUES ('3023', '165', 'Hebron Al Khalīl', 'HBN', null, '1');
INSERT INTO `caLocState` VALUES ('3024', '165', 'Jenin Janīn', 'JEN', null, '1');
INSERT INTO `caLocState` VALUES ('3025', '165', 'Jericho – Al Aghwar Arīḩā wa al Aghwār', 'JRH', null, '1');
INSERT INTO `caLocState` VALUES ('3026', '165', 'Jerusalem Al Quds', 'JEM', null, '1');
INSERT INTO `caLocState` VALUES ('3027', '165', 'Khan Yunis Khān Yūnis', 'KYS', null, '1');
INSERT INTO `caLocState` VALUES ('3028', '165', 'Nablus Nāblus', 'NBS', null, '1');
INSERT INTO `caLocState` VALUES ('3029', '165', 'North Gaza Shamāl Ghazzah', 'NGZ', null, '1');
INSERT INTO `caLocState` VALUES ('3030', '165', 'Qalqilya Qalqīlyah', 'QQA', null, '1');
INSERT INTO `caLocState` VALUES ('3031', '165', 'Rafah Rafaḩ', 'RFH', null, '1');
INSERT INTO `caLocState` VALUES ('3032', '165', 'Ramallah Rām Allāh wa al Bīrah', 'RBH', null, '1');
INSERT INTO `caLocState` VALUES ('3033', '165', 'Salfit Salfīt', 'SLT', null, '1');
INSERT INTO `caLocState` VALUES ('3034', '165', 'Tubas Ţūbās', 'TBS', null, '1');
INSERT INTO `caLocState` VALUES ('3035', '165', 'Tulkarm Ţūlkarm', 'TKM', null, '1');
INSERT INTO `caLocState` VALUES ('3036', '166', 'Bocas del Toro', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3037', '166', 'Chiriquí', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3038', '166', 'Coclé', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3039', '166', 'Colón', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3040', '166', 'Darién', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3041', '166', 'Emberá', 'EM', null, '1');
INSERT INTO `caLocState` VALUES ('3042', '166', 'Herrera', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3043', '166', 'Los Santos', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3044', '166', 'Ngöbe-Buglé', 'NB', null, '1');
INSERT INTO `caLocState` VALUES ('3045', '166', 'Panamá', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3046', '166', 'Veraguas', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3047', '167', 'Bougainville', 'NSB', null, '1');
INSERT INTO `caLocState` VALUES ('3048', '167', 'Central', 'CPM', null, '1');
INSERT INTO `caLocState` VALUES ('3049', '167', 'Chimbu', 'CPK', null, '1');
INSERT INTO `caLocState` VALUES ('3050', '167', 'East New Britain', 'EBR', null, '1');
INSERT INTO `caLocState` VALUES ('3051', '167', 'East Sepik', 'ESW', null, '1');
INSERT INTO `caLocState` VALUES ('3052', '167', 'Eastern Highlands', 'EHG', null, '1');
INSERT INTO `caLocState` VALUES ('3053', '167', 'Enga', 'EPW', null, '1');
INSERT INTO `caLocState` VALUES ('3054', '167', 'Gulf', 'GPK', null, '1');
INSERT INTO `caLocState` VALUES ('3055', '167', 'Madang', 'MPM', null, '1');
INSERT INTO `caLocState` VALUES ('3056', '167', 'Manus', 'MRL', null, '1');
INSERT INTO `caLocState` VALUES ('3057', '167', 'Milne Bay', 'MBA', null, '1');
INSERT INTO `caLocState` VALUES ('3058', '167', 'Morobe', 'MPL', null, '1');
INSERT INTO `caLocState` VALUES ('3059', '167', 'National Capital District (Port Moresby)', 'NCD', null, '1');
INSERT INTO `caLocState` VALUES ('3060', '167', 'New Ireland', 'NIK', null, '1');
INSERT INTO `caLocState` VALUES ('3061', '167', 'Northern', 'NPP', null, '1');
INSERT INTO `caLocState` VALUES ('3062', '167', 'Sandaun [West Sepik]', 'SAN', null, '1');
INSERT INTO `caLocState` VALUES ('3063', '167', 'Southern Highlands', 'SHM', null, '1');
INSERT INTO `caLocState` VALUES ('3064', '167', 'West New Britain', 'WBK', null, '1');
INSERT INTO `caLocState` VALUES ('3065', '167', 'Western', 'WPD', null, '1');
INSERT INTO `caLocState` VALUES ('3066', '167', 'Western Highlands', 'WHM', null, '1');
INSERT INTO `caLocState` VALUES ('3067', '168', 'Alto Paraguay', '16', null, '1');
INSERT INTO `caLocState` VALUES ('3068', '168', 'Alto Paraná', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3069', '168', 'Amambay', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3070', '168', 'Asunción', 'ASU', null, '1');
INSERT INTO `caLocState` VALUES ('3071', '168', 'Boquerón', '19', null, '1');
INSERT INTO `caLocState` VALUES ('3072', '168', 'Caaguazú', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3073', '168', 'Caazapá', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3074', '168', 'Canindeyú', '14', null, '1');
INSERT INTO `caLocState` VALUES ('3075', '168', 'Central', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3076', '168', 'Concepción', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3077', '168', 'Cordillera', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3078', '168', 'Guairá', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3079', '168', 'Itapúa', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3080', '168', 'Misiones', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3081', '168', 'Paraguarí', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3082', '168', 'Presidente Hayes', '15', null, '1');
INSERT INTO `caLocState` VALUES ('3083', '168', 'San Pedro', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3084', '168', 'Ñeembucú', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3085', '169', 'Amazonas', 'AMA', null, '1');
INSERT INTO `caLocState` VALUES ('3086', '169', 'Ancash', 'ANC', null, '1');
INSERT INTO `caLocState` VALUES ('3087', '169', 'Apurímac', 'APU', null, '1');
INSERT INTO `caLocState` VALUES ('3088', '169', 'Arequipa', 'ARE', null, '1');
INSERT INTO `caLocState` VALUES ('3089', '169', 'Ayacucho', 'AYA', null, '1');
INSERT INTO `caLocState` VALUES ('3090', '169', 'Cajamarca', 'CAJ', null, '1');
INSERT INTO `caLocState` VALUES ('3091', '169', 'Cusco [Cuzco]', 'CUS', null, '1');
INSERT INTO `caLocState` VALUES ('3092', '169', 'El Callao', 'CAL', null, '1');
INSERT INTO `caLocState` VALUES ('3093', '169', 'Huancavelica', 'HUV', null, '1');
INSERT INTO `caLocState` VALUES ('3094', '169', 'Huánuco', 'HUC', null, '1');
INSERT INTO `caLocState` VALUES ('3095', '169', 'Ica', 'ICA', null, '1');
INSERT INTO `caLocState` VALUES ('3096', '169', 'Junín', 'JUN', null, '1');
INSERT INTO `caLocState` VALUES ('3097', '169', 'La Libertad', 'LAL', null, '1');
INSERT INTO `caLocState` VALUES ('3098', '169', 'Lambayeque', 'LAM', null, '1');
INSERT INTO `caLocState` VALUES ('3099', '169', 'Lima', 'LIM', null, '1');
INSERT INTO `caLocState` VALUES ('3100', '169', 'Loreto', 'LOR', null, '1');
INSERT INTO `caLocState` VALUES ('3101', '169', 'Madre de Dios', 'MDD', null, '1');
INSERT INTO `caLocState` VALUES ('3102', '169', 'Moquegua', 'MOQ', null, '1');
INSERT INTO `caLocState` VALUES ('3103', '169', 'Municipalidad Metropolitana de Lima', 'LMA', null, '1');
INSERT INTO `caLocState` VALUES ('3104', '169', 'Pasco', 'PAS', null, '1');
INSERT INTO `caLocState` VALUES ('3105', '169', 'Piura', 'PIU', null, '1');
INSERT INTO `caLocState` VALUES ('3106', '169', 'Puno', 'PUN', null, '1');
INSERT INTO `caLocState` VALUES ('3107', '169', 'San Martín', 'SAM', null, '1');
INSERT INTO `caLocState` VALUES ('3108', '169', 'Tacna', 'TAC', null, '1');
INSERT INTO `caLocState` VALUES ('3109', '169', 'Tumbes', 'TUM', null, '1');
INSERT INTO `caLocState` VALUES ('3110', '169', 'Ucayali', 'UCA', null, '1');
INSERT INTO `caLocState` VALUES ('3111', '170', 'Abra', 'ABR', null, '1');
INSERT INTO `caLocState` VALUES ('3112', '170', 'Agusan del Norte', 'AGN', null, '1');
INSERT INTO `caLocState` VALUES ('3113', '170', 'Agusan del Sur', 'AGS', null, '1');
INSERT INTO `caLocState` VALUES ('3114', '170', 'Aklan', 'AKL', null, '1');
INSERT INTO `caLocState` VALUES ('3115', '170', 'Albay', 'ALB', null, '1');
INSERT INTO `caLocState` VALUES ('3116', '170', 'Antique', 'ANT', null, '1');
INSERT INTO `caLocState` VALUES ('3117', '170', 'Apayao', 'APA', null, '1');
INSERT INTO `caLocState` VALUES ('3118', '170', 'Aurora', 'AUR', null, '1');
INSERT INTO `caLocState` VALUES ('3119', '170', 'Autonomous Region in Muslim Mindanao (ARMM)', '14', null, '1');
INSERT INTO `caLocState` VALUES ('3120', '170', 'Basilan', 'BAS', null, '1');
INSERT INTO `caLocState` VALUES ('3121', '170', 'Bataan', 'BAN', null, '1');
INSERT INTO `caLocState` VALUES ('3122', '170', 'Batanes', 'BTN', null, '1');
INSERT INTO `caLocState` VALUES ('3123', '170', 'Batangas', 'BTG', null, '1');
INSERT INTO `caLocState` VALUES ('3124', '170', 'Benguet', 'BEN', null, '1');
INSERT INTO `caLocState` VALUES ('3125', '170', 'Bicol (Region V)', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3126', '170', 'Biliran', 'BIL', null, '1');
INSERT INTO `caLocState` VALUES ('3127', '170', 'Bohol', 'BOH', null, '1');
INSERT INTO `caLocState` VALUES ('3128', '170', 'Bukidnon', 'BUK', null, '1');
INSERT INTO `caLocState` VALUES ('3129', '170', 'Bulacan', 'BUL', null, '1');
INSERT INTO `caLocState` VALUES ('3130', '170', 'Cagayan', 'CAG', null, '1');
INSERT INTO `caLocState` VALUES ('3131', '170', 'Cagayan Valley (Region II)', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3132', '170', 'CALABARZON (Region IV-A)', '40', null, '1');
INSERT INTO `caLocState` VALUES ('3133', '170', 'Camarines Norte', 'CAN', null, '1');
INSERT INTO `caLocState` VALUES ('3134', '170', 'Camarines Sur', 'CAS', null, '1');
INSERT INTO `caLocState` VALUES ('3135', '170', 'Camiguin', 'CAM', null, '1');
INSERT INTO `caLocState` VALUES ('3136', '170', 'Capiz', 'CAP', null, '1');
INSERT INTO `caLocState` VALUES ('3137', '170', 'Caraga (Region XIII)', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3138', '170', 'Catanduanes', 'CAT', null, '1');
INSERT INTO `caLocState` VALUES ('3139', '170', 'Cavite', 'CAV', null, '1');
INSERT INTO `caLocState` VALUES ('3140', '170', 'Cebu', 'CEB', null, '1');
INSERT INTO `caLocState` VALUES ('3141', '170', 'Central Luzon (Region III)', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3142', '170', 'Central Visayas (Region VII)', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3143', '170', 'Compostela Valley', 'COM', null, '1');
INSERT INTO `caLocState` VALUES ('3144', '170', 'Cordillera Administrative Region (CAR)', '15', null, '1');
INSERT INTO `caLocState` VALUES ('3145', '170', 'Cotabato', 'NCO', null, '1');
INSERT INTO `caLocState` VALUES ('3146', '170', 'Davao (Region XI)', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3147', '170', 'Davao del Norte', 'DAV', null, '1');
INSERT INTO `caLocState` VALUES ('3148', '170', 'Davao del Sur', 'DAS', null, '1');
INSERT INTO `caLocState` VALUES ('3149', '170', 'Davao Oriental', 'DAO', null, '1');
INSERT INTO `caLocState` VALUES ('3150', '170', 'Dinagat Islands', 'DIN', null, '1');
INSERT INTO `caLocState` VALUES ('3151', '170', 'Eastern Samar', 'EAS', null, '1');
INSERT INTO `caLocState` VALUES ('3152', '170', 'Eastern Visayas (Region VIII)', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3153', '170', 'Guimaras', 'GUI', null, '1');
INSERT INTO `caLocState` VALUES ('3154', '170', 'Ifugao', 'IFU', null, '1');
INSERT INTO `caLocState` VALUES ('3155', '170', 'Ilocos (Region I)', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3156', '170', 'Ilocos Norte', 'ILN', null, '1');
INSERT INTO `caLocState` VALUES ('3157', '170', 'Ilocos Sur', 'ILS', null, '1');
INSERT INTO `caLocState` VALUES ('3158', '170', 'Iloilo', 'ILI', null, '1');
INSERT INTO `caLocState` VALUES ('3159', '170', 'Isabela', 'ISA', null, '1');
INSERT INTO `caLocState` VALUES ('3160', '170', 'Kalinga', 'KAL', null, '1');
INSERT INTO `caLocState` VALUES ('3161', '170', 'La Union', 'LUN', null, '1');
INSERT INTO `caLocState` VALUES ('3162', '170', 'Laguna', 'LAG', null, '1');
INSERT INTO `caLocState` VALUES ('3163', '170', 'Lanao del Norte', 'LAN', null, '1');
INSERT INTO `caLocState` VALUES ('3164', '170', 'Lanao del Sur', 'LAS', null, '1');
INSERT INTO `caLocState` VALUES ('3165', '170', 'Leyte', 'LEY', null, '1');
INSERT INTO `caLocState` VALUES ('3166', '170', 'Maguindanao', 'MAG', null, '1');
INSERT INTO `caLocState` VALUES ('3167', '170', 'Marinduque', 'MAD', null, '1');
INSERT INTO `caLocState` VALUES ('3168', '170', 'Masbate', 'MAS', null, '1');
INSERT INTO `caLocState` VALUES ('3169', '170', 'MIMAROPA (Region IV-B)', '41', null, '1');
INSERT INTO `caLocState` VALUES ('3170', '170', 'Mindoro Occidental', 'MDC', null, '1');
INSERT INTO `caLocState` VALUES ('3171', '170', 'Mindoro Oriental', 'MDR', null, '1');
INSERT INTO `caLocState` VALUES ('3172', '170', 'Misamis Occidental', 'MSC', null, '1');
INSERT INTO `caLocState` VALUES ('3173', '170', 'Misamis Oriental', 'MSR', null, '1');
INSERT INTO `caLocState` VALUES ('3174', '170', 'Mountain Province', 'MOU', null, '1');
INSERT INTO `caLocState` VALUES ('3175', '170', 'National Capital Region', '0', null, '1');
INSERT INTO `caLocState` VALUES ('3176', '170', 'Negros Occidental', 'NEC', null, '1');
INSERT INTO `caLocState` VALUES ('3177', '170', 'Negros Oriental', 'NER', null, '1');
INSERT INTO `caLocState` VALUES ('3178', '170', 'Northern Mindanao (Region X)', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3179', '170', 'Northern Samar', 'NSA', null, '1');
INSERT INTO `caLocState` VALUES ('3180', '170', 'Nueva Ecija', 'NUE', null, '1');
INSERT INTO `caLocState` VALUES ('3181', '170', 'Nueva Vizcaya', 'NUV', null, '1');
INSERT INTO `caLocState` VALUES ('3182', '170', 'Palawan', 'PLW', null, '1');
INSERT INTO `caLocState` VALUES ('3183', '170', 'Pampanga', 'PAM', null, '1');
INSERT INTO `caLocState` VALUES ('3184', '170', 'Pangasinan', 'PAN', null, '1');
INSERT INTO `caLocState` VALUES ('3185', '170', 'Quezon', 'QUE', null, '1');
INSERT INTO `caLocState` VALUES ('3186', '170', 'Quirino', 'QUI', null, '1');
INSERT INTO `caLocState` VALUES ('3187', '170', 'Rizal', 'RIZ', null, '1');
INSERT INTO `caLocState` VALUES ('3188', '170', 'Romblon', 'ROM', null, '1');
INSERT INTO `caLocState` VALUES ('3189', '170', 'Sarangani', 'SAR', null, '1');
INSERT INTO `caLocState` VALUES ('3190', '170', 'Shariff Kabunsuan', 'X2~', null, '1');
INSERT INTO `caLocState` VALUES ('3191', '170', 'Siquijor', 'SIG', null, '1');
INSERT INTO `caLocState` VALUES ('3192', '170', 'Soccsksargen (Region XII)', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3193', '170', 'Sorsogon', 'SOR', null, '1');
INSERT INTO `caLocState` VALUES ('3194', '170', 'South Cotabato', 'SCO', null, '1');
INSERT INTO `caLocState` VALUES ('3195', '170', 'Southern Leyte', 'SLE', null, '1');
INSERT INTO `caLocState` VALUES ('3196', '170', 'Sultan Kudarat', 'SUK', null, '1');
INSERT INTO `caLocState` VALUES ('3197', '170', 'Sulu', 'SLU', null, '1');
INSERT INTO `caLocState` VALUES ('3198', '170', 'Surigao del Norte', 'SUN', null, '1');
INSERT INTO `caLocState` VALUES ('3199', '170', 'Surigao del Sur', 'SUR', null, '1');
INSERT INTO `caLocState` VALUES ('3200', '170', 'Tarlac', 'TAR', null, '1');
INSERT INTO `caLocState` VALUES ('3201', '170', 'Tawi-Tawi', 'TAW', null, '1');
INSERT INTO `caLocState` VALUES ('3202', '170', 'Western Samar', 'WSA', null, '1');
INSERT INTO `caLocState` VALUES ('3203', '170', 'Western Visayas (Region VI)', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3204', '170', 'Zambales', 'ZMB', null, '1');
INSERT INTO `caLocState` VALUES ('3205', '170', 'Zamboanga del Norte', 'ZAN', null, '1');
INSERT INTO `caLocState` VALUES ('3206', '170', 'Zamboanga del Sur', 'ZAS', null, '1');
INSERT INTO `caLocState` VALUES ('3207', '170', 'Zamboanga Peninsula (Region IX)', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3208', '170', 'Zamboanga Sibuguey [Zamboanga Sibugay]', 'ZSI', null, '1');
INSERT INTO `caLocState` VALUES ('3209', '172', 'Dolnoslaskie', 'DS', null, '1');
INSERT INTO `caLocState` VALUES ('3210', '172', 'Kujawsko-pomorskie', 'KP', null, '1');
INSERT INTO `caLocState` VALUES ('3211', '172', 'Lubelskie', 'LU', null, '1');
INSERT INTO `caLocState` VALUES ('3212', '172', 'Lubuskie', 'LB', null, '1');
INSERT INTO `caLocState` VALUES ('3213', '172', 'Lódzkie', 'LD', null, '1');
INSERT INTO `caLocState` VALUES ('3214', '172', 'Malopolskie', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('3215', '172', 'Mazowieckie', 'MZ', null, '1');
INSERT INTO `caLocState` VALUES ('3216', '172', 'Opolskie', 'OP', null, '1');
INSERT INTO `caLocState` VALUES ('3217', '172', 'Podkarpackie', 'PK', null, '1');
INSERT INTO `caLocState` VALUES ('3218', '172', 'Podlaskie', 'PD', null, '1');
INSERT INTO `caLocState` VALUES ('3219', '172', 'Pomorskie', 'PM', null, '1');
INSERT INTO `caLocState` VALUES ('3220', '172', 'Slaskie', 'SL', null, '1');
INSERT INTO `caLocState` VALUES ('3221', '172', 'Swietokrzyskie', 'SK', null, '1');
INSERT INTO `caLocState` VALUES ('3222', '172', 'Warminsko-mazurskie', 'WN', null, '1');
INSERT INTO `caLocState` VALUES ('3223', '172', 'Wielkopolskie', 'WP', null, '1');
INSERT INTO `caLocState` VALUES ('3224', '172', 'Zachodniopomorskie', 'ZP', null, '1');
INSERT INTO `caLocState` VALUES ('3225', '173', 'Aveiro', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3226', '173', 'Beja', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3227', '173', 'Braga', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3228', '173', 'Bragança', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3229', '173', 'Castelo Branco', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3230', '173', 'Coimbra', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3231', '173', 'Faro', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3232', '173', 'Guarda', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3233', '173', 'Leiria', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3234', '173', 'Lisboa', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3235', '173', 'Portalegre', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3236', '173', 'Porto', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3237', '173', 'Região Autónoma da Madeira', '30', null, '1');
INSERT INTO `caLocState` VALUES ('3238', '173', 'Região Autónoma dos Açores', '20', null, '1');
INSERT INTO `caLocState` VALUES ('3239', '173', 'Santarém', '14', null, '1');
INSERT INTO `caLocState` VALUES ('3240', '173', 'Setúbal', '15', null, '1');
INSERT INTO `caLocState` VALUES ('3241', '173', 'Viana do Castelo', '16', null, '1');
INSERT INTO `caLocState` VALUES ('3242', '173', 'Vila Real', '17', null, '1');
INSERT INTO `caLocState` VALUES ('3243', '173', 'Viseu', '18', null, '1');
INSERT INTO `caLocState` VALUES ('3244', '173', 'Évora', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3245', '175', 'Ad Dawhah', 'DA', null, '1');
INSERT INTO `caLocState` VALUES ('3246', '175', 'Al Khawr wa adh Dhakhīrah', 'KH', null, '1');
INSERT INTO `caLocState` VALUES ('3247', '175', 'Al Wakrah', 'WA', null, '1');
INSERT INTO `caLocState` VALUES ('3248', '175', 'Ar Rayyan', 'RA', null, '1');
INSERT INTO `caLocState` VALUES ('3249', '175', 'Az̧ Z̧a‘āyin', 'ZA', null, '1');
INSERT INTO `caLocState` VALUES ('3250', '175', 'Madinat ash Shamal', 'MS', null, '1');
INSERT INTO `caLocState` VALUES ('3251', '175', 'Umm Sa\'id', 'X1~', null, '1');
INSERT INTO `caLocState` VALUES ('3252', '175', 'Umm Salal', 'US', null, '1');
INSERT INTO `caLocState` VALUES ('3253', '177', 'Alba', 'AB', null, '1');
INSERT INTO `caLocState` VALUES ('3254', '177', 'Arad', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('3255', '177', 'Arges', 'AG', null, '1');
INSERT INTO `caLocState` VALUES ('3256', '177', 'Bacau', 'BC', null, '1');
INSERT INTO `caLocState` VALUES ('3257', '177', 'Bihor', 'BH', null, '1');
INSERT INTO `caLocState` VALUES ('3258', '177', 'Bistrita-Nasaud', 'BN', null, '1');
INSERT INTO `caLocState` VALUES ('3259', '177', 'Botosani', 'BT', null, '1');
INSERT INTO `caLocState` VALUES ('3260', '177', 'Braila', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('3261', '177', 'Brasov', 'BV', null, '1');
INSERT INTO `caLocState` VALUES ('3262', '177', 'Bucuresti', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('3263', '177', 'Buzau', 'BZ', null, '1');
INSERT INTO `caLocState` VALUES ('3264', '177', 'Calarasi', 'CL', null, '1');
INSERT INTO `caLocState` VALUES ('3265', '177', 'Caras-Severin', 'CS', null, '1');
INSERT INTO `caLocState` VALUES ('3266', '177', 'Cluj', 'CJ', null, '1');
INSERT INTO `caLocState` VALUES ('3267', '177', 'Constanta', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('3268', '177', 'Covasna', 'CV', null, '1');
INSERT INTO `caLocState` VALUES ('3269', '177', 'Dolj', 'DJ', null, '1');
INSERT INTO `caLocState` VALUES ('3270', '177', 'Dâmbovita', 'DB', null, '1');
INSERT INTO `caLocState` VALUES ('3271', '177', 'Galati', 'GL', null, '1');
INSERT INTO `caLocState` VALUES ('3272', '177', 'Giurgiu', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('3273', '177', 'Gorj', 'GJ', null, '1');
INSERT INTO `caLocState` VALUES ('3274', '177', 'Harghita', 'HR', null, '1');
INSERT INTO `caLocState` VALUES ('3275', '177', 'Hunedoara', 'HD', null, '1');
INSERT INTO `caLocState` VALUES ('3276', '177', 'Ialomita', 'IL', null, '1');
INSERT INTO `caLocState` VALUES ('3277', '177', 'Iasi', 'IS', null, '1');
INSERT INTO `caLocState` VALUES ('3278', '177', 'Ilfov', 'IF', null, '1');
INSERT INTO `caLocState` VALUES ('3279', '177', 'Maramures', 'MM', null, '1');
INSERT INTO `caLocState` VALUES ('3280', '177', 'Mehedinti', 'MH', null, '1');
INSERT INTO `caLocState` VALUES ('3281', '177', 'Mures', 'MS', null, '1');
INSERT INTO `caLocState` VALUES ('3282', '177', 'Neamt', 'NT', null, '1');
INSERT INTO `caLocState` VALUES ('3283', '177', 'Olt', 'OT', null, '1');
INSERT INTO `caLocState` VALUES ('3284', '177', 'Prahova', 'PH', null, '1');
INSERT INTO `caLocState` VALUES ('3285', '177', 'Salaj', 'SJ', null, '1');
INSERT INTO `caLocState` VALUES ('3286', '177', 'Satu Mare', 'SM', null, '1');
INSERT INTO `caLocState` VALUES ('3287', '177', 'Sibiu', 'SB', null, '1');
INSERT INTO `caLocState` VALUES ('3288', '177', 'Suceava', 'SV', null, '1');
INSERT INTO `caLocState` VALUES ('3289', '177', 'Teleorman', 'TR', null, '1');
INSERT INTO `caLocState` VALUES ('3290', '177', 'Timis', 'TM', null, '1');
INSERT INTO `caLocState` VALUES ('3291', '177', 'Tulcea', 'TL', null, '1');
INSERT INTO `caLocState` VALUES ('3292', '177', 'Vaslui', 'VS', null, '1');
INSERT INTO `caLocState` VALUES ('3293', '177', 'Vrancea', 'VN', null, '1');
INSERT INTO `caLocState` VALUES ('3294', '177', 'Vâlcea', 'VL', null, '1');
INSERT INTO `caLocState` VALUES ('3295', '178', 'Adygeya, Respublika', 'AD', null, '1');
INSERT INTO `caLocState` VALUES ('3296', '178', 'Altay, Respublika', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('3297', '178', 'Altayskiy kray', 'ALT', null, '1');
INSERT INTO `caLocState` VALUES ('3298', '178', 'Amurskaya oblast\'', 'AMU', null, '1');
INSERT INTO `caLocState` VALUES ('3299', '178', 'Arkhangel\'skaya oblast\'', 'ARK', null, '1');
INSERT INTO `caLocState` VALUES ('3300', '178', 'Astrakhanskaya oblast\'', 'AST', null, '1');
INSERT INTO `caLocState` VALUES ('3301', '178', 'Bashkortostan, Respublika', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('3302', '178', 'Belgorodskaya oblast\'', 'BEL', null, '1');
INSERT INTO `caLocState` VALUES ('3303', '178', 'Bryanskaya oblast\'', 'BRY', null, '1');
INSERT INTO `caLocState` VALUES ('3304', '178', 'Buryatiya, Respublika', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('3305', '178', 'Chechenskaya Respublika', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('3306', '178', 'Chelyabinskaya oblast\'', 'CHE', null, '1');
INSERT INTO `caLocState` VALUES ('3307', '178', 'Chukotskiy avtonomnyy okrug', 'CHU', null, '1');
INSERT INTO `caLocState` VALUES ('3308', '178', 'Chuvashskaya Respublika', 'CU', null, '1');
INSERT INTO `caLocState` VALUES ('3309', '178', 'Dagestan, Respublika', 'DA', null, '1');
INSERT INTO `caLocState` VALUES ('3310', '178', 'Ingushskaya Respublika [Respublika Ingushetiya]', 'IN', null, '1');
INSERT INTO `caLocState` VALUES ('3311', '178', 'Irkutskaya oblast\'', 'IRK', null, '1');
INSERT INTO `caLocState` VALUES ('3312', '178', 'Ivanovskaya oblast\'', 'IVA', null, '1');
INSERT INTO `caLocState` VALUES ('3313', '178', 'Kabardino-Balkarskaya Respublika', 'KB', null, '1');
INSERT INTO `caLocState` VALUES ('3314', '178', 'Kaliningradskaya oblast\'', 'KGD', null, '1');
INSERT INTO `caLocState` VALUES ('3315', '178', 'Kalmykiya, Respublika', 'KL', null, '1');
INSERT INTO `caLocState` VALUES ('3316', '178', 'Kaluzhskaya oblast\'', 'KLU', null, '1');
INSERT INTO `caLocState` VALUES ('3317', '178', 'Kamchatskaya oblast\'', 'KAM', null, '1');
INSERT INTO `caLocState` VALUES ('3318', '178', 'Karachayevo-Cherkesskaya Respublika', 'KC', null, '1');
INSERT INTO `caLocState` VALUES ('3319', '178', 'Kareliya, Respublika', 'KR', null, '1');
INSERT INTO `caLocState` VALUES ('3320', '178', 'Kemerovskaya oblast\'', 'KEM', null, '1');
INSERT INTO `caLocState` VALUES ('3321', '178', 'Khabarovskiy kray', 'KHA', null, '1');
INSERT INTO `caLocState` VALUES ('3322', '178', 'Khakasiya, Respublika', 'KK', null, '1');
INSERT INTO `caLocState` VALUES ('3323', '178', 'Khanty-Mansiyskiy avtonomnyy okrug [Yugra]', 'KHM', null, '1');
INSERT INTO `caLocState` VALUES ('3324', '178', 'Kirovskaya oblast\'', 'KIR', null, '1');
INSERT INTO `caLocState` VALUES ('3325', '178', 'Komi, Respublika', 'KO', null, '1');
INSERT INTO `caLocState` VALUES ('3326', '178', 'Komi-Permyak', 'X1~', null, '1');
INSERT INTO `caLocState` VALUES ('3327', '178', 'Kostromskaya oblast\'', 'KOS', null, '1');
INSERT INTO `caLocState` VALUES ('3328', '178', 'Krasnodarskiy kray', 'KDA', null, '1');
INSERT INTO `caLocState` VALUES ('3329', '178', 'Krasnoyarskiy kray', 'KYA', null, '1');
INSERT INTO `caLocState` VALUES ('3330', '178', 'Kurganskaya oblast\'', 'KGN', null, '1');
INSERT INTO `caLocState` VALUES ('3331', '178', 'Kurskaya oblast\'', 'KRS', null, '1');
INSERT INTO `caLocState` VALUES ('3332', '178', 'Leningradskaya oblast\'', 'LEN', null, '1');
INSERT INTO `caLocState` VALUES ('3333', '178', 'Lipetskaya oblast\'', 'LIP', null, '1');
INSERT INTO `caLocState` VALUES ('3334', '178', 'Magadanskaya oblast\'', 'MAG', null, '1');
INSERT INTO `caLocState` VALUES ('3335', '178', 'Mariy El, Respublika', 'ME', null, '1');
INSERT INTO `caLocState` VALUES ('3336', '178', 'Mordoviya, Respublika', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('3337', '178', 'Moskovskaya oblast\'', 'MOS', null, '1');
INSERT INTO `caLocState` VALUES ('3338', '178', 'Moskva', 'MOW', null, '1');
INSERT INTO `caLocState` VALUES ('3339', '178', 'Murmanskaya oblast\'', 'MUR', null, '1');
INSERT INTO `caLocState` VALUES ('3340', '178', 'Nenetskiy avtonomnyy okrug', 'NEN', null, '1');
INSERT INTO `caLocState` VALUES ('3341', '178', 'Nizhegorodskaya oblast\'', 'NIZ', null, '1');
INSERT INTO `caLocState` VALUES ('3342', '178', 'Novgorodskaya oblast\'', 'NGR', null, '1');
INSERT INTO `caLocState` VALUES ('3343', '178', 'Novosibirskaya oblast\'', 'NVS', null, '1');
INSERT INTO `caLocState` VALUES ('3344', '178', 'Omskaya oblast\'', 'OMS', null, '1');
INSERT INTO `caLocState` VALUES ('3345', '178', 'Orenburgskaya oblast\'', 'ORE', null, '1');
INSERT INTO `caLocState` VALUES ('3346', '178', 'Orlovskaya oblast\'', 'ORL', null, '1');
INSERT INTO `caLocState` VALUES ('3347', '178', 'Penzenskaya oblast\'', 'PNZ', null, '1');
INSERT INTO `caLocState` VALUES ('3348', '178', 'Perm', 'PER', null, '1');
INSERT INTO `caLocState` VALUES ('3349', '178', 'Primorskiy kray', 'PRI', null, '1');
INSERT INTO `caLocState` VALUES ('3350', '178', 'Pskovskaya oblast\'', 'PSK', null, '1');
INSERT INTO `caLocState` VALUES ('3351', '178', 'Rostovskaya oblast\'', 'ROS', null, '1');
INSERT INTO `caLocState` VALUES ('3352', '178', 'Ryazanskaya oblast\'', 'RYA', null, '1');
INSERT INTO `caLocState` VALUES ('3353', '178', 'Sakha, Respublika [Yakutiya]', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('3354', '178', 'Sakhalinskaya oblast\'', 'SAK', null, '1');
INSERT INTO `caLocState` VALUES ('3355', '178', 'Samarskaya oblast\'', 'SAM', null, '1');
INSERT INTO `caLocState` VALUES ('3356', '178', 'Sankt-Peterburg', 'SPE', null, '1');
INSERT INTO `caLocState` VALUES ('3357', '178', 'Saratovskaya oblast\'', 'SAR', null, '1');
INSERT INTO `caLocState` VALUES ('3358', '178', 'Severnaya Osetiya, Respublika [Alaniya] [Respublik', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('3359', '178', 'Smolenskaya oblast\'', 'SMO', null, '1');
INSERT INTO `caLocState` VALUES ('3360', '178', 'Stavropol\'skiy kray', 'STA', null, '1');
INSERT INTO `caLocState` VALUES ('3361', '178', 'Sverdlovskaya oblast\'', 'SVE', null, '1');
INSERT INTO `caLocState` VALUES ('3362', '178', 'Tambovskaya oblast\'', 'TAM', null, '1');
INSERT INTO `caLocState` VALUES ('3363', '178', 'Tatarstan, Respublika', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('3364', '178', 'Tomskaya oblast\'', 'TOM', null, '1');
INSERT INTO `caLocState` VALUES ('3365', '178', 'Tul\'skaya oblast\'', 'TUL', null, '1');
INSERT INTO `caLocState` VALUES ('3366', '178', 'Tverskaya oblast\'', 'TVE', null, '1');
INSERT INTO `caLocState` VALUES ('3367', '178', 'Tyumenskaya oblast\'', 'TYU', null, '1');
INSERT INTO `caLocState` VALUES ('3368', '178', 'Tyva, Respublika [Tuva]', 'TY', null, '1');
INSERT INTO `caLocState` VALUES ('3369', '178', 'Udmurtskaya Respublika', 'UD', null, '1');
INSERT INTO `caLocState` VALUES ('3370', '178', 'Ul\'yanovskaya oblast\'', 'ULY', null, '1');
INSERT INTO `caLocState` VALUES ('3371', '178', 'Vladimirskaya oblast\'', 'VLA', null, '1');
INSERT INTO `caLocState` VALUES ('3372', '178', 'Volgogradskaya oblast\'', 'VGG', null, '1');
INSERT INTO `caLocState` VALUES ('3373', '178', 'Vologodskaya oblast\'', 'VLG', null, '1');
INSERT INTO `caLocState` VALUES ('3374', '178', 'Voronezhskaya oblast\'', 'VOR', null, '1');
INSERT INTO `caLocState` VALUES ('3375', '178', 'Yamalo-Nenetskiy avtonomnyy okrug', 'YAN', null, '1');
INSERT INTO `caLocState` VALUES ('3376', '178', 'Yaroslavskaya oblast\'', 'YAR', null, '1');
INSERT INTO `caLocState` VALUES ('3377', '178', 'Yevreyskaya avtonomnaya oblast\'', 'YEV', null, '1');
INSERT INTO `caLocState` VALUES ('3378', '178', 'Zabajkal\'skij kraj', 'ZAB', null, '1');
INSERT INTO `caLocState` VALUES ('3379', '179', 'Est', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3380', '179', 'Nord', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3381', '179', 'Ouest', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3382', '179', 'Sud', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3383', '179', 'Ville de Kigali', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3384', '180', 'Ascension', 'AC', null, '1');
INSERT INTO `caLocState` VALUES ('3386', '180', 'Saint Helena', 'HL', null, '1');
INSERT INTO `caLocState` VALUES ('3387', '180', 'Saint Helena', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('3388', '180', 'Tristan da Cunha', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('3390', '181', 'Christ Church Nichola Town', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3391', '181', 'Nevis', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('3392', '181', 'Saint Anne Sandy Point', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3393', '181', 'Saint George Basseterre', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3394', '181', 'Saint George Gingerland', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3395', '181', 'Saint James Windward', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3396', '181', 'Saint John Capisterre', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3397', '181', 'Saint John Figtree', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3398', '181', 'Saint Kitts', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('3399', '181', 'Saint Mary Cayon', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3400', '181', 'Saint Paul Capisterre', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3401', '181', 'Saint Paul Charlestown', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3402', '181', 'Saint Peter Basseterre', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3403', '181', 'Saint Thomas Lowland', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3404', '181', 'Saint Thomas Middle Island', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3405', '181', 'Trinity Palmetto Point', '15', null, '1');
INSERT INTO `caLocState` VALUES ('3406', '182', 'Anse-la-Raye', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3407', '182', 'Castries', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3408', '182', 'Choiseul', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3409', '182', 'Dauphin', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3410', '182', 'Dennery', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3411', '182', 'Gros Inlet', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3412', '182', 'Laborie', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3413', '182', 'Micoud', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3414', '182', 'Praslin', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3415', '182', 'Soufrière', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3416', '182', 'Vieux Fort', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3417', '184', 'Charlotte', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3418', '184', 'Grenadines', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3419', '184', 'Saint Andrew', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3420', '184', 'Saint David', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3421', '184', 'Saint George', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3422', '184', 'Saint Patrick', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3423', '185', 'A\'ana', 'AA', null, '1');
INSERT INTO `caLocState` VALUES ('3424', '185', 'Aiga-i-le-Tai', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('3425', '185', 'Atua', 'AT', null, '1');
INSERT INTO `caLocState` VALUES ('3426', '185', 'Fa\'asaleleaga', 'FA', null, '1');
INSERT INTO `caLocState` VALUES ('3427', '185', 'Gaga\'emauga', 'GE', null, '1');
INSERT INTO `caLocState` VALUES ('3428', '185', 'Gagaifomauga', 'GI', null, '1');
INSERT INTO `caLocState` VALUES ('3429', '185', 'Palauli', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('3430', '185', 'Satupa\'itea', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('3431', '185', 'Tuamasaga', 'TU', null, '1');
INSERT INTO `caLocState` VALUES ('3432', '185', 'Va\'a-o-Fonoti', 'VF', null, '1');
INSERT INTO `caLocState` VALUES ('3433', '185', 'Vaisigano', 'VS', null, '1');
INSERT INTO `caLocState` VALUES ('3434', '186', 'Acquaviva', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3435', '186', 'Borgo Maggiore', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3436', '186', 'Chiesanuova', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3437', '186', 'Domagnano', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3438', '186', 'Faetano', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3439', '186', 'Fiorentino', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3440', '186', 'Montegiardino', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3441', '186', 'San Marino', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3442', '186', 'Serravalle', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3443', '187', 'Príncipe', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('3444', '187', 'São Tomé', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('3445', '188', '?a\'il', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3446', '188', '?Asir', '14', null, '1');
INSERT INTO `caLocState` VALUES ('3447', '188', 'Al Bāḩah', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3448', '188', 'Al Jawf', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3449', '188', 'Al Madinah', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3450', '188', 'Al Qasim', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3451', '188', 'Al Ḩudūd ash Shamālīyah', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3452', '188', 'Ar Riyāḑ', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3453', '188', 'Ash Sharqiyah', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3454', '188', 'Jizan', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3455', '188', 'Makkah', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3456', '188', 'Najran', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3457', '188', 'Tabuk', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3458', '189', 'Dakar', 'DK', null, '1');
INSERT INTO `caLocState` VALUES ('3459', '189', 'Diourbel', 'DB', null, '1');
INSERT INTO `caLocState` VALUES ('3460', '189', 'Fatick', 'FK', null, '1');
INSERT INTO `caLocState` VALUES ('3461', '189', 'Kaffrine', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('3462', '189', 'Kaolack', 'KL', null, '1');
INSERT INTO `caLocState` VALUES ('3463', '189', 'Kolda', 'KD', null, '1');
INSERT INTO `caLocState` VALUES ('3464', '189', 'Kédougou', 'KE', null, '1');
INSERT INTO `caLocState` VALUES ('3465', '189', 'Louga', 'LG', null, '1');
INSERT INTO `caLocState` VALUES ('3466', '189', 'Matam', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('3467', '189', 'Saint-Louis', 'SL', null, '1');
INSERT INTO `caLocState` VALUES ('3468', '189', 'Sédhiou', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('3469', '189', 'Tambacounda', 'TC', null, '1');
INSERT INTO `caLocState` VALUES ('3470', '189', 'Thiès', 'TH', null, '1');
INSERT INTO `caLocState` VALUES ('3471', '189', 'Ziguinchor', 'ZG', null, '1');
INSERT INTO `caLocState` VALUES ('3472', '190', 'Anse aux Pins', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3473', '190', 'Anse Boileau', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3474', '190', 'Anse Royale', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3475', '190', 'Anse Étoile', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3476', '190', 'Au Cap', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3477', '190', 'Baie Lazare', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3478', '190', 'Baie Sainte Anne', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3479', '190', 'Beau Vallon', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3480', '190', 'Bel Air', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3481', '190', 'Bel Ombre', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3482', '190', 'Cascade', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3483', '190', 'English River', '16', null, '1');
INSERT INTO `caLocState` VALUES ('3484', '190', 'Glacis', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3485', '190', 'Grand Anse Mahe', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3486', '190', 'Grand Anse Praslin', '14', null, '1');
INSERT INTO `caLocState` VALUES ('3487', '190', 'La Digue', '15', null, '1');
INSERT INTO `caLocState` VALUES ('3488', '190', 'Les Mamelles', '24', null, '1');
INSERT INTO `caLocState` VALUES ('3489', '190', 'Mont Buxton', '17', null, '1');
INSERT INTO `caLocState` VALUES ('3490', '190', 'Mont Fleuri', '18', null, '1');
INSERT INTO `caLocState` VALUES ('3491', '190', 'Plaisance', '19', null, '1');
INSERT INTO `caLocState` VALUES ('3492', '190', 'Pointe La Rue', '20', null, '1');
INSERT INTO `caLocState` VALUES ('3493', '190', 'Port Glaud', '21', null, '1');
INSERT INTO `caLocState` VALUES ('3494', '190', 'Roche Caiman', '25', null, '1');
INSERT INTO `caLocState` VALUES ('3495', '190', 'Saint Louis', '22', null, '1');
INSERT INTO `caLocState` VALUES ('3496', '190', 'Takamaka', '23', null, '1');
INSERT INTO `caLocState` VALUES ('3497', '191', 'Eastern', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('3498', '191', 'Northern', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('3499', '191', 'Southern', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('3500', '191', 'Western Area (Freetown)', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('3501', '192', 'Central Singapore', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3502', '192', 'North East', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3503', '192', 'North West', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3504', '192', 'Singapore - No State', 'X1~', null, '1');
INSERT INTO `caLocState` VALUES ('3505', '192', 'South East', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3506', '192', 'South West', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3507', '193', 'Banskobystrický kraj', 'BC', null, '1');
INSERT INTO `caLocState` VALUES ('3508', '193', 'Bratislavský kraj', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('3509', '193', 'Košický kraj', 'KI', null, '1');
INSERT INTO `caLocState` VALUES ('3510', '193', 'Nitriansky kraj', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('3511', '193', 'Prešovský kraj', 'PV', null, '1');
INSERT INTO `caLocState` VALUES ('3512', '193', 'Trenciansky kraj', 'TC', null, '1');
INSERT INTO `caLocState` VALUES ('3513', '193', 'Trnavský kraj', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('3514', '193', 'Žilinský kraj', 'ZI', null, '1');
INSERT INTO `caLocState` VALUES ('3515', '194', 'Ajdovšcina', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3516', '194', 'Apače', '195', null, '1');
INSERT INTO `caLocState` VALUES ('3517', '194', 'Beltinci', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3518', '194', 'Benedikt', '148', null, '1');
INSERT INTO `caLocState` VALUES ('3519', '194', 'Bistrica ob Sotli', '149', null, '1');
INSERT INTO `caLocState` VALUES ('3520', '194', 'Bled', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3521', '194', 'Bloke', '150', null, '1');
INSERT INTO `caLocState` VALUES ('3522', '194', 'Bohinj', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3523', '194', 'Borovnica', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3524', '194', 'Bovec', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3525', '194', 'Braslovce', '151', null, '1');
INSERT INTO `caLocState` VALUES ('3526', '194', 'Brda', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3527', '194', 'Brezovica', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3528', '194', 'Brežice', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3529', '194', 'Cankova', '152', null, '1');
INSERT INTO `caLocState` VALUES ('3530', '194', 'Celje', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3531', '194', 'Cerklje na Gorenjskem', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3532', '194', 'Cerknica', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3533', '194', 'Cerkno', '14', null, '1');
INSERT INTO `caLocState` VALUES ('3534', '194', 'Cerkvenjak', '153', null, '1');
INSERT INTO `caLocState` VALUES ('3535', '194', 'Cirkulane', '197', null, '1');
INSERT INTO `caLocState` VALUES ('3536', '194', 'Crenšovci', '15', null, '1');
INSERT INTO `caLocState` VALUES ('3537', '194', 'Crna na Koroškem', '16', null, '1');
INSERT INTO `caLocState` VALUES ('3538', '194', 'Crnomelj', '17', null, '1');
INSERT INTO `caLocState` VALUES ('3539', '194', 'Destrnik', '18', null, '1');
INSERT INTO `caLocState` VALUES ('3540', '194', 'Divaca', '19', null, '1');
INSERT INTO `caLocState` VALUES ('3541', '194', 'Dobje', '154', null, '1');
INSERT INTO `caLocState` VALUES ('3542', '194', 'Dobrepolje', '20', null, '1');
INSERT INTO `caLocState` VALUES ('3543', '194', 'Dobrna', '155', null, '1');
INSERT INTO `caLocState` VALUES ('3544', '194', 'Dobrova-Polhov Gradec', '21', null, '1');
INSERT INTO `caLocState` VALUES ('3545', '194', 'Dobrovnik/Dobronak', '156', null, '1');
INSERT INTO `caLocState` VALUES ('3546', '194', 'Dol pri Ljubljani', '22', null, '1');
INSERT INTO `caLocState` VALUES ('3547', '194', 'Dolenjske Toplice', '157', null, '1');
INSERT INTO `caLocState` VALUES ('3548', '194', 'Domžale', '23', null, '1');
INSERT INTO `caLocState` VALUES ('3549', '194', 'Dornava', '24', null, '1');
INSERT INTO `caLocState` VALUES ('3550', '194', 'Dravograd', '25', null, '1');
INSERT INTO `caLocState` VALUES ('3551', '194', 'Duplek', '26', null, '1');
INSERT INTO `caLocState` VALUES ('3552', '194', 'Gorenja vas-Poljane', '27', null, '1');
INSERT INTO `caLocState` VALUES ('3553', '194', 'Gorišnica', '28', null, '1');
INSERT INTO `caLocState` VALUES ('3554', '194', 'Gorje', '207', null, '1');
INSERT INTO `caLocState` VALUES ('3555', '194', 'Gornja Radgona', '29', null, '1');
INSERT INTO `caLocState` VALUES ('3556', '194', 'Gornji Grad', '30', null, '1');
INSERT INTO `caLocState` VALUES ('3557', '194', 'Gornji Petrovci', '31', null, '1');
INSERT INTO `caLocState` VALUES ('3558', '194', 'Grad', '158', null, '1');
INSERT INTO `caLocState` VALUES ('3559', '194', 'Grosuplje', '32', null, '1');
INSERT INTO `caLocState` VALUES ('3560', '194', 'Hajdina', '159', null, '1');
INSERT INTO `caLocState` VALUES ('3561', '194', 'Hoce-Slivnica', '160', null, '1');
INSERT INTO `caLocState` VALUES ('3562', '194', 'Hodoš/Hodos', '161', null, '1');
INSERT INTO `caLocState` VALUES ('3563', '194', 'Horjul', '162', null, '1');
INSERT INTO `caLocState` VALUES ('3564', '194', 'Hrastnik', '34', null, '1');
INSERT INTO `caLocState` VALUES ('3565', '194', 'Hrpelje-Kozina', '35', null, '1');
INSERT INTO `caLocState` VALUES ('3566', '194', 'Idrija', '36', null, '1');
INSERT INTO `caLocState` VALUES ('3567', '194', 'Ig', '37', null, '1');
INSERT INTO `caLocState` VALUES ('3568', '194', 'Ilirska Bistrica', '38', null, '1');
INSERT INTO `caLocState` VALUES ('3569', '194', 'Ivancna Gorica', '39', null, '1');
INSERT INTO `caLocState` VALUES ('3570', '194', 'Izola/Isola', '40', null, '1');
INSERT INTO `caLocState` VALUES ('3571', '194', 'Jesenice', '41', null, '1');
INSERT INTO `caLocState` VALUES ('3572', '194', 'Jezersko', '163', null, '1');
INSERT INTO `caLocState` VALUES ('3573', '194', 'Juršinci', '42', null, '1');
INSERT INTO `caLocState` VALUES ('3574', '194', 'Kamnik', '43', null, '1');
INSERT INTO `caLocState` VALUES ('3575', '194', 'Kanal', '44', null, '1');
INSERT INTO `caLocState` VALUES ('3576', '194', 'Kidricevo', '45', null, '1');
INSERT INTO `caLocState` VALUES ('3577', '194', 'Kobarid', '46', null, '1');
INSERT INTO `caLocState` VALUES ('3578', '194', 'Kobilje', '47', null, '1');
INSERT INTO `caLocState` VALUES ('3579', '194', 'Kocevje', '48', null, '1');
INSERT INTO `caLocState` VALUES ('3580', '194', 'Komen', '49', null, '1');
INSERT INTO `caLocState` VALUES ('3581', '194', 'Komenda', '164', null, '1');
INSERT INTO `caLocState` VALUES ('3582', '194', 'Koper/Capodistria', '50', null, '1');
INSERT INTO `caLocState` VALUES ('3583', '194', 'Kosanjevica na Krki', '196', null, '1');
INSERT INTO `caLocState` VALUES ('3584', '194', 'Kostel', '165', null, '1');
INSERT INTO `caLocState` VALUES ('3585', '194', 'Kozje', '51', null, '1');
INSERT INTO `caLocState` VALUES ('3586', '194', 'Kranj', '52', null, '1');
INSERT INTO `caLocState` VALUES ('3587', '194', 'Kranjska Gora', '53', null, '1');
INSERT INTO `caLocState` VALUES ('3588', '194', 'Križevci', '166', null, '1');
INSERT INTO `caLocState` VALUES ('3589', '194', 'Krško', '54', null, '1');
INSERT INTO `caLocState` VALUES ('3590', '194', 'Kungota', '55', null, '1');
INSERT INTO `caLocState` VALUES ('3591', '194', 'Kuzma', '56', null, '1');
INSERT INTO `caLocState` VALUES ('3592', '194', 'Laško', '57', null, '1');
INSERT INTO `caLocState` VALUES ('3593', '194', 'Lenart', '58', null, '1');
INSERT INTO `caLocState` VALUES ('3594', '194', 'Lendava/Lendva', '59', null, '1');
INSERT INTO `caLocState` VALUES ('3595', '194', 'Litija', '60', null, '1');
INSERT INTO `caLocState` VALUES ('3596', '194', 'Ljubljana', '61', null, '1');
INSERT INTO `caLocState` VALUES ('3597', '194', 'Ljubno', '62', null, '1');
INSERT INTO `caLocState` VALUES ('3598', '194', 'Ljutomer', '63', null, '1');
INSERT INTO `caLocState` VALUES ('3599', '194', 'Log-Dragomer', '208', null, '1');
INSERT INTO `caLocState` VALUES ('3600', '194', 'Logatec', '64', null, '1');
INSERT INTO `caLocState` VALUES ('3601', '194', 'Lovrenc na Pohorju', '167', null, '1');
INSERT INTO `caLocState` VALUES ('3602', '194', 'Loška dolina', '65', null, '1');
INSERT INTO `caLocState` VALUES ('3603', '194', 'Loški Potok', '66', null, '1');
INSERT INTO `caLocState` VALUES ('3604', '194', 'Luce', '67', null, '1');
INSERT INTO `caLocState` VALUES ('3605', '194', 'Lukovica', '68', null, '1');
INSERT INTO `caLocState` VALUES ('3606', '194', 'Majšperk', '69', null, '1');
INSERT INTO `caLocState` VALUES ('3607', '194', 'Makole', '198', null, '1');
INSERT INTO `caLocState` VALUES ('3608', '194', 'Maribor', '70', null, '1');
INSERT INTO `caLocState` VALUES ('3609', '194', 'Markovci', '168', null, '1');
INSERT INTO `caLocState` VALUES ('3610', '194', 'Medvode', '71', null, '1');
INSERT INTO `caLocState` VALUES ('3611', '194', 'Mengeš', '72', null, '1');
INSERT INTO `caLocState` VALUES ('3612', '194', 'Metlika', '73', null, '1');
INSERT INTO `caLocState` VALUES ('3613', '194', 'Mežica', '74', null, '1');
INSERT INTO `caLocState` VALUES ('3614', '194', 'Miklavž na Dravskem polju', '169', null, '1');
INSERT INTO `caLocState` VALUES ('3615', '194', 'Miren-Kostanjevica', '75', null, '1');
INSERT INTO `caLocState` VALUES ('3616', '194', 'Mirna Pec', '170', null, '1');
INSERT INTO `caLocState` VALUES ('3617', '194', 'Mislinja', '76', null, '1');
INSERT INTO `caLocState` VALUES ('3618', '194', 'Mokronog-Trebelno', '199', null, '1');
INSERT INTO `caLocState` VALUES ('3619', '194', 'Moravce', '77', null, '1');
INSERT INTO `caLocState` VALUES ('3620', '194', 'Moravske Toplice', '78', null, '1');
INSERT INTO `caLocState` VALUES ('3621', '194', 'Mozirje', '79', null, '1');
INSERT INTO `caLocState` VALUES ('3622', '194', 'Murska Sobota', '80', null, '1');
INSERT INTO `caLocState` VALUES ('3623', '194', 'Muta', '81', null, '1');
INSERT INTO `caLocState` VALUES ('3624', '194', 'Naklo', '82', null, '1');
INSERT INTO `caLocState` VALUES ('3625', '194', 'Nazarje', '83', null, '1');
INSERT INTO `caLocState` VALUES ('3626', '194', 'Nova Gorica', '84', null, '1');
INSERT INTO `caLocState` VALUES ('3627', '194', 'Novo mesto', '85', null, '1');
INSERT INTO `caLocState` VALUES ('3628', '194', 'Odranci', '86', null, '1');
INSERT INTO `caLocState` VALUES ('3629', '194', 'Oplotnica', '171', null, '1');
INSERT INTO `caLocState` VALUES ('3630', '194', 'Ormož', '87', null, '1');
INSERT INTO `caLocState` VALUES ('3631', '194', 'Osilnica', '88', null, '1');
INSERT INTO `caLocState` VALUES ('3632', '194', 'Pesnica', '89', null, '1');
INSERT INTO `caLocState` VALUES ('3633', '194', 'Piran/Pirano', '90', null, '1');
INSERT INTO `caLocState` VALUES ('3634', '194', 'Pivka', '91', null, '1');
INSERT INTO `caLocState` VALUES ('3635', '194', 'Podcetrtek', '92', null, '1');
INSERT INTO `caLocState` VALUES ('3636', '194', 'Podlehnik', '172', null, '1');
INSERT INTO `caLocState` VALUES ('3637', '194', 'Podvelka', '93', null, '1');
INSERT INTO `caLocState` VALUES ('3638', '194', 'Poljčane', '200', null, '1');
INSERT INTO `caLocState` VALUES ('3639', '194', 'Polzela', '173', null, '1');
INSERT INTO `caLocState` VALUES ('3640', '194', 'Postojna', '94', null, '1');
INSERT INTO `caLocState` VALUES ('3641', '194', 'Prebold', '174', null, '1');
INSERT INTO `caLocState` VALUES ('3642', '194', 'Preddvor', '95', null, '1');
INSERT INTO `caLocState` VALUES ('3643', '194', 'Prevalje', '175', null, '1');
INSERT INTO `caLocState` VALUES ('3644', '194', 'Ptuj', '96', null, '1');
INSERT INTO `caLocState` VALUES ('3645', '194', 'Puconci', '97', null, '1');
INSERT INTO `caLocState` VALUES ('3646', '194', 'Race-Fram', '98', null, '1');
INSERT INTO `caLocState` VALUES ('3647', '194', 'Radece', '99', null, '1');
INSERT INTO `caLocState` VALUES ('3648', '194', 'Radenci', '100', null, '1');
INSERT INTO `caLocState` VALUES ('3649', '194', 'Radlje ob Dravi', '101', null, '1');
INSERT INTO `caLocState` VALUES ('3650', '194', 'Radovljica', '102', null, '1');
INSERT INTO `caLocState` VALUES ('3651', '194', 'Ravne na Koroškem', '103', null, '1');
INSERT INTO `caLocState` VALUES ('3652', '194', 'Razkrižje', '176', null, '1');
INSERT INTO `caLocState` VALUES ('3653', '194', 'Renče-Vogrsko', '201', null, '1');
INSERT INTO `caLocState` VALUES ('3654', '194', 'Rečica ob Savinji', '209', null, '1');
INSERT INTO `caLocState` VALUES ('3655', '194', 'Ribnica', '104', null, '1');
INSERT INTO `caLocState` VALUES ('3656', '194', 'Ribnica na Pohorju', '177', null, '1');
INSERT INTO `caLocState` VALUES ('3657', '194', 'Rogatec', '107', null, '1');
INSERT INTO `caLocState` VALUES ('3658', '194', 'Rogaška Slatina', '106', null, '1');
INSERT INTO `caLocState` VALUES ('3659', '194', 'Rogašovci', '105', null, '1');
INSERT INTO `caLocState` VALUES ('3660', '194', 'Ruše', '108', null, '1');
INSERT INTO `caLocState` VALUES ('3661', '194', 'Selnica ob Dravi', '178', null, '1');
INSERT INTO `caLocState` VALUES ('3662', '194', 'Semic', '109', null, '1');
INSERT INTO `caLocState` VALUES ('3663', '194', 'Sevnica', '110', null, '1');
INSERT INTO `caLocState` VALUES ('3664', '194', 'Sežana', '111', null, '1');
INSERT INTO `caLocState` VALUES ('3665', '194', 'Slovenj Gradec', '112', null, '1');
INSERT INTO `caLocState` VALUES ('3666', '194', 'Slovenska Bistrica', '113', null, '1');
INSERT INTO `caLocState` VALUES ('3667', '194', 'Slovenske Konjice', '114', null, '1');
INSERT INTO `caLocState` VALUES ('3668', '194', 'Sodražica', '179', null, '1');
INSERT INTO `caLocState` VALUES ('3669', '194', 'Solcava', '180', null, '1');
INSERT INTO `caLocState` VALUES ('3670', '194', 'Središče ob Dravi', '202', null, '1');
INSERT INTO `caLocState` VALUES ('3671', '194', 'Starše', '115', null, '1');
INSERT INTO `caLocState` VALUES ('3672', '194', 'Straža', '203', null, '1');
INSERT INTO `caLocState` VALUES ('3673', '194', 'Sveta Ana', '181', null, '1');
INSERT INTO `caLocState` VALUES ('3674', '194', 'Sveta Trojica v Slovenskih Goricah', '204', null, '1');
INSERT INTO `caLocState` VALUES ('3675', '194', 'Sveti Andraž v Slovenskih goricah', '182', null, '1');
INSERT INTO `caLocState` VALUES ('3676', '194', 'Sveti Jurij', '116', null, '1');
INSERT INTO `caLocState` VALUES ('3677', '194', 'Sveti Jurij v Slovenskih Goricah', '210', null, '1');
INSERT INTO `caLocState` VALUES ('3678', '194', 'Sveti Tomaž', '205', null, '1');
INSERT INTO `caLocState` VALUES ('3679', '194', 'Tabor', '184', null, '1');
INSERT INTO `caLocState` VALUES ('3680', '194', 'Tišina', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3681', '194', 'Tolmin', '128', null, '1');
INSERT INTO `caLocState` VALUES ('3682', '194', 'Trbovlje', '129', null, '1');
INSERT INTO `caLocState` VALUES ('3683', '194', 'Trebnje', '130', null, '1');
INSERT INTO `caLocState` VALUES ('3684', '194', 'Trnovska vas', '185', null, '1');
INSERT INTO `caLocState` VALUES ('3685', '194', 'Trzin', '186', null, '1');
INSERT INTO `caLocState` VALUES ('3686', '194', 'Tržic', '131', null, '1');
INSERT INTO `caLocState` VALUES ('3687', '194', 'Turnišce', '132', null, '1');
INSERT INTO `caLocState` VALUES ('3688', '194', 'Velenje', '133', null, '1');
INSERT INTO `caLocState` VALUES ('3689', '194', 'Velika Polana', '187', null, '1');
INSERT INTO `caLocState` VALUES ('3690', '194', 'Velike Lašce', '134', null, '1');
INSERT INTO `caLocState` VALUES ('3691', '194', 'Veržej', '188', null, '1');
INSERT INTO `caLocState` VALUES ('3692', '194', 'Videm', '135', null, '1');
INSERT INTO `caLocState` VALUES ('3693', '194', 'Vipava', '136', null, '1');
INSERT INTO `caLocState` VALUES ('3694', '194', 'Vitanje', '137', null, '1');
INSERT INTO `caLocState` VALUES ('3695', '194', 'Vodice', '138', null, '1');
INSERT INTO `caLocState` VALUES ('3696', '194', 'Vojnik', '139', null, '1');
INSERT INTO `caLocState` VALUES ('3697', '194', 'Vransko', '189', null, '1');
INSERT INTO `caLocState` VALUES ('3698', '194', 'Vrhnika', '140', null, '1');
INSERT INTO `caLocState` VALUES ('3699', '194', 'Vuzenica', '141', null, '1');
INSERT INTO `caLocState` VALUES ('3700', '194', 'Zagorje ob Savi', '142', null, '1');
INSERT INTO `caLocState` VALUES ('3701', '194', 'Zavrc', '143', null, '1');
INSERT INTO `caLocState` VALUES ('3702', '194', 'Zrece', '144', null, '1');
INSERT INTO `caLocState` VALUES ('3703', '194', 'Šalovci', '33', null, '1');
INSERT INTO `caLocState` VALUES ('3704', '194', 'Šempeter-Vrtojba', '183', null, '1');
INSERT INTO `caLocState` VALUES ('3705', '194', 'Šencur', '117', null, '1');
INSERT INTO `caLocState` VALUES ('3706', '194', 'Šentilj', '118', null, '1');
INSERT INTO `caLocState` VALUES ('3707', '194', 'Šentjernej', '119', null, '1');
INSERT INTO `caLocState` VALUES ('3708', '194', 'Šentjur pri Celju', '120', null, '1');
INSERT INTO `caLocState` VALUES ('3709', '194', 'Šentrupert', '211', null, '1');
INSERT INTO `caLocState` VALUES ('3710', '194', 'Škocjan', '121', null, '1');
INSERT INTO `caLocState` VALUES ('3711', '194', 'Škofja Loka', '122', null, '1');
INSERT INTO `caLocState` VALUES ('3712', '194', 'Škofljica', '123', null, '1');
INSERT INTO `caLocState` VALUES ('3713', '194', 'Šmarje pri Jelšah', '124', null, '1');
INSERT INTO `caLocState` VALUES ('3714', '194', 'Šmarješke Toplice', '206', null, '1');
INSERT INTO `caLocState` VALUES ('3715', '194', 'Šmartno ob Paki', '125', null, '1');
INSERT INTO `caLocState` VALUES ('3716', '194', 'Šmartno pri Litiji', '194', null, '1');
INSERT INTO `caLocState` VALUES ('3717', '194', 'Šoštanj', '126', null, '1');
INSERT INTO `caLocState` VALUES ('3718', '194', 'Štore', '127', null, '1');
INSERT INTO `caLocState` VALUES ('3719', '194', 'Žalec', '190', null, '1');
INSERT INTO `caLocState` VALUES ('3720', '194', 'Železniki', '146', null, '1');
INSERT INTO `caLocState` VALUES ('3721', '194', 'Žetale', '191', null, '1');
INSERT INTO `caLocState` VALUES ('3722', '194', 'Žiri', '147', null, '1');
INSERT INTO `caLocState` VALUES ('3723', '194', 'Žirovnica', '192', null, '1');
INSERT INTO `caLocState` VALUES ('3724', '194', 'Žužemberk', '193', null, '1');
INSERT INTO `caLocState` VALUES ('3725', '195', 'Capital Territory (Honiara)', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('3726', '195', 'Central', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('3727', '195', 'Choiseul', 'CH', null, '1');
INSERT INTO `caLocState` VALUES ('3728', '195', 'Guadalcanal', 'GU', null, '1');
INSERT INTO `caLocState` VALUES ('3729', '195', 'Isabel', 'IS', null, '1');
INSERT INTO `caLocState` VALUES ('3730', '195', 'Makira', 'MK', null, '1');
INSERT INTO `caLocState` VALUES ('3731', '195', 'Malaita', 'ML', null, '1');
INSERT INTO `caLocState` VALUES ('3732', '195', 'Rennell and Bellona', 'RB', null, '1');
INSERT INTO `caLocState` VALUES ('3733', '195', 'Temotu', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('3734', '195', 'Western', 'WE', null, '1');
INSERT INTO `caLocState` VALUES ('3735', '196', 'Awdal', 'AW', null, '1');
INSERT INTO `caLocState` VALUES ('3736', '196', 'Bakool', 'BK', null, '1');
INSERT INTO `caLocState` VALUES ('3737', '196', 'Banaadir', 'BN', null, '1');
INSERT INTO `caLocState` VALUES ('3738', '196', 'Bari', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('3739', '196', 'Bay', 'BY', null, '1');
INSERT INTO `caLocState` VALUES ('3740', '196', 'Galguduud', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('3741', '196', 'Gedo', 'GE', null, '1');
INSERT INTO `caLocState` VALUES ('3742', '196', 'Hiiraan', 'HI', null, '1');
INSERT INTO `caLocState` VALUES ('3743', '196', 'Jubbada Dhexe', 'JD', null, '1');
INSERT INTO `caLocState` VALUES ('3744', '196', 'Jubbada Hoose', 'JH', null, '1');
INSERT INTO `caLocState` VALUES ('3745', '196', 'Mudug', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('3746', '196', 'Nugaal', 'NU', null, '1');
INSERT INTO `caLocState` VALUES ('3747', '196', 'Sanaag', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('3748', '196', 'Shabeellaha Dhexe', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('3749', '196', 'Shabeellaha Hoose', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('3750', '196', 'Sool', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('3751', '196', 'Togdheer', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('3752', '196', 'Woqooyi Galbeed', 'WO', null, '1');
INSERT INTO `caLocState` VALUES ('3753', '197', 'Eastern Cape', 'EC', null, '1');
INSERT INTO `caLocState` VALUES ('3754', '197', 'Free State', 'FS', null, '1');
INSERT INTO `caLocState` VALUES ('3755', '197', 'Gauteng', 'GT', null, '1');
INSERT INTO `caLocState` VALUES ('3756', '197', 'Kwazulu-Natal', 'NL', null, '1');
INSERT INTO `caLocState` VALUES ('3757', '197', 'Limpopo', 'LP', null, '1');
INSERT INTO `caLocState` VALUES ('3758', '197', 'Mpumalanga', 'MP', null, '1');
INSERT INTO `caLocState` VALUES ('3759', '197', 'North-West', 'NW', null, '1');
INSERT INTO `caLocState` VALUES ('3760', '197', 'Northern Cape', 'NC', null, '1');
INSERT INTO `caLocState` VALUES ('3761', '197', 'Western Cape', 'WC', null, '1');
INSERT INTO `caLocState` VALUES ('3762', '199', 'A Coruña', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('3763', '199', 'Albacete', 'AB', null, '1');
INSERT INTO `caLocState` VALUES ('3764', '199', 'Alicante', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('3765', '199', 'Almería', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('3766', '199', 'Andalucía', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('3767', '199', 'Asturias', 'O', null, '1');
INSERT INTO `caLocState` VALUES ('3768', '199', 'Asturias, Principado de', 'AS', null, '1');
INSERT INTO `caLocState` VALUES ('3769', '199', 'Badajoz', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('3770', '199', 'Baleares', 'PM', null, '1');
INSERT INTO `caLocState` VALUES ('3771', '199', 'Barcelona', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('3772', '199', 'Burgos', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('3773', '199', 'Canarias', 'CN', null, '1');
INSERT INTO `caLocState` VALUES ('3774', '199', 'Cantabria', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('3775', '199', 'Cantabria', 'CB', null, '1');
INSERT INTO `caLocState` VALUES ('3776', '199', 'Castellón', 'CS', null, '1');
INSERT INTO `caLocState` VALUES ('3777', '199', 'Castilla y León', 'CL', null, '1');
INSERT INTO `caLocState` VALUES ('3778', '199', 'Castilla-La Mancha', 'CM', null, '1');
INSERT INTO `caLocState` VALUES ('3779', '199', 'Catalunya', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('3780', '199', 'Ceuta', 'CE', null, '1');
INSERT INTO `caLocState` VALUES ('3781', '199', 'Ciudad Real', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('3782', '199', 'Cuenca', 'CU', null, '1');
INSERT INTO `caLocState` VALUES ('3783', '199', 'Cáceres', 'CC', null, '1');
INSERT INTO `caLocState` VALUES ('3784', '199', 'Cádiz', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('3785', '199', 'Córdoba', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('3786', '199', 'Extremadura', 'EX', null, '1');
INSERT INTO `caLocState` VALUES ('3787', '199', 'Galicia', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('3788', '199', 'Girona', 'GI', null, '1');
INSERT INTO `caLocState` VALUES ('3789', '199', 'Granada', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('3790', '199', 'Guadalajara', 'GU', null, '1');
INSERT INTO `caLocState` VALUES ('3791', '199', 'Guipúzcoa', 'SS', null, '1');
INSERT INTO `caLocState` VALUES ('3792', '199', 'Huelva', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('3793', '199', 'Huesca', 'HU', null, '1');
INSERT INTO `caLocState` VALUES ('3794', '199', 'Illes Balears', 'IB', null, '1');
INSERT INTO `caLocState` VALUES ('3795', '199', 'Jaén', 'J', null, '1');
INSERT INTO `caLocState` VALUES ('3796', '199', 'La Rioja', 'LO', null, '1');
INSERT INTO `caLocState` VALUES ('3797', '199', 'Las Palmas', 'GC', null, '1');
INSERT INTO `caLocState` VALUES ('3798', '199', 'León', 'LE', null, '1');
INSERT INTO `caLocState` VALUES ('3799', '199', 'Lleida', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('3800', '199', 'Lugo', 'LU', null, '1');
INSERT INTO `caLocState` VALUES ('3801', '199', 'Madrid', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('3802', '199', 'Madrid, Comunidad de', 'MD', null, '1');
INSERT INTO `caLocState` VALUES ('3803', '199', 'Melilla', 'ML', null, '1');
INSERT INTO `caLocState` VALUES ('3804', '199', 'Murcia', 'MU', null, '1');
INSERT INTO `caLocState` VALUES ('3805', '199', 'Murcia, Región de', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('3806', '199', 'Málaga', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('3807', '199', 'Navarra', 'NA', null, '1');
INSERT INTO `caLocState` VALUES ('3808', '199', 'Navarra, Comunidad Foral de', 'NC', null, '1');
INSERT INTO `caLocState` VALUES ('3809', '199', 'Ourense', 'OR', null, '1');
INSERT INTO `caLocState` VALUES ('3810', '199', 'Palencia', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('3811', '199', 'País Vasco', 'PV', null, '1');
INSERT INTO `caLocState` VALUES ('3812', '199', 'Pontevedra', 'PO', null, '1');
INSERT INTO `caLocState` VALUES ('3813', '199', 'Salamanca', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('3814', '199', 'Santa Cruz de Tenerife', 'TF', null, '1');
INSERT INTO `caLocState` VALUES ('3815', '199', 'Segovia', 'SG', null, '1');
INSERT INTO `caLocState` VALUES ('3816', '199', 'Sevilla', 'SE', null, '1');
INSERT INTO `caLocState` VALUES ('3817', '199', 'Soria', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('3818', '199', 'Tarragona', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('3819', '199', 'Teruel', 'TE', null, '1');
INSERT INTO `caLocState` VALUES ('3820', '199', 'Toledo', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('3821', '199', 'Valencia', 'V', null, '1');
INSERT INTO `caLocState` VALUES ('3822', '199', 'Valenciana, Comunidad', 'VC', null, '1');
INSERT INTO `caLocState` VALUES ('3823', '199', 'Valladolid', 'VA', null, '1');
INSERT INTO `caLocState` VALUES ('3824', '199', 'Vizcaya', 'BI', null, '1');
INSERT INTO `caLocState` VALUES ('3825', '199', 'Zamora', 'ZA', null, '1');
INSERT INTO `caLocState` VALUES ('3826', '199', 'Zaragoza', 'Z', null, '1');
INSERT INTO `caLocState` VALUES ('3827', '199', 'Álava', 'VI', null, '1');
INSERT INTO `caLocState` VALUES ('3828', '199', 'Ávila', 'AV', null, '1');
INSERT INTO `caLocState` VALUES ('3829', '199', '', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('3830', '199', '', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('3831', '200', 'Ampāra', '52', null, '1');
INSERT INTO `caLocState` VALUES ('3832', '200', 'Anurādhapura', '71', null, '1');
INSERT INTO `caLocState` VALUES ('3833', '200', 'Badulla', '81', null, '1');
INSERT INTO `caLocState` VALUES ('3834', '200', 'Basnāhira paḷāta', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3835', '200', 'Dakuṇu paḷāta', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3836', '200', 'Gampaha', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3837', '200', 'Gālla', '31', null, '1');
INSERT INTO `caLocState` VALUES ('3838', '200', 'Hambantŏṭa', '33', null, '1');
INSERT INTO `caLocState` VALUES ('3839', '200', 'Kalutara', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3840', '200', 'Kegalla', '92', null, '1');
INSERT INTO `caLocState` VALUES ('3841', '200', 'Kilinŏchchi', '42', null, '1');
INSERT INTO `caLocState` VALUES ('3842', '200', 'Kuruṇægala', '61', null, '1');
INSERT INTO `caLocState` VALUES ('3843', '200', 'Kŏḷamba', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3844', '200', 'Madakalapuva', '51', null, '1');
INSERT INTO `caLocState` VALUES ('3845', '200', 'Madhyama paḷāta', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3846', '200', 'Mahanuvara', '21', null, '1');
INSERT INTO `caLocState` VALUES ('3847', '200', 'Mannārama', '43', null, '1');
INSERT INTO `caLocState` VALUES ('3848', '200', 'Mattiya mākāṇam', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3849', '200', 'Mulativ', '45', null, '1');
INSERT INTO `caLocState` VALUES ('3850', '200', 'Mātale', '22', null, '1');
INSERT INTO `caLocState` VALUES ('3851', '200', 'Mātara', '32', null, '1');
INSERT INTO `caLocState` VALUES ('3852', '200', 'Mŏṇarāgala', '82', null, '1');
INSERT INTO `caLocState` VALUES ('3853', '200', 'Nuvara Ĕliya', '23', null, '1');
INSERT INTO `caLocState` VALUES ('3854', '200', 'Puttalama', '62', null, '1');
INSERT INTO `caLocState` VALUES ('3855', '200', 'Pŏḷŏnnaruva', '72', null, '1');
INSERT INTO `caLocState` VALUES ('3856', '200', 'Ratnapura', '91', null, '1');
INSERT INTO `caLocState` VALUES ('3857', '200', 'Sabaragamuva paḷāta', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3858', '200', 'Trikuṇāmalaya', '53', null, '1');
INSERT INTO `caLocState` VALUES ('3859', '200', 'Uturu paḷāta', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3860', '200', 'Uturumæ̆da paḷāta', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3861', '200', 'Vavuniyāva', '44', null, '1');
INSERT INTO `caLocState` VALUES ('3862', '200', 'Vayamba paḷāta', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3863', '200', 'Yāpanaya', '41', null, '1');
INSERT INTO `caLocState` VALUES ('3864', '200', 'Ūva paḷāta', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3865', '201', 'Al Bah¸r al Ah¸mar', 'RS', null, '1');
INSERT INTO `caLocState` VALUES ('3866', '201', 'Al Jazirah', 'GZ', null, '1');
INSERT INTO `caLocState` VALUES ('3867', '201', 'Al Khartum', 'KH', null, '1');
INSERT INTO `caLocState` VALUES ('3868', '201', 'Al Qaḑārif', 'GD', null, '1');
INSERT INTO `caLocState` VALUES ('3869', '201', 'An Nil', 'NR', null, '1');
INSERT INTO `caLocState` VALUES ('3870', '201', 'An Nil al Azraq', 'NB', null, '1');
INSERT INTO `caLocState` VALUES ('3871', '201', 'An Nīl al Abyaḑ', 'NW', null, '1');
INSERT INTO `caLocState` VALUES ('3872', '201', 'Ash Shamaliyah', 'NO', null, '1');
INSERT INTO `caLocState` VALUES ('3873', '201', 'Gharb Darfur', 'DW', null, '1');
INSERT INTO `caLocState` VALUES ('3874', '201', 'Gharb Kurdufan', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3875', '201', 'Janub Darfur', 'DS', null, '1');
INSERT INTO `caLocState` VALUES ('3876', '201', 'Janub Kurdufan', 'KS', null, '1');
INSERT INTO `caLocState` VALUES ('3877', '201', 'Kassala', 'KA', null, '1');
INSERT INTO `caLocState` VALUES ('3878', '201', 'Shamal Darfur', 'DN', null, '1');
INSERT INTO `caLocState` VALUES ('3879', '201', 'Shamal Kurdufan', 'KN', null, '1');
INSERT INTO `caLocState` VALUES ('3880', '201', 'Sharq Dārfūr', 'DE', null, '1');
INSERT INTO `caLocState` VALUES ('3881', '201', 'Sinnar', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('3882', '201', 'Zalingei', 'DC', null, '1');
INSERT INTO `caLocState` VALUES ('3883', '202', 'Brokopondo', 'BR', null, '1');
INSERT INTO `caLocState` VALUES ('3884', '202', 'Commewijne', 'CM', null, '1');
INSERT INTO `caLocState` VALUES ('3885', '202', 'Coronie', 'CR', null, '1');
INSERT INTO `caLocState` VALUES ('3886', '202', 'Marowijne', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('3887', '202', 'Nickerie', 'NI', null, '1');
INSERT INTO `caLocState` VALUES ('3888', '202', 'Para', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('3889', '202', 'Paramaribo', 'PM', null, '1');
INSERT INTO `caLocState` VALUES ('3890', '202', 'Saramacca', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('3891', '202', 'Sipaliwini', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('3892', '202', 'Wanica', 'WA', null, '1');
INSERT INTO `caLocState` VALUES ('3893', '204', 'Hhohho', 'HH', null, '1');
INSERT INTO `caLocState` VALUES ('3894', '204', 'Lubombo', 'LU', null, '1');
INSERT INTO `caLocState` VALUES ('3895', '204', 'Manzini', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('3896', '204', 'Shiselweni', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('3897', '205', 'Blekinge län [SE-10]', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('3898', '205', 'Dalarnas län [SE-20]', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('3899', '205', 'Gotlands län [SE-09]', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('3900', '205', 'Gävleborgs län [SE-21]', 'X', null, '1');
INSERT INTO `caLocState` VALUES ('3901', '205', 'Hallands län [SE-13]', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('3902', '205', 'Jämtlands län [SE-23]', 'Z', null, '1');
INSERT INTO `caLocState` VALUES ('3903', '205', 'Jönköpings län [SE-06]', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('3904', '205', 'Kalmar län [SE-08]', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('3905', '205', 'Kronobergs län [SE-07]', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('3906', '205', 'Norrbottens län [SE-25]', 'BD', null, '1');
INSERT INTO `caLocState` VALUES ('3907', '205', 'Skåne län [SE-12]', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('3908', '205', 'Stockholms län [SE-01]', 'AB', null, '1');
INSERT INTO `caLocState` VALUES ('3909', '205', 'Södermanlands län [SE-04]', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('3910', '205', 'Uppsala län [SE-03]', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('3911', '205', 'Värmlands län [SE-17]', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('3912', '205', 'Västerbottens län [SE-24]', 'AC', null, '1');
INSERT INTO `caLocState` VALUES ('3913', '205', 'Västernorrlands län [SE-22]', 'Y', null, '1');
INSERT INTO `caLocState` VALUES ('3914', '205', 'Västmanlands län [SE-19]', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('3915', '205', 'Västra Götalands län [SE-14]', 'O', null, '1');
INSERT INTO `caLocState` VALUES ('3916', '205', 'Örebro län [SE-18]', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('3917', '205', 'Östergötlands län [SE-05]', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('3918', '206', 'Aargau (de)', 'AG', null, '1');
INSERT INTO `caLocState` VALUES ('3919', '206', 'Appenzell Ausserrhoden (de)', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('3920', '206', 'Appenzell Innerrhoden (de)', 'AI', null, '1');
INSERT INTO `caLocState` VALUES ('3921', '206', 'Basel-Landschaft (de)', 'BL', null, '1');
INSERT INTO `caLocState` VALUES ('3922', '206', 'Basel-Stadt (de)', 'BS', null, '1');
INSERT INTO `caLocState` VALUES ('3923', '206', 'Bern (de)', 'BE', null, '1');
INSERT INTO `caLocState` VALUES ('3924', '206', 'Fribourg (fr)', 'FR', null, '1');
INSERT INTO `caLocState` VALUES ('3925', '206', 'Genève (fr)', 'GE', null, '1');
INSERT INTO `caLocState` VALUES ('3926', '206', 'Glarus (de)', 'GL', null, '1');
INSERT INTO `caLocState` VALUES ('3927', '206', 'Graubünden (de)', 'GR', null, '1');
INSERT INTO `caLocState` VALUES ('3928', '206', 'Jura (fr)', 'JU', null, '1');
INSERT INTO `caLocState` VALUES ('3929', '206', 'Luzern (de)', 'LU', null, '1');
INSERT INTO `caLocState` VALUES ('3930', '206', 'Neuchâtel (fr)', 'NE', null, '1');
INSERT INTO `caLocState` VALUES ('3931', '206', 'Nidwalden (de)', 'NW', null, '1');
INSERT INTO `caLocState` VALUES ('3932', '206', 'Obwalden (de)', 'OW', null, '1');
INSERT INTO `caLocState` VALUES ('3933', '206', 'Sankt Gallen (de)', 'SG', null, '1');
INSERT INTO `caLocState` VALUES ('3934', '206', 'Schaffhausen (de)', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('3935', '206', 'Schwyz (de)', 'SZ', null, '1');
INSERT INTO `caLocState` VALUES ('3936', '206', 'Solothurn (de)', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('3937', '206', 'Thurgau (de)', 'TG', null, '1');
INSERT INTO `caLocState` VALUES ('3938', '206', 'Ticino (it)', 'TI', null, '1');
INSERT INTO `caLocState` VALUES ('3939', '206', 'Uri (de)', 'UR', null, '1');
INSERT INTO `caLocState` VALUES ('3940', '206', 'Valais (fr)', 'VS', null, '1');
INSERT INTO `caLocState` VALUES ('3941', '206', 'Vaud (fr)', 'VD', null, '1');
INSERT INTO `caLocState` VALUES ('3942', '206', 'Zug (de)', 'ZG', null, '1');
INSERT INTO `caLocState` VALUES ('3943', '206', 'Zürich (de)', 'ZH', null, '1');
INSERT INTO `caLocState` VALUES ('3944', '207', '?alab', 'HL', null, '1');
INSERT INTO `caLocState` VALUES ('3945', '207', 'Hama', 'HM', null, '1');
INSERT INTO `caLocState` VALUES ('3946', '207', 'Homs', 'HI', null, '1');
INSERT INTO `caLocState` VALUES ('3947', '207', 'Al-Hasakah', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('3948', '207', 'Al Ladhiqiyah', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('3949', '207', 'Al Qunaytirah', 'QU', null, '1');
INSERT INTO `caLocState` VALUES ('3950', '207', 'Ar Raqqah', 'RA', null, '1');
INSERT INTO `caLocState` VALUES ('3951', '207', 'As Suwayda\'', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('3952', '207', 'Daraa', 'DR', null, '1');
INSERT INTO `caLocState` VALUES ('3953', '207', 'Dayr az Zawr', 'DY', null, '1');
INSERT INTO `caLocState` VALUES ('3954', '207', 'Dimashq', 'DI', null, '1');
INSERT INTO `caLocState` VALUES ('3955', '207', 'Idlib', 'ID', null, '1');
INSERT INTO `caLocState` VALUES ('3956', '207', 'Rif Dimashq', 'RD', null, '1');
INSERT INTO `caLocState` VALUES ('3957', '207', 'Tartus', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('3958', '208', 'Changhua', 'CHA', null, '1');
INSERT INTO `caLocState` VALUES ('3959', '208', 'Chiayi', 'CYQ', null, '1');
INSERT INTO `caLocState` VALUES ('3960', '208', 'Chiayi Municipality', 'CYI', null, '1');
INSERT INTO `caLocState` VALUES ('3961', '208', 'Hsinchu', 'HSQ', null, '1');
INSERT INTO `caLocState` VALUES ('3962', '208', 'Hsinchu Municipality', 'HSZ', null, '1');
INSERT INTO `caLocState` VALUES ('3963', '208', 'Hualien', 'HUA', null, '1');
INSERT INTO `caLocState` VALUES ('3964', '208', 'Ilan', 'ILA', null, '1');
INSERT INTO `caLocState` VALUES ('3965', '208', 'Kaohsiung', 'KHQ', null, '1');
INSERT INTO `caLocState` VALUES ('3966', '208', 'Kaohsiung Special Municipality', 'KHH', null, '1');
INSERT INTO `caLocState` VALUES ('3967', '208', 'Keelung Municipality', 'KEE', null, '1');
INSERT INTO `caLocState` VALUES ('3968', '208', 'Miaoli', 'MIA', null, '1');
INSERT INTO `caLocState` VALUES ('3969', '208', 'Nantou', 'NAN', null, '1');
INSERT INTO `caLocState` VALUES ('3970', '208', 'Penghu', 'PEN', null, '1');
INSERT INTO `caLocState` VALUES ('3971', '208', 'Pingtung', 'PIF', null, '1');
INSERT INTO `caLocState` VALUES ('3972', '208', 'Taichung', 'TXQ', null, '1');
INSERT INTO `caLocState` VALUES ('3973', '208', 'Taichung Municipality', 'TXG', null, '1');
INSERT INTO `caLocState` VALUES ('3974', '208', 'Tainan', 'TNQ', null, '1');
INSERT INTO `caLocState` VALUES ('3975', '208', 'Tainan Municipality', 'TNN', null, '1');
INSERT INTO `caLocState` VALUES ('3976', '208', 'Taipei', 'TPQ', null, '1');
INSERT INTO `caLocState` VALUES ('3977', '208', 'Taipei Special Municipality', 'TPE', null, '1');
INSERT INTO `caLocState` VALUES ('3978', '208', 'Taitung', 'TTT', null, '1');
INSERT INTO `caLocState` VALUES ('3979', '208', 'Taoyuan', 'TAO', null, '1');
INSERT INTO `caLocState` VALUES ('3980', '208', 'Yunlin', 'YUN', null, '1');
INSERT INTO `caLocState` VALUES ('3981', '209', 'Gorno-Badakhshan', 'GB', null, '1');
INSERT INTO `caLocState` VALUES ('3982', '209', 'Khatlon', 'KT', null, '1');
INSERT INTO `caLocState` VALUES ('3983', '209', 'Sughd', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('3984', '209', '', 'X1~', null, '1');
INSERT INTO `caLocState` VALUES ('3985', '210', 'Arusha', '1', null, '1');
INSERT INTO `caLocState` VALUES ('3986', '210', 'Dar es Salaam', '2', null, '1');
INSERT INTO `caLocState` VALUES ('3987', '210', 'Dodoma', '3', null, '1');
INSERT INTO `caLocState` VALUES ('3988', '210', 'Iringa', '4', null, '1');
INSERT INTO `caLocState` VALUES ('3989', '210', 'Kagera', '5', null, '1');
INSERT INTO `caLocState` VALUES ('3990', '210', 'Kaskazini Pemba', '6', null, '1');
INSERT INTO `caLocState` VALUES ('3991', '210', 'Kaskazini Unguja', '7', null, '1');
INSERT INTO `caLocState` VALUES ('3992', '210', 'Kigoma', '8', null, '1');
INSERT INTO `caLocState` VALUES ('3993', '210', 'Kilimanjaro', '9', null, '1');
INSERT INTO `caLocState` VALUES ('3994', '210', 'Kusini Pemba', '10', null, '1');
INSERT INTO `caLocState` VALUES ('3995', '210', 'Kusini Unguja', '11', null, '1');
INSERT INTO `caLocState` VALUES ('3996', '210', 'Lindi', '12', null, '1');
INSERT INTO `caLocState` VALUES ('3997', '210', 'Manyara', '26', null, '1');
INSERT INTO `caLocState` VALUES ('3998', '210', 'Mara', '13', null, '1');
INSERT INTO `caLocState` VALUES ('3999', '210', 'Mbeya', '14', null, '1');
INSERT INTO `caLocState` VALUES ('4000', '210', 'Mjini Magharibi', '15', null, '1');
INSERT INTO `caLocState` VALUES ('4001', '210', 'Morogoro', '16', null, '1');
INSERT INTO `caLocState` VALUES ('4002', '210', 'Mtwara', '17', null, '1');
INSERT INTO `caLocState` VALUES ('4003', '210', 'Mwanza', '18', null, '1');
INSERT INTO `caLocState` VALUES ('4004', '210', 'Pwani', '19', null, '1');
INSERT INTO `caLocState` VALUES ('4005', '210', 'Rukwa', '20', null, '1');
INSERT INTO `caLocState` VALUES ('4006', '210', 'Ruvuma', '21', null, '1');
INSERT INTO `caLocState` VALUES ('4007', '210', 'Shinyanga', '22', null, '1');
INSERT INTO `caLocState` VALUES ('4008', '210', 'Singida', '23', null, '1');
INSERT INTO `caLocState` VALUES ('4009', '210', 'Tabora', '24', null, '1');
INSERT INTO `caLocState` VALUES ('4010', '210', 'Tanga', '25', null, '1');
INSERT INTO `caLocState` VALUES ('4011', '211', 'Amnat Charoen', '37', null, '1');
INSERT INTO `caLocState` VALUES ('4012', '211', 'Ang Thong', '15', null, '1');
INSERT INTO `caLocState` VALUES ('4013', '211', 'Buri Ram', '31', null, '1');
INSERT INTO `caLocState` VALUES ('4014', '211', 'Chachoengsao', '24', null, '1');
INSERT INTO `caLocState` VALUES ('4015', '211', 'Chai Nat', '18', null, '1');
INSERT INTO `caLocState` VALUES ('4016', '211', 'Chaiyaphum', '36', null, '1');
INSERT INTO `caLocState` VALUES ('4017', '211', 'Chanthaburi', '22', null, '1');
INSERT INTO `caLocState` VALUES ('4018', '211', 'Chiang Mai', '50', null, '1');
INSERT INTO `caLocState` VALUES ('4019', '211', 'Chiang Rai', '57', null, '1');
INSERT INTO `caLocState` VALUES ('4020', '211', 'Chon Buri', '20', null, '1');
INSERT INTO `caLocState` VALUES ('4021', '211', 'Chumphon', '86', null, '1');
INSERT INTO `caLocState` VALUES ('4022', '211', 'Kalasin', '46', null, '1');
INSERT INTO `caLocState` VALUES ('4023', '211', 'Kamphaeng Phet', '62', null, '1');
INSERT INTO `caLocState` VALUES ('4024', '211', 'Kanchanaburi', '71', null, '1');
INSERT INTO `caLocState` VALUES ('4025', '211', 'Khon Kaen', '40', null, '1');
INSERT INTO `caLocState` VALUES ('4026', '211', 'Krabi', '81', null, '1');
INSERT INTO `caLocState` VALUES ('4027', '211', 'Krung Thep Maha Nakhon [Bangkok]', '10', null, '1');
INSERT INTO `caLocState` VALUES ('4028', '211', 'Lampang', '52', null, '1');
INSERT INTO `caLocState` VALUES ('4029', '211', 'Lamphun', '51', null, '1');
INSERT INTO `caLocState` VALUES ('4030', '211', 'Loei', '42', null, '1');
INSERT INTO `caLocState` VALUES ('4031', '211', 'Lop Buri', '16', null, '1');
INSERT INTO `caLocState` VALUES ('4032', '211', 'Mae Hong Son', '58', null, '1');
INSERT INTO `caLocState` VALUES ('4033', '211', 'Maha Sarakham', '44', null, '1');
INSERT INTO `caLocState` VALUES ('4034', '211', 'Mukdahan', '49', null, '1');
INSERT INTO `caLocState` VALUES ('4035', '211', 'Nakhon Nayok', '26', null, '1');
INSERT INTO `caLocState` VALUES ('4036', '211', 'Nakhon Pathom', '73', null, '1');
INSERT INTO `caLocState` VALUES ('4037', '211', 'Nakhon Phanom', '48', null, '1');
INSERT INTO `caLocState` VALUES ('4038', '211', 'Nakhon Ratchasima', '30', null, '1');
INSERT INTO `caLocState` VALUES ('4039', '211', 'Nakhon Sawan', '60', null, '1');
INSERT INTO `caLocState` VALUES ('4040', '211', 'Nakhon Si Thammarat', '80', null, '1');
INSERT INTO `caLocState` VALUES ('4041', '211', 'Nan', '55', null, '1');
INSERT INTO `caLocState` VALUES ('4042', '211', 'Narathiwat', '96', null, '1');
INSERT INTO `caLocState` VALUES ('4043', '211', 'Nong Bua Lam Phu', '39', null, '1');
INSERT INTO `caLocState` VALUES ('4044', '211', 'Nong Khai', '43', null, '1');
INSERT INTO `caLocState` VALUES ('4045', '211', 'Nonthaburi', '12', null, '1');
INSERT INTO `caLocState` VALUES ('4046', '211', 'Pathum Thani', '13', null, '1');
INSERT INTO `caLocState` VALUES ('4047', '211', 'Pattani', '94', null, '1');
INSERT INTO `caLocState` VALUES ('4048', '211', 'Phangnga', '82', null, '1');
INSERT INTO `caLocState` VALUES ('4049', '211', 'Phatthalung', '93', null, '1');
INSERT INTO `caLocState` VALUES ('4050', '211', 'Phatthaya', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('4051', '211', 'Phayao', '56', null, '1');
INSERT INTO `caLocState` VALUES ('4052', '211', 'Phetchabun', '67', null, '1');
INSERT INTO `caLocState` VALUES ('4053', '211', 'Phetchaburi', '76', null, '1');
INSERT INTO `caLocState` VALUES ('4054', '211', 'Phichit', '66', null, '1');
INSERT INTO `caLocState` VALUES ('4055', '211', 'Phitsanulok', '65', null, '1');
INSERT INTO `caLocState` VALUES ('4056', '211', 'Phra Nakhon Si Ayutthaya', '14', null, '1');
INSERT INTO `caLocState` VALUES ('4057', '211', 'Phrae', '54', null, '1');
INSERT INTO `caLocState` VALUES ('4058', '211', 'Phuket', '83', null, '1');
INSERT INTO `caLocState` VALUES ('4059', '211', 'Prachin Buri', '25', null, '1');
INSERT INTO `caLocState` VALUES ('4060', '211', 'Prachuap Khiri Khan', '77', null, '1');
INSERT INTO `caLocState` VALUES ('4061', '211', 'Ranong', '85', null, '1');
INSERT INTO `caLocState` VALUES ('4062', '211', 'Ratchaburi', '70', null, '1');
INSERT INTO `caLocState` VALUES ('4063', '211', 'Rayong', '21', null, '1');
INSERT INTO `caLocState` VALUES ('4064', '211', 'Roi Et', '45', null, '1');
INSERT INTO `caLocState` VALUES ('4065', '211', 'Sa Kaeo', '27', null, '1');
INSERT INTO `caLocState` VALUES ('4066', '211', 'Sakon Nakhon', '47', null, '1');
INSERT INTO `caLocState` VALUES ('4067', '211', 'Samut Prakan', '11', null, '1');
INSERT INTO `caLocState` VALUES ('4068', '211', 'Samut Sakhon', '74', null, '1');
INSERT INTO `caLocState` VALUES ('4069', '211', 'Samut Songkhram', '75', null, '1');
INSERT INTO `caLocState` VALUES ('4070', '211', 'Saraburi', '19', null, '1');
INSERT INTO `caLocState` VALUES ('4071', '211', 'Satun', '91', null, '1');
INSERT INTO `caLocState` VALUES ('4072', '211', 'Si Sa Ket', '33', null, '1');
INSERT INTO `caLocState` VALUES ('4073', '211', 'Sing Buri', '17', null, '1');
INSERT INTO `caLocState` VALUES ('4074', '211', 'Songkhla', '90', null, '1');
INSERT INTO `caLocState` VALUES ('4075', '211', 'Sukhothai', '64', null, '1');
INSERT INTO `caLocState` VALUES ('4076', '211', 'Suphan Buri', '72', null, '1');
INSERT INTO `caLocState` VALUES ('4077', '211', 'Surat Thani', '84', null, '1');
INSERT INTO `caLocState` VALUES ('4078', '211', 'Surin', '32', null, '1');
INSERT INTO `caLocState` VALUES ('4079', '211', 'Tak', '63', null, '1');
INSERT INTO `caLocState` VALUES ('4080', '211', 'Trang', '92', null, '1');
INSERT INTO `caLocState` VALUES ('4081', '211', 'Trat', '23', null, '1');
INSERT INTO `caLocState` VALUES ('4082', '211', 'Ubon Ratchathani', '34', null, '1');
INSERT INTO `caLocState` VALUES ('4083', '211', 'Udon Thani', '41', null, '1');
INSERT INTO `caLocState` VALUES ('4084', '211', 'Uthai Thani', '61', null, '1');
INSERT INTO `caLocState` VALUES ('4085', '211', 'Uttaradit', '53', null, '1');
INSERT INTO `caLocState` VALUES ('4086', '211', 'Yala', '95', null, '1');
INSERT INTO `caLocState` VALUES ('4087', '211', 'Yasothon', '35', null, '1');
INSERT INTO `caLocState` VALUES ('4088', '63', 'Aileu', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('4089', '63', 'Ainaro', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('4090', '63', 'Baucau', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('4091', '63', 'Bobonaro', 'BO', null, '1');
INSERT INTO `caLocState` VALUES ('4092', '63', 'Cova Lima', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('4093', '63', 'Díli', 'DI', null, '1');
INSERT INTO `caLocState` VALUES ('4094', '63', 'Ermera', 'ER', null, '1');
INSERT INTO `caLocState` VALUES ('4095', '63', 'Lautem', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('4096', '63', 'Liquiça', 'LI', null, '1');
INSERT INTO `caLocState` VALUES ('4097', '63', 'Manatuto', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('4098', '63', 'Manufahi', 'MF', null, '1');
INSERT INTO `caLocState` VALUES ('4099', '63', 'Oecussi', 'OE', null, '1');
INSERT INTO `caLocState` VALUES ('4100', '63', 'Viqueque', 'VI', null, '1');
INSERT INTO `caLocState` VALUES ('4101', '212', 'Centre', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('4102', '212', 'Kara', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('4103', '212', 'Maritime (Région)', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('4104', '212', 'Plateaux', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('4105', '212', 'Savannes', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('4106', '214', '\'Eua', '1', null, '1');
INSERT INTO `caLocState` VALUES ('4107', '214', 'Ha\'apai', '2', null, '1');
INSERT INTO `caLocState` VALUES ('4108', '214', 'Niuas', '3', null, '1');
INSERT INTO `caLocState` VALUES ('4109', '214', 'Tongatapu', '4', null, '1');
INSERT INTO `caLocState` VALUES ('4110', '214', 'Vava\'u', '5', null, '1');
INSERT INTO `caLocState` VALUES ('4111', '215', 'Arima', 'ARI', null, '1');
INSERT INTO `caLocState` VALUES ('4112', '215', 'Chaguanas', 'CHA', null, '1');
INSERT INTO `caLocState` VALUES ('4113', '215', 'Couva-Tabaquite-Talparo', 'CTT', null, '1');
INSERT INTO `caLocState` VALUES ('4114', '215', 'Diego Martin', 'DMN', null, '1');
INSERT INTO `caLocState` VALUES ('4115', '215', 'Eastern Tobago', 'ETO', null, '1');
INSERT INTO `caLocState` VALUES ('4116', '215', 'Penal-Debe', 'PED', null, '1');
INSERT INTO `caLocState` VALUES ('4117', '215', 'Point Fortin', 'PTF', null, '1');
INSERT INTO `caLocState` VALUES ('4118', '215', 'Port of Spain', 'POS', null, '1');
INSERT INTO `caLocState` VALUES ('4119', '215', 'Princes Town', 'PRT', null, '1');
INSERT INTO `caLocState` VALUES ('4120', '215', 'Rio Claro-Mayaro', 'RCM', null, '1');
INSERT INTO `caLocState` VALUES ('4121', '215', 'San Fernando', 'SFO', null, '1');
INSERT INTO `caLocState` VALUES ('4122', '215', 'San Juan-Laventille', 'SJL', null, '1');
INSERT INTO `caLocState` VALUES ('4123', '215', 'Sangre Grande', 'SGE', null, '1');
INSERT INTO `caLocState` VALUES ('4124', '215', 'Siparia', 'SIP', null, '1');
INSERT INTO `caLocState` VALUES ('4125', '215', 'Tunapuna-Piarco', 'TUP', null, '1');
INSERT INTO `caLocState` VALUES ('4126', '215', 'Western Tobago', 'WTO', null, '1');
INSERT INTO `caLocState` VALUES ('4127', '216', 'Ariana', '12', null, '1');
INSERT INTO `caLocState` VALUES ('4128', '216', 'Ben Arous', '13', null, '1');
INSERT INTO `caLocState` VALUES ('4129', '216', 'Bizerte', '23', null, '1');
INSERT INTO `caLocState` VALUES ('4130', '216', 'Béja', '31', null, '1');
INSERT INTO `caLocState` VALUES ('4131', '216', 'Gabès', '81', null, '1');
INSERT INTO `caLocState` VALUES ('4132', '216', 'Gafsa', '71', null, '1');
INSERT INTO `caLocState` VALUES ('4133', '216', 'Jendouba', '32', null, '1');
INSERT INTO `caLocState` VALUES ('4134', '216', 'Kairouan', '41', null, '1');
INSERT INTO `caLocState` VALUES ('4135', '216', 'Kasserine', '42', null, '1');
INSERT INTO `caLocState` VALUES ('4136', '216', 'Kebili', '73', null, '1');
INSERT INTO `caLocState` VALUES ('4137', '216', 'La Manouba', '14', null, '1');
INSERT INTO `caLocState` VALUES ('4138', '216', 'Le Kef', '33', null, '1');
INSERT INTO `caLocState` VALUES ('4139', '216', 'Mahdia', '53', null, '1');
INSERT INTO `caLocState` VALUES ('4140', '216', 'Medenine', '82', null, '1');
INSERT INTO `caLocState` VALUES ('4141', '216', 'Monastir', '52', null, '1');
INSERT INTO `caLocState` VALUES ('4142', '216', 'Nabeul', '21', null, '1');
INSERT INTO `caLocState` VALUES ('4143', '216', 'Sfax', '61', null, '1');
INSERT INTO `caLocState` VALUES ('4144', '216', 'Sidi Bouzid', '43', null, '1');
INSERT INTO `caLocState` VALUES ('4145', '216', 'Siliana', '34', null, '1');
INSERT INTO `caLocState` VALUES ('4146', '216', 'Sousse', '51', null, '1');
INSERT INTO `caLocState` VALUES ('4147', '216', 'Tataouine', '83', null, '1');
INSERT INTO `caLocState` VALUES ('4148', '216', 'Tozeur', '72', null, '1');
INSERT INTO `caLocState` VALUES ('4149', '216', 'Tunis', '11', null, '1');
INSERT INTO `caLocState` VALUES ('4150', '216', 'Zaghouan', '22', null, '1');
INSERT INTO `caLocState` VALUES ('4151', '217', 'Adana', '1', null, '1');
INSERT INTO `caLocState` VALUES ('4152', '217', 'Adiyaman', '2', null, '1');
INSERT INTO `caLocState` VALUES ('4153', '217', 'Afyonkarahisar', '3', null, '1');
INSERT INTO `caLocState` VALUES ('4154', '217', 'Agri', '4', null, '1');
INSERT INTO `caLocState` VALUES ('4155', '217', 'Aksaray', '68', null, '1');
INSERT INTO `caLocState` VALUES ('4156', '217', 'Amasya', '5', null, '1');
INSERT INTO `caLocState` VALUES ('4157', '217', 'Ankara', '6', null, '1');
INSERT INTO `caLocState` VALUES ('4158', '217', 'Antalya', '7', null, '1');
INSERT INTO `caLocState` VALUES ('4159', '217', 'Ardahan', '75', null, '1');
INSERT INTO `caLocState` VALUES ('4160', '217', 'Artvin', '8', null, '1');
INSERT INTO `caLocState` VALUES ('4161', '217', 'Aydin', '9', null, '1');
INSERT INTO `caLocState` VALUES ('4162', '217', 'Balikesir', '10', null, '1');
INSERT INTO `caLocState` VALUES ('4163', '217', 'Bartin', '74', null, '1');
INSERT INTO `caLocState` VALUES ('4164', '217', 'Batman', '72', null, '1');
INSERT INTO `caLocState` VALUES ('4165', '217', 'Bayburt', '69', null, '1');
INSERT INTO `caLocState` VALUES ('4166', '217', 'Bilecik', '11', null, '1');
INSERT INTO `caLocState` VALUES ('4167', '217', 'Bingöl', '12', null, '1');
INSERT INTO `caLocState` VALUES ('4168', '217', 'Bitlis', '13', null, '1');
INSERT INTO `caLocState` VALUES ('4169', '217', 'Bolu', '14', null, '1');
INSERT INTO `caLocState` VALUES ('4170', '217', 'Burdur', '15', null, '1');
INSERT INTO `caLocState` VALUES ('4171', '217', 'Bursa', '16', null, '1');
INSERT INTO `caLocState` VALUES ('4172', '217', 'Denizli', '20', null, '1');
INSERT INTO `caLocState` VALUES ('4173', '217', 'Diyarbakir', '21', null, '1');
INSERT INTO `caLocState` VALUES ('4174', '217', 'Düzce', '81', null, '1');
INSERT INTO `caLocState` VALUES ('4175', '217', 'Edirne', '22', null, '1');
INSERT INTO `caLocState` VALUES ('4176', '217', 'Elazig', '23', null, '1');
INSERT INTO `caLocState` VALUES ('4177', '217', 'Erzincan', '24', null, '1');
INSERT INTO `caLocState` VALUES ('4178', '217', 'Erzurum', '25', null, '1');
INSERT INTO `caLocState` VALUES ('4179', '217', 'Eskisehir', '26', null, '1');
INSERT INTO `caLocState` VALUES ('4180', '217', 'Gaziantep', '27', null, '1');
INSERT INTO `caLocState` VALUES ('4181', '217', 'Giresun', '28', null, '1');
INSERT INTO `caLocState` VALUES ('4182', '217', 'Gümüshane', '29', null, '1');
INSERT INTO `caLocState` VALUES ('4183', '217', 'Hakkâri', '30', null, '1');
INSERT INTO `caLocState` VALUES ('4184', '217', 'Hatay', '31', null, '1');
INSERT INTO `caLocState` VALUES ('4185', '217', 'Igdir', '76', null, '1');
INSERT INTO `caLocState` VALUES ('4186', '217', 'Isparta', '32', null, '1');
INSERT INTO `caLocState` VALUES ('4187', '217', 'Istanbul', '34', null, '1');
INSERT INTO `caLocState` VALUES ('4188', '217', 'Izmir', '35', null, '1');
INSERT INTO `caLocState` VALUES ('4189', '217', 'Kahramanmaras', '46', null, '1');
INSERT INTO `caLocState` VALUES ('4190', '217', 'Karabük', '78', null, '1');
INSERT INTO `caLocState` VALUES ('4191', '217', 'Karaman', '70', null, '1');
INSERT INTO `caLocState` VALUES ('4192', '217', 'Kars', '36', null, '1');
INSERT INTO `caLocState` VALUES ('4193', '217', 'Kastamonu', '37', null, '1');
INSERT INTO `caLocState` VALUES ('4194', '217', 'Kayseri', '38', null, '1');
INSERT INTO `caLocState` VALUES ('4195', '217', 'Kilis', '79', null, '1');
INSERT INTO `caLocState` VALUES ('4196', '217', 'Kirikkale', '71', null, '1');
INSERT INTO `caLocState` VALUES ('4197', '217', 'Kirklareli', '39', null, '1');
INSERT INTO `caLocState` VALUES ('4198', '217', 'Kirsehir', '40', null, '1');
INSERT INTO `caLocState` VALUES ('4199', '217', 'Kocaeli', '41', null, '1');
INSERT INTO `caLocState` VALUES ('4200', '217', 'Konya', '42', null, '1');
INSERT INTO `caLocState` VALUES ('4201', '217', 'Kütahya', '43', null, '1');
INSERT INTO `caLocState` VALUES ('4202', '217', 'Malatya', '44', null, '1');
INSERT INTO `caLocState` VALUES ('4203', '217', 'Manisa', '45', null, '1');
INSERT INTO `caLocState` VALUES ('4204', '217', 'Mardin', '47', null, '1');
INSERT INTO `caLocState` VALUES ('4205', '217', 'Mersin', '33', null, '1');
INSERT INTO `caLocState` VALUES ('4206', '217', 'Mugla', '48', null, '1');
INSERT INTO `caLocState` VALUES ('4207', '217', 'Mus', '49', null, '1');
INSERT INTO `caLocState` VALUES ('4208', '217', 'Nevsehir', '50', null, '1');
INSERT INTO `caLocState` VALUES ('4209', '217', 'Nigde', '51', null, '1');
INSERT INTO `caLocState` VALUES ('4210', '217', 'Ordu', '52', null, '1');
INSERT INTO `caLocState` VALUES ('4211', '217', 'Osmaniye', '80', null, '1');
INSERT INTO `caLocState` VALUES ('4212', '217', 'Rize', '53', null, '1');
INSERT INTO `caLocState` VALUES ('4213', '217', 'Sakarya', '54', null, '1');
INSERT INTO `caLocState` VALUES ('4214', '217', 'Samsun', '55', null, '1');
INSERT INTO `caLocState` VALUES ('4215', '217', 'Sanliurfa', '63', null, '1');
INSERT INTO `caLocState` VALUES ('4216', '217', 'Siirt', '56', null, '1');
INSERT INTO `caLocState` VALUES ('4217', '217', 'Sinop', '57', null, '1');
INSERT INTO `caLocState` VALUES ('4218', '217', 'Sirnak', '73', null, '1');
INSERT INTO `caLocState` VALUES ('4219', '217', 'Sivas', '58', null, '1');
INSERT INTO `caLocState` VALUES ('4220', '217', 'Tekirdag', '59', null, '1');
INSERT INTO `caLocState` VALUES ('4221', '217', 'Tokat', '60', null, '1');
INSERT INTO `caLocState` VALUES ('4222', '217', 'Trabzon', '61', null, '1');
INSERT INTO `caLocState` VALUES ('4223', '217', 'Tunceli', '62', null, '1');
INSERT INTO `caLocState` VALUES ('4224', '217', 'Usak', '64', null, '1');
INSERT INTO `caLocState` VALUES ('4225', '217', 'Van', '65', null, '1');
INSERT INTO `caLocState` VALUES ('4226', '217', 'Yalova', '77', null, '1');
INSERT INTO `caLocState` VALUES ('4227', '217', 'Yozgat', '66', null, '1');
INSERT INTO `caLocState` VALUES ('4228', '217', 'Zonguldak', '67', null, '1');
INSERT INTO `caLocState` VALUES ('4229', '217', 'Çanakkale', '17', null, '1');
INSERT INTO `caLocState` VALUES ('4230', '217', 'Çankiri', '18', null, '1');
INSERT INTO `caLocState` VALUES ('4231', '217', 'Çorum', '19', null, '1');
INSERT INTO `caLocState` VALUES ('4232', '218', 'Ahal', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('4233', '218', 'Balkan', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('4234', '218', 'Dasoguz', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('4235', '218', 'Lebap', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('4236', '218', 'Mary', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('4237', '218', '', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('4238', '220', 'Funafuti', 'FUN', null, '1');
INSERT INTO `caLocState` VALUES ('4239', '220', 'Nanumanga', 'NMG', null, '1');
INSERT INTO `caLocState` VALUES ('4240', '220', 'Nanumea', 'NMA', null, '1');
INSERT INTO `caLocState` VALUES ('4241', '220', 'Niutao', 'NIT', null, '1');
INSERT INTO `caLocState` VALUES ('4242', '220', 'Nui', 'NIU', null, '1');
INSERT INTO `caLocState` VALUES ('4243', '220', 'Nukufetau', 'NKF', null, '1');
INSERT INTO `caLocState` VALUES ('4244', '220', 'Nukulaelae', 'NKL', null, '1');
INSERT INTO `caLocState` VALUES ('4245', '220', 'Vaitupu', 'VAI', null, '1');
INSERT INTO `caLocState` VALUES ('4246', '221', 'Abim', '317', null, '1');
INSERT INTO `caLocState` VALUES ('4247', '221', 'Adjumani', '301', null, '1');
INSERT INTO `caLocState` VALUES ('4248', '221', 'Amolatar', '314', null, '1');
INSERT INTO `caLocState` VALUES ('4249', '221', 'Amuria', '216', null, '1');
INSERT INTO `caLocState` VALUES ('4250', '221', 'Amuru', '319', null, '1');
INSERT INTO `caLocState` VALUES ('4251', '221', 'Apac', '302', null, '1');
INSERT INTO `caLocState` VALUES ('4252', '221', 'Arua', '303', null, '1');
INSERT INTO `caLocState` VALUES ('4253', '221', 'Budaka', '217', null, '1');
INSERT INTO `caLocState` VALUES ('4254', '221', 'Bududa', '223', null, '1');
INSERT INTO `caLocState` VALUES ('4255', '221', 'Bugiri', '201', null, '1');
INSERT INTO `caLocState` VALUES ('4256', '221', 'Bukedea', '224', null, '1');
INSERT INTO `caLocState` VALUES ('4257', '221', 'Bukwa', '218', null, '1');
INSERT INTO `caLocState` VALUES ('4258', '221', 'Buliisa', '419', null, '1');
INSERT INTO `caLocState` VALUES ('4259', '221', 'Bundibugyo', '401', null, '1');
INSERT INTO `caLocState` VALUES ('4260', '221', 'Bushenyi', '402', null, '1');
INSERT INTO `caLocState` VALUES ('4261', '221', 'Busia', '202', null, '1');
INSERT INTO `caLocState` VALUES ('4262', '221', 'Butaleja', '219', null, '1');
INSERT INTO `caLocState` VALUES ('4263', '221', 'Central', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('4264', '221', 'Dokolo', '318', null, '1');
INSERT INTO `caLocState` VALUES ('4265', '221', 'Eastern', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('4266', '221', 'Gulu', '304', null, '1');
INSERT INTO `caLocState` VALUES ('4267', '221', 'Hoima', '403', null, '1');
INSERT INTO `caLocState` VALUES ('4268', '221', 'Ibanda', '416', null, '1');
INSERT INTO `caLocState` VALUES ('4269', '221', 'Iganga', '203', null, '1');
INSERT INTO `caLocState` VALUES ('4270', '221', 'Isingiro', '417', null, '1');
INSERT INTO `caLocState` VALUES ('4271', '221', 'Jinja', '204', null, '1');
INSERT INTO `caLocState` VALUES ('4272', '221', 'Kaabong', '315', null, '1');
INSERT INTO `caLocState` VALUES ('4273', '221', 'Kabale', '404', null, '1');
INSERT INTO `caLocState` VALUES ('4274', '221', 'Kabarole', '405', null, '1');
INSERT INTO `caLocState` VALUES ('4275', '221', 'Kaberamaido', '213', null, '1');
INSERT INTO `caLocState` VALUES ('4276', '221', 'Kalangala', '101', null, '1');
INSERT INTO `caLocState` VALUES ('4277', '221', 'Kaliro', '220', null, '1');
INSERT INTO `caLocState` VALUES ('4278', '221', 'Kampala', '102', null, '1');
INSERT INTO `caLocState` VALUES ('4279', '221', 'Kamuli', '205', null, '1');
INSERT INTO `caLocState` VALUES ('4280', '221', 'Kamwenge', '413', null, '1');
INSERT INTO `caLocState` VALUES ('4281', '221', 'Kanungu', '414', null, '1');
INSERT INTO `caLocState` VALUES ('4282', '221', 'Kapchorwa', '206', null, '1');
INSERT INTO `caLocState` VALUES ('4283', '221', 'Kasese', '406', null, '1');
INSERT INTO `caLocState` VALUES ('4284', '221', 'Katakwi', '207', null, '1');
INSERT INTO `caLocState` VALUES ('4285', '221', 'Kayunga', '112', null, '1');
INSERT INTO `caLocState` VALUES ('4286', '221', 'Kibaale', '407', null, '1');
INSERT INTO `caLocState` VALUES ('4287', '221', 'Kiboga', '103', null, '1');
INSERT INTO `caLocState` VALUES ('4288', '221', 'Kiruhura', '418', null, '1');
INSERT INTO `caLocState` VALUES ('4289', '221', 'Kisoro', '408', null, '1');
INSERT INTO `caLocState` VALUES ('4290', '221', 'Kitgum', '305', null, '1');
INSERT INTO `caLocState` VALUES ('4291', '221', 'Koboko', '316', null, '1');
INSERT INTO `caLocState` VALUES ('4292', '221', 'Kotido', '306', null, '1');
INSERT INTO `caLocState` VALUES ('4293', '221', 'Kumi', '208', null, '1');
INSERT INTO `caLocState` VALUES ('4294', '221', 'Kyenjojo', '415', null, '1');
INSERT INTO `caLocState` VALUES ('4295', '221', 'Lira', '307', null, '1');
INSERT INTO `caLocState` VALUES ('4296', '221', 'Luwero', '104', null, '1');
INSERT INTO `caLocState` VALUES ('4297', '221', 'Lyantonde', '116', null, '1');
INSERT INTO `caLocState` VALUES ('4298', '221', 'Manafwa', '221', null, '1');
INSERT INTO `caLocState` VALUES ('4299', '221', 'Maracha', '320', null, '1');
INSERT INTO `caLocState` VALUES ('4300', '221', 'Masaka', '105', null, '1');
INSERT INTO `caLocState` VALUES ('4301', '221', 'Masindi', '409', null, '1');
INSERT INTO `caLocState` VALUES ('4302', '221', 'Mayuge', '214', null, '1');
INSERT INTO `caLocState` VALUES ('4303', '221', 'Mbale', '209', null, '1');
INSERT INTO `caLocState` VALUES ('4304', '221', 'Mbarara', '410', null, '1');
INSERT INTO `caLocState` VALUES ('4305', '221', 'Mityana', '114', null, '1');
INSERT INTO `caLocState` VALUES ('4306', '221', 'Moroto', '308', null, '1');
INSERT INTO `caLocState` VALUES ('4307', '221', 'Moyo', '309', null, '1');
INSERT INTO `caLocState` VALUES ('4308', '221', 'Mpigi', '106', null, '1');
INSERT INTO `caLocState` VALUES ('4309', '221', 'Mubende', '107', null, '1');
INSERT INTO `caLocState` VALUES ('4310', '221', 'Mukono', '108', null, '1');
INSERT INTO `caLocState` VALUES ('4311', '221', 'Nakapiripirit', '311', null, '1');
INSERT INTO `caLocState` VALUES ('4312', '221', 'Nakaseke', '115', null, '1');
INSERT INTO `caLocState` VALUES ('4313', '221', 'Nakasongola', '109', null, '1');
INSERT INTO `caLocState` VALUES ('4314', '221', 'Namutumba', '222', null, '1');
INSERT INTO `caLocState` VALUES ('4315', '221', 'Nebbi', '310', null, '1');
INSERT INTO `caLocState` VALUES ('4316', '221', 'Northern', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('4317', '221', 'Ntungamo', '411', null, '1');
INSERT INTO `caLocState` VALUES ('4318', '221', 'Oyam', '321', null, '1');
INSERT INTO `caLocState` VALUES ('4319', '221', 'Pader', '312', null, '1');
INSERT INTO `caLocState` VALUES ('4320', '221', 'Pallisa', '210', null, '1');
INSERT INTO `caLocState` VALUES ('4321', '221', 'Rakai', '110', null, '1');
INSERT INTO `caLocState` VALUES ('4322', '221', 'Rukungiri', '412', null, '1');
INSERT INTO `caLocState` VALUES ('4323', '221', 'Sembabule', '111', null, '1');
INSERT INTO `caLocState` VALUES ('4324', '221', 'Sironko', '215', null, '1');
INSERT INTO `caLocState` VALUES ('4325', '221', 'Soroti', '211', null, '1');
INSERT INTO `caLocState` VALUES ('4326', '221', 'Tororo', '212', null, '1');
INSERT INTO `caLocState` VALUES ('4327', '221', 'Wakiso', '113', null, '1');
INSERT INTO `caLocState` VALUES ('4328', '221', 'Western', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('4329', '221', 'Yumbe', '313', null, '1');
INSERT INTO `caLocState` VALUES ('4330', '222', 'Cherkas\'ka Oblast\'', '71', null, '1');
INSERT INTO `caLocState` VALUES ('4331', '222', 'Chernihivs\'ka Oblast\'', '74', null, '1');
INSERT INTO `caLocState` VALUES ('4332', '222', 'Chernivets\'ka Oblast\'', '77', null, '1');
INSERT INTO `caLocState` VALUES ('4333', '222', 'Dnipropetrovs\'ka Oblast\'', '12', null, '1');
INSERT INTO `caLocState` VALUES ('4334', '222', 'Donets\'ka Oblast\'', '14', null, '1');
INSERT INTO `caLocState` VALUES ('4335', '222', 'Ivano-Frankivs\'ka Oblast\'', '26', null, '1');
INSERT INTO `caLocState` VALUES ('4336', '222', 'Kharkivs\'ka Oblast\'', '63', null, '1');
INSERT INTO `caLocState` VALUES ('4337', '222', 'Khersons\'ka Oblast\'', '65', null, '1');
INSERT INTO `caLocState` VALUES ('4338', '222', 'Khmel\'nyts\'ka Oblast\'', '68', null, '1');
INSERT INTO `caLocState` VALUES ('4339', '222', 'Kirovohrads\'ka Oblast\'', '35', null, '1');
INSERT INTO `caLocState` VALUES ('4340', '222', 'Kyïv', '30', null, '1');
INSERT INTO `caLocState` VALUES ('4341', '222', 'Kyïvs\'ka Oblast\'', '32', null, '1');
INSERT INTO `caLocState` VALUES ('4342', '222', 'L\'vivs\'ka Oblast\'', '46', null, '1');
INSERT INTO `caLocState` VALUES ('4343', '222', 'Luhans\'ka Oblast\'', '9', null, '1');
INSERT INTO `caLocState` VALUES ('4344', '222', 'Mykolaïvs\'ka Oblast\'', '48', null, '1');
INSERT INTO `caLocState` VALUES ('4345', '222', 'Odes\'ka Oblast\'', '51', null, '1');
INSERT INTO `caLocState` VALUES ('4346', '222', 'Poltavs\'ka Oblast\'', '53', null, '1');
INSERT INTO `caLocState` VALUES ('4347', '222', 'Respublika Krym', '43', null, '1');
INSERT INTO `caLocState` VALUES ('4348', '222', 'Rivnens\'ka Oblast\'', '56', null, '1');
INSERT INTO `caLocState` VALUES ('4349', '222', 'Sevastopol\'', '40', null, '1');
INSERT INTO `caLocState` VALUES ('4350', '222', 'Sums\'ka Oblast\'', '59', null, '1');
INSERT INTO `caLocState` VALUES ('4351', '222', 'Ternopil\'s\'ka Oblast\'', '61', null, '1');
INSERT INTO `caLocState` VALUES ('4352', '222', 'Vinnyts\'ka Oblast\'', '5', null, '1');
INSERT INTO `caLocState` VALUES ('4353', '222', 'Volyns\'ka Oblast\'', '7', null, '1');
INSERT INTO `caLocState` VALUES ('4354', '222', 'Zakarpats\'ka Oblast\'', '21', null, '1');
INSERT INTO `caLocState` VALUES ('4355', '222', 'Zaporiz\'ka Oblast\'', '23', null, '1');
INSERT INTO `caLocState` VALUES ('4356', '222', 'Zhytomyrs\'ka Oblast\'', '18', null, '1');
INSERT INTO `caLocState` VALUES ('4357', '223', 'Abu Z¸aby [Abu Dhabi]', 'AZ', null, '1');
INSERT INTO `caLocState` VALUES ('4358', '223', 'Ajman', 'AJ', null, '1');
INSERT INTO `caLocState` VALUES ('4359', '223', 'Al Fujayrah', 'FU', null, '1');
INSERT INTO `caLocState` VALUES ('4360', '223', 'Ash Shariqah [Sharjah]', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('4361', '223', 'Dubayy [Dubai]', 'DU', null, '1');
INSERT INTO `caLocState` VALUES ('4362', '223', 'Ra’s al Khaymah', 'RK', null, '1');
INSERT INTO `caLocState` VALUES ('4363', '223', 'Umm al Qaywayn', 'UQ', null, '1');
INSERT INTO `caLocState` VALUES ('4364', '224', 'Aberdeen City', 'ABE', null, '1');
INSERT INTO `caLocState` VALUES ('4365', '224', 'Aberdeenshire', 'ABD', null, '1');
INSERT INTO `caLocState` VALUES ('4366', '224', 'Angus', 'ANS', null, '1');
INSERT INTO `caLocState` VALUES ('4367', '224', 'Antrim', 'ANT', null, '1');
INSERT INTO `caLocState` VALUES ('4368', '224', 'Ards', 'ARD', null, '1');
INSERT INTO `caLocState` VALUES ('4369', '224', 'Argyll and Bute', 'AGB', null, '1');
INSERT INTO `caLocState` VALUES ('4370', '224', 'Armagh', 'ARM', null, '1');
INSERT INTO `caLocState` VALUES ('4371', '224', 'Ballymena', 'BLA', null, '1');
INSERT INTO `caLocState` VALUES ('4372', '224', 'Ballymoney', 'BLY', null, '1');
INSERT INTO `caLocState` VALUES ('4373', '224', 'Banbridge', 'BNB', null, '1');
INSERT INTO `caLocState` VALUES ('4374', '224', 'Barking and Dagenham', 'BDG', null, '1');
INSERT INTO `caLocState` VALUES ('4375', '224', 'Barnet', 'BNE', null, '1');
INSERT INTO `caLocState` VALUES ('4376', '224', 'Barnsley', 'BNS', null, '1');
INSERT INTO `caLocState` VALUES ('4377', '224', 'Bath and North East Somerset', 'BAS', null, '1');
INSERT INTO `caLocState` VALUES ('4378', '224', 'Bedfordshire', 'BDF', null, '1');
INSERT INTO `caLocState` VALUES ('4379', '224', 'Belfast', 'BFS', null, '1');
INSERT INTO `caLocState` VALUES ('4380', '224', 'Bexley', 'BEX', null, '1');
INSERT INTO `caLocState` VALUES ('4381', '224', 'Birmingham', 'BIR', null, '1');
INSERT INTO `caLocState` VALUES ('4382', '224', 'Blackburn with Darwen', 'BBD', null, '1');
INSERT INTO `caLocState` VALUES ('4383', '224', 'Blackpool', 'BPL', null, '1');
INSERT INTO `caLocState` VALUES ('4384', '224', 'Blaenau Gwent', 'BGW', null, '1');
INSERT INTO `caLocState` VALUES ('4385', '224', 'Bolton', 'BOL', null, '1');
INSERT INTO `caLocState` VALUES ('4386', '224', 'Bournemouth', 'BMH', null, '1');
INSERT INTO `caLocState` VALUES ('4387', '224', 'Bracknell Forest', 'BRC', null, '1');
INSERT INTO `caLocState` VALUES ('4388', '224', 'Bradford', 'BRD', null, '1');
INSERT INTO `caLocState` VALUES ('4389', '224', 'Brent', 'BEN', null, '1');
INSERT INTO `caLocState` VALUES ('4390', '224', 'Bridgend [Pen-y-bont ar Ogwr GB-POG]', 'BGE', null, '1');
INSERT INTO `caLocState` VALUES ('4391', '224', 'Brighton and Hove', 'BNH', null, '1');
INSERT INTO `caLocState` VALUES ('4392', '224', 'Bristol, City of', 'BST', null, '1');
INSERT INTO `caLocState` VALUES ('4393', '224', 'Bromley', 'BRY', null, '1');
INSERT INTO `caLocState` VALUES ('4394', '224', 'Buckinghamshire', 'BKM', null, '1');
INSERT INTO `caLocState` VALUES ('4395', '224', 'Bury', 'BUR', null, '1');
INSERT INTO `caLocState` VALUES ('4396', '224', 'Caerphilly [Caerffili GB-CAF]', 'CAY', null, '1');
INSERT INTO `caLocState` VALUES ('4397', '224', 'Calderdale', 'CLD', null, '1');
INSERT INTO `caLocState` VALUES ('4398', '224', 'Cambridgeshire', 'CAM', null, '1');
INSERT INTO `caLocState` VALUES ('4399', '224', 'Camden', 'CMD', null, '1');
INSERT INTO `caLocState` VALUES ('4400', '224', 'Cardiff [Caerdydd GB-CRD]', 'CRF', null, '1');
INSERT INTO `caLocState` VALUES ('4401', '224', 'Carmarthenshire [Sir Gaerfyrddin GB-GFY]', 'CMN', null, '1');
INSERT INTO `caLocState` VALUES ('4402', '224', 'Carrickfergus', 'CKF', null, '1');
INSERT INTO `caLocState` VALUES ('4403', '224', 'Castlereagh', 'CSR', null, '1');
INSERT INTO `caLocState` VALUES ('4404', '224', 'Ceredigion [Sir Ceredigion]', 'CGN', null, '1');
INSERT INTO `caLocState` VALUES ('4405', '224', 'Cheshire', 'CHS', null, '1');
INSERT INTO `caLocState` VALUES ('4406', '224', 'Clackmannanshire', 'CLK', null, '1');
INSERT INTO `caLocState` VALUES ('4407', '224', 'Coleraine', 'CLR', null, '1');
INSERT INTO `caLocState` VALUES ('4408', '224', 'Conwy', 'CWY', null, '1');
INSERT INTO `caLocState` VALUES ('4409', '224', 'Cookstown', 'CKT', null, '1');
INSERT INTO `caLocState` VALUES ('4410', '224', 'Cornwall', 'CON', null, '1');
INSERT INTO `caLocState` VALUES ('4411', '224', 'Coventry', 'COV', null, '1');
INSERT INTO `caLocState` VALUES ('4412', '224', 'Craigavon', 'CGV', null, '1');
INSERT INTO `caLocState` VALUES ('4413', '224', 'Croydon', 'CRY', null, '1');
INSERT INTO `caLocState` VALUES ('4414', '224', 'Cumbria', 'CMA', null, '1');
INSERT INTO `caLocState` VALUES ('4415', '224', 'Darlington', 'DAL', null, '1');
INSERT INTO `caLocState` VALUES ('4416', '224', 'Denbighshire [Sir Ddinbych GB-DDB]', 'DEN', null, '1');
INSERT INTO `caLocState` VALUES ('4417', '224', 'Derby', 'DER', null, '1');
INSERT INTO `caLocState` VALUES ('4418', '224', 'Derbyshire', 'DBY', null, '1');
INSERT INTO `caLocState` VALUES ('4419', '224', 'Derry', 'DRY', null, '1');
INSERT INTO `caLocState` VALUES ('4420', '224', 'Devon', 'DEV', null, '1');
INSERT INTO `caLocState` VALUES ('4421', '224', 'Doncaster', 'DNC', null, '1');
INSERT INTO `caLocState` VALUES ('4422', '224', 'Dorset', 'DOR', null, '1');
INSERT INTO `caLocState` VALUES ('4423', '224', 'Down', 'DOW', null, '1');
INSERT INTO `caLocState` VALUES ('4424', '224', 'Dudley', 'DUD', null, '1');
INSERT INTO `caLocState` VALUES ('4425', '224', 'Dumfries and Galloway', 'DGY', null, '1');
INSERT INTO `caLocState` VALUES ('4426', '224', 'Dundee City', 'DND', null, '1');
INSERT INTO `caLocState` VALUES ('4427', '224', 'Dungannon and South Tyrone', 'DGN', null, '1');
INSERT INTO `caLocState` VALUES ('4428', '224', 'Durham', 'DUR', null, '1');
INSERT INTO `caLocState` VALUES ('4429', '224', 'Ealing', 'EAL', null, '1');
INSERT INTO `caLocState` VALUES ('4430', '224', 'East Ayrshire', 'EAY', null, '1');
INSERT INTO `caLocState` VALUES ('4431', '224', 'East Dunbartonshire', 'EDU', null, '1');
INSERT INTO `caLocState` VALUES ('4432', '224', 'East Lothian', 'ELN', null, '1');
INSERT INTO `caLocState` VALUES ('4433', '224', 'East Renfrewshire', 'ERW', null, '1');
INSERT INTO `caLocState` VALUES ('4434', '224', 'East Riding of Yorkshire', 'ERY', null, '1');
INSERT INTO `caLocState` VALUES ('4435', '224', 'East Sussex', 'ESX', null, '1');
INSERT INTO `caLocState` VALUES ('4436', '224', 'Edinburgh, City of', 'EDH', null, '1');
INSERT INTO `caLocState` VALUES ('4437', '224', 'Eilean Siar', 'ELS', null, '1');
INSERT INTO `caLocState` VALUES ('4438', '224', 'Enfield', 'ENF', null, '1');
INSERT INTO `caLocState` VALUES ('4439', '224', 'England', 'ENG', null, '1');
INSERT INTO `caLocState` VALUES ('4440', '224', 'Essex', 'ESS', null, '1');
INSERT INTO `caLocState` VALUES ('4441', '224', 'Falkirk', 'FAL', null, '1');
INSERT INTO `caLocState` VALUES ('4442', '224', 'Fermanagh', 'FER', null, '1');
INSERT INTO `caLocState` VALUES ('4443', '224', 'Fife', 'FIF', null, '1');
INSERT INTO `caLocState` VALUES ('4444', '224', 'Flintshire [Sir y Fflint GB-FFL]', 'FLN', null, '1');
INSERT INTO `caLocState` VALUES ('4445', '224', 'Gateshead', 'GAT', null, '1');
INSERT INTO `caLocState` VALUES ('4446', '224', 'Glasgow City', 'GLG', null, '1');
INSERT INTO `caLocState` VALUES ('4447', '224', 'Gloucestershire', 'GLS', null, '1');
INSERT INTO `caLocState` VALUES ('4448', '224', 'Greenwich', 'GRE', null, '1');
INSERT INTO `caLocState` VALUES ('4449', '224', 'Gwynedd', 'GWN', null, '1');
INSERT INTO `caLocState` VALUES ('4450', '224', 'Hackney', 'HCK', null, '1');
INSERT INTO `caLocState` VALUES ('4451', '224', 'Halton', 'HAL', null, '1');
INSERT INTO `caLocState` VALUES ('4452', '224', 'Hammersmith and Fulham', 'HMF', null, '1');
INSERT INTO `caLocState` VALUES ('4453', '224', 'Hampshire', 'HAM', null, '1');
INSERT INTO `caLocState` VALUES ('4454', '224', 'Haringey', 'HRY', null, '1');
INSERT INTO `caLocState` VALUES ('4455', '224', 'Harrow', 'HRW', null, '1');
INSERT INTO `caLocState` VALUES ('4456', '224', 'Hartlepool', 'HPL', null, '1');
INSERT INTO `caLocState` VALUES ('4457', '224', 'Havering', 'HAV', null, '1');
INSERT INTO `caLocState` VALUES ('4458', '224', 'Herefordshire, County of', 'HEF', null, '1');
INSERT INTO `caLocState` VALUES ('4459', '224', 'Hertfordshire', 'HRT', null, '1');
INSERT INTO `caLocState` VALUES ('4460', '224', 'Highland', 'HLD', null, '1');
INSERT INTO `caLocState` VALUES ('4461', '224', 'Hillingdon', 'HIL', null, '1');
INSERT INTO `caLocState` VALUES ('4462', '224', 'Hounslow', 'HNS', null, '1');
INSERT INTO `caLocState` VALUES ('4463', '224', 'Inverclyde', 'IVC', null, '1');
INSERT INTO `caLocState` VALUES ('4464', '224', 'Isle of Anglesey [Sir Ynys Môn GB-YNM]', 'AGY', null, '1');
INSERT INTO `caLocState` VALUES ('4465', '224', 'Isle of Wight', 'IOW', null, '1');
INSERT INTO `caLocState` VALUES ('4466', '224', 'Isles of Scilly', 'IOS', null, '1');
INSERT INTO `caLocState` VALUES ('4467', '224', 'Islington', 'ISL', null, '1');
INSERT INTO `caLocState` VALUES ('4468', '224', 'Kensington and Chelsea', 'KEC', null, '1');
INSERT INTO `caLocState` VALUES ('4469', '224', 'Kent', 'KEN', null, '1');
INSERT INTO `caLocState` VALUES ('4470', '224', 'Kingston upon Hull, City of', 'KHL', null, '1');
INSERT INTO `caLocState` VALUES ('4471', '224', 'Kingston upon Thames', 'KTT', null, '1');
INSERT INTO `caLocState` VALUES ('4472', '224', 'Kirklees', 'KIR', null, '1');
INSERT INTO `caLocState` VALUES ('4473', '224', 'Knowsley', 'KWL', null, '1');
INSERT INTO `caLocState` VALUES ('4474', '224', 'Lambeth', 'LBH', null, '1');
INSERT INTO `caLocState` VALUES ('4475', '224', 'Lancashire', 'LAN', null, '1');
INSERT INTO `caLocState` VALUES ('4476', '224', 'Larne', 'LRN', null, '1');
INSERT INTO `caLocState` VALUES ('4477', '224', 'Leeds', 'LDS', null, '1');
INSERT INTO `caLocState` VALUES ('4478', '224', 'Leicester', 'LCE', null, '1');
INSERT INTO `caLocState` VALUES ('4479', '224', 'Leicestershire', 'LEC', null, '1');
INSERT INTO `caLocState` VALUES ('4480', '224', 'Lewisham', 'LEW', null, '1');
INSERT INTO `caLocState` VALUES ('4481', '224', 'Limavady', 'LMV', null, '1');
INSERT INTO `caLocState` VALUES ('4482', '224', 'Lincolnshire', 'LIN', null, '1');
INSERT INTO `caLocState` VALUES ('4483', '224', 'Lisburn', 'LSB', null, '1');
INSERT INTO `caLocState` VALUES ('4484', '224', 'Liverpool', 'LIV', null, '1');
INSERT INTO `caLocState` VALUES ('4485', '224', 'London, City of', 'LND', null, '1');
INSERT INTO `caLocState` VALUES ('4486', '224', 'Luton', 'LUT', null, '1');
INSERT INTO `caLocState` VALUES ('4487', '224', 'Magherafelt', 'MFT', null, '1');
INSERT INTO `caLocState` VALUES ('4488', '224', 'Manchester', 'MAN', null, '1');
INSERT INTO `caLocState` VALUES ('4489', '224', 'Medway', 'MDW', null, '1');
INSERT INTO `caLocState` VALUES ('4490', '224', 'Merthyr Tydfil [Merthyr Tudful GB-MTU]', 'MTY', null, '1');
INSERT INTO `caLocState` VALUES ('4491', '224', 'Merton', 'MRT', null, '1');
INSERT INTO `caLocState` VALUES ('4492', '224', 'Middlesbrough', 'MDB', null, '1');
INSERT INTO `caLocState` VALUES ('4493', '224', 'Midlothian', 'MLN', null, '1');
INSERT INTO `caLocState` VALUES ('4494', '224', 'Milton Keynes', 'MIK', null, '1');
INSERT INTO `caLocState` VALUES ('4495', '224', 'Monmouthshire [Sir Fynwy GB-FYN]', 'MON', null, '1');
INSERT INTO `caLocState` VALUES ('4496', '224', 'Moray', 'MRY', null, '1');
INSERT INTO `caLocState` VALUES ('4497', '224', 'Moyle', 'MYL', null, '1');
INSERT INTO `caLocState` VALUES ('4498', '224', 'Neath Port Talbot [Castell-nedd Port Talbot GB-CTL', 'NTL', null, '1');
INSERT INTO `caLocState` VALUES ('4499', '224', 'Newcastle upon Tyne', 'NET', null, '1');
INSERT INTO `caLocState` VALUES ('4500', '224', 'Newham', 'NWM', null, '1');
INSERT INTO `caLocState` VALUES ('4501', '224', 'Newport [Casnewydd GB-CNW]', 'NWP', null, '1');
INSERT INTO `caLocState` VALUES ('4502', '224', 'Newry and Mourne', 'NYM', null, '1');
INSERT INTO `caLocState` VALUES ('4503', '224', 'Newtownabbey', 'NTA', null, '1');
INSERT INTO `caLocState` VALUES ('4504', '224', 'Norfolk', 'NFK', null, '1');
INSERT INTO `caLocState` VALUES ('4505', '224', 'North Ayrshire', 'NAY', null, '1');
INSERT INTO `caLocState` VALUES ('4506', '224', 'North Down', 'NDN', null, '1');
INSERT INTO `caLocState` VALUES ('4507', '224', 'North East Lincolnshire', 'NEL', null, '1');
INSERT INTO `caLocState` VALUES ('4508', '224', 'North Lanarkshire', 'NLK', null, '1');
INSERT INTO `caLocState` VALUES ('4509', '224', 'North Lincolnshire', 'NLN', null, '1');
INSERT INTO `caLocState` VALUES ('4510', '224', 'North Somerset', 'NSM', null, '1');
INSERT INTO `caLocState` VALUES ('4511', '224', 'North Tyneside', 'NTY', null, '1');
INSERT INTO `caLocState` VALUES ('4512', '224', 'North Yorkshire', 'NYK', null, '1');
INSERT INTO `caLocState` VALUES ('4513', '224', 'Northamptonshire', 'NTH', null, '1');
INSERT INTO `caLocState` VALUES ('4514', '224', 'Northern Ireland', 'NIR', null, '1');
INSERT INTO `caLocState` VALUES ('4515', '224', 'Northumberland', 'NBL', null, '1');
INSERT INTO `caLocState` VALUES ('4516', '224', 'Nottingham', 'NGM', null, '1');
INSERT INTO `caLocState` VALUES ('4517', '224', 'Nottinghamshire', 'NTT', null, '1');
INSERT INTO `caLocState` VALUES ('4518', '224', 'Oldham', 'OLD', null, '1');
INSERT INTO `caLocState` VALUES ('4519', '224', 'Omagh', 'OMH', null, '1');
INSERT INTO `caLocState` VALUES ('4520', '224', 'Orkney Islands', 'ORK', null, '1');
INSERT INTO `caLocState` VALUES ('4521', '224', 'Oxfordshire', 'OXF', null, '1');
INSERT INTO `caLocState` VALUES ('4522', '224', 'Pembrokeshire [Sir Benfro GB-BNF]', 'PEM', null, '1');
INSERT INTO `caLocState` VALUES ('4523', '224', 'Perth and Kinross', 'PKN', null, '1');
INSERT INTO `caLocState` VALUES ('4524', '224', 'Peterborough', 'PTE', null, '1');
INSERT INTO `caLocState` VALUES ('4525', '224', 'Plymouth', 'PLY', null, '1');
INSERT INTO `caLocState` VALUES ('4526', '224', 'Poole', 'POL', null, '1');
INSERT INTO `caLocState` VALUES ('4527', '224', 'Portsmouth', 'POR', null, '1');
INSERT INTO `caLocState` VALUES ('4528', '224', 'Powys', 'POW', null, '1');
INSERT INTO `caLocState` VALUES ('4529', '224', 'Reading', 'RDG', null, '1');
INSERT INTO `caLocState` VALUES ('4530', '224', 'Redbridge', 'RDB', null, '1');
INSERT INTO `caLocState` VALUES ('4531', '224', 'Redcar and Cleveland', 'RCC', null, '1');
INSERT INTO `caLocState` VALUES ('4532', '224', 'Renfrewshire', 'RFW', null, '1');
INSERT INTO `caLocState` VALUES ('4533', '224', 'Rhondda, Cynon, Taff [Rhondda, Cynon,Taf]', 'RCT', null, '1');
INSERT INTO `caLocState` VALUES ('4534', '224', 'Richmond upon Thames', 'RIC', null, '1');
INSERT INTO `caLocState` VALUES ('4535', '224', 'Rochdale', 'RCH', null, '1');
INSERT INTO `caLocState` VALUES ('4536', '224', 'Rotherham', 'ROT', null, '1');
INSERT INTO `caLocState` VALUES ('4537', '224', 'Rutland', 'RUT', null, '1');
INSERT INTO `caLocState` VALUES ('4538', '224', 'Salford', 'SLF', null, '1');
INSERT INTO `caLocState` VALUES ('4539', '224', 'Sandwell', 'SAW', null, '1');
INSERT INTO `caLocState` VALUES ('4540', '224', 'Scotland', 'SCT', null, '1');
INSERT INTO `caLocState` VALUES ('4541', '224', 'Scottish Borders, The', 'SCB', null, '1');
INSERT INTO `caLocState` VALUES ('4542', '224', 'Sefton', 'SFT', null, '1');
INSERT INTO `caLocState` VALUES ('4543', '224', 'Sheffield', 'SHF', null, '1');
INSERT INTO `caLocState` VALUES ('4544', '224', 'Shetland Islands', 'ZET', null, '1');
INSERT INTO `caLocState` VALUES ('4545', '224', 'Shropshire', 'SHR', null, '1');
INSERT INTO `caLocState` VALUES ('4546', '224', 'Slough', 'SLG', null, '1');
INSERT INTO `caLocState` VALUES ('4547', '224', 'Solihull', 'SOL', null, '1');
INSERT INTO `caLocState` VALUES ('4548', '224', 'Somerset', 'SOM', null, '1');
INSERT INTO `caLocState` VALUES ('4549', '224', 'South Ayrshire', 'SAY', null, '1');
INSERT INTO `caLocState` VALUES ('4550', '224', 'South Gloucestershire', 'SGC', null, '1');
INSERT INTO `caLocState` VALUES ('4551', '224', 'South Lanarkshire', 'SLK', null, '1');
INSERT INTO `caLocState` VALUES ('4552', '224', 'South Tyneside', 'STY', null, '1');
INSERT INTO `caLocState` VALUES ('4553', '224', 'Southampton', 'STH', null, '1');
INSERT INTO `caLocState` VALUES ('4554', '224', 'Southend-on-Sea', 'SOS', null, '1');
INSERT INTO `caLocState` VALUES ('4555', '224', 'Southwark', 'SWK', null, '1');
INSERT INTO `caLocState` VALUES ('4556', '224', 'St. Helens', 'SHN', null, '1');
INSERT INTO `caLocState` VALUES ('4557', '224', 'Staffordshire', 'STS', null, '1');
INSERT INTO `caLocState` VALUES ('4558', '224', 'Stirling', 'STG', null, '1');
INSERT INTO `caLocState` VALUES ('4559', '224', 'Stockport', 'SKP', null, '1');
INSERT INTO `caLocState` VALUES ('4560', '224', 'Stockton-on-Tees', 'STT', null, '1');
INSERT INTO `caLocState` VALUES ('4561', '224', 'Stoke-on-Trent', 'STE', null, '1');
INSERT INTO `caLocState` VALUES ('4562', '224', 'Strabane', 'STB', null, '1');
INSERT INTO `caLocState` VALUES ('4563', '224', 'Suffolk', 'SFK', null, '1');
INSERT INTO `caLocState` VALUES ('4564', '224', 'Sunderland', 'SND', null, '1');
INSERT INTO `caLocState` VALUES ('4565', '224', 'Surrey', 'SRY', null, '1');
INSERT INTO `caLocState` VALUES ('4566', '224', 'Sutton', 'STN', null, '1');
INSERT INTO `caLocState` VALUES ('4567', '224', 'Swansea [Abertawe GB-ATA]', 'SWA', null, '1');
INSERT INTO `caLocState` VALUES ('4568', '224', 'Swindon', 'SWD', null, '1');
INSERT INTO `caLocState` VALUES ('4569', '224', 'Tameside', 'TAM', null, '1');
INSERT INTO `caLocState` VALUES ('4570', '224', 'Telford and Wrekin', 'TFW', null, '1');
INSERT INTO `caLocState` VALUES ('4571', '224', 'Thurrock', 'THR', null, '1');
INSERT INTO `caLocState` VALUES ('4572', '224', 'Torbay', 'TOB', null, '1');
INSERT INTO `caLocState` VALUES ('4573', '224', 'Torfaen [Tor-faen]', 'TOF', null, '1');
INSERT INTO `caLocState` VALUES ('4574', '224', 'Tower Hamlets', 'TWH', null, '1');
INSERT INTO `caLocState` VALUES ('4575', '224', 'Trafford', 'TRF', null, '1');
INSERT INTO `caLocState` VALUES ('4576', '224', 'Vale of Glamorgan, The [Bro Morgannwg GB-BMG]', 'VGL', null, '1');
INSERT INTO `caLocState` VALUES ('4577', '224', 'Wakefield', 'WKF', null, '1');
INSERT INTO `caLocState` VALUES ('4578', '224', 'Wales', 'WLS', null, '1');
INSERT INTO `caLocState` VALUES ('4579', '224', 'Walsall', 'WLL', null, '1');
INSERT INTO `caLocState` VALUES ('4580', '224', 'Waltham Forest', 'WFT', null, '1');
INSERT INTO `caLocState` VALUES ('4581', '224', 'Wandsworth', 'WND', null, '1');
INSERT INTO `caLocState` VALUES ('4582', '224', 'Warrington', 'WRT', null, '1');
INSERT INTO `caLocState` VALUES ('4583', '224', 'Warwickshire', 'WAR', null, '1');
INSERT INTO `caLocState` VALUES ('4584', '224', 'West Berkshire', 'WBK', null, '1');
INSERT INTO `caLocState` VALUES ('4585', '224', 'West Dunbartonshire', 'WDU', null, '1');
INSERT INTO `caLocState` VALUES ('4586', '224', 'West Lothian', 'WLN', null, '1');
INSERT INTO `caLocState` VALUES ('4587', '224', 'West Sussex', 'WSX', null, '1');
INSERT INTO `caLocState` VALUES ('4588', '224', 'Westminster', 'WSM', null, '1');
INSERT INTO `caLocState` VALUES ('4589', '224', 'Wigan', 'WGN', null, '1');
INSERT INTO `caLocState` VALUES ('4590', '224', 'Wiltshire', 'WIL', null, '1');
INSERT INTO `caLocState` VALUES ('4591', '224', 'Windsor and Maidenhead', 'WNM', null, '1');
INSERT INTO `caLocState` VALUES ('4592', '224', 'Wirral', 'WRL', null, '1');
INSERT INTO `caLocState` VALUES ('4593', '224', 'Wokingham', 'WOK', null, '1');
INSERT INTO `caLocState` VALUES ('4594', '224', 'Wolverhampton', 'WLV', null, '1');
INSERT INTO `caLocState` VALUES ('4595', '224', 'Worcestershire', 'WOR', null, '1');
INSERT INTO `caLocState` VALUES ('4596', '224', 'Wrexham [Wrecsam GB-WRC]', 'WRX', null, '1');
INSERT INTO `caLocState` VALUES ('4597', '224', 'York', 'YOR', null, '1');
INSERT INTO `caLocState` VALUES ('4598', '225', 'Alabama', 'AL', null, '1');
INSERT INTO `caLocState` VALUES ('4599', '225', 'Alaska', 'AK', null, '1');
INSERT INTO `caLocState` VALUES ('4600', '225', 'American Samoa', 'AS', null, '1');
INSERT INTO `caLocState` VALUES ('4601', '225', 'Arizona', 'AZ', null, '1');
INSERT INTO `caLocState` VALUES ('4602', '225', 'Arkansas', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('4603', '225', 'California', 'CA', null, '1');
INSERT INTO `caLocState` VALUES ('4604', '225', 'Colorado', 'CO', null, '1');
INSERT INTO `caLocState` VALUES ('4605', '225', 'Connecticut', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('4606', '225', 'Delaware', 'DE', null, '1');
INSERT INTO `caLocState` VALUES ('4607', '225', 'District of Columbia', 'DC', null, '1');
INSERT INTO `caLocState` VALUES ('4608', '225', 'Florida', 'FL', null, '1');
INSERT INTO `caLocState` VALUES ('4609', '225', 'Georgia', 'GA', null, '1');
INSERT INTO `caLocState` VALUES ('4610', '225', 'Guam', 'GU', null, '1');
INSERT INTO `caLocState` VALUES ('4611', '225', 'Hawaii', 'HI', null, '1');
INSERT INTO `caLocState` VALUES ('4612', '225', 'Idaho', 'ID', null, '1');
INSERT INTO `caLocState` VALUES ('4613', '225', 'Illinois', 'IL', null, '1');
INSERT INTO `caLocState` VALUES ('4614', '225', 'Indiana', 'IN', null, '1');
INSERT INTO `caLocState` VALUES ('4615', '225', 'Iowa', 'IA', null, '1');
INSERT INTO `caLocState` VALUES ('4616', '225', 'Kansas', 'KS', null, '1');
INSERT INTO `caLocState` VALUES ('4617', '225', 'Kentucky', 'KY', null, '1');
INSERT INTO `caLocState` VALUES ('4618', '225', 'Louisiana', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('4619', '225', 'Maine', 'ME', null, '1');
INSERT INTO `caLocState` VALUES ('4620', '225', 'Maryland', 'MD', null, '1');
INSERT INTO `caLocState` VALUES ('4621', '225', 'Massachusetts', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('4622', '225', 'Michigan', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('4623', '225', 'Minnesota', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('4624', '225', 'Mississippi', 'MS', null, '1');
INSERT INTO `caLocState` VALUES ('4625', '225', 'Missouri', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('4626', '225', 'Montana', 'MT', null, '1');
INSERT INTO `caLocState` VALUES ('4627', '225', 'Nebraska', 'NE', null, '1');
INSERT INTO `caLocState` VALUES ('4628', '225', 'Nevada', 'NV', null, '1');
INSERT INTO `caLocState` VALUES ('4629', '225', 'New Hampshire', 'NH', null, '1');
INSERT INTO `caLocState` VALUES ('4630', '225', 'New Jersey', 'NJ', null, '1');
INSERT INTO `caLocState` VALUES ('4631', '225', 'New Mexico', 'NM', null, '1');
INSERT INTO `caLocState` VALUES ('4632', '225', 'New York', 'NY', null, '1');
INSERT INTO `caLocState` VALUES ('4633', '225', 'North Carolina', 'NC', null, '1');
INSERT INTO `caLocState` VALUES ('4634', '225', 'North Dakota', 'ND', null, '1');
INSERT INTO `caLocState` VALUES ('4635', '225', 'Northern Mariana Islands', 'MP', null, '1');
INSERT INTO `caLocState` VALUES ('4636', '225', 'Ohio', 'OH', null, '1');
INSERT INTO `caLocState` VALUES ('4637', '225', 'Oklahoma', 'OK', null, '1');
INSERT INTO `caLocState` VALUES ('4638', '225', 'Oregon', 'OR', null, '1');
INSERT INTO `caLocState` VALUES ('4639', '225', 'Pennsylvania', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('4640', '225', 'Puerto Rico', 'PR', null, '1');
INSERT INTO `caLocState` VALUES ('4641', '225', 'Rhode Island', 'RI', null, '1');
INSERT INTO `caLocState` VALUES ('4642', '225', 'South Carolina', 'SC', null, '1');
INSERT INTO `caLocState` VALUES ('4643', '225', 'South Dakota', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('4644', '225', 'Tennessee', 'TN', null, '1');
INSERT INTO `caLocState` VALUES ('4645', '225', 'Texas', 'TX', null, '1');
INSERT INTO `caLocState` VALUES ('4646', '225', 'United States Minor Outlying Islands', 'UM', null, '1');
INSERT INTO `caLocState` VALUES ('4647', '225', 'Utah', 'UT', null, '1');
INSERT INTO `caLocState` VALUES ('4648', '225', 'Vermont', 'VT', null, '1');
INSERT INTO `caLocState` VALUES ('4649', '225', 'Virgin Islands, U.S.', 'VI', null, '1');
INSERT INTO `caLocState` VALUES ('4650', '225', 'Virginia', 'VA', null, '1');
INSERT INTO `caLocState` VALUES ('4651', '225', 'Washington', 'WA', null, '1');
INSERT INTO `caLocState` VALUES ('4652', '225', 'West Virginia', 'WV', null, '1');
INSERT INTO `caLocState` VALUES ('4653', '225', 'Wisconsin', 'WI', null, '1');
INSERT INTO `caLocState` VALUES ('4654', '225', 'Wyoming', 'WY', null, '1');
INSERT INTO `caLocState` VALUES ('4655', '226', 'Baker Island', '81', null, '1');
INSERT INTO `caLocState` VALUES ('4656', '226', 'Howland Island', '84', null, '1');
INSERT INTO `caLocState` VALUES ('4657', '226', 'Jarvis Island', '86', null, '1');
INSERT INTO `caLocState` VALUES ('4658', '226', 'Johnston Atoll', '67', null, '1');
INSERT INTO `caLocState` VALUES ('4659', '226', 'Kingman Reef', '89', null, '1');
INSERT INTO `caLocState` VALUES ('4660', '226', 'Midway Islands', '71', null, '1');
INSERT INTO `caLocState` VALUES ('4661', '226', 'Navassa Island', '76', null, '1');
INSERT INTO `caLocState` VALUES ('4662', '226', 'Palmyra Atoll', '95', null, '1');
INSERT INTO `caLocState` VALUES ('4663', '226', 'Wake Island', '79', null, '1');
INSERT INTO `caLocState` VALUES ('4664', '227', 'Artigas', 'AR', null, '1');
INSERT INTO `caLocState` VALUES ('4665', '227', 'Durazno', 'DU', null, '1');
INSERT INTO `caLocState` VALUES ('4666', '227', 'Flores', 'FS', null, '1');
INSERT INTO `caLocState` VALUES ('4667', '227', 'Florida', 'FD', null, '1');
INSERT INTO `caLocState` VALUES ('4668', '227', 'Lavalleja', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('4669', '227', 'Maldonado', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('4670', '227', 'Montevideo', 'MO', null, '1');
INSERT INTO `caLocState` VALUES ('4671', '227', 'Paysandú', 'PA', null, '1');
INSERT INTO `caLocState` VALUES ('4672', '227', 'Rivera', 'RV', null, '1');
INSERT INTO `caLocState` VALUES ('4673', '227', 'Rocha', 'RO', null, '1');
INSERT INTO `caLocState` VALUES ('4674', '227', 'Río Negro', 'RN', null, '1');
INSERT INTO `caLocState` VALUES ('4675', '227', 'Salto', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('4676', '227', 'San José', 'SJ', null, '1');
INSERT INTO `caLocState` VALUES ('4677', '227', 'Soriano', 'SO', null, '1');
INSERT INTO `caLocState` VALUES ('4678', '227', 'Tacuarembó', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('4679', '227', 'Treinta y Tres', 'TT', null, '1');
INSERT INTO `caLocState` VALUES ('4680', '227', '', 'X3~', null, '1');
INSERT INTO `caLocState` VALUES ('4681', '227', '', 'X2~', null, '1');
INSERT INTO `caLocState` VALUES ('4682', '227', '', 'X1~', null, '1');
INSERT INTO `caLocState` VALUES ('4683', '228', 'Andijon', 'AN', null, '1');
INSERT INTO `caLocState` VALUES ('4684', '228', 'Buxoro', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('4685', '228', 'Farg‘ona', 'FA', null, '1');
INSERT INTO `caLocState` VALUES ('4686', '228', 'Jizzax', 'JI', null, '1');
INSERT INTO `caLocState` VALUES ('4687', '228', 'Namangan', 'NG', null, '1');
INSERT INTO `caLocState` VALUES ('4688', '228', 'Navoiy', 'NW', null, '1');
INSERT INTO `caLocState` VALUES ('4689', '228', 'Qashqadaryo', 'QA', null, '1');
INSERT INTO `caLocState` VALUES ('4690', '228', 'Qoraqalpog‘iston Respublikasi', 'QR', null, '1');
INSERT INTO `caLocState` VALUES ('4691', '228', 'Samarqand', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('4692', '228', 'Sirdaryo', 'SI', null, '1');
INSERT INTO `caLocState` VALUES ('4693', '228', 'Surxondaryo', 'SU', null, '1');
INSERT INTO `caLocState` VALUES ('4694', '228', 'Toshkent', 'TO', null, '1');
INSERT INTO `caLocState` VALUES ('4695', '228', 'Toshkent City', 'TK', null, '1');
INSERT INTO `caLocState` VALUES ('4696', '228', 'Xorazm', 'XO', null, '1');
INSERT INTO `caLocState` VALUES ('4697', '229', 'Malampa', 'MAP', null, '1');
INSERT INTO `caLocState` VALUES ('4698', '229', 'Pénama', 'PAM', null, '1');
INSERT INTO `caLocState` VALUES ('4699', '229', 'Sanma', 'SAM', null, '1');
INSERT INTO `caLocState` VALUES ('4700', '229', 'Shéfa', 'SEE', null, '1');
INSERT INTO `caLocState` VALUES ('4701', '229', 'Taféa', 'TAE', null, '1');
INSERT INTO `caLocState` VALUES ('4702', '229', 'Torba', 'TOB', null, '1');
INSERT INTO `caLocState` VALUES ('4703', '231', 'Amazonas', 'Z', null, '1');
INSERT INTO `caLocState` VALUES ('4704', '231', 'Anzoátegui', 'B', null, '1');
INSERT INTO `caLocState` VALUES ('4705', '231', 'Apure', 'C', null, '1');
INSERT INTO `caLocState` VALUES ('4706', '231', 'Aragua', 'D', null, '1');
INSERT INTO `caLocState` VALUES ('4707', '231', 'Barinas', 'E', null, '1');
INSERT INTO `caLocState` VALUES ('4708', '231', 'Bolívar', 'F', null, '1');
INSERT INTO `caLocState` VALUES ('4709', '231', 'Carabobo', 'G', null, '1');
INSERT INTO `caLocState` VALUES ('4710', '231', 'Cojedes', 'H', null, '1');
INSERT INTO `caLocState` VALUES ('4711', '231', 'Delta Amacuro', 'Y', null, '1');
INSERT INTO `caLocState` VALUES ('4712', '231', 'Dependencias Federales', 'W', null, '1');
INSERT INTO `caLocState` VALUES ('4713', '231', 'Distrito Federal', 'A', null, '1');
INSERT INTO `caLocState` VALUES ('4714', '231', 'Falcón', 'I', null, '1');
INSERT INTO `caLocState` VALUES ('4715', '231', 'Guárico', 'J', null, '1');
INSERT INTO `caLocState` VALUES ('4716', '231', 'Lara', 'K', null, '1');
INSERT INTO `caLocState` VALUES ('4717', '231', 'Miranda', 'M', null, '1');
INSERT INTO `caLocState` VALUES ('4718', '231', 'Monagas', 'N', null, '1');
INSERT INTO `caLocState` VALUES ('4719', '231', 'Mérida', 'L', null, '1');
INSERT INTO `caLocState` VALUES ('4720', '231', 'Nueva Esparta', 'O', null, '1');
INSERT INTO `caLocState` VALUES ('4721', '231', 'Portuguesa', 'P', null, '1');
INSERT INTO `caLocState` VALUES ('4722', '231', 'Sucre', 'R', null, '1');
INSERT INTO `caLocState` VALUES ('4723', '231', 'Trujillo', 'T', null, '1');
INSERT INTO `caLocState` VALUES ('4724', '231', 'Táchira', 'S', null, '1');
INSERT INTO `caLocState` VALUES ('4725', '231', 'Vargas', 'X', null, '1');
INSERT INTO `caLocState` VALUES ('4726', '231', 'Yaracuy', 'U', null, '1');
INSERT INTO `caLocState` VALUES ('4727', '231', 'Zulia', 'V', null, '1');
INSERT INTO `caLocState` VALUES ('4728', '232', 'An Giang', '44', null, '1');
INSERT INTO `caLocState` VALUES ('4729', '232', 'Ba Ria-Vung Tau', '43', null, '1');
INSERT INTO `caLocState` VALUES ('4730', '232', 'Bac Can', '53', null, '1');
INSERT INTO `caLocState` VALUES ('4731', '232', 'Bac Giang', '54', null, '1');
INSERT INTO `caLocState` VALUES ('4732', '232', 'Bac Lieu', '55', null, '1');
INSERT INTO `caLocState` VALUES ('4733', '232', 'Bac Ninh', '56', null, '1');
INSERT INTO `caLocState` VALUES ('4734', '232', 'Ben Tre', '50', null, '1');
INSERT INTO `caLocState` VALUES ('4735', '232', 'Binh Dinh', '31', null, '1');
INSERT INTO `caLocState` VALUES ('4736', '232', 'Binh Duong', '57', null, '1');
INSERT INTO `caLocState` VALUES ('4737', '232', 'Binh Phuoc', '58', null, '1');
INSERT INTO `caLocState` VALUES ('4738', '232', 'Binh Thuan', '40', null, '1');
INSERT INTO `caLocState` VALUES ('4739', '232', 'Ca Mau', '59', null, '1');
INSERT INTO `caLocState` VALUES ('4740', '232', 'Can Tho', 'CT', null, '1');
INSERT INTO `caLocState` VALUES ('4741', '232', 'Cao Bang', '4', null, '1');
INSERT INTO `caLocState` VALUES ('4742', '232', 'Da Nang', 'DN', null, '1');
INSERT INTO `caLocState` VALUES ('4743', '232', 'Dac Lac', '33', null, '1');
INSERT INTO `caLocState` VALUES ('4744', '232', 'Dak Nong', '72', null, '1');
INSERT INTO `caLocState` VALUES ('4745', '232', 'Dien Bien', '71', null, '1');
INSERT INTO `caLocState` VALUES ('4746', '232', 'Dong Nai', '39', null, '1');
INSERT INTO `caLocState` VALUES ('4747', '232', 'Dong Thap', '45', null, '1');
INSERT INTO `caLocState` VALUES ('4748', '232', 'Gia Lai', '30', null, '1');
INSERT INTO `caLocState` VALUES ('4749', '232', 'Ha Giang', '3', null, '1');
INSERT INTO `caLocState` VALUES ('4750', '232', 'Ha Nam', '63', null, '1');
INSERT INTO `caLocState` VALUES ('4751', '232', 'Ha Noi', 'HN', null, '1');
INSERT INTO `caLocState` VALUES ('4752', '232', 'Ha Tay', '15', null, '1');
INSERT INTO `caLocState` VALUES ('4753', '232', 'Ha Tinh', '23', null, '1');
INSERT INTO `caLocState` VALUES ('4754', '232', 'Hai Duong', '61', null, '1');
INSERT INTO `caLocState` VALUES ('4755', '232', 'Hai Phong', 'HP', null, '1');
INSERT INTO `caLocState` VALUES ('4756', '232', 'Hau Giang', '73', null, '1');
INSERT INTO `caLocState` VALUES ('4757', '232', 'Ho Chi Minh [Sai Gon]', 'SG', null, '1');
INSERT INTO `caLocState` VALUES ('4758', '232', 'Hoa Binh', '14', null, '1');
INSERT INTO `caLocState` VALUES ('4759', '232', 'Hung Yen', '66', null, '1');
INSERT INTO `caLocState` VALUES ('4760', '232', 'Khanh Hoa', '34', null, '1');
INSERT INTO `caLocState` VALUES ('4761', '232', 'Kien Giang', '47', null, '1');
INSERT INTO `caLocState` VALUES ('4762', '232', 'Kon Tum', '28', null, '1');
INSERT INTO `caLocState` VALUES ('4763', '232', 'Lai Chau', '1', null, '1');
INSERT INTO `caLocState` VALUES ('4764', '232', 'Lam Dong', '35', null, '1');
INSERT INTO `caLocState` VALUES ('4765', '232', 'Lang Son', '9', null, '1');
INSERT INTO `caLocState` VALUES ('4766', '232', 'Lao Cai', '2', null, '1');
INSERT INTO `caLocState` VALUES ('4767', '232', 'Long An', '41', null, '1');
INSERT INTO `caLocState` VALUES ('4768', '232', 'Nam Dinh', '67', null, '1');
INSERT INTO `caLocState` VALUES ('4769', '232', 'Nghe An', '22', null, '1');
INSERT INTO `caLocState` VALUES ('4770', '232', 'Ninh Binh', '18', null, '1');
INSERT INTO `caLocState` VALUES ('4771', '232', 'Ninh Thuan', '36', null, '1');
INSERT INTO `caLocState` VALUES ('4772', '232', 'Phu Tho', '68', null, '1');
INSERT INTO `caLocState` VALUES ('4773', '232', 'Phu Yen', '32', null, '1');
INSERT INTO `caLocState` VALUES ('4774', '232', 'Quang Binh', '24', null, '1');
INSERT INTO `caLocState` VALUES ('4775', '232', 'Quang Nam', '27', null, '1');
INSERT INTO `caLocState` VALUES ('4776', '232', 'Quang Ngai', '29', null, '1');
INSERT INTO `caLocState` VALUES ('4777', '232', 'Quang Ninh', '13', null, '1');
INSERT INTO `caLocState` VALUES ('4778', '232', 'Quang Tri', '25', null, '1');
INSERT INTO `caLocState` VALUES ('4779', '232', 'Soc Trang', '52', null, '1');
INSERT INTO `caLocState` VALUES ('4780', '232', 'Son La', '5', null, '1');
INSERT INTO `caLocState` VALUES ('4781', '232', 'Tay Ninh', '37', null, '1');
INSERT INTO `caLocState` VALUES ('4782', '232', 'Thai Binh', '20', null, '1');
INSERT INTO `caLocState` VALUES ('4783', '232', 'Thai Nguyen', '69', null, '1');
INSERT INTO `caLocState` VALUES ('4784', '232', 'Thanh Hoa', '21', null, '1');
INSERT INTO `caLocState` VALUES ('4785', '232', 'Thua Thien-Hue', '26', null, '1');
INSERT INTO `caLocState` VALUES ('4786', '232', 'Tien Giang', '46', null, '1');
INSERT INTO `caLocState` VALUES ('4787', '232', 'Tra Vinh', '51', null, '1');
INSERT INTO `caLocState` VALUES ('4788', '232', 'Tuyen Quang', '7', null, '1');
INSERT INTO `caLocState` VALUES ('4789', '232', 'Vinh Long', '49', null, '1');
INSERT INTO `caLocState` VALUES ('4790', '232', 'Vinh Phuc', '70', null, '1');
INSERT INTO `caLocState` VALUES ('4791', '232', 'Yen Bai', '6', null, '1');
INSERT INTO `caLocState` VALUES ('4792', '236', 'Boujdour', 'BOD', null, '1');
INSERT INTO `caLocState` VALUES ('4793', '236', 'Es Semara', 'ESM', null, '1');
INSERT INTO `caLocState` VALUES ('4794', '236', 'Laayoune', 'LAA', null, '1');
INSERT INTO `caLocState` VALUES ('4795', '236', 'Oued el Dahab', 'OUD', null, '1');
INSERT INTO `caLocState` VALUES ('4796', '237', '\'Amran', 'AM', null, '1');
INSERT INTO `caLocState` VALUES ('4797', '237', 'Abyan', 'AB', null, '1');
INSERT INTO `caLocState` VALUES ('4798', '237', 'Ad Dāli‘', 'DA', null, '1');
INSERT INTO `caLocState` VALUES ('4799', '237', 'Al Sudaydah', 'HU', null, '1');
INSERT INTO `caLocState` VALUES ('4800', '237', 'Al Bay?a\'', 'BA', null, '1');
INSERT INTO `caLocState` VALUES ('4801', '237', 'Al Jawf', 'JA', null, '1');
INSERT INTO `caLocState` VALUES ('4802', '237', 'Al Mahrah', 'MR', null, '1');
INSERT INTO `caLocState` VALUES ('4803', '237', 'Al Mahwit', 'MW', null, '1');
INSERT INTO `caLocState` VALUES ('4804', '237', 'Dhamar', 'DH', null, '1');
INSERT INTO `caLocState` VALUES ('4805', '237', 'Hadramawt', 'HD', null, '1');
INSERT INTO `caLocState` VALUES ('4806', '237', 'Hajjah', 'HJ', null, '1');
INSERT INTO `caLocState` VALUES ('4807', '237', 'Ibb', 'IB', null, '1');
INSERT INTO `caLocState` VALUES ('4808', '237', 'La?ij', 'LA', null, '1');
INSERT INTO `caLocState` VALUES ('4809', '237', 'Ma\'rib', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('4810', '237', 'Raymah', 'RA', null, '1');
INSERT INTO `caLocState` VALUES ('4811', '237', 'Sa`dah', 'SD', null, '1');
INSERT INTO `caLocState` VALUES ('4812', '237', 'Sanʿā', 'SN', null, '1');
INSERT INTO `caLocState` VALUES ('4813', '237', 'Shabwah', 'SH', null, '1');
INSERT INTO `caLocState` VALUES ('4814', '237', 'Taʿizz', 'TA', null, '1');
INSERT INTO `caLocState` VALUES ('4815', '237', 'Şan‘ā', 'SA', null, '1');
INSERT INTO `caLocState` VALUES ('4816', '237', 'ʿAdan', 'AD', null, '1');
INSERT INTO `caLocState` VALUES ('4817', '239', 'Central', '2', null, '1');
INSERT INTO `caLocState` VALUES ('4818', '239', 'Copperbelt', '8', null, '1');
INSERT INTO `caLocState` VALUES ('4819', '239', 'Eastern', '3', null, '1');
INSERT INTO `caLocState` VALUES ('4820', '239', 'Luapula', '4', null, '1');
INSERT INTO `caLocState` VALUES ('4821', '239', 'Lusaka', '9', null, '1');
INSERT INTO `caLocState` VALUES ('4822', '239', 'North-Western', '6', null, '1');
INSERT INTO `caLocState` VALUES ('4823', '239', 'Northern', '5', null, '1');
INSERT INTO `caLocState` VALUES ('4824', '239', 'Southern', '7', null, '1');
INSERT INTO `caLocState` VALUES ('4825', '239', 'Western', '1', null, '1');
INSERT INTO `caLocState` VALUES ('4826', '240', 'Bulawayo', 'BU', null, '1');
INSERT INTO `caLocState` VALUES ('4827', '240', 'Harare', 'HA', null, '1');
INSERT INTO `caLocState` VALUES ('4828', '240', 'Manicaland', 'MA', null, '1');
INSERT INTO `caLocState` VALUES ('4829', '240', 'Mashonaland Central', 'MC', null, '1');
INSERT INTO `caLocState` VALUES ('4830', '240', 'Mashonaland East', 'ME', null, '1');
INSERT INTO `caLocState` VALUES ('4831', '240', 'Mashonaland West', 'MW', null, '1');
INSERT INTO `caLocState` VALUES ('4832', '240', 'Masvingo', 'MV', null, '1');
INSERT INTO `caLocState` VALUES ('4833', '240', 'Matabeleland North', 'MN', null, '1');
INSERT INTO `caLocState` VALUES ('4834', '240', 'Matabeleland South', 'MS', null, '1');
INSERT INTO `caLocState` VALUES ('4835', '240', 'Midlands', 'MI', null, '1');
INSERT INTO `caLocState` VALUES ('4836', '166', 'Kuna Yala', 'KY', null, '1');

-- ----------------------------
-- Records of caMessageType
-- ----------------------------
INSERT INTO `caMessageType` VALUES ('1', 'Simpleredir', 'Simple redirect, does not draw anything');
INSERT INTO `caMessageType` VALUES ('2', 'Autopost', 'Draws a form and submits it automatically');
INSERT INTO `caMessageType` VALUES ('3', 'Forms', 'Draws a form. A form can be even a simple message containing some text');
INSERT INTO `caMessageType` VALUES ('4', 'Ticket', 'Draws a ticket');
INSERT INTO `caMessageType` VALUES ('5', 'Ticketrefresh', 'Draws a ticket that posts recursively for n times every x seconds');
INSERT INTO `caMessageType` VALUES ('100', 'ProcessorRequest', 'Request to the processor');
INSERT INTO `caMessageType` VALUES ('110', 'ProcessorResponse', 'Response from the processor');
INSERT INTO `caMessageType` VALUES ('200', 'ProviderRequest', 'Request to the Provider');
INSERT INTO `caMessageType` VALUES ('210', 'ProviderResponse', 'Response from the Provider');

-- ----------------------------
-- Records of caPayoutRule
-- ----------------------------
INSERT INTO `caPayoutRule` (`caPayoutRule_Id`, `Name`)
VALUES
 (1,'Document'),
 (2,'Pending'),
 (3,'Recent'),
 (4,'POBox'),
 (5,'RecentDeposit'),
 (6,'BitcoinMax'),
 (7,'Bitcoin');

--
-- Dumping data for table `caPayoutRuleCompany`
--
INSERT INTO `caPayoutRuleCompany` (`caPayoutRuleCompany_Id`, `caPayoutRule_Id`, `caCompany_Id`, `IsActive`)
VALUES
 (11,6,1,0),
 (14,7,1,0),
 (15,2,1,1);

--
-- Dumping data for table `caProcessorOrder`
--
INSERT INTO `caProcessorOrder` (`caProcessorOrder_Id`, `Name`)
VALUES
 (1,'All Companies - All Countries');


--
-- Dumping data for table `caProcessorOrderDetail`
--
INSERT INTO `caProcessorOrderDetail` (`caProcessorOrderDetail_Id`, `caProcessorOrder_Id`, `caProcessor_Id`, `SortOrder`)
VALUES
 (1,1,13,1),
 (2,1,33,2);


--
-- Dumping data for table `caProcessorPaymentAccount`
--


INSERT INTO `caProcessorPaymentAccount` (`caProcessorPaymentAccount_Id`, `Account`, `Balance`, `Modified`)
VALUES
 (1,'BC-EWALLET',50169.038676169992920661331431064861,'2017-06-01 19:41:43');


--
-- Dumping data for table `caProcessorPaymentAccountOfficeGroup`
--

INSERT INTO `caProcessorPaymentAccountOfficeGroup` (`caProcessorPaymentAccountOfficeGroup_Id`, `Name`)
VALUES
 (3,'BetCRIS');


--
-- Dumping data for table `caProcessorPaymentAccountConfig`
--

INSERT INTO `caProcessorPaymentAccountConfig` (`caProcessorPaymentAccountConfig_Id`, `caProcessorPaymentAccount_Id`, `caCompany_Id`, `caProcessorPaymentAccountOfficeGroup_Id`, `caProcessorClass_Id`, `caProcessor_Id`, `Modified`)
VALUES
 (1,1,NULL,3,5,NULL,'2015-06-03 16:42:12');


--
-- Dumping data for table `caProcessorReferenceType`
--


INSERT INTO `caProcessorReferenceType` (`caProcessorReferenceType_Id`, `Name`, `IsReferenceType`)
VALUES
 (1,'FORMAT_REFERENCE',1),
 (2,'FORMAT_DESCRIPTION',0),
 (3,'FORMAT_REFERENCE_PAYOUTS_PROCESS',1),
 (4,'FORMAT_DESCRIPTION_PAYOUTS_PROCESS',0),
 (5,'FORMAT_REFERENCE_PAYOUTS_CANCEL',1),
 (6,'FORMAT_DESCRIPTION_PAYOUTS_CANCEL',0),
 (7,'FORMAT_REFERENCE_PAYOUTS_CREATE',1),
 (8,'FORMAT_DESCRIPTION_PAYOUTS_CREATE',0),
 (9,'FORMAT_REFERENCE_PAYOUTS_COMPLETED',1),
 (10,'FORMAT_DESCRIPTION_PAYOUTS_PAYMENT_ACCOUNT',0);

--
-- Dumping data for table `caProcessorReference`
--


INSERT INTO `caProcessorReference` (`caProcessorReference_Id`, `caProcessorReferenceType_Id`, `caProcessorClass_Id`, `caProcessor_Id`, `caCompany_Id`, `Value`, `Created`)
VALUES
 (1,1,NULL,NULL,NULL,'[JOURNAL_ID]-[PROC_TRANS_ID]-[TUID]','2015-11-11 21:21:57'),
 (2,2,NULL,NULL,NULL,'[PROC_NAME]-[JOURNAL_ID]-[PROC_TRANS_ID] $[AMOUNT] $[FEE]','2015-05-20 19:53:44'),
 (4,3,NULL,NULL,NULL,'[JOURNAL_ID]-[PROC_TRANS_ID]-[TUID]','2015-11-11 21:22:06'),
 (5,4,NULL,NULL,NULL,'[PROC_NAME]-[JOURNAL_ID] $[AMOUNT] $[FEE]','2015-05-20 19:53:44'),
 (6,5,NULL,NULL,NULL,'[JOURNAL_ID]-[TUID]','2015-11-18 19:50:00'),
 (7,6,NULL,NULL,NULL,'Cancelled PO - [PROC_NAME]-[JOURNAL_ID] $[AMOUNT] $[FEE]','2015-05-20 19:53:45'),
 (13,7,NULL,NULL,NULL,'[JOURNAL_ID]-[TUID]','2015-11-18 19:50:51'),
 (14,8,NULL,NULL,NULL,'[PROC_NAME]-[JOURNAL_ID]-[PROC_TRANS_ID] $[AMOUNT] $[FEE]','2015-11-18 19:51:08'),
 (15,9,NULL,NULL,NULL,'[JOURNAL_ID]-[PROC_TRANS_ID]-[TUID]','2015-11-18 19:51:41'),
 (21,10,NULL,NULL,NULL,'[PROC_NAME]-[JOURNAL_ID]-[PROC_TRANS_ID] $[AMOUNT] $[FEE]','2016-04-19 17:37:41');


--
-- Dumping data for table `caStep`
--


INSERT INTO `caStep` (`caStep_PK`, `caStep_Id`, `Name`, `Description`)
VALUES
 (1,10,'AskAmount','Draw a form to request the amount of the transaction'),
 (2,20,'AskInform','Ask for account information'),
 (3,30,'ConfirmTr','Confirm transaction'),
 (4,40,'InsJournl','Inserted journal and header of transaction'),
 (5,50,'FirstCall','First call processor (save messages)'),
 (6,60,'ReceiveRs','Receive response(save messages)'),
 (7,65,'UpdateHdr','Update the header of transaction'),
 (8,70,'MoveFunds','Move the funds'),
 (9,80,'UpdateJrn','Update the journal'),
 (10,90,'ShowTickt','Show Ticket'),
 (11,120,'VldtProcc','Validates All Data Prior to sending to Processor'),
 (12,110,'NextProcc','Get the next Processor (for example in cascading cases)'),
 (13,200,'VldtBonusCode','Validates that the bonus code entered by the customer is valid. '),
 (14,210,'ApplyBonus','Apply selected Bonus'),
 (15,650,'TryNewPro','In case of Cascading supporting submission to multiple processors, try with next available processor'),
 (16,700,'GotoChild','Execute the first step of Child'),
 (17,119,'VldtAmont','Validates de Amount entered. Bonuscode also if applies.'),
 (18,800,'GotoParent','Execute a defined step of Parent'),
 (20,21,'VldInform','Validates the information entered (CC only)'),
 (21,25,'ChkTerms','Checks if the customer wants to read the terms and conditions'),
 (22,26,'ShowTerms','Show the terms and conditions'),
 (23,300,'ChkRedirect','Checks if the processor needs to be redirected'),
 (24,305,'GotoURL','it sends the customer to a specific url'),
 (25,310,'VldBranch','it validates the branches'),
 (26,900,'EndTrans','final step of the transaction'),
 (27,850,'ReplicateTrans','replicate the transaction'),
 (28,130,'AskExtraInfo','Prompts the customer to enter extra information required by the processor'),
 (29,500,'Wait','Not Autoinvoked step that waits for a signal to start the cycle again'),
 (30,309,'Branch','it branches the steps into two paths'),
 (31,100,'Validate','Generic step used for general validations'),
 (32,140,'AskOption','Step where a number of options are given to the customer and one is chosen'),
 (33,150,'AskControlNumber','Request all control number related information from the customer (P2P Only)'),
 (34,160,'Submit','Submits a request to the processor'),
 (35,170,'Resubmit','Resubmits a request to the processor'),
 (36,320,'Restart','Simulates a restart operation on a given transaction'),
 (37,400,'GetName','Request a new P2P name and process the response (P2P Only)'),
 (38,410,'InsName','Inserts the newly requested name in the database (P2P Only)'),
 (39,420,'UpdateName','Updates the information of a P2P name (P2P Only)'),
 (41,125,'VldtSecurity','Validates the security'),
 (42,330,'Capture','Extra step on CC transactions when Pre-Auth is available');


--
-- Dumping data for table `caStepDecision`
--


INSERT INTO `caStepDecision` (`caStepDecision_Id`, `Decision`, `Description`)
VALUES
 (100,'Has_Deposits','Tells if the customer has successfully deposited in the past'),
 (200,'Confirmed_Transaction','Continues the transaction only if the customer has confirmed that DAta is correct'),
 (300,'Has_PayAccount','It checks if a pay account was preselected for the transaction'),
 (400,'Skip_Ask_Info','Decides if the process has all the required information or some is missing. '),
 (500,'Requires_Extra_Info','Decides if the selected processor needs extra information to be requested. '),
 (600,'Is_Transaction_Complete','Decides whether more calls are required to the processor'),
 (650,'Is_Second_Response','Temp - check if the transaction is complete'),
 (700,'Is_Init_Option','Decides if the initial option in the Options Step was selected'),
 (800,'Is_Gateway_Available','Decides if a valid gateway was extracted from the cascading (P2P)'),
 (850,'Can_Resubmit','Determines if a resubmit is possible or not.'),
 (900,'Can_Capture','Determines if a CC transaction can be recaptured');

--
-- Dumping data for table `caProcessorStep`
--


INSERT INTO `caProcessorStep` (`caProcessorStep_Id`, `caProcessorStep_Header_Id`, `caStep_Id`, `caStepDecision_Id`, `caProcessorStep_Id_Next_True`, `caProcessorStep_Id_Next_False`, `IsAutoInvokeNextStep_True`, `IsAutoInvokeNextStep_False`, `IsValidate`, `caProcessorStep_Id_Fail_Data`, `caProcessorStep_Id_Fail_Exec`)
VALUES
 (1,1,10,NULL,119,90,0,0,1,NULL,90),
 (2,1,20,NULL,30,20,0,0,1,NULL,90),
 (3,1,30,200,125,10,0,0,0,NULL,90),
 (4,1,40,NULL,50,90,1,1,0,NULL,850),
 (5,1,50,NULL,60,90,1,1,0,NULL,850),
 (6,1,60,NULL,65,90,1,1,0,NULL,850),
 (7,1,65,NULL,70,90,1,1,0,NULL,850),
 (8,1,70,NULL,210,90,1,1,0,NULL,850),
 (9,1,80,NULL,850,850,1,1,0,NULL,850),
 (10,1,90,NULL,90,90,0,0,0,NULL,90),
 (11,1,119,NULL,120,90,1,1,1,10,90),
 (15,1,120,400,30,20,1,1,1,90,90),
 (16,1,850,NULL,900,900,1,1,0,NULL,900),
 (17,1,900,NULL,90,90,1,1,0,NULL,90),
 (110,2,20,NULL,25,90,0,0,0,NULL,90),
 (111,2,21,NULL,110,90,1,1,1,20,90),
 (112,2,25,NULL,26,90,1,1,1,21,90),
 (113,2,26,NULL,20,90,0,0,0,NULL,20),
 (115,2,110,NULL,120,90,1,1,0,NULL,30),
 (117,2,120,500,130,30,1,1,1,110,90),
 (120,2,30,200,125,20,0,0,0,NULL,90),
 (125,2,700,NULL,40,90,1,1,0,0,90),
 (126,2,850,NULL,900,90,1,1,0,NULL,900),
 (127,2,900,NULL,90,90,1,1,0,NULL,90),
 (130,3,40,NULL,50,800,1,1,0,NULL,800),
 (140,3,50,NULL,60,800,1,1,0,NULL,800),
 (150,3,60,NULL,65,800,1,1,0,NULL,800),
 (160,3,65,NULL,70,800,1,1,0,NULL,800),
 (170,3,70,NULL,210,800,1,1,0,NULL,800),
 (180,3,80,NULL,800,800,1,1,0,NULL,800),
 (190,2,90,900,330,90,0,0,0,NULL,90),
 (200,3,800,NULL,850,850,1,1,0,NULL,800),
 (500,5,20,NULL,10,20,0,0,1,20,90),
 (501,5,10,NULL,30,90,1,1,0,90,90),
 (502,5,30,200,40,20,0,0,0,NULL,90),
 (503,5,40,NULL,50,90,1,1,0,NULL,850),
 (504,5,50,NULL,60,90,1,1,0,NULL,850),
 (505,5,60,NULL,65,90,1,1,0,NULL,850),
 (506,5,65,NULL,70,90,1,1,0,NULL,850),
 (507,5,70,NULL,80,90,1,1,0,NULL,850),
 (508,5,80,NULL,850,850,1,1,0,NULL,850),
 (509,5,90,NULL,90,90,0,0,0,NULL,90),
 (510,5,850,NULL,900,900,1,1,0,NULL,900),
 (511,5,900,NULL,90,90,1,1,0,NULL,90),
 (512,6,90,NULL,90,90,0,0,0,NULL,90),
 (513,7,10,NULL,119,10,0,0,1,NULL,90),
 (514,7,119,400,120,20,1,1,1,10,90),
 (515,7,20,NULL,120,20,0,0,1,NULL,90),
 (516,7,120,NULL,30,90,1,1,1,90,90),
 (517,7,30,200,200,10,0,0,0,NULL,90),
 (518,7,40,NULL,50,90,1,1,0,NULL,850),
 (519,7,50,NULL,305,90,1,1,0,NULL,90),
 (520,7,305,NULL,310,90,0,0,0,NULL,850),
 (521,7,310,NULL,60,90,1,1,1,90,850),
 (522,7,60,NULL,65,90,1,1,0,NULL,850),
 (523,7,65,NULL,70,90,1,1,0,NULL,850),
 (524,7,70,NULL,210,90,1,1,0,NULL,850),
 (525,7,80,NULL,850,850,1,1,0,NULL,850),
 (526,7,90,NULL,90,90,0,0,0,NULL,90),
 (527,8,10,NULL,119,10,0,0,1,NULL,90),
 (528,8,119,400,120,20,1,1,1,10,90),
 (529,8,20,NULL,120,20,0,0,1,NULL,90),
 (530,8,120,NULL,30,90,1,1,1,90,90),
 (531,8,30,200,200,10,0,0,0,NULL,90),
 (532,8,40,NULL,50,90,1,1,0,NULL,850),
 (533,8,50,NULL,60,90,1,1,0,NULL,90),
 (534,8,305,NULL,310,90,0,0,0,NULL,850),
 (535,8,310,NULL,60,90,1,1,1,90,850),
 (536,8,60,600,65,300,1,1,0,NULL,850),
 (537,8,65,NULL,70,90,1,1,0,NULL,850),
 (538,8,70,NULL,210,90,1,1,0,NULL,850),
 (539,7,850,NULL,900,900,1,1,0,NULL,900),
 (540,7,900,NULL,900,900,0,0,0,NULL,900),
 (541,2,130,NULL,30,90,0,0,1,NULL,90),
 (542,9,20,NULL,25,90,0,0,0,NULL,90),
 (543,9,119,300,21,20,1,1,1,10,90),
 (544,9,10,NULL,119,90,0,0,1,NULL,90),
 (545,9,21,NULL,120,90,1,1,1,20,90),
 (546,9,25,NULL,26,90,1,1,1,21,90),
 (547,9,26,NULL,20,90,0,0,0,NULL,20),
 (550,9,30,200,200,20,0,0,0,NULL,90),
 (552,9,850,NULL,900,900,1,1,0,NULL,900),
 (553,9,900,NULL,90,90,1,1,0,NULL,90),
 (554,9,90,NULL,90,90,0,0,0,NULL,90),
 (556,9,40,NULL,50,850,1,1,0,NULL,850),
 (557,9,50,NULL,60,850,1,1,0,NULL,850),
 (558,9,60,NULL,65,850,1,1,0,NULL,850),
 (559,9,65,NULL,70,850,1,1,0,NULL,850),
 (560,9,70,NULL,210,850,1,1,0,NULL,850),
 (561,9,80,NULL,850,850,1,1,0,NULL,850),
 (563,10,10,0,119,10,0,0,1,0,90),
 (578,10,119,400,30,20,1,1,1,10,90),
 (579,10,20,0,30,20,0,0,1,0,90),
 (580,10,30,200,40,10,0,0,0,0,90),
 (581,10,40,0,50,90,1,1,0,0,850),
 (582,10,50,0,309,90,1,1,0,0,850),
 (583,10,60,600,65,310,1,1,1,0,850),
 (584,10,65,NULL,70,90,1,1,0,NULL,850),
 (585,10,90,0,90,90,0,0,0,0,90),
 (586,10,310,0,500,90,1,1,1,300,850),
 (587,10,70,NULL,80,90,1,1,0,NULL,850),
 (588,10,80,0,850,850,1,1,0,0,850),
 (589,10,850,0,900,900,1,1,0,0,900),
 (590,10,900,0,90,90,1,1,0,0,90),
 (591,10,500,0,60,90,0,0,0,0,90),
 (592,14,40,NULL,50,90,1,1,0,NULL,90),
 (593,14,50,NULL,60,90,1,1,0,NULL,850),
 (594,14,300,NULL,305,90,1,1,1,65,850),
 (595,14,305,NULL,310,90,0,0,0,NULL,850),
 (596,14,310,NULL,60,90,1,1,1,90,850),
 (597,14,60,650,65,300,1,1,0,NULL,850),
 (598,14,65,NULL,70,90,1,1,0,NULL,850),
 (599,14,70,NULL,210,90,1,1,0,NULL,850),
 (600,14,80,NULL,850,90,1,1,0,NULL,850),
 (601,14,850,NULL,900,90,1,1,0,NULL,900),
 (602,14,900,NULL,90,90,1,1,0,NULL,90),
 (603,14,90,NULL,90,90,0,0,0,NULL,90),
 (604,11,100,NULL,140,90,1,1,1,150,90),
 (605,11,140,700,20,150,0,0,0,NULL,90),
 (606,11,20,NULL,110,20,0,0,1,20,90),
 (607,11,110,NULL,120,90,1,1,0,0,90),
 (608,11,120,800,30,90,1,1,1,110,90),
 (609,11,30,700,700,200,0,0,0,NULL,90),
 (610,11,700,NULL,40,90,1,1,0,0,90),
 (611,11,320,NULL,90,90,1,1,0,NULL,90),
 (612,11,90,NULL,90,90,0,0,0,NULL,90),
 (613,11,150,NULL,30,90,0,0,1,NULL,90),
 (614,12,40,NULL,400,800,1,1,0,NULL,800),
 (615,12,400,NULL,410,800,1,1,0,NULL,800),
 (616,12,410,NULL,309,800,1,1,0,NULL,800),
 (617,12,160,NULL,420,850,1,1,0,NULL,850),
 (618,12,420,NULL,60,850,1,1,0,NULL,850),
 (619,12,60,600,65,60,0,0,0,NULL,850),
 (620,12,65,NULL,70,850,1,1,0,NULL,850),
 (621,12,70,NULL,210,850,1,1,0,NULL,850),
 (622,12,80,NULL,850,850,1,1,0,NULL,850),
 (623,12,800,NULL,90,90,1,1,0,NULL,90),
 (624,12,310,NULL,160,800,1,1,1,800,800),
 (625,12,850,NULL,900,900,1,1,0,NULL,900),
 (626,12,900,850,170,900,0,0,0,NULL,900),
 (627,12,170,NULL,420,850,1,1,0,NULL,850),
 (628,12,309,NULL,310,850,1,1,0,NULL,850),
 (633,15,10,NULL,119,10,0,0,1,NULL,90),
 (634,15,119,700,20,30,1,1,1,10,90),
 (635,15,40,NULL,50,90,1,1,0,NULL,850),
 (636,15,50,700,305,60,1,1,0,NULL,850),
 (637,15,305,NULL,310,90,0,0,0,NULL,850),
 (638,15,310,NULL,60,90,1,1,1,90,850),
 (639,15,60,NULL,65,90,1,1,0,NULL,850),
 (640,15,65,NULL,70,90,1,1,0,NULL,850),
 (641,15,70,NULL,80,90,1,1,0,NULL,850),
 (642,15,80,NULL,850,850,1,1,0,NULL,850),
 (643,15,90,NULL,90,90,0,0,0,NULL,90),
 (644,15,850,NULL,900,900,1,1,0,NULL,900),
 (645,15,900,NULL,90,90,1,1,0,NULL,90),
 (646,15,30,200,40,10,0,0,0,NULL,90),
 (647,15,20,NULL,30,20,0,0,1,NULL,90),
 (648,13,40,NULL,50,900,1,1,0,NULL,90),
 (649,13,50,NULL,305,900,1,1,0,NULL,850),
 (650,13,305,NULL,310,900,0,0,0,NULL,850),
 (651,13,310,NULL,60,900,1,1,1,800,850),
 (652,13,60,NULL,65,900,1,1,0,NULL,850),
 (653,13,65,NULL,70,900,1,1,0,NULL,850),
 (654,13,70,NULL,210,900,1,1,0,NULL,850),
 (655,13,80,NULL,850,900,1,1,0,NULL,850),
 (656,13,850,NULL,900,900,1,1,0,NULL,900),
 (657,13,900,NULL,900,900,0,0,0,NULL,900),
 (658,13,800,NULL,90,90,1,1,0,NULL,90),
 (660,2,125,NULL,200,90,1,1,1,700,90),
 (661,10,309,0,60,90,1,1,0,0,90),
 (662,10,300,0,305,90,1,1,1,90,90),
 (663,10,305,0,90,90,0,0,0,0,90),
 (664,2,330,NULL,90,90,1,1,0,NULL,90),
 (665,9,120,NULL,30,90,1,1,1,90,90),
 (666,16,10,0,119,10,0,0,1,0,90),
 (667,16,119,400,30,20,1,1,1,10,90),
 (668,16,20,0,30,20,0,0,1,0,90),
 (669,16,30,200,40,10,1,1,0,0,90),
 (670,16,40,0,50,90,1,1,0,0,850),
 (671,16,50,0,309,90,1,1,0,0,850),
 (672,16,60,600,65,310,1,1,1,0,850),
 (673,16,65,NULL,70,90,1,1,0,NULL,850),
 (674,16,90,0,90,90,0,0,0,0,90),
 (675,16,310,0,500,90,1,1,1,300,850),
 (676,16,70,NULL,80,90,1,1,0,NULL,850),
 (677,16,80,0,850,850,1,1,0,0,850),
 (678,16,850,0,900,900,1,1,0,0,900),
 (679,16,900,0,90,90,1,1,0,0,90),
 (680,16,500,0,60,90,0,0,0,0,90),
 (681,16,309,0,60,90,1,1,0,0,90),
 (682,16,300,0,305,90,1,1,1,90,90),
 (683,16,305,0,90,90,0,0,0,0,90),
 (685,2,200,NULL,700,90,1,1,1,700,90),
 (687,3,210,NULL,80,800,1,1,0,NULL,80),
 (688,13,210,NULL,80,900,1,1,0,NULL,80),
 (689,14,210,NULL,80,90,1,1,0,NULL,80),
 (690,11,200,NULL,320,90,1,1,1,320,90),
 (691,12,210,NULL,80,850,1,1,0,NULL,80),
 (692,1,200,NULL,40,90,1,1,1,40,40),
 (693,1,210,NULL,80,90,1,1,0,NULL,80),
 (695,7,200,NULL,40,90,1,1,1,40,40),
 (696,7,210,NULL,80,90,1,1,0,NULL,80),
 (697,9,200,NULL,40,90,1,1,1,40,40),
 (698,9,210,NULL,80,90,1,1,0,NULL,80),
 (699,20,20,NULL,119,90,0,0,1,NULL,90),
 (700,20,30,NULL,200,90,0,0,0,NULL,90),
 (701,20,40,NULL,50,90,1,1,0,NULL,850),
 (702,20,50,NULL,60,90,1,1,0,NULL,850),
 (703,20,60,NULL,65,90,1,1,0,NULL,850),
 (704,20,65,NULL,70,90,1,1,0,NULL,850),
 (705,20,70,NULL,210,90,1,1,0,NULL,80),
 (706,20,80,NULL,850,850,1,1,0,NULL,850),
 (707,20,90,NULL,90,90,0,0,0,NULL,90),
 (708,20,120,NULL,30,90,1,1,1,90,90),
 (709,20,850,NULL,900,900,1,1,0,NULL,900),
 (710,20,900,NULL,90,90,1,1,0,NULL,90),
 (711,20,200,NULL,40,900,1,1,1,40,90),
 (712,20,210,NULL,80,90,1,1,0,NULL,850),
 (713,20,119,NULL,120,90,1,1,1,20,90),
 (714,21,20,NULL,119,90,0,0,1,NULL,90),
 (715,21,30,NULL,700,90,0,0,0,NULL,90),
 (716,21,110,NULL,120,90,1,1,0,NULL,90),
 (717,21,120,NULL,30,90,1,1,1,110,90),
 (718,21,700,NULL,40,90,1,1,0,NULL,90),
 (719,21,850,NULL,900,90,1,1,0,NULL,900),
 (720,21,900,NULL,90,90,1,1,0,NULL,90),
 (721,21,90,NULL,90,90,0,0,0,NULL,90),
 (722,21,119,NULL,110,90,1,1,1,20,90),
 (723,22,40,NULL,50,800,1,1,0,NULL,800),
 (724,22,50,NULL,60,800,1,1,0,NULL,800),
 (725,22,60,NULL,65,800,1,1,0,NULL,800),
 (726,22,65,NULL,70,800,1,1,0,NULL,800),
 (727,22,70,NULL,80,800,1,1,0,NULL,80),
 (728,22,80,NULL,800,800,1,1,0,NULL,800),
 (729,22,800,NULL,850,850,1,1,0,NULL,800),
 (730,21,40,NULL,50,800,1,1,0,NULL,850),
 (731,21,50,NULL,60,800,1,1,0,NULL,850),
 (732,21,60,NULL,65,800,1,1,0,NULL,850),
 (733,21,65,NULL,70,800,1,1,0,NULL,850),
 (734,21,70,NULL,80,800,1,1,0,NULL,80),
 (735,21,80,NULL,850,800,1,1,0,NULL,90),
 (740,1,125,NULL,200,90,1,1,1,850,90),
 (741,4,20,NULL,119,20,0,0,1,NULL,90),
 (742,4,119,NULL,120,20,1,1,1,10,90),
 (743,4,120,NULL,30,90,1,1,1,90,90),
 (744,4,30,NULL,200,10,0,0,0,NULL,90),
 (745,4,200,NULL,40,90,1,1,1,40,40),
 (746,4,40,NULL,50,90,1,1,0,NULL,850),
 (747,4,50,NULL,305,90,1,1,0,NULL,90),
 (748,4,305,NULL,310,90,0,0,0,NULL,850),
 (749,4,310,NULL,60,90,1,1,1,90,850),
 (750,4,60,NULL,65,90,1,1,0,NULL,850),
 (751,4,65,NULL,70,90,1,1,0,NULL,850),
 (752,4,70,NULL,210,90,1,1,0,NULL,850),
 (753,4,210,NULL,80,90,1,1,0,NULL,80),
 (754,4,80,NULL,850,850,1,1,0,NULL,850),
 (755,4,850,NULL,900,900,1,1,0,NULL,900),
 (756,4,900,NULL,900,900,0,0,0,NULL,900),
 (757,4,90,NULL,90,90,0,0,0,NULL,90),
 (758,8,80,NULL,850,850,1,1,0,NULL,850),
 (759,8,90,NULL,90,90,0,0,0,NULL,90),
 (760,8,850,NULL,900,900,1,1,0,NULL,900),
 (761,8,900,NULL,90,90,1,1,0,NULL,90),
 (762,8,200,NULL,40,90,1,1,1,40,40),
 (763,8,210,NULL,80,90,1,1,0,NULL,80),
 (764,8,300,NULL,305,90,1,1,1,65,90);


--
-- Dumping data for table `caRestrictedItemType`
--


INSERT INTO `caRestrictedItemType` (`caRestrictionItemType_Id`, `Name`, `DisplayName`)
VALUES
 (1,'Company','Company'),
 (2,'Customer','Customer'),
 (3,'Processor','Processor'),
 (4,'ProcessorClass','Processor Class'),
 (5,'ProcessorSkin','Processor Skin'),
 (6,'SoftwareProviderCompany','Book'),
 (7,'System','System'),
 (8,'Agent','Agent');


--
-- Dumping data for table `caRestrictionApplicabilityType`
--


INSERT INTO `caRestrictionApplicabilityType` (`caRestrictionApplicabilityType_Id`, `Name`)
VALUES
 (1,'Country'),
 (2,'Vip'),
 (3,'TransType'),
 (4,'Company'),
 (5,'Platform');


--
-- Dumping data for table `caRestrictionFilterType`
--


INSERT INTO `caRestrictionFilterType` (`caRestrictionFilterType_Id`, `Name`, `DisplayName`)
VALUES
 (1,'Account','Account'),
 (2,'BIN','BIN'),
 (3,'Country','Country'),
 (4,'Currency','Currency'),
 (5,'Email','Email'),
 (6,'IP','IP'),
 (7,'LoyaltyTier','Loyalty'),
 (8,'Processor','Processor'),
 (9,'ProcessorClass','Processor Class'),
 (10,'SoftwareProviderCompany','Book'),
 (11,'State','State'),
 (12,'Vip','VIP'),
 (13,'BankSwift','Bank Swift'),
 (14,'Amount','Amount'),
 (15,'CustomerName','Customer Name'),
 (16,'ProcessorSkin','Processor Skin'),
 (17,'TransType','Transaction Type');


--
-- Dumping data for table `caSecurityProvider`
--


INSERT INTO `caSecurityProvider` (`caSecurityProvider_Id`, `Name`, `IsActive`, `Order`)
VALUES
 (1,'AcuityTec','',2),
 (2,'Aristotle','\0',1);


--
-- Dumping data for table `caSecurityProviderCompany`
--


INSERT INTO `caSecurityProviderCompany` (`caSecurityProvider_Id`, `caCompany`, `IsActive`)
VALUES
 (1,1,1),
 (2,1,1);

--
-- Dumping data for table `caSecurityProviderSetting`
--


INSERT INTO `caSecurityProviderSetting` (`caSecurityProviderSetting_Id`, `caSecurityProvider_Id`, `caCompany_Id`, `ProviderURL`, `ProviderUsr`, `ProviderPwd`)
VALUES
 (2,1,1,'http://10.20.5.11/api/','BMR-i3Vea4BmFx','i37T2N37ICi69nF'),
 (8,2,1,'https://www.integrity-direct.com/online/authentication_url.asp','','SIDJ13GG22151033201036290715917268841710');


--
-- Dumping data for table `caSoftwareProviderLoyaltyTier`
--


INSERT INTO `caSoftwareProviderLoyaltyTier` (`caSoftwareProviderLoyaltyTier_Id`, `Name`, `IsActive`)
VALUES
 (1040,'Gold',1),
 (1041,'Platinum',1),
 (1042,'Diamond',1);



--
-- Dumping data for table `caSoftwareProviderUrl`
--


INSERT INTO `caSoftwareProviderUrl` (`caSoftwareProviderUrl_Id`, `caSoftwareProvider_Id`, `Group_Id`, `Url`, `TimeOut`, `Server`)
VALUES
 (23,24,20,'http://midasdgs.svcs.im-dmz.priv/WSDGSRemoteServer.asmx/ProcessTransaction',NULL,'*'),
 (24,24,10,'http://10.20.3.3:1012/PlayerMiscSvc.asmx/GetPlayerDetails',NULL,'*'),
 (25,24,40,'http://10.20.3.3:1018/Loyalty.asmx/PlayerEnableBPsExchange',NULL,'*'),
 (26,24,50,'http://10.20.3.3:8001/CustomerInfo.asmx',NULL,'*'),
 (32,24,60,'http://midas1.im.priv/ws_sports/LimitsEvaluation.asmx/',NULL,'*'),
 (33,24,70,'http://midas1.im.priv/ws_sports/MidasService.asmx/',NULL,'*'),
 (41,24,100,'http://midas1.im.priv/ws_sports/MidasCashier.asmx?WSDL',NULL,'*'),
 (42,24,110,'http://10.20.3.3:1053/Midas.asmx/GetPlayerNotes',NULL,'*'),
 (43,24,30,'http://10.20.3.3:1018/Loyalty.asmx',NULL,'*'),
 (44,24,120,'http://10.20.3.3:1001/PlayerSvc.asmx',NULL,'*');

--
-- Dumping data for table `caStatusCode`
--


INSERT INTO `caStatusCode` (`caStatusCode_Id`, `Description`)
VALUES
 (0,'Unknown'),
 (1,'Pending'),
 (2,'Approved'),
 (3,'Rejected'),
 (4,'Failed'),
 (5,'Processing'),
 (6,'Problem'),
 (7,'ChargedBack'),
 (8,'Canceled'),
 (9,'Void'),
 (10,'Initial State'),
 (11,'Cleared'),
 (12,'Resubmit'),
 (13,'Fraud'),
 (14,'Bounce'),
 (15,'SecurityReversed'),
 (16,'Iovation'),
 (17,'PAPERNO'),
 (18,'FreePlay'),
 (19,'Forms_Request'),
 (20,'DIRECTXFER1ST'),
 (21,'Notification_PromoName'),
 (22,'PreApproved'),
 (23,'Processing Pre-Approved'),
 (24,'Problem Pre-Approved'),
 (25,'Rejected Pre-approved'),
 (26,'Canceled Pre-approved'),
 (32,'EPOSREDIR'),
 (33,'EPOSREDIR denied'),
 (34,'EPOSREDIR failed'),
 (40,'Abandoned'),
 (500,'Name_RequestedContent');



--
-- Dumping data for table `caTaskMaintenanceType`
--


INSERT INTO `caTaskMaintenanceType` (`caTaskMaintenanceType_Id`, `Type`)
VALUES
 (1,'System'),
 (2,'Processor');


--
-- Dumping data for table `caTransactionReferenceType`
--


INSERT INTO `caTransactionReferenceType` (`caTransactionReferenceType_Id`, `Name`)
VALUES
 (1,'DEPOSIT'),
 (2,'PAYOUT'),
 (3,'DEPOSIT_FEES'),
 (4,'PAYOUT_FEES'),
 (5,'DEPOSIT_FEES_BETPOINTS'),
 (6,'PAYOUT_FEES_BETPOINTS'),
 (7,'PAYOUT_CANCEL'),
 (8,'PAYOUT_FEES_CANCEL'),
 (9,'PAYOUT_FEES_BETPOINTS_CANCEL');


--
-- Dumping data for table `caTransactionRejectReasonGroup`
--


INSERT INTO `caTransactionRejectReasonGroup` (`caTransactionRejectReasonGroup_Id`, `Name`)
VALUES
 (1,'Default'),
 (2,'CC'),
 (3,'RO');


--
-- Dumping data for table `caTransactionRejectReasonType`
--


INSERT INTO `caTransactionRejectReasonType` (`caTransactionRejectReasonType_Id`, `caTransactionRejectReasonGroup_Id`, `Description`)
VALUES
 (1,1,'Pending certification'),
 (2,1,'72 hour rule transfer'),
 (3,1,'72 hour rule deposit'),
 (4,1,'Withdrawal amount exceeds state limit'),
 (5,1,'7 Day Rule'),
 (6,1,'You do not have fees to cover the transaction'),
 (7,1,'Funds from a Transfer'),
 (8,1,'Funds from a Deposit'),
 (9,1,'IP mismatch'),
 (10,1,'Address mismatch'),
 (11,1,'You owe money due to disputed deposits'),
 (12,1,'Uses a different receiver or address'),
 (13,1,'PO Box address listed instead of a physical address'),
 (14,1,'10k Max for 7C payouts'),
 (15,1,'Max for Bitcoin address'),
 (16,1,'Invalid address'),
 (17,1,'Card is prepaid'),
 (18,1,'No wires to X bank'),
 (19,1,'No intermediary banks'),
 (20,1,'Screenshot verification'),
 (21,2,'Pending Documents CC'),
 (22,3,'Incomplete Roll over'),
 (23,1,'Deposit method to match cash out method'),
 (24,1,'Generic Cancellation'),
 (25,2,'Pending Docs: New CC deposit'),
 (26,1,'Affiliate must use BTC'),
 (27,1,'Generic Cancellation - Sports'),
 (28,1,'New BTC Address '),
 (30,1,'BetCRIS - Pending certification'),
 (31,1,'BetCRIS - Screenshot verification'),
 (32,3,'BetCRIS - Incomplete Roll over'),
 (33,1,'BetCRIS - Deposit method to match cash out method'),
 (34,2,'BetCRIS - Pending Docs Partial CC'),
 (35,2,'Pending Documents: CC depositor');


--
-- Dumping data for table `caTransactionRejectReasonTypeTranslation`
--


INSERT INTO `caTransactionRejectReasonTypeTranslation` (`caTransactionRejectReasonTypeTranslation_Id`, `caTransactionRejectReasonType_Id`, `caLanguage_Id`, `Name`, `Translation`)
VALUES
 (1,1,11,'Pending certification','Before requesting your withdrawal, you must verify your account by sending us a copy of your ID and utility bill.'),
 (2,2,11,'72 hour rule transfer','Players must allow 72 hours after a recent player to payer transfer or deposit to request a withdrawal. You are welcome to place a new cash out 72 hours after your last player to player transfer.'),
 (3,3,11,'72 hour rule deposit','Players must allow 72 hours after a recent deposit to request a withdrawal. You are welcome to place a new cash out 72 hours after your last deposit.'),
 (4,4,11,'Withdrawal amount exceeds state limit','Your recent withdrawal request has been cancelled and the funds have been added to your account balance since your payout exceeded the limit permitted by WU/MG to your state of residence. The permitted limits vary from state to state, please contact support to retrieve your local payout limit.'),
 (5,5,11,'7 Day Rule','You can only request one payout every 7 days, regardless of the method. Therefore, your request has been rejected and the funds were returned to your account balance.\r\n\r\nYour cash out options have been disabled while we receive a confirmation from you on this matter.'),
 (6,6,11,'You do not have fees to cover the transaction','We had to cancel your recent payout since you do not have sufficient funds to cover the fee for it.'),
 (7,7,11,'Funds from a Transfer','Be kindly advised that your withdrawal is based on a player to player transfer. Funds received from player to player transfers are meant for you to fund your account in order to access the games we offer. You can cash out any earnings coming from our games but you must generate at least 10% of rake revenue over the amount transferred to be eligible for a payout.'),
 (8,8,11,'Funds from a Deposit','Be kindly advised that your withdrawal is based on a recent deposit. Funds deposited are meant for you to fund your account in order to access the games we offer. You can cash out any earnings coming from our games but you must generate at least 10% of rake revenue over the amount deposited to be eligible for a payout.'),
 (9,9,11,'IP mismatch','For security purposes we need you to verify your current location before processing a payout through your account.'),
 (10,10,11,'Address mismatch','Unfortunately we cannot process your payout since the address registered in your account is different from the one you requested your check be delivered to.'),
 (11,11,11,'You owe money due to disputed deposits','Your payout has been cancelled since we had pending card transactions that did not clear from your deposit history. Please call us TOLL FREE at [COMPANY_PHONE_CS] so we can review this with you.'),
 (12,12,11,'Uses a different receiver or address','As a commitment to keeping your account safe, we can only send payouts to the information listed on your account. Please resubmit your transaction with details that match your profile.'),
 (13,13,11,'PO Box address listed instead of a physical address','Unfortunately we cannot process your payout since the address registered in your account is a PO Box. Please update your information to a physical address and place a new payout request.'),
 (14,14,11,'10k Max for 7C payouts','You have exceeded the cumulative transaction threshold of $10,000 in the last 30 days for your debit card.'),
 (15,15,11,'Max for Bitcoin address','You have exceeded the cumulative transaction threshold of $25,000 in the last 12 months to the same BitCoin address.'),
 (18,16,11,'Invalid address','When we tried to process your payment, it appears that the address you requested your check is not a physical address.\r\nFor security purposes, our banking institutions require that our checks are not sent to PO Boxes.\r\nPlease make sure to request your check to a physical address, so that we can send your payment to your earliest convenience.'),
 (19,17,11,'Card is prepaid','The current payment restrictions demand that our payments for Pay2Card are only sent to regular debit or credit cards.\r\nPlease request your payment to a card that is not a prepaid or gift card, so that your payment arrives as soon as possible.'),
 (20,18,11,'No wires to X bank','Due to international restrictions and to ensure your wire is received as quickly as possible, our banking institutions will not send a bank wire transfer to Bank of America or Credit Unions.\r\nPlease request your payout to another bank; we will be happy to proceed.'),
 (21,19,11,'No intermediary banks','Due to international restrictions and to ensure your wire is received as quickly as possible, our banking institutions will not send a bank wire transfer when intermediary institutions are included.\r\nPlease request your payment again, making sure that the transfer is directed only at one bank.'),
 (22,20,11,'Screenshot verification','In order to proceed with your payment, for security and verification purposes, we require:\r\n\r\n- Screenshot of your [TRANSACTION_PROC_NAME] account, showing the account holder’s information and account number, to ensure the receiving account is under your name.\r\n'),
 (23,1,33,'Certificación pendiente','Antes de solicitar su retiro, necesitamos que certifique su cuenta enviándonos una copia de su documento de identidad y de una factura de servicios públicos.'),
 (24,2,33,'Regla transferencial de las 72 horas','Antes de realizar algún retiro de dinero el jugador debe esperar 72 horas posteriormente a una transferencia de “jugador a jugador” o un depósito reciente. '),
 (25,3,33,'Regla depósito de las 72 horas','Antes de realizar algún retiro de dinero el jugador debe esperar 72 horas posteriormente a un depósito. Le invitamos a realizar un nuevo pago de 72 horas después de su último depósito.'),
 (26,4,33,'Monto del retiro sobrepasa el límite','Su retiro de dinero sobrepasa los límites establecidos, por tanto este será cancelado y los fondos serán reintegrados a su cuenta. Tenga en consideración que los límites varían según el Estado en el que se encuentre. Si necesita saber más acerca de los límites según su locación por favor contacte a nuestro departamento de Servicio al Cliente.'),
 (27,5,33,'Regla de los 7 días','Si desea realizar un retiro de dinero tome en consideración que puede hacer la solicitud una vez cada siete días, independientemente del método que deseé utilizar. Por consiguiente, si esta regla no se cumpliese su solicitud será cancelada y los fondos serán reintegrados a su cuenta.\r\n\r\nPor otro lado, las opciones de retiro serán bloqueadas temporalmente hasta que se reciba una confirmación del cliente indicando que ha entendido dicha política.\r\n'),
 (28,6,33,'Importe de las transacciones','Recuerde que cada retiro tendrá consigo un importe que será deducido en el momento en que se haga efectivo el retiro. Si ese monto no estuviese disponible al momento de procesar la transacción, entonces dicha solicitud será cancelada y el dinero será reintegrado a su cuenta. '),
 (29,7,33,'Fondos provenientes de una transferencia de Jugador a Jugador','En el caso que los fondos a retirar provengan de una transferencia de otro jugador, dicha solicitud será cancelada.  Si desea realizar un retiro los fondos deben de provenir de las ganancias obtenidas en nuestras mesas, en el caso de haber una transferencia de otro jugador de por medio entonces será necesario generar 10% de rake sobre el monto transferido. '),
 (30,8,33,'Fondos provenientes de un depósito','En el caso que los fondos a retirar provengan de un depósito realizado debe tomar en cuenta que necesita generar un 10% de rake sobre ese depósito, de no ser así la solicitud de retiro será cancelada y los fondos serán reintegrados a su cuenta.'),
 (31,9,33,'Discordancia de la dirección IP','Por la seguridad de su cuenta hemos procedido a cancelar su solicitud de retiro. Hemos encontrado una discordancia entre la dirección IP registrada en su cuenta y la de donde vemos que ha estado accesando su cuenta.   '),
 (32,10,33,'Discordancia (desajuste) de dirección','Su retiro ha sido temporalmente cancelado, le informamos que tenemos una discordancia entre la dirección registrada en su cuenta y a la que ha solicitado su cheque. Por la seguridad de nuestros clientes los pagos se enviarán únicamente a la dirección registrada en la cuenta. '),
 (33,11,33,'Usted debe dinero debido a depósitos disputados','Su retiro ha sido cancelado debido a que tuvimos transacciones de tarjeta pendientes que no fueron completadas o no se procesaron exitosamente de su historial de depósito. Por favor llámenos a nuestra línea GRATIS [COMPANY_PHONE_CS] para que podamos revisar lo anteriormente mencionado con usted.'),
 (34,12,33,'Usa un receptor o dirección diferente','Por la seguridad de su cuenta, solo podemos enviarle los retiros de dinero a la persona registrada dentro de la información de su cuenta. Por ende le solicitamos por favor vuelva a realizar su solicitud de retiro con detalles que concuerden con su perfil.'),
 (35,13,33,'Dirección de PO BOX','Desafortunadamente no podemos procesar su retiro debido a que la dirección registrada en su cuenta es un “PO Box”. Por favor actualice su información a una dirección física y solicite un nuevo retiro.'),
 (36,14,33,'Límite de 10K máximo para retiros de 7C','Usted ha excedido el límite de transacción acumulativo de $10,000 en los últimos 30 días con su tarjeta de débito. '),
 (37,15,33,'Máximo para direcciones de BitCoin','Usted ha excedido el límite de transacción acumulativo de $25,000 en los últimos 12 meses a la misma dirección de BitCoin.'),
 (39,22,11,'Incomplete Roll over','It appears that from the free plays granted to your account, there is still roll over action required before we can proceed with your payment. At this point, your account needs [ROLL_OVER_AMOUNT] before your payout is successfully processed! '),
 (43,24,11,'Generic Cancellation','This was completed as per your request through our contact center\'s points of contact'),
 (44,24,33,'Cancelación Generica','Esto se completó según su petición a través de los puntos de nuestro centro de contacto.'),
 (45,23,11,'Deposit method to match cash out method','In order to proceed with your payment, for security and verification purposes, we require you to cash out through the same method you have used to deposit:  [TRANSACTION_PROC_NAME]'),
 (46,23,33,'Método de depósito no coincide con el método de retiro','Con el fin de proceder a su pago, por motivos de seguridad y verificación, le invitamos a hacer su retiro por el mismo método que se ha utilizado para el depósito: [TRANSACTION_PROC_NAME]'),
 (47,16,33,'Dirección Invalida','Lo sentimos! Hemos intentado procesar su pago, sin embargo la dirección registrada en la cuenta nos impide continuar con el proceso. Por cuestiones de seguridad y restrictiones de nuestro ente bancario no podemos procesar pagos a direcciones PO. Box   Favor registre su dirección física y vuelva a solicitar su retiro. '),
 (48,17,33,'Tarjeta Prepago','Lo sentimos! Los pagos mediante Pay 2 Card pueden ser realizados únicamente a tarjetas de Crédito o Débito.  Por favor vuelva a solicitar su retiro  a una tarjeta que no sea pre pre pagada o de regalo para que este sea procesado a la brevedad posible. '),
 (49,18,33,'No wires to X bank','Debido a restricciones internationales y para asegurarnos que su transferencia sea recibida en la brevedad posible nuestro ente bancario no procesa envios a Bank of America o a Credit Unions.  Favor volver a solicitar su retiro utilizando otro banco para poder procesar su pago a la brevedad posible. '),
 (50,19,33,'Banco intermediario','Debido a restricciones internationales y para asegurarnos que su transferencia sea recibida en la brevedad posible nuestro ente bancario no procesa envios cuando hay otras instituciones bancarias de intermediarias.  Por favor, solicite nuevamente utilizando únicamente su ente bancario.'),
 (51,20,33,'Screenshot Verification','Por motivos de seguridad, para poder procesar su pago necesitamos: Una imagen digital de  [TRANSACTION_PROC_NAME] cuenta, mostrando la cuenta bajo su nombre para asegurar que la cuenta que recibe los fondos esta a su nombre. '),
 (53,22,33,'Roll over incompleto','Lo sentimos! En estos momentos su pago no puede ser procesado debido a que no cumple con el requisito de juego. Para poder procesar su retiro la cuenta necesita complir con [ROLL_OVER_AMOUNT]'),
 (54,1,41,'Pending Certification','Antes de solicitar seu pagamento, precisamos uma copia de uma identificação com foto e copia recente de uma conta de serviço público com seu endereço.'),
 (55,2,41,'72 hour rule transfer','Os jogadores devem aguardar 72 horas após uma transferência \"jogador para jogador\" ou um depósito recente para solicitar uma retirada. '),
 (56,3,41,'72 hour rule deposit','Os jogadores devem aguardar 72 horas após um depósito recente para solicitar uma retirada. \r\nQuantidade retirada excede o limite de estado (definido pela instituição): Sua retirada mais recente foi cancelado e o seu dinheiro foi devolvido ao seu saldo de conta porque a sua Retirada excede o limite permitido pela Western Union / Moneygram no local de sua residência. Os limites permitidos variam de país para país, por favor, entre em contato com suporte para verificar seus limites locais\r\n'),
 (57,4,41,'Withdrawal amount exceeds state limit','Sua retirada mais recente foi cancelado e o seu dinheiro foi devolvido ao seu saldo de conta porque a sua Retirada excede o limite permitido pela Western Union / Moneygram no local de sua residência. Os limites permitidos variam de país para país, por favor, entre em contato com suporte para verificar seus limites locais.'),
 (58,5,41,'7 Day Rule','Você só pode solicitar uma retirada a cada 7 dias, independentemente do método. Portanto, se solicitar uma retirada num prazo inferior os citado, ela será cancelada e os fundos devolvidos ao saldo da sua conta.\r\nSuas opções de retirada foram desativadas temporariamente até receber sua confirmação sobre este assunto.'),
 (59,7,41,'Funds from a Transfer','No caso que os fundos a retirar prevenir de uma transferência de outro jogador, a solicitude sera cancelada. Se você deseja fazer uma retirada dos fundos deve prevenir dos lucros obtidos em nossas mesas, no caso que haver uma transferência de outro jogador no meio, então sera necessário gerar 10% de rake sobre o montante transferido.'),
 (60,8,41,'Funds from a Deposit','Advertimos que sua retirada é baseada em uma transferência de \"jogador para jogador.\"\r\nOs fundos recebidos através de uma transferência de \"jogador para jogador\" são para financiar sua conta, a fim de acessar os jogos que oferecemos. Você pode retirar quaisquer fundos a partir dos lucros dos nossos jogos, mas deve gerar pelo menos 10% da renda (juros) de \"rake\" sobre o montante depositado para ser elegível para uma retirada.'),
 (61,9,41,'IP mismatch','Para fins de segurança necessitamos que verifique a sua localização antes de processar uma retirada através de sua conta.'),
 (62,10,41,'Address mismatch','Infelizmente, não podemos processar sua retirada porque o endereço registrado na conta não coincide com o endereço que solicitou em seu cheque.'),
 (63,11,41,'You owe money due to disputed deposits','Sua retirada foi cancelada porque tínhamos transações de cartão pendentes que não foram concluídas ou não foram processadas com êxito no seu histórico de depósito. Por favor, ligue para a nossa linha gratuita [COMPANY_PHONE_CS]  para que possamos revisar o que foi mencionado anteriormente'),
 (64,12,41,'Uses a different receiver or address','Como um compromisso para manter sua conta segura, só podemos enviar retiros com as informações fornecidas na sua conta. Por favor, reaplicar sua transação com detalhes que correspondam ao seu perfil.'),
 (65,13,41,'PO Box address listed instead of a physical address','Infelizmente, não podemos processar sua retirada porque o endereço registrado na sua conta é uma \"Caixa Postal\". Por favor, atualize suas informações para um endereço físico e solicite novamente sua retirada'),
 (66,14,41,'10k Max for 7C payouts','Você excedeu o limite acumulativo de $10.000 em transações nos últimos 30 dias com o seu cartão de débito.'),
 (67,15,41,'Max for Bitcoin address','Você excedeu o limite acumulativo de $25.000 em transações nos últimos 12 meses, ao mesmo endereço de Bitcoin.'),
 (68,16,41,'Invalid address','Sentimos muito! Nós tentamos processar seu pagamento, no entanto, o endereço registrado na conta nos impede continuar com o processo. Por segurança e restrições da nossa entidade bancária não podemos processar pagamentos para direções PO. Box Por favor, registre o seu endereço físico e tente solicitar a sua retirada.'),
 (69,17,41,'Card is prepaid','Sentimos muito! Pagamentos por cartão de Play 2 Card pode ser realizada apenas cartões de crédito ou débito. Por favor tente fazer a sua retirada para um cartão que não seja pré-pago ou de presente para que isso seja processado o mais rápido possível.'),
 (70,18,41,'No wires to X bank','Devido a restrições internacionais e para garantir que sua transferência for recebida o mais rápido possível a nossa entidade bancária não processa transferências para o Bank of America ou cooperativas de crédito. Por favor tente fazer a sua retirada usando outro banco para processar o seu pagamento o mais rapidamente possível.'),
 (71,19,41,'No intermediary banks','Devido a restrições internacionais e para garantir que sua transferência for recebida o mais rápido possível a nossa entidade bancária não processa envios quando há outras entidade bancarias de intermediários. Por favor, solicite novamente usando apenas a sua identidade bancaria.'),
 (72,20,41,'Screenshot verification','Por razões de segurança, a fim de processar o seu pagamento precisamos:         \r\n                                                   \r\n- Uma imagem digital de [TRANSACTION_PROC_NAME] conta, mostrando a conta baixo seu nome para garantir que a conta  que recebe os fundos esta baixo seu nome'),
 (74,22,41,'Incomplete Roll over','Sentimos muito! Em este momento o seu pagamento não pode ser processado devido que não cumpre com o requisito do jogo. Para poder processar a sua retirada a conta precisa cumprir com [ROLL_OVER_AMOUNT].'),
 (75,24,41,'Generic Cancellation','Esta foi concluído conforme o seu pedido através de pontos de nosso centro de contato.'),
 (76,23,41,'Deposit method to match cash out method','A fim de proceder ao pagamento, por motivos de segurança e verificação, nós convidamos você a fazer a sua retirada pelo mesmo método que foi usado para o  seu deposito [TRANSACTION_PROC_NAME].'),
 (77,6,41,'You do not have fees to cover the transaction','Lembre-se que cada retiro terá um montante a ser deduzido no momento da retirada se tornar efectiva. Se esse montante não está disponível no momento em que a transação é processada, então, a solicitação será cancelado e o dinheiro será devolvido a sua conta.'),
 (78,25,11,'Pending Docs: New CC deposit','It appears you have a deposit with a new credit card (s) in your account, thus, it is missing the authorization documents for these new cards: \r\n\r\n<ul>[CREDIT_CARDS]</ul>\r\n\r\nAs a reminder, the following is required: \r\n\r\n<ul>\r\n	<li>Copies front of the card</li>\r\n</ul>\r\n\r\nPlease send this to [COMPANY_EMAIL_CS] to your earliest convenience.'),
 (79,25,33,'Documentos Pendientes: Nuevo depósito CC','Parece que tiene un depósito con una nueva tarjeta de crédito en su cuenta, por lo que le faltan los documentos de autorización para esta(s) nueva tarjeta: \r\n\r\n<ul>[CREDIT_CARDS]</ul> \r\n\r\nComo recordatorio, se requiere lo siguiente: \r\n\r\n<ul>\r\n	<li>Copia la parte delantera de la tarjeta</li>\r\n</ul> \r\n\r\nEnvíe esto a [COMPANY_EMAIL_CS] a la mayor brevedad posible.'),
 (80,25,41,'Documentos Pendentes: novo depósito CC','Parece que você tem um depósito com um novo cartão de crédito na sua conta, portanto, falta os documentos de autorização para esses novos cartõa: \r\n\r\n<ul>[CREDIT_CARDS]</ul> \r\n\r\nComo lembrete, é necessário o seguinte: \r\n\r\n<ul>\r\n	<li>Copia a frente do cartão</li>\r\n</ul> \r\n\r\nEnvie-o para [COMPANY_EMAIL_CS] na sua maior brevidade.'),
 (81,26,41,'Affiliate must use BTC','Bitcoin foi adicionado como um método de pagamento e estamos movendo todos os pagamentos comissão de nossos parceiros para o Bitcoin. Esta mudança entrou em vigor o 1º de julho de 2016. Todas as outras opções de pagamento não vai estar mais disponível para retiro/levantamento de comissões de parceria. Por favor, sinta-se a vontade para solicitar um novo saque/levantamento usando Bitcoin para processá-lo o mais rápido possível.'),
 (82,26,33,'Affiliate debe usar Bitcoin','Bitcoin se ha añadido como un método de pago y todos los pagos de comisiones de afiliados seran procesados por Bitcoin. Este cambio entró en vigor el 1 de julio de 2016 y todas las demás opciones de retiro ya no estarán a disposición para retirar las comisiones de afiliados. Lo invitamos a solicitar de nuevo su retiro a través de Bitcoin para que podamos procesarlo.'),
 (83,26,11,'Affiliate must use BTC','Bitcoin has been added as a payout method and we will be moving all affiliate Commission Payments over to Bitcoin. This change became effective on July 1st, 2016. All other payment options will no longer be available to cash-out affiliate commissions. Please feel free to request a new cash out through Bitcoin so we can process it.'),
 (84,27,11,'There has been an issue with your Payout','There has been a problem processing your recent payout request. Please contact customer service for further information.'),
 (85,28,33,'Nueva Dirección de Bitcoin','Se ha superado el umbral de una transacción a la misma dirección de Bitcoin. Le rogamos que por favor envíe su solicitud de retiro una vez más con una nueva dirección de Bitcoin.'),
 (86,28,41,'New BTC Address ','Você excedeu o limite de transação de uma transação para o mesmo endereço Bitcoin. Nós pedimos que você envie seu pedido de saque mais uma vez usando um novo endereço Bitcoin.'),
 (87,28,11,'New BTC Address ','You have exceeded the transaction threshold of one transaction to the same Bitcoin address. We kindly ask you to please submit your cash out request once more using a new Bitcoin address.'),
 (88,21,11,'Pending Documents CC','It appears that your account is missing the authorization documents for the following cards:\r\n\r\n<ul>[CREDIT_CARDS]</ul>\r\n\r\nAs a reminder, the following is required:\r\n<ul>\r\n	<li>Copies front and back of the card</li>\r\n</ul>\r\n\r\nPlease send this to [COMPANY_EMAIL_CS] to your earliest convenience.'),
 (89,21,33,'Documentos de Tarjeta Pendientes','Hemos encontrado que su cuenta no ha completado el proceso de verificacion:\r\n\r\n<ul>[CREDIT_CARDS]</ul>\r\n\r\nLe recordamos que para poder procesar sus pagos es necesario que nos envie:\r\n<ul>\r\n	<li>Una copia de su tarjeta por ambos lados</li>\r\n	<li>Una copia de su licencia de conducir o del carné de identidad</li>\r\n	<li>Una copia de alguna factura de servicios público</li>\r\n</ul>\r\n\r\nFavor enviarnos esta información al correo [COMPANY_EMAIL_CS].'),
 (90,21,41,'Pending Documents CC','Descobrimos que sua conta não completou o processo de verificação:\r\n\r\n<ul>[CREDIT_CARDS]</ul>\r\n\r\nLembre-se que para poder processar seus pagamentos é preciso de enviar-nos:\r\n<ul>\r\n	<li>As cópias frente e verso do cartão</li>\r\n	<li>RG / carteira de motorista</li>\r\n	<li>Uma cópia da comprovante de residência</li>\r\n</ul>\r\n\r\nFavor enviar-nos esta informação ao correio [COMPANY_EMAIL_CS].'),
 (93,34,11,'BetCRIS - Pending Docs Partial CC','Dear customer according to our procedures you need to verify your account for the following cards:\r\n\r\n<ul>[CREDIT_CARDS]</ul>\r\n\r\nBefore we can finalize this transaction, the documentation you need to send is: \r\n\r\n<ul>\r\n	<li>Photograph of your ID (back and front).</li>\r\n</ul>\r\n\r\nPlease be so kind to send this to: <a href=\"mailto:[COMPANY_EMAIL_PAYOUT]\">[COMPANY_EMAIL_PAYOUT]</a>\r\n\r\nKind regards'),
 (94,34,33,'BetCRIS - Documentos de tarjeta pendientes','Estimado usuario(a),\r\n\r\nHemos recibo su solicitud de retiro de fondos, la cual podrá ser finalizada hasta el momento que usted realice la validación de la su cuenta con la siguiente información:\r\n\r\n<ul>\r\n	<li>Enviar fotografía de la/las tarjeta utilizada por ambos lados (no escaneada).</li>\r\n	<li>Fotografía de su documento de identidad.</li>\r\n	<li>Formulario de seguridad que podrá encontrar en nuestra página. <strong><a href=\"https://www.betcris.com/PDF/payoutRequestForm-es.pdf\" target=\"_blank\">Formulario</a><strong></li>\r\n</ul>\r\n\r\nSaludos,'),
 (95,34,41,'BetCRIS - Documentos de cartão pendentes','Prezado usuário, \r\n\r\nNos recebemos a sua solicitação de saque de fundos, a qual poderá ser finalizada no momento de você fazer a validação de sua conta com a seguinte informação: \r\n\r\n<ul>\r\n	<li>Você deve enviar fotografias de seu ou seus cartões utilizados pelos dois lados (não digitalizada).</li>\r\n	<li>Fotografia de seu id. de identidade.</li>\r\n	<li>formulário de segurança que você poderá encontrar em nossa página. <strong><a href=\"https://www.betcris.com/PDF/payoutRequestForm-pt.pdf\" target=\"_blank\">Formulario</a><strong></li>\r\n</ul>\r\n\r\nGrato'),
 (96,33,11,'BetCRIS - Deposit method to match cash out method','Dear costumer we have noticed that there is a difference between the method you deposited and the method you are requesting your pay out, because of this your transactions has been cancelled, however you are more than welcome to submit it again but using the same method.\r\n\r\nKind regards '),
 (97,33,33,'BetCRIS - Metodo de depósito no coincide con el metodo de retiro','Estimado usuario(a), en el trámite de retiro de sus fondos hemos notado que el metodo por el cual solicita su retiro es diferente al utilizado en el momento que efectuó el depósito, esta acción no es posible de realizarse, debido a esto su transacción ha sido cancelada y lo invitamos a realizar una solicitud nueva pero con el mismo metodo que utilizo para depositar. \r\n\r\nSaludos'),
 (98,33,41,'BetCRIS - Método de depósito não corresponde com o método de retiro','Prezado usuário no trâmite de saque de fundos, nós vemos que o método pelo qual você faz a sua solicitação de saque é diferente ao utilizado no momento do depósito, esta ação não é impossível de realizar, por esta razão a sua transação tem sido cancelada e nos convidamos você a fazer a sua solicitação mas com o mesmo método que usou para fazer o seu depósito.\r\n\r\nGrato\r\n'),
 (99,32,11,'BetCRIS - Incomplete Roll over','Dear customer,\r\n\r\nYour payout request has been put on hold by our payouts department, due to rollover requirement on your account, for further information please be so kind and contact us through the: <strong><a href=\"https://server.iad.liveperson.net/hc/58581018/?cmd=file&file=visitorWantsToChat&site=58581018&SV!skill=BetCRIS%20Spanish&LEAppKey=f907f2d9acd64b7f8c00b83bed3c2822&referrer=https%3A//www.betcris.com/&bId=17\" target=\"_blank\">Live Chat</a><strong>\r\n\r\nKind regards'),
 (100,32,33,'BetCRIS - Roll over incompleto','Estimado usuario(a),\r\n\r\nSu transacción de retiro de fondos ha sido cancelada ya que aún no cumple el requisito de Rollover, el cual corresponde a los bonos aplicados a su cuenta, para mayor detalle comuníquese a través del chat en vivo para verificar el monto faltante a completar. <strong><a href=\"https://server.iad.liveperson.net/hc/58581018/?cmd=file&file=visitorWantsToChat&site=58581018&SV!skill=BetCRIS%20Spanish&LEAppKey=f907f2d9acd64b7f8c00b83bed3c2822&referrer=https%3A//www.betcris.com/&bId=17\" target=\"_blank\">Chat en vivo.</a><strong> \r\n\r\nSaludos\r\n'),
 (101,32,41,'BetCRIS - Roll over incompleto','Prezado cliente a sua transação de saque de fundos tem sido cancelada pelo motivo que ainda precisa cumprir o requisito de rollover pendente, o qual corresponde aos bônus que foram aplicados na sua conta para maior informação acesse nosso bate-papo ao vivo para verificar o valor que falta por completar. <strong><a href=\"https://server.iad.liveperson.net/hc/58581018/?cmd=file&file=visitorWantsToChat&site=58581018&SV!skill=BetCRIS%20Spanish&LEAppKey=f907f2d9acd64b7f8c00b83bed3c2822&referrer=https%3A//www.betcris.com/&bId=17\" target=\"_blank\">Bate-papo ao vivo.</a><strong>\r\n\r\nGrato'),
 (102,31,11,'BetCRIS - Screenshot verification','In order to proceed with your payment, for security and verification purposes, we require: - Screenshot of your [TRANSACTION_PROC_NAME] account, showing the account holder’s information and account number, to ensure the receiving account is under your name.'),
 (103,31,33,'BetCRIS - Screenshot Verification','Estimado usuario(a) notamos que un su cuenta no ha sido validada y por motivos de seguridad su solicitud de fondos ha sido detenida, sea tan amable de tomar una captura de pantalla de la cuenta de su monedero electrónico donde se pueda visualizar claramente su nombre en ella y el correo electrónico registrado, esto con el fin de validar que los fondos se enviaran a la cuenta correcta. \r\n\r\nSaludos.'),
 (104,31,41,'BetCRIS - Screenshot verification','Prezado usuário, nós vemos que sua conta ainda não tem sido validada e por motivos de segurança de solicitação de fundos tem sido detida, por gentileza de tirar uma fotografia da tela de sua conta da carteira eletrônica onde nos podamos ver o seu nome e correio eletrônico cadastrado, isto, a fim de validar que os fundos serão enviados para a conta correta.\r\n\r\nGrato'),
 (105,30,11,'BetCRIS - Pending certification','Dear customer we have received your payout request, which has been rejected.\r\n\r\nAccording to our procedures you need to verify your account before to continue with the transaction, you need to send a picture of your ID to the following email address: <a href=\"mailto:[COMPANY_EMAIL_PAYOUT]\">[COMPANY_EMAIL_PAYOUT]</a>\r\n\r\nKind regards '),
 (106,30,33,'BetCRIS - Certificación pendiente','Estimado usuario le informamos que su retiro ha sido detenido. \r\n\r\nPor su  seguridad, para continuar con el trámite es necesario validar su cuenta por medio de una fotografía de su documento de identidad (vigente y emitido por su gobierno) nos puede enviar la imagen  al correo: <a href=\"mailto:ayuda@betcris.com\">ayuda@betcris.com</a> \r\n\r\nSaludos'),
 (107,30,41,'BetCRIS - Pending Certification','Prezado usuário, informamos que o seu saque tem sido detido por sua segurança, para continuar com o trâmite é preciso validar a sua conta, deve enviar uma fotografia de seu documento de identidade(atual e emitido por seu governo) pode-nos enviar a imagem por correio: <a href=\"mailto:ayuda@betcris.com\">ayuda@betcris.com</a> \r\n\r\nGrato'),
 (108,35,11,'Pending Documents: CC depositor','It appears that your account is missing the authorization documents for the following cards: \r\n\r\n<ul>[CREDIT_CARDS]</ul> \r\n\r\nAs a reminder, the following is required: \r\n\r\n<ul>\r\n	<li>Copies front of the card</li>\r\n</ul> \r\n\r\nPlease send this to [COMPANY_EMAIL_CS] to your earliest convenience.'),
 (109,35,33,'Documentos Pendientes: depositante CC','Parece que su cuenta no tiene los documentos de autorización para las siguientes tarjetas: \r\n\r\n<ul>[CREDIT_CARDS]</ul> \r\n\r\nComo recordatorio, se requiere lo siguiente: \r\n\r\n<ul>\r\n	<li> Copia del frente de la tarjeta</li> \r\n</ul> \r\n\r\nEnvíe esto a [COMPANY_EMAIL_CS] a la mayor brevedad posible'),
 (110,35,41,'Documentos Pendentes: depositante CC','Parece que a sua conta está faltando os documentos de autorização dos seguintes cartões: \r\n\r\n<ul>[CREDIT_CARDS]</ul> \r\n\r\nComo lembrete, é necessário o seguinte: \r\n\r\n<ul>\r\n	<li> Copia do frente do cartão</li>\r\n</ul> \r\n\r\nPor favor, envie isto para [COMPANY_EMAIL_CS] na sua conveniência o mais cedo possível.');


--
-- Dumping data for table `caTransactionStatus`
--


INSERT INTO `caTransactionStatus` (`caTransaction_Status_Id`, `Name`, `Description`)
VALUES
 (0,'Unknown',NULL),
 (1,'Pending',NULL),
 (2,'Approved',NULL),
 (3,'Rejected',NULL),
 (4,'Failed',NULL),
 (5,'Processing',NULL),
 (8,'Cancelled',NULL),
 (9,'Voided','Pre-Auth transaction has been Cancelled'),
 (22,'PreApproved',NULL),
 (30,'Deferred','Deferred status only applies when the transaction has been created using deferred terminals.'),
 (40,'Rejected by System','Applies when the transaction is rejected by internal restrictions. '),
 (50,'Abandon',NULL),
 (60,'Refund',NULL),
 (61,'Refund Pending',NULL),
 (70,'Chargeback',NULL);

--
-- Dumping data for table `caTransactionEnvironment`
--

INSERT INTO `caTransactionEnvironment` VALUES
 (0,'Oth','Other'),
 (1,'Dep','Deposit'),
 (2,'Pay','Payout'),
 (3,'Ain','Adjustment In'),
 (4,'Aou','Adjustment Out');


--
-- Dumping data for table `caTransactionType`
--

INSERT INTO `caTransactionType` (`caTransaction_Type_Id`, `Name`, `Description`, `caTransactionEnvironment_Id`, `IsWithdraw`)
VALUES
 (1,'Reup Deposit','Reup Deposit',1,0),
 (2,'Payout','Payout',0,1),
 (3,'Initial Deposit','Initial Deposit',1,0);

--
-- Dumping data for table `caUserAccessType`
--

INSERT INTO `caUserAccessType` (`caUserAccessType_Id`, `Prefix`, `Description`, `CreatedOn`)
VALUES
 (1,'Pag','Page','2012-05-15 07:58:28'),
 (2,'btn','Button','2012-05-15 07:58:59'),
 (3,'Sec','Section','2012-05-16 13:30:42');



--
-- Dumping data for table `caUserAccess`
--


INSERT INTO `caUserAccess` (`caUserAccess_Id`, `caUserAccessType_Id`, `Code`, `Description`, `CreatedOn`, `IsActive`)
VALUES
 (1,1,'processors_index','Level distribution','2013-02-18 13:27:46',1),
 (2,1,'processors_credentials','Credentials','2013-02-18 13:27:46',1),
 (3,1,'processors_processors','Processors','2013-03-19 10:48:19',1),
 (4,1,'limits_limit_rules','Limits Rules','2013-05-20 09:26:00',1),
 (5,1,'limits_index','Global Limits','2013-05-20 09:26:03',1),
 (6,1,'limits_level_limits','Limits By Level','2013-05-20 09:26:07',1),
 (7,1,'limits_changelog','Change Log','2013-05-20 09:26:09',1),
 (8,1,'limits_levels','Levels','2013-05-20 09:26:19',1),
 (9,1,'transaction_index','Advanced Search','2013-05-23 09:16:30',0),
 (10,1,'p2p_agencies','Agencies','2013-07-08 11:18:42',1),
 (11,1,'access_index','Access','2013-08-08 14:22:26',0),
 (12,1,'users_update_profile','Update Profile','2013-09-07 15:35:29',1),
 (13,1,'processors_changelog','Change log','2013-09-30 13:59:53',1),
 (14,1,'limit_limit_rule_changelog','Change Log','0000-00-00 00:00:00',1),
 (15,1,'p2p_fees_profile','Fees Profile','0000-00-00 00:00:00',1),
 (16,1,'bonus_index','Bonus','2013-11-21 15:24:21',1),
 (17,1,'bonus_bonus_changelog','Change Log','2013-12-06 08:16:24',1),
 (18,1,'limits_skin_limits','Limits By Skin','2014-02-18 15:51:08',1),
 (19,1,'processors_companies','Company Settings','0000-00-00 00:00:00',1),
 (20,1,'companies_index','Companies','0000-00-00 00:00:00',1),
 (22,1,'processors_cascading_changelog','Change Log','0000-00-00 00:00:00',1),
 (24,1,'processors_processors_changelog','Change Log','0000-00-00 00:00:00',1),
 (25,1,'processors_company_changelog','Change Log',NULL,1),
 (27,1,'p2p_p2p_changelog','Change Log','0000-00-00 00:00:00',1),
 (28,1,'processorsSkin','Processor\'s Skin','2017-04-19 09:27:47',1);



--
-- Dumping data for table `caUserMenu`
--
-- REVISAR BIEN ESTOS

INSERT INTO `caUserMenu` (`caUserMenu_Id`, `Name`, `Module`, `Sequence`, `IsActive`, `CreatedOn`)
VALUES
 (1,'My Account','users',2,1,'2012-05-15 09:57:29'),
 (2,'Configuration','users',3,1,'2012-05-15 09:57:52'),
 (3,'Reporting','transaction',1,1,'2012-05-15 14:22:27'),
 (4,'Customers','customers',8,1,'2012-06-12 07:50:30'),
 (5,'System','system',4,1,'2012-08-06 08:23:16'),
 (6,'Processors','processors',6,1,'2012-12-14 09:17:55'),
 (7,'Limits','limits',7,1,'2013-05-20 09:28:19'),
 (8,'Person 2 Person','p2p',8,1,'2013-07-08 11:20:17'),
 (9,'Access','access',9,0,'2013-08-08 14:23:01'),
 (10,'Bonuses','bonus',10,1,'2013-11-21 15:25:15'),
 (11,'Companies','company',3,1,'0000-00-00 00:00:00');



--
-- Dumping data for table `caUserSubMenu`
--
-- REVISAR BIEN ESTOS


INSERT INTO `caUserSubMenu` (`caUserSubMenu_Id`, `caUserMenu_Id`, `Module`, `Title`, `Sequence`, `IsActive`, `CreatedOn`)
VALUES
 (1,1,'users','Update Information',1,1,'2012-05-15 11:44:40'),
 (2,2,'users','Management',1,1,'2012-05-15 11:44:41'),
 (3,5,'menu','Menu',2,1,'2012-06-07 09:00:08'),
 (4,5,'processor','Processors',3,1,'2012-06-22 14:13:35'),
 (5,2,'currency','Currency',4,1,'2012-07-13 07:44:22'),
 (6,6,'cascading','Manage',1,1,'2012-12-14 09:19:32'),
 (7,6,'cascading','Statistics',2,1,'2012-12-14 09:19:32'),
 (10,7,'limits','Management',1,1,'2013-05-20 09:29:59'),
 (11,7,'limits','Change Log',2,1,'2013-05-20 09:30:01'),
 (12,3,'transaction','Search',1,1,'2013-05-23 09:18:55'),
 (13,8,'p2p','Management',1,1,'2013-07-08 11:21:00'),
 (14,9,'access','Management',1,1,'2013-08-15 14:23:28'),
 (15,6,'processor','Logs',5,1,'2013-09-30 14:00:57'),
 (16,10,'bonus','Management',1,1,'2013-11-21 15:25:37'),
 (17,10,'bonus','Logs',1,1,'2013-12-06 08:16:57'),
 (18,11,'company','Company',1,1,'2014-08-23 11:38:24'),
 (19,8,'p2p','Log',2,1,'2015-03-28 15:50:13');




--
-- Dumping data for table `caUserAccessMenu`
--


INSERT INTO `caUserAccessMenu` (`caUserAccessMenu_Id`, `caUserAccess_Id`, `caUserSubMenu_Id`, `Title`, `Page`, `Module`, `Sequence`, `IsActive`, `CreatedOn`)
VALUES
 (1,1,6,'Level distribution','index.php','processors',1,1,'2013-02-18 13:30:26'),
 (2,2,6,'Credentials','credentials.php','processors',2,1,'2013-02-18 13:30:26'),
 (3,3,6,'Processors','processors.php','processors',3,1,'2013-03-19 10:48:48'),
 (4,4,10,'Limits','limit_rules.php','limits',1,1,'2013-05-20 09:45:06'),
 (5,5,10,'Global Limits','index.php','limits',2,1,'2013-05-20 09:45:08'),
 (6,6,10,'Limits By Level','level_limits.php','limits',3,1,'2013-05-20 09:45:12'),
 (7,8,10,'Levels','levels.php','limits',5,1,'2013-05-20 09:45:17'),
 (8,7,11,'Limits','changelog.php','limits',1,1,'2013-05-20 09:45:00'),
 (9,9,12,'Advanced Search','index.php','transaction',1,0,'2013-05-23 09:19:35'),
 (10,10,13,'Agencies','agencies.php','p2p',1,1,'2013-07-08 11:22:01'),
 (11,11,14,'Access','index.php','access',1,1,'2013-08-08 14:24:05'),
 (13,12,1,'Profile','update_profile.php','users',1,1,'2013-09-07 15:37:30'),
 (14,13,15,'Credentials','changelog.php','processors',1,1,'2013-09-30 14:01:49'),
 (15,14,11,'Limit Rule','limit_rule_changelog.php','limits',2,1,'2013-10-13 14:47:14'),
 (17,15,13,'Fees ','fees_profile.php','p2p',2,1,'0000-00-00 00:00:00'),
 (19,16,16,'Bonus','index.php','bonus',1,1,'2013-12-06 08:17:47'),
 (20,17,17,'Bonus','bonus_changelog.php','bonus',2,1,'2013-12-06 08:17:47'),
 (21,18,10,'Limits By Skin','skin_limits.php','limits',4,1,'2014-02-18 15:52:44'),
 (22,19,6,'Company Settings','processor_companies.php','processors',4,1,'2014-07-14 14:33:54'),
 (23,20,18,'Management','index.php','company',1,1,NULL),
 (24,22,15,'Level Distribution','cascading_changelog.php','processors',2,1,NULL),
 (26,24,15,'Processor','processors_changelog.php','processors',3,1,NULL),
 (27,25,15,'Company Settings','company_changelog.php','processors',5,1,NULL),
 (28,27,19,'P2P Agencies','agencies_changelog.php','p2p',4,1,'2015-03-28 15:51:02'),
 (29,28,6,'Processor\'s Skin','processorsSkin.php','processors',5,1,'2017-04-19 09:29:04');



--
-- Dumping data for table `caUserRole`
--


INSERT INTO `caUserRole` (`caUserRole_Id`, `Name`, `Description`, `IsActive`, `CreatedOn`)
VALUES
 (1,'Administrator','Administrator',1,'2012-05-15 10:39:38'),
 (2,'Processing - Limits','Processing - Limits',1,'2012-06-11 08:42:20'),
 (3,'Bonus','Bonus',1,'2014-01-16 10:52:48'),
 (4,'Logs','Logs',1,'2017-04-06 14:04:43'),
 (5,'Person 2 Person','Person 2 Person',1,'2017-04-06 15:51:46'),
 (6,'Management','Management',1,'2017-04-06 16:06:48'),
 (7,'Processing - Processors','Processing - Processors',1,'2017-04-06 16:07:19');

--
-- Dumping data for table `caVipLevel`
--


INSERT INTO `caVipLevel` (`caVip_Id`, `Vip`)
VALUES
 (-3,'-3'),
 (-2,'-2'),
 (0,'0'),
 (1,'1'),
 (2,'2'),
 (3,'3'),
 (4,'4'),
 (5,'5'),
 (6,'6'),
 (7,'7'),
 (8,'8'),
 (9,'9'),
 (10,'10'),
 (11,'11'),
 (12,'12'),
 (13,'13'),
 (14,'14'),
 (15,'15'),
 (16,'16'),
 (17,'17'),
 (18,'18'),
 (19,'19'),
 (20,'20'),
 (100,'100'),
 (101,'101'),
 (102,'102'),
 (103,'103'),
 (104,'104'),
 (105,'105');

--
-- Dumping data for table `caSoftwareProviderCompany`
--

-- INSERT INTO `caSoftwareProviderCompany` VALUES
-- (1,1,'DEFAULT SPORTS',1,'','','','2015-12-05 22:57:39'),
-- (42,1,'BetCris',1,'','1','','2017-06-06 17:55:41');
INSERT INTO `caSoftwareProviderCompany` VALUES ('1', '1', 'UK', '1', null, null, null, '2017-05-30 03:12:20');
--
-- Dumping data for table `caUser`
--

INSERT INTO `caUser` (`caUser_Id`, `caDepartment_Id`, `Name`, `Username`, `Password`, `IsActive`, `CreatedOn`, `Email`, `Phone`, `DateExpiration`, `NeverExpires`, `RenewPassword`, `DateModified`, `ModifiedBy`)
VALUES
 (10000, NULL, 'mobile', 'mobile', NULL, 1, '2012-1-17 12:47:24', NULL, NULL, NULL, 1, 0, NULL, NULL),
 (10093, NULL, 'online', 'online', NULL, 1, '2012-1-17 12:47:24', NULL, NULL, NULL, 1, 0, NULL, NULL),
 (10094, NULL, 'inhouse', 'inhouse', NULL, 1, '2013-12-31 11:55:17', NULL, NULL, NULL, 1, 0, NULL, NULL);


--
-- Dumping data for table `caBEUser`
--

INSERT INTO `caBEUser` VALUES ('10092', null, null, 'system', '', '', '', '0', null, null, '1', '0', '0', '0', null, null);
INSERT INTO `caBEUser` VALUES ('10093', null, null, 'online', '', '', '', '0', null, null, '1', '0', '0', '0', null, null);
INSERT INTO `caBEUser` VALUES ('10094', null, null, 'inhouse', '', '', '', '0', null, null, '1', '0', '0', '0', null, null);

-- ----------------------------
-- Records of caBEUserDepartment
-- ----------------------------
INSERT INTO `caBEUserDepartment` VALUES
 (1,'Midas',0,0),
 (7,'Customer Service',0,0);

--
-- Dumping data for table `caBEUserRolePermission`
--

/*!40000 ALTER TABLE `caBEUserRolePermission` DISABLE KEYS */;
INSERT INTO `caBEUserRolePermission` VALUES
 (1,1,1),
 (2,1,2),
 (111,308,1),
 (14473,601,1),
 (14474,602,1),
 (14475,561,1),
 (14476,562,1),
 (14477,559,1),
 (14478,563,1),
 (14479,523,1),
 (14480,524,1),
 (14481,526,1),
 (14482,525,1),
 (14483,517,1),
 (14484,522,1),
 (14485,519,1),
 (14486,520,1),
 (14487,521,1),
 (14488,516,1),
 (14489,518,1),
 (14490,553,1),
 (14491,552,1),
 (14492,278,1),
 (14493,279,1),
 (14494,276,1),
 (14495,277,1),
 (14496,574,1),
 (14497,584,1),
 (14498,395,1),
 (14499,450,1),
 (14500,396,1),
 (14501,394,1),
 (14502,390,1),
 (14503,405,1),
 (14504,576,1),
 (14505,391,1),
 (14506,392,1),
 (14507,393,1),
 (14508,381,1),
 (14509,382,1),
 (14510,380,1),
 (14511,383,1),
 (14512,554,1),
 (14513,499,1),
 (14514,500,1),
 (14515,625,1),
 (14516,626,1),
 (14517,622,1),
 (14519,498,1),
 (14520,501,1),
 (14521,621,1),
 (14522,624,1),
 (14523,360,1),
 (14524,484,1),
 (14525,527,1),
 (14526,529,1),
 (14527,486,1),
 (14528,228,1),
 (14529,326,1),
 (14530,325,1),
 (14531,467,1),
 (14532,491,1),
 (14533,555,1),
 (14534,492,1),
 (14535,490,1),
 (14536,493,1),
 (14537,550,1),
 (14538,551,1),
 (14539,264,1),
 (14540,265,1),
 (14541,266,1),
 (14542,262,1),
 (14543,263,1),
 (14544,341,1),
 (14545,363,1),
 (14546,344,1),
 (14547,352,1),
 (14548,568,1),
 (14549,567,1),
 (14550,449,1),
 (14551,351,1),
 (14552,544,1),
 (14553,343,1),
 (14554,353,1),
 (14555,350,1),
 (14556,342,1),
 (14557,585,1),
 (14558,566,1),
 (14559,346,1),
 (14560,590,1),
 (14561,320,1),
 (14562,323,1),
 (14563,570,1),
 (14564,583,1),
 (14565,295,1),
 (14566,327,1),
 (14567,319,1),
 (14568,321,1),
 (14569,318,1),
 (14570,463,1),
 (14571,462,1),
 (14572,324,1),
 (14573,458,1),
 (14574,459,1),
 (14575,456,1),
 (14576,457,1),
 (14577,249,1),
 (14578,250,1),
 (14579,495,1),
 (14580,251,1),
 (14581,252,1),
 (14582,253,1),
 (14583,307,1),
 (14584,254,1),
 (14585,537,1),
 (14586,471,1),
 (14587,485,1),
 (14588,474,1),
 (14589,472,1),
 (14590,473,1),
 (14591,255,1),
 (14592,556,1),
 (14593,258,1),
 (14594,372,1),
 (14595,497,1),
 (14596,489,1),
 (14597,565,1),
 (14598,256,1),
 (14599,452,1),
 (14600,371,1),
 (14601,259,1),
 (14602,261,1),
 (14603,260,1),
 (14604,257,1),
 (14605,453,1),
 (14606,387,1),
 (14607,388,1),
 (14608,386,1),
 (14609,389,1),
 (14610,507,1),
 (14611,509,1),
 (14612,506,1),
 (14613,508,1),
 (14614,504,1),
 (14615,505,1),
 (14616,510,1),
 (14617,361,1),
 (14618,528,1),
 (14619,530,1),
 (14620,347,1),
 (14621,349,1),
 (14622,348,1),
 (14623,468,1),
 (14624,158,1),
 (14625,162,1),
 (14626,229,1),
 (14627,163,1),
 (14628,434,1),
 (14629,435,1),
 (14630,436,1),
 (14631,437,1),
 (14632,411,1),
 (14633,412,1),
 (14634,413,1),
 (14635,414,1),
 (14636,415,1),
 (14637,416,1),
 (14638,451,1),
 (14639,417,1),
 (14640,418,1),
 (14641,461,1),
 (14642,531,1),
 (14643,159,1),
 (14644,160,1),
 (14645,161,1),
 (14646,419,1),
 (14647,427,1),
 (14648,420,1),
 (14649,425,1),
 (14650,428,1),
 (14651,429,1),
 (14652,430,1),
 (14653,431,1),
 (14654,421,1),
 (14655,422,1),
 (14656,423,1),
 (14657,424,1),
 (14658,432,1),
 (14659,433,1),
 (14660,426,1),
 (14661,438,1),
 (14662,444,1),
 (14663,439,1),
 (14664,440,1),
 (14665,441,1),
 (14666,442,1),
 (14667,443,1),
 (14668,282,1),
 (14669,283,1),
 (14670,280,1),
 (14671,281,1),
 (14672,575,1),
 (14673,573,1),
 (14674,302,1),
 (14675,297,1),
 (14676,304,1),
 (14677,329,1),
 (14678,445,1),
 (14679,303,1),
 (14680,483,1),
 (14681,330,1),
 (14682,174,1),
 (14683,410,1),
 (14684,335,1),
 (14685,306,1),
 (14686,293,1),
 (14687,166,1),
 (14688,231,1),
 (14689,171,1),
 (14690,169,1),
 (14691,232,1),
 (14692,167,1),
 (14693,168,1),
 (14694,170,1),
 (14695,513,1),
 (14696,514,1),
 (14697,512,1),
 (14698,515,1),
 (14699,6,1),
 (14700,2,1),
 (14701,1,1),
 (14702,4,1),
 (14703,511,1),
 (14704,578,1),
 (14705,593,1),
 (14706,3,1),
 (14707,5,1),
 (14708,579,1),
 (14709,580,1),
 (14710,581,1),
 (14711,582,1),
 (14712,539,1),
 (14713,540,1),
 (14714,538,1),
 (14715,541,1),
 (14716,286,1),
 (14717,287,1),
 (14718,284,1),
 (14719,285,1),
 (14720,338,1),
 (14721,340,1),
 (14722,623,1),
 (14723,339,1),
 (14724,269,1),
 (14725,619,1),
 (14726,606,1),
 (14729,632,1),
 (14730,610,1),
 (14731,609,1),
 (14732,270,1),
 (14733,271,1),
 (14734,597,1),
 (14735,267,1),
 (14736,268,1),
 (14737,617,1),
 (14738,611,1),
 (14739,614,1),
 (14740,615,1),
 (14741,616,1),
 (14742,613,1),
 (14743,618,1),
 (14744,612,1),
 (14745,631,1),
 (14746,377,1),
 (14747,378,1),
 (14748,376,1),
 (14749,375,1),
 (14750,374,1),
 (14751,477,1),
 (14752,476,1),
 (14753,475,1),
 (14754,406,1),
 (14756,479,1),
 (14757,478,1),
 (14758,164,1),
 (14759,354,1),
 (14760,322,1),
 (14761,215,1),
 (14762,216,1),
 (14763,220,1),
 (14764,211,1),
 (14765,212,1),
 (14766,213,1),
 (14767,214,1),
 (14768,221,1),
 (14769,356,1),
 (14770,409,1),
 (14771,355,1),
 (14772,219,1),
 (14773,592,1),
 (14774,577,1),
 (14775,165,1),
 (14776,314,1),
 (14777,502,1),
 (14778,503,1),
 (14779,571,1),
 (14780,572,1),
 (14781,328,1),
 (14782,313,1),
 (14783,316,1),
 (14784,337,1),
 (14785,464,1),
 (14786,317,1),
 (14787,336,1),
 (14789,448,1),
 (14790,587,1),
 (14791,482,1),
 (14792,480,1),
 (14793,290,1),
 (14794,291,1),
 (14795,288,1),
 (14796,289,1),
 (14797,274,1),
 (14798,275,1),
 (14799,272,1),
 (14800,273,1),
 (14801,233,1),
 (14802,234,1),
 (14803,494,1),
 (14804,487,1),
 (14805,235,1),
 (14806,236,1),
 (14807,237,1),
 (14808,238,1),
 (14809,240,1),
 (14810,239,1),
 (14811,241,1),
 (14812,536,1),
 (14813,543,1),
 (14814,364,1),
 (14815,367,1),
 (14816,366,1),
 (14817,379,1),
 (14818,469,1),
 (14819,365,1),
 (14820,470,1),
 (14821,333,1),
 (14822,332,1),
 (14823,331,1),
 (14824,384,1),
 (14825,242,1),
 (14826,557,1),
 (14827,245,1),
 (14828,496,1),
 (14829,628,1),
 (14830,629,1),
 (14831,535,1),
 (14832,370,1),
 (14833,488,1),
 (14834,564,1),
 (14835,243,1),
 (14836,446,1),
 (14837,369,1),
 (14838,246,1),
 (14839,248,1),
 (14840,247,1),
 (14841,244,1),
 (14842,588,1),
 (14843,454,1),
 (14844,542,1),
 (14845,358,1),
 (14846,368,1),
 (14847,534,1),
 (14848,373,1),
 (14849,569,1),
 (14850,362,1),
 (14851,533,1),
 (14852,532,1),
 (14853,586,1),
 (14854,603,1),
 (14855,605,1),
 (14856,604,1),
 (14857,8,1),
 (14858,9,1),
 (14859,11,1),
 (14860,10,1),
 (14861,7,1),
 (14862,15,1),
 (14863,14,1),
 (14864,13,1),
 (14865,12,1),
 (14866,633,1);





-- crear usuario admin en backend
SET @pBEUserId = 0;
SET @pBEUserDepartmentId = 1; -- midas
SET @pLanguage = 10;

CALL cpBE_UserAdd(@pBEUserDepartmentId, @pLanguage, 'admin', 'admin', 'Admin', 'midas@betcris.com', 1, 0, 0, 0, @pBEUserId);

-- crear los roles del usuario admin en backend

CALL cpBE_UserAddRole(@pBEUserId, 1);
CALL cpBE_UserAddRole(@pBEUserId, 2);

-- asociar las companias
INSERT INTO caBEUserCompany(caBEUser_Id, caCompany_Id)
 SELECT @pBEUserId, caCompany_Id FROM caCompany WHERE isActive = 1;
-- ----------------------------
-- ----------------------------
-- ----------------------------
-- ----------------------------

-- crear usuario admin en midasone
-- User: admin
-- Pass: admin
SET @pLastUserId = 0;
SET @role = 1;
SET @pDepartmentId = 1; -- midas

CALL cpAdmin_User_Add(@pDepartmentId, 'Admin', 'admin', 'admin', 1, 'midas@betcris', null, '102', @pLastUserId);
UPDATE caUser SET RenewPassword = 0, NeverExpires = 1 WHERE caUser_Id = @pLastUserId;


-- asignar los accesos al rol administrador
INSERT INTO caUserRoleAccess (caUserRole_Id, caUserAccess_Id, IsActive)
VALUES
 (@role, 1, 1),
 (@role, 2, 1),
 (@role, 3, 1),
 (@role, 4, 1),
 (@role, 5, 1),
 (@role, 6, 1),
 (@role, 7, 1),
 (@role, 8, 1),
 (@role, 9, 1),
 (@role, 10, 1),
 (@role, 11, 1),
 (@role, 12, 1),
 (@role, 13, 1),
 (@role, 14, 1),
 (@role, 15, 1),
 (@role, 16, 1),
 (@role, 17, 1),
 (@role, 18, 1),
 (@role, 19, 1),
 (@role, 20, 1),
 (@role, 22, 1),
 (@role, 24, 1),
 (@role, 25, 1),
 (@role, 27, 1),
 (@role, 28, 1);


-- crear el user rol de admin en midasone

INSERT INTO caUserUserRole (caUser_Id, caUserRole_Id, IsActive)
VALUES(@pLastUserId, @role, 1);

-- asociar las companies MIDASONE

INSERT INTO caUserCompany(caUser_Id, caCompany_Id, IsActive, DateCreated)
 SELECT @pLastUserId, caCompany_Id, 1, NOW() FROM caCompany WHERE isActive = 1;

--
-- Dumping data for table `caLimitRuleType`
--

INSERT INTO `caLimitRuleType` (`caLimitRuleType_Id`, `Name`, `Description`)
VALUES
 (10,'Min','minimum amount per transaction'),
 (20,'Max','maximum amount per transaction'),
 (30,'TotalCount','total number of transactions processed'),
 (40,'TotalAmount','total amount processed'),
 (50,'NumOfCC','number of credit cards'),
 (60,'MinVIP','minimum vip required'),
 (70,'Schedule','schedule');

--
-- Dumping data for table `caLimitTimeUnit`
--

INSERT INTO `caLimitTimeUnit` (`caLimitTimeUnit_Id`, `Name`)
VALUES
 (1,'Minute'),
 (2,'Hour'),
 (3,'Day'),
 (4,'Week'),
 (5,'Month');

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-01 15:15:18