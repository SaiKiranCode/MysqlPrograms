DELIMITER $$
drop function customer_count;
CREATE FUNCTION customer_count(customer_city varchar(20))
RETURNS INTEGER deterministic
BEGIN 
	DECLARE cus_count INTEGER;
	select count(*) into cus_count from CUSTOMER where 
	CUSTOMER.cust_city=customer_city;
	return cus_count;
END $$
DELIMITER ;

select customer_count('hyd');