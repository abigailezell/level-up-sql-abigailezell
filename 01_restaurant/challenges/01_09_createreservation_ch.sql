-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
INSERT INTO Customers (FirstName, LastName, Email) 
SELECT 'Sam','McAdams','smac@kinetecoinc.com'
where not exists (SELECT 1 from Customers where FirstName='Sam'
AND LastName='McAdams' AND Email='smac@kinetecoinc.com');

INSERT INTO Reservations (CustomerID, PartySize, Date) VALUES
((SELECT CustomerID from Customers where Email='smac@kinetecoinc.com'),
'5', '2022-08-12 18:00')

