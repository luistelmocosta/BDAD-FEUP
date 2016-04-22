CREATE TABLE JoinTipoDeSeguroToCobertura
(
	coberturaID INTEGER,
	tipoDeSeguroID INTEGER,
	FOREIGN KEY(coberturaID) REFERENCES Cobertura(coberturaID),
	FOREIGN KEY(tipoDeSeguroID) REFERENCES TipoDeSeguro(tipoDeSeguroID)
);

