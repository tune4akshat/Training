create database company1;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Salary INT NOT NULL CHECK (Salary > 0),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Marketing'),
(2, 'Sales'),
(3, 'IT'),
(4, 'Finance'),
(5, 'HR');


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', 60000, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
(3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
(4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
(5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
(6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3),
(7, 'Robert', 'Miller', 'robert.miller@company.com', 70000, 4),
(8, 'Jessica', 'Wilson', 'jessica.wilson@company.com', 65000, 4),
(9, 'Daniel', 'Anderson', 'daniel.anderson@company.com', 72000, 3),
(10, 'Ashley', 'Taylor', 'ashley.taylor@company.com', 58000, 2),
(11, 'William', 'Brown', 'william.brown@company.com', 78000, 1),
(12, 'Sophia', 'Davis', 'sophia.davis@company.com', 62000, 5);




-- Insert a new employee with a DepartmentID that does not exist in the Departments table and observe the foreign key constraint violation.--

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(13, 'Test', 'Employee', 'test.employee@company.com', 60000, 6);

-- Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation.
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID) VALUES
(14, 'Duplicate', 'Email', 'jane.smith@company.com', 70000, 2);


-- Delete a department from the Departments table that is being referenced by the Employees table and observe the foreign key constraint violation.
DELETE FROM Departments WHERE DepartmentID = 5;

-- Update the DepartmentID of an existing employee to a value that does not exist in the Departments table and observe the foreign key constraint violation.

UPDATE Employees SET DepartmentID = 10 WHERE EmployeeID = 1;



