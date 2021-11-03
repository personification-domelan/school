USE firma;
INSERT INTO customer
VALUES (1,'Jankowski',NULL), (2,'Sobisiak','ul. Warzywna 4 Kraków'), (3,'Szulc','os. Zielone 45/1 Wrocław');
LOAD DATA INFILE 'ITEMS.csv' INTO TABLE item
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
INSERT INTO `order`
VALUES (1,'2020-11-20',2), (2,'2020-11-25',5), (3,'2020-12-04',4), (4,'2020-12-06',5);
INSERT INTO orderitem
VALUES (1,2,5),(2,6,1),(3,8,2),(4,3,2);