CREATE TABLE [dbo].[IdentityServerClientPostLogoutRedirectUris] (
    [ClientId]              UNIQUEIDENTIFIER NOT NULL,
    [PostLogoutRedirectUri] NVARCHAR (2000)  NOT NULL,
    CONSTRAINT [PK_IdentityServerClientPostLogoutRedirectUris] PRIMARY KEY CLUSTERED ([ClientId] ASC, [PostLogoutRedirectUri] ASC),
    CONSTRAINT [FK_IdentityServerClientPostLogoutRedirectUris_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

