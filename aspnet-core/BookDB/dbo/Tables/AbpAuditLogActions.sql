CREATE TABLE [dbo].[AbpAuditLogActions] (
    [Id]                UNIQUEIDENTIFIER NOT NULL,
    [TenantId]          UNIQUEIDENTIFIER NULL,
    [AuditLogId]        UNIQUEIDENTIFIER NOT NULL,
    [ServiceName]       NVARCHAR (256)   NULL,
    [MethodName]        NVARCHAR (128)   NULL,
    [Parameters]        NVARCHAR (2000)  NULL,
    [ExecutionTime]     DATETIME2 (7)    NOT NULL,
    [ExecutionDuration] INT              NOT NULL,
    [ExtraProperties]   NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_AbpAuditLogActions] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AbpAuditLogActions_AbpAuditLogs_AuditLogId] FOREIGN KEY ([AuditLogId]) REFERENCES [dbo].[AbpAuditLogs] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogActions_AuditLogId]
    ON [dbo].[AbpAuditLogActions]([AuditLogId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogActions_TenantId_ServiceName_MethodName_ExecutionTime]
    ON [dbo].[AbpAuditLogActions]([TenantId] ASC, [ServiceName] ASC, [MethodName] ASC, [ExecutionTime] ASC);

