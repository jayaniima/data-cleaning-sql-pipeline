CREATE OR ALTER FUNCTION dbo.fn_extract_phone (@txt VARCHAR(500))
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @pos INT;

    SET @pos = PATINDEX('%[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]%', @txt);

    RETURN CASE 
        WHEN @pos > 0 THEN SUBSTRING(@txt, @pos, 12)
        ELSE NULL
    END;
END;
GO
