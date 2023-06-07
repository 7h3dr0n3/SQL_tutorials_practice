/*Stored PROCEDURES*/

CREATE PROCEDURE TEST
AS 
SELECT *
FROM EmployeeDemographics;

EXEC TEST;


CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee (
FirstName VARCHAR(50),
LastName VARCHAR(50),
Gender VARCHAR(50),
Salary INT
)

INSERT INTO #temp_employee
SELECT FirstName, LastName, Gender, Salary
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
JOIN SQLTUTORIAL.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'

SELECT *
FROM #temp_employee

EXEC Temp_Employee @FirstName = 'Toby'

SELECT * FROM EmployeeDemographics