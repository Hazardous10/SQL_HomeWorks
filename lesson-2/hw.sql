Basic-Level Tasks (10)
CREATE TABLE Employees (
EmpID INT,
Name VARCHAR(50),
Salary DECIMAL(10,2),
)

INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'Sponge Bob', 500), 
(2, 'Patrick', 600), 
(3, 'Borat', 700)

Update Employees 
Set Salary = 7000
Where EmpID = 1;

Delete from Employees
Where EmpID = 2

5.The DROP command removes a table from the database, DELETE removes records from a table, and TRUNCATE removes all rows from a table

Alter Table Employees
Alter Column Name Varchar(100)


Alter Table Employees
Add Department VARCHAR(50) 

Alter Table Employees
Alter Column Salary Float

Create Table Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
)

Truncate table Employees

Intermediate-Level Tasks (6)
Insert into Departments (DepartmentID, DepartmentName)
Values (1, 'Account'), (2, 'Sales'), (3, 'Tech.Support'), (4, 'IT'), (5, 'HR');

Update Employees 
Set Department = 'Management'
Where Salary > 5000

Truncate Table Employees

ALTER TABLE Employees 
DROP COLUMN Department;

EXEC sp_rename 'Employees' ,'StaffMembers'

Drop Table Departments

Advanced-Level Tasks (9)

Create table Products (
  ProductID INT Primary Key,
  ProductName VARCHAR,
  Category VARCHAR,
  Price VARCHAR,
  Check (Price > '0')
  )

  ALTER TABLE Products
  ADD StockQuantity INT 
  CONSTRAINT DF_StockQuantity DEFAULT 50

  EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN'

  Insert Into Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
  Values (1, 'Phone', 'Phones and Accessories', '500', '10'),
  (2, 'Headphone', 'Phones and Accessories', '50', '10'),
  (3, 'Power Bank', 'Phones and Accessories', '30', '10'),
  (4, 'Case', 'Phones and Accessories', '5', '10'),
  (5, 'Charger', 'Phones and Accessories', '15', '10');

  SELECT * INTO Products_Backup FROM Products

  EXEC sp_rename 'Products', 'Inventory'

  Alter Table Inventory
Drop Constraint CK__Products__Price__3E52440B

Alter Table Inventory
Alter Column Price DECIMAL(10,2)

Alter Table Inventory
Add Constraint CK_Price_Positive CHECK (Price > 0);

Alter Table Inventory
Add ProductCode INT IDENTITY(1000,5)

Select * from Inventory
