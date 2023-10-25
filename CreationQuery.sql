-- Create Suppliers Table
CREATE TABLE Suppliers (
    Supplier_ID INT NOT NULL,
    Supplier_Name VARCHAR(255) NOT NULL,
    Supplier_Address VARCHAR(255),
    PRIMARY KEY (Supplier_ID)
);

-- Create Customers Table
CREATE TABLE Customers (
    Customer_ID INT NOT NULL,
    Customer_Name VARCHAR(255) NOT NULL,
    Customer_Address VARCHAR(255),
    PRIMARY KEY (Customer_ID)
);

-- Create Employees Table
CREATE TABLE Employees (
    Employee_ID INT NOT NULL,
    Employee_Name VARCHAR(255) NOT NULL,
    Employee_Type VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    PRIMARY KEY (Employee_ID)
);

-- Create Candles Table
CREATE TABLE Candles (
    Candle_ID INT NOT NULL,
    Candle_Name VARCHAR(255) NOT NULL,
    Scent VARCHAR(255),
    Price DECIMAL(10, 2) NOT NULL,
    Quantity_In_Stock INT NOT NULL,
    Reorder_Threshold INT NOT NULL,
    Supplier_ID INT NOT NULL,
    PRIMARY KEY (Candle_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

-- Create Transactions Table
CREATE TABLE Transactions (
    Transaction_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Candle_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Transaction_Date DATETIME NOT NULL,
    PRIMARY KEY (Transaction_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Candle_ID) REFERENCES Candles(Candle_ID)
);

-- Create Accounts Table
CREATE TABLE Accounts (
    Account_ID INT NOT NULL,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Employee_ID INT NOT NULL,
    PRIMARY KEY (Account_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);

-- Create Orders Table
CREATE TABLE Orders (
    Order_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Order_Date DATETIME NOT NULL,
    PRIMARY KEY (Order_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
);