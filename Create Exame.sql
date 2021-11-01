USE [OpenHealth]
GO

/****** Object:  Table [dbo].[Exame]    Script Date: 01/11/2021 12:10:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Exame](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idClinica] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Observacao] [varchar](500) NULL,
	[ArquivoBase64] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Exame] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Exame]  WITH CHECK ADD  CONSTRAINT [FK_Exame_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO

ALTER TABLE [dbo].[Exame] CHECK CONSTRAINT [FK_Exame_Cliente]
GO

ALTER TABLE [dbo].[Exame]  WITH CHECK ADD  CONSTRAINT [FK_Exame_Clinica] FOREIGN KEY([idClinica])
REFERENCES [dbo].[Clinica] ([id])
GO

ALTER TABLE [dbo].[Exame] CHECK CONSTRAINT [FK_Exame_Clinica]
GO


