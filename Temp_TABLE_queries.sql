/*
Temperorary Tables
*/

CREATE TABLE #temp_employee(
ID INT,
JobTitle VARCHAR(50),
Salary INT
);

INSERT INTO #temp_employee
VALUES (1019, 'Salesman', 10000);

SELECT * 
FROM #temp_employee;

/*DELETE and CREATE New TABLE and INSERT new values with SELECT*/
DROP TABLE IF EXISTS #temp_employees2
CREATE TABLE #temp_employees2(
ID INT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Gender VARCHAR(50),
Salary INT
)

INSERT INTO #temp_employees2
SELECT Demo.EmployeeID, FirstName, LastName, Gender, Salary
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
JOIN SQLTUTORIAL.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'

SELECT * FROM #temp_employees2