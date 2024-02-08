-- Create departments table
CREATE TABLE departments (
  dept_no VARCHAR NOT NULL,
  dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Create titles table
CREATE TABLE titles (
  title_id VARCHAR NOT NULL,
  title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

-- Create employees table
CREATE TABLE employees (
  emp_no integer NOT NULL,
  emp_title_id VARCHAR NOT NULL,
  birth_date date NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  sex VARCHAR NOT NULL,
  hire_date date NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Create dept_emp table
CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create dept_manager table
CREATE TABLE dept_manager (
  dept_no VARCHAR NOT NULL,
  emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create salaries table
CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no)
);