-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 376;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'TKCC';
SET @processorDisplayName = 'TKCC';
SET @isActive = 1;
SET @typesSupported = 0;
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
	(@lastGroupId, 'FormatDescription', '[PROC_NAME]-[JOURNAL_ID]-[PROC_TRANS_ID] $[AMOUNT] $[FEE]'),
	(@lastGroupId, 'FormatReference', '[JOURNAL_ID]'),
	(@lastGroupId, 'API_URL', 'https://test.hypercharge.net/process/{channel}'),
	(@lastGroupId, 'IS_INTERFACE_3D','FALSE'),
	(@lastGroupId, 'TRANSTYPE_3D','sale3d'),
	(@lastGroupId, 'TRANSTYPE','sale'),
	(@lastGroupId, 'NOTIFICATION_URL','http://www.nacion.com/tkcc/status/{token}/'),
	(@lastGroupId, 'HEADER','Content-type: text/xml'),
	(@lastGroupId, 'RECONCILE_URL','https://hypercharge.net/reconcile/{channel}');

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
VALUES (@processorId, '3', NULL);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, 'MerchantId', '0'),
	('2', @processorId, 'MerchantGuid', '0'),
	('3', @processorId, NULL, '1'),
	('4', @processorId, NULL, '1');
