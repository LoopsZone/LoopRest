
-- ----------------------------------
-- caProcessor -- CC_EPG_VbV1
-- ----------------------------------
SET @processorId = 498;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'CC_EPG_VbV1';
SET @processorDisplayName = 'CC_EPG_VbV1';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 1;

INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax, AllowsRefunds, AllowsChargeBacks) 
VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5', 1, 1);

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
	(@lastGroupId, 'TransactionType', 'Sale'),
	(@lastGroupId, 'URL_Paygate', 'https://api.epg-services.com/V2/paygate/transaction'),
	(@lastGroupId, 'API_URL', 'https://api.epg-services.com/V2/paygate/transaction'),
	(@lastGroupId, 'RECONCILE_URL', 'https://api.epg-services.com/V2/reconcile/get'),
	(@lastGroupId, 'Return_Url', 'https://public.secureprivate.com/default/load/{token}/'),
	(@lastGroupId, 'TransactionUrl', 'https://public.secureprivate.com/default/index');

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------

INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
SELECT @processorId, co.caCompany_Id, @lastGroupId, 1,20, NOW(), NULL, 0
FROM caCompany co
WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------

INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES (@processorId, '14', NULL);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------

INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
	('1', @processorId, 'MerchantId', '0'),
	('2', @processorId, 'MerchantGuid', '0'),
	('3', @processorId, NULL, '1'),
	('4', @processorId, NULL, '1');
	
	
-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------

INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
VALUES (@processorId, '11001');

-- ----------------------------------------
-- caErrorCodeHeaderProcessor --
-- ----------------------------------------
INSERT INTO caErrorCodeHeaderProcessor (caErrorCodeHeader_Id, caProcessor_Id)
VALUES ('3', @processorId);


-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	

INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
VALUES(24, 'CC_EPG_VbV1','CC_EPG_VbV1|149');


-- ----------------------------------------
-- caProcessorGroupDetail --
-- ----------------------------------------

INSERT INTO caProcessorGroupDetail(caProcessorGroup_Id, caProcessor_Id)
VALUES('4', @processorId);
