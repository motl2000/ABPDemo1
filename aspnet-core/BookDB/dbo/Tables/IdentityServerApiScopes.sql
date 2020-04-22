CREATE TABLE [dbo].[IdentityServerApiScopes] (
    [ApiResourceId]           UNIQUEIDENTIFIER NOT NULL,
    [Name]                    NVARCHAR (200)   NOT NULL,
    [DisplayName]             NVARCHAR (200)   NULL,
    [Description]             NVARCHAR (1000)  NULL,
    [Required]                BIT              NOT NULL,
    [Emphasize]               BIT              NOT NULL,
    [ShowInDiscoveryDocument] BIT              NOT NULL,
    CONSTRAINT [PK_IdentityServerApiScopes] PRIMARY KEY CLUSTERED ([ApiResourceId] ASC, [Name] ASC),
    CONSTRAINT [FK_IdentityServerApiScopes_IdentityServerApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[IdentityServerApiResources] ([Id]) ON DELETE CASCADE
);

