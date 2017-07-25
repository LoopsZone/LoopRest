-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 823;
SET @processorClassId = 5;
SET @processorIdParent = 814;
SET @processorIdClone = NULL;
SET @processorName = 'BTC_BITCLEARP';
SET @processorDisplayName = 'BitClear P';
SET @isActive = 1;
SET @typesSupported = 2;
SET @sortOrder = 0;
SET @isWithdraw = 0;
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
	(@lastGroupId, 'API_URL', 'https://api.clearcollect.com/crypto/v2/'),
	(@lastGroupId, 'NEW_DEPOSIT', 'deposit/new/json'),
	(@lastGroupId, 'GET_DEPOSIT', 'deposit/get/json'),
	(@lastGroupId, 'NEW_WITHDRAW', 'withdraw/new/json'),
	(@lastGroupId, 'GET_WITHDRAW', 'withdraw/get/json');

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
VALUES (@processorId, '22', '22');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, 'Authorize [true|false]', '0'),
	('2', @processorId, 'Secret', '0'),
	('3', @processorId, NULL, '1'),
	('4', @processorId, 'Key', '0');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
/*
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
VALUES ('35', @processorName, @processorName);
*/