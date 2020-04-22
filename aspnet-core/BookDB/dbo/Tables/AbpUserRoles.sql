CREATE TABLE [dbo].[AbpUserRoles] (
    [UserId]   UNIQUEIDENTIFIER NOT NULL,
    [RoleId]   UNIQUEIDENTIFIER NOT NULL,
    [TenantId] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_AbpUserRoles] PRIMARY KEY CLUSTERED ([UserId] ASC, [RoleId] ASC),
    CONSTRAINT [FK_AbpUserRoles_AbpRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AbpRoles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_RoleId_UserId]
    ON [dbo].[AbpUserRoles]([RoleId] ASC, [UserId] ASC);

