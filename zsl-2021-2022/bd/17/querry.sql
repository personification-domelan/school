-- 1
select o.miejscowosc, count(*) from dane_wypadkow.osoby o inner join dane_wypadkow.auta a on a.pesel_wlasciciela = o.pesel inner join dane_wypadkow.wypadki w on w.rejestracja = a.rejestracja group by o.miejscowosc;
-- 2
select miejscowosc, count(*) from dane_wypadkow.osoby o where miejscowosc != 'd' group by miejscowosc order by count(*) desc;
-- 3
select marka, count(*) from dane_wypadkow.auta a group by marka having count(*) > 1;
-- 4
select a.rejestracja, a.marka from dane_wypadkow.auta a inner join dane_wypadkow.osoby o on a.pesel_wlasciciela = o.pesel where o.nazwisko like 'b%' or 'c%';
-- 5
select * from dane_wypadkow.auta a inner join dane_wypadkow.osoby o on a.pesel_wlasciciela = o.pesel;
select * from dane_wypadkow.auta a left join dane_wypadkow.osoby o on a.pesel_wlasciciela = o.pesel union all select * from dane_wypadkow.auta a right join dane_wypadkow.osoby o on a.pesel_wlasciciela = o.pesel; 
select * from dane_wypadkow.auta a left join dane_wypadkow.osoby o on a.pesel_wlasciciela = o.pesel;
-- 6
select count(distinct pesel) from dane_wypadkow.osoby o inner join dane_wypadkow.auta a on o.pesel = a.pesel_wlasciciela inner join dane_wypadkow.wypadki w on a.rejestracja = w.rejestracja;
-- 7
select max(strata), min(strata), avg(strata) from dane_wypadkow.wypadki;
-- 8
select a.rejestracja, o.imie, o.nazwisko from dane_wypadkow.wypadki w inner join dane_wypadkow.auta a on w.rejestracja = a.rejestracja inner join dane_wypadkow.osoby o on a.pesel_wlasciciela = o.pesel order by w.strata desc limit 1;
-- 9
select '2006' as rok, sum(strata) from dane_wypadkow.wypadki w where year(w.data) = 2006 union all select '2007' as rok, sum(strata) from dane_wypadkow.wypadki w where year(w.data) = 2007;
-- 10
select a.marka, count(*) from dane_wypadkow.auta a inner join dane_wypadkow.wypadki w on a.rejestracja = w.rejestracja group by a.marka order by count(*) desc;