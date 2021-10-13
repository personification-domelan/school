CREATE database farmakol;
USE farmakol;
CREATE TABLE lekarstwa (
	nazwamiedzynarodowa VARCHAR(10) PRIMARY KEY,
	nazwapreparatu VARCHAR(20),
	producent VARCHAR(20),
	choroba VARCHAR(40)
	);
CREATE TABLE ICD10 (
	id INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
	oznaczenie CHAR(5),
	opis VARCHAR(255)
	);