INSERT INTO Customer (Cust_Num, Cust_Name, Cust_Address, Cust_Phone, Cust_Email)
VALUES 
(1000, 'David Jackson', '908 Truesdale Ln Bronx, NY', '8888888888', 'dj123@bb123.com'),
(1001, 'Jennifer Lee', '897 Bloomberg Ct Brooklyn, NY', '9999999999', 'jlee124@tt987.com'),
(1002, 'Franc Le Boeuf', '2583 Truth Serum Rd Queens, NY', '7777777777', 'flbeuf183@8675309.com'),
(1003, 'Jet Wang', '3859 Wiley Cir Manhattan, NY', '6666666666', 'jwang123@wangsnthangs.com'),
(1004, 'Adriana Lopez', '2988 Novel Rd, Staten Island, NY', '4444444444', 'adrilopez9831@gotmail11.com')

INSERT INTO Suppliers (Supp_Num, Supp_Name, Supp_Address, Supp_Phone, Supp_Email)
VALUES 
('2000', 'Walmart', '928 Tesla Dr San Antonio, TX', '1111111111', 'x@walmart.com'),
('2001', 'Quality Timber', '3902 River Rd  New York, NY', '2222222222', 'x@qualitytimber.com'),
('2002', 'Build with Ferguson', '9918 Fergus Blvd Fayetteville, AR', '3333333333', 'x@buildwithferguson.com'),
('2003', 'Woodworkers Supply', '389 Woody Ln Omaha, NE', '5555555555', 'x@woodworkssupply.com'),
('2004', 'Sallys Warehouse', '273 No Where St Albuquerque, NM', '3333333331', 'x@sallyswarehouse.com')


INSERT INTO Purchase_Order (PO_Num, PO_Date, Bill_Due_Date, Product_Type, Amount_Due, Pay_Status)
VALUES 
('1', '2022-07-01', '2022-07-31', 'Stains', 0, 'Paid'),
('2', '2022-07-14', '2022-08-13', 'Stains', 0, 'Paid'),
('3', '2022-07-16', '2022-08-15', 'Door', 1442, 'Unpaid'),
('4', '2022-07-18', '2022-08-17', 'Door Security', 0, 'Paid'),
('5', '2022-07-24', '2022-08-23', 'Kitchen Sink', 119, 'Unpaid')


INSERT INTO Product (Product_Num, Prod_Name, Prod_Desc, Prod_Price, Prod_Type, Supp_Num)
VALUES 
('8000', 'Antik Oak', 'Water Based Wood', 36, 'Stains', '2003'),
('8001', 'American Walnut', 'General Finishes GS Wood Stains', 37, 'Stains', '2003'),
('8002', 'Trimlite 36"W x 96', 'Entry Door', 2442, 'Door', '2002'),
('8003', 'Constructor Chronos', 'Door knob handle lock', 15, 'Door Security', '2000'),
('8004', 'Dayton Drop In', '4-Hole Kitchen Sink', 119, 'Kitchen Sink', '2001')


INSERT INTO PO_Line (PO_Num, Product_Num, Product_Qty)
VALUES 
('1', '8000', '2'),
('2', '8001', '3'),
('3', '8002', '1'),
('4', '8003', '1'),
('5', '8004', '1')


INSERT INTO Outgoing_Payments (Payment_ID, Supp_Num, Paid_Amount, Date_Paid)
VALUES 
('1', '2003', 96, '2022-07-11'),
('2', '2003', 159, '2022-07-21'),
('3', '2002', 1000, '2022-07-23'),
('4', '2000', 15, '2022-07-11'),
('5', '2001', '', '')


INSERT INTO Invoice (Inv_Num, Inv_Date, Days_Unpaid, Payment_ID, Paid_Status, Bal_Due, Cust_Num, Hours_Worked, Material_Cost)
VALUES 
('1', '2022-07-05', 'N/A', '1', 'Paid', 96, '1000', 1, 72),
('2', '2022-07-18', 'N/A', '2', 'Paid', 159, '1001',2, 111),
('3', '2022-07-20', '4', '3','Unpaid', 2502, '1002', 1, 2442),
('4', '2022-07-22', '2', '4','Paid', 45, '1003', 1, 15),
('5', '', '', '5', '', '', '1004', '', 119)

INSERT INTO Bid (Cust_Num, Inv_Num, Job_Desc, Bid_Amount, Bid_Date, Est_Hours, Material_Cost, Hourly_Rate, Job_Status, Cust_satisfied, Follow_Up_Status, Supp_Num)
VALUES 
('1000', '1', 'Paint Table', 96, '2022-06-18', 1, 72, 24, 'Completed', 'Yes', 'N/A', '2003'),
('1001', '2', 'Paint Door', 159, '2022-06-27', 2, 111, 24, 'Completed', 'Yes', 'N/A', '2003'),
('1002', '3', 'Replace Door', 2502, '2022-07-01', 1, 2442, 30, 'Completed', 'Yes', 'N/A', '2002'),
('1003', '4', 'Replace Lock', 45, '2022-07-04', 1, 15, 30, 'Completed', 'Yes', 'N/A', '2000'),
('1004', '5', 'Install Kitchen Sink', 200, '2022-07-11', 2, 119, 40.5, 'Started', 'N/A', 'N/A', '2001')


INSERT INTO Inv_Line (Inv_Line, Inv_Num, Product_Num, Product_Qty)
VALUES 
('1', '1', '8000', 2),
('1', '2', '8001', 3),
('1', '3', '8002', 1),
('1', '4', '8003', 1),
('1', '5', '8004', 1)

INSERT INTO Incoming_Payments (Payment_ID, Inv_Num, Paid_Amount, Date_Paid)
VALUES 
('1', '1', 60, '2022-07-07'),
('2', '2', 85, '2022-07-19'),
('3', '3', 1000, '2022-07-22'),
('4', '4', 45, '2022-07-24'),
('5', '5', '', '')
