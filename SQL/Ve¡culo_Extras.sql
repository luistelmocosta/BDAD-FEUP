CREATE TABLE Veiculo_Extras
(
	extrasID INTEGER,
	veiculoID INTEGER,
	FOREIGN KEY(extrasID) REFERENCES Extras(extrasID),
	FOREIGN KEY(veiculoID) REFERENCES Veiculo(veiculoID)
);

