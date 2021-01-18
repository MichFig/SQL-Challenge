-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0CKIdG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE Departments (
    Dept_Name VarChar(25)   NOT NULL,
    Dept_No Char(4)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_Name
     )
);

CREATE TABLE Dept_Emp (
    Dept_No Char(4)   NOT NULL,
    Emp_No INT   NOT NULL
);

CREATE TABLE Department_Managers (
    Dept_No Char(4)   NOT NULL,
    Emp_No INT   NOT NULL,
    CONSTRAINT pk_Department_Managers PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Employees (
    Emp_No INT   NOT NULL,
    Title_ID Char(5)   NOT NULL,
    Birth_Date Date   NOT NULL,
    First_Name VarChar(20)   NOT NULL,
    Last_Name VarChar(20)   NOT NULL,
    Gender Char(1)   NOT NULL,
    Hire_Date Date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Compensation (
    Salary INT   NOT NULL,
    Emp_No INT   NOT NULL,
    CONSTRAINT pk_Compensation PRIMARY KEY (
        Salary
     )
);

CREATE TABLE Position (
    Title_ID Char(5)   NOT NULL,
    Title VarChar(20)   NOT NULL,
    CONSTRAINT pk_Position PRIMARY KEY (
        Title_ID
     )
);

ALTER TABLE Departments ADD CONSTRAINT fk_Departments_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Department_Managers (Dept_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Dept_Emp (Emp_No);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Compensation (Emp_No);

ALTER TABLE Position ADD CONSTRAINT fk_Position_Title_ID FOREIGN KEY(Title_ID)
REFERENCES Employees (Title_ID);

