/* Creating Temp Table */

/* Creating #Temp_Employee */
create table #Temp_Employee(
EmployeeID int,
JobTitle varchar(100),
Salary int
)

/* Insert data using single data */
insert into #Temp_Employee values (
'1001', 'HR', '45000'
)

/* Insert data from another table */
insert into #Temp_Employee
select * from EmployeeSalary

/* Creating #Temp_Employee2 */
create table #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerjob int,
AvgAge int,
AvgSalary int)

/* Insert data using join table */
INSERT INTO #Temp_Employee2
SELECT Jobtitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle