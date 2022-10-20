
USE SHIPMENTS;

-- inserting into supplier table
Insert into supplier (Sno, Sname, Status, City)
values
('s1','Smith',20,'London'),
('s2','Jones',10,'Paris'),
('s3','Blake',30,'Paris'),
('s4','Clark',20,'London'),
('s5','Adams',30,NULL);

-- --inserting into part table
Insert into part(Pno, Pname, Color, Weight, City)
values
('p1','Nut','Red',12,'London'),
('p2','Bolt','Green',17,'Paris'),
('p3','Screw',NULL,17,'Rome'),
('p4','Screw','Red',14,'London'),
('p5','Cam','Blue',12,'Paris'),
('p6','Cog','Red',19,'London');

-- --inserting into SHIPMENT table
Insert into SHIPMENT(Sno, Pno, Qty, Price)
values
('s1','p1',300,.005),
('s1','p2',200,.009),
('s1','p3',400,.004),
('s1','p4',200,.009),
('s1','p5',100,.01),
('s1','p6',100,.01),
('s2','p1',400,.006),
('s2','p2',200,.004),
('s3','p2',200,.009),
('s3','p3',200,NULL),
('s4','p2',200,.008),
('s4','p3',NULL,NULL),
('s4','p4',300,.006),
('s4','p5',400,.003);
