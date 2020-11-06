USE Nyous;

--INSERT: insere os dados na tabela
INSERT INTO Acesso (Tipo)
	VALUES
	('Administrador'),
	('Padrao');
SELECT * FROM Acesso;

INSERT INTO Categoria (Titulo)
	VALUES
	('Metuup'),
	('Workshop'),
	('Live'),
	('Palestra');
SELECT * FROM Categoria;

INSERT INTO Localizacao (Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP)
	VALUES
	('Avenida Paulista', 1578, 'Bela Vista', 'Centro', 'São Paulo', 'SP', 01310-200);
SELECT * FROM Localizacao;

INSERT INTO Usuario (Nome, Email, Senha, DataNascimento, IdAcesso)
	VALUES
	('Amanda Silva', 'amanda@gmail.com', '987654', '2004-06-18T08:06:00', 2);
SELECT * FROM Usuario;

INSERT INTO Evento (DataEvento, AcessoRestrito, Capacidade, Decaricao, IdCategoria, IdLocalizacao)
	VALUES
	('2020-12-06T20:00:00', 0, 100, 3, 2, 2);
SELECT * FROM Evento;