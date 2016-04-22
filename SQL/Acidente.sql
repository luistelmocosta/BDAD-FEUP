CREATE TABLE Acidente ( 
	data DATE NOT NULL,
	responsavel INTEGER NOT NULL,
	custo REAL NOT NULL,
	acidenteID INTEGER NOT NULL,
	veiculoID INTEGER REFERENCES Veiculo(veiculoID),
	tipoAcidenteID INTEGER REFERENCES TipoAcidente(tipoAcidenteID),
	UNIQUE(acidenteID)
);







