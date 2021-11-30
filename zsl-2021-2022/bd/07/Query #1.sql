CREATE DATABASE if NOT EXISTS `Rekrutacja`;
USE `Rekrutacja`;
CREATE TABLE if NOT EXISTS `Kandydaci` (
	`idosoby` char(4) PRIMARY KEY,
	`imie` VARCHAR(20),
	`nazwisko` VARCHAR(40),
	`matematyka` INT UNSIGNED CHECK (`matematyka` BETWEEN 0 AND 100),
	`informatyka` INT UNSIGNED CHECK (`informatyka` BETWEEN 0 AND 100),
	`fizyka` INT UNSIGNED CHECK (`fizyka` BETWEEN 0 AND 100),
	`jezykobcy` INT UNSIGNED CHECK (`jezykobcy` BETWEEN 0 AND 100),
	`plec` ENUM ('m', 'k')
);
CREATE TABLE if NOT EXISTS `Zgloszenia` (
	`kierunek` VARCHAR(20),
	`id osoby` CHAR(4),
	FOREIGN KEY (`id osoby`) REFERENCES `Kandydaci`(`idosoby`)
);
CREATE TABLE if NOT EXISTS `Informatycy` (
	`idosoby` CHAR(4) PRIMARY KEY,
	`punkty` INT UNSIGNED CHECK (`punkty` BETWEEN 0 AND 100)
);