/*
CTEs : Common Table Expression
*/

WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION By Gender) AS Count_Gender, 
	AVG(Salary) OVER (PARTITION By Salary) AS Avg_Salary
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
JOIN SQLTUTORIAL.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)
SELECT * 
FROM CTE_Employee;