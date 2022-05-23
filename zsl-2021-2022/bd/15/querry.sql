-- a
select l.id_l, o1.oprocentowanie, o1.dlugosc from select9.lokaty l inner join select9.oferta1 o1 on l.oferta = o1.id_o union select l.id_l, o2.oprocentowanie, o2.dlugosc from select9.lokaty l inner join select9.oferta2 o2 on l.oferta = o2.id_o;
-- b
select * from select9.oferta1 union all select * from select9.oferta2;
-- d
select k.id_k, l.id_l from select9.klienci k left outer join select9.lokaty l on k.id_k = l.id_k;
-- c
select l.id_l, o1.bank, o1.oprocentowanie, o1.dlugosc from select9.lokaty l inner join select9.oferta1 o1 on l.oferta = o1.id_o;
-- e
select l.status, count(*) from select9.lokaty l group by l.status;
-- f
select nazwisko, max(sums) from (select k.nazwisko, sum(l.kwota) as sums from select9.klienci k inner join select9.lokaty l on k.id_k = l.id_k group by l.id_k order by sums desc) as sub_table;
-- g
select o2.id_o, count(*), sum(l.kwota) from select9.lokaty l inner join select9.oferta2 o2 on l.oferta = o2.id_o group by o2.id_o;
-- h
select k.nazwisko, k.imie, k.miasto, sum(l.kwota) from select9.klienci k inner join select9.lokaty l on k.id_k = l.id_k group by l.id_k having sum(l.kwota) > 50000;
-- i
select k.miasto, sum(l.kwota) from select9.klienci k inner join select9.lokaty l on k.id_k = l.id_k where k.miasto not like "k%" group by k.miasto;
-- j
select o2.bank, count(*) from select9.oferta2 o2 group by o2.bank having count(*) >= 2;
-- k
select o1.bank, o1.oprocentowanie, o1.dlugosc, o1.kwotamin, o1.kwotamax from select9.oferta1 o1 intersect select o2.bank, o2.oprocentowanie, o2.dlugosc, o2.kwotamin, o2.kwotamax from select9.oferta2 o2;
-- l
select l.id_l, o1.bank from select9.lokaty l left outer join select9.oferta1 o1 on l.oferta = o1.id_o;