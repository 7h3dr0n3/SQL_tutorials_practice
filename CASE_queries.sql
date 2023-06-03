--SELECT FirstName, LastName, Age,
--CASE
--WHEN Age < 30 THEN 'Young'
--WHEN Age > 30 THEN 'Old'
--ELSE 'Bloomer'
--END AS Category
--FROM SQLTUTORIAL.dbo.EmployeeDemographics
--WHERE AGE IS NOT NULL
--ORDER BY Age;


SELECT FirstName, LastName, JobTitle, Salary, 
CASE
WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
WHEN JobTitle = 'HR' THEN Salary + (Salary * .00001)
ELSE Salary + (Salary * .03)
END AS salaryRaise
FROM SQLTUTORIAL.dbo.EmployeeDemographics
JOIN SQLTUTORIAL.dbo.EmployeeSalary
ON SQLTUTORIAL.dbo.EmployeeDemographics.EmployeeID = SQLTUTORIAL.dbo.EmployeeSalary.EmployeeID