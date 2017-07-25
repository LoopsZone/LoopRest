-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 393;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'CC_WLP_VI';
SET @processorDisplayName = 'CC_WLP_VI';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 1;

INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax, AllowsRefunds) 
VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5', 1);

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------
INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
VALUES (NULL, @processorName, NOW());

SET @lastGroupId = LAST_INSERT_ID();
-- ----------------------------------
-- caProcessorSetting_Detail --
-- API_URL (test) = https://co.onlineb2cmall.com/TestTPInterface
-- ----------------------------------
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value) VALUES
 (@lastGroupId, 'API_URL', 'https://pay.wonderlandpay.com/TPInterface'),
 (@lastGroupId, 'API_URL_REFUND', 'http://mer.wonderlandpay.com/RefundInterface'),
 (@lastGroupId, 'API_URL_RETRIEVE', 'http://mer.wonderlandpay.com/customerCheck');

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
VALUES (@processorId, 3, NULL);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, NULL, 1),
	('2', @processorId, 'MerNo', 0),
	('3', @processorId, 'GatewayNo', 0),
	('4', @processorId, 'SignKey', 0);

-- ----------------------------------------
-- caErrorCodeHeaderProcessor --
-- ----------------------------------------
INSERT INTO caErrorCodeHeaderProcessor (caErrorCodeHeader_Id, caProcessor_Id) 
VALUES (13, @processorId);

-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------
INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
VALUES (@processorId, '11001');

	-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------
-- INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
-- VALUES (19, @processorName, 'CC_WLP_VI|151'),
-- VALUES (20, @processorName, 'CC_WLP_VI|151');