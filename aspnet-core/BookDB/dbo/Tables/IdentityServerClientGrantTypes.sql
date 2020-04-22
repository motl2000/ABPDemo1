CREATE TABLE [dbo].[IdentityServerClientGrantTypes] (
    [ClientId]  UNIQUEIDENTIFIER NOT NULL,
    [GrantType] NVARCHAR (250)   NOT NULL,
    CONSTRAINT [PK_IdentityServerClientGrantTypes] PRIMARY KEY CLUSTERED ([ClientId] ASC, [GrantType] ASC),
    CONSTRAINT [FK_IdentityServerClientGrantTypes_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

