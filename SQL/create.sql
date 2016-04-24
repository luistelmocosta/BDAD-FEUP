.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA FOREIGN_KEYS = ON;


DROP TABLE IF EXISTS Pagamento;
DROP TABLE IF EXISTS VeiculoExtras;
DROP TABLE IF EXISTS TipoDeSeguroCobertura;
DROP TABLE IF EXISTS Extras;
DROP TABLE IF EXISTS Contrato;
DROP TABLE IF EXISTS TipoDeSeguro;
DROP TABLE IF EXISTS Cobertura;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Localidade;
DROP TABLE IF EXISTS Acidente;
DROP TABLE IF EXISTS Veiculo;
DROP TABLE IF EXISTS Modelo;
DROP TABLE IF EXISTS Marca;
DROP TABLE IF EXISTS TipoAcidente;


--CREATE TABLES

CREATE TABLE TipoAcidente
(
	tipoAcidenteID INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	descricaoAcidente TEXT NOT NULL,
	UNIQUE(tipoAcidenteID)
);



CREATE TABLE Marca
(
	marcaID INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	UNIQUE(marcaID)
);




CREATE TABLE Modelo
(
	modeloID INTEGER  NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	anoProducao INTEGER NOT NULL,
	peso REAL NOT NULL,
	consumo REAL NOT NULL,
	cilindrada REAL NOT NULL,
	marcaID INTEGER REFERENCES Marca(marcaID),
	UNIQUE(modeloID)
);



CREATE TABLE Veiculo
(
	veiculoID INTEGER NOT NULL PRIMARY KEY,
	matricula TEXT NOT NULL,
	anoMatricula INTEGER NOT NULL,
	mesMatricula INTEGER NOT NULL,
	chassi TEXT NOT NULL,
	modeloID INTEGER NOT NULL REFERENCES Modelo(modeloID),
	UNIQUE(veiculoID)
);



CREATE TABLE Acidente (
	acidenteID INTEGER NOT NULL PRIMARY KEY,
	data DATE NOT NULL,
	responsavel INTEGER NOT NULL,
	custo REAL NOT NULL,
	veiculoID INTEGER NOT NULL REFERENCES Veiculo(veiculoID),
	tipoAcidenteID NOT NULL REFERENCES TipoAcidente(tipoAcidenteID),
	UNIQUE(acidenteID)
);


CREATE TABLE Localidade
(
	localidadeID INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	codPostal TEXT NOT NULL,
	UNIQUE(localidadeID)
);




CREATE TABLE Cliente
(
	clienteID INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	NIF INTEGER NOT NULL,
	morada TEXT NOT NULL,
	telefone INTEGER NOT NULL,
	email TEXT NOT NULL,
	localidadeID INTEGER NOT NULL REFERENCES Localidade(localidadeID),
	UNIQUE(clienteID)
);




CREATE TABLE Cobertura
(
	coberturaID INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	UNIQUE(coberturaID)
);



CREATE TABLE TipoDeSeguro
(
	tipoDeSeguroID INTEGER NOT NULL PRIMARY KEY,
	tipoSeguro TEXT NOT NULL,
	UNIQUE(tipoDeSeguroID)
);



CREATE TABLE Contrato
(
	contratoID INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	preco REAL NOT NULL,
	dataInicio DATE NOT NULL,
	dataFim DATE NOT NULL,
	valorFranquia REAL NOT NULL,
	proprietario BOOLEAN NOT NULL,
	tipoDeSeguroID INTEGER NOT NULL REFERENCES TipoDeSeguro(tipoDeSeguroID),
	veiculoID INTEGER NOT NULL REFERENCES Veiculo(veiculoID),
	clienteID INTEGER NOT NULL REFERENCES Cliente(clienteID),
	UNIQUE(contratoID)
);



CREATE TABLE Extras
(
	extrasID INTEGER NOT NULL PRIMARY KEY,
	nome TEXT NOT NULL,
	UNIQUE(extrasID)
);


CREATE TABLE TipoDeSeguroCobertura
(
	coberturaID INTEGER NOT NULL,
	tipoDeSeguroID INTEGER NOT NULL,
	PRIMARY KEY (coberturaID, tipoDeSeguroID),
	FOREIGN KEY (coberturaID) REFERENCES Cobertura(coberturaID) ON DELETE CASCADE,
	FOREIGN KEY(tipoDeSeguroID) REFERENCES TipoDeSeguro(tipoDeSeguroID) ON DELETE CASCADE
);




CREATE TABLE VeiculoExtras
(
	extrasID INTEGER NOT NULL,
	veiculoID INTEGER NOT NULL,
	PRIMARY KEY (extrasID, veiculoID),
	FOREIGN KEY(extrasID) REFERENCES Extras(extrasID) ON DELETE CASCADE,
	FOREIGN KEY(veiculoID) REFERENCES Veiculo(veiculoID) ON DELETE CASCADE
);




CREATE TABLE Pagamento
(
	pagamentoID INTEGER NOT NULL PRIMARY KEY,
	dataPagamento DATE NOT NULL,
	montante REAL NOT NULL,
	contratoID INTEGER REFERENCES Contrato(contratoID),
	UNIQUE(pagamentoID)
);
