use online_shopping_system_119;

						----PART-A----

----1----

select P_Name from Product_Detail where P_Rating = (select min(P_Rating)from Product_Detail)

----2----

SELECT c.CEmailID 
FROM Customer_Detail c  
JOIN Order_Detail O ON c.C_ID = O.C_ID 
GROUP BY c.C_ID 
ORDER BY SUM(O.O_TotalAmout) 

----3----

SELECT P_Name, P_Rating 
FROM Product_Detail 
WHERE P_Price = (SELECT MIN(P_Price) FROM Product_Detail WHERE Cat_ID = 201);


----4----

select P_Name from Product_Detail where P_Stock = (select max(P_Stock)from Product_Detail)

----5----

select O_ID from Order_Detail where C_ID IN (select C_ID from Customer_Detail where C_City='rajkot')

----6----

select C_FirstName , C_ContactNo 
from Customer_Detail 
where C_ID in (select C_ID from Order_Payment_Detail where P_Method = 'COD');

----7----

select P_Name,P_ID from Product_Detail p1
where P_Price > (select avg(P_Price) from Product_Detail p2 where p1.Cat_ID=p2.Cat_ID);

						----PART-B----

----8----

select * from Order_Detail 
where O_ID IN (select O_ID from Order_Payment_Detail where P_Method = 'UPI');

----9----

SELECT SUM(O_I_Quantity) AS Total_Laptops_Sold 
from Order_Item_Detail
WHERE P_ID IN (SELECT P_ID FROM Product_Detail WHERE P_Name = 'Laptop');

----10----

select * from Customer_Detail 
where C_ID in (select C_ID from Order_Payment_Detail where P_Method = 'COD');

						----PART-C----

----11----

select * from Customer_Detail
WHERE C_ID NOT IN (SELECT DISTINCT C_ID FROM Order_Detail);

----12----

SELECT P_ID, P_Name, Cat_ID, P_Rating
FROM Product_Detail
WHERE P_Name = 'Electronics'
ORDER BY P_Rating DESC;
----doubt----

----13----

select * from Order_Detail where O_TotalAmout = (select max(O_TotalAmout)from Order_Detail);

----14.1----

select * from Order_Detail where O_Status = 'Shipped' and O_TotalAmout > 10000;

----14.2----

SELECT P.P_Name FROM Product_Detail P 
JOIN Order_Item_Detail OI ON P.P_ID = OI.P_ID 
JOIN Order_Detail O ON OI.O_ID = O.O_ID 
WHERE O.C_ID = 102;

