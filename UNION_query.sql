--INSERT INTO EmployeeDemographics VALUES(NULL,'Steve', 'Jobs', NULL, NULL);
--INSERT INTO EmployeeDemographics VALUES(1011, 'Peter', 'Roughtuff', NULL, 'Male');
--INSERT INTO EmployeeDemographics VALUES(NULL, 'Holly', 'Smith', NULL, 'Female');

/*Table 1 Insert:*/
--Insert into EmployeeDemographics VALUES(1013, 'Ryan', 'Howard', 26, 'Male'), (NULL, 'Holly', 'Flax', NULL, NULL), (1015, 'Darryl', 'Philbin', NULL, 'Male')

/*Table 3 Query:*/
--Create Table WareHouseEmployeeDemographics (EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--);

/*Table 3 Insert:*/
--Insert into WareHouseEmployeeDemographics VALUES(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

-- SELECT * 
-- FROM WareHouseEmployeeDemographics;

--SELECT * 
--FROM SQLTUTORIAL.dbo.EmployeeDemographics
--FULL OUTER JOIN SQLTUTORIAL.dbo.WareHouseEmployeeDemographics
--	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID;

SELECT * 
FROM SQLTUTORIAL.dbo.EmployeeDemographics
UNION ALL
SELECT * 
FROM SQLTUTORIAL.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID;