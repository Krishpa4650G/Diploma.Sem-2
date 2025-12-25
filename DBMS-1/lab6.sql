use online_shopping_system_119;

---- 1 ----

select C_City, count(C_City) as 'Customer City Wise' from Customer_Detail group by C_City;

---- 2 ----

select C_City, count(C_City) as 'Customer City Wise' from Customer_Detail where C_City = 'Morbi' group by C_City;

---- 3 ----

select P_Name, sum(P_Price) as 'Product Price' from Product_Detail group by P_Name;

---- 4 ----

select count(P_Method) from Order_Payment_Detail where P_Method = 'UPI';

---- 5 ----

select S_City, count(S_City) as 'Shipping Data' from Shipping_Detail group by S_City;

---- 6 ----

select P_Name from Product_Detail order by P_Name;

---- 7 ----

select P_Name from Product_Detail order by P_Rating desc;

---- 8 ----

select P_Name from Product_Detail order by P_Price;

---- 9 ----

select Cat_ID, count(Cat_ID) as 'Product Category Wise' from Product_Detail group by Cat_ID;

---- 10 ----

select count(S_Status) from Shipping_Detail where S_Status = 'Completed';

---- 11 ----

select count(P_Amount) from Order_Payment_Detail where P_Amount > 30000;

---- 12 ----

select sum(P_Amount) from Order_Payment_Detail;

---- 13 ----

