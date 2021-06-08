
CREATE FUNCTION customer_of(city varchar(20))
returns table(
	name varchar(20),
	street varchar(20),
	city varchar(20))
return table
(select customer_name,customer_street,customer_city from CUSTOMER where CUSTOMER.customer_city=customer_of.city);

