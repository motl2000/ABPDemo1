CREATE TABLE [dbo].[IdentityServerApiResources] (
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
    [Name]                 NVARCHAR (200)   NOT NULL,
    [DisplayName]          NVARCHAR (200)   NULL,
    [Description]          NVARCHAR (1000)  NULL,
    [Enabled]              BIT              NOT NULL,
    [Properties]           NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_IdentityServerApiResources] PRIMARY KEY CLUSTERED ([Id] ASC)
);

