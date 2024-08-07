-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select loans.duedate, books.title, patrons.firstname, patrons.email, loans.duedate, loans.returneddate
from books join loans 
on books.bookid=loans.bookid 
join patrons
on loans.patronid=patrons.patronid
where duedate<='2022-07-13' and returneddate is NULL;
