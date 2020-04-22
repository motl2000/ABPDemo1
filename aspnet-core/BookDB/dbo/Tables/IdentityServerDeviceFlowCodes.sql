CREATE TABLE [dbo].[IdentityServerDeviceFlowCodes] (
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [ExtraProperties]  NVARCHAR (MAX)   NULL,
    [ConcurrencyStamp] NVARCHAR (MAX)   NULL,
    [CreationTime]     DATETIME2 (7)    NOT NULL,
    [CreatorId]        UNIQUEIDENTIFIER NULL,
    [DeviceCode]       NVARCHAR (200)   NOT NULL,
    [UserCode]         NVARCHAR (200)   NOT NULL,
    [SubjectId]        NVARCHAR (200)   NULL,
    [ClientId]         NVARCHAR (200)   NOT NULL,
    [Expiration]       DATETIME2 (7)    NOT NULL,
    [Data]             NVARCHAR (MAX)   NOT NULL,
    CONSTRAINT [PK_IdentityServerDeviceFlowCodes] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_IdentityServerDeviceFlowCodes_DeviceCode]
    ON [dbo].[IdentityServerDeviceFlowCodes]([DeviceCode] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_IdentityServerDeviceFlowCodes_Expiration]
    ON [dbo].[IdentityServerDeviceFlowCodes]([Expiration] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_IdentityServerDeviceFlowCodes_UserCode]
    ON [dbo].[IdentityServerDeviceFlowCodes]([UserCode] ASC);

