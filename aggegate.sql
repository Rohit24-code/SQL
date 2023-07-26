SELECT COUNT(*) from books;
-- Used to count all authors; 
SELECT COUNT(author_fname) from books;

-- TO check for only dist one 
SELECT COUNT(distinct author_fname) from books;

-- how many title contains the count them 
SELECT COUNT(title)FROM books WHERE title LIKE "%the%"; 


-- GROUP BY

SELECT title,author_lname,COUNT(*) FROM books GROUP BY author_lname,author_fname;

SELECT CONCAT("IN ",released_year ," ", COUNT(*)," books were released ") as YEAR FROM books GROUP BY released_year;

-- MIN AND MAX

SELECT MIN(released_year) FROM books;
SELECT MAX(released_year) FROM books;

SELECT MAX(pages),title from books;
-- This will give max pages and title but not in sync so to encounter this problem 

SELECT title,pages  FROM books WHERE pages=(SELECT MAX(pages) FROM books);

SELECT author_fname,author_lname ,MIN(released_year) FROM books GROUP BY author_fname,author_lname;

SELECT CONCAT(author_fname," ",author_lname) as "Full Name",MIN(pages) FROM books GROUP BY author_fname,author_lname;
