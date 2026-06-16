UPDATE s
SET FaxNum = COALESCE(FaxNum, dbo.fn_extract_phone(VMIN1))
FROM dbo.VMP_Contacts_Stage s
WHERE VMIN1 LIKE '%FAX%';
