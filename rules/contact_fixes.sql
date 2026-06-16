--Formatting for Country code

UPDATE dbo.VMP_Contacts_Stage
SET PhoneNum =  '+1 ' + REPLACE(PhoneNum,'-',' ')
     FaxNum  =  '+1 ' + REPLACE(FaxNum,'-',' ')
WHERE VMVN# IN (SELECT VMVN# FFROM Company..VMP WHERE Country = 'US'); -- +1 123 123 1234

UPDATE dbo.VMP_Contacts_Stage
SET PhoneNum =  '+1' + REPLACE(PhoneNum,'-','')
     FaxNum  =  '+1' + REPLACE(FaxNum,'-','')
WHERE VMVN# IN (SELECT VMVN# FFROM Company..VMP WHERE Country = 'CA'); --+11231231234
