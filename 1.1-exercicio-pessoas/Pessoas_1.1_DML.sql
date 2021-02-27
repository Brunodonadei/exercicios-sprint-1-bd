USE Pessoas

INSERT INTO Pessoa (Nome, CPF, DataNascimento, RG)
VALUES			   ('Bruno', 474474, 2003-10-20, 474747)

INSERT INTO CNH	   (Foto, NumeroRegistro, Categoria, idPessoa)
VALUES			   ('foto', 12345-6, 'A', 4)

INSERT INTO Email  (Email, idPessoa)
VALUES			   ('bruno@email.com', 4)

INSERT INTO Telefone (Numero, Operadora, Plano, idPessoa)
VALUES				 (98765355, 'Oi', 'Mensal', 4)	