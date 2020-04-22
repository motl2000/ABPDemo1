CREATE TABLE [dbo].[IdentityServerClientIdPRestrictions] (
    [ClientId] UNIQUEIDENTIFIER NOT NULL,
    [Provider] NVARCHAR (200)   NOT NULL,
    CONSTRAINT [PK_IdentityServerClientIdPRestrictions] PRIMARY KEY CLUSTERED ([ClientId] ASC, [Provider] ASC),
    CONSTRAINT [FK_IdentityServerClientIdPRestrictions_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

