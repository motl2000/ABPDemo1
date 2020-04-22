CREATE TABLE [dbo].[AbpClaimTypes] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ExtraProperties]  NVARCHAR (MAX)   NULL,
    [ConcurrencyStamp] NVARCHAR (256)   NOT NULL,
    [Name]             NVARCHAR (256)   NOT NULL,
    [Required]         BIT              NOT NULL,
    [IsStatic]         BIT              NOT NULL,
    [Regex]            NVARCHAR (512)   NULL,
    [RegexDescription] NVARCHAR (128)   NULL,
    [Description]      NVARCHAR (256)   NULL,
    [ValueType]        INT              NOT NULL,
    CONSTRAINT [PK_AbpClaimTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

