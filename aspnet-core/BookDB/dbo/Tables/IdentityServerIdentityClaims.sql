CREATE TABLE [dbo].[IdentityServerIdentityClaims] (
    [Type]               NVARCHAR (200)   NOT NULL,
    [IdentityResourceId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_IdentityServerIdentityClaims] PRIMARY KEY CLUSTERED ([IdentityResourceId] ASC, [Type] ASC),
    CONSTRAINT [FK_IdentityServerIdentityClaims_IdentityServerIdentityResources_IdentityResourceId] FOREIGN KEY ([IdentityResourceId]) REFERENCES [dbo].[IdentityServerIdentityResources] ([Id]) ON DELETE CASCADE
);

