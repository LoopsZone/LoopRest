-- Magenta
--
--
--
--
--
-- ----------------------------------
-- Company --
-- ----------------------------------

INSERT Company (Name, Created)
VALUES ('Magenta', NOW());

SET @company_Id = LAST_INSERT_ID();

-- ----------------------------------
-- Agency --
-- ----------------------------------
SET @agencyTypeId = 2; -- 1 for WU | 2 for MG
SET @agencyName = 'MG Magenta';
SET @isActive = 1;

INSERT INTO Agency (AgencyType_Id, Name, IsActive, Created, Modified) 
VALUES (@agencyTypeId, @agencyName, @isActive, NOW(), NOW());

SET @agency_Id = LAST_INSERT_ID();

-- ----------------------------------
-- CompanyAgency --
-- ----------------------------------

INSERT INTO CompanyAgency (Company_Id, Agency_Id) 
VALUES(1, @agency_Id);

INSERT INTO CompanyAgency (Company_Id, Agency_Id) 
VALUES(@company_Id, @agency_Id);

-- ----------------------------------
-- AgencySchedule --
-- ----------------------------------

INSERT INTO AgencySchedule (Agency_Id, DayOfWeek, OpenHour, CloseHour) 
VALUES
	(@agency_Id, 1, 0, 23),
	(@agency_Id, 2, 0, 23),
	(@agency_Id, 3, 0, 23),
	(@agency_Id, 4, 0, 23),
	(@agency_Id, 5, 0, 23),
	(@agency_Id, 6, 0, 23),
	(@agency_Id, 7, 0, 23);
	
-- ----------------------------------
-- LimitDetail --
-- ----------------------------------

-- Agency Limits

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Min Amount per Transaction',1, 1, 1, 1, @agencyTypeId, 0, @agency_Id, 1, NOW());

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Daily transactions per Agency', 4, 3, 4, 2, @agencyTypeId, 0, @agency_Id, 20, NOW());

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Max Amount per Transaction', 2, 2, 1, 1, @agencyTypeId, 0, @agency_Id, 600, NOW());

-- Sender Limits

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Weekly transactions per Customer', 4, 3, 2, 3, @agencyTypeId, 0, @agency_Id, 1, NOW());

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Monthly transactions per Customer', 4, 3, 2, 4, @agencyTypeId, 0, @agency_Id, 3, NOW());

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Monthly amount per Customer', 3, 2, 2, 4, @agencyTypeId, 0, @agency_Id, 999, NOW());

-- Receiver Limits

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Weekly transactions per Person', 4, 3, 3, 3, @agencyTypeId, 0, @agency_Id, 1, NOW());

INSERT INTO LimitDetail (Description, Limit_Id, LimitType_Id, LimitScope_Id, LimitInterval_Id, AgencyType_Id, TransactionType_Id, Agency_Id, Value, Modify)
VALUES ('MG Magenta | Monthly amount per Person', 3, 2, 3, 4, @agencyTypeId, 0, @agency_Id, 999, NOW());