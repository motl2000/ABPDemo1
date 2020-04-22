CREATE TABLE [dbo].[IdentityServerPersistedGrants] (
    [Key]              NVARCHAR (200)   NOT NULL,
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ExtraProperties]  NVARCHAR (MAX)   NULL,
    [ConcurrencyStamp] NVARCHAR (MAX)   NULL,
    [Type]             NVARCHAR (50)    NOT NULL,
    [SubjectId]        NVARCHAR (200)   NULL,
    [ClientId]         NVARCHAR (200)   NOT NULL,
    [CreationTime]     DATETIME2 (7)    NOT NULL,
    [Expiration]       DATETIME2 (7)    NULL,
    [Data]             NVARCHAR (MAX)   NOT NULL,
    CONSTRAINT [PK_IdentityServerPersistedGrants] PRIMARY KEY CLUSTERED ([Key] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_IdentityServerPersistedGrants_Expiration]
    ON [dbo].[IdentityServerPersistedGrants]([Expiration] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_IdentityServerPersistedGrants_SubjectId_ClientId_Type]
    ON [dbo].[IdentityServerPersistedGrants]([SubjectId] ASC, [ClientId] ASC, [Type] ASC);

