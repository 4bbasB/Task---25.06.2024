CREATE DATABASE DepartmentDb

USE DepartmentDb

CREATE TABLE Departments
(
Id INT NOT NULL UNIQUE IDENTITY(1,1),
Name VARCHAR(150) NOT NULL,
MaxEmployeeCount INT CHECK (MaxEmployeeCount >= 10 and MaxEmployeeCount <= 50)
)

CREATE TABLE Positions
(
Id INT NOT NULL UNIQUE IDENTITY(1,1),
Name VARCHAR(50) NOT NULL
)

CREATE TABLE Employees
(
Id INT NOT NULL UNIQUE IDENTITY(1,1),
Name VARCHAR(60) DEFAULT 'Employee Name',
Surname VARCHAR(70) DEFAULT 'Employee Surname',
Salary DECIMAL(18,2) CHECK (Salary >= 500 and Salary <= 12000)
)


INSERT INTO Departments(Name, MaxEmployeeCount)
VALUES
('Fehle', 45),
('Usta', 10)

SELECT * FROM Departments


INSERT INTO Positions(Name)
VALUES
('Fehle'),
('Usta')

SELECT * FROM Positions


INSERT INTO Employees(Name, Surname, Salary)
VALUES
('Abbas', 'Bayramli', 1000),
('Bilal', 'Bayramov', 2000)

SELECT * FROM Employees