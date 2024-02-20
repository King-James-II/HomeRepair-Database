CREATE TABLE dim_Date(
Date_ID varchar(5) PRIMARY KEY,
Date_Aquired datetime,
Year varchar(10),
Quarter varchar(10),
Month varchar(10))

CREATE TABLE dim_Supplier(
Supp_Num varchar(5) PRIMARY KEY,
Supp_Name varchar(20),
Supp_Address varchar(35),
Supp_Phone varchar(10),
Supp_Email varchar(100))

CREATE TABLE dim_Customer(
Cust_Num varchar(5) PRIMARY KEY,
Cust_Name varchar(20),
Cust_Address varchar(35),
Cust_Phone varchar(10),
Cust_Email varchar(100))

CREATE TABLE dim_Invoice(
Inv_Num varchar(5) PRIMARY KEY,
Inv_Date date,
Days_Unpaid varchar(4),
Paid_Status varchar(20),
Bal_Due numeric(12,2))

CREATE TABLE dim_Purchase_Order(
PO_Num varchar(5) PRIMARY KEY,
PO_Date date,
PO_Due_Date date,
Job_Num varchar(4),
Amount_Due numeric(12,2),
Pay_Status varchar(20),
Prod_Qty numeric(12,2))

CREATE TABLE dim_Product(
Product_Num varchar(5) PRIMARY KEY,
Prod_Name varchar(20),
Prod_Desc varchar(35),
Prod_Price numeric(12,2),
Prod_Type varchar(20))

CREATE TABLE dim_Job(
Job_Num varchar(5) PRIMARY KEY,
Job_Desc varchar(35),
Job_Status varchar(20))

CREATE TABLE fact_Bids (
Job_Num varchar(5) FOREIGN KEY REFERENCES dim_Job(Job_Num),
Date_ID varchar(5) FOREIGN KEY REFERENCES dim_Date(Date_ID),
Product_Num varchar(5) FOREIGN KEY REFERENCES dim_Product(Product_Num),
PO_Num varchar(5) FOREIGN KEY REFERENCES dim_Purchase_Order(PO_Num),
Inv_Num varchar(5) FOREIGN KEY REFERENCES dim_Invoice(Inv_Num),
Cust_Num varchar(5) FOREIGN KEY REFERENCES dim_Customer(Cust_Num),
Supp_Num varchar(5) FOREIGN KEY REFERENCES Dim_Supplier(Supp_Num),
Bid_Amt numeric(12,2),
Bid_Date date,
Est_Hours numeric(12,2),
Materials_Cost numeric(12,2),
Hourly_Rate numeric(12,2),
Cust_satisfied varchar(4),
Follow_Up_Status varchar(4))