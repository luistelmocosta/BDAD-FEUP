CREATE TABLE Proprietario
(
	proprietario? INTEGER NOT NULL,
	proprietarioID INTEGER NOT NULL PRIMARY KEY,
	clienteID INTEGER  REFERENCES Cliente(clienteID), --FOREIGN KEY??
	contratoID INTEGER REFERENCES Contrato(contratoID),
	UNIQUE(proprietarioID)
);

