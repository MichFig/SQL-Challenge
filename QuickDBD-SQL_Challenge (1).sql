﻿
CREATE TABLE Employees (
    Emp_No INT   NOT NULL,
    Title_ID Char(5)   NOT NULL,
    Birth_Date Char(10)   NOT NULL,
    First_Name VarChar(20)   NOT NULL,
    Last_Name VarChar(20)   NOT NULL,
    Sex Char(1)   NOT NULL,
    Hire_Date Char(10)   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Departments (
    Dept_No Char(4)   NOT NULL,
    Dept_Name VarChar(25)   NOT NULL
);

CREATE TABLE Dept_Emp (
    Emp_No INT   NOT NULL,
    Dept_No Char(4)   NOT NULL,
    CONSTRAINT pk_Dept_Emp PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Department_Managers (
    Dept_No Char(4)   NOT NULL,
    Emp_No INT   NOT NULL,
    CONSTRAINT pk_Department_Managers PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Compensation (
    Emp_No INT   NOT NULL,
    Salary INT   NOT NULL,
    CONSTRAINT pk_Compensation PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Title (
    Title_ID Char(5)   NOT NULL,
    Title VarChar(20)   NOT NULL
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Dept_Emp (Emp_No);

ALTER TABLE Departments ADD CONSTRAINT fk_Departments_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Dept_Emp (Dept_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Department_Managers (Dept_No);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Departments (Dept_No);

ALTER TABLE Department_Managers ADD CONSTRAINT fk_Department_Managers_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Compensation ADD CONSTRAINT fk_Compensation_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Title ADD CONSTRAINT fk_Title_Title_ID FOREIGN KEY(Title_ID)
REFERENCES Employees (Title_ID);

