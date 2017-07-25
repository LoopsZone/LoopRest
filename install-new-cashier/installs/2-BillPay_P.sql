-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 550;
SET @processorClassId = 23;
SET @processorIdParent = 275;
SET @processorIdClone = 275;
SET @processorName = 'BillPay_P';
SET @processorDisplayName = 'BillPay_P';
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
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value) VALUES 
(@lastGroupId, 'URL_WS', 'https://paybackup.com/webservice/service.asmx?WSDL');

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
VALUES (@processorId, '12', '22');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) VALUES 
('1', @processorId, 'UserName', '0'),
('2', @processorId, 'Password', '0'),
('3', @processorId, 'DocTypeID', '0'),
('4', @processorId, 'CompanyID', '0');

-- ----------------------------------------
-- caProcessorMethodSupported --
-- ----------------------------------------
INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root) 
VALUES (@processorId, '36');

-- ----------------------------------------
-- caP2PAgency --
-- ----------------------------------------
INSERT INTO caP2PAgency (caProcessor_Id, BackendName, ApiName, Destination) VALUES (@processorId, 'BillPay', '', '');
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
-- ProcessorMethodSupported
-- ----------------------------------------
INSERT INTO caProcessorMethodSupported (caProcessor_Id, caProcessor_Id_Root)
VALUES
(@processorId, 26);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) VALUES 
('19', @processorName, 'BillPay|121'),
('20', @processorName, 'BillPay|121');