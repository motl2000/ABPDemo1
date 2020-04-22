CREATE TABLE [dbo].[AbpUserClaims] (
    [Id]         UNIQUEIDENTIFIER NOT NULL,
    [TenantId]   UNIQUEIDENTIFIER NULL,
    [ClaimType]  NVARCHAR (256)   NOT NULL,
    [ClaimValue] NVARCHAR (1024)  NULL,
    [UserId]     UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_AbpUserClaims] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AbpUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_UserId]
    ON [dbo].[AbpUserClaims]([UserId] ASC);

