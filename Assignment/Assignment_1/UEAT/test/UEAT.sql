-- Courier Table
CREATE TABLE Courier (
    Phone_Number VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Home_Address VARCHAR(100),
    Vehicle_Type VARCHAR(20),
    Vehicle_Plate_Number VARCHAR(20),
    Gender CHAR(1),
    Bank_Account_Number VARCHAR(20),
    Bank_Routing_Number VARCHAR(20)
);

-- Customer Table
CREATE TABLE Customer (
    Phone_Number VARCHAR(20) PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Home_Address VARCHAR(100),
    Email_Address VARCHAR(100),
    Customer_Type VARCHAR(20)
);

-- Restaurant Table
CREATE TABLE Restaurant (
    Name VARCHAR(100) PRIMARY KEY,
    Address VARCHAR(100),
    Phone_Number VARCHAR(20),
    Website_URL VARCHAR(100),
    Specialty VARCHAR(100)
);

-- Order Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Date_Time_Order TIMESTAMP,
    Date_Time_Delivery TIMESTAMP,
    Order_Amount DECIMAL(10, 2),
    Tips DECIMAL(10, 2),
    Payment_Method VARCHAR(20),
    Card_Number VARCHAR(16),
    Name_On_Card VARCHAR(50),
    Expiration_Date DATE,
    CVV_Number VARCHAR(4),
    Customer_Phone_Number VARCHAR(20),
    Courier_Phone_Number VARCHAR(20),
    Restaurant_Name VARCHAR(100),
    FOREIGN KEY (Customer_Phone_Number) REFERENCES Customer (Phone_Number),
    FOREIGN KEY (Courier_Phone_Number) REFERENCES Courier (Phone_Number),
    FOREIGN KEY (Restaurant_Name) REFERENCES Restaurant (Name)
);
