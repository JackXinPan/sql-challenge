

-- First table : departments
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(20)
);

SELECT *
FROM departments; 

--Second table : dept_emp

CREATE TABLE dept_emp (
	emp_no int PRIMARY KEY,
	dept_no VARCHAR(10)
);

SELECT *
FROM dept_emp;

-- Third table : dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no int
);

SELECT *
FROM dept_manager;


-- Fourth table : employees
CREATE TABLE employees (
	emp_no int,
	emp_title VARCHAR(10),
	birth_date VARCHAR(10),
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex CHAR(1),
	hire_date VARCHAR(10)
);

SELECT *
FROM employees;

-- Fifth table : salaries
CREATE TABLE salaries (
	emp_no int,
	salary INT
);

SELECT *
FROM salaries;

-- Sixth table : titles
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(20)
);

SELECT *
FROM titles;


