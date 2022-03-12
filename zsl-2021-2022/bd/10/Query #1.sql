CREATE DATABASE if NOT EXISTS `5`;
USE `5`;
CREATE TABLE `towary` (
	idtowaru INT PRIMARY KEY AUTO_INCREMENT,
	rodzaj VARCHAR(50) NOT NULL,
	producent VARCHAR(50) NOT NULL,
	model VARCHAR(200) NOT NULL,
	opis VARCHAR(5000),
	cena FLOAT NOT NULL,
	ilosc INT NOT NULL,
	wartosc FLOAT DEFAULT (cena*ilosc)
	);
CREATE TABLE `klienci` (
	idkienta INT PRIMARY KEY AUTO_INCREMENT,
	nazwisko VARCHAR(200) NOT NULL,
	imie VARCHAR(200) NOT NULL,
	miasto VARCHAR(50) NOT NULL,
	liczbaodwiedzinsklepu INT NOT NULL DEFAULT 0,
	datarejestracji TIMESTAMP NOT NULL,
	kwotazakopow FLOAT NOT NULL DEFAULT 0,
	plec ENUM('m','k')
	);