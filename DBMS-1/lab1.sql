CREATE DATABASE online_shopping_system_119;
use online_shopping_system_119;
create table Customer_Detail(
C_ID int,
C_FirstName varchar(50),
C_MiddleName varchar(50),
C_LastName varchar(50),
C_ContactNo bigint,
C_Address varchar(50),
C_City varchar(50),
C_Zipcode int,
C_Country varchar(50),
)
EXEC SP_HELP Customer_Detail
create table Category_Detail (
Cat_ID int,
Cat_Name varchar(50),
Cat_Description varchar(70),
)
EXEC SP_HELP Category_Detail
create table Product_Detail (
P_ID int,
P_Name varchar(30),
P_Description varchar(100),
P_Price float,
P_StockQuantity int,
P_Rating float,
)
EXEC SP_HELP Product_Detail
create table Order_Detail(
O_ID int,
O_DateTime datetime,
O_TotalAmout float,
O_Status varchar(30),
C_ID int,
)
EXEC SP_HELP Order_Detail
create table Order_Item_Detail(
O_I_ID int,
O_ID int,
P_ID int,
O_I_Quantity int,
O_I_Unit_Price float,
O_Total_Price Float,
)
EXEC SP_HELP Order_Item_Detail
create table Payment_Detail(
OP_ID int,
O_ID int,
P_DateTime datetime,
P_Amount float,
P_Method varchar(30),
P_Status varchar(30),
C_ID int,
)
EXEC SP_HELP Payment_Detail
create table Shipping_Detail(
S_ID int,
O_ID int,
S_Address varchar(50),
S_City varchar(20),
S_Zipcode int,
S_Country varchar(20),
S_DateTime datetime,
S_Status varchar(10),
S_TrackingNumber varchar(10),
C_ID int,
)
EXEC SP_HELP Shipping_Detail