/* CTE (Common Table Expression) */
with CTE_Employee as
(select FirstName, LastName, Gender, Salary
, count(Gender) over (partition by Gender) as TotalGender
, avg(Salary) over (partition by Gender) as AvgSalary
from EmployeeDemographics emp
join EmployeeSalary sal
	on emp.EmployeeID = sal.EmployeeID
where Salary > '45000'
)
select * from CTE_Employee