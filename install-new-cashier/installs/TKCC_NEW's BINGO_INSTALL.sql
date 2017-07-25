-- ----------------------------------
-- caProcessor -- TKCC_NEW_I2_1
-- ----------------------------------
SET @processorId = 491;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'TKCC_NEW_I2_1';
SET @processorDisplayName = 'TKCC_NEW_I2_1';
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
(@lastGroupId, 'API_URL', 'https://api.epg-services.com/V2/paygate/transaction'),
(@lastGroupId, 'TransactionType', 'Sale'),
(@lastGroupId, 'RECONCILE_URL', 'https://api.epg-services.com/V2/reconcile/get'),
(@lastGroupId, 'TransactionUrl', 'https://public.secureprivate.com/default/index');

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
	
-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------
INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
VALUES (@processorId, '11001');

-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
SELECT caSoftwareProvider_Id, @processorName, 'TKCC_NI1|135'
FROM caSoftwareProvider;
--
--
--
--
--
-- ----------------------------------
-- caProcessor -- TKCC_NEW_I2_2
-- ----------------------------------
SET @processorId = 492;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'TKCC_NEW_I2_2';
SET @processorDisplayName = 'TKCC_NEW_I2_2';
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
(@lastGroupId, 'API_URL', 'https://api.epg-services.com/V2/paygate/transaction'),
(@lastGroupId, 'TransactionType', 'Sale'),
(@lastGroupId, 'RECONCILE_URL', 'https://api.epg-services.com/V2/reconcile/get'),
(@lastGroupId, 'TransactionUrl', 'https://public.secureprivate.com/default/index');

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
	
-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------
INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
VALUES (@processorId, '11001');

-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
SELECT caSoftwareProvider_Id, @processorName, 'TKCC_NI2|136'
FROM caSoftwareProvider;
--
--
--
--
--
-- ----------------------------------
-- caProcessor -- TKCC_NEW_I2_3
-- ----------------------------------
SET @processorId = 493;
SET @processorClassId = 1;
SET @processorIdParent = 270;
SET @processorIdClone = NULL;
SET @processorName = 'TKCC_NEW_I2_3';
SET @processorDisplayName = 'TKCC_NEW_I2_3';
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
(@lastGroupId, 'API_URL', 'https://api.epg-services.com/V2/paygate/transaction'),
(@lastGroupId, 'TransactionType', 'Sale'),
(@lastGroupId, 'RECONCILE_URL', 'https://api.epg-services.com/V2/reconcile/get'),
(@lastGroupId, 'TransactionUrl', 'https://public.secureprivate.com/default/index');

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
	
-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------
INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
VALUES (@processorId, '11001');

-- ----------------------------------------
-- caSoftwareProviderProcessorName --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
SELECT caSoftwareProvider_Id, @processorName, 'TKCC_NI3|137'
FROM caSoftwareProvider;
--
--
--
--
-- ----------------------------------------
-- cpTransactionJournal_Failed --
-- ----------------------------------------
DROP PROCEDURE IF EXISTS `cpTransactionJournal_Failed`;

CREATE DEFINER = `midasone`@`%` PROCEDURE `cpTransactionJournal_Failed`()
BEGIN
SELECT j.caJournal_Id, 
    j.caTransaction_Id, 
    j.caProcessor_Id, 
    j.caCompany_Id,
    j.DateTrans, 
    j.DateTrans_Modified, 
    j.caTransactionStatus_Id,
    t.caTransactionStatus_Id TransStatusId,
    p.Name ProcessorName
 
FROM caJournal j
INNER JOIN caTransactionRecent t ON (t.caTransaction_Id = j.caTransaction_Id)
INNER JOIN caProcessor p ON (p.caProcessor_Id = j.caProcessor_Id) 
WHERE j.caTransactionStatus_Id = 4
      AND j.caProcessor_Id IN (752, 766, 767, 967, 667, 866, 867, 875, 476, 477, 480, 481, 483, 484, 648, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496)   
      AND j.DateTrans > DATE_ADD(NOW(),INTERVAL -10 MINUTE)
ORDER BY j.caJournal_Id DESC
;

END;