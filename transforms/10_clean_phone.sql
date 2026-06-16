UPDATE s
SET PhoneNum = COALESCE(PhoneNum, dbo.fn_extract_phone(VMIN1))
FROM dbo.VMP_Contacts_Stage s
WHERE PhoneNum IS NULL;
