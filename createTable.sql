-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(255),
    Position VARCHAR(50),
    Email VARCHAR(255),
    Phone VARCHAR(20)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, Name, Position, Email, Phone)
VALUES (1, 'Jane Smith', 'Manager', 'jane@example.com', '9876543210');

-- Create Suppliers table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactPerson VARCHAR(255),
    Phone VARCHAR(20),
    Email VARCHAR(255)
);

-- Insert sample data into Suppliers table
INSERT INTO Suppliers (SupplierID, Name, ContactPerson, Phone, Email)
VALUES (1, 'ABC Clothing', 'John Supplier', '5551234567', 'supplier@example.com');

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Address VARCHAR(255)
);

-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, Name, Email, Phone, Address)
VALUES (1, 'John Doe', 'john@example.com', '1234567890', '123 Main St');

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    EmployeeID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert sample data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, EmployeeID)
VALUES (1, 1, '2024-04-13', 100.00, 1);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description VARCHAR(255),
    Price DECIMAL(10, 2)
);

-- Insert sample data into Products table
INSERT INTO Products (ProductID, Name, Description, Price)
VALUES (1, 'T-Shirt', 'Cotton T-Shirt', 19.99);

-- Create Size table
CREATE TABLE Size (
    SizeID INT PRIMARY KEY,
    SizeName VARCHAR(20)
);

-- Insert sample data into Size table
INSERT INTO Size (SizeID, SizeName)
VALUES (1, 'Small'), (2, 'Medium'), (3, 'Large');

-- Create Color table
CREATE TABLE Color (
    ColorID INT PRIMARY KEY,
    ColorName VARCHAR(20)
);

-- Insert sample data into Color table
INSERT INTO Color (ColorID, ColorName)
VALUES (1, 'Red'), (2, 'Blue'), (3, 'Green');

-- Create Category table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

-- Insert sample data into Category table
INSERT INTO Category (CategoryID, CategoryName)
VALUES (1, 'Men'), (2, 'Women'), (3, 'Kids');

-- Create ProductAttributes table
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

-- Insert sample data into ProductAttributes table
INSERT INTO ProductAttributes (ProductID, SizeID, ColorID, CategoryID)
VALUES (1, 1, 1, 1);  -- T-Shirt is Small, Red, and belongs to Men's category