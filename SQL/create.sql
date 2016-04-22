.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Acidente;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Cobertura;
DROP TABLE IF EXISTS Contrato;
DROP TABLE IF EXISTS Extras;
DROP TABLE IF EXISTS Localidade;
DROP TABLE IF EXISTS Marca;
DROP TABLE IF EXISTS Modelo;
DROP TABLE IF EXISTS Pagamento;
DROP TABLE IF EXISTS Proprietario;
DROP TABLE IF EXISTS TipoAcidente;
DROP TABLE IF EXISTS TipoDeSeguro;
DROP TABLE IF EXISTS Veiculo;
DROP TABLE IF EXISTS TipoDeSeguro_Cobertura;
DROP TABLE IF EXISTS Veiculo_Extras;


--CREATE TABLES
CREATE TABLE Acidente (
	data DATE NOT NULL,
	responsavel INTEGER NOT NULL,
	custo REAL NOT NULL,
	acidenteID INTEGER NOT NULL PRIMARY KEY ,
	veiculoID INTEGER REFERENCES Veiculo(veiculoID),
	tipoAcidenteID INTEGER REFERENCES TipoAcidente(tipoAcidenteID),
	UNIQUE(acidenteID)
);

INSERT INTO Acidente(data, responsavel, custo, acidenteID, veiculoID, tipoAcidenteID) VALUES ('24-07-12', '1', '193.34', '1', '2', 3);

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

INSERT INTO Cliente(nome, NIF, morada, telefone, email, localidadeID) VALUES ("Luis Telmo Costa", 123456, "Rua Serpa Pinto", 937882080, "luistelmocosta@gmail.com", 1);

CREATE TABLE Cobertura
(
	nome TEXT NOT NULL,
	coberturaID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(coberturaID)
);

INSERT INTO Cobertura(nome) VALUES ("Causas Naturais");

CREATE TABLE Contrato
(
	nome TEXT NOT NULL,
	preco REAL NOT NULL,
	dataInicio DATE NOT NULL,
	dataFim DATE NOT NULL,
	valorFranquia REAL NOT NULL,
	contratoID INTEGER NOT NULL PRIMARY KEY,
	tipoDeSeguroID INTEGER REFERENCES TipoDeSeguro(tipoDeSeguroID),
	veiculoID INTEGER REFERENCES Veiculo(veiculoID),
	clienteID INTEGER REFERENCES Cliente(clienteID),
	UNIQUE(contratoID)
);

INSERT INTO Contrato(nome, preco, dataInicio, dataFim, valorFranquia, tipoDeSeguroID, veiculoID	, clienteID) VALUES ("Automóvel", 190, '22-07-2010', '22-07-2015', 500, 1, 1, 1, 1);

CREATE TABLE Extras
(
	nome TEXT NOT NULL,
	extrasID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(extrasID)
);

INSERT INTO Extras(nome) VALUES ("Ar condicionado");


CREATE TABLE TipoDeSeguro_Cobertura
(
	coberturaID INTEGER,
	tipoDeSeguroID INTEGER,
	FOREIGN KEY(coberturaID) REFERENCES Cobertura(coberturaID),
	FOREIGN KEY(tipoDeSeguroID) REFERENCES TipoDeSeguro(tipoDeSeguroID)
);

INSERT INTO TipoDeSeguro_Cobertura(coberturaID, tipoDeSeguroID) VALUES (1, 1, 1, 1);

CREATE TABLE Veiculo_Extras
(
	extrasID INTEGER,
	veiculoID INTEGER,
	FOREIGN KEY(extrasID) REFERENCES Extras(extrasID),
	FOREIGN KEY(veiculoID) REFERENCES Veiculo(veiculoID)
);

INSERT INTO Veiculo_Extras(extrasID, veiculoID) VALUES (1, 1, 1, 1);

CREATE TABLE Localidade
(
	nome TEXT NOT NULL,
	codPostal TEXT NOT NULL,
	localidadeID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(localidadeID)
);

INSERT INTO Localidade(nome, codPostal) VALUES ("Paredes", "4580-204");


CREATE TABLE Marca
(
	nome TEXT NOT NULL,
	marcaID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(marcaID)
);


INSERT INTO Marca(nome) VALUES ("Renault");

CREATE TABLE Modelo
(
	nome TEXT NOT NULL,
	anoProducao INTEGER NOT NULL,
	peso REAL NOT NULL,
	consumo REAL NOT NULL,
	cilindrada REAL NOT NULL,
	modeloID INTEGER  NOT NULL PRIMARY KEY,
	marcaID INTEGER REFERENCES Marca(marcaID),
	UNIQUE(modeloID)
);

INSERT INTO Modelo(nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES ("Clio", 1995, 2000, 8.2, 1);

CREATE TABLE Pagamento
(
	dataPagamento DATE NOT NULL,
	montante REAL NOT NULL,
	pagamentoID INTEGER NOT NULL PRIMARY KEY,
	contratoID INTEGER REFERENCES Contrato(contratoID),
	UNIQUE(pagamentoID)
);

INSERT INTO Pagamento('23-04-2011', 120.45, 1, 1);

CREATE TABLE Proprietario
(
	proprietario INTEGER NOT NULL,
	proprietarioID INTEGER NOT NULL PRIMARY KEY,
	clienteID INTEGER, --tenho de declarar? É NULL?
	contratoID INTEGER,
	FOREIGN KEY(clienteID) REFERENCES Cliente(clienteID), --FOREIGN KEY??
	FOREIGN KEY(contratoID) REFERENCES Contrato(contratoID),
	UNIQUE(proprietarioID)
);

INSERT INTO Proprietario(1, 1, 1, 1);

CREATE TABLE TipoAcidente
(
	nome TEXT NOT NULL,
	descricaoAcidente TEXT NOT NULL,
	tipoAcidenteID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(tipoAcidenteID)
);

INSERT INTO TipoAcidente(nome, descricaoAcidente)("Choque Traseiro", "Carro A travou de repente e o carro B não conseguiu evitar choque", 1);

CREATE TABLE TipoDeSeguro
(
	tipoSeguro TEXT NOT NULL,
	tipoDeSeguroID INTEGER NOT NULL PRIMARY KEY,
	UNIQUE(tipoDeSeguroID)
);

INSERT INTO TipoDeSeguro("Contra terceiros", 1);

CREATE TABLE Veiculo
(
	matricula TEXT NOT NULL,
	anoMatricula INTEGER NOT NULL,
	mesMatricula INTEGER NOT NULL,
	chassi TEXT NOT NULL,
	veiculoID INTEGER NOT NULL PRIMARY KEY,
	modeloID INTEGER REFERENCES Modelo(modeloID),
	UNIQUE(veiculoID)
);

INSERT INTO Veiculo('23-04-AB', 2014, 10, "9BNJKKDK45J", 1, 1);
