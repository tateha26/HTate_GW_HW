-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FYISEo
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE employees (
    employee_id SERIAL   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    department_id int   NOT NULL
);

CREATE TABLE departments (
    id SERIAL   NOT NULL,
    dept_name VARCHAR   NOT NULL
);

INSERT INTO employees (
	employee_id, 
	first_name,
	last_name,
	department_id)
VALUES
	('14', 'Jan', 'Jansson', '45'),
	('17', 'Sam', 'Samuels', '45');
	
INSERT INTO departments (
	id,
	dept_name)
VALUES
	('45', 'webdev'),
	('45', 'webdev');

SELECT * FROM employees e
JOIN departments d
ON (e.department_id = d.id)
WHERE e.department_id = 45;

CREATE SCHEMA combined;

SET search_path TO combined, public;

CREATE TABLE employees (
    employee_id SERIAL   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    department_id int   NOT NULL
);

CREATE TABLE departments (
    id SERIAL   NOT NULL,
    dept_name VARCHAR   NOT NULL
);


ALTER TABLE employees ADD CONSTRAINT fk_employees_department_id FOREIGN KEY(department_id)
REFERENCES departments (id);

