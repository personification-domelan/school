-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 25 Lut 2015, 20:07
-- Wersja serwera: 5.1.41
-- Wersja PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `Wypadki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `auta`
--

create database if not exists `Wypadki`;
use `Wypadki`;

DROP TABLE IF EXISTS `auta`;
CREATE TABLE IF NOT EXISTS `auta` (
  `REJESTRACJA` varchar(10) NOT NULL,
  `MARKA` varchar(20) NOT NULL,
  `ROCZNIK` year(4) NOT NULL,
  `PESEL_WLASCICIELA` char(11) NOT NULL,
  PRIMARY KEY (`REJESTRACJA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `auta`
--

INSERT INTO `auta` (`REJESTRACJA`, `MARKA`, `ROCZNIK`, `PESEL_WLASCICIELA`) VALUES
('BAU1876', 'skoda', 1998, '59042500616'),
('BAU3353', 'renault', 1999, '54010520609'),
('BBI1859', 'daewoo', 2001, '68011651046'),
('BBI5067', 'bmw', 2003, '46021119237'),
('BHA6444', 'saab', 1996, '53031682600'),
('BHA9302', 'volvo', 2004, '78070253978'),
('BI10150', 'opel', 1998, '67081491310'),
('BI11354', 'volkswagen', 1992, '47041487892'),
('BI21534', 'fiat', 2005, '48011656289'),
('BI23405', 'peugeot', 2001, '47050970431'),
('BI45035', 'mercedes', 1994, '73033158745'),
('BIA1274', 'mazda', 1993, '57022063289'),
('BL80265', 'honda', 1995, '48080940272'),
('BMN8263', 'seat', 2005, '69030536239'),
('BSI6710', 'audi', 1999, '64032309553'),
('CZN2124', 'chrysler', 1992, '81021384078'),
('DB35095', 'toyota', 1997, '72080239786'),
('DGL8423', 'citroen', 2003, '69032114200'),
('DJ33404', 'lancia', 2001, '60040769196'),
('KCH2524', 'nissan', 2002, '47083087902'),
('KLI9082', 'kia', 2003, '70020801408');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `osoby`
--

DROP TABLE IF EXISTS `osoby`;
CREATE TABLE IF NOT EXISTS `osoby` (
  `PESEL` char(11) NOT NULL,
  `IMIE` varchar(20) NOT NULL,
  `NAZWISKO` varchar(20) NOT NULL,
  `MIEJSCOWOSC` char(1) NOT NULL,
  PRIMARY KEY (`PESEL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`PESEL`, `IMIE`, `NAZWISKO`, `MIEJSCOWOSC`) VALUES
('46011466970', 'Bogdan', 'Badowski', 'D'),
('46020991650', 'Zbigniew', 'Miller', 'A'),
('46021119237', 'Patryk', 'Magierowicz', 'B'),
('46021336913', 'Piotr', 'Jakus', 'B'),
('46022413514', 'Stefan', 'Gagatek', 'B'),
('46030620238', 'Leon', 'Banach', 'B'),
('46032445608', 'Alicja', 'Pisarska', 'D'),
('46040622156', 'Szymon', 'Grzeskowiak', 'A'),
('46041442805', 'Ewelia', 'Otwocka', 'C'),
('46043062788', 'Patrycja', 'Pleszewska', 'D'),
('46051942290', 'Jerzy', 'Albert', 'C'),
('46052305496', 'Adam', 'Tkacz', 'B'),
('46052453908', 'Barbara', 'Adaszek', 'D'),
('46053054085', 'Anita', 'Berezowska', 'B'),
('46060377898', 'Leon', 'Baran', 'D'),
('46061461215', 'Jan', 'Bolkowski', 'D'),
('46062764959', 'Piotr', 'Nyski', 'B'),
('46073182890', 'Kornel', 'Henrykowski', 'A'),
('46080423256', 'Jan', 'Bugajski', 'B'),
('46081885932', 'Janusz', 'Nawrot', 'D'),
('46082065311', 'Jerzy', 'Adamski', 'D'),
('46082878948', 'Danuta', 'Majka', 'A'),
('46083050756', 'Jan', 'Busz', 'B'),
('47010202392', 'Patryk', 'Barszcz', 'B'),
('47011947472', 'Grzegorz', 'Potocki', 'D'),
('47021830810', 'Karol', 'Badowski', 'C'),
('47030589952', 'Krzysztof', 'Ksel', 'A'),
('47031820856', 'Tadeusz', 'Szczygielski', 'A'),
('47032407216', 'Szymon', 'Grzeskowiak', 'A'),
('47041487892', 'Janusz', 'Mazurowski', 'C'),
('47050427223', 'Anita', 'Pietrzyk', 'C'),
('47050970431', 'Zenon', 'Celej', 'B'),
('47052186876', 'Jerzy', 'Kielecki', 'D'),
('47052983237', 'Zenon', 'Barski', 'A'),
('47071003349', 'Anna', 'Anusz', 'B'),
('47071280795', 'Marek', 'Helski', 'D'),
('47082597987', 'Paulina', 'Podlaska', 'A'),
('47083070698', 'Igor', 'Banasik', 'A'),
('47083087902', 'Zofia', 'Augustyn', 'B'),
('48010504088', 'Karolina', 'Adamczyk', 'A'),
('48011656289', 'Halina', 'Bitner', 'D'),
('48020465470', 'Karol', 'Aderek', 'B'),
('48020760063', 'Danuta', 'Grdulska', 'C'),
('48021648814', 'Bogdan', 'Bosman', 'C'),
('48022170055', 'Leszek', 'Pigulski', 'B'),
('48031914998', 'Roman', 'Kos', 'B'),
('48032154528', 'Anna', 'Firlej', 'C'),
('48032754766', 'Agnieszka', 'Jakubczyk', 'C'),
('48040382676', 'Kazimierz', 'Baran', 'C'),
('48042923877', 'Henryk', 'Misztal', 'C'),
('48060489023', 'Dorota', 'Cichawa', 'A'),
('48070903616', 'Jan', 'Bosman', 'D'),
('48080940272', 'Jan', 'Wnuk', 'A'),
('48081892851', 'Michal', 'Rozny', 'D'),
('48082674845', 'Barbara', 'Banaszczyk', 'B'),
('49010235558', 'Jerzy', 'Sycowski', 'A'),
('49010739731', 'Tomasz', 'Sycowski', 'B'),
('49012817288', 'Martyna', 'Rybicka', 'A'),
('49021050432', 'Norbert', 'Tomczyk', 'C'),
('49021619936', 'Lech', 'Bek', 'B'),
('49031259672', 'Wojciech', 'Otwinowski', 'C'),
('49033115660', 'Iwona', 'Balcer', 'B'),
('49040370982', 'Genowefa', 'Kumur', 'B'),
('49041041302', 'Joanna', 'Mielecka', 'B'),
('49041743211', 'Kamil', 'Katowicki', 'A'),
('49042572535', 'Daniel', 'Bandera', 'D'),
('49051423949', 'Zofia', 'Barwicka', 'D'),
('49053087255', 'Karol', 'Bolkowski', 'A'),
('49060428878', 'Adam', 'Aronowski', 'A'),
('49060974720', 'Ewelina', 'Bajda', 'C'),
('49061136860', 'Karolina', 'Bydgoska', 'A'),
('49061817529', 'Dominika', 'Polkowicka', 'A'),
('49070676845', 'Barbara', 'Holmes', 'D'),
('49072881500', 'Ewa', 'Wichrowa', 'B'),
('49081575670', 'Zenon', 'Pietruszka', 'A'),
('49082322103', 'Kazimiera', 'Parczewska', 'C'),
('49082392869', 'Dorota', 'Katowicka', 'D'),
('49082653548', 'Monika', 'Jasiak', 'C'),
('50020444537', 'Zenon', 'Barcikowski', 'D'),
('50022811333', 'Zbigniew', 'Sitarek', 'B'),
('50031383814', 'Krystian', 'Antos', 'C'),
('50031962161', 'Patrycja', 'Czarnoleska', 'C'),
('50032536884', 'Katarzyna', 'Piotrkowska', 'A'),
('50040474996', 'January', 'Trzebnicki', 'D'),
('50042299595', 'Fryderyk', 'Waz', 'B'),
('50050416519', 'Roman', 'Jedlikowski', 'A'),
('50051480353', 'Tomasz', 'Grzmil', 'A'),
('50051521568', 'Zofia', 'Cedro', 'D'),
('50061687492', 'Tomasz', 'Zychowicz', 'B'),
('50062002797', 'Krzysztof', 'Adamczyk', 'A'),
('50062806261', 'Anna', 'Potocki', 'A'),
('50062925171', 'Andrzej', 'Krakowski', 'C'),
('50070184854', 'Adam', 'Piwnik', 'C'),
('50071637405', 'Marzena', 'Pastuszka', 'B'),
('51010332135', 'Roman', 'Iwanowski', 'D'),
('51011724575', 'Stefan', 'Rozny', 'B'),
('51012668900', 'Paulina', 'Chorzowska', 'B'),
('51020542232', 'Marek', 'Borowik', 'C'),
('51020720139', 'Waldemar', 'Babiarz', 'D'),
('51022589789', 'Olivia', 'Sopocka', 'B'),
('51030275258', 'Piotr', 'Piotrkowski', 'A'),
('51030558874', 'Andrzej', 'Pleszewski', 'C'),
('51031812876', 'Jan', 'Smith', 'A'),
('51032881974', 'Adam', 'Augustowski', 'C'),
('51040359643', 'Joanna', 'Zasada', 'A'),
('51041299678', 'Cezary', 'Barczyk', 'D'),
('51042096137', 'Marcin', 'Antos', 'C'),
('51042472562', 'Zofia', 'Alot', 'D'),
('51042803935', 'Janusz', 'Krakowski', 'C'),
('51052640610', 'Marceli', 'Muraszkowski', 'C'),
('51053111470', 'Adam', 'Berezowski', 'A'),
('51060797230', 'Robert', 'Falek', 'C'),
('51070170625', 'Halina', 'Aronowska', 'A'),
('51070327317', 'Tadeusz', 'Duralski', 'C'),
('51070658882', 'Maria', 'Jackowska', 'A'),
('51071988775', 'Wojciech', 'Czernicki', 'D'),
('51072078693', 'Jan', 'Kulak', 'D'),
('51081031900', 'Tekla', 'Szklarska', 'A'),
('51081417069', 'Krystyna', 'Aleksandrowicz', 'B'),
('52010124205', 'Joanna', 'Albert', 'C'),
('52011451034', 'Adam', 'Berus', 'D'),
('52012727116', 'Sebastian', 'Piotrkowski', 'C'),
('52020266689', 'Jadwiga', 'Podstawa', 'A'),
('52020392377', 'Jan', 'Chamerski', 'D'),
('52020552034', 'Sebastian', 'Helski', 'B'),
('52020642168', 'Aleksandra', 'Kubiak', 'C'),
('52020978980', 'Maria', 'Rejkowicz', 'D'),
('52022473704', 'Anna', 'Augustowska', 'A'),
('52031822524', 'Halina', 'Barszczewska', 'A'),
('52032900072', 'Jaromir', 'Boss', 'D'),
('52041184472', 'Zenon', 'Biernacki', 'C'),
('52052985806', 'Paulina', 'Piotrkowska', 'C'),
('52062277807', 'Krystyna', 'Barabasz', 'B'),
('52062994373', 'Dariusz', 'Kildare', 'D'),
('52070570651', 'Stefan', 'Bosman', 'A'),
('52071670305', 'Ewa', 'Kilarski', 'A'),
('52072709095', 'Jan', 'Wochniak', 'C'),
('52080329485', 'Anna', 'Gates', 'C'),
('52081491415', 'Zygmunt', 'Balcerek', 'C'),
('52081917351', 'Henryk', 'Jakubczyk', 'D'),
('52082959989', 'Zofia', 'Augustowska', 'C'),
('53010873595', 'Krzysztof', 'Hentel', 'C'),
('53013041854', 'Karol', 'Golanczyk', 'A'),
('53031682600', 'Krystyna', 'Blacharz', 'D'),
('53032143221', 'Ewa', 'Kaczan', 'A'),
('53032333871', 'Zbigniew', 'Kunka', 'A'),
('53040550895', 'Kamil', 'Chorzowski', 'A'),
('53040668053', 'Bartosz', 'Banaszkiewicz', 'B'),
('53060961790', 'Andrzej', 'Banasiewicz', 'B'),
('53061133307', 'Katarzyna', 'Iwaszko', 'D'),
('53061152661', 'Karina', 'Legnicka', 'C'),
('53080101927', 'Iwona', 'Balcerowska', 'C'),
('53082056089', 'Ewa', 'Bandera', 'D'),
('53082515548', 'Urszula', 'Cender', 'A'),
('54010520609', 'Martyna', 'Cabaj', 'C'),
('54012409115', 'Jan', 'Adamiec', 'B'),
('54020611490', 'Adam', 'Kielecki', 'B'),
('54022292433', 'Henryk', 'Lapa', 'B'),
('54023009742', 'Kazimiera', 'Bartosiak', 'A'),
('54030119920', 'Karolina', 'Szklarska', 'A'),
('54030317106', 'Maria', 'Zamojska', 'B'),
('54031873326', 'Ewa', 'Klimaszewska', 'D'),
('54032489173', 'Stefan', 'Potocki', 'A'),
('54032857200', 'Anna', 'Trzebnicka', 'C'),
('54042703946', 'Paulina', 'Suwalska', 'D'),
('54050323909', 'Barbara', 'Andrzejewska', 'C'),
('54051014059', 'Damian', 'Chmielewski', 'C'),
('54052490841', 'Wiktoria', 'Sznyrowska', 'A'),
('54060496574', 'Ryszard', 'Orlik', 'A'),
('54061733382', 'Jadwiga', 'Wiek', 'D'),
('54072239147', 'Justyna', 'Krynicka', 'B'),
('54081004691', 'Jan', 'Krakowski', 'A'),
('55010297573', 'Ireneusz', 'Ogonowski', 'A'),
('55010760572', 'Adam', 'Barszcz', 'B'),
('55022400688', 'Irena', 'Adamczyk', 'D'),
('55023185319', 'Antoni', 'Trzebnicki', 'C'),
('55032120431', 'Bohdan', 'Waz', 'D'),
('55032279333', 'Narcyz', 'Polanicki', 'A'),
('55041701362', 'Rita', 'Warszawska', 'D'),
('55042474258', 'Piotr', 'Augustyniak', 'C'),
('55050580936', 'Stefano', 'Gates', 'C'),
('55052390957', 'Wiktor', 'Pilski', 'C'),
('55072966835', 'Tomasz', 'Sawyer', 'A'),
('55080281557', 'Krzysztof', 'Krok', 'A'),
('55081052660', 'Barbara', 'Barcik', 'D'),
('55081325955', 'Jan', 'Chrust', 'C'),
('56011138636', 'Szczepan', 'Potocki', 'C'),
('56021518813', 'Marek', 'Dziekan', 'C'),
('56022943739', 'Adam', 'Zugaj', 'C'),
('56032295004', 'Zyta', 'Barcikowska', 'C'),
('56041029463', 'Danuta', 'Kuc', 'C'),
('56042492334', 'Stach', 'Anusz', 'A'),
('56061135034', 'Piotr', 'Bansik', 'A'),
('56070414962', 'Zofia', 'Banasik', 'D'),
('56070615011', 'Piotr', 'Krakowiak', 'B'),
('56080747096', 'Marcin', 'Bielawski', 'B'),
('57011115436', 'Wojciech', 'Bilski', 'B'),
('57011203957', 'Kazimierz', 'Przemyski', 'C'),
('57011431132', 'Ernest', 'Bydgoski', 'C'),
('57011497877', 'Roman', 'Milion', 'B'),
('57020517254', 'Lucjan', 'Bartkowiak', 'B'),
('57020604385', 'Rozalia', 'Siedlecka', 'C'),
('57020938389', 'Elwira', 'Bartkiewicz', 'D'),
('57020972316', 'Grzegorz', 'Kowalczyk', 'C'),
('57021247282', 'Magdalena', 'Adamus', 'A'),
('57022019563', 'Irena', 'Banasik', 'A'),
('57022063289', 'Karolina', 'Legnicka', 'C'),
('57030730425', 'Inga', 'Bydgoska', 'D'),
('57030797307', 'Danuta', 'Badowska', 'D'),
('57031573494', 'Grzegorz', 'Gates', 'A'),
('57051324320', 'Ilona', 'Balcerzak', 'B'),
('57052397934', 'Andrzej', 'Kozakowski', 'A'),
('57060394750', 'Adam', 'Jamski', 'B'),
('57062976626', 'Krystyna', 'Pleszewska', 'D'),
('57072234099', 'Karol', 'Barszczewski', 'A'),
('57072860959', 'Jan', 'Wiss', 'B'),
('57081290835', 'Leszek', 'Biegaj', 'B'),
('58020427974', 'Leszek', 'Rychta', 'B'),
('58021838845', 'Ewa', 'Deska', 'A'),
('58022615384', 'Stefania', 'Malecka', 'A'),
('58023137386', 'Ewa', 'Bartel', 'C'),
('58030854177', 'Jan', 'Szumowski', 'D'),
('58033066128', 'Zofia', 'Balcerek', 'B'),
('58041437527', 'Justyna', 'Lubelska', 'D'),
('58042112180', 'Maryla', 'Legnicka', 'D'),
('58051001785', 'Wanda', 'Grzywacz', 'C'),
('58051145351', 'Edward', 'Banderas', 'D'),
('58060709470', 'Robert', 'Soski', 'A'),
('58061266622', 'Malwina', 'Parczewska', 'B'),
('58070656216', 'Bartosz', 'Bentkowski', 'A'),
('58071296547', 'Dominika', 'Szklarska', 'C'),
('58071789917', 'Adam', 'Alot', 'A'),
('58072234744', 'Anna', 'Barszczewska', 'C'),
('58072850731', 'Tomasz', 'Augustowski', 'B'),
('58083146445', 'Karolina', 'Sopocka', 'B'),
('59010522224', 'Maria', 'Bielec', 'A'),
('59011820550', 'Karol', 'Potocki', 'A'),
('59013009470', 'Adam', 'Kowalski', 'A'),
('59020304760', 'Anna', 'Nowak', 'B'),
('59022173641', 'Cecylia', 'Barszczewska', 'A'),
('59031732352', 'Andrzej', 'Trzebnicki', 'B'),
('59032703780', 'Alina', 'Bienias', 'B'),
('59040877488', 'Jadwiga', 'Chorzowska', 'D'),
('59041592739', 'Marcin', 'Aronowski', 'C'),
('59042500616', 'Horacy', 'Warszawski', 'C'),
('59050269271', 'Piotr', 'Aleksander', 'B'),
('59050332838', 'Piotr', 'Banasiak', 'C'),
('59070365986', 'Karolina', 'Krakowska', 'C'),
('59071561510', 'Feliks', 'Sycowski', 'C'),
('59071769949', 'Jolanta', 'Adamowicz', 'D'),
('59072599516', 'Marcin', 'Baran', 'C'),
('59073124764', 'Barbara', 'Aleksander', 'B'),
('60010277045', 'Karolina', 'Antos', 'C'),
('60010473250', 'Adam', 'Antos', 'C'),
('60011168304', 'Zuzanna', 'Piotrkowska', 'A'),
('60012759556', 'Bartosz', 'Banaszek', 'C'),
('60021281905', 'Teresa', 'Zeller', 'D'),
('60031387558', 'Adam', 'Nowak', 'C'),
('60031961312', 'Adam', 'Holmes', 'A'),
('60040769196', 'Kazimierz', 'Truszkowski', 'C'),
('60041619612', 'Szczepan', 'Bosman', 'A'),
('60043054745', 'Justyna', 'Augustowska', 'D'),
('60043138429', 'Justyna', 'Bedka', 'D'),
('60050201073', 'Wojciech', 'Polkowicki', 'D'),
('60050547348', 'Barbara', 'Aleksandrowicz', 'D'),
('60050671713', 'Anzelm', 'Bystrzycki', 'D'),
('60052703849', 'Anna', 'Boss', 'D'),
('60052788336', 'Remigiusz', 'Filipiak', 'D'),
('60053088817', 'Kornel', 'Gorzowski', 'C'),
('60061267978', 'Grzegorz', 'Gigant', 'A'),
('60061865589', 'Joanna', 'Chorzowska', 'D'),
('60070956944', 'Helena', 'Lysiak', 'A'),
('60071127932', 'Jan', 'Aanusz', 'C'),
('60072720653', 'Krzysztof', 'Katana', 'B'),
('60080726065', 'Marzena', 'Szklarska', 'A'),
('60081464407', 'Paulina', 'Banasiak', 'A'),
('61012279790', 'Zenon', 'Gagatek', 'C'),
('61020292846', 'Anna', 'Basiak', 'B'),
('61021810933', 'Piotr', 'Sycowski', 'B'),
('61022296800', 'Laura', 'Przybylska', 'A'),
('61031104103', 'Dorota', 'Sosnowiecka', 'D'),
('61032006107', 'Teresa', 'Krakowska', 'C'),
('61032720014', 'Jerzy', 'Kowalczyk', 'B'),
('61050332084', 'Beata', 'Krakowska', 'A'),
('61052704540', 'Ewa', 'Kowal', 'C'),
('61052950125', 'Barbara', 'Wpawska', 'D'),
('61062020490', 'Jerzy', 'Krakowski', 'C'),
('61062963757', 'Adam', 'Barczewski', 'D'),
('61080365225', 'Celina', 'Bardzio', 'A'),
('61080996814', 'Stefan', 'Chodyra', 'B'),
('61081265593', 'Ryszard', 'Adamski', 'C'),
('61081473918', 'Janusz', 'Michalak', 'D'),
('61082403572', 'Konrad', 'Olszewski', 'D'),
('61082948857', 'Adam', 'Radomski', 'C'),
('61083058290', 'Stefan', 'Pabianicki', 'C'),
('62011655277', 'Kornel', 'Lubelski', 'D'),
('62011695163', 'Dorota', 'Banach', 'A'),
('62011934271', 'Jan', 'Zawodnik', 'D'),
('62020948331', 'Artur', 'Kral', 'B'),
('62022868857', 'Bohdan', 'Boss', 'C'),
('62031269476', 'Maciej', 'Bielecki', 'C'),
('62040589086', 'Anna', 'Karpowicz', 'C'),
('62041460045', 'Paulina', 'Opolska', 'B'),
('62051358846', 'Anna', 'Balicka', 'B'),
('62051903961', 'Jadwiga', 'Podczasiak', 'A'),
('62051920018', 'Andrzej', 'Mrozowski', 'A'),
('62052709603', 'Irma', 'Augustowska', 'B'),
('62052849084', 'Beata', 'Banasiewicz', 'D'),
('62062945583', 'Anna', 'Cichocka', 'B'),
('62062960669', 'Anna', 'Kopec', 'B'),
('62071578176', 'Patryk', 'Baranowski', 'B'),
('62071711090', 'Krzysztof', 'Mater', 'A'),
('62072015643', 'Karolina', 'Bednarska', 'C'),
('62072253999', 'Gerard', 'Kopycki', 'B'),
('63010709806', 'Malwina', 'Lubelski', 'D'),
('63010758879', 'Piotr', 'Warszawski', 'C'),
('63020259210', 'Stefan', 'Inny', 'B'),
('63020938526', 'Jagoda', 'Bauer', 'A'),
('63022684906', 'Wiktoria', 'Setniewska', 'B'),
('63041309329', 'Malwina', 'Skierniewicka', 'D'),
('63041987576', 'Piotr', 'Prokop', 'A'),
('63043100652', 'Anatol', 'Zysk', 'C'),
('63051498118', 'Zenobiusz', 'Basaj', 'D'),
('63052589877', 'Jan', 'Nadolicki', 'A'),
('63052636623', 'Paulina', 'Krakowska', 'A'),
('63061111360', 'Zofia', 'Warszawska', 'B'),
('63061649331', 'Adam', 'Bielski', 'A'),
('63062873269', 'Monika', 'Kurylek', 'C'),
('63062948422', 'Krystyna', 'Swoboda', 'A'),
('63070107099', 'Piotr', 'Barankiewicz', 'B'),
('63072544100', 'Aleksandra', 'Michalec', 'B'),
('63072656867', 'Marta', 'Bator', 'A'),
('63082017070', 'Grzegorz', 'Banderas', 'D'),
('63082096806', 'Justyna', 'Bydgoska', 'B'),
('63082755819', 'Jan', 'Janowski', 'A'),
('63083100472', 'Jan', 'Katowicki', 'B'),
('64010345124', 'Alicja', 'Marchlewska', 'C'),
('64012022764', 'Karolina', 'Abak', 'D'),
('64012826252', 'Bohdan', 'Chinski', 'C'),
('64021933695', 'Kazimierz', 'Warszawski', 'D'),
('64030181212', 'Adam', 'Adamowicz', 'D'),
('64030292084', 'Kleopatra', 'Warszawska', 'D'),
('64032113198', 'Wiktor', 'Kutnowski', 'D'),
('64032309553', 'Michal', 'Inglot', 'B'),
('64032447178', 'Eustachy', 'Bydgoski', 'B'),
('64040392662', 'Ewelia', 'Lubelska', 'C'),
('64042228989', 'Halina', 'Barszcz', 'D'),
('64051797696', 'Karol', 'Gates', 'A'),
('64052767917', 'Karol', 'Arak', 'A'),
('64060788139', 'Karol', 'Mieta', 'B'),
('64061711864', 'Patrycja', 'Opolska', 'C'),
('64062775711', 'Edward', 'Nosowski', 'A'),
('64071032276', 'Jan', 'Bosman', 'A'),
('64071194501', 'Anna', 'Andrzejewska', 'B'),
('64072172748', 'Celina', 'Banaszek', 'B'),
('64072869277', 'Andrzej', 'Ceja', 'A'),
('64080832953', 'Kornel', 'Bydgoski', 'A'),
('64083030655', 'Jerzy', 'Majcher', 'B'),
('65010295242', 'Stefania', 'Baranowska', 'A'),
('65011176126', 'Patrycja', 'Szymczyk', 'C'),
('65032546119', 'Gustaw', 'Warszawski', 'C'),
('65032927532', 'Bogdan', 'Chmielewski', 'C'),
('65041472416', 'Kazimierz', 'Benedykt', 'C'),
('65041986739', 'Marcin', 'Pleszewski', 'D'),
('65042219946', 'Natalia', 'Bydgoska', 'C'),
('65051837999', 'Grzegorz', 'Katowicki', 'B'),
('65071807152', 'Roman', 'Mieta', 'A'),
('65080912814', 'Janusz', 'Krynicki', 'C'),
('65080951143', 'Danuta', 'Biegaj', 'D'),
('66012953051', 'Tadeusz', 'Starachowicki', 'D'),
('66021648856', 'Karol', 'Budzisz', 'B'),
('66030873771', 'Jan', 'Krynicki', 'D'),
('66032816415', 'Adam', 'Bartoszek', 'B'),
('66040707105', 'Iza', 'Janasik', 'B'),
('66052886517', 'Jan', 'Jarek', 'B'),
('66071450180', 'Karolina', 'Trzebnicka', 'C'),
('66080201887', 'Edyta', 'Zimna', 'B'),
('66081501146', 'Agnieszka', 'Chrzanowska', 'A'),
('66082130060', 'Dorota', 'Banaszkiewicz', 'C'),
('67011611290', 'Antoni', 'Banasik', 'C'),
('67020855216', 'Adam', 'Abramczyk', 'B'),
('67021777827', 'Olga', 'Barankiewicz', 'A'),
('67022437717', 'Leonard', 'Banasik', 'C'),
('67032058465', 'Krystyna', 'Bartosz', 'A'),
('67032571100', 'Marta', 'Bydgoska', 'C'),
('67040514269', 'Marcelina', 'Bielawska', 'B'),
('67040759741', 'Justyna', 'Opolska', 'D'),
('67041150695', 'Edward', 'Janas', 'C'),
('67042967171', 'Marek', 'Chojnacki', 'A'),
('67051825097', 'Marek', 'Chinski', 'D'),
('67061110749', 'Iwona', 'Bekasiewicz', 'C'),
('67070660543', 'Justyna', 'Krakowska', 'C'),
('67081491310', 'Andrzej', 'Bydgoski', 'A'),
('67082189504', 'Kalina', 'Opolska', 'A'),
('68010959879', 'Jerzy', 'Andrzejewski', 'D'),
('68011651046', 'Anna', 'Bujanowicz', 'A'),
('68021942220', 'Barbara', 'Sarek', 'B'),
('68022790617', 'Wojciech', 'Warszawski', 'A'),
('68022922131', 'Edmund', 'Skoczkowski', 'C'),
('68032000728', 'Barbara', 'Katana', 'B'),
('68032717574', 'Marcin', 'Boruta', 'D'),
('68040708094', 'Arkadiusz', 'Amanowicz', 'C'),
('68043054666', 'Zofia', 'Malbolrska', 'B'),
('68052234215', 'Marian', 'Antoni', 'D'),
('68052425538', 'Stefan', 'Batory', 'B'),
('68062446765', 'Helena', 'Haruza', 'A'),
('68062671725', 'Kaja', 'Malbolrska', 'B'),
('68063174647', 'Marzena', 'Kowalski', 'D'),
('68071435985', 'Alicja', 'Chorzowska', 'A'),
('68080400280', 'Zyta', 'Opolska', 'A'),
('68081414545', 'Zofia', 'Grzesik', 'B'),
('68081903379', 'Stefan', 'Bartoszewicz', 'D'),
('69010302292', 'Kazimierz', 'Burda', 'D'),
('69010552499', 'Wojciech', 'Obornicki', 'D'),
('69012637165', 'Ewelia', 'Krakowska', 'D'),
('69013075070', 'Szczepan', 'Majchrowicz', 'B'),
('69013184895', 'Janusz', 'Warnawin', 'C'),
('69020166819', 'Wiktor', 'Bystrzycki', 'D'),
('69022825875', 'Jacek', 'Sawyer', 'C'),
('69023062143', 'Barbara', 'Babula', 'C'),
('69030168539', 'Krzysztof', 'Alot', 'D'),
('69030536239', 'Stefan', 'Rengifo', 'A'),
('69032114200', 'Anna', 'Pytka', 'C'),
('69032195977', 'Jacek', 'Soplica', 'C'),
('69032825807', 'Mariola', 'Tucholska', 'C'),
('69040425451', 'Jacek', 'Musial', 'C'),
('69052711577', 'Stefan', 'Papier', 'A'),
('69053036196', 'Dionizy', 'Kiel', 'C'),
('69061323804', 'Zuzanna', 'Katowicka', 'D'),
('69070691165', 'Anna', 'Bydgoska', 'B'),
('69071605291', 'Amadeusz', 'Helski', 'B'),
('69082693845', 'Daria', 'Krakowska', 'D'),
('70012069658', 'Kornel', 'Augustowski', 'A'),
('70012287342', 'Lidia', 'Opolska', 'A'),
('70012316491', 'Wojciech', 'Kaliski', 'A'),
('70020456516', 'Anatol', 'Mieta', 'A'),
('70020801408', 'Krystyna', 'Arak', 'C'),
('70020991785', 'Wanda', 'Banaczek', 'C'),
('70032564155', 'Andrzej', 'Bednarczyk', 'B'),
('70041258386', 'Dorota', 'Bilska', 'A'),
('70041340238', 'Zenon', 'Sasim', 'A'),
('70041843991', 'Feliks', 'Bartnik', 'B'),
('70050114156', 'Nikodem', 'Rozny', 'C'),
('70050871037', 'Grzegorz', 'Banel', 'C'),
('70051437179', 'Grzegorz', 'Holmes', 'B'),
('70051822032', 'Piotr', 'Aleksandrowicz', 'B'),
('70052059536', 'Karol', 'Adam', 'D'),
('70052496496', 'Andrzej', 'Lubelski', 'A'),
('70052764984', 'Natalia', 'Opolska', 'C'),
('70062507795', 'Alfred', 'Bajer', 'C'),
('70063133210', 'Mateusz', 'Chebda', 'A'),
('70063159731', 'Faustyn', 'Augustowski', 'C'),
('70070304333', 'Piotr', 'Brzeski', 'C'),
('70071994416', 'Filip', 'Krakowski', 'B'),
('70081101879', 'Tomasz', 'Misiak', 'C'),
('70081560959', 'Anatol', 'Janasik', 'C'),
('70082516713', 'Krzysztof', 'Aleksander', 'D'),
('71012048184', 'Danuta', 'Bielecka', 'D'),
('71012377596', 'Piotr', 'Adamczyk', 'D'),
('71013062824', 'Karolina', 'Adamska', 'D'),
('71013077280', 'Renata', 'Cybulska', 'A'),
('71020407397', 'Mateusz', 'Lubelski', 'B'),
('71021394867', 'Marzena', 'Opolska', 'A'),
('71030351925', 'Barbara', 'Michalska', 'C'),
('71031018607', 'Anna', 'Marzec', 'A'),
('71031147039', 'Remigiusz', 'Okla', 'D'),
('71040627344', 'Zofia', 'Katowicka', 'C'),
('71042124658', 'Mateusz', 'Miturski', 'C'),
('71052968118', 'Bohdan', 'Rozny', 'C'),
('71060533751', 'Karol', 'Krakowski', 'B'),
('71060537519', 'Adam', 'Piotrkowski', 'D'),
('71060671512', 'Zenon', 'Buczek', 'B'),
('71062833682', 'Anna', 'Kaliska', 'D'),
('71071501439', 'Karol', 'Walas', 'B'),
('71072004832', 'Antoni', 'Bajda', 'A'),
('71072192667', 'Magdalena', 'Deja', 'D'),
('71073028725', 'Anna', 'Szklarska', 'A'),
('71073149125', 'Zofia', 'Suwalska', 'C'),
('72010715166', 'Zofia', 'Barszcz', 'B'),
('72011492264', 'Marcela', 'Badowska', 'A'),
('72012228981', 'Dorota', 'Cichosz', 'B'),
('72012974929', 'Irena', 'Bajer', 'C'),
('72022265080', 'Rozalia', 'Trzebnicka', 'B'),
('72023178170', 'Roch', 'Bdzikot', 'A'),
('72032080972', 'Witold', 'Adamiec', 'A'),
('72051646698', 'Marceli', 'Balicki', 'A'),
('72060737114', 'Rudolf', 'Bolkowski', 'D'),
('72062815890', 'Andrzej', 'Obornicki', 'B'),
('72071493551', 'Zbigniew', 'Baran', 'B'),
('72080239786', 'Dominika', 'Czernicka', 'B'),
('72081720313', 'Jakub', 'Gigant', 'D'),
('73020416836', 'Karol', 'Boran', 'A'),
('73020854438', 'Bogdan', 'Kmicic', 'A'),
('73030899030', 'Zenon', 'Bednarek', 'D'),
('73033158745', 'Stefania', 'Chaberek', 'C'),
('73040156761', 'Zofia', 'Banach', 'A'),
('73042355588', 'Magdalena', 'Paczka', 'D'),
('73042942423', 'Amelia', 'Podlaska', 'C'),
('73051384236', 'Wiktor', 'Szklarski', 'C'),
('73060123990', 'Krzysztof', 'Balicki', 'A'),
('73060270296', 'Adam', 'Warszawski', 'B'),
('73060695660', 'Lidia', 'Chmielarz', 'C'),
('73061018659', 'Marcin', 'Bajda', 'B'),
('73061185364', 'Celina', 'Batycka', 'C'),
('73062212304', 'Anna', 'Idzik', 'A'),
('73062715630', 'Jan', 'Malbolrski', 'D'),
('73071007694', 'Marek', 'Pabianicki', 'C'),
('73071550642', 'Barbara', 'Augustyniak', 'A'),
('73071683368', 'Dorota', 'Krakowska', 'A'),
('73071962089', 'Wiktoria', 'Kutnowska', 'D'),
('74010653859', 'Stefan', 'Bawarski', 'C'),
('74012506162', 'Ewa', 'Bulej', 'C'),
('74013018116', 'Jan', 'Kmicic', 'B'),
('74020821105', 'Kinga', 'Chorzowska', 'D'),
('74023074920', 'Dorota', 'Karpowicz', 'B'),
('74030233017', 'Jacek', 'Robak', 'A'),
('74030676102', 'Zenobia', 'Bednarek', 'D'),
('74031718461', 'Karolina', 'Chorzowska', 'A'),
('74032617219', 'Sebastian', 'Augustowski', 'C'),
('74040170997', 'Kazimierz', 'Chodyra', 'A'),
('74040736665', 'Michalina', 'Krakowska', 'C'),
('74041730453', 'Marceli', 'Kowalski', 'C'),
('74043047810', 'Jan', 'Bartodziej', 'D'),
('74050523109', 'Agata', 'Krakowska', 'B'),
('74052463812', 'Krystian', 'Balcerowski', 'B'),
('74060800706', 'Sabina', 'Krynicka', 'A'),
('74062405411', 'Edward', 'Bzinkowski', 'C'),
('74062983807', 'Jolanta', 'Jaros', 'C'),
('74070433428', 'Marzena', 'Porzucek', 'D'),
('74070641485', 'Anna', 'Bednarczyk', 'D'),
('74072656672', 'Sebastian', 'Cebula', 'B'),
('74081448211', 'Jerzy', 'Sylwar', 'A'),
('75011285896', 'Wiktor', 'Krakowski', 'D'),
('75011429377', 'Jonasz', 'Warszawski', 'A'),
('75011892546', 'Maria', 'Ciechanowicz', 'D'),
('75012175826', 'Janina', 'Chylak', 'B'),
('75012452095', 'Michal', 'Kowal', 'B'),
('75012799637', 'Adam', 'Andrzejewski', 'B'),
('75030955523', 'Paulina', 'Chmiel', 'C'),
('75041131336', 'Stefan', 'Gates', 'A'),
('75052056972', 'Krzysztof', 'Krul', 'B'),
('75052926013', 'Witold', 'Antos', 'A'),
('75062624851', 'Wojciech', 'Cichocki', 'C'),
('75071588216', 'Jan', 'Babula', 'B'),
('75081114856', 'Kazimierz', 'Grzegorczyk', 'A'),
('75082824109', 'Ewelina', 'Nyska', 'D'),
('76020399196', 'Wojciech', 'Krakowski', 'A'),
('76023158691', 'Janusz', 'Bastek', 'D'),
('76030854522', 'Alina', 'Barska', 'D'),
('76041535021', 'Jolanta', 'Antczak', 'D'),
('76042378007', 'Agnieszka', 'Maciejczyk', 'C'),
('76043110365', 'Danuta', 'Stachura', 'B'),
('76050723480', 'Paulina', 'Katowicka', 'D'),
('76052385602', 'Maria', 'Blicharska', 'A'),
('76052495954', 'Jacek', 'Wojtas', 'C'),
('76070490328', 'Zofia', 'Antonkiewicz', 'B'),
('76072943046', 'Ewa', 'Adamiec', 'D'),
('76081706229', 'Anita', 'Wota', 'A'),
('76081894436', 'Adam', 'Chojnacki', 'B'),
('76082229154', 'Grzegorz', 'Potocki', 'B'),
('76082493795', 'Maurycy', 'Myslicki', 'B'),
('76082861730', 'Jerzy', 'Antczak', 'B'),
('77010303090', 'Grzegorz', 'Kowalonek', 'D'),
('77010957251', 'Roman', 'Chojnacki', 'D'),
('77011711562', 'Barbara', 'Bronikowska', 'B'),
('77012101115', 'Piotr', 'Adamski', 'D'),
('77012130830', 'Damian', 'Kowalski', 'B'),
('77012684148', 'Jadwiga', 'Kowalska', 'A'),
('77013193922', 'Krystyna', 'Antonkiewicz', 'D'),
('77021111929', 'Beata', 'Antoszewska', 'D'),
('77030500093', 'Andrzej', 'Piotrkowski', 'A'),
('77031403944', 'Zofia', 'Krakowska', 'B'),
('77033067908', 'Karolina', 'Nyska', 'C'),
('77042650667', 'Laura', 'Baranek', 'D'),
('77050778029', 'Hanna', 'Bernacik', 'D'),
('77052633757', 'Jaromir', 'Prokop', 'D'),
('77060761983', 'Antonina', 'Bydgoska', 'B'),
('77060908511', 'Zenon', 'Borowik', 'A'),
('77061816590', 'Piotr', 'Rokosz', 'C'),
('77080177258', 'Adam', 'Adamus', 'D'),
('78010473163', 'Teresa', 'Budzisz', 'B'),
('78012033222', 'Dorota', 'Majewska', 'D'),
('78012102298', 'Karol', 'Bosman', 'C'),
('78020322994', 'Patryk', 'Katowicki', 'B'),
('78022769951', 'Jan', 'Smith', 'B'),
('78022937527', 'Maryla', 'Zysk', 'D'),
('78030619754', 'Stefan', 'Inny', 'A'),
('78040270527', 'Jolanta', 'Baron', 'B'),
('78040380718', 'Anatol', 'Kowalski', 'A'),
('78040766570', 'Jan', 'Mirecki', 'C'),
('78041199586', 'Anna', 'Inny', 'C'),
('78052821517', 'Adam', 'Sycowski', 'B'),
('78061467502', 'Amelia', 'Czarnoleska', 'C'),
('78063095875', 'Dariusz', 'Kmicic', 'B'),
('78070253978', 'Karol', 'Bodek', 'C'),
('78072254731', 'Arnold', 'Barbucha', 'A'),
('78080413100', 'Mariola', 'Kukulska', 'A'),
('78080701069', 'Marzena', 'Stopyra', 'C'),
('78082116285', 'Ewa', 'Polanicka', 'D'),
('78082451481', 'Eliza', 'Bartosiewicz', 'C'),
('79010262339', 'Klemens', 'Warszawski', 'A'),
('79010465435', 'Wiktor', 'Szczyrkowski', 'B'),
('79011398491', 'Andrzej', 'Szumowski', 'B'),
('79020151742', 'Marta', 'Robak', 'A'),
('79022420734', 'Jan', 'Gumowski', 'D'),
('79022915915', 'Bernard', 'Lubelski', 'D'),
('79030766026', 'Ernestyna', 'Chojnacka', 'B'),
('79032086953', 'Adam', 'Susel', 'D'),
('79040749796', 'Adam', 'Czarnecki', 'A'),
('79042185950', 'Adrian', 'Banaszczyk', 'D'),
('79051319881', 'Ewa', 'Milion', 'C'),
('79051564328', 'Julia', 'Kielecka', 'D'),
('79052146011', 'Jakub', 'Holmes', 'C'),
('79060821883', 'Sabrina', 'Wilk', 'C'),
('79061091566', 'Zofia', 'Berak', 'C'),
('79061445693', 'Karol', 'Hubicki', 'D'),
('79062664493', 'Mateusz', 'Karpowicz', 'D'),
('79062940890', 'Kazimierz', 'Bartosik', 'C'),
('79073149299', 'Wojciech', 'Katowicki', 'C'),
('79080166623', 'Dorota', 'Tarnowska', 'B'),
('80011788546', 'Irena', 'Banasiewicz', 'C'),
('80012185854', 'Jan', 'Adamowicz', 'A'),
('80013124489', 'Paulina', 'Baranowska', 'B'),
('80020643186', 'Marcelina', 'Serwicka', 'A'),
('80021405211', 'Jerzy', 'Czajkowski', 'B'),
('80021681109', 'Aleksandra', 'Kwas', 'C'),
('80022726157', 'Jan', 'Marasek', 'D'),
('80040646891', 'Jan', 'Kildare', 'C'),
('80042165110', 'Wiktor', 'Adamus', 'D'),
('80050214145', 'Marta', 'Opolska', 'C'),
('80051695475', 'Albert', 'Pleszewski', 'C'),
('80051770426', 'Barbara', 'Kiel', 'D'),
('80053118781', 'Janina', 'Podlaska', 'C'),
('80053168557', 'Jerzy', 'Lubelski', 'A'),
('80062480169', 'Patrycja', 'Rzeszowska', 'A'),
('80062822277', 'Bohdan', 'Gigant', 'B'),
('80081291810', 'Jerzy', 'Szklarski', 'A'),
('80081968930', 'Tomasz', 'Tutaj', 'D'),
('80082431877', 'Piotr', 'Polkowicki', 'B'),
('81010974091', 'Olgierd', 'Baranek', 'A'),
('81011159031', 'Janusz', 'Baka', 'D'),
('81011807736', 'Seweryn', 'Krakowski', 'D'),
('81011910685', 'Barbara', 'Kilarski', 'B'),
('81012649315', 'Bogdan', 'Inny', 'B'),
('81021384078', 'Grzegorz', 'Kaminski', 'B'),
('81021701178', 'Kacper', 'Trzebnicki', 'B'),
('81022050615', 'Wiktor', 'Lubelski', 'A'),
('81030555861', 'Barbara', 'Karcz', 'D'),
('81031738113', 'Kazimierz', 'Biedka', 'D'),
('81032816708', 'Patrycja', 'Augustowska', 'A'),
('81040446764', 'Agnieszka', 'Bujak', 'D'),
('81041210009', 'Irena', 'Piotrowska', 'C'),
('81041609812', 'Wiktor', 'Chorzowski', 'B'),
('81042082694', 'Marian', 'Bukalski', 'A'),
('81042484984', 'Wiera', 'Nowak', 'C'),
('81051948358', 'Piotr', 'Kaleta', 'D'),
('81052070973', 'Ryszard', 'Baranowski', 'C'),
('81052178350', 'Morus', 'Jasiak', 'A'),
('81052595917', 'Stefan', 'Bajer', 'D'),
('81052879152', 'Marek', 'Bednarski', 'D'),
('81053057256', 'Marek', 'Chorzowski', 'A'),
('81060856477', 'Tomasz', 'Boruta', 'A'),
('81062825727', 'Dioniza', 'Michalska', 'D'),
('81062879177', 'Krzysztof', 'Figurski', 'D'),
('81082360455', 'Jerzy', 'Malbolrski', 'A'),
('81083096052', 'Kamil', 'Wanik', 'D'),
('82010271881', 'Ewa', 'Aderek', 'B'),
('82010785395', 'Andrzej', 'Augustowski', 'C'),
('82012583199', 'Tadeusz', 'Sadza', 'A'),
('82021370252', 'Julian', 'Lisowski', 'A'),
('82021883604', 'Ewelia', 'Augustowska', 'B'),
('82022276939', 'Jan', 'Inny', 'B'),
('82030752968', 'Wiktoria', 'Wilk', 'B'),
('82030808843', 'Anna', 'Babiarz', 'C'),
('82032296660', 'Edwina', 'Tarnowska', 'D'),
('82032346679', 'Protazy', 'Warszawski', 'B'),
('82041301001', 'Ewa', 'Augustowska', 'B'),
('82041369274', 'Kamil', 'Ludziejewsk', 'A'),
('82043181962', 'Paulina', 'Szklarska', 'B'),
('82050929658', 'Les³aw', 'Kupis', 'C'),
('82050934731', 'Jerzy', 'Polanicki', 'C'),
('82051382908', 'Laura', 'Chmielewska', 'B'),
('82052457375', 'Bonifacy', 'Pleszewski', 'D'),
('82061173187', 'Maria', 'Opolska', 'C'),
('82063139769', 'Karolina', 'Karpacki', 'D'),
('82070874097', 'Roman', 'Grodecki', 'D'),
('82071595672', 'Jan', 'Gatek', 'D'),
('82071694142', 'Katarzyna', 'Galazka', 'C'),
('82072964907', 'Agnieszka', 'Antos', 'A');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `wypadki`
--

DROP TABLE IF EXISTS `wypadki`;
CREATE TABLE IF NOT EXISTS `wypadki` (
  `ID` int(10) unsigned NOT NULL,
  `DATA` date NOT NULL,
  `REJESTRACJA` varchar(10) NOT NULL,
  `STRATA` decimal(7,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `wypadki`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
