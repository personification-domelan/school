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


-- Dumping database structure for hosting
CREATE DATABASE IF NOT EXISTS `hosting` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `hosting`;

-- Dumping structure for table hosting.daneosobowe
CREATE TABLE IF NOT EXISTS `daneosobowe` (
  `Pesel` char(11) NOT NULL,
  `Imię` varchar(20) NOT NULL,
  `Nazwisko` varchar(30) NOT NULL,
  `Data_urodzenia` date NOT NULL,
  `Plec` char(1) DEFAULT NULL,
  `Adres` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Pesel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table hosting.kontaserwisu
CREATE TABLE IF NOT EXISTS `kontaserwisu` (
  `Login` varchar(100) NOT NULL,
  `Haslo` varchar(100) DEFAULT NULL,
  `Data_utworzenia` date NOT NULL,
  `Wlasciciel` char(11) DEFAULT NULL,
  `OstatnieLogowanie` datetime DEFAULT NULL,
  PRIMARY KEY (`Login`),
  KEY `Wlasciciel` (`Wlasciciel`),
  CONSTRAINT `kontaserwisu_ibfk_1` FOREIGN KEY (`Wlasciciel`) REFERENCES `daneosobowe` (`Pesel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table hosting.logowania
CREATE TABLE IF NOT EXISTS `logowania` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(100) NOT NULL,
  `Host` varchar(100) NOT NULL,
  `AdresIPUzytkownika` varchar(50) NOT NULL,
  `DataLogowania` datetime NOT NULL,
  `DataWylogowania` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table hosting.logowania_old
CREATE TABLE IF NOT EXISTS `logowania_old` (
  `ID` int(11) NOT NULL,
  `Login` varchar(100) NOT NULL,
  `Host` varchar(100) NOT NULL,
  `AdresIPUzytkownika` varchar(50) NOT NULL,
  `DataLogowania` datetime NOT NULL,
  `DataWylogowania` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table hosting.serwery
CREATE TABLE IF NOT EXISTS `serwery` (
  `Host` varchar(100) NOT NULL,
  `AdresIP` varchar(50) NOT NULL,
  `NazwaSerwisu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Host`),
  UNIQUE KEY `AdresIP` (`AdresIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
