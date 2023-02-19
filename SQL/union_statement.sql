/* UNION */
select EmployeeID, FirstName, Age
from EmployeeDemographics
union
select EmployeeID, JobTitle, Salary
from EmployeeSalary
order by EmployeeID