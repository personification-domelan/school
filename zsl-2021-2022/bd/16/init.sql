-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Mar 2021, 21:23
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `select9`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

create database if not exists `select9`;
use `select9`;

CREATE TABLE `klienci` (
  `ID_K` int(10) UNSIGNED NOT NULL,
  `NAZWISKO` varchar(45) DEFAULT NULL,
  `IMIE` varchar(25) DEFAULT NULL,
  `MIASTO` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`ID_K`, `NAZWISKO`, `IMIE`, `MIASTO`) VALUES
(1, 'KOWALSKI', 'PIOTR', 'GDYNIA'),
(2, 'JANKOWIAK', 'MACIEJ', 'GDYNIA'),
(3, 'REWERS', 'ADAM', 'KROSNO'),
(4, 'LISIECKI', 'STEFAN', 'LUBLIN'),
(5, 'WOKULSKI', 'MARCIN', 'LUBLIN'),
(6, 'SCHULZ', 'JAN', 'KONIN');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokaty`
--

CREATE TABLE `lokaty` (
  `ID_L` int(11) NOT NULL,
  `ID_K` int(11) NOT NULL,
  `OFERTA` int(11) DEFAULT NULL,
  `KWOTA` int(10) UNSIGNED DEFAULT NULL,
  `STATUS` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lokaty`
--

INSERT INTO `lokaty` (`ID_L`, `ID_K`, `OFERTA`, `KWOTA`, `STATUS`) VALUES
(1, 1, 8, 20000, 'ODNAWIALNA'),
(2, 2, 3, 6000, 'ODNAWIALNA'),
(3, 3, 9, 15000, 'KONCZACA'),
(4, 4, 10, 17000, 'KONCZACA'),
(5, 5, 8, 50000, 'ODNAWIALNA'),
(6, 5, 11, 50000, 'ODNAWIALNA'),
(7, 5, 2, 100000, 'ODNAWIALNA');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferta1`
--

CREATE TABLE `oferta1` (
  `ID_O` int(11) NOT NULL,
  `BANK` varchar(20) NOT NULL,
  `OPROCENTOWANIE` decimal(2,1) NOT NULL,
  `DLUGOSC` varchar(6) NOT NULL,
  `KWOTAMIN` int(10) UNSIGNED DEFAULT NULL,
  `KWOTAMAX` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `oferta1`
--

INSERT INTO `oferta1` (`ID_O`, `BANK`, `OPROCENTOWANIE`, `DLUGOSC`, `KWOTAMIN`, `KWOTAMAX`) VALUES
(1, 'ING', '3.5', '1M-C', 1000, 100000),
(2, 'ING', '3.0', '2M-C', 5000, 500000),
(3, 'ING', '2.5', '3M-C', 1000, 500000),
(4, 'PKOBP', '2.0', '1M-C', 2000, 50000),
(5, 'PEKAO', '2.5', '1M-C', 4000, 300000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferta2`
--

CREATE TABLE `oferta2` (
  `ID_O` int(11) NOT NULL,
  `BANK` varchar(20) NOT NULL,
  `OPROCENTOWANIE` decimal(2,1) NOT NULL,
  `DLUGOSC` varchar(6) NOT NULL,
  `KWOTAMIN` int(10) UNSIGNED DEFAULT NULL,
  `KWOTAMAX` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `oferta2`
--

INSERT INTO `oferta2` (`ID_O`, `BANK`, `OPROCENTOWANIE`, `DLUGOSC`, `KWOTAMIN`, `KWOTAMAX`) VALUES
(6, 'MBANK', '3.5', '1M-C', 100, 10000),
(7, 'MBANK', '3.0', '4M-C', 100, 25000),
(8, 'BOS', '2.5', '6M-C', 500, 100000),
(9, 'GETIN', '2.0', '12M-C', 1000, 100000),
(10, 'REIFFEISEN', '2.5', '1M-C', 10000, 100000),
(11, 'PEKAO', '2.5', '1M-C', 4000, 300000),
(12, 'BZWBK', '2.0', '3M-C', 2000, 500000);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`ID_K`);

--
-- Indeksy dla tabeli `lokaty`
--
ALTER TABLE `lokaty`
  ADD PRIMARY KEY (`ID_L`);

--
-- Indeksy dla tabeli `oferta1`
--
ALTER TABLE `oferta1`
  ADD PRIMARY KEY (`ID_O`);

--
-- Indeksy dla tabeli `oferta2`
--
ALTER TABLE `oferta2`
  ADD PRIMARY KEY (`ID_O`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
  MODIFY `ID_K` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `lokaty`
--
ALTER TABLE `lokaty`
  MODIFY `ID_L` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `oferta1`
--
ALTER TABLE `oferta1`
  MODIFY `ID_O` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `oferta2`
--
ALTER TABLE `oferta2`
  MODIFY `ID_O` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
