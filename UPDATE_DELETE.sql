/*UPDATE SET and DELETE query*/

SELECT * 
FROM SQLTUTORIAL.dbo.EmployeeDemographics;

UPDATE SQLTUTORIAL.dbo.EmployeeDemographics
SET Age = 45
WHERE FirstName = 'Steve'AND LastName = 'Jobs';

DELETE
FROM SQLTUTORIAL.dbo.EmployeeDemographics
WHERE EmployeeID = 1015;

SELECT Age FROM SQLTUTORIAL.dbo.EmployeeDemographics;
