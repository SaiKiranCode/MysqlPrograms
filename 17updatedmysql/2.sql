DELIMITER $$
drop PROCEDURE cust;
CREATE PROCEDURE cust(INOUT custlist varchar(200))
begin
declare finished int default 0;
declare cus varchar(20) default "";
declare cur CURSOR  for select cust_name from CUSTOMER;
declare continue handler 
	for NOT FOUND set finished=1;
open cur;
	getname:LOOP
	FETCH cur INTO cus;
	if finished=1 then
		leave getname;
	end if;
	set custlist=CONCAT(custlist,",",cus);
	END LOOP;
	close cur;
end $$
DELIMITER ;