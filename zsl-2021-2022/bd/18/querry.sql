-- 1
select * from kredyty_bd.pozyczki p where p.kwota < (select avg(p.kwota) from kredyty_bd.pozyczki p);
-- 2
select * from kredyty_bd.pozyczki p where p.okres_splaty = (select max(p.okres_splaty) from kredyty_bd.pozyczki p);
-- 3
select k.imie, k.nazwisko from kredyty_db.klienci k inner join kredyty_bd.dluznicy d on (d.imie = k.imie and d.nazwisko = k.nazwisko);
-- 4
select * from kredyty_bd.pozyczki p where p.firma like (select p.firma from kredyty_bd.pozyczki p group by p.firma order by p.kwota desc limit 1);
-- 5
select * from kredyty_bd.pozyczki p join kredyty_bd.firmy f on p.firma = f.firma where f.kraj = "Polska";
-- 6
select count(*) "Ile" from (select * from kredyty_bd.pozyczki p group by p.firma having count(*) > 4) x;
-- 7
select * from kredyty_bd.klienci k where plec = "m" and wiek < (select avg(k.wiek) from kredyty_bd.klienci k);
-- 8
select count(*) "Ile" from kredyty_bd.klienci k join kredyty_bd.pozyczki p on k.id_klienta = p.id_klienta where plec = "k" and p.kwota > 2000;
-- 9
select d.imie, d.nazwisko from kredyty_bd.dluznicy d;
-- 10
select d.imie, d.nazwisko from kredyty_bd.dluznicy d except select k.imie, k.nazwisko from kredyty_bd.klienci k;