/* PARTITION BY STATEMENT */
select FirstName, LastName, Gender, Salary, count(Gender) over (partition by Gender) as TotalGender
from EmployeeDemographics dem
join EmployeeSalary sal
on dem.EmployeeID = sal.EmployeeID