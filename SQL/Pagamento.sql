CREATE TABLE Pagamento
(
	dataPagamento DATE NOT NULL,
	montante REAL NOT NULL,
	pagamentoID INTEGER NOT NULL PRIMARY KEY,
	contratoID INTEGER REFERENCES Contrato(contratoID),
	UNIQUE(pagamentoID)
);

