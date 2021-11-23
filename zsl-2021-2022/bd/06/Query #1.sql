CREATE DATABASE `pensjonat`;
USE `pensjonat`;
CREATE TABLE `pokoje` (
	`numer` INT PRIMARY KEY AUTO_INCREMENT,
	`liczba_osob` INT,
	`cena_za_dobe` INT,
	`kolor` VARCHAR(50)
);
CREATE TABLE `rezerwacje` (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
	`pokoj` INT,
	`od_dnia` DATE,
	`liczba_dni` int,
	`nazwisko` VARCHAR(150),
	FOREIGN KEY (`pokoj`) REFERENCES `pokoje`(`numer`)
);