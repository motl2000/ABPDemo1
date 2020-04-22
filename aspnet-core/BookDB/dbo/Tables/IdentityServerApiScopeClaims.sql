CREATE TABLE [dbo].[IdentityServerApiScopeClaims] (
    [Type]          NVARCHAR (200)   NOT NULL,
    [ApiResourceId] UNIQUEIDENTIFIER NOT NULL,
    [Name]          NVARCHAR (200)   NOT NULL,
    CONSTRAINT [PK_IdentityServerApiScopeClaims] PRIMARY KEY CLUSTERED ([ApiResourceId] ASC, [Name] ASC, [Type] ASC),
    CONSTRAINT [FK_IdentityServerApiScopeClaims_IdentityServerApiScopes_ApiResourceId_Name] FOREIGN KEY ([ApiResourceId], [Name]) REFERENCES [dbo].[IdentityServerApiScopes] ([ApiResourceId], [Name]) ON DELETE CASCADE
);

