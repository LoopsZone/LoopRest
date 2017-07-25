-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 656;
SET @processorClassId = 2;
SET @processorIdParent = 70000;
SET @processorIdClone = NULL;
SET @processorName = 'CK3';
SET @processorDisplayName = 'CK3';
SET @isActive = 1;
SET @typesSupported = 1; -- 0: Deposit|1: Payoust| 2: Both
SET @sortOrder = 10000;
SET @isWithdraw = 1;
SET @isMenuHidden = 1;


INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) 
VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5');

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------
INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
VALUES (NULL, @processorName, NOW());

SET @lastGroupId = LAST_INSERT_ID();
-- ----------------------------------
-- caProcessorSetting_Detail --
-- ----------------------------------
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value) 
VALUES
	(@lastGroupId, 'FormatReference', '[JOURNAL_ID]-[TRANS_ID]'),
	(@lastGroupId, 'FormatDescription', '[PROC_NAME]-[JOURNAL_ID]-[PROC_TRANS_ID] $[AMOUNT] $[FEE]');

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, SortOrder, Descriptor, AddRandomAmount) 
SELECT @processorId, co.caCompany_Id, @lastGroupId, 1, 20, NOW(), @sortOrder, NULL, 0
FROM caCompany co
WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES (@processorId, NULL, 20);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, 'Username', '0'),
	('2', @processorId, 'Password', '0'),
	('3', @processorId, 'Channel', '0'),
	('4', @processorId, 'Key', '0');
	
-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	
/* BINGO
INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id, Name,Translate)
VALUES
	(19, 'CK3', 'CK3|126'),
	(20, 'CK3', 'CK3|126');
*/
-- ----------------------------
-- Records of caBatchRender
-- ----------------------------
INSERT INTO `caBatchRender` (Name) 
VALUES ('CK3');