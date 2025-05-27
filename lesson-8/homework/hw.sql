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

Medium-Level Tasks

SELECT DISTINCT o.CustomerID
FROM Orders o
LEFT JOIN Invoices i ON o.CustomerID = i.CustomerID
WHERE YEAR(o.OrderDate) = 2023
AND MONTH(o.OrderDate) = 1
AND i.InvoiceID IS NULL

SELECT ProductName FROM Products
UNION ALL
SELECT ProductName FROM Products_Discounted
ORDER BY ProductName

SELECT ProductName FROM Products
UNION 
SELECT ProductName FROM Products_Discounted
ORDER BY ProductName


SELECT AVG(TotalAmount) AS avgAmount, YEAR(OrderDate) AS orderYear FROM Orders
GROUP BY YEAR(OrderDate)

SELECT ProductName, 
CASE 
WHEN Price < 100 THEN 'Low'
WHEN Price BETWEEN 100 AND 500 THEN 'Mid'
WHEN Price > 500 THEN 'High'
END AS priceGroup
FROM Products 
ORDER BY priceGroup DESC

SELECT district_name, [2012], [2013]
INTO Population_Each_Year
FROM
(
SELECT district_name,[year], population
FROM city_population
) AS SourceTable
PIVOT
(
SUM(population)
FOR [year] IN ([2012], [2013])
) AS PivotTable

SELECT ProductID, SUM(SaleAmount) AS totalSale FROM Sales
GROUP BY ProductID

SELECT ProductName FROM Products
WHERE ProductName LIKE '%oo%'

SELECT [year], [Bektemir], [Chilonzor], [Yakkasaroy] 
INTO Population_Each_City
FROM
(
SELECT  district_name, [year], population 
FROM city_population
WHERE district_name IN ('Bektemir', 'Chilonzor', 'Yakkasaroy')
) AS SourceTable

PIVOT
(
SUM(population)
FOR district_name IN ([Bektemir],[Chilonzor], [Yakkasaroy])
)
AS PivotTable

SELECT * FROM Population_Each_City
