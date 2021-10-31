USE [openHealthdb]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 31/10/2021 19:51:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](200) NOT NULL,
	[DataNascimento] [datetime] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Senha] [varchar](20) NOT NULL,
	[CPF] [varchar](14) NOT NULL,
	[CEP] [varchar](9) NOT NULL,
	[Numero] [int] NOT NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Endereco] [varchar](150) NOT NULL,
	[Complemento] [varchar](100) NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Estado] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

