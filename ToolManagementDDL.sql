-- Group 6 Assignment2
-- CST2335
-- Student Names: Tsaichun Chang， Mayank Arora, Tianyang Huang

CREATE TABLESPACE TOOL_COLLECTION DATAFILE 'TOOL_COLLECTION.dat' SIZE 100M ONLINE;

CREATE USER group6 IDENTIFIED BY group6password ACCOUNT UNLOCK DEFAULT TABLESPACE TOOL_COLLECTION QUOTA 20M on TOOL_COLLECTION;

CREATE USER testUser1 IDENTIFIED BY test1Password ACCOUNT UNLOCK
	DEFAULT TABLESPACE TOOL_COLLECTION
	QUOTA 5M ON TOOL_COLLECTION;

CREATE ROLE applicationAdmin2;
CREATE ROLE applicationUser2;

GRANT CONNECT, RESOURCE, CREATE VIEW, CREATE TRIGGER, CREATE PROCEDURE TO applicationAdmin2;
GRANT CONNECT, RESOURCE TO applicationUser2;

GRANT applicationAdmin2 TO group6;
GRANT applicationUser2 TO testUser1;

CONNECT group6/group6password;


-- Is-a
CREATE TABLE Category (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(50)
 );

CREATE TABLE Tools (
  SKU INT NOT NULL PRIMARY KEY,
  Category_id INT NOT NULL,
  name VARCHAR(50)
 );

CREATE TABLE Tools_Category (
  id INT NOT NULL,
  STARTDATE TIMESTAMP DEFAULT NULL,
  ENDDATE TIMESTAMP DEFAULT NULL,
  Tools_SKU INT NOT NULL,
  Tools_name VARCHAR(50),
  Category_id INT NOT NULL,
  Category_name VARCHAR(50),
  PRIMARY KEY (Tools_SKU, Category_id, id)
);


CREATE VIEW ToolsCategoryView AS
SELECT
    Category.id AS Category_id,
    Category.name AS Category_name,
    Tools.SKU AS Tools_SKU,
    Tools.name AS Tools_name
FROM
    Category
JOIN
    Tools ON Category.id = Tools.Category_id;


-- Contains 
 CREATE TABLE Address (
  id INT NOT NULL PRIMARY KEY,
  Customer_id INT NOT NULL,
  postal_code VARCHAR(50) NOT NULL
);

CREATE TABLE Customer (
  id INT NOT NULL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE Customer_Address (
  id INT NOT NULL,
  STARTDATE TIMESTAMP DEFAULT NULL,
  ENDDATE TIMESTAMP DEFAULT NULL,
  Customer_id INT NOT NULL,
  Customer_name VARCHAR(50),
  Address_id INT NOT NULL,
  Address_postal_code VARCHAR(50),
  PRIMARY KEY (Customer_id,Address_id, id)
);


CREATE VIEW CustomerAddressView AS
SELECT
    Customer.id AS Customer_id,
    Customer.name AS Customer_name,
    Address.id AS Address_id,
    Address.postal_code AS postal_code
FROM
    Customer
JOIN
    Address ON Customer.id = Address.Customer_id;


-- Related to
CREATE TABLE "Order" (
  id INT NOT NULL PRIMARY KEY,
  tools_SKU INT NOT NULL,
  customer_id INT NOT NULL,
  FOREIGN KEY (tools_SKU) REFERENCES Tools (SKU),
  FOREIGN KEY (customer_id) REFERENCES Customer (id)
);

CREATE TABLE RevenueFromOrders (
  id INT NOT NULL PRIMARY KEY,
  Order_id INT NOT NULL,
  gross_revenue FLOAT NOT NULL,
  year INT NOT NULL
);

CREATE TABLE Order_Rev (
  id INT NOT NULL,
  STARTDATE TIMESTAMP DEFAULT NULL,
  ENDDATE TIMESTAMP DEFAULT NULL,
  Order_id INT NOT NULL,
  Order_tools_SKU INT,
  Order_customer_id INT,
  Rev_id INT NOT NULL,
  Rev_gross_revenue FLOAT,
  Rev_year INT,
  PRIMARY KEY (Order_id, Rev_id, id)
);

CREATE VIEW OrderRevenueView AS
SELECT
    "Order".id AS Order_id,
    "Order".tools_SKU AS Tools_SKU,
    "Order".customer_id AS Customer_id,
    RevenueFromOrders.id AS Revenue_id,
    RevenueFromOrders.gross_revenue AS Gross_revenue,
    RevenueFromOrders.year AS year
FROM
    "Order"
JOIN
    RevenueFromOrders ON "Order".id = RevenueFromOrders.Order_id;


-- Sequence for Category
CREATE SEQUENCE Category_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;


-- Sequence for Tools
CREATE SEQUENCE Tools_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;


-- Sequence for Address
CREATE SEQUENCE Address_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequence for Customer
CREATE SEQUENCE Customer_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequence for "Order"
CREATE SEQUENCE Order_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequence for RevenueFromOrders
CREATE SEQUENCE RevenueFromOrders_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequence for Tools_Category
CREATE SEQUENCE Tools_Category_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequence for Customer_Address
CREATE SEQUENCE Customer_Address_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Sequence for Order_Rev
CREATE SEQUENCE Order_Rev_SEQ
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;


-- Insert trigger for ToolsCategoryView
CREATE OR REPLACE TRIGGER InsertToolsCategoryView
INSTEAD OF INSERT ON ToolsCategoryView
FOR EACH ROW
DECLARE
    v_idcategory_id NUMBER;
    v_SKUtools NUMBER;
BEGIN
    INSERT INTO Category (id, name)
    VALUES (:NEW.Category_id, :NEW.Category_name)
    RETURNING id INTO v_idcategory_id;

    INSERT INTO Tools (SKU, Category_id, name)
    VALUES (:NEW.Tools_SKU, :NEW.Category_id, :NEW.Tools_name)
    RETURNING SKU INTO v_SKUtools;

    INSERT INTO Tools_Category(id, STARTDATE, Tools_SKU, Tools_name, Category_id, Category_name)
    VALUES (Tools_Category_SEQ.NEXTVAL, SYSDATE, v_SKUtools, :NEW.Tools_name, v_idcategory_id, :NEW.Category_name);
END;
/


-- Update trigger for CustomerAddressView
CREATE OR REPLACE TRIGGER InsertCustomerAddressView
INSTEAD OF INSERT ON CustomerAddressView
FOR EACH ROW
DECLARE
    v_idAddress NUMBER;
    v_idCustomer NUMBER;
BEGIN

    INSERT INTO Address (id, Customer_id, postal_code)
    VALUES (Address_SEQ.NEXTVAL, Customer_SEQ.NEXTVAL, :NEW.postal_code)
    RETURNING id INTO v_idAddress;

    INSERT INTO Customer (id, name)
    VALUES (Customer_SEQ.CURRVAL, :NEW.Customer_name)
    RETURNING id INTO v_idCustomer;

    INSERT INTO Customer_Address (id, STARTDATE, Customer_id, Customer_name, Address_id, Address_postal_code)
    VALUES (Customer_Address_SEQ.NEXTVAL, SYSDATE, v_idCustomer, :NEW.Customer_name, v_idAddress, :NEW.postal_code);
    
END;
/

-- Update trigger for OrderRevenueView
CREATE OR REPLACE TRIGGER InsertOrderRevenueView
INSTEAD OF INSERT ON OrderRevenueView
FOR EACH ROW
DECLARE
    v_idOrder NUMBER;
    v_idRev NUMBER;
BEGIN

    INSERT INTO "Order" (id, tools_SKU, customer_id)
    VALUES (Order_SEQ.NEXTVAL, :NEW.Tools_SKU, :NEW.Customer_id)
    RETURNING id INTO v_idOrder;

    INSERT INTO RevenueFromOrders (id, Order_id, gross_revenue, year)
    VALUES (RevenueFromOrders_SEQ.NEXTVAL, Order_SEQ.CURRVAL, :NEW.Gross_revenue, :NEW.year)
    RETURNING id INTO v_idRev;

    INSERT INTO Order_Rev (id, STARTDATE, Order_id, Order_tools_SKU, Order_customer_id, Rev_id, Rev_gross_revenue, Rev_year)
    VALUES (Order_Rev_SEQ.NEXTVAL, SYSDATE, v_idOrder, :NEW.Tools_SKU, :NEW.Customer_id, v_idRev, :NEW.Gross_revenue, :NEW.year);
    
END;
/




CREATE OR REPLACE TRIGGER UpdateToolsCategoryView
INSTEAD OF UPDATE ON ToolsCategoryView
FOR EACH ROW
BEGIN
    UPDATE Category
    SET name = :NEW.Category_name
    WHERE id = :NEW.Category_id;

    UPDATE Tools
    SET name = :NEW.Tools_name
    WHERE SKU = :NEW.Tools_SKU;

    UPDATE Tools_Category
    SET ENDDATE = SYSDATE
    WHERE Category_id = :NEW.Category_id AND Tools_SKU = :NEW.Tools_SKU AND ENDDATE IS NULL;

    INSERT INTO Tools_Category (id, STARTDATE, ENDDATE, Tools_SKU, Tools_name, Category_id, Category_name)
    VALUES (Tools_Category_SEQ.NEXTVAL, SYSDATE, NULL, :NEW.Tools_SKU, :NEW.Tools_name, :NEW.Category_id, :NEW.Category_name);
END;
/



CREATE OR REPLACE TRIGGER UpdateCustomerAddressView
INSTEAD OF UPDATE ON CustomerAddressView
FOR EACH ROW
BEGIN
    UPDATE Customer
    SET name = :NEW.Customer_name
    WHERE id = :NEW.Customer_id;

    UPDATE Address
    SET postal_code = :NEW.postal_code
    WHERE id = :NEW.Address_id;

    UPDATE Customer_Address
    SET ENDDATE = SYSDATE
    WHERE Customer_id = :NEW.Customer_id AND Address_id = :NEW.Address_id AND ENDDATE IS NULL;
   
    INSERT INTO Customer_Address (id, STARTDATE, ENDDATE, Customer_id, Customer_name, Address_id, Address_postal_code)
    VALUES (Customer_Address_SEQ.NEXTVAL, SYSDATE, NULL, :NEW.Customer_id, :NEW.Customer_name, :NEW.Address_id, :NEW.postal_code);
END;
/



CREATE OR REPLACE TRIGGER UpdateOrderRevenueView
INSTEAD OF UPDATE ON OrderRevenueView
FOR EACH ROW
BEGIN
    UPDATE "Order"
    SET tools_SKU = :NEW.Tools_SKU,
	customer_id = :NEW.Customer_id
    WHERE id = :NEW.Order_id;

    UPDATE RevenueFromOrders
    SET Order_id = :NEW.Order_id,
	gross_revenue = :NEW.Gross_revenue,
	year = :NEW.year
    WHERE id = :NEW.Revenue_id;

    UPDATE Order_Rev
    SET ENDDATE = SYSDATE
    WHERE Order_id = :NEW.Order_id AND Rev_id = :NEW.Revenue_id AND ENDDATE IS NULL;

    INSERT INTO Order_Rev (id, STARTDATE, ENDDATE, Order_id, Order_tools_SKU, Order_customer_id, Rev_id, Rev_gross_revenue, Rev_year)
    VALUES (Order_Rev_SEQ.NEXTVAL, SYSDATE, NULL, :NEW.Order_id, :NEW.Tools_SKU, :NEW.Customer_id, :NEW.Revenue_id, :NEW.Gross_revenue, :NEW.year);
END;
/



CREATE OR REPLACE TRIGGER DeleteToolsCategoryView
INSTEAD OF DELETE ON ToolsCategoryView
FOR EACH ROW
BEGIN
    -- Delete from Tools_Category table
    UPDATE Tools_Category
    SET ENDDATE = SYSTIMESTAMP
    WHERE Tools_SKU = :OLD.Tools_SKU AND Category_id = :OLD.Category_id AND ENDDATE IS NULL;

    -- Delete from ToolsCategoryView
    DELETE FROM Tools WHERE SKU = :OLD.Tools_SKU;

    Delete from Category WHERE id = :OLD.Category_id;
END;
/


CREATE OR REPLACE TRIGGER DeleteOrderRevenueView
INSTEAD OF DELETE ON OrderRevenueView
FOR EACH ROW
BEGIN
    -- Delete from Order_Rev table
    UPDATE Order_Rev
    SET ENDDATE = SYSTIMESTAMP
    WHERE Order_id = :OLD.Order_id AND Rev_id = :OLD.Revenue_id AND ENDDATE IS NULL;

    -- Delete from RevenueFromOrders table
    DELETE FROM RevenueFromOrders
    WHERE id = :OLD.Revenue_id;

    -- Delete from "Order" table
    DELETE FROM "Order"
    WHERE id = :OLD.Order_id;

END;
/


  
CREATE OR REPLACE TRIGGER DeleteCustomerAddressView
INSTEAD OF DELETE ON CustomerAddressView
FOR EACH ROW
BEGIN
    -- Update the ENDDATE in Customer_Address table
    UPDATE Customer_Address
    SET ENDDATE = SYSTIMESTAMP
    WHERE Customer_id = :OLD.Customer_id AND Address_id = :OLD.Address_id AND ENDDATE IS NULL;

    -- Delete from Customer table
    DELETE FROM Customer WHERE id = :OLD.Customer_id;

    -- Delete from Address table
    DELETE FROM Address WHERE id = :OLD.Address_id;

END;
/