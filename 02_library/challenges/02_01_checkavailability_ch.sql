-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
select count(*)
from books
where title='Dracula';

select count(*)
from books join loans
on books.bookid = loans.bookid
where books.title = 'Dracula' and loans.returneddate is NULL;

select 
(select count(*)
from books
where title='Dracula') - 
(select count(*)
from books join loans
on books.bookid = loans.bookid
where books.title = 'Dracula' and loans.returneddate is NULL) 
as availablecopies;
