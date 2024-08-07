-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select Customers.LastName,Reservations.PartySize,Reservations.Date
from Customers join Reservations 
on Customers.CustomerID = Reservations.CustomerID
where Reservations.Date like '2022-06-14%'
order by Reservations.Date ;