IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'fct') 
BEGIN 
    CREATE TABLE [dbo].[fct] (
        [id]        INT           NULL,
        [name]      VARCHAR (200) NULL,
        [isactive]  BIT           NULL,
        [age]       INT           NULL,
        [Gender]    INT           NULL,
        [LastName]  VARCHAR (200) NULL,
        [FirstName] VARCHAR (200) NULL,
        [FullName]  INT           NULL
    );

END


GO

--//Adding Phone Number to fct table
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'fct' AND COLUMN_NAME = 'PhoneNumber') 
BEGIN 
    ALTER TABLE [dbo].[fct] ADD [PhoneNumber] VARCHAR(20)
END



