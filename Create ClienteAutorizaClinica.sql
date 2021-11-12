USE [OpenHealth]
GO

/** Object:  Table [dbo].[ClienteAutorizaClinica]    Script Date: 12/11/2021 20:23:27 **/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ClienteAutorizaClinica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idClinica] [int] NOT NULL,
	[Autorizado] [bit] NOT NULL,
 CONSTRAINT [PK_ClienteAutorizaClinica] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClienteAutorizaClinica]  WITH CHECK ADD  CONSTRAINT [FK_ClienteAutorizaClinica_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([id])
GO

ALTER TABLE [dbo].[ClienteAutorizaClinica] CHECK CONSTRAINT [FK_ClienteAutorizaClinica_Cliente]
GO

ALTER TABLE [dbo].[ClienteAutorizaClinica]  WITH CHECK ADD  CONSTRAINT [FK_ClienteAutorizaClinica_Clinica] FOREIGN KEY([idClinica])
REFERENCES [dbo].[Clinica] ([id])
GO

ALTER TABLE [dbo].[ClienteAutorizaClinica] CHECK CONSTRAINT [FK_ClienteAutorizaClinica_Clinica]
GO