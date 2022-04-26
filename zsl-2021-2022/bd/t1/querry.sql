-- gr C
use `uczelnia`;
-- zad 1
select p.id, p.imie, p.dataurodzenia from uczelnia.pracownicy p where (p.dataurodzenia like "2001-12-01" or p.dataurodzenia like "1991-10-16") or (p.imie like 'B%' or p.imie like '%a') order by p.dataurodzenia asc;
-- zad 2
select p.id, p.imie from uczelnia.pracownicy p where (p.branza = 'edukacja' or p.branza = 'handel') and (p.stanowisko = 'kierownik' or p.stanowisko = 'pracownik') order by p.id asc limit 3;
-- zad 3
select round(avg(s.placa),2) "Srednia_placa" from uczelnia.stazysci s where s.imie like '%a';
-- zad 4
select "stazysci" as "rodzaj",count(*) "liczba urodzonych w pierwszej połowie" from uczelnia.stazysci s where month(s.dataurodzenia) between 1 and 6 
union all
select "pracownicy" as "rodzaj",count(*) "liczba urodzonych w pierwszej połowie" from uczelnia.pracownicy p where month(p.dataurodzenia) between 1 and 6;
-- zad 5
select year(s.dataurodzenia) as "rok urodzenia", count(*) "liczba stazystow", sum(s.placa) "suma plac" from uczelnia.stazysci s group by year(s.dataurodzenia) order by year(s.dataurodzenia) asc;
-- zad 6
select p.branza, p.stanowisko, round(avg(p.placa),2) "srednia plac" from uczelnia.pracownicy p group by p.branza, p.stanowisko having avg(p.placa) >= 3500;
-- zad 7
select count(distinct p.branza) "liczba branz" from uczelnia.pracownicy p;
-- zad 8
(select distinct p.branza as "branza" from uczelnia.pracownicy p except select distinct s.branza as "branza" from uczelnia.stazysci s) order by "branza" desc;