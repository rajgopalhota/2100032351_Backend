-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    DateOfBirth DATE
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderItems table
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, DateOfBirth) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1985-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '1990-06-20');

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1000.00),
(2, 'Smartphone', 600.00),
(3, 'Headphones', 100.00);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES
(1, 1, '2023-01-10'),
(2, 2, '2023-01-12');

-- Insert data into OrderItems table
INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 2, 3, 1);
