USE [OpenHealth]
GO

/****** Object:  Table [dbo].[Autorizacao]    Script Date: 19/11/2021 08:43:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Autorizacao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idClinica] [int] NULL,
	[idProfissional] [int] NOT NULL,
	[Pendente] [bit] NOT NULL,
	[Descricao] [varchar](500) NULL,
	[Autorizado] [bit] NOT NULL,
 CONSTRAINT [PK_Autorizacao] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Autorizacao]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacao_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO

ALTER TABLE [dbo].[Autorizacao] CHECK CONSTRAINT [FK_Autorizacao_Cliente]
GO

ALTER TABLE [dbo].[Autorizacao]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacao_Clinica] FOREIGN KEY([idClinica])
REFERENCES [dbo].[Clinica] ([id])
GO

ALTER TABLE [dbo].[Autorizacao] CHECK CONSTRAINT [FK_Autorizacao_Clinica]
GO

ALTER TABLE [dbo].[Autorizacao]  WITH CHECK ADD  CONSTRAINT [FK_Autorizacao_Profissional] FOREIGN KEY([idProfissional])
REFERENCES [dbo].[Profissional] ([id])
GO

ALTER TABLE [dbo].[Autorizacao] CHECK CONSTRAINT [FK_Autorizacao_Profissional]
GO

