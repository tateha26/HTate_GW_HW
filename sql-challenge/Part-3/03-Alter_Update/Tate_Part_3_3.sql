--The difference between ALTER and UPDATE is that ALTER is a DDL or 
--Data Definition Language whereas UPDATE is a DML or Data Manipulation Language. 
--This means you can update the structure of a table with ALTER and UPDATE will 
--only update the data.

CREATE TABLE table_3_3(
	employee_id INT NOT NULL,
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	department_id VARCHAR NOT NULL
);

--DROP TABLE table_3_3;

SELECT * FROM table_3_3
INSERT INTO employee_id, 
			   first_name, 
			   last_name, 
			   department_id
VALUES 
	('3', 'Chris', 'Christian','25'),
	('14', 'Jan', 'Jansson', '45'),
	('17', 'Sam', 'Samuels', '45');
	
ALTER TABLE table_3_3
ADD COLUMN annual_salary FLOAT;

