-- ----------------------------------
-- caProcessor --
-- ----------------------------------
INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, TypesSupported, UnsuccessfulMax) 
VALUES ('777', '1', '270', NULL, 'CC_RTCC_COM', 'CC_RTCC_COM', '1', NOW(), '0', '0', '1', '0', '1', '1', '1', '1', '0', '5');

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------
INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
VALUES (NULL, 'CC_RTCC_COM', NOW());

SET @lastGroupId = LAST_INSERT_ID();

-- ----------------------------------
-- caProcessorSetting_Detail --
-- ----------------------------------
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value) 
VALUES (@lastGroupId, 'URL_API', 'https://secure.bankcommsolutions.com/direct/payment');

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
SELECT '777', co.caCompany_Id, @lastGroupId, 1, 20, NOW(), NULL, 1 
FROM caCompany co WHERE co.IsActive

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES ('777', '3', NULL);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) VALUES 
('1', '777', 'MID ID', '0'),
('2', '777', NULL, '1'),
('3', '777', NULL, '1'),
('4', '777', 'MD5key', '0');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
VALUES ('19', 'CC_RTCC_COM', 'CCRTCCCOM|85');