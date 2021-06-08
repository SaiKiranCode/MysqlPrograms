select distinct cust_name from BORROWER where cust_name NOT IN(select cust_name from DEPOSITER);
select cust_name ,t.loan_number,s.amount from BORROWER as t,LOAN as s where t.loan_number=s.loan_number;
select * from BRANCH;
insert into BRANCH values('red','usa',20000);
select  t.branch_name from BRANCH as t ,BRANCH as s where t.assests>s.assests and s.branch_city='usa';
select balance from ACCOUNT where 1=(select count(distinct balance) from ACCOUNT as s where ACCOUNT.balance<=s.balance);
select * from ACCOUNT;
select branch_name,avg_balance from (select branch_name,avg(balance) as avg_balance from ACCOUNT group by branch_name)as branch_avg(branch_name,avg_salary) where avg_balance>12000;
select branch_name,avg(balance) from ACCOUNT  group by branch_name having avg(balance)>10000;
