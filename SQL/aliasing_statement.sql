/* ALIASING STATEMENT */

/* FullName */
select FirstName + ' ' + LastName as FullName
from EmployeeDemographics

/* Average of Age */
select avg(Age) as AvgAge
from EmployeeDemographics

/* List Salary single join */
select Demo.EmployeeID, Sal.Salary
from EmployeeDemographics as Demo
join EmployeeSalary as Sal
on Demo.EmployeeID = Sal.EmployeeID

/* List Salary multi join */
select Demo.EmployeeID, Sal.Salary
from EmployeeDemographics Demo
left join EmployeeSalary Sal
on Demo.EmployeeID = Sal.EmployeeID
left join WareHouseEmployeeDemographics War
on Demo.EmployeeID = War.EmployeeID