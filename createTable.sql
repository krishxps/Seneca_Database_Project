-- Creating Tables
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(50),
    Email VARCHAR(255),
    Phone VARCHAR(20)
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactPerson VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    EmployeeID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description VARCHAR(255),
    Price DECIMAL(10, 2)
);

CREATE TABLE Size_ (
    SizeID INT PRIMARY KEY,
    SizeName VARCHAR(20)
);

CREATE TABLE Color (
    ColorID INT PRIMARY KEY,
    ColorName VARCHAR(20)
);

CREATE TABLE Category_ (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE ProductAttributes (
    ProductID INT,
    SizeID INT,
    ColorID INT,
    CategoryID INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SizeID) REFERENCES Size(SizeID),
    FOREIGN KEY (ColorID) REFERENCES Color(ColorID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Populating Tables with Sample Data
INSERT INTO Employees (EmployeeID, Name, Position, Email, Phone)
VALUES 
    (1, 'John Smith', 'Sales Manager', 'john.smith@example.com', '123-456-7890'),
    (2, 'Emily Johnson', 'Customer Service Representative', 'emily.johnson@example.com', '234-567-8901'),
    (3, 'Michael Brown', 'Inventory Manager', 'michael.brown@example.com', '345-678-9012'),
    (4, 'Jessica Davis', 'Marketing Specialist', 'jessica.davis@example.com', '456-789-0123'),
    (5, 'David Wilson', 'Accountant', 'david.wilson@example.com', '567-890-1234');

INSERT INTO Suppliers (SupplierID, Name, ContactPerson, Phone, Email)
VALUES 
    (1, 'FashionZone', 'Sarah Supplier', '555-123-4567', 'sarah@fashionzone.com'),
    (2, 'StyleMart', 'Jack Manager', '555-234-5678', 'jack@stylemart.com'),
    (3, 'TrendyWear', 'Emily Supplier', '555-345-6789', 'emily@trendywear.com'),
    (4, 'ChicClothes', 'David Sales', '555-456-7890', 'david@chicclothes.com'),
    (5, 'GlamourFashion', 'Jessica Sales', '555-567-8901', 'jessica@glamourfashion.com');

INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES 
    (1, 'Alice Thompson', 'alice@example.com', '789-012-3456', '123 Main St'),
    (2, 'Bob Johnson', 'bob@example.com', '890-123-4567', '456 Oak St'),
    (3, 'Catherine Davis', 'catherine@example.com', '901-234-5678', '789 Elm St'),
    (4, 'Daniel Wilson', 'daniel@example.com', '012-345-6789', '345 Maple St'),
    (5, 'Eva Garcia', 'eva@example.com', '123-456-7890', '567 Pine St');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, EmployeeID)
VALUES 
    (1, 1, '2024-04-13', 100.00, 1),
    (2, 2, '2024-04-14', 150.00, 2),
    (3, 3, '2024-04-15', 200.00, 3),
    (4, 4, '2024-04-16', 250.00, 4),
    (5, 5, '2024-04-17', 300.00, 5);

INSERT INTO Products (ProductID, Name, Description, Price)
VALUES 
    (1, 'T-Shirt', 'Casual Cotton T-Shirt', 19.99),
    (2, 'Jeans', 'Classic Blue Denim Jeans', 29.99),
    (3, 'Dress', 'Floral Print Summer Dress', 39.99),
    (4, 'Sneakers', 'Canvas Sneakers', 49.99),
    (5, 'Watch', 'Stylish Wrist Watch', 99.99);

INSERT INTO Size_ (SizeID, SizeName)
VALUES (1, 'Small'), (2, 'Medium'), (3, 'Large');

INSERT INTO Color (ColorID, ColorName)
VALUES (1, 'Red'), (2, 'Blue'), (3, 'Green');

INSERT INTO Category_ (CategoryID, CategoryName)
VALUES (1, 'Men'), (2, 'Women'), (3, 'Kids');

INSERT INTO ProductAttributes (ProductID, SizeID, ColorID, CategoryID)
VALUES (1, 1, 1, 1);