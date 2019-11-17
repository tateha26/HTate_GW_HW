CREATE TABLE first_table(
	id SERIAL not null);

INSERT INTO first_table
	'id'
VALUES(
	1 int not null, 
	2 int not null, 
	3 int not null, 
	4 int not null
);

DROP TABLE first_table;

CREATE TABLE second_table(
	id SERIAL not null);
	
DROP TABLE second_table;

INSERT INTO second_table
	(id)
VALUES
	(10, 11, 12);

SELECT count (*)
FROM first_table;

SELECT count (*)
FROM second_table;

