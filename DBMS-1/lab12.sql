use online_shopping_system_119;

----1----
ALTER TABLE Customer_Detail ADD CONSTRAINT unique_H_EmailID UNIQUE (C_EmailID);
ALTER TABLE Shipping_Detail ADD CONSTRAINT unique_S_TrackingNumber UNIQUE (S_TrackingNumber);
ALTER TABLE Category_Detail ADD CONSTRAINT unique_Cat_Name UNIQUE (Cat_Name);

----2----
ALTER TABLE Customer_Detail MODIFY C_ID INT NOT NULL PRIMARY KEY;
ALTER TABLE Category_Detail MODIFY Cat_ID INT NOT NULL PRIMARY KEY;
ALTER TABLE Product_Detail MODIFY P_ID INT NOT NULL PRIMARY KEY;
ALTER TABLE Order_Detail MODIFY O_ID INT NOT NULL PRIMARY KEY;
ALTER TABLE Order_Item_Detail MODIFY O_I_ID INT NOT NULL PRIMARY KEY;
ALTER TABLE Order_Payment_Detail MODIFY OP_ID INT NOT NULL PRIMARY KEY;
ALTER TABLE Shipping_Detail MODIFY S_ID INT NOT NULL PRIMARY KEY;

----3----
ALTER TABLE Product_Detail ADD CONSTRAINT fk_Product_Category FOREIGN KEY (Cat_ID) REFERENCES Category_Detail (Cat_ID);
ALTER TABLE Order_Detail ADD CONSTRAINT fk_Order_Customer FOREIGN KEY (C_ID) REFERENCES Customer_Detail (C_ID);
ALTER TABLE Order_Item_Detail ADD CONSTRAINT fk_OrderItem_Order FOREIGN KEY (O_ID) REFERENCES Order_Detail (O_ID);
ALTER TABLE Order_Item_Detail ADD CONSTRAINT fk_OrderItem_Product FOREIGN KEY (P_ID) REFERENCES Product_Detail (P_ID);
ALTER TABLE Order_Payment_Detail ADD CONSTRAINT fk_OrderPayment_Order FOREIGN KEY (O_ID) REFERENCES Order_Detail (O_ID);
ALTER TABLE Order_Payment_Detail ADD CONSTRAINT fk_OrderPayment_Customer FOREIGN KEY (C_ID) REFERENCES Customer_Detail (C_ID);
ALTER TABLE Shipping_Detail ADD CONSTRAINT fk_Shipping_Order FOREIGN KEY (O_ID) REFERENCES Order_Detail (O_ID);
ALTER TABLE Shipping_Detail ADD CONSTRAINT fk_Shipping_Customer FOREIGN KEY (C_ID) REFERENCES Customer_Detail (C_ID);
