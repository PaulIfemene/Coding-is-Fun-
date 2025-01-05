-- Active: 1728116178495@@127.0.0.1@3306@pau
use paul;
CREATE TABLE students (
    student_id INT(50) PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE,
    enrollment_date DATE
);
select * from students;



