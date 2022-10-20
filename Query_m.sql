


-- 1.Print part numbers and name of all parts.
Select Pno, Pname from part;

-- 2. Print part numbers for parts that either blue or red in color
Select Pno from part where (Color = 'Blue' or Color = 'Red');

-- --3. Print all shipment informantion where the quantity is in the range 300 to 750 inclusive
select * from SHIPMENT where (Qty)>=300 and (Qty)<=750;

-- --4. Print the supplier information by cities in alphabetic order
select * from supplier  order by City ASC;

-- --5. print the shipment information by price in descending numeric order
select * from SHIPMENT order by (Price) DESC;

-- --6. print the shipment information by Pno in ascending order, the by Sno in descending order
select * from SHIPMENT order by Pno ASC, Sno DESC;

-- --7. Print part number for all parts shipped by more than one supplier. You may use a count on this one.
select Pno from SHIPMENT  where Sno in 
(select Sno from SHIPMENT group by Pno,Sno having count(Sno)>1);

-- --8. Print the total number of suppliers(regardless of whether they are currently shipping any parts)..
select count(Sno) as TotalNoSuppliers from supplier;

-- --9. For each supplier currently shipping parts, print the total number of parts(i.e. sum of qty) it has shipped.
select Sno, sum(Qty) from Shipment group by Sno;

-- --10. Print supplier numbers for suppliers who ship P2 or P4.
Select Sno from Shipment where (Pno= 'P2' or Pno= 'P4');

-- --11. Print supplier numbers for suppliers who ship P2 and P4
Select Sno from Shipment where (Pno= 'P2' and Pno= 'P4');

-- --12. Print city where a supplier is located. Please eliminate all duplicate values and NULL.
select distinct City from supplier where city is not null;

-- --13. Print the part information whose name must be 3 characters, and either starts with 'C' or ends with 't'.
select * from part where Pname like '___' and (Pname like 'C%' or Pname like '%t');

-- --14. Print all information of the parts with the highest weight. 
select * from part where weight in 
(select max(weight) as weight from part);

-- --15. Print all information of the parts that doesnt have the lowest weight
select * from part where weight not in 
(select min(weight) as weight from part);



