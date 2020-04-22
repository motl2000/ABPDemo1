CREATE TABLE [dbo].[AbpBackgroundJobs] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ExtraProperties]  NVARCHAR (MAX)   NULL,
    [ConcurrencyStamp] NVARCHAR (MAX)   NULL,
    [JobName]          NVARCHAR (128)   NOT NULL,
    [JobArgs]          NVARCHAR (MAX)   NOT NULL,
    [TryCount]         SMALLINT         DEFAULT (CONVERT([smallint],(0))) NOT NULL,
    [CreationTime]     DATETIME2 (7)    NOT NULL,
    [NextTryTime]      DATETIME2 (7)    NOT NULL,
    [LastTryTime]      DATETIME2 (7)    NULL,
    [IsAbandoned]      BIT              DEFAULT (CONVERT([bit],(0))) NOT NULL,
    [Priority]         TINYINT          DEFAULT (CONVERT([tinyint],(15))) NOT NULL,
    CONSTRAINT [PK_AbpBackgroundJobs] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime]
    ON [dbo].[AbpBackgroundJobs]([IsAbandoned] ASC, [NextTryTime] ASC);

