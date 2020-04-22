CREATE TABLE [dbo].[IdentityServerClientCorsOrigins] (
    [ClientId] UNIQUEIDENTIFIER NOT NULL,
    [Origin]   NVARCHAR (150)   NOT NULL,
    CONSTRAINT [PK_IdentityServerClientCorsOrigins] PRIMARY KEY CLUSTERED ([ClientId] ASC, [Origin] ASC),
    CONSTRAINT [FK_IdentityServerClientCorsOrigins_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

