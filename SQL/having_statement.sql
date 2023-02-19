/* HAVING STATEMENT */
select JobTitle, AVG(Salary)
from EmployeeDemographics
join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
group by JobTitle
having AVG(Salary) > 45000
order by AVG(Salary)