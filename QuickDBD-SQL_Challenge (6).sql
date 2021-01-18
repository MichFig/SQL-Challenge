-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0CKIdG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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

CREATE TABLE Departments (
    Dept_No Char(4)   NOT NULL,
    Dept_Name VarChar(25)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        Dept_No
     )
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

CREATE TABLE Position (
    Title_ID Char(5)   NOT NULL,
    Title VarChar(20)   NOT NULL,
    CONSTRAINT pk_Title PRIMARY KEY (
        Title_ID
     )
);


