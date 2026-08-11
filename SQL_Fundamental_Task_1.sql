CREATE DATABASE SQL_Fundamentals;

USE SQL_Fundamentals;

CREATE TABLE products (
productCode VARCHAR(50) PRIMARY KEY,
productName VARCHAR(100) NOT NULL,
productLine VARCHAR(50) NOT NULL,
productScale VARCHAR(50) NOT NULL,
productVendor VARCHAR(50) NOT NULL,
productDescription VARCHAR(500) NOT NULL,
quantityInStock INT,
buyPrice DECIMAL(10,2),
MSRP DECIMAL(10,2)
);
  
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
VALUES
('P001', '1969 Ford Mustang', 'Classic Cars', '1:18', 'AutoArt',
 'Detailed die-cast model of the iconic 1969 Ford Mustang.', 120, 4500, 6500),

('P002', 'Harley Davidson Fat Boy', 'Motorcycles', '1:12', 'Maisto',
 'Highly detailed Harley Davidson Fat Boy motorcycle model.', 85, 3200, 4800),

('P003', 'Boeing 747 Passenger Jet', 'Planes', '1:200', 'GeminiJets',
 'Scale model of the Boeing 747 commercial aircraft.', 60, 5500, 7800),

('P004', 'Titanic Cruise Ship', 'Ships', '1:700', 'Revell',
 'Replica of the RMS Titanic with realistic detailing.', 40, 2800, 4200),

('P005', 'Union Pacific Steam Locomotive', 'Trains', '1:87', 'Bachmann',
 'Classic steam locomotive model with authentic paint.', 75, 3900, 5600),

('P006', 'Volvo FH16 Truck', 'Trucks and Buses', '1:24', 'Tamiya',
 'Heavy-duty Volvo FH16 truck model with premium finish.', 55, 5100, 7300),

('P007', '1928 Mercedes-Benz SSK', 'Vintage Cars', '1:18', 'Minichamps',
 'Collectible model of the legendary Mercedes-Benz SSK.', 35, 6200, 8900),

('P008', 'CAT 320 Excavator', 'Construction Vehicles', '1:50', 'Diecast Masters',
 'Realistic Caterpillar 320 hydraulic excavator model.', 90, 3400, 5100),

('P009', 'Fire Rescue Engine', 'Emergency Vehicles', '1:32', 'NewRay',
 'Detailed fire rescue truck with working ladder features.', 70, 2900, 4300),

('P010', 'Tesla Model S Plaid', 'Electric Vehicles', '1:18', 'Bburago',
 'Premium die-cast model of the Tesla Model S Plaid.', 110, 4700, 6900);
 
CREATE TABLE orderdetails (
orderNumber INT PRIMARY KEY,
productCode VARCHAR(50) NOT NULL,
quantityOrdered INT NOT NULL,
priceEach INT NOT NULL,
orderLineNumber INT NOT NULL,
FOREIGN KEY (productCode) 
REFERENCES products(productCode)
);

INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES 
(1001, 'P001', 5, 6500, 1),
(1002, 'P002', 3, 4800, 1),
(1003, 'P003', 2, 7800, 1),
(1004, 'P004', 4, 4200, 1),
(1005, 'P005', 6, 5600, 1),
(1006, 'P006', 2, 7300, 1),
(1007, 'P007', 1, 8900, 1),
(1008, 'P008', 7, 5100, 1),
(1009, 'P009', 3, 4300, 1),
(1010, 'P010', 5, 6900, 1);

SELECT * FROM products;
SELECT * FROM orderdetails;

ALTER TABLE products
MODIFY productDescription VARCHAR(600) NOT NULL;
DESC products;

TRUNCATE orderdetails;
SELECT * FROM orderdetails;

DROP TABLE orderdetails;
SELECT * FROM orderdetails;
