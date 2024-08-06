-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
select * from Dishes
order by Price;
-- Create a report showing appetizers and beverages.
select * from Dishes
where Type in ('Appetizer','Beverage')
order by Type
-- Create a report with all items except beverages.
select * from Dishes 
where Type is not 'Beverage'
order by Type
