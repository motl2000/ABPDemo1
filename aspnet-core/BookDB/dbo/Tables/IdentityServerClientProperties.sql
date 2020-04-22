CREATE TABLE [dbo].[IdentityServerClientProperties] (
    [ClientId] UNIQUEIDENTIFIER NOT NULL,
    [Key]      NVARCHAR (250)   NOT NULL,
    [Value]    NVARCHAR (2000)  NOT NULL,
    CONSTRAINT [PK_IdentityServerClientProperties] PRIMARY KEY CLUSTERED ([ClientId] ASC, [Key] ASC),
    CONSTRAINT [FK_IdentityServerClientProperties_IdentityServerClients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[IdentityServerClients] ([Id]) ON DELETE CASCADE
);

