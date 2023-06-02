/*
INNER JOIN
OUTER JOIN
*/

--SELECT *
--FROM SQLTUTORIAL.dbo.EmployeeDemographics

--SELECT *
--FROM SQLTUTORIAL.dbo.EmployeeSalary

--SELECT * 
--FROM SQLTUTORIAL.dbo.EmployeeDemographics
--LEFT OUTER JOIN SQLTUTORIAL.dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.FirstName, EmployeeDemographics.Age, EmployeeSalary.JobTitle, EmployeeSalary.Salary 
--FROM EmployeeDemographics
--LEFT OUTER JOIN EmployeeSalary
--	ON EmployeeSalary.EmployeeID = EmployeeDemographics.EmployeeID;

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle,Salary 
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--	ON EmployeeSalary.EmployeeID = EmployeeDemographics.EmployeeID;


--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle,Salary 
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--	ON EmployeeSalary.EmployeeID = EmployeeDemographics.EmployeeID
--WHERE FirstName <> 'Michael' /*<> = does not equal*/
--ORDER BY Salary DESC;

SELECT JobTitle, AVG(Salary)
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
	ON EmployeeSalary.EmployeeID = EmployeeDemographics.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle;