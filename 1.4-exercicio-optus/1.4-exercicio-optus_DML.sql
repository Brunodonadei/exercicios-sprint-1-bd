USE Optus

INSERT INTO Artistas (Nome)
VALUES				 ('The Weeknd')
					,('Ferrugem')

INSERT INTO Albuns   (idArtista, Titulo, DataLancamento, Localizacao, QtdMinutos, Ativo)
VALUES				 (1, 'After Hours', '20/03/2020', 'Estados Unidos', 56, 'Sim')
					,(2, 'Abre Alas', '27/11/2020', 'Brasil', 50, 'Sim')

INSERT INTO Estilos  (Nome)
VALUES				 ('Pop')
					,('Pagode')

INSERT INTO AlbunsEstilos (idAlbum, idEstilo)
VALUES					  (1, 1)
						 ,(2, 2)

INSERT INTO Usuarios  (Nome, Email, Senha, Permissao)
VALUES				  ('Bruno', 'bruno@gmail.com', '123teste', 'Adminstrador')
					 ,('Gustavo', 'gustavo@gmail.com', 'batatacomcatupiry', 'Comum')