create database dairy_products
use dairy_products
create table shopping_history(
product varchar(50) NOT NULL,
quantity int NOT NULL,
unit_price int NOT NULL)
drop table shopping_history
insert into shopping_history values ('milk',2,20),
('bread' , 3 , 30 ),
('milk' , 1 , 10 ),
('bread' , 2 , 30 ),
('curd' , 3 , 60 ),
('curd' , 2 , 20 )

select * from shopping_history

ALTER TABLE shopping_history
ADD total_cost int(50);

UPDATE shopping_history SET total_cost = quantity * unit_price;

SELECT product, SUM(total_cost) 
FROM shopping_history
GROUP BY product



create table phones(
cust_name varchar(50) not null unique,
phone_number int not null unique
);
create table calls(
id int not null,
caller int not null,
callee integer not null,
duration int not null,
unique (id)
);

insert into phones values ('abhi' , 9960 ),
('talan' , 9096 ),
('akash' , 8788 ),
('viraj' , 9545 ),
('akshay' , 7788)
select * from phones
insert into calls values(22 , 9545 , 9960 , 5 ),
(33 , 8788 , 7788 , 7 ),
(44 , 9545 , 8788 , 9 ),
(55 , 9096 , 8788 ,1),
(66 , 7788 , 9096 ,2)
select * from calls

select cust_name
from phones join calls on phones.phone_number = calls.caller
union
select cust_name
from phones join calls on phones.phone_number = calls.callee
group by cust_name
having sum(duration) > 10;



create table transactions(
amount int not null,
dates date not null
);
insert into transactions values(1000 , '202-01-06'),
(-10 , '2020-01-14'),
(-75 , '2020-01-21'),
(-5 , '2020-01-05'),
(-4 , '2020-01-29'),
(2000 , '2020-01-01'),
(-75 , '2020-03-12'),
(-20 , '2020-03-15'),
(40 ,'2020-03-15'),
(-50 ,'2020-03-17'),
(200 , '2020-10-10'),
(-200 , '2020-10-10'),
(-10 ,'2020-10-10'),
(400 , '2020-11-2'),
(-50 , '2020-11-4'),
(-100 , '2020-11-8')


select *  from transactions
select month(dates) from transactions;
SELECT month(dates)
FROM transactions
GROUP BY month(dates)
