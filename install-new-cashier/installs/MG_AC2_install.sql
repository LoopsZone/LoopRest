-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 941;
SET @processorClassId = 23;
SET @processorIdParent = 275;
SET @processorIdClone = NULL;
SET @processorName = 'MG_AC2';
SET @processorDisplayName = 'MG_AC2';
SET @isActive = 1;
SET @typesSupported = 2;
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
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value) VALUES 
(@lastGroupId, 'API_URL', 'http://www.trustcollect.com/api/mt.asmx'),
(@lastGroupId, 'API_METHOD_DEPOSIT', '/initiate_deposit'),
(@lastGroupId, 'API_METHOD_SUBMIT', '/confirm_deposit'),
(@lastGroupId, 'API_METHOD_PAYOUT', '/initiate_payout'),
(@lastGroupId, 'API_METHOD_STATUS', '/get_status');

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
VALUES (@processorId, 12, 22);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) VALUES 
('1', @processorId, 'MerchantUser', 0),
('2', @processorId, 'MerchantPassword', 0),
('3', @processorId, NULL, 1),
('4', @processorId, NULL, 1);

	-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
VALUES (24, @processorName, 'MG-AC'), (35, @processorName, 'MG-AC');

-- ----------------------------------------
-- caP2PAgency
-- ----------------------------------------
INSERT INTO caP2PAgency (caProcessor_Id, BackendName, ApiName, Destination, Status) 
VALUES (@processorId, 'TrustCollect', 'TrustCollect Webservices Documentation', 'San José, Costa Rica', 1);

SET @agencyId = LAST_INSERT_ID();

-- ----------------------------------------
-- caP2PAgencySchedule
-- ----------------------------------------
INSERT INTO caP2PAgencySchedule (caP2PAgency_Id, caP2PWeekDay_Id, Open, Close, IsInverted) VALUES 
(@agencyId, 1, '06:00:00', '18:00:00', 0),
(@agencyId, 2, '06:00:00', '18:00:00', 0),
(@agencyId, 3, '06:00:00', '18:00:00', 0),
(@agencyId, 4, '06:00:00', '18:00:00', 0),
(@agencyId, 5, '06:00:00', '18:00:00', 0),
(@agencyId, 6, '06:00:00', '18:00:00', 0),
(@agencyId, 7, '06:00:00', '18:00:00', 0);
