-- TRIM
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

--LTRIM
SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

--RTRIM
SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

--REPLACE
SELECT LastName, REPLACE(LastName, '- Fired','') AS LastNameFixed
FROM EmployeeErrors

--SUBSTRING
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors

SELECT err.FirstName, SUBSTRING(err.FirstName,1,3), demo.FirstName, SUBSTRING(demo.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics demo
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(demo.FirstName,1,3)

--UPPER
SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors

--LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors