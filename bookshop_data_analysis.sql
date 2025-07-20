-- Select All Story Collections
-- Titles That Contains 'stories'
SELECT 
    title
FROM
    books;
SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%';

-- Find The Longest Book
-- Print Out the Title and Page Count
SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;

-- Print a summary containing the title and year,
-- for the 3 most recent books
SELECT 
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY released_year DESC
LIMIT 3;

-- Find all books with an author_lname
-- that contains a space(" ")
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';

-- Find The 3 Books With The Lowest Stock
-- Select title, year, and stock
SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY 3 ASC
LIMIT 1 , 3;

-- Print title and author_lname
-- sorted first by author_lname and then try by title
SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title;

-- Sorted Alphabetically By Last Name
SELECT 
    UPPER(CONCAT('MY FAVORITE AUTHOR IS ',
                    author_fname,
                    ' ',
                    author_lname,
                    '!')) AS yell
FROM
    books
ORDER BY author_lname;