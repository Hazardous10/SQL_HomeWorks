SELECT * FROM Products CROSS JOIN Suppliers

SELECT * FROM Departments CROSS JOIN Employees

SELECT s.SupplierName, p.ProductName 
FROM Products p
INNER JOIN
Suppliers s ON p.SupplierID = s.SupplierID

SELECT o.OrderID, CONCAT(FirstName, ' ', LastName) AS fullName FROM Customers c
INNER JOIN
Orders o ON c.CustomerID = o.CustomerID

SELECT * FROM Students CROSS JOIN Courses

SELECT o.OrderID, p.ProductName FROM Products p
INNER JOIN
Orders o ON p.ProductID = o.ProductID

SELECT d.DepartmentName, e.Name FROM Employees e
INNER JOIN
Departments d ON e.DepartmentID = d.DepartmentID

SELECT s.Name, e.CourseID FROM Students s
INNER JOIN
Enrollments e ON s.StudentID = e.StudentID


SELECT * FROM Orders o
INNER JOIN
Payments p ON o.OrderID = p.OrderID

SELECT p.ProductName, o.ProductID, p.Price FROM Orders o
INNER JOIN 
Products p ON o.ProductID = p.ProductID
WHERE Price > 100
