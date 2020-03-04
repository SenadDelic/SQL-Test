CREATE DATABASE StudentManagement;

CREATE TABLE Student (
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    dob DATE,
    pbr INT,
    FOREIGN KEY (pbr) REFERENCES Mjesto(pbr)
);

INSERT INTO Student VALUES (1,'Senad', 'Delic','1995.05.19' ,75350);

CREATE TABLE Mjesto (
    pbr INT PRIMARY KEY,
    nazivMjesta VARCHAR(30)
);

INSERT INTO Mjesto VALUES(75350, 'Srebrenik'), (75000, 'Tuzla');

