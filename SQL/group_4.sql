-- Active: 1731292180589@@127.0.0.1@3306
CREATE DATABASE AutomobileRepair;
USE AutomobileRepair;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    First_name VARCHAR(20),
    Last_name VARCHAR(20),
    Contact VARCHAR(15),
    Email VARCHAR(30),
    Address VARCHAR(40)
);

CREATE TABLE Vehicles (
    Vehicle_ID INT PRIMARY KEY,
    Customer_ID INT,
    No_plate VARCHAR(10),
    Brand VARCHAR(40),
    Model VARCHAR(40),
    Year YEAR,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    First_name VARCHAR(20),
    Last_name VARCHAR(20),
    Position VARCHAR(40),
    Contact VARCHAR(15),
    Salary INT,
    Hire_date DATE
);

CREATE TABLE Services (
    Service_ID INT PRIMARY KEY,
    Vehicle_ID INT,
    Employee_ID INT,
    Customer_ID INT,
    Service_type VARCHAR(40),
    Service_date DATE,
    Description LONGTEXT,
    Cost INT,
    FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Spare_parts (
    Part_ID INT PRIMARY KEY,
    Part_name VARCHAR(40),
    Quantity INT,
    Price_per_part INT,
    Total_cost INT,
    Service_ID INT,
    FOREIGN KEY (Service_ID) REFERENCES Services(Service_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Invoices (
    Invoice_ID INT PRIMARY KEY,
    Service_ID INT,
    Total_amount INT,
    Payment_date DATE,
    Payment_method VARCHAR(45),
    FOREIGN KEY (Service_ID) REFERENCES Services(Service_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Customers (Customer_ID, First_name, Last_name, Contact, Email, Address) VALUES
(1, 'John', 'Opio', '073456789', 'john@gmail.com', '123 Entebe Street'),
(2, 'Abraham', 'Emeka', '087654321', 'Emeka@gmail.com', '456 Ikeja Avenue'),
(3, 'Michael', 'Richard', '085123456', 'richkid@gmail.com', '01 Maple Road'),
(4, 'Emily', 'Kasozi', '077987654', 'emily@gmailcom', '321 KFC Lane'),
(5, 'David', 'Kanayo', '076555777', 'd09k@gmail.com', '654 Kampala street');

INSERT INTO Vehicles (Vehicle_ID, Customer_ID, No_plate, Brand, Model, Year) VALUES
(1, 1, 'AC173', 'Toyota', 'Corolla', 2018),
(2, 2, 'DY436', 'Honda', 'Civic', 2020),
(3, 3, 'GI789', 'Ford', 'Focus', 2019),
(4, 4, 'GK012', 'Chevrolet', 'Camero', 2017),
(5, 5, 'MO345', 'Nissan', 'Sentra', 2021);

INSERT INTO Employees (Employee_ID, First_name, Last_name, Position, Contact, Salary, Hire_date) VALUES
(1, 'Linus', 'Williams', 'Technician', '555987123', 1900000, '2020-06-15'),
(2, 'Robert', 'Nabulime', 'Technician', '555654987', 1300000, '2019-08-20'),
(3, 'Peter', 'Obi', 'Manager', '555321654', 5500000, '2018-03-25'),
(4, 'Daniel', 'Mugenyi', 'Technician', '555123789', 2500000, '2021-01-10'),
(5, 'Laura', 'James', 'Receptionist', '555789123', 1000000, '2022-09-05');


INSERT INTO Services (Service_ID, Vehicle_ID, Employee_ID, Customer_ID, Service_date, Description, Cost) VALUES
(1, 1, 1, 1, '2024-10-01', 'Oil change and filter replacement', 150000),
(2, 2, 2, 2, '2024-10-02', 'Brake pad replacement', 200000),
(3, 3, 3, 3, '2024-10-03', 'Battery replacement', 120000),
(4, 4, 4, 4, '2024-10-04', 'Tire rotation and alignment', 150000),
(5, 5, 5, 5, '2024-10-05', 'Engine tuning', 300000);


INSERT INTO Spare_parts (Part_ID, Part_name, Quantity, Price_per_part, Total_cost, Service_ID) VALUES
(1, 'Oil Filter', 1, 500000, 500000, 1),
(2, 'Brake Pad', 2, 60000, 120000, 2),
(3, 'Battery', 1, 250000, 250000, 3),
(4, 'Tire', 4, 1000000, 4000000, 4),
(5, 'Spark Plug', 4, 200000, 800000, 5);


INSERT INTO Invoices (Invoice_ID, Service_ID, Total_amount, Payment_date, Payment_method) VALUES
(1, 1, 650000, '2024-10-06', 'Credit Card'),
(2, 2, 320000, '2024-10-07', 'Cash'),
(3, 3, 370000, '2024-10-08', 'Credit Card'),
(4, 4, 4150000, '2024-10-09', 'Mobile Payment'),
(5, 5, 1100000, '2024-10-10', 'Cash');

SELECT * FROM invoices WHERE Payment_method = 'Cash';

