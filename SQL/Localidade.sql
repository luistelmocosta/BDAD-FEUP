CREATE TABLE Localidade
(
	nome TEXT NOT NULL,
	codPostal TEXT NOT NULL,
	localidadeID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(localidadeID)
);

