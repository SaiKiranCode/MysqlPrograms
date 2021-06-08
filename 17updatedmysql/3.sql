select * from CUSTOMER;
set @name='';
call cust(@name);
select @name