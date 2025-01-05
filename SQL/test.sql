use hello;
DROP  DATABASE hello;

create DATABASE hello;

show DATABASES;

use hello;

CREATE TABLE Dept (
    DID INT PRIMARY KEY, DNAME VARCHAR(50)
);

CREATE TABLE Employee (
    EmpNo VARCHAR(5) PRIMARY KEY,
    Ename VARCHAR(50),
    Job VARCHAR(50),
    Salary INT,
    DID INT,
    FOREIGN KEY (DID) REFERENCES Dept(DID)
);

INSERT INTO Employee (EmpNo, Ename, Job, Salary, DID)
VALUES
    ('E001', 'Tom', 'Clerk', 40000, 20),
    ('E002', 'Agaba', 'Manager', 16000, 30),
    ('E003', 'null', 'null', 40000, 20),
    ('E004', 'Timo', 'Clerk', 20000, 30),
    ('E005', 'Simon', 'Manager', 20000, 40);


CREATE VIEW view_dd as SELECT * FROM Employee WHERE DID = 30;

CREATE VIEW view_e AS SELECT Job, AVG(Salary) FROM Employee GROUP BY Job;

CREATE VIEW view_f AS SELECT * FROM Employee WHERE Ename ='T%';

CREATE VIEW view_g AS SELECT Job FROM Employee ORDER BY Job DESC;


CREATE VIEW view_h AS SELECT Job, SUM(Salary) FROM Employee GROUP BY Job;

ALTER TABLE Dept MODIFY DNAME VARCHAR(50);


ALTER TABLE Dept ADD Location VARCHAR(40);

desc employee;

ALTER TABLE Employee
DROP PRIMARY KEY;

ALTER TABLE Employee
ADD PRIMARY KEY (EmpNo)