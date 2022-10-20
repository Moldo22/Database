CREATE DATABASE SHIPMENTS;
USE SHIPMENTS;


/*Creating table Supplier*/
Create Table SUPPLIER 
(
Sno varchar(5) PRIMARY KEY,
Sname varchar(50) NOT NULL,
Status int,
City varchar(100)
);
ALTER TABLE SUPPLIER ADD CONSTRAINT CHK_Status_Supplier CHECK (Status> 0);


/*Creating table Part*/
Create Table PART
(
Pno varchar(5) PRIMARY KEY,
Pname varchar(50) NOT NULL,
Color varchar(100),
Weight int ,
City varchar(100)
);
ALTER TABLE PART  ADD  CONSTRAINT CHK_Weight_PART CHECK (Weight > 1 AND Weight < 100);

/*Creating table SHIPMENT*/

Create Table SHIPMENT
(
Sno varchar(5) NOT NULL,
Pno varchar(5) NOT NULL,
Qty int  DEFAULT 100,
Weight int,
Price numeric(18,3),
CONSTRAINT PK_SHIPMENT PRIMARY KEY(Sno,Pno),
FOREIGN KEY (Sno) REFERENCES Supplier(Sno),
FOREIGN KEY (Pno) REFERENCES PART(Pno)
);




