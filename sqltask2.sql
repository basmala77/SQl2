----------------Join Tables------------------------
SELECT e.Name, d.DepartmentName FROM Employees e JOIN Departments d ON e.DepartmentID = d.DepartmentID;

----------------Aggregate Functions-------------------
SELECT AVG(Salary) AS AverageSalary FROM Employees;

----------------Grouping and Ordering-----------------
SELECT Dep_name, COUNT(*) AS NUM_Employee FROM  Employees GROUP BY Dep_name ORDER BY NUM_Employee;

----------------Selecting Top Records------------------
SELECT TOP 10 employee_id,salary FROM Employees ORDER BY salary DESC;

----------------Nested Queries-------------------------
SELECT* FROM Employees WHERE Dip_id IN (SELECT Dep_id FROM Departments WHERE region = 'East');


----------------Creating and Modifying Views---------------
CREATE VIEW ActiveEmployees AS 
  SELECT * FROM  Employees WHERE status = 'Active';

----------------Implementing Stored Procedures---------------
CREATE PROCEDURE EmployeeDetails
AS
BEGIN
    SELECT * FROM Employees;
END;

----------------Utilizing Built-in Functions------------------
SELECT 
    Emp_Name,FORMAT(HireDate, 'dd/MM/yyyy')
FROM 
    Employees;


----------------Working with Temporary Data-------------------


----------------Handling Exceptions--------------------
CREATE PROC USP_DIVIDE(@a decimal, @b decimal, @c decimal output)
AS 
BEGIN
	BEGIN TRY
		SET @c = @a / @b;
		print cast (@c as varchar)
	END TRY
	BEGIN CATCH 
			if ERROR_NUMBER() = 8134
			PRINT 'Error occurred: ' + ERROR_MESSAGE();
	END CATCH
END;
GO


----------------Implementing Trigger-------------------

----------------Creating User-defined Functions-------------------
CREATE FUNCTOON ADD_BOUNS(@salary decimal)
return decimal
AS
BEGIN
	DECLARE @Bonus decimal;
    SET @Bonus = @salary * 0.10;

	return @Bonus;
END;
	

