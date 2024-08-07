-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

select * from Reservations join Customers 
on Reservations.CustomerID=Customers.CustomerID
where Customer.FirstName='Norby' and Reservation.Date>'2022-07-24';


delete from Reservations
where reservationid=2000;

select * from Reservations
where customerid=64
order by reservationid DESC;