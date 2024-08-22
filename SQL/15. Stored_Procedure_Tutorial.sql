 -- STORED PROCEDURE are for save SQL code that can reuse over and over again

-- SIMPLE STORED PROCEDURE  
CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();

-- MULTIPLE STORED PROCEDURE
DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries2();

-- STORED PROCEDURE with criteria
DELIMITER $$
CREATE PROCEDURE large_salaries3(huggymuffin INT)
BEGIN
	SELECT salary
    FROM employee_salary
    WHERE employee_id = huggymuffin;
END $$
DELIMITER ;

CALL large_salaries3(2)
