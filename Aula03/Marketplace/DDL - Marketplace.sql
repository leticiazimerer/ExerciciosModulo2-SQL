-- DDL
-- CREATE
-- ALTER
-- DROP

CREATE DATABASE db_marketplace

USE db_marketplace

CREATE TABLE Usuarios(
	Id INT PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Senha VARCHAR(50) NOT NULL,
	Endereco VARCHAR(100) NULL,
	FK_Vendas INT NULL,
	FOREIGN KEY (FK_Vendas) REFERENCES Vendas (Id)
)
CREATE TABLE Produtos(
	Id INT PRIMARY KEY NOT NULL,
	NomeProduto VARCHAR(50) NOT NULL,
	Descricao VARCHAR(500) NULL,
	Preco FLOAT NOT NULL,
	FK_Usuario INT NULL,
	FOREIGN KEY (FK_Usuarios) REFERENCES Usuarios (Id)
)
CREATE TABLE Vendas(
	Id INT PRIMARY KEY NOT NULL,
	Quantidade INT NOT NULL,
	Categoria VARCHAR(100) NULL,
	Preco INT NOT NULL,
	Produtos VARCHAR(100) NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Produto) REFERENCES Produtos (Id)
)
CREATE TABLE Entrega(
	Id INT PRIMARY KEY NOT NULL,
	Previsao INT NOT NULL, 
	FK_Vendas INT NULL,
	FK_Protudos INT NULL,
	FOREIGN KEY (FK_Vendas) REFERENCES Vendas (Id),
	FOREIGN KEY (FK_Produtos) REFERENCES Produtos (Id)
)