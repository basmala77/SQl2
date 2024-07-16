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


----------------Working with Temporary Data-------------------


----------------Handling Exceptions--------------------


----------------Implementing Trigger-------------------

----------------Creating User-defined Functions-------------------

