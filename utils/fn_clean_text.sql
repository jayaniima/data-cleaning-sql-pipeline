CREATE OR ALTER FUNCTION dbo.fn_clean_text (@input VARCHAR(500))
RETURNS VARCHAR(500)
AS
BEGIN
    RETURN LTRIM(RTRIM(
        REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
        REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
        @input,
        'CELL PHONE',''),
        'CELL',''),
        'DIRECT LINE',''),
        'PHONE',''),
        '#',''),
        '(',''),
        ')',''),
        '''S',''),
        ',',''),
        ':','')
    ))
END;
GO
