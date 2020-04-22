CREATE TABLE [dbo].[AbpFeatureValues] (
    [Id]           UNIQUEIDENTIFIER NOT NULL,
    [Name]         NVARCHAR (128)   NOT NULL,
    [Value]        NVARCHAR (128)   NOT NULL,
    [ProviderName] NVARCHAR (64)    NULL,
    [ProviderKey]  NVARCHAR (64)    NULL,
    CONSTRAINT [PK_AbpFeatureValues] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpFeatureValues_Name_ProviderName_ProviderKey]
    ON [dbo].[AbpFeatureValues]([Name] ASC, [ProviderName] ASC, [ProviderKey] ASC);

