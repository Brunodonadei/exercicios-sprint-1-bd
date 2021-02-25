USE Filmes;

INSERT INTO Generos (Nome)
VALUES				('Ação')
					,('Aventura');

INSERT INTO Filmes (Titulo, idGenero)
VALUES				('Rambo', 2)
					,('Tropa de elite', 1)
					,('Dora Aventureira', 2);