DELETE FROM Mapping..VMP_Contacts;

INSERT INTO Mapping..VMP_Contacts
SELECT *
FROM dbo.VMP_Contacts_Stage;
