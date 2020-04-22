CREATE TABLE [dbo].[IdentityServerClientSecrets] (
    [Type]        NVARCHAR (250)   NOT NULL,
    [Value]       NVARCHAR (4000)  NOT NULL,
    [ClientId]    UNIQUEIDENTIFIER NOT NULL,
    [Description] NVARCHAR (2000)  NULL,
    [Expiration]  DATETIME2 (7)    NULL,
    CONSTRAINT [PK_IdentityServerClientSecrets] PRIMARY KEY CLUSTERED ([ClientId] ASC, [Type] ASC, [Value] ASC),
    CONSTRAINT [FK_IdentityServerClientSecrets_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

