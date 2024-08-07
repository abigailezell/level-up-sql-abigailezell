-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

insert into loans (bookid, patronid, loandate,duedate)
values 
((select bookid from books where barcode='2855934983'),
(select patronid from patrons where email='jvaan@wisdompets.com'),
'2022-08-25','2022-09-08'),
((select bookid from books where barcode='4043822646'),
(select patronid from patrons where email='jvaan@wisdompets.com'),
'2022-08-25','2022-09-08');

select * from loans 
order by loanid desc
limit 5;