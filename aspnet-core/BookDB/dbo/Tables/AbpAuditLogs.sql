CREATE TABLE [dbo].[AbpAuditLogs] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [ExtraProperties]      NVARCHAR (MAX)   NULL,
    [ConcurrencyStamp]     NVARCHAR (MAX)   NULL,
    [ApplicationName]      NVARCHAR (96)    NULL,
    [UserId]               UNIQUEIDENTIFIER NULL,
    [UserName]             NVARCHAR (256)   NULL,
    [TenantId]             UNIQUEIDENTIFIER NULL,
    [TenantName]           NVARCHAR (MAX)   NULL,
    [ImpersonatorUserId]   UNIQUEIDENTIFIER NULL,
    [ImpersonatorTenantId] UNIQUEIDENTIFIER NULL,
    [ExecutionTime]        DATETIME2 (7)    NOT NULL,
    [ExecutionDuration]    INT              NOT NULL,
    [ClientIpAddress]      NVARCHAR (64)    NULL,
    [ClientName]           NVARCHAR (128)   NULL,
    [ClientId]             NVARCHAR (64)    NULL,
    [CorrelationId]        NVARCHAR (64)    NULL,
    [BrowserInfo]          NVARCHAR (512)   NULL,
    [HttpMethod]           NVARCHAR (16)    NULL,
    [Url]                  NVARCHAR (256)   NULL,
    [Exceptions]           NVARCHAR (4000)  NULL,
    [Comments]             NVARCHAR (256)   NULL,
    [HttpStatusCode]       INT              NULL,
    CONSTRAINT [PK_AbpAuditLogs] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionTime]
    ON [dbo].[AbpAuditLogs]([TenantId] ASC, [ExecutionTime] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_UserId_ExecutionTime]
    ON [dbo].[AbpAuditLogs]([TenantId] ASC, [UserId] ASC, [ExecutionTime] ASC);

