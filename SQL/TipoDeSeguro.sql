CREATE TABLE TipoDeSeguro
(
	tipoSeguro TEXT NOT NULL,
	tipoDeSeguroID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(tipoDeSeguroID)
);

