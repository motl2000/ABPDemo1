CREATE TABLE [dbo].[AbpSettings] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [Name]         NVARCHAR (128)   NOT NULL,
    [Value]        NVARCHAR (2048)  NOT NULL,
    [ProviderName] NVARCHAR (64)    NULL,
    [ProviderKey]  NVARCHAR (64)    NULL,
    CONSTRAINT [PK_AbpSettings] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpSettings_Name_ProviderName_ProviderKey]
    ON [dbo].[AbpSettings]([Name] ASC, [ProviderName] ASC, [ProviderKey] ASC);

