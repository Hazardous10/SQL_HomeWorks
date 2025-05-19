Easy-Level Tasks

SELECT ProductName AS Name FROM Products

Select * FROM Products AS Client

SELECT ProductName FROM Products 
UNION
SELECT ProductName FROM Products_Discounted

SELECT ProductID, ProductName, Price, Category, StockQuantity FROM Products
INTERSECT
SELECT ProductID, ProductName, Price, Category, StockQuantity FROM Products_Discounted

SELECT DISTINCT FirstName, Country FROM Customers

SELECT Price,
CASE 
WHEN Price > 1000 THEN 'High'
WHEN Price <= 1000 THEN 'Low'
ELSE 'Price is not given'
END AS PriceCategory
FROM Products

SELECT StockQuantity, IIF(StockQuantity > 100, 'Yes', 'No')
FROM Products_Discounted

Medium-Level Tasks
  
SELECT ProductName From Products
UNION
SELECT ProductName FROM Products_Discounted

SELECT * FROM Products
EXCEPT
SELECT * FROM Products_Discounted

UPDATE Employees
SET Salary = (Salary * 0.1) + Salary
WHERE DepartmentName = 'HR' OR EmployeeID = 5

Hard-Level Tasks

SELECT ProductID, SaleAmount,
CASE
WHEN SaleAmount > 500 THEN 'Top Tier'
WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
ELSE 'Low Tier'
END AS Tier
FROM Sales;

SELECT  CustomerID FROM Orders
EXCEPT
SELECT  CustomerID FROM Sales

SELECT CustomerID, Quantity,
CASE
WHEN Quantity = 1 THEN 0.03
WHEN Quantity BETWEEN 2 AND 3 THEN 0.05
ELSE 0.07
END AS DiscountPercentage
FROM Orders
