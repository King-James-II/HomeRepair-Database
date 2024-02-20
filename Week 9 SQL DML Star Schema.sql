INSERT INTO dim_Date (Date_ID, Date_Aquired, Year, Quarter, Month)
VALUES
('1', '2022-06-18', '2022', '2', 'June'),
('2', '2022-06-27', '2022', '2', 'June'),
('3', '2022-07-01', '2022', '3', 'July'),
('4', '2022-07-04', '2022', '3', 'July'),
('5', '2022-07-11', '2022', '3', 'July')


INSERT INTO dim_Supplier (Supp_Num, Supp_Name, Supp_Address, Supp_Phone, Supp_Email)
VALUES 
('2000', 'Walmart', '928 Tesla Dr San Antonio, TX', '1111111111', 'x@walmart.com'),
('2001', 'Quality Timber', '3902 River Rd  New York, NY', '2222222222', 'x@qualitytimber.com'),
('2002', 'Build with Ferguson', '9918 Fergus Blvd Fayetteville, AR', '3333333333', 'x@buildwithferguson.com'),
('2003', 'Woodworkers Supply', '389 Woody Ln Omaha, NE', '5555555555', 'x@woodworkssupply.com'),
('2004', 'Sallys Warehouse', '273 No Where St Albuquerque, NM', '3333333331', 'x@sallyswarehouse.com')

INSERT INTO dim_Customer (Cust_Num, Cust_Name, Cust_Address, Cust_Phone, Cust_Email)
VALUES 
(1000, 'David Jackson', '908 Truesdale Ln Bronx, NY', '8888888888', 'dj123@bb123.com'),
(1001, 'Jennifer Lee', '897 Bloomberg Ct Brooklyn, NY', '9999999999', 'jlee124@tt987.com'),
(1002, 'Franc Le Boeuf', '2583 Truth Serum Rd Queens, NY', '7777777777', 'flbeuf183@8675309.com'),
(1003, 'Jet Wang', '3859 Wiley Cir Manhattan, NY', '6666666666', 'jwang123@wangsnthangs.com'),
(1004, 'Adriana Lopez', '2988 Novel Rd, Staten Island, NY', '4444444444', 'adrilopez9831@gotmail11.com')

INSERT INTO dim_Invoice (Inv_Num, Inv_Date, Days_Unpaid, Paid_Status, Bal_Due)
VALUES
('1', '2022-07-05', 'N/A', 'Paid', 72),
('2', '2022-07-18', 'N/A', 'Paid', 111),
('3', '2022-07-20', '19', 'Unpaid', 2442),
('4', '2022-07-22', '17', 'Paid', 15),
('5', '', '', '', 119)

INSERT INTO dim_Purchase_Order (PO_Num, PO_Date, PO_Due_Date, Pay_Status, Prod_Qty)
VALUES
('1', '2022-07-01', '2022-07-31', 'Paid', '2'),
('2', '2022-07-14', '2022-08-13', 'Paid', '3'),
('3', '2022-07-16', '2022-08-15', 'Unpaid', '1'),
('4', '2022-07-18', '2022-08-17', 'Paid', '1'),
('5', '2022-07-24', '2022-08-23', 'Unpaid', '1')


INSERT INTO dim_Product (Product_Num, Prod_Name, Prod_Desc, Prod_Price, Prod_Type)
VALUES
('8000', 'Antik Oak', 'Water Based Wood', 36, 'Stains'),
('8001', 'American Walnut', 'General Finishes GS Wood Stains', 37, 'Stains'),
('8002', 'Trimlite 36"W x 96', 'Entry Door', 2442, 'Door'),
('8003', 'Constructor Chronos', 'Door knob handle lock', 15, 'Door Security'),
('8004', 'Dayton Drop In', '4-Hole Kitchen Sink', 119, 'Kitchen Sink')


INSERT INTO dim_Job (Job_Num, Job_Desc, Job_Status)
VALUES
('1', 'Paint Table', 'Completed'),
('2', 'Paint Door', 'Completed'),
('3', 'Replace Door', 'Completed'),
('4', 'Replace Lock', 'Completed'),
('5', 'Install Kitchen Sink', 'Started')

INSERT INTO fact_Bids (Job_Num, Date_ID, Product_Num, PO_Num, Inv_Num, Cust_Num, Supp_Num, Bid_Amt, Bid_Date, Est_Hours, Materials_Cost, Hourly_Rate, Cust_Satisfied, Follow_Up_Status)
VALUES
('1', '1', '8000', '1', '1', '1000', '2003', 96, '2022-06-18', 1, 72, 24, 'Yes', 'N/A'),
('2', '2', '8001', '2', '2', '1001', '2003', 159, '2022-06-27', 2, 111, 24, 'Yes', 'N/A'),
('3', '3', '8002', '3', '3', '1002', '2002', 2502, '2022-07-01', 1, 2442, 30, 'Yes', 'N/A'),
('4', '4', '8003', '4', '4', '1003', '2000', 45, '2022-07-04', 1, 15, 30, 'Yes', 'N/A'),
('5', '5', '8004', '5', '5', '1004', '2001', 200, '2022-07-11', 2, 119, 40.5, 'N/A', 'N/A')
