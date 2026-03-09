-- Activity 4: Customers table

CREATE OR REPLACE TABLE Customers (
    CustomerID int NOT NULL AUTO_INCREMENT,
    CustomerName varchar(50),
    AddressLine1 varchar(50),
    AddressLine2 varchar(50),
    City varchar(50),
    State varchar(50),
    PostalCode varchar(50),
    YTDPurchases decimal(19,2),
    PRIMARY KEY (CustomerID)
);

SHOW TABLES;
DESCRIBE Customers;

INSERT INTO Customers (CustomerName, AddressLine1, City, State, PostalCode)
VALUES
('Bike World', '60025 Bollinger Canyon Road', 'San Ramon', 'California', '94583'),
('Metro Sports', '482505 Warm Springs Blvd.', 'Fremont', 'California', '94536'),
('My Customer', '123 Main Street', 'Corvallis', 'Oregon', '97330');

SELECT * FROM Customers;

SELECT CustomerID, CustomerName
FROM Customers
WHERE PostalCode = '94536';