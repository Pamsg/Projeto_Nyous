CREATE DATABASE Nyous;

USE Nyous;

/*Cria a tabela acesso*/
CREATE TABLE Acesso(
	IdAcesso INT IDENTITY PRIMARY KEY NOT NULL,
	Tipo VARCHAR (50) NOT NULL
);

CREATE TABLE Categoria (
	IdCategoria INT IDENTITY PRIMARY KEY NOT NULL,
	Titulo VARCHAR (50) NOT NULL
);

CREATE TABLE Localizacao(
	IdLocalizacao INT IDENTITY PRIMARY KEY NOT NULL,
	Logradouro VARCHAR (100) NOT NULL,
	Numero VARCHAR (50) NOT NULL,
	Complemento VARCHAR (50) NOT NULL,
	Bairro VARCHAR (50) NOT NULL,
	Cidade VARCHAR (50) NOT NULL,
	UF VARCHAR (2) NOT NULL,
	CEP VARCHAR (10) NOT NULL
);

CREATE TABLE Usuario (
	IdUsuario INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR (100) NOT NULL,
	Email VARCHAR (80) NOT NULL,
	Senha VARCHAR (150) NOT NULL,
	DataNascimento DATETIME,

	--FK
	IdAcesso INT FOREIGN KEY REFERENCES Acesso (IdAcesso) NOT NULL
);

CREATE TABLE Evento (
	IdEvento INT IDENTITY PRIMARY KEY NOT NULL,
	DataEvento DATETIME,
	AcessoRestrito BINARY DEFAULT 0,
	Capacidade INT NOT NULL,
	Decaricao VARCHAR (255),

	--FK
	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria) NOT NULL,
	IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao (IdLocalizacao) NOT NULL
);

CREATE TABLE Presenca (
	IdPresenca INT IDENTITY PRIMARY KEY NOT NULL,
	Confirmado BIT NOT NULL,

	--FK
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario) NOT NULL,
	IdEvento INT FOREIGN KEY REFERENCES Evento (IdEvento) NOT NULL
);

CREATE TABLE Convite (
	IdConvite INT IDENTITY PRIMARY KEY NOT NULL,
	Confirmado BIT NOT NULL,

	--FK
	IdEvento INT FOREIGN KEY REFERENCES Evento (IdEvento) NOT NULL,
	IdUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario (IdUsuario) NOT NULL,
	IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario (IdUsuario) NOT NULL
);