use online_shopping_system_119;
								----PART-A----
----1----

SELECT CAST('1234.56' AS DECIMAL(10,2)) AS ConvertedNumber;

----2----

SELECT CAST(P_Rating AS INT) AS ConvertedRating FROM Product_Detail;

----3----

SELECT CONVERT(INT, 10.58) AS ConvertedNumber;

----4----

SELECT GETDATE() AS CurrentDateTime;

----5----

SELECT CONVERT(VARCHAR, GETDATE(), 103) AS FormattedDate;

----6----

SELECT FORMAT(O_DateTime, 'MM-dd-yyyy') AS FormattedDate FROM Order_Detail;

----7----

SELECT FORMAT(P_DateTime, 'MM/dd/yy hh:mm:ss tt') AS FormattedDateTime FROM Order_Payment_Detail;

----8----

SELECT DATEADD(MONTH, 10, GETDATE()) AS NextDate;

----9----

SELECT DATEADD(DAY, 5, GETDATE()) AS NextDate;

----10----

SELECT DATEDIFF(MONTH, '2022-08-20', '2024-06-11') AS MonthsDifference;

								----PART-B----

----11----

SELECT DATEDIFF(DAY, '2023-05-22', '2023-05-31') AS DaysDifference;

----12----

SELECT DATEDIFF(HOUR, '2022-01-11 13:40:40.030', '2022-01-17 13:30:30.030') AS HoursDifference;

----13----

SELECT DATEADD(YEAR, 3, GETDATE()) AS NextDate;

----14----

SELECT S_ID, FORMAT(S_DateTime, 'dd MMM yyyy hh:mm:ss tt') AS FormattedDateTime FROM Shipping_Detail;

								----PART-C----
----15.1----

SELECT DATEADD(HOUR, 2, GETDATE()) AS NextHour;

----15.2----

SELECT DATEDIFF(YEAR, '1995-06-15', GETDATE()) AS Age;
