/*SubQueries : IN the SELECT, FROM, WHERE*/

/*IN the SELECT*/

SELECT JobTitle, (SELECT AVG(Salary) FROM EmployeeSalary) AS All_Avg_Salary
FROM EmployeeSalary

/*in to the partition*/

SELECT JobTitle, AVG(Salary) OVER () AS All_Avg_Salary
FROM EmployeeSalary

/*Group by does not work shows Wrong OUTPUT*/


SELECT JobTitle, AVG(Salary) AS All_Avg_Salary
FROM EmployeeSalary
GROUP BY JobTitle, Salary
ORDER BY 1, 2

/*SubQuery FROM */

SELECT a.JobTitle, a.All_Avg_Salary
FROM (SELECT JobTitle, Salary, AVG(Salary) OVER () AS All_Avg_Salary
		FROM EmployeeSalary) a

/*SubQuery in WHERE*/

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30
)