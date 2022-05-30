create database if not exists `baza`;
use `baza`;

create table `product` (
    marker varchar(10) not null,
    model varchar(50) not null,
    `type` varchar(50) not null,
    primary key (model)
);

create table `laptop` (
    code int not null,
    model varchar(50) not null,
    speed smallint not null,
    ram smallint not null,
    hd real not null,
    price decimal(20,2),
    screen tinyint not null,
    primary key (code),
    foreign key (model) references `product`(model)
);

create table `pc` (
    code int not null,
    model varchar(50) not null,
    speed smallint not null,
    ram smallint not null,
    hd real not null,
    cd varchar(10) not null,
    price decimal(20,2),
    primary key (code),
    foreign key (model) references `product`(model)
);

create table `printer` (
    code int not null,
    model varchar(50) not null,
    color char(1) not null,
    `type` varchar(10) not null,
    price decimal(20,2),
    primary key (code),
    foreign key (model) references `product`(model)
);

INSERT INTO Laptop (code, model, speed, ram, hd, price, screen ) VALUES 
(1, "TOS1", 500, 128, 5, NULL, 13),
(2, "TOS2", 750, 256, 10, 800.0, 13),
(3, "TOS3", 300, 256, 3, 900.0, 14),
(4, "LEN1L", 200, 64, 15, 700.0, 12),
(5, "LEN2L", 800, 64, 5, 500.0, 15),
(6, "HP1L", 800, 128, 8, 1000.0, 17),
(7, "HP2L", 500, 64, 10, 800.0, 13),
(8, "SAM1L",  600, 196, 10, 700.0, 12),
(9, "SAM2L", 600, 128, 8, 500.0, 15),
(10, "AS1L", 400, 128, 8, 600.0, 15),
(11, "AS2L", 200, 64, 5, 300.0, 12);

INSERT INTO PC (price, speed, hd, ram, cd, model, code) VALUES
(600.0,	500,	5,	64,	"12x",	"HP1",1),
(850.0,	750,	14,	128,"40x",	"HP2",2),
(600.0,	500,	5,	64,	"12x",	"HP3",3),
(850.0,	600,	14,	128,"40x",	"IBM1",4),
(NULL, 	600,	8,	128,"40x",	"IBM2",5),
(950.0, 750,	20,	128,"50x",	"IBM3",6),
(400.0,	500,	10,	32,	"12x",	"SAM1",7),
(350.0,	450,	8,	64,	"24x",	"SAM2",8),
(350.0,	450,	10,	32,	"24x",	"COM1",9),
(350.0,	500,	10,	32,	"12x",	"COM2",10),
(980.0,	900,	40,	128,"40x",	"LEN1",11);

INSERT INTO Printer (code, model, color, type, price) VALUES
(1, "HPP1", 'N', "Laser", 700.0),
(2, "HPP2", 'Y', "Jet", 950.0),
(3, "HPP3", 'Y', "Jet", 450.0),
(4, "CAN1", 'Y', "Laser", 900.0),
(5, "CAN2", 'N', "Laser", 500.0),
(6, "CAN3", 'Y', "Jet", 300.0),
(7, "FU1", 'N', "Matrix", 150.0),
(8, "FU2", 'N', "Jet", 300.0),
(9, "FU3", 'Y', "Laser", 700.0),
(10,"SAM1P", 'N', "Matrix", 100.0);