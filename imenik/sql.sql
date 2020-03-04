CREATE DATABASE Imenik;

CREATE TABLE Osoba (
    idOsobe INT PRIMARY KEY,
    imeOsobe VARCHAR(35),
    prezimeOsobe VARCHAR(35)
);

INSERT INTO Osoba VALUES (1, 'Senad', 'Delic');

CREATE TABLE Imenik (
    id INT PRIMARY KEY,
    broj INT,
    datumKreiranja DATE,
    FOREIGN KEY (id) REFERENCES Osoba (idOsobe)
);

INSERT INTO Imenik VALUES (1, 061014964, '2020.03.03');
