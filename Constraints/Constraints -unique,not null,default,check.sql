use practice_db;
-- creating the table with constraint
create table products(
         product_id int,
         product_name varchar(30),
         price int,
         constraint check_price check(price<500)
);
-- adding unique constraint
alter table products
add constraint unique(product_name);
-- adding not null constraint
alter table products
modify product_id int not null;
-- dropping check constraint from the table
alter table products
drop constraint check_price;

select * from products;
insert into products values(1,"rice",100);
insert into products values(2,"dhal",150);
insert into products values(3,"oil",150);
insert into products values(4,"ruled notes",100);
-- adding check constraint in already existing table
alter table products
add constraint check_price check(price<190);
-- deletion of the values from the table with setting the safe update mode in off
delete from products;
set sql_safe_updates=0;
-- editing the value from the table
update products
set product_name="ruled note"
where product_id=4;

-- default constraint,adding a new column
alter table products
add quantity int; 

-- setting default value in the already existing table
alter table products
alter quantity set default 1;

-- now inserting the values without the quantity
insert into products (product_id,product_name,price) values(5,'apple',150);