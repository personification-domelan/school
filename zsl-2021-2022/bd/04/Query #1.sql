CREATE DATABASE FIRMA;
USE FIRMA;
CREATE TABLE Customer (
	customerID INT PRIMARY KEY,
	customerName VARCHAR(50) NOT NULL,
	customerAddress VARCHAR(100)
	);
CREATE TABLE `Order` (
	orderID INT PRIMARY KEY,
	orderDate DATE NOT NULL,
	customerID INT NOT NULL,
	FOREIGN KEY (customerID) REFERENCES Customer(customerID)
	);
CREATE TABLE OrderItem (
	orderID INT,
	itemID INT,
	itemQuantity VARCHAR(100) CHECK(itemQuantity >= 1 AND itemQuantity < 100),
	PRIMARY KEY (orderID, itemID)
	);
CREATE TABLE Item (
	itemID INT PRIMARY KEY,
	itemName VARCHAR(100) UNIQUE
	);