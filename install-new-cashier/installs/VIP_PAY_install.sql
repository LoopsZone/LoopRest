-- ----------------------------------
-- caProcessor --
-- ----------------------------------
INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) VALUES 
('1001', '1', '1100', NULL, 'VIP_PAY', 'VIP_PAY', '1', NOW(), '0', '1', '1', '0', '1', '1', '1', '1', '1', '5');

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------
INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
VALUES (NULL, 'VIP_PAY', NOW());

SET @lastGroupId = LAST_INSERT_ID();

-- ----------------------------------
-- caProcessorSetting_Detail --
-- ----------------------------------
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value) 
VALUES (@lastGroupId, 'URL_API', 'https://api.vippay.co/payments');

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
SELECT '1001', co.caCompany_Id, @lastGroupId, 1, 20, NOW(), NULL, 0 
FROM caCompany co WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES ('1001', NULL, 22);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) VALUES 
('1', '1001', 'Authentication Key', '0'),
('2', '1001', NULL, '1'),
('3', '1001', NULL, '1'),
('4', '1001', 'Hash Key', '0');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
-- INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
-- VALUES ('19', 'VIP_PAY', 'VIPPAY|X')
-- VALUES ('20', 'VIP_PAY', 'VIPPAY|X')
-- ;