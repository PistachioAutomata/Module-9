CREATE TABLE Employees (
	emp_no int NOT NULL,
	emp_title_id varchar(64),
	birth_date date,
	first_name varchar(64),
	last_name varchar(64),
	sex varchar(1),
	hire_date date,
	PRIMARY KEY (emp_no));

CREATE TABLE Titles (
	title_id varchar(64) NOT NULL,
	title varchar(64),
	PRIMARY KEY (title_id));
	
CREATE TABLE Salaries (
	emp_no int NOT NULL,
	salary int); 
	
CREATE TABLE Dept_Emp (
	emp_no int NOT NULL,
	dept_no varchar(64)); 
	
CREATE TABLE Dept_manager (
	dept_no varchar(64) NOT NULL,
	emp_no int NOT NULL); 
	
CREATE TABLE Departments (
	dept_no varchar(64) NOT NULL,
	dept_name varchar(64),
	PRIMARY KEY (dept_no))