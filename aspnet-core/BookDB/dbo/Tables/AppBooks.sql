CREATE TABLE [dbo].[AppBooks]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NULL, 
    [Type] INT NULL, 
    [PublishDate] DATETIME NULL, 
    [Price] DECIMAL(18, 2) NULL
)
