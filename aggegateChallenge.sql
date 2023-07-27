-- Print no of books in the db;
SELECT COUNT(*) FROM books;

-- print how many books were released in each year;
SELECT released_year,COUNT(*) FROM books GROUP BY released_year;

-- print out the total no of books in stock;
 
 SELECT SUM(stock_quantity) FROM books;
 
 -- --FIND THE AVG RELESED YEAR FOR EACH AUHTOR
 
 SELECT author_fname,author_lname,AVG(released_year) FROM books GROUP BY author_fname,author_lname;
 
-- FIND the full name of author who wrote the longest book;

 SELECT CONCAT(author_fname,' ',author_lname) as "full name" , pages as "page" FROM books ORDER BY pages DESC  LIMIT 1;

 SELECT released_year as year,COUNT(*) as 'books', AVG(pages) as 'avg pages' from books GROUP BY released_year;