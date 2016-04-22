CREATE TABLE Modelo
(
	nome TEXT NOT NULL,
	anoProducao INTEGER NOT NULL,
	peso REAL NOT NULL,
	consumo REAL NOT NULL,
	cilindrada REAL NOT NULL,
	modeloID INTEGER PRIMARY KEY,
	marcaID INTEGER REFERENCES Marca(marcaID),
	UNIQUE(modeloID)
);

