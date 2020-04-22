CREATE TABLE [dbo].[IdentityServerApiClaims] (
    [Type]          NVARCHAR (200)   NOT NULL,
    [ApiResourceId] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_IdentityServerApiClaims] PRIMARY KEY CLUSTERED ([ApiResourceId] ASC, [Type] ASC),
    CONSTRAINT [FK_IdentityServerApiClaims_IdentityServerApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[IdentityServerApiResources] ([Id]) ON DELETE CASCADE
);

