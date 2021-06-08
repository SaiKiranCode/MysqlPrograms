select cust_name from BORROWER where cust_name IN(select cust_name from DEPOSITER);
select balance from ACCOUNT where balance>(select avg(balance)from ACCOUNT);