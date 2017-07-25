-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 220;
SET @processorClassId = 24;
SET @processorIdParent = NULL;
SET @processorIdClone = NULL;
SET @processorName = 'Open_Pay_Transfer';
SET @processorDisplayName = 'SPEI';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 10000;
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
	(@lastGroupId, 'API_URL', ''),
	(@lastGroupId, 'CLABE', '012298026516924616'),
	(@lastGroupId, 'HOLDER_NAME', 'Juan Tapia Trejo'),
	(@lastGroupId, 'DESCRIPTION', 'Pago a terceros BC'),
	(@lastGroupId, 'SANDBOXMODE', 'false');

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
VALUES (@processorId, '20', NULL);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, 'ID', '0'),
	('2', @processorId, NULL, '1'),
	('3', @processorId, 'Public Key', '0'),
	('4', @processorId, 'Private Key', '0');
	
-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	
INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
VALUES
	(24, 'Open_Pay_Transfer', 'OPENPAYBK');
