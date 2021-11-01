/*
   segunda-feira, 1 de novembro de 202119:45:44
   User: 
   Server: DESKTOP-J2S1BAG
   Database: OpenHealth
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Cliente
	(
	id int NOT NULL IDENTITY (1, 1),
	Nome varchar(200) NOT NULL,
	DataNascimento datetime NOT NULL,
	Email varchar(100) NOT NULL,
	Senha varchar(20) NOT NULL,
	CPF varchar(14) NOT NULL,
	CEP varchar(9) NOT NULL,
	Numero int NOT NULL,
	Bairro varchar(100) NOT NULL,
	Endereco varchar(150) NOT NULL,
	Complemento varchar(100) NULL,
	Cidade varchar(100) NOT NULL,
	Estado varchar(2) NOT NULL,
	Token varchar(8) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Cliente SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_Cliente ON
GO
IF EXISTS(SELECT * FROM dbo.Cliente)
	 EXEC('INSERT INTO dbo.Tmp_Cliente (id, Nome, DataNascimento, Email, Senha, CPF, CEP, Numero, Bairro, Endereco, Complemento, Cidade, Estado)
		SELECT id, Nome, DataNascimento, Email, Senha, CPF, CEP, Numero, Bairro, Endereco, Complemento, Cidade, Estado FROM dbo.Cliente WITH (HOLDLOCK TABLOCKX)')
GO
COMMIT
