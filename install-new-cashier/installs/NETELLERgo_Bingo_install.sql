-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 33;
SET @processorClassId = 5;
SET @processorIdParent = NULL;
SET @processorIdClone = NULL;
SET @processorName = 'NetellerGO';
SET @processorDisplayName = 'NetellerGO';
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
	(@lastGroupId, 'tranferOutURL', 'https://api.neteller.com/v1/orders'),
	(@lastGroupId, 'authURL', 'https://api.neteller.com/v1/oauth2/token'),
	(@lastGroupId, 'statusURL', 'https://api.neteller.com/v1/orders/{orderId}'),
	(@lastGroupId, 'success_url', 'https://pa.newbingobilly.ag/default/load/{token}/'),
	(@lastGroupId, 'error_url', 'https://pa.newbingobilly.ag/default/load/{token}/'),
	(@lastGroupId, 'grant_type', 'client_credentials'),
	(@lastGroupId, 'redirect_URL', 'https://api.neteller.com/v1/checkout/{orderId}');

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
	('1', @processorId, 'Client ID', '0'),
	('2', @processorId, 'Client Secret', '0'),
	('3', @processorId, NULL, '1'),
	('4', @processorId, NULL, '1');
	
-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	
INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
VALUES
	(19, @processorName, 'NETELLERgo|118'),
	(20, @processorName, 'NETELLERgo|118');
