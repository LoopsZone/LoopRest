-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 396;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'CC_WDC_MC';
SET @processorDisplayName = 'CC_WDC_MC';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 1;
SET @caErrorCodeHeader_Id = 14;

INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax, AllowsRefunds) 
VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5', 0);

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
 (@lastGroupId, 'API_URL', 'https://security.wondercashier.com/securityPay'),
 (@lastGroupId, 'API_URL_RETRIEVE', 'https://mer.wondercashier.com/mer/traderecord/customerQuery.action');

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
-- caProcessorMethodSupported --
-- ----------------------------------------
INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
VALUES (@processorId, '11000');


-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
VALUES (19, @processorName, 'CC_WDC_MC|154'),
		(20, @processorName, 'CC_WDC_MC|154');



-- ----------------------------------------
-- caErrorCodeHeaderProcessor --
-- ----------------------------------------
INSERT INTO caErrorCodeHeaderProcessor (caErrorCodeHeader_Id, caProcessor_Id) 
VALUES (@caErrorCodeHeader_Id, @processorId);