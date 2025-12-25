use online_shopping_system_119;
							----PART-A----
----1----

SELECT P_Name FROM Product_Detail WHERE P_Price<15000 AND P_Rating>3.5

----2----

SELECT C_ID , C_FirstName FROM Customer_Detail WHERE C_City IN ('Rajkot', 'Morbi');

----3----

SELECT O_ID, O_DateTime  FROM Order_Detail WHERE O_TotalAmout < 10000 AND O_Status = 'Delivered';

----4---

SELECT O_ID FROM Order_Detail WHERE O_TotalAmout BETWEEN 10000 AND 30000;

----5----

SELECT P_Name, P_Price  FROM Product_Detail WHERE Cat_ID = 201 OR Cat_ID = 203 OR Cat_ID = 204;

----6----

SELECT P_ID, P_Name FROM Product_Detail WHERE P_Name LIKE 'S%';

----7----

SELECT Cat_ID, Cat_Name FROM Category_Detail WHERE Cat_Name LIKE '%i__';

----8----

SELECT P_Name, P_Price FROM Product_Detail WHERE P_Name LIKE '%le';

----9----

SELECT O_ID, C_ID FROM Order_Detail WHERE O_DateTime BETWEEN '2022-01-01 00:00:00.000' AND '2022-02-28 00:00:00.000';

----10----

SELECT CONCAT(P_Name, ' – ', P_Description) AS Product_Details FROM Product_Detail;

							----PART-B----
----11----

SELECT C_FirstName, C_Address, C_ContactNo FROM Customer_Detail  where C_city NOT IN ('Rajkot', 'Morbi');

----12----

SELECT P_ID, P_Name, P_Description FROM Product_Detail WHERE P_Rating BETWEEN 3.0 AND 4.5;

----13----

SELECT C_FirstName FROM Customer_Detail WHERE C_FirstName LIKE '%i%';

----14----

SELECT CONCAT(C_FirstName, ' ', C_LastName) AS CustomerName FROM Customer_Detail;

								----PART-C----
----15----

SELECT C_ID, CONCAT(C_FirstName, ' ', C_LastName) AS CustomerName, CEmailID FROM Customer_Detail WHERE C_city NOT IN ('Rajkot', 'Jamnagar');

----16----

SELECT P_ID, P_Name, P_Stock FROM Product_Detail WHERE P_Stock BETWEEN 10 AND 50;

----17----

SELECT C_id, C_FirstName, C_City FROM Customer_Detail WHERE C_City IN ('Rajkot', 'Morbi') AND C_City NOT IN ('Bhavnagar', 'Jamnagar');

----18-----

SELECT * FROM Product_Detail WHERE P_Name NOT IN ('Laptop', 'Mobile');
