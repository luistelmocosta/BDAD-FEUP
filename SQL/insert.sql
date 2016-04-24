.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;
.width 25 25 25 25 25 25 25

--FICHEIRO PARA INTRODUÇÃO DOS DADOS NAS TABELAS JÁ CRIADAS

--Tabela TipoAcidente
INSERT INTO TipoAcidente(tipoAcidenteID, nome, descricaoAcidente) VALUES (1, 'Choque Traseiro', 'Carro A travou de repente e o carro B não conseguiu evitar choque');
INSERT INTO TipoAcidente(tipoAcidenteID, nome, descricaoAcidente) VALUES (2, 'Choque Lateral', 'Carro A embateu de lado no carro B, após o carro B ter ignorado um stop');
INSERT INTO TipoAcidente(tipoAcidenteID, nome, descricaoAcidente) VALUES (3, 'Choque Lateral', 'Carro A nao respeito o semaforo e chocou com carro B');
INSERT INTO TipoAcidente(tipoAcidenteID, nome, descricaoAcidente) VALUES (4, 'Choque Frontal', 'Carro A perdeu o controlo do carro devido a aquaplanagem e embateu no carro B');
INSERT INTO TipoAcidente(tipoAcidenteID, nome, descricaoAcidente) VALUES (5, 'Avaria do Motor', 'O motor do carro A deixou de funcionar,devido ao aquecimento');
INSERT INTO TipoAcidente(tipoAcidenteID, nome, descricaoAcidente) VALUES (6, 'Furo do Pneu', 'Condutor do carro A embateu na berma do passeio quando realizava manobras de estacionamento');


--Tabela Marca
INSERT INTO Marca(marcaID, nome) VALUES (1, 'Renault');
INSERT INTO Marca(marcaID, nome) VALUES (2, 'Volvo');
INSERT INTO Marca(marcaID, nome) VALUES (3, 'Mercedes');
INSERT INTO Marca(marcaID, nome) VALUES (4, 'BMW');
INSERT INTO Marca(marcaID, nome) VALUES (5, 'Fiat');
INSERT INTO Marca(marcaID, nome) VALUES (6, 'Ford');


--Tabela Modelo
INSERT INTO Modelo(modeloID, nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES (1, 'Clio', 1995, 1200, 8.2, 1.4, 1);
INSERT INTO Modelo(modeloID, nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES (2, 'XC90', 2015, 2800, 5.2, 1.8, 2);
INSERT INTO Modelo(modeloID, nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES (3, 'AMG GT', 2016, 1645, 6.2, 4.0, 3);
INSERT INTO Modelo(modeloID, nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES (4, 'F 800', 2012, 214, 3.8, 7.98 , 4);
INSERT INTO Modelo(modeloID, nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES (5, 'Punto', 1993, 1090, 4.5, 1.2, 5);
INSERT INTO Modelo(modeloID, nome, anoProducao, peso, consumo, cilindrada, marcaID) VALUES (6, 'FOCUS RS', 2016, 1465, 7.3, 1.9, 6);


--Tabela Veiculo
INSERT INTO Veiculo(veiculoID, matricula, anoMatricula, mesMatricula, chassi, veiculoID, modeloID) VALUES (1, '23-04-AB', 2008, 4, '9BAANJKKDK45JDE34', 1, 1);
INSERT INTO Veiculo(veiculoID, matricula, anoMatricula, mesMatricula, chassi, veiculoID, modeloID) VALUES (2, '12-28-FU', 2014, 8, '15123AKEWOEJCTP19', 2, 2);
INSERT INTO Veiculo(veiculoID, matricula, anoMatricula, mesMatricula, chassi, veiculoID, modeloID) VALUES (3, '05-33-AX', 2016, 1, '18873AAASDKKDK45J', 3, 3);
INSERT INTO Veiculo(veiculoID, matricula, anoMatricula, mesMatricula, chassi, veiculoID, modeloID) VALUES (4, '01-52-HI', 2013, 12, '7BNJKK090003TTLDK', 4, 4);
INSERT INTO Veiculo(veiculoID, matricula, anoMatricula, mesMatricula, chassi, veiculoID, modeloID) VALUES (5, '27-61-JK', 2010, 1, '312BBVVMMEASC1223', 5, 5);
INSERT INTO Veiculo(veiculoID, matricula, anoMatricula, mesMatricula, chassi, veiculoID, modeloID) VALUES (6, '11-87-FI', 2016, 2, '5BNJKKDK45JADD212', 6, 6);


--Tabela Acidente
INSERT INTO Acidente(acidenteID, data, responsavel, custo, veiculoID, tipoAcidenteID) VALUES (1, '24-07-15', 'TRUE', '193.34', 1, 1);
INSERT INTO Acidente(acidenteID, data, responsavel, custo, veiculoID, tipoAcidenteID) VALUES (2, '12-10-14', 'FALSE', '3123.55', 2, 2);
INSERT INTO Acidente(acidenteID, data, responsavel, custo, veiculoID, tipoAcidenteID) VALUES (3, '11-11-13', 'TRUE', '2000.34', 3, 2);
INSERT INTO Acidente(acidenteID, data, responsavel, custo, veiculoID, tipoAcidenteID) VALUES (4, '19-12-12', 'TRUE', '120.20', 3, 1);
INSERT INTO Acidente(acidenteID, data, responsavel, custo, veiculoID, tipoAcidenteID) VALUES (5, '21-06-11', 'FALSE', '532.23', 5, 3);
INSERT INTO Acidente(acidenteID, data, responsavel, custo, veiculoID, tipoAcidenteID) VALUES (6, '25-12-10', 'FALSE', '785.34', 4, 4);


--Tabela Localidade
INSERT INTO Localidade(localidadeID, nome, codPostal) VALUES (1, 'Paredes', '4580-204');
INSERT INTO Localidade(localidadeID, nome, codPostal) VALUES (2, 'Povoa de Varzim', '4490-334');
INSERT INTO Localidade(localidadeID, nome, codPostal) VALUES (3, 'Vila do Conde', '4480-123');
INSERT INTO Localidade(localidadeID, nome, codPostal) VALUES (4, 'Viseu', '3515-512');
INSERT INTO Localidade(localidadeID, nome, codPostal) VALUES (5, 'Arouca', '4540-221');
INSERT INTO Localidade(localidadeID, nome, codPostal) VALUES (6, 'Porto', '4350-431');


--Tabela Cliente
INSERT INTO Cliente(clienteID, nome, NIF, morada, telefone, email, localidadeID) VALUES (1, 'Luis Telmo Costa', 123456, 'Rua Serpa Pinto', 937882080, 'luistelmocosta@gmail.com', 1);
INSERT INTO Cliente(clienteID, nome, NIF, morada, telefone, email, localidadeID) VALUES (2, 'Jonas Filipe Trindade Antunes', 145312, 'Rua Travessa da Areosa', 913456987, 'jonasfilipeantunes@gmail.com', 2);
INSERT INTO Cliente(clienteID, nome, NIF, morada, telefone, email, localidadeID) VALUES (3, 'Alexandre Ribeiro', 912356, 'Rua Ramalho Ortigao', 916512145, 'alexranderibeiro@gmail.com', 3);
INSERT INTO Cliente(clienteID, nome, NIF, morada, telefone, email, localidadeID) VALUES (4, 'Artur Correia Alves', 829456, 'Rua Leonardo Coimbra', 937788122, 'arturcorreia@gmail.com', 4);
INSERT INTO Cliente(clienteID, nome, NIF, morada, telefone, email, localidadeID) VALUES (5, 'Diogo Mesquita', 765456, 'Rua dos Combatentes', 912437890, 'diogomesquita@gmail.com', 5);
INSERT INTO Cliente(clienteID, nome, NIF, morada, telefone, email, localidadeID) VALUES (6, 'Jose Miguel', 323498, 'Rua dos Banhos', 939748577, 'josemiguel@gmail.com', 6);


--Tabela Cobertura
INSERT INTO Cobertura(coberturaID, nome) VALUES (1, 'Choque,Colisao');
INSERT INTO Cobertura(coberturaID, nome) VALUES (2, 'Contra Furto ou Roubo');
INSERT INTO Cobertura(coberturaID, nome) VALUES (3, 'Incendios,raio ou explosao');
INSERT INTO Cobertura(coberturaID, nome) VALUES (4, 'Quebra isolada de vidros');
INSERT INTO Cobertura(coberturaID, nome) VALUES (5, 'Responsabilidade civil facultativa');
INSERT INTO Cobertura(coberturaID, nome) VALUES (6, 'Protecao juridica');
INSERT INTO Cobertura(coberturaID, nome) VALUES (7, 'Assistencia em viagem standard');
INSERT INTO Cobertura(coberturaID, nome) VALUES (8, 'Assistencia em viagem ampliada');
INSERT INTO Cobertura(coberturaID, nome) VALUES (9, 'Cobertura do condutor: 25.000€');
INSERT INTO Cobertura(coberturaID, nome) VALUES (10, 'Protecao da familia');
INSERT INTO Cobertura(coberturaID, nome) VALUES (11, 'Atos de vandalismo e fenomenos da natureza');


--Tabela TipoDeSeguro
INSERT INTO TipoDeSeguro(tipoDeSeguroID, tipoSeguro) VALUES (1, 'Contra terceiros');
INSERT INTO TipoDeSeguro(tipoDeSeguroID, tipoSeguro) VALUES (2, 'Contra todos os riscos');
INSERT INTO TipoDeSeguro(tipoDeSeguroID, tipoSeguro) VALUES (3, 'Protecao de fenomenos naturais');


--Tabela Contrato
INSERT INTO Contrato(contratoID, nome, preco, dataInicio, dataFim, valorFranquia, proprietario, tipoDeSeguroID, veiculoID	, clienteID) VALUES (1, 'Automovel', '190', '22-07-2010', '22-07-2011', '500', 'TRUE', 1, 1, 1);
INSERT INTO Contrato(contratoID, nome, preco, dataInicio, dataFim, valorFranquia, proprietario, tipoDeSeguroID, veiculoID	, clienteID) VALUES (2, 'Automovel', '213.12', '10-08-2014', '10-08-2015', '600', 'FALSE', 2, 2, 2);
INSERT INTO Contrato(contratoID, nome, preco, dataInicio, dataFim, valorFranquia, proprietario, tipoDeSeguroID, veiculoID	, clienteID) VALUES (3, 'Automovel', '219.27', '23-07-2015', '23-07-2016', '700', 'TRUE', 3, 3, 3);
INSERT INTO Contrato(contratoID, nome, preco, dataInicio, dataFim, valorFranquia, proprietario, tipoDeSeguroID, veiculoID	, clienteID) VALUES (4, 'Motociclo', '312.51', '13-07-2012', '13-07-2013', '900', 'TRUE', 1, 4, 4);
INSERT INTO Contrato(contratoID, nome, preco, dataInicio, dataFim, valorFranquia, proprietario, tipoDeSeguroID, veiculoID	, clienteID) VALUES (5, 'Automovel', '352', '16-05-2011', '16-05-2012', '1200', 'TRUE', 2, 5, 5);
INSERT INTO Contrato(contratoID, nome, preco, dataInicio, dataFim, valorFranquia, proprietario, tipoDeSeguroID, veiculoID	, clienteID) VALUES (6, 'Automovel', '560.12', '22-12-2015', '22-12-2016', '2000', 'FALSE', 3, 6, 6);


--Tabela Extras
INSERT INTO Extras(extrasID, nome) VALUES (1, 'Ar condicionado');
INSERT INTO Extras(extrasID, nome) VALUES (2, 'GPS');
INSERT INTO Extras(extrasID, nome) VALUES (3, 'Interior todo em Fibra de Carbono');
INSERT INTO Extras(extrasID, nome) VALUES (4, 'Sistema de travagem de ceramica de carbono');
INSERT INTO Extras(extrasID, nome) VALUES (5, 'Cruise Control');
INSERT INTO Extras(extrasID, nome) VALUES (6, 'Numero de Portas');
INSERT INTO Extras(extrasID, nome) VALUES (7, 'Sensores de Estacionamento');
INSERT INTO Extras(extrasID, nome) VALUES (8, 'Vidros Eletricos');



--Junction Table TipoDeSeguro_Cobertura
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (1, 1);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (1, 2);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (1, 3);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (2, 3);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (2, 2);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (2, 1);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (11, 2);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (3, 3);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (7, 2);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (8, 3);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (9, 1);
INSERT INTO TipoDeSeguroCobertura(coberturaID, tipoDeSeguroID) VALUES (10, 2);


--Junction Table Veiculo_Extras
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (1, 2);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (1, 3);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (1, 4);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (2, 6);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (2, 3);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (2, 5);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (2, 2);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (3, 1);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (3, 2);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (3, 3);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (4, 5);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (4, 3);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (4, 1);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (4, 2);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (4, 4);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (5, 2);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (5, 3);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (5, 4);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (6, 1);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (6, 2);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (6, 5);
INSERT INTO VeiculoExtras(extrasID, veiculoID) VALUES (6, 4);


--Tabela Pagamento
INSERT INTO Pagamento(pagamentoID, dataPagamento, montante, contratoID) VALUES (1, '22-09-2011', 120.45, 1);
INSERT INTO Pagamento(pagamentoID, dataPagamento, montante, contratoID) VALUES (2, '10-12-2014', 140.45, 2);
INSERT INTO Pagamento(pagamentoID, dataPagamento, montante, contratoID) VALUES (3, '23-04-2016', 160.45, 3);
INSERT INTO Pagamento(pagamentoID, dataPagamento, montante, contratoID) VALUES (4, '13-08-2012', 220.45, 4);
INSERT INTO Pagamento(pagamentoID, dataPagamento, montante, contratoID) VALUES (5, '18-11-2011', 200.45, 5);
INSERT INTO Pagamento(pagamentoID, dataPagamento, montante, contratoID) VALUES (6, '30-12-2015', 250.45, 6);
