CREATE TABLE [dbo].[AbpEntityPropertyChanges] (
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [TenantId]             UNIQUEIDENTIFIER NULL,
    [EntityChangeId]       UNIQUEIDENTIFIER NOT NULL,
    [NewValue]             NVARCHAR (512)   NULL,
    [OriginalValue]        NVARCHAR (512)   NULL,
    [PropertyName]         NVARCHAR (128)   NOT NULL,
    [PropertyTypeFullName] NVARCHAR (64)    NOT NULL,
    CONSTRAINT [PK_AbpEntityPropertyChanges] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId] FOREIGN KEY ([EntityChangeId]) REFERENCES [dbo].[AbpEntityChanges] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpEntityPropertyChanges_EntityChangeId]
    ON [dbo].[AbpEntityPropertyChanges]([EntityChangeId] ASC);

