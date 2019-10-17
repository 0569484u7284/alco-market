CREATE TABLE [dbo].[Category]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 
    [Name] NVARCHAR(50) NOT NULL unique
)
