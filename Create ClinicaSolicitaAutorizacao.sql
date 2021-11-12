USE [OpenHealth]
GO

/** Object:  Table [dbo].[ClinicaSolicitaAutorizacao]    Script Date: 12/11/2021 20:24:44 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ClinicaSolicitaAutorizacao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idClinica] [int] NOT NULL,
	[Descricao] [varchar](500) NOT NULL,
	[Pendente] [bit] NOT NULL,
 CONSTRAINT [PK_ClinicaSolicitaAutorizacao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClinicaSolicitaAutorizacao]  WITH CHECK ADD  CONSTRAINT [FK_ClinicaSolicitaAutorizacao_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO

ALTER TABLE [dbo].[ClinicaSolicitaAutorizacao] CHECK CONSTRAINT [FK_ClinicaSolicitaAutorizacao_Cliente]
GO

ALTER TABLE [dbo].[ClinicaSolicitaAutorizacao]  WITH CHECK ADD  CONSTRAINT [FK_ClinicaSolicitaAutorizacao_Clinica] FOREIGN KEY([idClinica])
REFERENCES [dbo].[Clinica] ([id])
GO

ALTER TABLE [dbo].[ClinicaSolicitaAutorizacao] CHECK CONSTRAINT [FK_ClinicaSolicitaAutorizacao_Clinica]
GO