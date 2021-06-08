DELIMITER $$
drop procedure proc_emp;
CREATE PROCEDURE proc_emp()
BEGIN
DECLARE ename varchar(20);
DECLARE salary integer(11);
declare finished integer default 0;
declare c1 cursor for select empname,sal from emp;
declare continue handler for NOT FOUND set finished=1;
open c1;
get_emp:LOOP
fetch c1 into ename,salary;
if finished=1 then
 leave get_emp;
end if;
select concat(ename,salary);
end loop get_emp;
close c1;
end $$
DELIMITER ;
call proc_emp;

select * from information_schema.table_constraints where constraint_schema = 'banksa';