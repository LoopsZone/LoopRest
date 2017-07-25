-- ----------------------------------
-- caCardType --
-- ----------------------------------
SET @cardType = 9;

INSERT INTO caCardType (caCardType_Id, caProcessorClass_Id, Name, Description, IsActive)
VALUES (@cardType, 23, 'BP', 'BillPay', 1);

-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 36;
SET @processorClassId = 23;
SET @processorIdParent = 275;
SET @processorIdClone = 275;
SET @processorName = 'BillPay';
SET @processorDisplayName = 'Person 2 Person (BillPay)';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 0;

INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) 
VALUES (@processorId, @processorClassId, @processorIdParent, @processorIdClone, @processorName, @processorDisplayName, @isActive, NOW(), @sortOrder, @isWithdraw, @isMenuHidden, '0', '1', '1', '1', '1', @typesSupported, '5');

INSERT INTO caProcessorSkin (caProcessorSkin_Id, caProcessor_Id, caProcessor_Id_Parent, Name, DisplayName, IsActive, IsWithdraw, DateAdded, SortOrder)
VALUES (1000360000, @processorId, @processorId, 'P2P', 'BillPay Retiros', 0, 1, NOW(), 0);

-- ----------------------------------
-- caProcessorCardType --
-- ----------------------------------
INSERT INTO caProcessorCardType (caCardType_Id, caProcessor_Id, IsActive)
VALUES (@cardType, @processorId, 1);

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------
SET @lastGroupId = 14;

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
SELECT @processorId, co.caCompany_Id, @lastGroupId, 1, 20, NOW(), NULL, 0 
FROM caCompany co WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES (@processorId, '6', '22');

-- ----------------------------------------
-- caP2PAgency --
-- ----------------------------------------
INSERT INTO caP2PAgency (caProcessor_Id, BackendName, ApiName, Destination) VALUES (@processorId, 'BillPay', NULL, NULL);
SET @lastAgencyId = LAST_INSERT_ID();

-- ----------------------------------------
-- caP2PAgencySchedule --
-- ----------------------------------------
INSERT INTO caP2PAgencySchedule (caP2PAgency_Id, caP2PWeekDay_Id, Open, Close, IsInverted) VALUES 
(@lastAgencyId, '7', '00:00:00', '23:59:00', '0'),
(@lastAgencyId, '6', '00:00:00', '23:59:00', '0'),
(@lastAgencyId, '5', '00:00:00', '23:59:00', '0'),
(@lastAgencyId, '4', '00:00:00', '23:59:00', '0'),
(@lastAgencyId, '3', '00:00:00', '23:59:00', '0'),
(@lastAgencyId, '2', '00:00:00', '23:59:00', '0'),
(@lastAgencyId, '1', '00:00:00', '23:59:00', '0');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
-- INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) VALUES 
-- ('19', @processorName, 'BillPay|121'),
-- ('20', @processorName, 'BillPay|121');