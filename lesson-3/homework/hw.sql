Easy-Level Tasks (10)
1. BULK INSERT loads data from a data file into a table. 
This functionality is similar to that provided by the in option of the bcp command; however, the data file is read by the SQL Server process. 
For a description of the BULK INSERT syntax, see BULK INSERT (Transact-SQL).
2. CSV, JSON, TXT, Mdb
Create table Products (

ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Price DECIMAL(10,2)
)

Insert Into Products (ProductID, ProductName, Price)
Values (1, 'Laptop', 500),
(2, 'Mouse', 50),
(3, 'Keyboard', 80)

5. NOT NULL means a column to NOT accept NULL values. 
Null in other way means zero or empty value. Thus, Null means you can leave that field empty. 
And Not Null means you can not leave the value of that field empty.

--Adds a UNIQUE constraint to the ProductName column in the Products table
  
ALTER TABLE Products 
ADD UNIQUE (ProductName);

Identity columns can be used for generating key values. The identity property on a column guarantees the following conditions: Each new value is generated based on the current seed and increment. 
Each new value for a particular transaction is different from other concurrent transactions on the table.

 Medium-Level Tasks (10)

BULK INSERT SQL_LESSONS.dbo.Products
FROM 'C:\Users\never\Documents\Bulk_insert_clean.csv'
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
TABLOCK
)

ALTER TABLE Products
ADD CategoryID INT;

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY(CategoryID) REFERENCES Categories(CategoryID)

The primary key uniquely identifies each record in the table. The unique key serves as a unique identifier for records when a primary key is absent. 
The primary key cannot store NULL values. The unique key can store a null value, but only one NULL value is allowed.

ALTER TABLE Products
ADD CONSTRAINT CHK_Price CHECK (Price > 0);

ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;
SELECT ISNULL(Price, 0) FROM Products

The purpose of a foreign key in a relational database is to link two tables together, ensuring data integrity and consistency. 
In a relational database, tables are linked to each other through keys.

Hard-Level Tasks (10)


