CREATE TABLE KreiranjeRacuna (
    brojRacuna INT PRIMARY KEY,
    imeVlasnika VARCHAR(35),
    prezimeVlasnika VARCHAR(35),
    iznosNaRacunu DOUBLE
);


INSERT INTO KreiranjeRacuna VALUES (1, 'Senad', 'Delic', 300.59), (2, 'Niko', 'Nikic', 300.59);

CREATE TABLE Transfer (
    sourceAcc INT PRIMARY KEY,
    targetAcc INT,
    iznos DOUBLE,
    FOREIGN KEY (sourceAcc) REFERENCES KreiranjeRacuna(brojRacuna),
    FOREIGN KEY (targetAcc) REFERENCES KreiranjeRacuna(brojRacuna)
);

INSERT INTO Transfer VALUES (1, 2, 50.50 );