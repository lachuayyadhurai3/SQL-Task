CREATE DATABASE SQL_Data_Manipulation;

USE SQL_Data_Manipulation;

CREATE TABLE customer (
customerNumber INT PRIMARY KEY NOT NULL,
customerName VARCHAR(50) NOT NULL,
contactLastName VARCHAR(50),
contactFirstName VARCHAR(50),
phone VARCHAR(15) UNIQUE,
addressLine1 VARCHAR(200) NOT NULL,
addressLine2 VARCHAR(200),
city VARCHAR(25),
state VARCHAR(30),
postalCode VARCHAR(6),
country VARCHAR(35) DEFAULT 'India',
salesRepEmployeeNumber INT NOT NULL,
creditLimit INT NOT NULL
);


INSERT INTO customer (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
VALUES
(101, 'ABC Technologies', 'Sharma', 'Rahul', '9876543210', '12 MG Road', 'Suite 101', 'Bengaluru', 'Karnataka', '560001', 'India', 1002, 500000),

(102, 'Global Traders', 'Patel', 'Neha', '9876543211', '45 Ring Road', 'Floor 2', 'Ahmedabad', 'Gujarat', '380015', 'India', 1003, 300000),

(103, 'Sunrise Electronics', 'Reddy', 'Arjun', '9876543212', '78 Jubilee Hills', NULL, 'Hyderabad', 'Telangana', '500033', 'India', 1004, 750000),

(104, 'Prime Motors', 'Singh', 'Amit', '9876543213', '22 Connaught Place', 'Block A', 'New Delhi', 'Delhi', '110001', 'India', 1005, 450000),

(105, 'Ocean Exports', 'Nair', 'Anjali', '9876543214', '15 Marine Drive', NULL, 'Mumbai', 'Maharashtra', '400001', 'India', 1006, 600000),

(106, 'Vision Solutions', 'Kumar', 'Suresh', '9876543215', '89 Anna Salai', '3rd Floor', 'Chennai', 'Tamil Nadu', '600002', 'India', 1007, 350000),

(107, 'Elite Furnitures', 'Das', 'Priya', '9876543216', '34 Park Street', NULL, 'Kolkata', 'West Bengal', '700016', 'India', 1008, 400000),

(108, 'Green Foods', 'Joshi', 'Vikas', '9876543217', '67 FC Road', NULL, 'Pune', 'Maharashtra', '411004', 'India', 1009, 280000),

(109, 'Skyline Builders', 'Mehta', 'Kiran', '9876543218', '10 Civil Lines', 'Office 5', 'Jaipur', 'Rajasthan', '302006', 'India', 1010, 900000),

(110, 'NextGen Systems', 'Verma', 'Pooja', '9876543219', '55 Sector 18', NULL, 'Noida', 'Uttar Pradesh', '201301', 'India', 1011, 550000);

SELECT * FROM customer;

INSERT INTO customer (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
VALUES
(111, 'Red Systems', 'Lachu', 'ayyadhurai', '9989071900', 'G1 Sabari nagar', NULL, 'Chennai', 'Tamil Nadu', '600122', 'India', 1012, 650000);

UPDATE customer
SET addressLine1 = 'G1 Sabari nagar, Mangadu'
where customerNumber = 111;

DELETE from customer
where customerNumber = 110;