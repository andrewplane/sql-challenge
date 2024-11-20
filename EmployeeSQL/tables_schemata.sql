--Reset Tables as needed
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--Create Tables to match the CSV files (6) provided
CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(30),
  PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no VARCHAR(4),
  PRIMARY KEY (emp_no, dept_no) --composite PK needed as some employees are in multiple departments
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no int,
  PRIMARY KEY (dept_no, emp_no) --composite PK needed as some employees are in multiple departments
);

CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title_id VARCHAR(5),
  birth_date date,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(1),
  hire_date date,
  PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
  emp_no int NOT NULL,
  salary money,
  PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(30),
  PRIMARY KEY (title_id)
);