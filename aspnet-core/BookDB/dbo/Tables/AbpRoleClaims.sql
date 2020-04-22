CREATE TABLE [dbo].[AbpRoleClaims] (
    [Id]         UNIQUEIDENTIFIER NOT NULL,
    [TenantId]   UNIQUEIDENTIFIER NULL,
    [ClaimType]  NVARCHAR (256)   NOT NULL,
    [ClaimValue] NVARCHAR (1024)  NULL,
    [RoleId]     UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_AbpRoleClaims] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AbpRoles] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_RoleId]
    ON [dbo].[AbpRoleClaims]([RoleId] ASC);

