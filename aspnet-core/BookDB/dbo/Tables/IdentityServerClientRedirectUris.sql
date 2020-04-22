CREATE TABLE [dbo].[IdentityServerClientRedirectUris] (
    [ClientId]    UNIQUEIDENTIFIER NOT NULL,
    [RedirectUri] NVARCHAR (2000)  NOT NULL,
    CONSTRAINT [PK_IdentityServerClientRedirectUris] PRIMARY KEY CLUSTERED ([ClientId] ASC, [RedirectUri] ASC),
    CONSTRAINT [FK_IdentityServerClientRedirectUris_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

