use online_shopping_system_119;

---- 1 ----

select P_ID, P_Name, P_Price as 'Current Price', (P_Price - P_Price*0.1 )as 'New Price' from Product_Detail;

---- 2 ----

select O_I_ID, O_Total_Price as 'Current Price', (O_I_Quantity + 2) * O_I_Unit_Price as 'New Price' from Order_Item_Detail;

---- 3 ----

select P_Name from Product_Detail where P_Rating < 3;

---- 4 ----

select P_Name from Product_Detail where P_Price >= 20000;

---- 5 ----

select P_Name, P_Description from Product_Detail where P_Stock > 50;

---- 6 ----

select S_Address, S_City from Shipping_Detail where S_Status = 'Pending';

---- 7 ----

select C_ID, O_ID from Order_Detail where O_TotalAmout > 15000 and O_Status = 'Shipped';

---- 8 ----

select O_ID from Order_Detail where O_DateTime < '2023-01-01 00:00:00:000';

---- 9 ----

select count(O_Status) from Order_Detail where O_Status = 'Pending';

---- 10 ----

select O_ID, S_Address from Shipping_Detail where S_City = 'Rajkot';

---- 11 ----