CREATE TABLE Customers (
    
    Customer_Id NUMBER PRIMARY KEY,
    Customer_Name VARCHAR(50) NOT NULL,
    Customer_Age NUMBER NOT NULL,
    Customer_Balance NUMBER(12,2) NOT NULL,
    Is_VIP CHAR(1) DEFAULT 'N'
);

CREATE TABLE Loans (

    Loan_Id NUMBER PRIMARY KEY,
    Customer_Id NUMBER NOT NULL,
    Loan_Amount NUMBER(12,2) NOT NULL,
    Interest_Rate NUMBER(5,2) NOT NULL,
    Due_Date DATE NOT NULL,

    CONSTRAINT Fk_Customer 
        FOREIGN KEY (Customer_Id) 
        REFERENCES Customers(Customer_Id)
);