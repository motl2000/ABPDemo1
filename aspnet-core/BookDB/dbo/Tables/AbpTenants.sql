CREATE TABLE [dbo].[AbpTenants] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [ExtraProperties]      NVARCHAR (MAX)   NULL,
    [ConcurrencyStamp]     NVARCHAR (MAX)   NULL,
    [CreationTime]         DATETIME2 (7)    NOT NULL,
    [CreatorId]            UNIQUEIDENTIFIER NULL,
    [LastModificationTime] DATETIME2 (7)    NULL,
    [LastModifierId]       UNIQUEIDENTIFIER NULL,
    [IsDeleted]            BIT              DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [DeleterId]            UNIQUEIDENTIFIER NULL,
    [DeletionTime]         DATETIME2 (7)    NULL,
    [Name]                 NVARCHAR (64)    NOT NULL,
    CONSTRAINT [PK_AbpTenants] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpTenants_Name]
    ON [dbo].[AbpTenants]([Name] ASC);

