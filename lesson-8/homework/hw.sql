SELECT Category, COUNT(*) AS totalProducts FROM Products
GROUP BY Category
ORDER BY totalProducts DESC

SELECT Category, AVG(Price) avgPrice FROM Products
GROUP BY Category
HAVING Category = 'Electronics'

SELECT * FROM Customers
WHERE CITY LIKE 'L%'

SELECT * FROM Products
WHERE ProductName LIKE '%er'

SELECT * FROM Customers
WHERE Country LIKE '%A'

SELECT MAX(PRICE) AS highestPrice FROM Products

SELECT ProductName, StockQuantity, IIF(StockQuantity < 30, 'Low Stock', 'Sufficient') AS StockStatus FROM Products
ORDER BY StockQuantity ASC

SELECT Country, COUNT(*) AS totalCustomers FROM Customers
GROUP BY Country
ORDER BY totalCustomers DESC

SELECT MIN(Quantity) AS minQuantity, MAX(Quantity) AS maxQuantity FROM Orders
