USE farmakol;
ALTER TABLE lekarstwa 
	DROP PRIMARY KEY,
   DROP COLUMN choroba,
   ADD COLUMN idleku INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
   MODIFY COLUMN nazwamiedzynarodowa VARCHAR(30),
   RENAME TO leki,
   ADD COLUMN refundacja TINYINT UNSIGNED DEFAULT '0',
   MODIFY COLUMN producent VARCHAR(25),
   ADD COLUMN jednostkachorobowa INT,
	ADD FOREIGN KEY (jednostkachorobowa) REFERENCES icd10(id);
ALTER TABLE leki
	ORDER BY idleku, producent, nazwamiedzynarodowa, nazwapreparatu, refundacja, jednostkachorobowa;