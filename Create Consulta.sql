USE [OpenHealth]
GO

/****** Object:  Table [dbo].[Consulta]    Script Date: 12/11/2021 20:33:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Consulta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idClinica] [int] NOT NULL,
	[idProfissional] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[TipoConsulta] [varchar](100) NOT NULL,
	[Descricao] [varchar](500) NULL,
 CONSTRAINT [PK_Consulta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO

ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Cliente]
GO

ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Clinica] FOREIGN KEY([idClinica])
REFERENCES [dbo].[Clinica] ([id])
GO

ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Clinica]
GO

ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD  CONSTRAINT [FK_Consulta_Profissional] FOREIGN KEY([idProfissional])
REFERENCES [dbo].[Profissional] ([id])
GO

ALTER TABLE [dbo].[Consulta] CHECK CONSTRAINT [FK_Consulta_Profissional]
GO

