-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 721;
SET @processorClassId = 25;
SET @processorIdParent = NULL;
SET @processorIdClone = NULL;
SET @processorName = 'SafetyPayCash';
SET @processorDisplayName = 'SafetyPayCash';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 99999;
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
	(@lastGroupId, 'WSDL_url', 'https://mws2.safetypay.com/express/ws/v.3.0/?wsdl'),
	(@lastGroupId, 'success_url', 'https://public.secureprivate.com/default/load/{token}/'),
	(@lastGroupId, 'error_url', 'https://public.secureprivate.com/default/load/{token}/'),
	(@lastGroupId, 'expirationTime', '120'),
	(@lastGroupId, 'salesCurrencyID', 'EUR');

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
VALUES (@processorId, '8', NULL);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, NULL, '1'),
	('2', @processorId, NULL, '1'),
	('3', @processorId, 'Signature Key', '0'),
	('4', @processorId, 'API Key', '0');
	
-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	
INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
VALUES
	(24, 'SafetyPayCash', 'SAFETYPAY');
