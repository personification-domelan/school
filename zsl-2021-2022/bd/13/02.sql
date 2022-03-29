select distinct p.LastName from select_8.persons p join select_8.orders o on o.P_Id = p.P_Id where o.OrderNo > 30000;
select count(*) "ile", c.country from select_8.persons p join select_8.countries c on c.city = p.city group by c.country;
select * from select_8.orders o cross join select_8.persons p order by p.lastname asc;
select p.firstname, p.lastname, o.orderno from select_8.orders o inner join select_8.persons p on p.p_id = o.p_id;
select p.firstname, p.lastname from select_8.persons p left  join select_8.orders o on p.p_id = o.p_id where o.o_id is null;
select o.orderno, p.firstname, p.lastname from select_8.persons p right  join select_8.orders o on p.p_id = o.p_id;
select o.orderno, p.firstname, p.lastname "lastname" from select_8.persons p left join select_8.orders o on p.p_id = o.p_id union select o.orderno, p.firstname, p.lastname "lastname" from select_8.persons p right join select_8.orders o on p.p_id = o.p_id order by lastname asc;
select p.lastname, c.country from select_8.persons p inner join select_8.countries c using (city);
select o.orderno, p.lastname, p.city, c.country from select_8.persons p inner join select_8.countries c using (city) inner join select_8.orders o using (p_id);
select * from select_8.persons p join select_8.countries c using (city);