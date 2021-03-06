CREATE TABLE "departments" (
    "dept_no" VARCHAR(10) PRIMARY KEY  NOT NULL,
    "dept_name" VARCHAR(20)   NOT NULL
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(10) PRIMARY KEY NOT NULL,
    "title" VARCHAR(20)   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INT PRIMARY KEY  NOT NULL,
    "emp_title" VARCHAR(10)   NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
    "birth_date" VARCHAR(10)   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex" CHAR(1)   NOT NULL,
    "hire_date" VARCHAR(10)   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "dept_no" VARCHAR(10)   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10)   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    "emp_no" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);


CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    "salary" INT   NOT NULL
);





