.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

INSERT INTO Acidente(data, responsavel, custo, acidenteID, veiculoID, tipoAcidenteID) VALUES ('24-07-15', '1', '193.34', '1', '2', 3);
INSERT INTO Acidente(data, responsavel, custo, acidenteID, veiculoID, tipoAcidenteID) VALUES ('12-10-14', '0', '3123.55', '1', '2', 3);
INSERT INTO Acidente(data, responsavel, custo, acidenteID, veiculoID, tipoAcidenteID) VALUES ('11-11-13', '1', '2000.34', '1', '2', 3);
INSERT INTO Acidente(data, responsavel, custo, acidenteID, veiculoID, tipoAcidenteID) VALUES ('19-12-12', '0', '120.20', '1', '2', 3);
INSERT INTO Acidente(data, responsavel, custo, acidenteID, veiculoID, tipoAcidenteID) VALUES ('21-06-11', '1', '532.23', '1', '2', 3);
INSERT INTO Acidente(data, responsavel, custo, acidenteID, veiculoID, tipoAcidenteID) VALUES ('25-12-10', '1', '785.34', '1', '2', 3);

INSERT INTO Cliente(nome, NIF, morada, telefone, email, localidadeID) VALUES ('Luis Telmo Costa', 123456, 'Rua Serpa Pinto', 937882080, 'luistelmocosta@gmail.com', 1);
INSERT INTO Cliente(nome, NIF, morada, telefone, email, localidadeID) VALUES ('Jonas Filipe Trindade Antunes', 145312, 'Rua Travessa da Areosa', 913456987, 'jonasfilipeantunes@gmail.com', 2);
INSERT INTO Cliente(nome, NIF, morada, telefone, email, localidadeID) VALUES ('Alexandre Ribeiro', 912356, 'Rua Ramalho Ortigao', 916512145, 'alexranderibeiro@gmail.com', 3);
INSERT INTO Cliente(nome, NIF, morada, telefone, email, localidadeID) VALUES ('Artur Correia Alves', 829456, 'Rua Leonardo Coimbra', 937788122, 'arturcorreia@gmail.com', 4);
INSERT INTO Cliente(nome, NIF, morada, telefone, email, localidadeID) VALUES ('Diogo Mesquita', 765456, 'Rua dos Combatentes', 912437890, 'diogomesquita@gmail.com', 5);
INSERT INTO Cliente(nome, NIF, morada, telefone, email, localidadeID) VALUES ('Jose Miguel', 323498, 'Rua dos Banhos', 939748577, 'josemiguel@gmail.com', 6);


INSERT INTO Cobertura(nome) VALUES ('Choque,Colisao');
INSERT INTO Cobertura(nome) VALUES ('Contra Furto ou Roubo');
INSERT INTO Cobertura(nome) VALUES ('Incendios,raio ou explosao');
INSERT INTO Cobertura(nome) VALUES ('Quebra isolada de vidros');
INSERT INTO Cobertura(nome) VALUES ('Responsabilidade civil facultativa');
INSERT INTO Cobertura(nome) VALUES ('Proteção jurídica');
INSERT INTO Cobertura(nome) VALUES ('Assistência em viagem standard');
INSERT INTO Cobertura(nome) VALUES ('Assistência em viagem ampliada');
INSERT INTO Cobertura(nome) VALUES ('Cobertura do condutor: 25.000€');
INSERT INTO Cobertura(nome) VALUES ('Proteção da família');
INSERT INTO Cobertura(nome) VALUES ('Atos de vandalismo e fenómenos da natureza');


INSERT INTO Contrato(nome, preco, dataInicio, dataFim, valorFranquia, tipoDeSeguroID, veiculoID	, clienteID) VALUES ('Automóvel', '190', '22-07-2010', '22-07-2011', '500', 1, 1, 1);
INSERT INTO Contrato(nome, preco, dataInicio, dataFim, valorFranquia, tipoDeSeguroID, veiculoID	, clienteID) VALUES ('Automóvel', '213.12', '10-08-2014', '10-08-2015', '600', 2, 2, 2);
INSERT INTO Contrato(nome, preco, dataInicio, dataFim, valorFranquia, tipoDeSeguroID, veiculoID	, clienteID) VALUES ('Automóvel', '219.27', '23-07-2015', '23-07-2016', '700', 3, 3, 3);
INSERT INTO Contrato(nome, preco, dataInicio, dataFim, valorFranquia, tipoDeSeguroID, veiculoID	, clienteID) VALUES ('Motociclo', '312.51', '13-07-2012', '13-07-2013', '900', 4, 4, 4);
INSERT INTO Contrato(nome, preco, dataInicio, dataFim, valorFranquia, tipoDeSeguroID, veiculoID	, clienteID) VALUES ('Automóvel', '352', '16-05-2011', '16-05-2012', '1200', 5, 5, 5);
INSERT INTO Contrato(nome, preco, dataInicio, dataFim, valorFranquia, tipoDeSeguroID, veiculoID	, clienteID) VALUES ('Automóvel', '560.12', '22-12-2015', '22-12-2016', '2000', 6, 6, 6);


INSERT INTO Extras(nome) VALUES ('Ar condicionado');
INSERT INTO Extras(nome) VALUES ('GPS');
INSERT INTO Extras(nome) VALUES ('Interior todo em Fibra de Carbono');
INSERT INTO Extras(nome) VALUES ('Sistema de travagem de ceramica de carbono');
INSERT INTO Extras(nome) VALUES ('Cruise Control');
INSERT INTO Extras(nome) VALUES ('Numero de Portas');
INSERT INTO Extras(nome) VALUES ('Sensores de Estacionamento');
INSERT INTO Extras(nome) VALUES ('Vidros Eletricos');

INSERT INTO TipoDeSeguro_Cobertura(coberturaID, tipoDeSeguroID) VALUES (1, 1, 1, 1);

INSERT INTO Veiculo_Extras(extrasID, veiculoID) VALUES (1, 1, 1, 1);


INSERT INTO Localidade(nome, codPostal) VALUES ('Paredes', '4580-204');
INSERT INTO Localidade(nome, codPostal) VALUES ('Povoa de Varzim', '4490-334');
INSERT INTO Localidade(nome, codPostal) VALUES ('Vila do Conde', '4480-123');
INSERT INTO Localidade(nome, codPostal) VALUES ('Viseu', '3515-512');
INSERT INTO Localidade(nome, codPostal) VALUES ('Arouca', '4540-221');
INSERT INTO Localidade(nome, codPostal) VALUES ('Porto', '4350-431');



INSERT INTO Marca(nome) VALUES ('Renault');
INSERT INTO Marca(nome) VALUES ('Volvo');
INSERT INTO Marca(nome) VALUES ('Mercedes');
INSERT INTO Marca(nome) VALUES ('BMW');
INSERT INTO Marca(nome) VALUES ('Fiat');
INSERT INTO Marca(nome) VALUES ('Ford');



INSERT INTO Modelo(nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES ('Clio', 1995, 1200, 8.2, 1.4, 1);
INSERT INTO Modelo(nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES ('XC90', 2015, 2800, 5.2, 1.8, 2);
INSERT INTO Modelo(nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES ('AMG GT', 2016, 1645, 6.2, 4.0, 3);
INSERT INTO Modelo(nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES ('F 800', 2012, 214, 3.8, 7.98 , 4);
INSERT INTO Modelo(nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES ('Punto', 1993, 1090, 4.5, 1.2, 5);
INSERT INTO Modelo(nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES ('FOCUS RS', 2016, 1465, 7.3, 1.9, 6);


INSERT INTO Pagamento('22-09-2011', 120.45, 1, 1);
INSERT INTO Pagamento('10-12-2014', 140.45, 2, 2);
INSERT INTO Pagamento('23-04-2016', 160.45, 3, 3);
INSERT INTO Pagamento('13-08-2012', 220.45, 4, 4);
INSERT INTO Pagamento('18-11-2011', 200.45, 5, 5);
INSERT INTO Pagamento('30-12-2015', 250.45, 6, 6);



INSERT INTO TipoAcidente(nome, descricaoAcidente)('Choque Traseiro', 'Carro A travou de repente e o carro B não conseguiu evitar choque', 1);
INSERT INTO TipoAcidente(nome, descricaoAcidente)('Choque Lateral', 'Carro A embateu de lado no carro B, após o carro B ter ignorado um stop', 2);
INSERT INTO TipoAcidente(nome, descricaoAcidente)('Choque Lateral', 'Carro A nao respeito o semaforo e chocou com carro B', 3);
INSERT INTO TipoAcidente(nome, descricaoAcidente)('Choque Frontal', 'Carro A perdeu o controlo do carro devido a aquaplanagem e embateu no carro B', 4);
INSERT INTO TipoAcidente(nome, descricaoAcidente)('Avaria do Motor', 'O motor do carro A deixou de funcionar,devido ao aquecimento', 5);
INSERT INTO TipoAcidente(nome, descricaoAcidente)('Furo Pneu', 'Condutor do carro A embateu na berma do passeio quando realizava manobras de estacionamento', 6);


INSERT INTO TipoDeSeguro('Contra terceiros', 1);
INSERT INTO TipoDeSeguro('Contra todos os riscos', 2);
INSERT INTO TipoDeSeguro('Protecao de fenomenos naturais', 3);



INSERT INTO Veiculo('23-04-AB', 2008, 4, '9BAANJKKDK45JDE34', 1, 1);
INSERT INTO Veiculo('12-28-FU', 2014, 8, '15123AKEWOEJCTP19', 2, 2);
INSERT INTO Veiculo('05-33-AX', 2016, 1, '18873AAASDKKDK45J', 3, 3);
INSERT INTO Veiculo('01-52-HI', 2013, 12, '7BNJKK090003TTDK', 4, 4);
INSERT INTO Veiculo('27-61-JK', 2010, 1, '312BBVVMMEASC1223', 5, 5);
INSERT INTO Veiculo('11-87-FI', 2016, 2, '5BNJKKDK45JADD212', 6, 6);
