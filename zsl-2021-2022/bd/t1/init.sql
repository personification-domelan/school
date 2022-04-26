-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Mar 2022, 14:20
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `uczelnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `ID` int(11) NOT NULL,
  `IMIE` varchar(25) DEFAULT NULL,
  `DATAURODZENIA` date DEFAULT NULL,
  `BRANZA` varchar(25) DEFAULT NULL,
  `STANOWISKO` varchar(25) DEFAULT NULL,
  `PLACA` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`ID`, `IMIE`, `DATAURODZENIA`, `BRANZA`, `STANOWISKO`, `PLACA`) VALUES
(1, 'Andrzej', '1990-03-24', 'banki', 'pracownik', 5000),
(2, 'Walery', '1982-01-15', 'energetyka', 'kierownik', 10000),
(3, 'Anna', '1999-07-22', 'edukacja', 'kadry', 4000),
(4, 'Tadeusz', '2001-12-01', 'handel', 'kadry', 5500),
(5, 'Magdalena', '2000-09-15', 'banki', 'kadry', 7500),
(6, 'Piotr', '1982-03-29', 'edukacja', 'pracownik', 4000),
(7, 'Romuald', '1998-04-02', 'banki', 'kierownik', 12000),
(8, 'Krzysztof', '1997-05-13', 'energetyka', 'konstruktor', 14000),
(9, 'Jan', '1999-04-28', 'handel', 'pracownik', 3500),
(10, 'Piotr', '1973-09-24', 'energetyka', 'pracownik', 7000),
(11, 'Beata', '1971-10-12', 'banki', 'pracownik', 5000),
(12, 'Aldona', '1997-01-15', 'handel', 'pracownik', 2500),
(13, 'Ola', '1996-02-21', 'banki', 'kadry', 6000),
(14, 'Przemek', '1997-08-11', 'handel', 'kierownik', 7500),
(15, 'Aldona', '1991-10-16', 'edukacja', 'kierownik', 6500),
(16, 'Inga', '1978-09-15', 'handel', 'pracownik', 3000),
(17, 'Tadeusz', '1994-10-10', 'handel', 'pracownik', 3000),
(18, 'Jan', '1996-07-28', 'handel', 'pracownik', 3500),
(19, 'Marek', '1995-05-10', 'handel', 'pracownik', 4000),
(20, 'Wiktor', '1989-02-15', 'handel', 'pracownik', 4500),
(21, 'Ula', '2001-12-15', 'banki', 'pracownik', 6000),
(22, 'Beata', '1992-01-04', 'edukacja', 'kierownik', 6000),
(23, 'Iza', '1985-02-16', 'energetyka', 'kierownik', 9000),
(24, 'Bernard', '1988-07-29', 'banki', 'kierownik', 8500),
(25, 'Jan', '1983-10-25', 'edukacja', 'kadry', 3500),
(26, 'Magdalena', '1987-11-18', 'edukacja', 'kadry', 3500),
(27, 'Ola', '1991-04-03', 'edukacja', 'kadry', 3500),
(28, 'Piotr', '1970-01-01', 'energetyka', 'kadry', 7000),
(29, 'Zbigniew', '1994-03-06', 'banki', 'kadry', 7500),
(30, 'Anna', '1975-05-18', 'handel', 'kadry', 5500),
(31, 'Beata', '2001-12-01', 'it', 'kadry', 5000),
(32, 'Mariola', '2001-11-15', 'it', 'pracownik', 6000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stazysci`
--

CREATE TABLE `stazysci` (
  `ID` int(11) NOT NULL,
  `IMIE` varchar(25) DEFAULT NULL,
  `DATAURODZENIA` date DEFAULT NULL,
  `BRANZA` varchar(25) DEFAULT NULL,
  `UCZELNIA` varchar(25) DEFAULT NULL,
  `PLACA` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `stazysci`
--

INSERT INTO `stazysci` (`ID`, `IMIE`, `DATAURODZENIA`, `BRANZA`, `UCZELNIA`, `PLACA`) VALUES
(1, 'Konrad', '2001-02-26', 'banki', 'uniwersytet', 3500),
(2, 'Irena', '2004-02-15', 'banki', 'akademia', 4000),
(3, 'Wiktoria', '2003-01-21', 'edukacja', 'politechnika', 3000),
(4, 'Ryszard', '2001-12-01', 'handel', 'akademia', 3000),
(5, 'Magdalena', '2003-10-15', 'banki', 'politechnika', 3500),
(6, 'Arkadiusz', '2002-01-30', 'edukacja', 'akademia', 2500),
(7, 'Alina', '1998-08-02', 'banki', 'uniwersytet', 3500),
(8, 'Karolina', '2000-11-18', 'energetyka', 'akademia', 4500),
(9, 'Szymon', '2002-08-15', 'handel', 'akademia', 3500),
(10, 'Piotr', '2003-05-24', 'energetyka', 'akademia', 3500),
(11, 'Barbara', '2001-09-17', 'banki', 'uniwersytet', 4000),
(12, 'Beata', '1997-01-15', 'handel', 'politechnika', 3500),
(13, 'Aleksandra', '2001-02-21', 'banki', 'uniwersytet', 3500),
(14, 'Ireneusz', '2002-12-11', 'handel', 'uniwersytet', 3000),
(15, 'Maciej', '2002-07-16', 'edukacja', 'uniwersytet', 2500),
(16, 'Franciszek', '2001-10-12', 'handel', 'politechnika', 3000),
(17, 'Jola', '2001-03-02', 'handel', 'politechnika', 3000),
(18, 'Karina', '2002-08-27', 'handel', 'uniwersytet', 3500),
(19, 'Anna', '1999-05-11', 'handel', 'uniwersytet', 2500),
(20, 'Ewelina', '1999-01-13', 'handel', 'uniwersytet', 4000),
(21, 'Urszula', '2001-12-15', 'banki', 'uniwersytet', 4500),
(22, 'Krzysztof', '1999-05-02', 'edukacja', 'uniwersytet', 3000),
(23, 'Sabina', '2003-02-16', 'energetyka', 'uniwersytet', 3500),
(24, 'Renata', '2002-10-29', 'banki', 'politechnika', 3500),
(25, 'Karolina', '2003-10-25', 'edukacja', 'uniwersytet', 3000),
(26, 'Karolina', '1999-12-18', 'edukacja', 'politechnika', 3000),
(27, 'Karol', '2003-08-03', 'edukacja', 'uniwersytet', 3000),
(28, 'Wojciech', '1999-04-01', 'energetyka', 'politechnika', 5000),
(29, 'Sebastian', '2003-01-06', 'banki', 'politechnika', 4000),
(30, 'Anna', '2001-06-11', 'handel', 'politechnika', 3000);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `stazysci`
--
ALTER TABLE `stazysci`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
