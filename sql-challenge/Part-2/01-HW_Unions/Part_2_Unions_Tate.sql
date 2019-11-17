SELECT * FROM actor;
select * from staff;
select * from customer;

-- Create view 
CREATE VIEW all_parties AS
SELECT last_name,
	first_name
FROM actor
UNION
SELECT last_name, 
	first_name 
FROM staff
UNION
SELECT last_name,
	first_name
FROM customer;

--See combined tables.
select * from all_parties;

--Display ID of all customers
--customer and customer_list tables
--and identify customers living in
--London. 

SELECT * from customer;
select * from customer_list;

CREATE VIEW Customers as
SELECT customer_id,
	first_name,
	last_name
FROM customer
INNER JOIN customer_id
UNION ALL
SELECT id,
	name,
	city
FROM customer_list
INNER JOIN customer_id
	from customer

select * from Customers
order by customer_id;

drop view Customers;

--Determine if both tables contain 
--the same customers. The tables do contain
--the same customers.
