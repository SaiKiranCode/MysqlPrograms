DELIMITER $$
create procedure curdemo(id int)
begin
declare name varchar(255);
declare cur1 cursor for select empname from emp where empno=id;
open cur1;
fetch cur1 into name;
select name;
close cur1;
end $$
DELIMITER ;
