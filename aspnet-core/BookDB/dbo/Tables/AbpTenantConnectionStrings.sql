CREATE TABLE [dbo].[AbpTenantConnectionStrings] (
    [TenantId] UNIQUEIDENTIFIER NOT NULL,
    [Name]     NVARCHAR (64)    NOT NULL,
    [Value]    NVARCHAR (1024)  NOT NULL,
    CONSTRAINT [PK_AbpTenantConnectionStrings] PRIMARY KEY CLUSTERED ([TenantId] ASC, [Name] ASC),
    CONSTRAINT [FK_AbpTenantConnectionStrings_AbpTenants_TenantId] FOREIGN KEY ([TenantId]) REFERENCES [dbo].[AbpTenants] ([Id]) ON DELETE CASCADE
);

