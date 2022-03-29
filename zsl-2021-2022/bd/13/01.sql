select c.city from select_8.countries c right join (select c.country from select_8.countries c group by country having count(c.country) > 2) c2 on c.country = c2.country;
select p.LastName, p.Address from select_8.persons p where p.LastName like "%en";
select * from select_8.orders o order by o.P_Id desc;
select count(*) "ile", p.city from select_8.persons p group by city;