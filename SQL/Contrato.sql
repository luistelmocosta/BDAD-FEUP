CREATE TABLE Contrato
(
	nome TEXT NOT NULL,
	preço REAL NOT NULL,
	dataInicio DATE NOT NULL,
	dataFim DATE NOT NULL,
	valorFranquia REAL NOT NULL,
	contratoID INTEGER NOT NULL PRIMARY KEY,
	tipoDeSeguroID INTEGER REFERENCES TipoDeSeguro(tipoDeSeguroID),
	veiculoID INTEGER REFERENCES Veiculo(veiculoID),
	UNIQUE(contratoID)
);

