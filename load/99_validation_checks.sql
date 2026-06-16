SELECT COUNT(*) AS MissingNames
FROM dbo.VMP_Contacts_Stage
WHERE Cont_Name IS NULL;

SELECT COUNT(*) AS MissingPhones
FROM dbo.VMP_Contacts_Stage
WHERE PhoneNum IS NULL AND CellPhoneNum IS NULL;
