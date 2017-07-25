-- ----------------------------------
-- Definition of variables --
-- ----------------------------------
SET @processorId = 616;
SET @processorClassId = 24;
SET @processorIdParent = NULL;
SET @processorIdClone = NULL;
SET @processorName = 'BNK_TRANSFER_KR';
SET @processorDisplayName = 'Bank Transfer KR';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 99999;
SET @isWithdraw = 0;
SET @isMenuHidden = 0;

-- ----------------------------------
-- caProcessor --
-- ----------------------------------
INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax, PendingUAT) 
VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, 0, 1, 1, 1, 1, @typesSupported, '5', 1);

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
	(@lastGroupId, 'API_URL', 'https://rest.nexmo.com/sms/json');

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
VALUES (@processorId, 20, 20);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, NULL, 0),
	('2', @processorId, 'Secret', 1),
	('3', @processorId, 'Tel. From', 1),
	('4', @processorId, 'Key', 1);
	
-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	
INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
VALUES
	(24, 'BNK_TRANSFER_KR', 'DirectBanxFer');

-- ----------------------------------------
-- caProcessorSkin --
-- ----------------------------------------	
INSERT INTO caProcessorSkin (caProcessorSkin_Id, caProcessor_Id, caProcessor_Id_Parent, Name, DisplayName, IsActive, IsWithdraw, DateAdded, SortOrder)
VALUES (60001, 616, NULL, NULL, 'South Korean Bank', 1, 0, NOW(), 1);