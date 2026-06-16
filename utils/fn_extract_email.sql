CREATE OR ALTER FUNCTION dbo.fn_extract_email (@txt VARCHAR(500))
RETURNS VARCHAR(200)
AS
BEGIN
    DECLARE @email VARCHAR(200);

    SELECT @email =
        TRIM(REPLACE(REPLACE(@txt, 'EMAIL', ''), ':', ''));

    RETURN CASE 
        WHEN @email LIKE '%@%.%' THEN @email
        ELSE NULL
    END;
END;
GO
