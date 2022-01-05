INSERT INTO pilkarze2 (`Rerpezentant`, `Zdobyte_bramki`, `Data_debiutu`)
SELECT CONCAT(`imie`, " ", `nazwisko`), `bramki`, `data_debiutu` FROM pilkarze
WHERE `data_debiutu` >= '1970-03-20' AND `bramki` >= 4;