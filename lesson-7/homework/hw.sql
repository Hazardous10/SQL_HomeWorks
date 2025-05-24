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

Hard-Level Tasks (6)

SELECT 
Category, AVG(Price) AS avgPrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 150

SELECT 
CustomerID, SUM(SaleAmount) AS totalAMount
FROM Sales
GROUP BY CustomerID
HAVING SUM(SaleAmount) > 1500

SELECT DepartmentName, SUM(Salary) AS totalSalary, AVG(Salary) AS avgSalary
FROM Employees
GROUP BY DepartmentName
HAVING AVG(Salary) > 65000

SELECT 
o.custid,
SUM(CASE WHEN o.freight > 50 THEN od.unitprice * od.qty ELSE 0 END) AS totalHighFreight,
MIN(od.unitprice * od.qty) AS leastPurchase
FROM Sales.Orders o
JOIN Sales.OrderDetails od ON o.orderid = od.orderid
GROUP BY o.custid

SELECT 
YEAR(o.orderdate) AS orderYear, 
MONTH(o.orderdate) AS orderMonth, 
SUM(od.unitprice * od.qty) AS totalSale,
COUNT(DISTINCT od.productid) AS uniqueProducts 
FROM Sales.Orders o
JOIN Sales.OrderDetails od ON o.orderid = od.orderid
GROUP BY YEAR(o.orderdate), MONTH(o.orderdate)
HAVING COUNT(DISTINCT od.productid) >= 2


SELECT 
YEAR(o.orderdate) AS orderYear,
MIN(od.qty) AS minQty,
MAX(od.qty) AS maxQty
FROM Sales.OrderDetails od
JOIN Sales.Orders o ON od.orderid = o.orderid
GROUP BY YEAR(o.orderdate)
ORDER BY orderYear
