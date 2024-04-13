-- Retrieve orders with customer information
SELECT o.OrderID, c.Name AS CustomerName, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

-- Retrieve products with size, color, and category information
SELECT p.Name AS ProductName, s.SizeName, co.ColorName, cat.CategoryName
FROM Products p
JOIN ProductAttributes pa ON p.ProductID = pa.ProductID
JOIN Size s ON pa.SizeID = s.SizeID
JOIN Color co ON pa.ColorID = co.ColorID
JOIN Category cat ON pa.CategoryID = cat.CategoryID;

-- Retrieve employee information along with their orders
SELECT e.Name AS EmployeeName, e.Position, o.OrderID, o.OrderDate, o.TotalAmount
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID;
