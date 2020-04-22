CREATE TABLE [dbo].[AbpUserLogins] (
    [UserId]              UNIQUEIDENTIFIER NOT NULL,
    [LoginProvider]       NVARCHAR (64)    NOT NULL,
    [TenantId]            UNIQUEIDENTIFIER NULL,
    [ProviderKey]         NVARCHAR (196)   NOT NULL,
    [ProviderDisplayName] NVARCHAR (128)   NULL,
    CONSTRAINT [PK_AbpUserLogins] PRIMARY KEY CLUSTERED ([UserId] ASC, [LoginProvider] ASC),
    CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_LoginProvider_ProviderKey]
    ON [dbo].[AbpUserLogins]([LoginProvider] ASC, [ProviderKey] ASC);

