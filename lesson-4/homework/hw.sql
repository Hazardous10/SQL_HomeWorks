SELECT TOP 5 * FROM Employees

SELECT DISTINCT Category
FROM Products_Discounted

SELECT DISTINCT CategoryID 
FROM Categories
WHERE CategoryID = 3 

SELECT * FROM Products
WHERE Price > 100

SELECT * FROM SQL_LESSONS.dbo.Customers
WHERE FirstName LIKE 'A%';

SELECT * FROM SQL_LESSONS.dbo.Products_Discounted
ORDER BY Price ASC

SELECT * FROM SQL_LESSONS.dbo.Employees
WHERE Salary >= 60000 AND DepartmentName = 'HR'
