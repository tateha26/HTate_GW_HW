CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	primary key (dept_no),
	unique (dept_name)
);

CREATE TABLE dept_emp(
	emp_no INT not null,
	dept_no VARCHAR(30) not null,
	from_date date not null,
	to_date date not null,
	primary key (emp_no, 
				 dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) not null,
	emp_no INT not null, 
	from_date date not null,
	to_date date not null,
	primary key (emp_no, 
				 dept_no)
);

CREATE TABLE employees(
	emp_no INT not null, 
	birth_date date not null,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(30) NOT NULL, 
	hire_date date not null,
	primary key (emp_no)
);

CREATE TABLE salaries(
	emp_no INT not null,
	salary INT not null, 
	from_date date not null,
	to_date date not null,
	primary key (emp_no, 
				 from_date)
);

CREATE TABLE titles(
	emp_no INT not null, 
	title VARCHAR(30) not null,
	from_date date not null,
	to_date date not null
);

---	Listing employee number, names, gender 
--salaries.
SELECT emp.emp_no,
	emp.birth_date,
	emp.first_name,
	emp.last_name, 
	emp.gender,
	emp.hire_date,
	sal.salary
FROM employees as emp
	left join salaries as sal
	on (emp.emp_no=sal.emp_no)
order by emp.emp_no; 

--List employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, 
--first name, and start and end employment dates.

select dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name,
	dm.from_date,
	dm.to_date
from dept_manager as dm
	inner join departments as d
		on (dm.dept_no=d.dept_no)
	inner join employees as e
		on (dm.emp_no=e.emp_no);

--List the department of each employee with 
--the following information: employee number, 
--last name, first name, and department name.

select empl.emp_no,
	empl.last_name,
	empl.first_name, 
	d.dept_name
from employees as empl
	inner join dept_emp as de
		on (empl.emp_no=de.emp_no)
	inner join departments as d
		on (de.dept_no = d.dept_no)
order by empl.emp_no;

--List all employees whose first name is "Hercules" 
--and last names begin with "B."

select employees.first_name,
	employees.last_name
from employees;

select (first_name, last_name)
from employees
where first_name like 'Hercules'
and employees.last_name like 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, 
--first name, and department name.
select emp.emp_no,
	emp.first_name,
	emp.last_name,
	d.dept_no
	d.dept_name,
	de.emp_no,
	de.dept.no
FROM employees as emp
--FROM dept_emp as de
	INNER JOIN employees 
		on (emp.emp_no=de.emp_no)
	inner join departments as d
		on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales'
order by emp.emp_no;

--List all employees in the Sales and Development 
--departments, including their employee number, 
--last name, first name, and department name.
select employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
	from departments
where departments.dept_name = ('Sales', 'Development')
order by emp.emp_no;

--In descending order, list the frequency count 
--of employee last names, i.e., how many employees 
--share each last name.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

SELECT * FROM departments;
DROP TABLE departments;

SELECT * FROM dept_emp;
DROP TABLE dept_emp;

select * from titles;
DROP TABLE titles;

select * from salaries;
DROP TABLE salaries;

select * from employees;
DROP TABLE employees;

select * from dept_manager;
DROP TABLE dept_manager;