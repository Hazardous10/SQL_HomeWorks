 Easy-Level Tasks (10)
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

SELECT ISNULL(Email, 'noemail@example.com') AS Email
FROM SQL_LESSONS.dbo.Employees

SELECT * FROM SQL_LESSONS.dbo.Products_Discounted
WHERE Price BETWEEN 50 AND 100


SELECT DISTINCT Category, ProductName 
FROM SQL_LESSONS.dbo.Products_Discounted

SELECT DISTINCT Category, ProductName 
FROM SQL_LESSONS.dbo.Products_Discounted
ORDER BY ProductName DESC

Medium-Level Tasks (10)
SELECT TOP 10 * FROM Products
ORDER BY Price DESC

SELECT COALESCE(FirstName, LastName) AS FullName FROM Employees

SELECT DISTINCT Category, Price FROM Products

SELECT * FROM Employees 
WHERE Age BETWEEN 30 and 40 OR DepartmentName = 'Marketing'

SELECT * FROM Employees
ORDER BY Salary DESC
OFFSET 10 rows
FETCH NEXT 10 ROWS ONLY

SELECT * FROM Products
WHERE Price <= 1000 AND StockQuantity > 50
ORDER BY StockQuantity ASC

SELECT * FROM Products
WHERE ProductName LIKE '%e%'

SELECT * FROM Employees
WHERE DepartmentName IN ('HR', 'IT','Finance')

SELECT * FROM Customers
ORDER BY City ASC, PostalCode DESC
