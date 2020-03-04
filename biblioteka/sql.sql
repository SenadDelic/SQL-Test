CREATE DATABASE Biblioteka;

CREATE TABLE KreiranjeRacuna (
    id INT PRIMARY KEY,
    imeMusterija VARCHAR(45),
    brojPosudenihKnjiga INT
);

INSERT INTO KreiranjeRacuna VALUES(1, 'Senad', 5);

CREATE TABLE KreiranjeKnjige (
    brojKnjige INT PRIMARY KEY,
    imeKnjige VARCHAR(30),
    statusKnjige BOOLEAN
);

INSERT INTO KreiranjeKnjige VALUES (10, 'The Witcher', TRUE);

CREATE TABLE PodizanjeKnjige (
    brojRacun INT PRIMARY KEY,
    brojKnjige INT,
    datumPosudivanja DATE,
    FOREIGN KEY(brojKnjige) REFERENCES KreiranjeKnjige(brojKnjige),
    FOREIGN KEY (brojRacun) REFERENCES KreiranjeRacuna(id)
);

INSERT INTO PodizanjeKnjige VALUES (1, 10, '2020.04.03');
 
 SELECT *
 FROM KreiranjeRacuna
 JOIN PodizanjeKnjige ON PodizanjeKnjige.brojRacun = KreiranjeRacuna.id;