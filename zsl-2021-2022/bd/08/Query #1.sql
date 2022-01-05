CREATE DATABASE Reprezentacja DEFAULT CHARACTER SET latin2 COLLATE latin2_general_ci;
USE reprezentacja;
CREATE TABLE Pilkarze (
    id int unsigned auto_increment,
    imie varchar(30) not null,
    nazwisko varchar(50) not null,
    data_urodz date,
    data_smierci date,
    mecze tinyint unsigned,
    bramki tinyint,
    data_debiutu date,
    mecz_debiutu varchar(30),
    minuta_debiutu tinyint unsigned,
    primary key(id)
);