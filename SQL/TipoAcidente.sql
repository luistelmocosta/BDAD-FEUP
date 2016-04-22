CREATE TABLE TipoAcidente
(
	nome TEXT NOT NULL,
	descriçãoAcidente TEXT NOT NULL,
	tipoAcidenteID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(tipoAcidenteID)
);

