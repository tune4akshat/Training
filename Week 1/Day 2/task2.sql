create database company2;

create table Employees(
EmployeeID int auto_increment primary key,
FirstName varchar(50) not null,
LastName varchar(50) not null,
Email varchar(100) not null unique,
Salary int not null check (Salary > 0),
departmentID int,
foreign key (DepartmentID) references Departments(DepartmentID)
);


create table Departments(
DepartmentID int primary key,
DepartmentName varchar(50) not null
);

create table Projects(
ProjectID int primary key,
ProjectName varchar(100) not null,
DepartmentId int ,
foreign key (DepartmentID) references Departments(DepartmentID)
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Engineering');

INSERT INTO Employees ( FirstName, LastName, Email, Salary, DepartmentID) VALUES
('John', 'Doe', 'john.doe@company.com', 60000, 1),
('Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
('Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
('Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
('David', 'Brown', 'david.brown@company.com', 65000, 2),
('Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(14, 'Duplicate', 'Email', 'jane.smith@company.com', 70000, 2);
INSERT INTO Employees (FirstName, LastName, Email, Salary, DepartmentID) VALUES
('Brian', 'Harris', 'john.doe@company.com', 70000, 1);
DELETE FROM Departments WHERE DepartmentID = 1;
UPDATE Employees SET DepartmentID = 5 WHERE EmployeeID = 1;

UPDATE Employees SET DepartmentID = 10 WHERE EmployeeID = 1;