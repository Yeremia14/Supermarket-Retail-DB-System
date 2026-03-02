USE MASTER
GO
DROP DATABASE Supermarket
GO
CREATE DATABASE Supermarket
GO
USE Supermarket
GO
-- Schema Creation
--CREATE
CREATE TABLE Customer (
CustomerId  CHAR (5) PRIMARY KEY CHECK (CustomerId LIKE 'CU[0-9][0-9][0-9]'),
CustomerName  VARCHAR (50) NOT NULL,
CustomerEmail VARCHAR (50) NOT NULL,
);

CREATE TABLE Staff (
StaffID CHAR (5) PRIMARY KEY CHECK (StaffID LIKE 'ST[0-9][0-9][0-9]'),
StaffName VARCHAR (50) NOT NULL,
StaffGender VARCHAR (50) NOT NULL,
CONSTRAINT ValidateGender CHECK (StaffGender IN ('Male','Female'))
);



CREATE TABLE ProductType(
ProductTypeID CHAR(5) PRIMARY KEY CHECK(ProductTypeID LIKE 'PT[0-9][0-9][0-9]') NOT NULL,
ProductTypeName VARCHAR(50) NOT NULL
);

CREATE TABLE Product (
  ProductID CHAR(5) PRIMARY KEY CHECK (ProductID LIKE 'PR[0-9][0-9][0-9]') NOT NULL,
  ProductTypeID CHAR(5) FOREIGN KEY (ProductTypeID) REFERENCES ProductType(ProductTypeID) NOT NULL ,
  ProductName VARCHAR(50) NOT NULL,
  ProductPrice INT NOT NULL CHECK (ProductPrice >= 0),
);

CREATE TABLE TransactionHeader (
	TransactionID CHAR (5) PRIMARY KEY CHECK (TransactionID LIKE 'TR[0-9][0-9][0-9]') NOT NULL,
	StaffID CHAR (5) NOT NULL ,
	CustomerID CHAR (5)NOT NULL, 
	TransactionDate DATE NOT NULL,
	FOREIGN KEY (StaffID) REFERENCES Staff(StaffID) ,
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) 
	);

CREATE TABLE TransactionDetail (
TransactionID CHAR(5) FOREIGN KEY REFERENCES TransactionHeader(TransactionID) NOT NULL,
ProductID CHAR(5) FOREIGN KEY REFERENCES Product(ProductID) NOT NULL,
Quantity INT NOT NULL
PRIMARY KEY(TransactionID, ProductID)
);



