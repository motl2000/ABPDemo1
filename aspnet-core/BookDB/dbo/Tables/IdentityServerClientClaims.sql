CREATE TABLE [dbo].[IdentityServerClientClaims] (
    [ClientId] UNIQUEIDENTIFIER NOT NULL,
    [Type]     NVARCHAR (250)   NOT NULL,
    [Value]    NVARCHAR (250)   NOT NULL,
    CONSTRAINT [PK_IdentityServerClientClaims] PRIMARY KEY CLUSTERED ([ClientId] ASC, [Type] ASC, [Value] ASC),
    CONSTRAINT [FK_IdentityServerClientClaims_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

