-- Window Function are returning data from one row or more to give some value on column

SELECT dem.first_name, dem.gender, salary,
SUM(salary) OVER (PARTITION BY gender ORDER BY dem.employee_id) rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name, dem.gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;