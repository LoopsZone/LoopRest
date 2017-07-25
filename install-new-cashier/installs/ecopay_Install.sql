-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 324;
SET @processorClassId = 5;
SET @processorIdParent = NULL;
SET @processorIdClone = NULL;
SET @processorName = 'CRD3CO';
SET @processorDisplayName = 'EcoPAYZ';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 0;


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
	(@lastGroupId, 'REDIRECT_URL', 'https://www.ecocard.com/PrivateArea/WithdrawOnlineTransfer.aspx'),
	(@lastGroupId, 'FormatReference', '[JOURNAL_ID]'),
	(@lastGroupId, 'FormatDescription', '[PROC_NAME]-[JOURNAL_ID]-[PROC_TRANS_ID] $[AMOUNT] $[FEE]'),
	(@lastGroupId, 'method_withdraw', 'Payout'),
	(@lastGroupId, 'uri_soap', 'http://www.ecocard.com/merchantAPI/');

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
SELECT @processorId, co.caCompany_Id, @lastGroupId, 1, 20, NOW(), NULL, 0
FROM caCompany co
WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES (@processorId, '7', '20');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, NULL, '1'),
	('2', @processorId, NULL, '1'),
	('3', @processorId, NULL, '1'),
	('4', @processorId, NULL, '1');
	
/*insert Skin caProcessorSkin*/
INSERT INTO `caProcessorSkin` (`caProcessorSkin_Id`, `caProcessor_Id`, `caProcessor_Id_Parent`, `Name`, `DisplayName`, `IsActive`, `IsWithdraw`, `SortOrder`) 
					   VALUES (1003540000, 354, 354, 'CRD3CO', 'EcoPayz', 1, 1, 0);