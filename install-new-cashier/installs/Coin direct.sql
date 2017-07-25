DROP TABLE IF EXISTS caProvider;
CREATE TABLE caProvider(
	caProvider_Id INT NOT NULL AUTO_INCREMENT,
	Name VARCHAR(50) NOT NULL,
	Description VARCHAR(255) NOT NULL,
	IsActive BIT NOT NULL,
	PRIMARY KEY(caProvider_Id)
);

INSERT INTO caProvider(caProvider_Id, Name, Description, IsActive)
VALUES(1, 'Coin Direct', 'Coin Direct API', 1);

DROP TABLE IF EXISTS caProviderConfig;
CREATE TABLE caProviderConfig(
	caProviderConfig_Id INT NOT NULL AUTO_INCREMENT,
	caProvider_Id INT NOT NULL,
	caCompany_Id INT NULL,
	MinVIP INT NOT NULL,
	IsActive BIT NOT NULL,
	PRIMARY KEY(caProviderConfig_Id),
	CONSTRAINT FK_caProviderConfig_caProvider_Id FOREIGN KEY(caProvider_Id) 
	REFERENCES caProvider(caProvider_Id),
	CONSTRAINT FK_caProviderConfig_caCompany_Id FOREIGN KEY(caCompany_Id) 
	REFERENCES caCompany(caCompany_Id)
);

INSERT INTO caProviderConfig(caProvider_Id, caCompany_Id, MinVIP, IsActive)
VALUES(1, NULL, 20, 0);

DROP TABLE IF EXISTS caProviderSetting;
CREATE TABLE caProviderSetting(
	caProviderSetting_Id INT NOT NULL AUTO_INCREMENT,
	caProviderConfig_Id INT NOT NULL,
	`Key` VARCHAR(50) NOT NULL,
	`Value` VARCHAR(255) NOT NULL,
	PRIMARY KEY(caProviderSetting_Id),
	CONSTRAINT FK_caProviderSetting_caProviderConfig_Id FOREIGN KEY(caProviderConfig_Id)
	REFERENCES caProviderConfig(caProviderConfig_Id)
);

INSERT INTO caProviderSetting(caProviderSetting_Id, caProviderConfig_Id, `Key`, `Value`)
VALUES
(1, 1, 'USERNAME', 'midas'),
(2, 1, 'PASSWORD', 'VbEYmyrYY3yshnbR'),
(3, 1, 'URL_API', 'http://api.coindirect.co/external/v1/'),
(4, 1, 'URL_RETURN', 'https://public.secureprivate.com/default/load/{token}');




-- agregar la columna LinkId en la tabla caCustomerPersonal
ALTER TABLE caCustomerPersonal
ADD COLUMN LinkId varbinary(100) NULL; 

-- crear un procedimiento almacenado para actualizar el dato linkId
DROP PROCEDURE IF EXISTS cpCustomerPersonal_Update_LinkId;
CREATE PROCEDURE cpCustomerPersonal_Update_LinkId(
	IN pCustomer_Id INT,
	IN pLinkId VARCHAR(100),
	IN EncryptionKeyP VARCHAR(40)
)
BEGIN

	UPDATE caCustomerPersonal
	SET linkId = AES_ENCRYPT(pLinkId, EncryptionKeyP)
	WHERE caCustomer_Id = pCustomer_Id;
END

DROP PROCEDURE IF EXISTS cpProvider_GetSetting;
CREATE PROCEDURE cpProvider_GetSetting(
	IN pProviderId INT,
	IN pCompanyId INT
)
BEGIN
	
	select `KEY`,`Value`
	from caProviderSetting ps
	inner join caProviderConfig pc on ps.caProviderConfig_Id = pc.caProviderConfig_Id
	inner join caProvider p on p.caProvider_Id = pc.caProvider_Id
	where p.caProvider_Id = pProviderId
	and p.IsActive = 1
	and (pc.caCompany_Id = pCompanyId or pc.caCompany_Id is null)
	and pc.IsActive = 1;

END;


DROP PROCEDURE IF EXISTS cpProvider_IsActive;
CREATE PROCEDURE cpProvider_IsActive(
	IN pProviderId INT,
	IN pMinVIP INT,
	IN pCompanyId INT
)
BEGIN
	
	SELECT MinVIP 
	FROM caProviderConfig
	WHERE (caCompany_Id = pCompanyId OR caCompany_Id IS NULL) 
		AND MinVIP <= pMinVIP 
		AND caProvider_Id = pProviderId
		AND IsActive = 1;
END;