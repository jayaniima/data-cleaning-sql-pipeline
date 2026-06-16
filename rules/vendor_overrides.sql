--Handling edge cases

UPDATE dbo.VMP_Contacts_Stage
SET Cont_Name = 'ABCD'
WHERE VMVN# = '001234';
