-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.
select Firstname, lastname, CustomerID, Address
from Customers
where firstname='Taylor' and lastname='Jenkins'

update Customers 
set Address='74 Pine Street', City='New York', State='NY'
where customerid=26;
