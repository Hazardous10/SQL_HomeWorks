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


