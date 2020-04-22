CREATE TABLE [dbo].[AbpRoles] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ExtraProperties]  NVARCHAR (MAX)   NULL,
    [ConcurrencyStamp] NVARCHAR (256)   NOT NULL,
    [TenantId]         UNIQUEIDENTIFIER NULL,
    [Name]             NVARCHAR (256)   NOT NULL,
    [NormalizedName]   NVARCHAR (256)   NOT NULL,
    [IsDefault]        BIT              NOT NULL,
    [IsStatic]         BIT              NOT NULL,
    [IsPublic]         BIT              NOT NULL,
    CONSTRAINT [PK_AbpRoles] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpRoles_NormalizedName]
    ON [dbo].[AbpRoles]([NormalizedName] ASC);

