CREATE TABLE [dbo].[AbpUsers] (
    [Id]                   UNIQUEIDENTIFIER   NOT NULL,
    [ExtraProperties]      NVARCHAR (MAX)     NULL,
    [ConcurrencyStamp]     NVARCHAR (MAX)     NULL,
    [CreationTime]         DATETIME2 (7)      NOT NULL,
    [CreatorId]            UNIQUEIDENTIFIER   NULL,
    [LastModificationTime] DATETIME2 (7)      NULL,
    [LastModifierId]       UNIQUEIDENTIFIER   NULL,
    [IsDeleted]            BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [DeleterId]            UNIQUEIDENTIFIER   NULL,
    [DeletionTime]         DATETIME2 (7)      NULL,
    [TenantId]             UNIQUEIDENTIFIER   NULL,
    [UserName]             NVARCHAR (256)     NOT NULL,
    [NormalizedUserName]   NVARCHAR (256)     NOT NULL,
    [Name]                 NVARCHAR (64)      NULL,
    [Surname]              NVARCHAR (64)      NULL,
    [Email]                NVARCHAR (256)     NOT NULL,
    [NormalizedEmail]      NVARCHAR (256)     NOT NULL,
    [EmailConfirmed]       BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [PasswordHash]         NVARCHAR (256)     NULL,
    [SecurityStamp]        NVARCHAR (256)     NOT NULL,
    [PhoneNumber]          NVARCHAR (16)      NULL,
    [PhoneNumberConfirmed] BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [TwoFactorEnabled]     BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [LockoutEnd]           DATETIMEOFFSET (7) NULL,
    [LockoutEnabled]       BIT                DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [AccessFailedCount]    INT                DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_AbpUsers] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpUsers_Email]
    ON [dbo].[AbpUsers]([Email] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AbpUsers_NormalizedEmail]
    ON [dbo].[AbpUsers]([NormalizedEmail] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AbpUsers_NormalizedUserName]
    ON [dbo].[AbpUsers]([NormalizedUserName] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AbpUsers_UserName]
    ON [dbo].[AbpUsers]([UserName] ASC);

