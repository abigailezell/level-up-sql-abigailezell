-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

insert into AnniversaryAttendees
(CustomerID, PartySize)
values (
(SELECT CustomerID 
from Customers
where email='atapley2j@kinetecoinc.com'),
'3');