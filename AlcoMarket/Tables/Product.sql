CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(20) NOT NULL, 
    [ProductCode] INT NOT NULL unique, 
    [Quantity] INT NOT NULL DEFAULT 0
)
