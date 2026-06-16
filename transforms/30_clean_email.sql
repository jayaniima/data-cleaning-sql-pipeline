UPDATE s
SET EMailAddress = dbo.fn_extract_email(VMIN1)
FROM dbo.VMP_Contacts_Stage s
WHERE EMailAddress IS NULL AND VMIN1 LIKE '%@%';
