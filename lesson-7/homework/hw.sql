 Easy-Level Tasks (10)
Select ProductName, Price from Products
Where Price = (select min(price) from Products)

Select FirstName, LastName, Salary from Employees
Where Salary = (select max(salary) from Employees)

SELECT COUNT(*) From Customers

SELECT COUNT(DISTINCT Category) From Products

SELECT SUM(SaleAmount) FROM Sales
WHERE ProductID = 7

SELECT AVG(Age) FROM Employees

SELECT DepartmentName, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentName

SELECT 
MIN(Price) AS minPrice, MAX(Price) maxPrice, Category 
FROM Products
GROUP BY Category

SELECT CustomerID, SUM(SaleAmount) AS totalSales
From Sales
Group by CustomerID

SELECT DepartmentName
FROM Employees
GROUP BY DepartmentName
HAVING COUNT(*) > 5

Medium-Level Tasks (9)

SELECT Products.Category, SUM(SaleAmount) AS totalSales, AVG(SaleAmount) AS avgSales 
FROM Sales
JOIN Products ON Sales.ProductID = Products.ProductID
Group By Products.Category

SELECT DepartmentName, COUNT(DepartmentName) AS numOfEmployees FROM Employees
Where DepartmentName = 'HR'
GROUP BY DepartmentName


SELECT 
MIN(Salary) AS minSalary, MAX(Salary) maxSalary, DepartmentName 
FROM Employees
GROUP BY DepartmentName


SELECT 
AVG(salary) AS avgSalary, DepartmentName 
FROM Employees
GROUP BY DepartmentName

SELECT 
AVG(salary) AS avgSalary, COUNT(DepartmentName) AS counOfEmployees, DepartmentName 
FROM Employees
GROUP BY DepartmentName

SELECT Category 
FROM Products
GROUP BY Category
HAVING AVG(Price) > 400


SELECT SUM(SaleAmount) AS totalAmount, YEAR(SaleDate) AS SaleYear
From Sales
Group by SaleDate
 

SELECT Customers.CustomerID, Orders.Quantity
FROM Customers
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
WHERE Quantity >= 3

SELECT DepartmentName, AVG(Salary) AS avgSalaryExpense
FROM Employees
GROUP BY DepartmentName
HAVING AVG(Salary) > 60000
