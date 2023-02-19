/* CASE STATEMENT */
select FirstName, LastName, JobTitle, Salary,
case
	when JobTitle = 'Salesman' Then Salary + (Salary * 0.10)
	when JobTitle = 'Accountant' Then Salary + (Salary * 0.05)
	when JobTitle = 'HR' Then Salary + (Salary * 0.000001)
	else Salary + (Salary * 0.03)
end as SalaryAfterRaise
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID