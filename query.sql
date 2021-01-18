-- 1. EMPLOYEE NAME, SEX AND SALARY
SELECT
EMP.emp_no, 
EMP.last_name, 
EMP.first_name, 
EMP.sex, 
SAL.salary
FROM employees as EMP
left join compensation as SAL on (EMP.emp_no = SAL.emp_no);

-- 2. EMPLOYEES HIRED IN 1986
SELECT
first_name, 
last_name, 
hire_date
FROM employees
WHERE hire_date Between '1986-01-01' and '1987-01-01';

-- 3. DEPT. MANAGERS BY DEPT NO., DEPT. NAME, EMP NO., LAST & FIRST NAME
SELECT 
EMP.first_name, 
EMP.last_name, 
EMP.emp_no,
DM.dept_no,
DP.dept_name
FROM employees as EMP
Join department_managers as DM on (EMP.emp_no = DM.emp_no)
Join departments as DP on (DM.dept_no = DP.dept_no);

--4. EMPLOYEES BY EMP NO, LAST & FIRST NAME, DEPT NAME
SELECT 
EMP.first_name, 
EMP.last_name, 
EMP.emp_no,
DE.dept_no
FROM employees as EMP
Join dept_emp as DE on (EMP.emp_no = DE.emp_no);

--5. EMPLOYEES NAMED HERCULES WITH A LAST NAME BEGINING WITH "B"
SELECT 
first_name,
last_name,
sex
FROM employees
WHERE first_name='Hercules' and last_name LIKE 'B%';

-- 6. EMPLOYEES IN THE SALES DEPARTMENT BY EMP NO, LAST & FIRST NAMES
SELECT 
EMP.emp_no, 
EMP.last_name,
EMP.first_name,
DE.dept_no,
DP.dept_name
from employees as EMP 
join dept_emp as DE on (EMP.emp_no = DE.emp_no)
join departments as DP on (DE.dept_no = DP.dept_no)
Where DE.dept_no ='d007';

-- 7. EMPLOYEES IN THE SALES AND DEVELOPMENT DEPARTMENTS BY EMP NO, LAST & FIRST NAMES
SELECT 
EMP.emp_no, 
EMP.last_name,
EMP.first_name,
DE.dept_no,
DP.dept_name
from employees as EMP 
join dept_emp as DE on (EMP.emp_no = DE.emp_no)
join departments as DP on (DE.dept_no = DP.dept_no)
WHERE DP.dept_no ='d005' or DP.dept_no ='d007';

--8. EMPLOYEES IN SALES & DEVELOPMENT
SELECT 
last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;