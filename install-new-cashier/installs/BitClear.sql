-- ----------------------------------
-- caProcessor --
-- ----------------------------------
INSERT INTO caProcessor (caProcessor_Id, caProcessorClass_Id, caProcessor_Id_Parent, caProcessor_Id_Clone, Name, DisplayName, IsActive, DateAdded, SortOrder, IsWithdraw, IsMenuHidden, SkinsOnly, IsCascading, InHouse, IsDesktop, IsTablet, IsMobile, IsMobileLegacy, Is1Click, IsMisc, TypesSupported, UnsuccessfulMax, RestrictPayAccount, MaintainRateToProcessor) 
VALUES ('822', '5', '814', NULL, 'BTC_BITCLEAR', 'BitClear', '1', '2015-10-21 00:00:00', '0', '0', '1', '0', '0', '1', '1', '1', '1', '0', '0', '0', '2', '5', '0', '0');

-- ----------------------------------
-- caProcessorSetting_Group --
-- ----------------------------------
INSERT INTO caProcessorSetting_Group (caProcessorSetting_Group_Id, Description, DateCreated) 
VALUES ('153', 'BITCLEAR', '2015-10-21 00:00:00');

-- ----------------------------------
-- caProcessorSetting_Detail --
-- ----------------------------------
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value, Label, Length, Description) 
VALUES ('153', 'API_URL', 'https://api.clearcollect.com/crypto/v2/', null, null, null),
VALUES ('153', 'NEW_DEPOSIT', 'deposit/new/json', null, null, null),
VALUES ('153', 'GET_DEPOSIT', 'deposit/get/json', null, null, null),
VALUES ('153', 'NEW_WITHDRAW', 'withdraw/new/json', null, null, null),
VALUES ('153', 'GET_WITHDRAW', 'withdraw/get/json', null, null, null);

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, SortOrder, Descriptor, MoveMoneyOnProcessing, AddRandomAmount, CreateDeferredOnReject, ProcessFinalAmount) 
VALUES ('822', '2', '153', '1', '-3', '2015-10-21 00:00:00', '0', NULL, '0', '0', NULL, '0'),
VALUES ('822', '3', '153', '1', '-3', '2015-10-21 00:00:00', '0', NULL, '0', '0', NULL, '0'),
VALUES ('822', '13', '153', '1', '-3', '2015-10-21 00:00:00', '0', NULL, '0', '0', NULL, '0'),
VALUES ('822', '50', '153', '1', '-3', '2015-10-21 00:00:00', '0', NULL, '0', '0', NULL, '0'),
VALUES ('822', '60', '153', '1', '-3', '2015-10-21 00:00:00', '0', NULL, '0', '0', NULL, '0');

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES ('822', '22', '22');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES ('1', '822', 'Authorize [true|false]', '0'),
VALUES ('2', '822', 'Secret', '0'),
VALUES ('3', '822', NULL, '1'),
VALUES ('4', '822', 'Key', '0');

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caSoftwareProviderProcessorName (caSoftwareProvider_Id, Name, Translate) 
VALUES ('24', 'BTC_BITCLEAR', 'BITCLEAR'),
VALUES ('35', 'BTC_BITCLEAR', 'BITCLEAR');
