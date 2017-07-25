-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 910;
SET @processorClassId = 5;
SET @processorIdParent = NULL;
SET @processorIdClone = NULL;
SET @processorName = 'DineroElectronico';
SET @processorDisplayName = 'Dinero Electronico';
SET @isActive = 1;
SET @typesSupported = 2;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 0;

SET @processorSkinId = 100910100;
SET @processorSkinDisplayName = 'Retiro Dinero Electrónico';
SET @processorSkinIsActive = 1;
SET @processorSkinIsWithdraw = 1;

INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) 
VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '0', '1', '1', '1', @typesSupported, '5');

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
	(@lastGroupId, 'API_URL', 'https://181.211.102.40:8443/mts_bce/services/MTSService?wsdl');

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
SELECT @processorId, co.caCompany_Id, @lastGroupId, 1, 20, NOW(), NULL, 1
FROM caCompany co
WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES (@processorId, '20', '20');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, 'Account', '0'),
	('2', @processorId, 'Password', '0'),
	('3', @processorId, NULL, '1'),
	('4', @processorId, NULL, '1');
	
-- ----------------------------------------
-- caProcessorSkin --
-- ----------------------------------------
INSERT INTO caProcessorSkin (caProcessorSkin_Id, caProcessor_Id, DisplayName, IsActive, IsWithdraw) 
VALUES (@processorSkinId, @processorId, @processorSkinDisplayName, @processorSkinIsActive, @processorSkinIsWithdraw);
