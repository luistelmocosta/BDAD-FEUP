CREATE TABLE Veiculo
(
	matricula TEXT NOT NULL,
	anoMatricula INTEGER NOT NULL,
	mesMatricula INTEGER NOT NULL,
	chassi REAL NOT NULL,
	veiculoID INTEGER NOT NULL PRIMARY KEY,
	modeloID INTEGER REFERENCES Modelo(modeloID),
	UNIQUE(veiculoID)
);

