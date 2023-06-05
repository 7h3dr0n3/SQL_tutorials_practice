/*Partition BY*/

SELECT FirstName, LastName, Gender, COUNT(Gender)
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
JOIN SQLTUTORIAL.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY FirstName, LastName, Gender;

SELECT COUNT(Gender)
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
JOIN SQLTUTORIAL.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender;

SELECT FirstName, LastName, Gender, COUNT(Gender) OVER (PARTITION By Gender) AS Count_Gender
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
JOIN SQLTUTORIAL.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID;