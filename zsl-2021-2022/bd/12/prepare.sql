create database if not exists agregat;
use agregate;
create table agregate (
    `L.P.` int,
    Klient int,
    Numer int,
    Operator varchar(50),
    Miesiac DECIMAL(2,0),
    Rok int,
    Rachunek int,
    Usluga varchar(50),
    Plec char(1)
);