use online_shopping_system_119;

--1--
alter table Customer_Detail add CEmailID varchar(50);

--2--
EXEC SP_HELP Customer_Detail
update Customer_Detail set CEmailID='khushbupatel@gmail.com' where C_ID=101;
update Customer_Detail set CEmailID='amitpatel@yahoo.com' where C_ID=102;
update Customer_Detail set CEmailID='pritiambani123@gmail.com' where C_ID=103;
update Customer_Detail set CEmailID='payalvora00000@yahoo.com' where C_ID=104;
update Customer_Detail set CEmailID='nikhilpatel@gmail.com' where C_ID=105;
update Customer_Detail set CEmailID='shreyajoshi@yahoo.com' where C_ID=106;
update Customer_Detail set CEmailID='rahuljani12345@gmail.com' where C_ID=107;
update Customer_Detail set CEmailID='shyamkhimani@gmail.com' where C_ID=108;
update Customer_Detail set CEmailID='mayuripatel00@gmail.com' where C_ID=109;
update Customer_Detail set CEmailID='ekta_p@yahoo.com' where C_ID=110;
SELECT * FROM Customer_Detail;

--3--
alter table Product_Detail add Cat_ID int;
EXEC SP_HELP Product_Detail;

--4--
update Product_Detail set Cat_ID=201 where P_ID=301;
update Product_Detail set Cat_ID=201 where P_ID=302;
update Product_Detail set Cat_ID=201 where P_ID=303;
update Product_Detail set Cat_ID=203 where P_ID=304;
update Product_Detail set Cat_ID=205 where P_ID=305;
update Product_Detail set Cat_ID=202 where P_ID=306;
update Product_Detail set Cat_ID=202 where P_ID=307;
update Product_Detail set Cat_ID=203 where P_ID=308;
update Product_Detail set Cat_ID=203 where P_ID=309;
update Product_Detail set Cat_ID=205 where P_ID=310;
update Product_Detail set Cat_ID=NULL where P_ID=311;
update Product_Detail set Cat_ID=204 where P_ID=312;
update Product_Detail set Cat_ID=204 where P_ID=313;
SELECT * FROM Product_Detail;

--5--
update Customer_Detail set C_Address='Green city main road,Block D-101' where C_ID=110;  
SELECT * FROM Customer_Detail;

--6--
update Product_Detail set P_Price=1700 where P_Name='Shirt';  
SELECT * FROM Product_Detail;

--7--
alter table Customer_Detail alter column C_FirstName nvarchar(70);
alter table Customer_Detail alter column C_MiddleName nvarchar(70);
alter table Customer_Detail alter column C_LastName nvarchar(70);
alter table Customer_Detail alter column C_Address nvarchar(70);
alter table Customer_Detail alter column C_City nvarchar(70);
alter table Customer_Detail alter column C_Country nvarchar(70);
EXEC SP_HELP Customer_Detail;

alter table Category_Detail alter column Cat_Name nvarchar(70);
alter table Category_Detail alter column Cat_Description nvarchar(70);
EXEC SP_HELP Category_Detail;

alter table Product_Detail alter column P_Name nvarchar(70);
alter table Product_Detail alter column P_Description nvarchar(70);
EXEC SP_HELP Product_Detail;

alter table Order_Detail alter column O_Status nvarchar(70);
EXEC SP_HELP Order_Detail;


alter table Payment_Detail alter column P_Method nvarchar(70);
alter table Payment_Detail alter column P_Status nvarchar(70);
EXEC SP_HELP Payment_Detail;


alter table Shipping_Detail alter column S_Address nvarchar(70);
alter table Shipping_Detail alter column S_City nvarchar(70);
alter table Shipping_Detail alter column S_Country nvarchar(70);
alter table Shipping_Detail alter column S_Status nvarchar(70);
alter table Shipping_Detail alter column S_TrackingNumber nvarchar(70);
EXEC SP_HELP Shipping_Detail;

--8--
EXEC SP_RENAME 'Payment_Detail','Order_Payment_Detail';
EXEC SP_HELP Order_Payment_Detail;

--9--
EXEC SP_RENAME 'Product_Detail.P_StockQuantity','P_Stock','COLUMN';
EXEC SP_HELP Product_Detail;

--10--
delete from Product_Detail where P_Name='Noodles';
select * from Product_Detail;

--11--
delete from Customer_Detail where C_ID=109;
select * from Customer_Detail;

--12--
alter table Category_Detail drop column Cat_Description; 
EXEC SP_HELP Category_Detail;

--13--
select * from Customer_Detail;

--14--
select C_ID,CEmailID,C_City from Customer_Detail;

--15--
select C_FirstName from Customer_Detail where C_City ='Rajkot';

--16--
select OP_ID from Order_Payment_Detail where P_Status ='Completed';


---------------------------------------------PART B(EXTRA)------------------------------------------------------------------


--17--
ALTER TABLE Customer_Detail DROP COLUMN C_MiddleName;
EXEC SP_HELP Customer_Detail;

--18--
SELECT P_Name, P_Price FROM Product_Detail;

--19--
SELECT P_Name, P_Rating FROM Product_Detail WHERE P_Name = 'Clothing';


---------------------------------------------PART C(EXTRA)------------------------------------------------------------------


--20--
SELECT P_Price FROM Product_Detail WHERE P_Name = 'Facewash';

--21--
SELECT * FROM Product_Detail WHERE Cat_ID IS NOT NULL;

