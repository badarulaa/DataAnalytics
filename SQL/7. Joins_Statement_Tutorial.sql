-- JOINS

-- INNER JOIN (Joining all data with match key only)
SELECT dem.employee_id, age, occupation
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- OUTER JOIN (Joining all data within match key)
-- LEFT JOIN (Showing all data match from left table)
SELECT dem.employee_id, age, occupation
FROM employee_demographics dem
LEFT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- RIGHT JOIN (Showing all data match from right table)
SELECT dem.employee_id, age, occupation
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;

-- SELF JOIN
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
-- MULTIPLE JOIN FROM MORE THAN 2 TABLE
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id;