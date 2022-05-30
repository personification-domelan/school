create database if not exists `KREDYTY_BD`;
use `KREDYTY_BD`;

CREATE TABLE  `KLIENCI` (
 id_klienta int primary key,
 imie  		varchar(20) not null,
 nazwisko	varchar(20) not null,
 plec		char(1),
 wiek		int
);


CREATE TABLE  `DLUZNICY` (
 id_dluznika	int primary key,
 imie  		varchar(20) not null,
 nazwisko	varchar(20) not null
);


CREATE TABLE  `FIRMY` (
    firma 		varchar(20) primary key,
	kraj		varchar(20),
	segment		char(1)
);


CREATE TABLE `POZYCZKI` (
	id_pozyczki		int primary key,
	id_klienta 		int,
	firma	   		varchar(20),
	kwota	   		int,
	okres_splaty	tinyint,
	oprocentowanie  decimal(4,2),
	foreign key (id_klienta) REFERENCES `KLIENCI`(id_klienta),
	foreign key (firma) REFERENCES `FIRMY`(firma)
);

