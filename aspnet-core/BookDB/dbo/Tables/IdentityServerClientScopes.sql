CREATE TABLE [dbo].[IdentityServerClientScopes] (
    [ClientId] UNIQUEIDENTIFIER NOT NULL,
    [Scope]    NVARCHAR (200)   NOT NULL,
    CONSTRAINT [PK_IdentityServerClientScopes] PRIMARY KEY CLUSTERED ([ClientId] ASC, [Scope] ASC),
    CONSTRAINT [FK_IdentityServerClientScopes_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

