--
--
--
--
--
--
-- ----------------------------------
-- caProcessor -- TKCC_NEW_VBV_1
-- ----------------------------------
SET @processorId = 494;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'TKCC_NEW_VBV_1';
SET @processorDisplayName = 'TKCC_NEW_VBV_1';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 1;


UPDATE caProcessor SET caProcessorClass_Id = @processorClassId, caProcessor_Id_Parent = @processorIdParent, caProcessor_Id_Clone = @processorIdClone, Name = @processorName, DisplayName = @processorDisplayName, IsActive = @isActive, DateAdded = NOW(), SortOrder = @sortOrder, IsWithdraw = @isWithdraw, IsMenuHidden = @isMenuHidden, IsCascading = '0', InHouse = '1', IsDesktop = '1', IsTablet = '1', IsMobile = '1', TypesSupported = @typesSupported, UnsuccessfulMax = '5', AllowsRefunds = '1'
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) 
--VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5');

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------

UPDATE caProcessorSetting_Group SET caProcessorSetting_Group_Id = NULL, Description = @processorName, DateCreated = NOW()
WHERE Description = @processorName;

--INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
--VALUES (NULL, @processorName, NOW());

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

UPDATE caProcessorCompany SET caCompany_Id = co.caCompany_Id, caProcessorSetting_Group_Id = @lastGroupId, IsActive = 1, MinVIP = 20, CreatedOn = NOW(), Descriptor = NULL, AddRandomAmount = 0
WHERE caProcessor_Id = @processorId AND caProcessorSetting_Group_Id = @lastGroupId;

--INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
--SELECT @processorId, co.caCompany_Id, @lastGroupId, 1,20, NOW(), NULL, 0
--FROM caCompany co
--WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------

UPDATE caProcessorStep_HeaderProcessor SET caProcessorStep_Header_Id = '14', caProcessorStep_Header_Id_W = NULL
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
--VALUES (@processorId, '14', NULL);

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
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	

UPDATE caSoftwareProviderProcessorName SET caSoftwareProvider_Id = 24, Name = 'TKCC_NEW_VBV_2', Translate = 'TKCC_NEW_VBV_2'
WHERE caProcessor_Id = @processorId

--INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
--VALUES(24, 'TKCC_NEW_VBV_1','TKCC_NEW_VBV_1');
	
-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------

UPDATE caProcessorMethodSupported SET caProcessor_Id_Root = '11000'
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
--VALUES (@processorId, '11000');

-- ----------------------------------------
-- caErrorCodeHeaderProcessor --
-- ----------------------------------------

--UPDATE caErrorCodeHeaderProcessor SET caErrorCodeHeader_Id = '2'
--WHERE caProcessor_Id = @processorId;

INSERT INTO caErrorCodeHeaderProcessor (caErrorCodeHeader_Id, caProcessor_Id)
VALUES ('2', @processorId);
--
--
--
--
--
--
-- ----------------------------------
-- caProcessor -- TKCC_NEW_VBV_2
-- ----------------------------------
SET @processorId = 495;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'TKCC_NEW_VBV_2';
SET @processorDisplayName = 'TKCC_NEW_VBV_2';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 1;


UPDATE caProcessor SET caProcessorClass_Id = @processorClassId, caProcessor_Id_Parent = @processorIdParent, caProcessor_Id_Clone = @processorIdClone, Name = @processorName, DisplayName = @processorDisplayName, IsActive = @isActive, DateAdded = NOW(), SortOrder = @sortOrder, IsWithdraw = @isWithdraw, IsMenuHidden = @isMenuHidden, IsCascading = '0', InHouse = '1', IsDesktop = '1', IsTablet = '1', IsMobile = '1', TypesSupported = @typesSupported, UnsuccessfulMax = '5', AllowsRefunds = '1'
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) 
--VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5');

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------

UPDATE caProcessorSetting_Group SET caProcessorSetting_Group_Id = NULL, Description = @processorName, DateCreated = NOW()
WHERE Description = @processorName;

--INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
--VALUES (NULL, @processorName, NOW());

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

UPDATE caProcessorCompany SET caCompany_Id = co.caCompany_Id, caProcessorSetting_Group_Id = @lastGroupId, IsActive = 1, MinVIP = 20, CreatedOn = NOW(), Descriptor = NULL, AddRandomAmount = 0
WHERE caProcessor_Id = @processorId AND caProcessorSetting_Group_Id = @lastGroupId;

--INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
--SELECT @processorId, co.caCompany_Id, @lastGroupId, 1,20, NOW(), NULL, 0
--FROM caCompany co
--WHERE co.IsActive;


-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------

UPDATE caProcessorStep_HeaderProcessor SET caProcessorStep_Header_Id = '14', caProcessorStep_Header_Id_W = NULL
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
--VALUES (@processorId, '14', NULL);

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
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	

UPDATE caSoftwareProviderProcessorName SET caSoftwareProvider_Id = 24, Name = 'TKCC_NEW_VBV_2', Translate = 'TKCC_NEW_VBV_2'
WHERE caProcessor_Id = @processorId

--INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
--VALUES(24, 'TKCC_NEW_VBV_2','TKCC_NEW_VBV_2');
	
-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------

UPDATE caProcessorMethodSupported SET caProcessor_Id_Root = '11000'
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
--VALUES (@processorId, '11000');

-- ----------------------------------------
-- caErrorCodeHeaderProcessor --
-- ----------------------------------------

--UPDATE caErrorCodeHeaderProcessor SET caErrorCodeHeader_Id = '2'
--WHERE caProcessor_Id = @processorId;

INSERT INTO caErrorCodeHeaderProcessor (caErrorCodeHeader_Id, caProcessor_Id) 
VALUES ('2', @processorId);
--
--
--
--
--
--
-- ----------------------------------
-- caProcessor -- TKCC_NEW_VBV_1
-- ----------------------------------
SET @processorId = 496;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'TKCC_NEW_VBV_3';
SET @processorDisplayName = 'TKCC_NEW_VBV_3';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 1;


UPDATE caProcessor SET caProcessorClass_Id = @processorClassId, caProcessor_Id_Parent = @processorIdParent, caProcessor_Id_Clone = @processorIdClone, Name = @processorName, DisplayName = @processorDisplayName, IsActive = @isActive, DateAdded = NOW(), SortOrder = @sortOrder, IsWithdraw = @isWithdraw, IsMenuHidden = @isMenuHidden, IsCascading = '0', InHouse = '1', IsDesktop = '1', IsTablet = '1', IsMobile = '1', TypesSupported = @typesSupported, UnsuccessfulMax = '5', AllowsRefunds = '1'
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) 
--VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5');

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------

UPDATE caProcessorSetting_Group SET caProcessorSetting_Group_Id = NULL, Description = @processorName, DateCreated = NOW()
WHERE Description = @processorName;

--INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
--VALUES (NULL, @processorName, NOW());

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

UPDATE caProcessorCompany SET caCompany_Id = co.caCompany_Id, caProcessorSetting_Group_Id = @lastGroupId, IsActive = 1, MinVIP = 20, CreatedOn = NOW(), Descriptor = NULL, AddRandomAmount = 0
WHERE caProcessor_Id = @processorId AND caProcessorSetting_Group_Id = @lastGroupId;

--INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
--SELECT @processorId, co.caCompany_Id, @lastGroupId, 1,20, NOW(), NULL, 0
--FROM caCompany co
--WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------

UPDATE caProcessorStep_HeaderProcessor SET caProcessorStep_Header_Id = '14', caProcessorStep_Header_Id_W = NULL
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
--VALUES (@processorId, '14', NULL);

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
-- caSoftwareProviderProcessorName --
-- ----------------------------------------	

UPDATE caSoftwareProviderProcessorName SET caSoftwareProvider_Id = 24, Name = 'TKCC_NEW_VBV_2', Translate = 'TKCC_NEW_VBV_2'
WHERE caProcessor_Id = @processorId

--INSERT INTO caSoftwareProviderProcessorName(caSoftwareProvider_Id,Name,Translate)
--VALUES(24, 'TKCC_NEW_VBV_3','TKCC_NEW_VBV_3');
	
-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------

UPDATE caProcessorMethodSupported SET caProcessor_Id_Root = '11000'
WHERE caProcessor_Id = @processorId;

--INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
--VALUES (@processorId, '11000');

-- ----------------------------------------
-- caErrorCodeHeaderProcessor --
-- ----------------------------------------

--UPDATE caErrorCodeHeaderProcessor SET caErrorCodeHeader_Id = '2'
--WHERE caProcessor_Id = @processorId;

INSERT INTO caErrorCodeHeaderProcessor (caErrorCodeHeader_Id, caProcessor_Id)
VALUES ('2', @processorId);