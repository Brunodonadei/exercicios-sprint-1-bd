CREATE DATABASE Pclinics

USE Pclinics

CREATE TABLE Clinica
(
	idClinica	INT PRIMARY KEY IDENTITY
	,CNPJ		INT NOT NULL
	,Endereco	VARCHAR(50) NOT NULL
);

CREATE TABLE Raca
(
	idRaca		INT PRIMARY KEY IDENTITY
	,NomeRaca	VARCHAR(20) NOT NULL
);
CREATE TABLE Tipo
(
	idTipo		INT PRIMARY KEY IDENTITY
	,idRaca		INT FOREIGN KEY REFERENCES Raca(idRaca)
	,NomeTipo	VARCHAR(55) NOT NULL
);
CREATE TABLE Pets
(
	idPets		INT PRIMARY KEY IDENTITY
	,idTipo		INT FOREIGN KEY REFERENCES Tipo(idTipo)
	,idClinica	INT FOREIGN KEY REFERENCES Clinica(idClinica)
	,idRaca		INT FOREIGN KEY REFERENCES Raca(idRaca)
	,Nome		VARCHAR(25) NOT NULL
	,Coleira	VARCHAR(10) NOT NULL
);



CREATE TABLE Dono
(
	idDono		INT PRIMARY KEY IDENTITY
	,idPets		INT FOREIGN KEY REFERENCES Pets(idPets)
	,Nome		VARCHAR(50) NOT NULL
	,CPF		INT NOT NULL
	,RG			INT NOT NULL
);

CREATE TABLE Veterinario
(
	idVeterinario	INT PRIMARY KEY IDENTITY
	,idPets			INT FOREIGN KEY REFERENCES Pets(idPets)
	,Cadastro		INT NOT NULL
	,Nome			VARCHAR(25) NOT NULL
);

CREATE TABLE Atendimentos
(
	idAtendimento	INT PRIMARY KEY IDENTITY 
	,Descricao		VARCHAR(200) NOT NULL
	,DataAtendimento	VARCHAR(100) NOT NULL
	,idVeterinario	INT FOREIGN KEY REFERENCES Veterinario(idVeterinario)
	,idPets			INT FOREIGN KEY REFERENCES Pets(idPets)
);