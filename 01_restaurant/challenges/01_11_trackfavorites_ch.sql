-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

update customers
set favoritedish=(SELECT dishid from dishes WHERE
name='Quinoa Salmon Salad')
where firstname='Cleo' and lastname='Goldwater';

select * from customers join dishes 
on customers.favoritedish = dishes.dishid 
where
customers.firstname='Cleo' and customers.lastname='Goldwater';