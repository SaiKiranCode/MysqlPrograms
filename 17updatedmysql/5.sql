DELIMITER $$
CREATE FUNCTION total(p1 int,p2 int ,p3 int)
returns int deterministic
begin
DECLARE count int default 0;
set count=p1+p2+p3;
return (count);
end$$
DELIMITER ;