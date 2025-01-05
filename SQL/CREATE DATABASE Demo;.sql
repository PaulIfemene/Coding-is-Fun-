CREATE DATABASE Demo;
USE Demo;

CREATE TABLE Dept (
    DID INT PRIMARY KEY, DNAME VARCHAR(50));
    
CREATE TABLE Employee (
    EmpNo VARCHAR(5) PRIMARY KEY,
    Ename VARCHAR(50),
    Job VARCHAR(50),
    Salary INT,
    DID INT,
    FOREIGN KEY (DID) REFERENCES Dept(DID)
);

INSERT INTO Dept (DID, DNAME)
VALUES
    (20, 'Marketing'),
    (30, 'Sales'),
    (40, 'Finance');
INSERT INTO Employee (EmpNo, Ename, Job, Salary, DID)
VALUES
    ('E001', 'Tom', 'Clerk', 40000, 20),
    ('E002', 'Agaba', 'Manager', 16000, 30),
    ('E003', 'null', 'null', 40000, 40),
    ('E004', 'Timo', 'Clerk', 20000, 30),
    ('E005', 'Simon', 'Manager', 20000, 40);

SELECT * FROM Employee;

CREATE VIEW view_d AS SELECT * FROM Employee WHERE DID = 30;

CREATE VIEW view_e AS SELECT Job, AVG(Salary) FROM Employee GROUP BY Job;

CREATE VIEW view_z AS SELECT * FROM Employee WHERE Ename LIKE 'T%';

CREATE VIEW view_g AS SELECT DISTINCT Job FROM  Employee ORDER BY Job DESC;

CREATE VIEW view_h AS SELECT Job, SUM(Salary) FROM Employee GROUP BY Job;

CREATE VIEW view_i AS SELECT Salary * 1.12 FROM Employee;

ALTER TABLE Dept ADD Location VARCHAR(40);

ALTER TABLE Dept MODIFY DNAME VARCHAR(50);

SELECT * FROM view_i;

SELECT * FROM view_h;

SELECT * FROM view_g;

SELECT * FROM view_z;

SELECT * FROM view_e;

SELECT * FROM view_d;
