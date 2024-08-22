-- Temporary Table are for creating temporary table, but when we close MySQL that temporary table will be disappear
CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favourite_movie varchar(100)
);

SELECT *
FROM temp_table;

-- Insert from another table
CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM salary_over_50k;