/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

/* TRIM-notrecognized func, LTRIM, RTRIM*/

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors;

Select EmployeeID, RTRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

/*REPLACE*/

SELECT LastName, REPLACE(LastName, ' - Fired', '')
FROM EmployeeErrors

/*Substring*/

SELECT FirstName, SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors;

SELECT FirstName, LastName, SUBSTRING(FirstName, 1, 3), SUBSTRING(LastName, 1, 3) 
FROM EmployeeErrors;

/*Using Substring to Match*/

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)

/*UPPER LOWER*/

SELECT FirstName, UPPER(FirstName), LOWER(FirstName)
FROM EmployeeErrors