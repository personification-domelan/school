UPDATE samochody SET Wiek = YEAR(CURDATE()) - Rocznik WHERE Wiek IS NULL;
CREATE TABLE SAMOCHODYNAZLOM (
    Id int unsigned PRIMARY KEY AUTO_INCREMENT,
    Marka varchar(30) NOT NULL,
    Model varchar(30) NOT NULL,
    Kolor varchar(40) NOT NULL,
    Rocznik year NOT NULL,
    Wiek tinyint(3) unsigned,
    Przebieg int unsigned,
    Rejestracja varchar(10),
    KupionyWKraju tinyint(1)
    ) CHARACTER SET latin2 COLLATE latin2_general_ci;
INSERT INTO samochodynazlom SELECT * FROM samochody WHERE Wiek > 12 || Przebieg > 200000;