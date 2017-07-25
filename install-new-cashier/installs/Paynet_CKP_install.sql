-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 655;
SET @processorClassId = 16;
SET @processorIdParent = 70000;
SET @processorIdClone = NULL;
SET @processorName = 'Paynet_CKP';
SET @processorDisplayName = 'PaperCheck';
SET @isActive = 1;
SET @typesSupported = 1;
SET @sortOrder = 0;
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
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value) VALUES 
(@lastGroupId, 'API_URL', 'https://api.paynetservices.com/v2'),
(@lastGroupId, 'PaymentType', 'CKP');

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
VALUES (@processorId, NULL, 20);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, 'Username', 0),
	('2', @processorId, 'Password', 0),
	('3', @processorId, NULL, 1),
	('4', @processorId, 'ProfileID', 0);

	-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
VALUES (19, @processorName, 'Paynet_CKP');
