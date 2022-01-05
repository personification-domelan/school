ALTER TABLE `order` ADD orderStatus ENUM('zlozone','w realizacji','zrealizowane','odwolane');
UPDATE `order` SET orderStatus = 'zrealizowane' WHERE orderDate < '2020-12-01';
UPDATE `order` SET orderStatus = 'w realizacji' WHERE orderDate > '2020-12-01';firma