-- CS3810: Principles of Database Systems
-- Instructor: Thyago Mota
-- Description: The employees database

-- TODO: create database employees
CREATE DATABASE employees;

-- TODO: create table departments
CREATE TABLE Departments (
    code    SERIAL PRIMARY KEY,
    desc    VARCHAR(50)
);

-- TODO: populate table departments
INSERT INTO Departments VALUES
    ('HR', Human Resources),
    ('IT', 'Information Technology'), 
    ('SL', 'Sales');


-- TODO: create table employees
CREATE TABLE Employees (
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(50) NOT NULL,
    sal     DECIMAL()
);


-- TODO: populate table Employees
INSERT INTO Employees (name, sal, deptCode) VALUES
('Sam Mai Tai', 50000, 'HR');

INSERT INTO Employees (name, sal, deptCode) VALUES
('James Brandy', 55000, 'HR'),
('Whisky Strauss', 60000, 'HR'),


INSERT INTO Employees (name, sal, deptCode) VALUES
('Debby Derby', 85000, 'SL');

INSERT INTO Employees (name, sal, deptCode) VALUES 
('Morbid Mojito', 150000, 'NULL');

-- TODO: a) list all rows in Departments.


-- TODO: b) list only the codes in Departments.
SELECT code FROM Departments;

-- TODO: c) list all rows in Employees.
SELECT * FROM Employees;

-- TODO: d) list only the names in Employees in alphabetical order.
SELECT name FROM Employees ORDER BY 1;

-- TODO: e) list only the names and salaries in Employees, from the highest to the lowest salary.
SELECT name, sal FROM Employees ORDER BY 2 DESC;

-- TODO: f) list the cartesian product of Employees and Departments.
SELECT id, deptCode, code FROM Employees AND deptCode FROM Departments ORDER BY id, deptCode, code;

-- TODO: g) do the natural join of Employees and Departments; the result should be exactly the same as the cartesian product; do you know why?
SELECT id, code, code FROM Employees
NATURAL JOIN Departments
ORDER BY id, code;

-- TODO: i) do an equi join of Employees and Departments matching the rows by Employees.deptCode and Departments.code (hint: use JOIN and the ON clause).
SELECT * FROM Employees, Departments
WHERE Employees.deptCode = Departments.code;
or
WHERE deptCode = code; 
or 
SELECT * FROM Employees A, Departments B
WHERE A.deptCode = B.code;

-- TODO: j) same as previous query but project name and salary of the employees plus the description of their departments.

-- TODO: k) same as previous query but only the employees that earn less than 60000.

-- TODO: l) same as query ‘i’  but only the employees that earn more than ‘Jose Caipirinha’.

-- TODO: m) list the left outer join of Employees and Departments (use the ON clause to match by department code); how does the result of this query differs from query ‘i’?

-- TODO: n) from query ‘m’, how would you do the left anti-join?

-- TODO: o) show the number of employees per department.

-- TODO: p) same as query ‘o’ but I want to see the description of each department (not just their codes).

-- TODO: full outer join of employees and departments.
SELECT * FROM Employees A
FULL JOIN Departments B 
ON A.deptCode = B.code;