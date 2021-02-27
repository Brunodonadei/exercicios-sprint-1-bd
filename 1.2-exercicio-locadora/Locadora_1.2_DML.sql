USE Locadora

INSERT INTO Locadora (CNPJ, Endereco)
VALUES				 (244124, 'Av. Exemplo, Rua exemplar')

INSERT INTO Marca    (NomeMarca)
VALUES				 ('Fiat')

INSERT INTO Modelo	 (idMarca, NomeModelo, AnoFabricacao)
VALUES				 (1, 'Linea', 2012)

INSERT INTO Veiculo  (idModelo, idEmpresa, idMarca, Cor, Placa)
VALUES				 (1, 1, 1, 'Bege', 'PLA0000')

INSERT INTO Cliente  (Nome, CPF, RG, Cartao)
VALUES				 ('Bruno', 474747, 474747, 5550005)

INSERT INTO Aluguel  (idCliente, idVeiculo, DataAluguel, Preco, Expiracao)
VALUES				 (1, 2, 20-10-2015, 12000, 30-10-2015)