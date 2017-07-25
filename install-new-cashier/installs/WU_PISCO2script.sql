INSERT INTO `caProcessor` (`caProcessor_Id`, `caProcessorClass_Id`, `caProcessor_Id_Parent`, `caProcessor_Id_Clone`, `Name`, `DisplayName`, `IsActive`, `DateAdded`, `SortOrder`, `IsWithdraw`, `IsMenuHidden`, `SkinsOnly`, `IsCascading`, `InHouse`, `IsDesktop`, `IsTablet`, `IsMobile`, `IsMobileLegacy`, `Is1Click`, `IsMisc`, `TypesSupported`, `UnsuccessfulMax`, `RestrictPayAccount`, `MaintainRateToProcessor`) 
VALUES ('989', '23', '275', NULL, 'WU_PISCO2', 'WU_PISCO2', '1', NOW(), '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '2', '5', '0', '0');

INSERT INTO `caProcessorSetting_Detail` (`caProcessorSetting_Detail_Id`, `caProcessorSetting_Group_Id`, `Code`, `Value`, `Label`, `Length`, `Description`) 
VALUES (NULL, '155', 'URL_WS', 'http://paybackup.com/webservice/service.asmx?WSDL', '', NULL, '');

INSERT INTO `caProcessorCompany` (`caProcessor_Id`, `caCompany_Id`, `caProcessorSetting_Group_Id`, `IsActive`, `MinVIP`, `CreatedOn`, `SortOrder`, `Descriptor`, `MoveMoneyOnProcessing`, `AddRandomAmount`, `CreateDeferredOnReject`, `ProcessFinalAmount`) VALUES 
	('989', '2', '155', '0', '20', NOW(), '0', '', '0', '0', NULL, '0'),
	('989', '3', '155', '0', '20', NOW(), '0', '', '0', '0', NULL, '0'),
	('989', '13', '155', '0', '20', NOW(), '0', '', '0', '0', NULL, '0'),
	('989', '50', '155', '0', '20', NOW(), '0', '', '0', '0', NULL, '0'),
	('989', '60', '155', '0', '20', NOW(), '0', '', '0', '0', NULL, '0');

INSERT INTO `caProcessorStep_HeaderProcessor` (`caProcessor_Id`, `caProcessorStep_Header_Id`, `caProcessorStep_Header_Id_W`) 
VALUES ('989', '12', '22');

INSERT INTO `caProcessorSettingLabel` (`caProcessorSettingLabel_Id`, `caProcessorSettingLabelType_Id`, `caProcessor_Id`, `Label`, `Hide`) VALUES 
(NULL, '1', '989', 'Username', '0'),
(NULL, '2', '989', 'Password', '0'),
(NULL, '3', '989', 'DocTypeID', '0'),
(NULL, '4', '989', 'CompanyID', '0');

INSERT INTO `caSoftwareProviderProcessorName` (`caSoftwareProvider_Id`, `Name`, `Translate`) VALUES ('24', 'WU_PISCO2', 'WU-PISCO 2');

INSERT INTO `caP2PAgency` (`caProcessor_Id`, `BackendName`, `ApiName`, `Destination`) VALUES ('989', 'PISCO2', 'No_Pisco_on_Manual_Request.docx', 'Lima, Perü');

INSERT INTO `caP2PAgencySchedule` (`caP2PAgency_Id`, `caP2PWeekDay_Id`, `Open`, `Close`, `IsInverted`) VALUES 
('48', '7', '00:00:00', '23:59:00', '0'),
('48', '6', '00:00:00', '23:59:00', '0'),
('48', '5', '00:00:00', '23:59:00', '0'),
('48', '4', '00:00:00', '23:59:00', '0'),
('48', '3', '00:00:00', '23:59:00', '0'),
('48', '2', '00:00:00', '23:59:00', '0'),
('48', '1', '00:00:00', '23:59:00', '0');