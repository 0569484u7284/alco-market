CREATE TABLE [dbo].[Suppliers]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [Name] NVARCHAR(50) NOT NULL, 
    [CountryID] INT NOT NULL ,
	FOREIGN KEY ([CountryID]) REFERENCES Country
)
