USE [OpenHealth]
GO

/****** Object:  Table [dbo].[Vacina]    Script Date: 12/11/2021 20:37:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vacina](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idClinica] [int] NOT NULL,
	[idProfissional] [int] NULL,
	[Data] [datetime] NOT NULL,
	[TipoVacina] [varchar](100) NOT NULL,
	[Observacao] [varchar](500) NULL,
 CONSTRAINT [PK_Vacina] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Vacina]  WITH CHECK ADD  CONSTRAINT [FK_Vacina_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO

ALTER TABLE [dbo].[Vacina] CHECK CONSTRAINT [FK_Vacina_Cliente]
GO

ALTER TABLE [dbo].[Vacina]  WITH CHECK ADD  CONSTRAINT [FK_Vacina_Clinica] FOREIGN KEY([idClinica])
REFERENCES [dbo].[Clinica] ([id])
GO

ALTER TABLE [dbo].[Vacina] CHECK CONSTRAINT [FK_Vacina_Clinica]
GO

ALTER TABLE [dbo].[Vacina]  WITH CHECK ADD  CONSTRAINT [FK_Vacina_Profissional] FOREIGN KEY([idProfissional])
REFERENCES [dbo].[Profissional] ([id])
GO

ALTER TABLE [dbo].[Vacina] CHECK CONSTRAINT [FK_Vacina_Profissional]
GO

