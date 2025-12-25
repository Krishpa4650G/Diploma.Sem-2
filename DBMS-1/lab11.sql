use online_shopping_system_119;
 
										----PART A----
----1----

SELECT Product_Detail.P_Name, Category_Detail.Cat_Name FROM Product_Detail JOIN Category_Detail ON Product_Detail.Cat_ID = Category_Detail.Cat_ID;

----2----

SELECT Customer_Detail.C_ID, Customer_Detail.C_FirstName, Order_Detail.O_ID, Order_Detail.O_TotalAmout FROM Customer_Detail JOIN Order_Detail ON Customer_Detail.C_ID = Order_Detail.C_ID;

----3----

SELECT 
    Product_Detail.P_ID, 
    Product_Detail.P_Name, 
    Order_Detail.Quantity AS ProductOrderItemQuantity, 
    Category_Detail.Cat_Name AS ProductCategoryName
FROM Product_Detail
JOIN Order_Detail ON Product_Detail.P_ID = Order_Detail.P_ID
JOIN Category_Detail ON Product_Detail.Cat_ID = Category_Detail.Cat_ID;

----4----

SELECT 
    C_ID, 
    C_FirstName AS CustomerName, 
    C_Address, 
    C_City
FROM Customer_Detail;

----5----

SELECT 
    Product_Detail.P_Name, 
    Order_Item_Detail.O_ID, 
    Order_Item_Detail.O_I_Quantity
FROM Product_Detail
LEFT OUTER JOIN Order_Item_Detail ON Product_Detail.P_ID = Order_Item_Detail.P_ID;

----6----

SELECT 
    Shipping_Detail.S_ID, 
    Shipping_Detail.S_TrackingNumber, 
    Order_Detail.O_ID, 
    Order_Detail.O_Status
FROM Order_Detail
RIGHT OUTER JOIN Shipping_Detail ON Order_Detail.O_ID = Shipping_Detail.O_ID;

----7----

SELECT 
    Category_Detail.Cat_ID, 
    Category_Detail.Cat_Name, 
    Product_Detail.P_Name
FROM Category_Detail
FULL OUTER JOIN Product_Detail ON Category_Detail.Cat_ID = Product_Detail.Cat_ID;

----8----

SELECT 
    Customer_Detail.C_FirstName AS CustomerName, 
    Order_Detail.O_ID 
FROM Customer_Detail
JOIN Order_Detail ON Customer_Detail.C_ID = Order_Detail.C_ID
WHERE Order_Detail.O_Status = 'Pending';

																----PART B----
----9----

SELECT 
    Customer_Detail.C_ID, 
    Customer_Detail.C_FirstName AS CustomerName, 
    Order_Detail.O_ID AS OrderID, 
    Product_Detail.P_Name AS OrderedProductName
FROM Customer_Detail
JOIN Order_Detail ON Customer_Detail.C_ID = Order_Detail.C_ID
JOIN Order_Item_Detail ON Order_Detail.O_ID = Order_Item_Detail.O_ID
JOIN Product_Detail ON Order_Item_Detail.P_ID = Product_Detail.P_ID;

----10----

SELECT DISTINCT Customer_Detail.C_ID, Customer_Detail.C_FirstName AS CustomerName
FROM Customer_Detail
JOIN Order_Detail ON Customer_Detail.C_ID = Order_Detail.C_ID
WHERE Order_Detail.O_TotalAmout = 'UPI';
----Error----
EXEC sp_help Order_Detail;
----11----

SELECT 
    Customer_Detail.C_ID, 
    Customer_Detail.C_FirstName AS CustomerName, 
    Order_Detail.O_ID 
FROM Customer_Detail
LEFT OUTER JOIN Order_Detail ON Customer_Detail.C_ID = Order_Detail.C_ID;

----12----

SELECT 
    Product_Detail.P_Name, 
    Category_Detail.Cat_Name
FROM Product_Detail
RIGHT OUTER JOIN Category_Detail ON Product_Detail.Cat_ID = Category_Detail.Cat_ID;

																----PART C----
----13----

SELECT 
    Customer_Detail.C_ID, 
    Customer_Detail.C_FirstName AS CustomerName, 
    Order_Detail.O_ID, 
    Order_Detail.O_Status
FROM Customer_Detail
JOIN Order_Detail ON Customer_Detail.C_ID = Order_Detail.C_ID
WHERE Order_Detail.O_Status = 'Canceled';

----14----

SELECT 
    O_ID AS OrderID, 
    O_TotalAmout AS OrderTotalPrice, 
    Order_Payment_Detail ----Error----
FROM Order_Detail;

----15----

SELECT C1.C_ID AS Customer1_ID, 
       C1.C_FirstName AS Customer1_Name, 
       C2.C_ID AS Customer2_ID, 
       C2.C_FirstName AS Customer2_Name, 
       C1.C_City
FROM Customer_Detail C1
JOIN Customer_Detail C2 ON C1.C_City = C2.C_City AND C1.C_ID < C2.C_ID
ORDER BY C1.C_City;

