CREATE TABLE CLIENT_MASTER (
    CLIENTNO VARCHAR2(6) PRIMARY KEY,
    NAME VARCHAR2(20) NOT NULL,
    ADDRESS1 VARCHAR2(30),
    ADDRESS2 VARCHAR2(30),
    CITY VARCHAR2(15),
    PINCODE NUMBER(6),
    STATE VARCHAR2(15),
    BALDUE NUMBER(10,2),
    CONSTRAINT chk_clientno_prefix CHECK (SUBSTR(CLIENTNO, 1, 1) = 'C')
);

CREATE TABLE PRODUCT_MASTER (
    PRODUCTNO VARCHAR2(6) PRIMARY KEY,
    DESCRIPTION VARCHAR2(15) NOT NULL,
    PROFITPERCENT NUMBER NOT NULL,
    UNIT_MEASURE VARCHAR2(10) NOT NULL,
    QTYONHAND NUMBER(8) NOT NULL,
    REORDERLVL NUMBER(8) NOT NULL,
    SELLPRICE NUMBER(8,2) NOT NULL,
    COSTPRICE NUMBER(8,2) NOT NULL,
    CONSTRAINT chk_productno_prefix CHECK (SUBSTR(PRODUCTNO, 1, 1) = 'P')
);

CREATE TABLE SALESMAN_MASTER (
    SALESMANNO VARCHAR2(6) PRIMARY KEY,
    SALESMANNAME VARCHAR2(20) NOT NULL,
    ADDRESS1 VARCHAR2(30) NOT NULL,
    ADDRESS2 VARCHAR2(30),
    CITY VARCHAR2(20),
    PINCODE NUMBER(6),
    STATE VARCHAR2(20),
    SALAMT NUMBER(8,2) NOT NULL CHECK (SALAMT > 0),
    TGTTOGET NUMBER(6,2) NOT NULL CHECK (TGTTOGET > 0),
    YTDSALES NUMBER(6,2) NOT NULL,
    REMARKS VARCHAR2(60),
    CONSTRAINT chk_salesmannno_prefix CHECK (SUBSTR(SALESMANNO, 1, 1) = 'S')
);

--DATA INSERTION

-- Insert into CLIENT_MASTER table
INSERT ALL
    INTO CLIENT_MASTER (CLIENTNO, NAME, ADDRESS1, CITY, PINCODE, STATE, BALDUE) VALUES ('C00001', 'Ivan Bayross', 'ADDRESS1', 'Mumbai', 40005, 'Maharashtra', 15000)
    INTO CLIENT_MASTER (CLIENTNO, NAME, ADDRESS1, CITY, PINCODE, STATE, BALDUE) VALUES ('C00002', 'Mamta Muzumdar', 'ADDRESS1', 'Madras', 78000, 'Tamil Nadu', 0)
    INTO CLIENT_MASTER (CLIENTNO, NAME, ADDRESS1, CITY, PINCODE, STATE, BALDUE) VALUES ('C00003', 'Chhaya Bankar', 'ADDRESS1', 'Mumbai', 40005, 'Maharashtra', 5000)
    INTO CLIENT_MASTER (CLIENTNO, NAME, ADDRESS1, CITY, PINCODE, STATE, BALDUE) VALUES ('C00004', 'Ashwini Joshi', 'ADDRESS1', 'Bangalore', 56000, 'Karnataka', 0)
    INTO CLIENT_MASTER (CLIENTNO, NAME, ADDRESS1, CITY, PINCODE, STATE, BALDUE) VALUES ('C00005', 'Hansel Colaco', 'ADDRESS1', 'Mumbai', 40006, 'Maharashtra', 2000)
    INTO CLIENT_MASTER (CLIENTNO, NAME, ADDRESS1, CITY, PINCODE, STATE, BALDUE) VALUES ('C00006', 'Deepak Sharma', 'ADDRESS1', 'Mangalore', 56005, 'Karnataka', 0)
SELECT * FROM dual;

-- Insert into PRODUCT_MASTER table
INSERT ALL
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P00001', 'T-Shirt', 5, 'Piece', 200, 50, 350, 250)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P06734', 'Cotton Jeans', 5, 'Piece', 100, 20, 600, 450)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P07865', 'Jeans', 5, 'Piece', 100, 20, 750, 500)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P07965', 'Denim Jeans', 4, 'Piece', 100, 40, 350, 250)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175)
    INTO PRODUCT_MASTER (PRODUCTNO, DESCRIPTION, PROFITPERCENT, UNIT_MEASURE, QTYONHAND, REORDERLVL, SELLPRICE, COSTPRICE) VALUES ('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300)
SELECT * FROM dual;

-- Insert into SALESMAN_MASTER table
INSERT ALL
    INTO SALESMAN_MASTER (SALESMANNO, SALESMANNAME, ADDRESS1, ADDRESS2, CITY, PINCODE, STATE, SALAMT, TGTTOGET, YTDSALES) VALUES ('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra', 1000, 2000, 1500)
    INTO SALESMAN_MASTER (SALESMANNO, SALESMANNAME, ADDRESS1, ADDRESS2, CITY, PINCODE, STATE, SALAMT, TGTTOGET, YTDSALES) VALUES ('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra', 1200, 2200, 1600)
    INTO SALESMAN_MASTER (SALESMANNO, SALESMANNAME, ADDRESS1, ADDRESS2, CITY, PINCODE, STATE, SALAMT, TGTTOGET, YTDSALES) VALUES ('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra', 1300, 2300, 1700)
    INTO SALESMAN_MASTER (SALESMANNO, SALESMANNAME, ADDRESS1, ADDRESS2, CITY, PINCODE, STATE, SALAMT, TGTTOGET, YTDSALES) VALUES ('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra', 1400, 2400, 1800)
SELECT * FROM dual;

/* 2 a. Find out the names of all the clients. */
SELECT NAME FROM CLIENT_MASTER;                                                                                 

/* 2 b. Retrieve the entire contents of the Client_Master table. */
SELECT * FROM CLIENT_MASTER;

/* 2 c. Retrieve the list of names, city and the state of all the clients. */
SELECT NAME, CITY, STATE FROM CLIENT_MASTER;

/* 2 d. List the various products available from the Product_Master table. */
SELECT DESCRIPTION FROM PRODUCT_MASTER;

/* 2 e. List all the clients who are located in Mumbai. */
SELECT * FROM CLIENT_MASTER WHERE CITY = 'Mumbai';

/* 2 f. Find the names of salesman who have a salary equal to Rs.3000. */
SELECT SALESMANNAME FROM SALESMAN_MASTER WHERE SALAMT = 3000;

/* 3 a.  Change the city of ClientNo ‘C00005’ to ‘Bangalore’. */

UPDATE CLIENT_MASTER
SET CITY = 'Bangalore'
WHERE CLIENTNO = 'C00005';
Select *from CLIENT_MASTER;

/* 3 b. Change the BalDue of ClientNo ‘C00001’ to Rs.1000. */

UPDATE CLIENT_MASTER
SET BALDUE = 1000
WHERE CLIENTNO = 'C00001';
Select *from CLIENT_MASTER;      

/* 3 c. Change the cost price of ‘Trousers’ to rs.950.00. */ 

UPDATE PRODUCT_MASTER
SET COSTPRICE = 950.00
WHERE DESCRIPTION = 'Trousers';
Select *from PRODUCT_MASTER;

/* 3 d. Change the city of the salesman to Pune. */

UPDATE SALESMAN_MASTER
SET CITY = 'Pune';
Select *from SALESMAN_MASTER;

/* 4 a. Delete all salesman from the Salesman_Master whose salaries are equal to Rs.3500.  */

DELETE FROM SALESMAN_MASTER
WHERE SALAMT = 3500;
Select *from SALESMAN_MASTER; 

/* 4 b.  Delete all products from Product_Master where the quantity on hand is equal to 100  */

DELETE FROM PRODUCT_MASTER
WHERE QTYONHAND = 100;
Select *from PRODUCT_MASTER;   

/* 4 c. Delete from Client_Master where the column state holds the value ‘Tamil Nadu’. */          

DELETE FROM CLIENT_MASTER
WHERE STATE = 'Tamil Nadu';
Select *from CLIENT_MASTER;

/* 5a. Add a column called ‘Telephone’ of data type integer to the Client_Master table. */

ALTER TABLE CLIENT_MASTER
ADD TELEPHONE VARCHAR(15);
Select *from CLIENT_MASTER;


/* 5b. Change the size off SellPrice column in Product _Master to 10, 2. */
ALTER TABLE PRODUCT_MASTER
MODIFY SELLPRICE DECIMAL(10,2);
Select *from PRODUCT_MASTER;

/* 6A. Destroy the table Client_Master along with its data. */
DROP TABLE CLIENT_MASTER;