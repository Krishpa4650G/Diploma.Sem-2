use online_shopping_system_119;

INSERT INTO Customer_Detail(C_ID, C_FirstName, C_MiddleName, C_LastName, C_ContactNo, C_Address, C_City, C_Zipcode, C_Country)

VALUES
(101, 'Khushbu', 'D', 'Patel', 9045781540, 'Kothariya road, Block 11', 'Rajkot', 360001, 'India'),
(102, 'Amit', 'A', 'Parmar', 9012345679, 'Ravapar road, Block 701', 'Morbi', 363641, 'India'),
(103, 'Priti', 'R', 'Ambani', 6012345787, '150 ft ring road, Block 301', 'Rajkot', 360001, 'India'),
(104, 'Payal', 'D', 'Vora', 8102365479, 'Sanala road, Block 501', 'Morbi', 363641, 'India'),
(105, 'Nikhil', 'F', 'Patel', 9154786230, 'Bhaktinagar street 3, Block 251', 'Jamnagar', 361001, 'India'),
(106, 'Shreya', 'J', 'Joshi', 8765123490, 'Lal Darwaja, Block 555', 'Rajkot', 360001, 'India'),
(107, 'Rahul', 'N', 'Jani', 2567891223, 'Chandani Chowk Street 5, Block 201', 'Jamnagar', 361001, 'India'),
(108, 'Shyam', 'A', 'Khimani', 1203456789, 'Moti Nagar, M-300', 'Bhavnagar', 364001, 'India'),
(109, 'Mayuri', 'K', 'Patel', 9045782350, 'Gondal road, Block 110', 'Rajkot', 360001, 'India'),
(110, 'Ekta', 'Y', 'Pandit', 9011345679, 'Meera road, Block D-101', 'Jamnagar', 361001, 'India');

SELECT * FROM Customer_Detail;

INSERT INTO Category_Detail (Cat_ID, Cat_Name, Cat_Description)
VALUES
(201, 'Electronics', 'wide range of electronic devices.'),
(202, 'Furniture', 'It includes items like sofas, tables, chairs, desks.'),
(203, 'Clothing', 'Clothes for men, women, and children.'),
(204, 'Groceries', 'food items and household supplies.'),
(205, 'Beauty Products', 'range of skincare, haircare, and cosmetic items.'),
(206, 'Footware', 'This category includes shoes, sandals, and Slippers');

SELECT * FROM Category_Detail;

INSERT INTO Product_Detail (P_ID, P_Name, P_Description, P_Price, P_StockQuantity, P_Rating)
VALUES
(301, 'Laptop', 'High-performance laptop for work, study, and gaming.', 60000, 50, 4.8),
(302, 'Mobile', 'Fast processing smartphone with best camera quality.', 27550, 25, 4.6),
(303, 'Smart watch', 'Fitness band with notifications and advanced health tracking features.', 4000, 40, 4.2),
(304, 'Shirt', 'Comfortable, stylish shirt suitable for casual and formal wear.', 1540, 42, 3.6),
(305, 'Sunglass', 'Stylish sunglasses with UV protection.', 800, 20, 4),
(306, 'Dining Table', 'Decore your modern and stylish dining area.', 20000, 10, 5),
(307, 'Office Chair', 'Designed for ultimate comfort during long work hours.', 4300, 10, 4.6),
(308, 'Kruta', 'Soft fabric, perfect for festive occasions.', 1050, 28, 3.5),
(309, 'Saree', 'Graceful saree suitable for festive and casual wear.', 5555, 70, 3.6),
(310, 'Facewash', 'Cleanses and refreshes skin effectively.', 199, 90, 4.2),
(311, 'Chess Board', 'Games for children', 2000, 23, 2.5),
(312, 'Noodles', 'Instant noodles for a quick meal anytime.', 200, 80, 3.5),
(313, 'Biscuit', 'Crunchy and delicious biscuits.', 150, 65, 4.8);

SELECT * FROM Product_Detail;

INSERT INTO Order_Detail (O_ID, O_DateTime, O_TotalAmout, O_Status, C_ID)
VALUES
(401, '2023-06-10 12:25:50.000', 143200, 'Pending', 104),
(402, '2023-04-15 10:02:10.002', 11110, 'Shipped', 101),
(403, '2022-01-11 13:30:30.030', 65250, 'Delivered', 105),
(404, '2023-05-07 11:11:00.020', 4620, 'Cancelled', 107),
(405, '2021-02-22 14:15:20.004', 27550, 'Shipped', 103),
(406, '2022-02-03 09:45:00.000', 18100, 'Shipped', 102),
(407, '2022-02-03 09:45:00.000', 2400, 'Pending', 102),
(408, '2023-05-23 11:30:45.001', 8600, 'Delivered', 107);

SELECT * FROM Order_Detail;

INSERT INTO Order_Item_Detail (O_I_ID, O_ID, P_ID, O_I_Quantity, O_I_Unit_Price, O_Total_Price)
VALUES
(501, 401, 301, 2, 60000, 120000),
(502, 401, 305, 4, 800, 3200),
(503, 401, 306, 1, 20000, 20000),
(504, 405, 302, 1, 27550, 27550),
(505, 403, 301, 1, 60000, 60000),
(506, 404, 304, 3, 1540, 4620),
(507, 403, 308, 5, 1050, 5250),
(508, 402, 310, 2, 5555, 11110),
(509, 406, 313, 6, 150, 900),
(510, 407, 305, 3, 800, 2400),
(511, 406, 307, 4, 4300, 17200),
(512, 408, 307, 2, 4300, 8600);

SELECT * FROM Order_Item_Detail;
exec sp_help  Order_Item_Detail

INSERT INTO Payment_Detail (OP_ID, O_ID, P_DateTime, P_Amount, P_Method, P_Status, C_ID)
VALUES
(601, 401, NULL, 143200, 'COD', 'Pending', 104),
(602, 402, '2023-04-15 10:15:15.002', 11110, 'UPI', 'Completed', 101),
(603, 403, '2022-01-11 13:40:40.030', 65250, 'UPI', 'Completed', 105),
(604, 404, '2023-05-07 11:16:00.020', 4620, 'Credit card', 'Refunded', 107),
(605, 405, NULL, 27550, 'COD', 'Pending', 103),
(606, 406, NULL, 18394, 'COD', 'Pending', 102),

(607, 407, '2022-02-03 09:57:00.000', 2400, 'UPI', 'Completed', 102),
(608, 408, '2023-05-27 11:40:45.001', 8600, 'COD', 'Completed', 107);

SELECT * FROM Payment_Detail;

INSERT INTO Shipping_Detail (S_ID, O_ID, S_Address, S_City, S_Zipcode, S_Country, S_DateTime, S_Status, S_TrackingNumber, C_ID)
VALUES
(701, 401, 'Kothariya road, Block 11', 'Jamnagar', 360001, 'India', '2023-06-16 12:25:50.000', 'Pending', 'F14O2RD540', 104),
(702, 402, 'Ravapar road, Block 701', 'Morbi', 363641, 'India', '2023-05-15 10:02:10.002', 'Completed', 'OE25000156', 101),
(703, 403, '150 ft ring road, Block 301', 'Jamnagar', 361001, 'India', '2022-01-17 13:30:30.030', 'Completed', 'AS100001UD', 105),
(704, 405, 'Near ST Street 2, Block 203', 'Bhavnagar', 364001, 'India', '2021-02-25 14:15:20.004', 'Completed', '5DKHT98AJ8', 103),
(705, 406, 'Lal Darwaja, Block 555', 'Rajkot', 360001, 'India', '2022-02-15 09:45:00.000', 'Pending', 'KS50R0067U', 102),
(706, 407, 'Lal Darwaja, Block 555', 'Rajkot', 360001, 'India', '2022-02-10 09:45:00.000', 'Completed', '23XZE57CK4', 102),
(707, 408, 'Sanala road, Block 501', 'Morbi', 363641, 'India', '2023-05-27 11:40:45.001', 'Completed', 'HSEQ632AB6', 107);


SELECT * FROM Shipping_Detail;