-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select count(loans.loanid) as totalloans, patrons.firstname, patrons.lastname, patrons.email
from patrons join loans
on patrons.patronid=loans.patronid
group by loans.patronid
order by totalloans asc
limit 5;
