SELECT * FROM `pokoje` WHERE `cena_za_dobe` > 150 ORDER BY `cena_za_dobe`;
SELECT * FROM `rezerwacje` WHERE `nazwisko` = "Paluszkiewicz" OR `nazwisko` = "Prokurent";
SELECT `numer` FROM `pokoje` WHERE `kolor` = "NIEBIESKI" OR `kolor` = "ZIELONY";
SELECT DISTINCT `kolor`,`liczba_osob` FROM `pokoje`;
SELECT * FROM `rezerwacje` ORDER BY `od_dnia` DESC;
SELECT * FROM `rezerwacje` WHERE `liczba_dni` > 3 ORDER BY `liczba_dni` LIMIT 3;
SELECT `numer` AS "nr", `liczba_osob` AS "liczba miejsc", `kolor` AS "pomalowany na" FROM `pokoje`;
SELECT `nazwisko` AS "Rezerwujący", `liczba_dni` AS "Czas rezerwacji" FROM `rezerwacje` ORDER BY `liczba_dni`;
SELECT * FROM `rezerwacje` WHERE `pokoj` >= 10 AND `pokoj` <= 13;
SELECT * FROM `rezerwacje` WHERE `pokoj` IN (1,2,3,12,13) ORDER BY `pokoj`, `liczba_dni`;