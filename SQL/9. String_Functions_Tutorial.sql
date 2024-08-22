-- String Functions

-- LENGTH for counting text in column
SELECT LENGTH('sky');

SELECT first_name, LENGTH(first_name) LENGTH
FROM employee_demographics
ORDER BY 2;

-- UPPER for uppercase text
SELECT UPPER('sky');

-- LOWER for lowercase text
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

-- TRIM / LTRIM / RTRIM for delete space in text, if LTRIM space on left, if RTRIM space on right
SELECT TRIM('              sky            ');
SELECT LTRIM('              sky            ');
SELECT RTRIM('              sky            ');

-- LEFT / RIGHT for selecting text from criteria
-- SUBSTRING for selecting more specific from criteria
SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date, 6,2) birth_month
FROM employee_demographics;

-- REPLACE will replace some character with character we want
SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

-- LOCATE for find character we want
SELECT LOCATE('x', 'Alexander');

-- CONCATENATION for combine some column to single column
SELECT first_name, last_name,
CONCAT(first_name, ' ',last_name) full_name
FROM employee_demographics;

