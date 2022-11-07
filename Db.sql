CREATE TABLE if not exists user (
    Id INTEGER Primary Key Not Null,
    FirstName VARCHAR(80) Not Null,
    LastName VARCHAR(80) Not Null,
    Password VARCHAR(50) Not Null,
    Email VARCHAR(50) Not Null,
    Gender VARCHAR(10),
    Age INTEGER
);



CREATE TABLE if not exists Product (
Id INTEGER PRIMARY KEY NOT NULL,
Name VARCHAR(50) NOT NULL,
Price INTEGER NOT NULL,
Desciption VARCHAR(50),
image VARCHAR(50)
);


CREATE TABLE if not exists Cart (
    Id INTEGER Primary Key Not Null,
    Quantity INTEGER ,
    id_user INTEGER,
    id_article INTEGER,
    Total INTEGER,
    FOREIGN KEY (id_user) REFERENCES User(Id),
    FOREIGN KEY (id_article) REFERENCES Product(Id)
);


CREATE TABLE if not exists Address (
Id INT PRIMARY KEY NOT NULL,
Street VARCHAR(80)  NOT NULL, 
NumberStreet INTEGER,
City VARCHAR(20),
Country VARCHAR(30),
Floor INTEGER
);

CREATE TABLE if not EXISTS invoices (
id int PRIMARY Key not null,
CustomerId int ,
InvoiceDate VARCHAR(50),
BillingAddress VARCHAR(50),
BillingState VARCHAR(50),
BillingCountry VARCHAR(50),
BillingPostalCode VARCHAR(50),
Total int ,
FOREIGN KEY (CustomerId) REFERENCES USER(Id)
);

CREATE TABLE if not EXISTS Command(
id int PRIMARY Key NOT NULL,
Date TIME,
Montant int,
address VARCHAR(100),
Total int,
Delivery TIME
);



