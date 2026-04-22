-- -------- primary key ---------
use practice_db;

-- creating a table transactions
create table transactions(
       t_id int primary key,
       amount decimal(10,2)
       );
       
-- inserting values
insert into transactions values(1,200);
insert into transactions values(2,200);

-- removing the primary key 
alter table transactions
drop primary key; 

-- adding the primary key constraint in already existing table
alter table transactions
add constraint primary key(t_id);

-- ------composite primary key-------
-- works on combinations

-- adding one column in the already existing table products
alter table products
add order_id int;

-- adding the composite primary key constraint to the existing table product for the two columns namely product_id and order_id
-- drop existing primary key if there before adding composite key
alter table products
add primary key(product_id,order_id);

-- already there is a product with product_id 5 ,order_id 5 but here in composite the combinations will be checked  so if product_id=5,order_id=5 then it raises an error because of already existing combination
insert into products values(5,"orange",100,1,6);

-- removing the composite primary key
alter table products
drop primary key;

-- ---------AUTO INCREMENT------------

-- dropping table transactions
drop table transactions;

-- CREATING THE SAME TABLE TRANSACTIONS
create table transactions(
       t_id int primary key auto_increment,
       amount decimal(10,2)
       );
-- making the transactions to auto increment from 10
alter table transactions
auto_increment=10;

-- inserting values
insert into transactions (amount) values(200);-- starts from 10

-- removing the auto increment
alter table transactions
modify t_id int;

-- adding the auto incremet into a existing table
alter table transactions
modify t_id int auto_increment;

insert into transactions(amount) values(500);




