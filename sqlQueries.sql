-- SQL Queries
-- Selection, projection, and join operations to retrieve data from multiple tables
SELECT o.OrderID, c.Name AS CustomerName, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT p.Name AS ProductName, s.SizeName, co.ColorName, cat.CategoryName
FROM Products p
JOIN ProductAttributes pa ON p.ProductID = pa.ProductID
JOIN Size_ s ON pa.SizeID = s.SizeID
JOIN Color co ON pa.ColorID = co.ColorID
JOIN Category_ cat ON pa.CategoryID = cat.CategoryID;

SELECT e.Name AS EmployeeName, e.Position, o.OrderID, o.OrderDate, o.TotalAmount
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID;

-- Aggregate functions and GROUP BY clauses to summarize data
SELECT c.CustomerID, c.Name AS CustomerName, SUM(o.TotalAmount) AS TotalSales
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name;

SELECT cat.CategoryName, AVG(p.Price) AS AvgPrice
FROM Products p
JOIN ProductAttributes pa ON p.ProductID = pa.ProductID
JOIN Category_ cat ON pa.CategoryID = cat.CategoryID
GROUP BY cat.CategoryName;

-- Subqueries and nested queries to answer complex questions about the data
SELECT o.OrderID, o.OrderDate, o.TotalAmount
FROM Orders o
WHERE o.CustomerID IN (SELECT CustomerID FROM Customers WHERE Email LIKE '%example.com');

-- Insert a new customer
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES (2, 'Kemal Batu', 'noob@kemal.com', '1234567890', '11 seneca way');

-- Update an existing product price
UPDATE Products
SET Price = 24.99
WHERE ProductID = 1;

-- Delete an employee
DELETE FROM Employees WHERE EmployeeID = 1;