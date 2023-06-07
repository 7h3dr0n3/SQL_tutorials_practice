USE [SQLTUTORIAL]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 07-06-2023 01:54:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee]
@FirstName nVARCHAR(50)
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
WHERE FirstName = @FirstName AND Salary > '45000'

SELECT *
FROM #temp_employee