CREATE TABLE TipoAcidente
(
	nome TEXT NOT NULL,
	descri��oAcidente TEXT NOT NULL,
	tipoAcidenteID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(tipoAcidenteID)
);

