Easy
1. Data, in its simplest form, is a collection of facts, numbers, words, or observations that can be used to learn about something. 
   Database - A database is an organized collection of related data, typically stored electronically in a computer system. 
It can be used to store and manage various types of information, such as text, numbers, images, and videos
   Realtional database - A relational database (RDB) is a way of structuring information in tables, rows, and columns.
   A table is an arrangement of information or data, typically in rows and columns, or possibly in a more complex structure. 
Tables are widely used in communication, research, and data analysis
2. User-friendly Data Retrieval, Data Modification with Ease, Data Integrity and Constraints, Joining Tables for Comprehensive Insights, Aggregation and Grouping
3.  Windows Authentication: Best for environments with Windows users, providing strong security and ease of management.
    SQL Server Authentication: Offers flexibility for non-Windows applications but requires careful management of user credentials.
Choosing between these methods often depends on the specific needs of the organization, security requirements, and infrastructure.
  Medium
4. CREATE DATABASE SchoolDB;
5. CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
);
6. The major difference between SQL and SQL Server is that SQL is a query language used in RDBMS, whereas MSSQL is itself an RDBMS. 
   A query or command language is a computer language used to communicate with a database.
   SQL Server Management Studio (SSMS) is a graphical user interface (GUI) tool for managing Microsoft SQL Server. It allows you to create, manage, and administer SQL Server databases and objects. 
   SSMS also includes a query editor that you can use to write and execute SQL queries.
7. Data Definition Language (DDL) Commands
What is DDL?

DDL, which stands for Data Definition Language, is a subset of SQL (Structured Query Language) commands used to define and modify the database structure. These commands are used to create, alter, and delete database objects like tables, indexes, and schemas.
The primary DDL commands in SQL include:

    CREATE: This command is used to create a new database object. For example, creating a new table, a view, or a database.
        Syntax for creating a table: CREATE TABLE table_name (column1 datatype, column2 datatype, ...);
    ALTER: This command is used to modify an existing database object, such as adding, deleting, or modifying columns in an existing table.
        Syntax for adding a column in a table: ALTER TABLE table_name ADD column_name datatype;
        Syntax for modifying a column in a table: ALTER TABLE table_name MODIFY COLUMN column_name datatype;
    DROP: This command is used to delete an existing database object like a table, a view, or other objects.
        Syntax for dropping a table: DROP TABLE table_name;
    TRUNCATE: This command is used to delete all data from a table, but the structure of the table remains. It’s a fast way to clear large data from a table.
        Syntax: TRUNCATE TABLE table_name;
    COMMENT: Used to add comments to the data dictionary.
        Syntax: COMMENT ON TABLE table_name IS 'This is a comment.';
    RENAME: Used to rename an existing database object.
        Syntax: RENAME TABLE old_table_name TO new_table_name;

DDL commands play a crucial role in defining the database schema.
Data Manipulation Language (DML) Commands in SQL
What is DML Commands in SQL?

Data Manipulation Language (DML) is a subset of SQL commands used for adding (inserting), deleting, and modifying (updating) data in a database. DML commands are crucial for managing the data within the tables of a database.
The primary DML commands in SQL include:

    INSERT: This command is used to add new rows (records) to a table.
        Syntax: INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);
    UPDATE: This command is used to modify the existing records in a table.
        Syntax: UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;
        The WHERE clause specifies which records should be updated. Without it, all records in the table will be updated.
    DELETE: This command is used to remove one or more rows from a table.
        Syntax: DELETE FROM table_name WHERE condition;
        Like with UPDATE, the WHERE clause specifies which rows should be deleted. Omitting the WHERE clause will result in all rows being deleted.
    SELECT: Although often categorized separately, the SELECT command is sometimes considered part of DML as it is used to retrieve data from the database.
        Syntax: SELECT column1, column2, ... FROM table_name WHERE condition;
        The SELECT statement is used to query and extract data from a table, which can then be used for various purposes.

Data Control Language (DCL) Commands in SQL
What is DCL commands in SQL?

Data Control Language (DCL) is a subset of SQL commands used to control access to data in a database. DCL is crucial for ensuring security and proper data management, especially in multi-user database environments.
The primary DCL commands in SQL include:

    GRANT: This command is used to give users access privileges to the database. These privileges can include the ability to select, insert, update, delete, and so on, over database objects like tables and views.
        Syntax: GRANT privilege_name ON object_name TO user_name;
        For example, GRANT SELECT ON employees TO user123; gives user123 the permission to read data from the employees table.
    REVOKE: This command is used to remove previously granted access privileges from a user.
        Syntax: REVOKE privilege_name ON object_name FROM user_name;
        For example, REVOKE SELECT ON employees FROM user123; would remove user123‘s permission to read data from the employees table.

    Database administrators typically use DCL commands. When using these commands, it’s important to carefully manage who has access to what data, especially in environments where data sensitivity and user roles vary significantly.
    In some systems, DCL functionality also encompasses commands like DENY (specific to certain database systems like Microsoft SQL Server), which explicitly denies specific permissions to a user, even if those permissions are granted through another role or user group.
    Remember, the application and syntax of DCL commands can vary slightly between different SQL database systems, so it’s always good to refer to specific documentation for the database you are using.

Transaction Control Language (TCL) Commands in SQL
What are TCL commands in SQL?

Transaction Control Language (TCL) is a subset of SQL commands used to manage transactions in a database. Transactions are important for maintaining the integrity and consistency of data. They allow multiple database operations to be executed as a single unit of work, which either entirely succeeds or fails.
The primary TCL commands in SQL include:

    BEGIN TRANSACTION (or sometimes just BEGIN): This command is used to start a new transaction. It marks the point at which the data referenced in a transaction is logically and physically consistent.
        Syntax: BEGIN TRANSACTION;
        Note: In many SQL databases, a transaction starts implicitly with any SQL statement that accesses or modifies data, so explicit use of BEGIN TRANSACTION is not always necessary.
    COMMIT: This command is used to permanently save all changes made in the current transaction.
        Syntax: COMMIT;
        When you issue a COMMIT command, the database system will ensure that all changes made during the current transaction are saved to the database.
    ROLLBACK: This command is used to undo changes that have been made in the current transaction.
        Syntax: ROLLBACK;
        If you issue a ROLLBACK command, all changes made in the current transaction are discarded, and the state of the data reverts to what it was at the beginning of the transaction.
    SAVEPOINT: This command creates points within a transaction to which you can later roll back. It allows for partial rollbacks and more complex transaction control.
        Syntax: SAVEPOINT savepoint_name;
        You can roll back to a savepoint using ROLLBACK TO savepoint_name;
    SET TRANSACTION: This command is used to specify characteristics for the transaction, such as isolation level.
        Syntax: SET TRANSACTION [characteristic];
        This is more advanced usage and may include settings like isolation level which controls how transaction integrity is maintained and how/when changes made by one transaction are visible to other transactions.

TCL commands are crucial for preserving a database’s ACID (Atomicity, Consistency, Isolation, Durability) properties, ensuring that all transactions are processed reliably. These commands play a key role in any database operation where data consistency and integrity are important.
Data Query Language (DQL) Commands in SQL
What are DQL commands in SQL?

Data Query Language (DQL) is a subset of SQL commands used primarily to query and retrieve data from existing database tables. In SQL, DQL is mostly centered around the SELECT statement, which is used to fetch data according to specified criteria. Here’s an overview of the SELECT statement and its common clauses:

    SELECT: The main command used in DQL, SELECT retrieves data from one or more tables.
        Basic Syntax: SELECT column1, column2, ... FROM table_name;
        To select all columns from a table, you use SELECT * FROM table_name;
    WHERE Clause: Used with SELECT to filter records based on specific conditions.
        Syntax: SELECT column1, column2, ... FROM table_name WHERE condition;
        Example: SELECT * FROM employees WHERE department = 'Sales';
    JOIN Clauses: Used to combine rows from two or more tables based on a related column between them.
        Types include INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN.
        Syntax: SELECT columns FROM table1 [JOIN TYPE] JOIN table2 ON table1.column_name = table2.column_name;
    GROUP BY Clause: Used with aggregate functions (like COUNT, MAX, MIN, SUM, AVG) to group the result set by one or more columns.
        Syntax: SELECT column1, aggregate_function(column2) FROM table_name GROUP BY column1;
    ORDER BY Clause: Used to sort the result set in ascending or descending order.
        Syntax: SELECT column1, column2 FROM table_name ORDER BY column1 [ASC|DESC], column2 [ASC|DESC];
8. INSERT INTO Students (StudentID, Name, Age)
9. Download AdventureWorksDW2022.bak file from link https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak
   To restore files and filegroups over existing files

    In Object Explorer, connect to an instance of the SQL Server Database Engine, expand that instance, and then expand Databases.

    Right-click the database that you want, point to Tasks, point to Restore, and then click Files and Filegroups.

    On the General page, in the To database list box, enter the database to restore. You can enter a new database or choose an existing database from the drop-down list. The list includes all databases on the server, excluding the system databases master and tempdb.

    To specify the source and location of the backup sets to restore, click one of the following options:

From device

Click the browse button. In the Specify backup devices dialog box, select one of the listed device types in the Backup media type list box. To select one or more devices for the Backup media list box, click Add.

After you add the devices you want to the Backup media list box, click OK to return to the General page.
