use pliki;
LOAD DATA LOCAL INFILE './PENDRIVE.csv' INTO TABLE pendrive
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
LOAD DATA LOCAL INFILE './SOURCE1.csv' INTO TABLE SOURCE1
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
LOAD DATA LOCAL INFILE './SOURCE2.csv' INTO TABLE SOURCE2
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;