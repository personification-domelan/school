SELECT * FROM `towary` WHERE `rodzaj` = "Smartfon" ORDER BY `cena` desc, `producent`;
select * from `towary` where `ilosc` > 0 order by `cena` desc limit 3; 
select COUNT(*) as "Ilość kolumn z null" from `towary` where `opis` = "null";
select max(`cena`) as `max`,min(`cena`) as `min`, `rodzaj` from `towary` group by `rodzaj` order by `cena` desc;