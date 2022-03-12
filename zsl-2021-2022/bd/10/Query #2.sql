LOAD DATA INFILE 'towary.csv' 
INTO TABLE `towary` 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES;

LOAD DATA INFILE 'klienci.csv'
INTO TABLE `klienci` 
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(idkienta, nazwisko, imie, miasto, liczbaodwiedzinsklepu, @datarejestracji, kwotazakopow, plec)
set datarejestracji = DATE_FORMAT(@datarejestracji, '%Y.%m.%d');