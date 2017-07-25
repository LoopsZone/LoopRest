-- ----------------------------------
-- caProcessor --
-- ----------------------------------
SET @processorId = 387;
SET @processorClassId = 1;
SET @processorIdParent = NULL;
SET @processorIdClone = NULL;
SET @processorName = 'PayClub';
SET @processorDisplayName = 'PayClub';
SET @isActive = 1;
SET @typesSupported = 0;
SET @sortOrder = 0;
SET @isWithdraw = 0;
SET @isMenuHidden = 0;

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
(@lastGroupId, 'API_URL', 'https://www3.optar.ec/webmpi/vpos'),
(@lastGroupId, 'REFERRER_URL', 'https://public.secureprivate.com');

-- ----------------------------------
-- caProcessorCompany --
-- ----------------------------------
INSERT INTO caProcessorCompany (caProcessor_Id, caCompany_Id, caProcessorSetting_Group_Id, IsActive, MinVIP, CreatedOn, Descriptor, AddRandomAmount) 
SELECT @processorId, co.caCompany_Id, @lastGroupId, 1, 20, NOW(), null, 0
FROM caCompany co
WHERE co.IsActive;

-- ----------------------------------------
-- caProcessorStep_HeaderProcessor --
-- ----------------------------------------
INSERT INTO caProcessorStep_HeaderProcessor (caProcessor_Id, caProcessorStep_Header_Id, caProcessorStep_Header_Id_W) 
VALUES (@processorId, 7, NULL);

-- ----------------------------------------
-- caProcessorSettingLabel --
-- ----------------------------------------
INSERT INTO caProcessorSettingLabel (caProcessorSettingLabelType_Id, caProcessor_Id, Label, Hide) 
VALUES 
('1', @processorId, 'MerchantID', 0),
('2', @processorId, '[]', 1),
('3', @processorId, 'LocalID', 0),
('4', @processorId, 'AdquirerID', 0);

-- ----------------------------------------
-- caProcessorSkin --
-- ----------------------------------------
INSERT INTO caProcessorSkin (caProcessorSkin_Id, caProcessor_Id, caProcessor_Id_Parent, DisplayName, IsActive) 
VALUES 
(387000001, @processorId, @processorId, 'VISA by PayClub', 1),
(387000002, @processorId, @processorId, 'MasterCard by PayClub', 1),
(387000003, @processorId, @processorId, 'Diners by PayClub', 1),
(387000004, @processorId, @processorId, 'Discovery by PayClub', 1);