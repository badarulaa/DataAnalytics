/* UPDATE STATEMENT */

update EmployeeDemographics
set EmployeeID = 1012
where FirstName = 'Holly' and LastName = 'Flax'

update EmployeeDemographics
set Age = 31, Gender = 'Female'
where EmployeeID = 1012