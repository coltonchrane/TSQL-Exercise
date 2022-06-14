CREATE DATABASE JoesBar
GO
USE JoesBar
CREATE TABLE Customer /* Builds tables for database*/
(
CustID int NOT NULL IDENTITY(100,1) PRIMARY KEY,
FName varchar(25)NOT NULL,
LName varchar(25)NOT NULL,
Phone char(15) NOT NULL,
Email varchar(25) NOT NULL,
Address varchar(30),
City varchar(30),
State char(2) DEFAULT 'TX' ,
Zip char(5)
)
CREATE TABLE Order
(
OrderID int NOT NULL IDENTITY(100,1) PRIMARY KEY,
OrderDate date NOT NULL,
CustID int NOT NULL IDENTITY (100,1)
)
CREATE TABLE OrderDetail
(
OrderID int NOT NULL IDENTITY(100,1) PRIMARY KEY,
ProdID int NOT NULL,
Qty int NOT NULL,
Price money NOT NULL
)
CREATE TABLE Product
(
ProdID int NOT NULL PRIMARY KEY,
Description varchar(100) NOT NULL,
Retail money NOT NULL,
UnitsInStock int NOT NULL,
SupplierID int NOT NULL
)
CREATE TABLE ProductSupplier
(
ProdId int NOT NULL,
SupplierID int NOT NULL
)
CREATE TABLE Supplier
(
SupplierID int NOT NULL PRIMARY KEY,
SupName varchar(50) NOT NULL,
SupContact varchar(50) NOT NULL,
SupEmail varchar(50) NOT NULL,
SupPhone char(15) NOT NULL,
SupAddress varchar(100) NOT NULL,
SupCity varchar(25) NOT NULL,
SupState char(2) NOT NULL DEFAULT 'TX',
SupZip int NOT NULL
)
ALTER TABLE ProductSupplierm /* builds foreign key*/
 ADD CONSTRAINT FK_ProdSupp_ProdID
FOREIGN KEY (ProdId) REFERENCES Product(ProdID)
ALTER TABLE ProductSupplier
 ADD CONSTRAINT FK_ProdSupp_SuppID
FOREIGN KEY (SupllierID) REFERENCES Supplier(SupplierID);