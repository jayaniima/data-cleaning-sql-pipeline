UPDATE s
SET Cont_Name = dbo.fn_clean_text(VMIN1)
FROM dbo.VMP_Contacts_Stage s
WHERE Cont_Name IS NULL
  AND VMIN1 LIKE '%[A-Z]%';
