-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select distinct title, author, published, barcode
from books 
where published between 1890 and 1899
and (bookid not in (select bookid from loans 
where returneddate is NULL))
order by author;