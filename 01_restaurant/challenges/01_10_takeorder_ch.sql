-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
insert into Orders (customerid, orderdate) values
((select customerid from customers where firstname='Loretta' and 
lastname='Hundey' and address='6939 Elka Place'),'2022-09-20 14:00')

SELECT dishid FROM dishes where Name in ('House Salad','Mini Cheeseburgers','Tropical Blue Smoothie');
select orderid from orders where customerid=70 and orderdate='2022-09-20 14:00';
insert into OrdersDishes (orderid, dishid) values
(1001,4),
(1001,7),
(1001,20);


select sum(dishes.price) 
from Dishes join ordersdishes
on dishes.dishid = ordersdishes.dishid
where ordersdishes.orderid=1001;

select * from 
dishes join ordersdishes
on dishes.dishid = ordersdishes.dishid
where ordersdishes.orderid=1001;