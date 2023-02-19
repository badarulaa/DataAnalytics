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

/* CASE STATEMENT */
select FirstName, LastName, Age,
case
	when Age > 30 Then 'Old'
	when Age between 27 and 30 Then 'Young'
	else 'kid'
end as GroupingAge
from EmployeeDemographics
where Age is not NULL
order by Age