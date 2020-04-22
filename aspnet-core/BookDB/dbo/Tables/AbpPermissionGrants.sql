CREATE TABLE [dbo].[AbpPermissionGrants] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [TenantId]     UNIQUEIDENTIFIER NULL,
    [Name]         NVARCHAR (128)   NOT NULL,
    [ProviderName] NVARCHAR (64)    NOT NULL,
    [ProviderKey]  NVARCHAR (64)    NOT NULL,
    CONSTRAINT [PK_AbpPermissionGrants] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpPermissionGrants_Name_ProviderName_ProviderKey]
    ON [dbo].[AbpPermissionGrants]([Name] ASC, [ProviderName] ASC, [ProviderKey] ASC);

