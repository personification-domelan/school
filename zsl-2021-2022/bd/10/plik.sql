-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for 5
CREATE DATABASE IF NOT EXISTS `5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `5`;

-- Dumping structure for table 5.klienci
CREATE TABLE IF NOT EXISTS `klienci` (
  `idkienta` int(11) NOT NULL AUTO_INCREMENT,
  `nazwisko` varchar(200) NOT NULL,
  `imie` varchar(200) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `liczbaodwiedzinsklepu` int(11) NOT NULL DEFAULT 0,
  `datarejestracji` date NOT NULL,
  `kwotazakopow` float NOT NULL DEFAULT 0,
  `plec` enum('m','k') DEFAULT NULL,
  PRIMARY KEY (`idkienta`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table 5.klienci: ~15 rows (approximately)
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
INSERT INTO `klienci` (`idkienta`, `nazwisko`, `imie`, `miasto`, `liczbaodwiedzinsklepu`, `datarejestracji`, `kwotazakopow`, `plec`) VALUES
	(1, 'Bielicki', 'Jan', 'Bydgoszcz', 1, '2014-11-12', 0, 'm'),
	(2, 'Cebula', 'Milena', 'Bydgoszcz', 15, '2014-05-03', 2399, 'k'),
	(3, 'Drezinski', 'Marek', 'Gdynia', 12, '2014-03-14', 897, 'm'),
	(4, 'Duch', 'Wlodzimierz', 'Torun', 3, '2014-09-29', 199, 'm'),
	(5, 'Gruszka', 'Beata', 'Poznan', 8, '2014-08-24', 50, 'k'),
	(6, 'Gubich', 'Ilona', 'Poznan', 3, '2014-05-12', 350, 'k'),
	(7, 'Jackowiak', 'Krzysztof', 'Torun', 2, '2014-12-15', 30, 'm'),
	(8, 'Kleka', 'Monika', 'Wroclaw', 5, '2014-03-02', 780, 'k'),
	(9, 'Mieszczuk', 'Igor', 'Torun', 2, '2014-04-05', 999, 'm'),
	(10, 'Motorek', 'Zenon', 'Poznan', 6, '2014-02-02', 346, 'm'),
	(11, 'Niemiec', 'Joanna', 'Poznan', 1, '2014-08-23', 0, 'k'),
	(12, 'Olszewski', 'Ryszard', 'Szczecin', 2, '2014-07-15', 89, 'm'),
	(13, 'Piechodzki', 'Stefan', 'null', 9, '2014-04-28', 599, 'm'),
	(14, 'Pugala', 'Zofia', 'Warszawa', 3, '2014-06-26', 2999, 'k'),
	(15, 'Torz', 'Renata', 'Lublin', 4, '2015-09-21', 459, 'k');
/*!40000 ALTER TABLE `klienci` ENABLE KEYS */;

-- Dumping structure for table 5.towary
CREATE TABLE IF NOT EXISTS `towary` (
  `idtowaru` int(11) NOT NULL AUTO_INCREMENT,
  `rodzaj` varchar(50) NOT NULL,
  `producent` varchar(50) NOT NULL,
  `model` varchar(200) NOT NULL,
  `opis` varchar(5000) DEFAULT NULL,
  `cena` float NOT NULL,
  `ilosc` int(11) NOT NULL,
  `wartosc` float DEFAULT (`cena` * `ilosc`),
  PRIMARY KEY (`idtowaru`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table 5.towary: ~20 rows (approximately)
/*!40000 ALTER TABLE `towary` DISABLE KEYS */;
INSERT INTO `towary` (`idtowaru`, `rodzaj`, `producent`, `model`, `opis`, `cena`, `ilosc`, `wartosc`) VALUES
	(1, 'Tablet', ' Samsung', 'Galaxy Tab4', 'null', 1249, 1, 1249),
	(2, 'Tablet', 'Samsung', 'Galaxy Note Pro', 'null', 2399, 1, 2399),
	(3, 'Tablet', 'Sony', 'Xperia S', 'null', 949, 2, 1898),
	(4, 'Tablet', 'Microsoft', 'Surface RT 32', 'null', 1499, 3, 4497),
	(5, 'Tablet', 'Microsoft', 'Surface PRO', 'null', 4299, 0, 0),
	(6, 'Aparat', 'Sony', 'DSC-W730', 'Badziewie!', 337, 2, 675),
	(7, 'Aparat', 'Sony', 'DSC-W830', 'null', 339, 3, 1017),
	(8, 'Aparat', 'Samsung', 'WB35F', 'null', 389, 4, 1556),
	(9, 'Aparat', 'Canon', 'IXUS 150', '�atwe rejestrowanie ostrych, szczeg�owych zdj�� i film�w 16-megapikselowym aparatem IXUS z 8-krotnym zoomem optycznym i optyczn� stabilizacj� obrazu. Aparat jest elegancki i na tyle ma�y, aby zmie�ci� si� w kieszeni. ', 329, 2, 658),
	(10, 'Konsola', 'Microsoft', 'Xbox One', 'Fajna do gierek', 1699, 2, 3398),
	(11, 'Konsola', 'Microsoft', 'Xbox 360', 'Fajna do gierek', 989, 0, 0),
	(12, 'Konsola', 'Sony', 'Playstation 4', 'Fajna do gierek', 1399, 2, 2798),
	(13, 'Konsola', 'Sony', 'Playstation 3', 'Fajna do gierek', 739, 1, 739),
	(14, 'Konsola', 'Nintendo', 'WiiU', 'Fajna do gierek', 1199, 1, 1199),
	(15, 'Konsola', 'Nintendo', 'GameCube', 'Fajna do gierek', 179, 1, 179),
	(16, 'Smartfon', 'Samsung', 'Galaxy S3', 'Znakomity telefon', 512, 3, 1536),
	(17, 'Smartfon', 'Samsung', 'Galaxy S5', 'null', 1880, 2, 3760),
	(18, 'Smartfon', 'Sony', 'Xperia Z1', 'null', 1229, 2, 2458),
	(19, 'Smartfon', 'Sony', 'Xperia Z2', 'null', 1399, 2, 2798),
	(20, 'Smartfon', 'Nokia', 'Lumia 530', 'null', 320, 5, 1602);
/*!40000 ALTER TABLE `towary` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
