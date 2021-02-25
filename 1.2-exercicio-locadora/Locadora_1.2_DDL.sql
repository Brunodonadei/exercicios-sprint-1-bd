CREATE DATABASE Locadora

USE Locadora

CREATE TABLE Locadora
(
	idEmpresa	INT PRIMARY KEY IDENTITY
	,CNPJ		INT NOT NULL
	,Endereco	VARCHAR(100) NOT NULL
);

CREATE TABLE Marca
(
	idMarca		INT PRIMARY KEY IDENTITY
	,NomeMarca	VARCHAR(45) NOT NULL
);

CREATE TABLE Modelo
(
	idModelo	INT PRIMARY KEY IDENTITY
	,idMarca	INT FOREIGN KEY REFERENCES Marca(idMarca)
	,NomeModelo	VARCHAR(50) NOT NULL
	,AnoFabricacao	INT NOT NULL
);

CREATE TABLE Veiculo
(
	idVeiculo	INT PRIMARY KEY IDENTITY
	,idModelo	INT FOREIGN KEY REFERENCES Modelo(idModelo)
	,idEmpresa	INT FOREIGN KEY REFERENCES Locadora(idEmpresa)
	,idMarca	INT FOREIGN KEY REFERENCES Marca(idMarca)
	,Cor		VARCHAR(55) NOT NULL
	,Placa		VARCHAR(7) NOT NULL
);

CREATE TABLE Cliente
(
	idCliente	INT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(50) NOT NULL
	,CPF		INT NOT NULL
	,RG			INT NOT NULL
	,Cartao		INT NOT NULL
)
CREATE TABLE Aluguel
(
	idAluguel	INT PRIMARY KEY IDENTITY
	,idCliente	INT FOREIGN KEY REFERENCES Cliente(idCliente)
	,idVeiculo	INT FOREIGN KEY REFERENCES Veiculo(idVeiculo)
	,DataAluguel	DATETIME NOT NULL
	,Preco		INT NOT NULL
	,Expiracao	DATETIME NOT NULL
);

