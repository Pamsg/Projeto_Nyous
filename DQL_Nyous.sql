USE Nyous;

SELECT * FROM Categoria;

SELECT * FROM Localizacao;

SELECT * FROM Usuario
	INNER JOIN Acesso ON Usuario.IdAcesso = Acesso.IdAcesso;