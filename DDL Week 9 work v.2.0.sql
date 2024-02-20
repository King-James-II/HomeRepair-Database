CREATE TABLE Customer(
Cust_Num varchar(5) PRIMARY KEY,
Cust_Name varchar(20),
Cust_Address varchar(35),
Cust_Phone varchar(10),
Cust_Email varchar(100));


CREATE TABLE Purchase_Order(
PO_Num varchar(5) PRIMARY KEY,
PO_Date date,
Bill_Due_Date date,
Product_Type varchar(20),
Amount_Due numeric(12,2),
Pay_Status varchar(20));


CREATE TABLE Suppliers(
Supp_Num varchar(5) PRIMARY KEY,
Supp_Name varchar(20),
Supp_Address varchar(35),
Supp_Phone varchar(10),
Supp_Email varchar(100));


CREATE TABLE Product(
Product_Num varchar(5) PRIMARY KEY,
Prod_Name varchar(20),
Prod_Desc varchar(35),
Prod_Price numeric(12,2),
Prod_Type varchar(20),
Supp_Num varchar(5) FOREIGN KEY REFERENCES Suppliers(Supp_Num));


CREATE TABLE Outgoing_Payments(
Payment_ID varchar(5),
Supp_Num varchar(5),
Paid_Amount numeric(12,2),
Date_Paid date
CONSTRAINT PK_Outgoing_Payments PRIMARY KEY (Payment_ID,Supp_Num),
CONSTRAINT FK_Outgoing_Payments_Suppliers FOREIGN KEY (Supp_Num) REFERENCES Suppliers(Supp_Num));


CREATE TABLE PO_Line(
PO_Num varchar(5),
Product_Num varchar(5),
Product_Qty int,
CONSTRAINT PK_PO_Line PRIMARY KEY (PO_Num,Product_Num),
CONSTRAINT FK_Purchase_Order_PO_Line FOREIGN KEY (PO_Num) REFERENCES Purchase_Order(PO_Num),
CONSTRAINT FK_Product_PO_Line FOREIGN KEY (Product_Num) REFERENCES Product(Product_Num));


CREATE TABLE Invoice(
Inv_Num varchar(5) PRIMARY KEY,
Inv_Date date,
Days_Unpaid varchar(5),
Payment_ID varchar(5),
Paid_Status varchar(20),
Bal_Due numeric(12,2),
Cust_Num varchar(5),
Hours_Worked numeric(12,2),
Material_Cost numeric(12,2));


CREATE TABLE Incoming_Payments(
Payment_ID varchar(5),
Inv_Num varchar(5),
Paid_Amount numeric(12,2),
Date_Paid date,
CONSTRAINT PK_Incoming_Payments PRIMARY KEY (Payment_ID,Inv_Num),
CONSTRAINT FK_Incoming_Payments FOREIGN KEY (Inv_Num) REFERENCES Invoice(Inv_Num));


CREATE TABLE Inv_Line(
Inv_Line varchar(5),
Inv_Num varchar(5),
Product_Num varchar(5),
Product_Qty int,
CONSTRAINT PK_Inv_Line PRIMARY KEY (Inv_Line,Inv_Num),
CONSTRAINT FK_Invoice_Line_Invoice FOREIGN KEY (Inv_Num) REFERENCES Invoice(Inv_Num));


CREATE TABLE Bid(
    Cust_Num varchar(5),
    Inv_Num varchar(5),
    Job_Desc varchar(35),
    Bid_Amount numeric(12,2),
    Bid_Date date,
    Est_Hours numeric(12,2),
    Material_Cost numeric(12,2),
    Hourly_Rate numeric(12,2),
    Job_Status varchar(20),
    Cust_satisfied varchar(5),
    Follow_Up_Status varchar(5),
    Supp_Num varchar(5),
    CONSTRAINT PK_Bid PRIMARY KEY (Cust_Num,Inv_Num),
    CONSTRAINT FK_Bid_Customer FOREIGN KEY (Cust_Num) REFERENCES Customer(Cust_Num),
    CONSTRAINT FK_Bid_Invoice FOREIGN KEY (Inv_Num) REFERENCES Invoice(Inv_Num),
    CONSTRAINT FK_Bid_Supplier FOREIGN KEY (Supp_Num) REFERENCES Suppliers(Supp_Num));