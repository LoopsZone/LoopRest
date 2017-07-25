/*insert caJob*/
SET @caJob_Id = LAST_INSERT_ID();
insert into caJob (caJob_Id ,caJobInterval_Id, Name, Description, IntervalValue, IsActive, IsRunning) VALUES (@caJob_Id, 2, 'SafetyPay', 'CheckStatus Safety Pay', 5, 1, 0);

/*insert caJobConfig*/
insert caJobConfig (caJob_Id, Url, Distribution, IsActive) VALUES (@caJob_Id, 'http://services1.im.priv/wspublic/wsServices.php', 100, 1);