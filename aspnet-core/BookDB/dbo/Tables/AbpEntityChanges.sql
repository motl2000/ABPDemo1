CREATE TABLE [dbo].[AbpEntityChanges] (
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [AuditLogId]         UNIQUEIDENTIFIER NOT NULL,
    [TenantId]           UNIQUEIDENTIFIER NULL,
    [ChangeTime]         DATETIME2 (7)    NOT NULL,
    [ChangeType]         TINYINT          NOT NULL,
    [EntityTenantId]     UNIQUEIDENTIFIER NULL,
    [EntityId]           NVARCHAR (128)   NOT NULL,
    [EntityTypeFullName] NVARCHAR (128)   NOT NULL,
    [ExtraProperties]    NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_AbpEntityChanges] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AbpEntityChanges_AbpAuditLogs_AuditLogId] FOREIGN KEY ([AuditLogId]) REFERENCES [dbo].[AbpAuditLogs] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_AuditLogId]
    ON [dbo].[AbpEntityChanges]([AuditLogId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_TenantId_EntityTypeFullName_EntityId]
    ON [dbo].[AbpEntityChanges]([TenantId] ASC, [EntityTypeFullName] ASC, [EntityId] ASC);

