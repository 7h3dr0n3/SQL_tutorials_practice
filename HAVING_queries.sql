/*HAVING QUERY*/
SELECT JobTitle, AVG(Salary) AS salary
FROM SQLTUTORIAL.dbo.EmployeeDemographics
JOIN SQLTUTORIAL.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID	= EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY salary;