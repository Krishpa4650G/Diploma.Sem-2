use online_shopping_system_119;

--1--
SELECT COUNT(*) FROM Customer_Detail;

--2--
SELECT COUNT(P_DateTime) FROM Order_Payment_Detail;

--3--
SELECT COUNT(P_Name) FROM Product_Detail;

--4--
SELECT SUM(P_Stock) FROM Product_Detail;

--5--
SELECT SUM(O_TotalAmout) FROM Order_Detail WHERE O_Status = 'Pending';

--6--
SELECT MAX(P_Price) FROM Product_Detail;


