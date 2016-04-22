CREATE TABLE Cliente
(
	nome TEXT NOT NULL,
	NIF INTEGER NOT NULL,
	morada TEXT NOT NULL,
	telefone INTEGER NOT NULL,
	email TEXT NOT NULL,
	clienteID INTEGER NOT NULL PRIMARY KEY,
	localidadeID INTEGER REFERENCES Localidade(localidadeID),
	UNIQUE(clienteID)
);

