CREATE TABLE [dbo].[IdentityServerApiSecrets] (
    [Type]          NVARCHAR (250)   NOT NULL,
    [Value]         NVARCHAR (4000)  NOT NULL,
    [ApiResourceId] UNIQUEIDENTIFIER NOT NULL,
    [Description]   NVARCHAR (2000)  NULL,
    [Expiration]    DATETIME2 (7)    NULL,
    CONSTRAINT [PK_IdentityServerApiSecrets] PRIMARY KEY CLUSTERED ([ApiResourceId] ASC, [Type] ASC, [Value] ASC),
    CONSTRAINT [FK_IdentityServerApiSecrets_IdentityServerApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[IdentityServerApiResources] ([Id]) ON DELETE CASCADE
);

