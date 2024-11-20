CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(30)
);

CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no VARCHAR(4) NOT NULL
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no int NOT NULL
);

CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title_id VARCHAR(5),
  birth_date date,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(1),
  hire_date date
);

CREATE TABLE salaries (
  emp_no int NOT NULL,
  salary int
);

CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(30)
);