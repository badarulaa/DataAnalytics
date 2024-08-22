-- GROUP BY
SELECT occupation
FROM employee_salary
GROUP BY occupation;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY
-- DESC (sorting from down to up)
SELECT gender, age
FROM employee_demographics
ORDER BY age DESC;

-- ASC (sorting from up to down)
SELECT gender, age
FROM employee_demographics
ORDER BY age ASC;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age ASC;