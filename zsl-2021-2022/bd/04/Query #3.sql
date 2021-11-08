INSERT INTO `item`
VALUES (12,'Wieczne pióro');
UPDATE customer SET customerAddress = 'ul. Wolności 4, Przemyśl' WHERE customerName = 'Jankowski';
DELETE FROM orderitem WHERE itemID = 3; DELETE FROM `order` WHERE orderID = 4;
UPDATE item SET itemName = 'Zarowka LEDowa' WHERE itemName = 'Zarowka LED';