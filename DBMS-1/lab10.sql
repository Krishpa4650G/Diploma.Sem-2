use online_shopping_system_119;
										----PART A----
----1----

SELECT LEN(C_Address) AS Address_Length FROM Customer_Detail;

----2----

SELECT Cat_Name FROM Category_Detail WHERE LEN(Cat_Name) < 10;

----3----

SELECT LOWER(P_Name) AS Product_Name_Lower, UPPER(P_Description) AS Product_Description_Upper FROM Product_Detail;

----4----

SELECT LEFT(C_ContactNo, 5) AS First_5_Digits FROM Customer_Detail;

----5----

SELECT RIGHT(C_City, 3) AS Last_3_Chars FROM Customer_Detail;

----6----

SELECT SUBSTRING('Diploma Computer, DIETDS',
                 CHARINDEX(' ', 'Diploma Computer, DIETDS') + 1,
                 CHARINDEX(',', 'Diploma Computer, DIETDS') - CHARINDEX(' ', 'Diploma Computer, DIETDS') - 1) AS Result;

----7----

SELECT LTRIM(RTRIM(SUBSTRING('Darshan University, Rajkot',
              CHARINDEX(',', 'Darshan University, Rajkot') + 1,
              LEN('Darshan University, Rajkot')))) AS Result;

----8----

SELECT REPLACE(column_name, 'Darshan College', 'Darshan University') AS modified_text FROM table_name;


----9----

SELECT REPLACE(P_Description, 'and', '&') AS modified_description FROM Product_Detail;


											----PART B----
----10----

SELECT SUBSTRING(C_Address, 5, 6) AS address_part FROM Customer_Detail;

----11----

SELECT REPLACE(P_Status, 'Completed', 'Success') AS updated_status FROM Order_Payment_Detail;

----12----

SELECT LEN('Hello from Darshan University') AS string_length;

----13----

SELECT REPLACE(C_Address, ' ', '-') AS modified_address FROM Customer_Detail;

										----PART C----
----14----

SELECT 
    C_FirstName,
    LEFT(C_Address, CHARINDEX(',', C_Address) - 1) AS Cust_Address
FROM Customer_Detail
WHERE CHARINDEX(',', C_Address) > 0;

----15----

SELECT Cat_Name, REVERSE(Cat_Name) AS reversed_name FROM Category_Detail;

----16----

SELECT 
    LEFT(C_Address, CHARINDEX(' ', C_Address) - 1) AS Cust_Name,
    RIGHT(C_Address, CHARINDEX(' ', REVERSE(C_Address)) - 1) AS Block_No
FROM Customer_Detail;

