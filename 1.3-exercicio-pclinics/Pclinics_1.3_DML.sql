USE Pclinics

INSERT INTO Clinica (CNPJ, Endereco)
VALUES				(32132, 'Av. Exemplo, Rua Exemplo')

INSERT INTO Tipo    (NomeTipo)
VALUES				('Cachorro')

INSERT INTO Raca	(NomeRaca, idTipo)
VALUES				('Pug', 1)
				   ,('Pitbull', 1)

INSERT INTO Dono	(Nome)
VALUES				('Bruno')
				   ,('Nauber')

INSERT INTO Pets	(Nome, Coleira, idRaca, idDono)
VALUES				('Darth', 'Azul', 1, 1)
				   ,('Pepito', 'Branca', 2, 2)

INSERT INTO Veterinario (Nome, Cadastro, idClinica)
VALUES					('Chris', 76, 1)
					   ,('Nespoli', 69, 1)

INSERT INTO Atendimento (Descricao, DataAtendimento, idVeterinario, idPets)
VALUES					('O paciente está ok', '20/10/2020', 1, 3)
					   ,('O paciente está ok', '25/02/2021', 2, 4)
