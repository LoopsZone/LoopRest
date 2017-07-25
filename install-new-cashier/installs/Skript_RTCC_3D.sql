/*Update caProcessor*/
UPDATE caProcessor SET AllowsRefunds=1 WHERE caProcessor_Id = 794;

/*insert caProcessorSetting_Detail*/
INSERT INTO caProcessorSetting_Detail (caProcessorSetting_Group_Id, Code, Value, Label, Length, Description) 
VALUES (134, 'URL_REFUND', 'https://secure.qwipi.com/universalS2S/refund', NULL, NULL, NULL),
       (134, 'REFUND_RETURN_URL', 'https://public.secureprivate.com/rtcc/status/', NULL, NULL, NULL);
