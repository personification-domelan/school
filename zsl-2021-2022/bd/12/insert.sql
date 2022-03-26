load data infile "Agregacja.csv" 
into table agregate
FIELDS TERMINATED BY ',' 
ENCLOSED BY ''
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;