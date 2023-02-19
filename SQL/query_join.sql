/* INNER JOIN */
select *
from SQLTutorial.dbo.EmployeeDemographics
inner join SQLTutorial.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* FULL OUTER JOIN */
select *
from SQLTutorial.dbo.EmployeeDemographics
full outer join SQLTutorial.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* RIGHT OUTER JOIN */
select *
from SQLTutorial.dbo.EmployeeDemographics
right outer join SQLTutorial.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* LEFT OUTER JOIN */
select *
from SQLTutorial.dbo.EmployeeDemographics
left outer join SQLTutorial.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* INNER JOIN WITH SOME CLASSIFICATION */
select *
from SQLTutorial.dbo.EmployeeDemographics
inner join SQLTutorial.dbo.EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
where JobTitle = 'Salesman'
order by Salary DESC