CREATE TABLE [dbo].[AbpUserTokens] (
    [UserId]        UNIQUEIDENTIFIER NOT NULL,
    [LoginProvider] NVARCHAR (64)    NOT NULL,
    [Name]          NVARCHAR (128)   NOT NULL,
    [TenantId]      UNIQUEIDENTIFIER NULL,
    [Value]         NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_AbpUserTokens] PRIMARY KEY CLUSTERED ([UserId] ASC, [LoginProvider] ASC, [Name] ASC),
    CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id]) ON DELETE CASCADE
);

