SELECT *
FROM EmployeeSalary

--- Subquery in select

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) as AllAvgSalary
From EmployeeSalary

--- Subquery in From
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) as AllAvgSalary
    From EmployeeSalary) a

--- Subquery in Where
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID in (
        SELECT EmployeeID
        FROM EmployeeDemographics
        WHERE Age > 30)