/*
Sample OUTPUT:
alphabetically Jim cam first as MIN value
	Jim 3
    Mererdith 9 
*/
SELECT FirstName
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo;


SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName), FirstName

SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName) DESC, FirstName

SELECT FirstName, LEN(FirstName) 
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
WHERE FirstName IN ((SELECT TOP 1 FirstName FROM SQLTUTORIAL.dbo.EmployeeDemographics ORDER BY LEN(FirstName),FirstName),
				(SELECT TOP 1 FirstName FROM SQLTUTORIAL.dbo.EmployeeDemographics ORDER BY LEN(FirstName) DESC, FirstName DESC));


SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName), FirstName;
SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName) DESC, FirstName;


SELECT TOP 1 LEN(FirstName) AS LEN_Name, FirstName
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo;

SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName), FirstName;
SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName) DESC, FirstName;

SELECT FirstName, LEN(FirstName) 
FROM SQLTUTORIAL.dbo.EmployeeDemographics AS Demo
WHERE FirstName IN ((SELECT TOP 1 FirstName FROM SQLTUTORIAL.dbo.EmployeeDemographics ORDER BY LEN(FirstName),FirstName),
				(SELECT TOP 1 FirstName FROM SQLTUTORIAL.dbo.EmployeeDemographics ORDER BY LEN(FirstName) DESC, FirstName DESC));


SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName), FirstName;
SELECT TOP 1 FirstName, LEN(FirstName) AS Length
FROM SQLTUTORIAL.dbo.EmployeeDemographics
ORDER BY LEN(FirstName) DESC, FirstName;
