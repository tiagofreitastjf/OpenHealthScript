USE [OpenHealth]
GO

/****** Object:  Table [dbo].[Agenda]    Script Date: 21/11/2021 13:24:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Agenda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idClinica] [int] NOT NULL,
	[idProfissional] [int] NOT NULL,
	[Confirmado] [bit] NOT NULL,
	[Data] [datetime] NOT NULL,
	[Pendente] [bit] NOT NULL,
 CONSTRAINT [PK_Agenda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO

ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_Cliente]
GO

ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_Clinica] FOREIGN KEY([idClinica])
REFERENCES [dbo].[Clinica] ([id])
GO

ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_Clinica]
GO

ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_Profissional] FOREIGN KEY([idProfissional])
REFERENCES [dbo].[Profissional] ([id])
GO

ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_Profissional]
GO

