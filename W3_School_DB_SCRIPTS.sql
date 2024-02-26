-- W3SCHOOL  - Tutorials

 create database W3_SCHOOL
 use W3_School

 create table Customers
 (
 CustomerID	int primary key identity not null,
 CustomerName	varchar(100) not null,
 ContactName   varchar(100) not null,	
 Address	varchar(100) not null,
 City	varchar(100) not null,
 PostalCode	 varchar(100) not null,
 Country varchar(100)
 )

 insert into Customers(	CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
 values('Fahad',	'Anas Ahmad',	'Sultanpur, UP' ,	'Sultanpur',	'228119',	'India')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Ali ahamd siddiqui',	'Ali ahmad',	'Multan, PK' ,	 'Hyderabad',	'228117',	'Pakistan')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Kamran Sajid Ahmad',	'Kamran',	 'Baloch, PK' ,		'Khaiyber',		'228917',	 'Pakistan')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Akhmal',	'Aleem Ahmad',	'Atlanta, UK' ,	 'London',	 '22 WD 10',	 'UK')

insert into Customers(CustomerName,	ContactName	,Address,	City	,PostalCode,	Country) 
values('Ali',	'Zahid Ahmad',	'Abu dhabi, UAE' ,	 'Sharjah',	 '12 XD 009',	 'UAE')
 

 select * from Customers


 select DISTINCT Country from customers

 select distinct country,CustomerName from Customers

 select * from customers where customerid =1
 
 select * from customers where Country='UAE'

-- Operator					Description	
--=							Equal	
-->							Greater than	
--<							Less than	
-->=						Greater than or equal	
--<=						Less than or equal	
--<>						Not equal. Note: In some versions of SQL this operator may be written as !=	
--BETWEEN					Between a certain range	
--LIKE						Search for a pattern	
--IN						To specify multiple possible values for a column


select * from customers where CustomerID = 3
select * from customers where CustomerID > 3
select * from customers where CustomerID < 3
select * from customers where CustomerID >= 3
select * from customers where CustomerID <= 3
select * from customers where CustomerID <> 3
select * from customers where CustomerID != 3

select * from customers where CustomerID = 3


select * from customers where CustomerID Between  2 and 4 -- 2,3,4 records output
select * from customers where Country in ('India', 'Pakistan','UAE')

select * from Customers where customername  like  'F%'

select * from Customers where customername  like  '%F'

select * from Customers where customername  like  '_F%'

select * from Customers where customername  like  '__A%'

select * from Customers where customername  like  '%__A_%'

select * from Customers where customername  like  'A_%'

select * from Customers where customername  like  '%_A_%'

select * from Customers where customername  like  '_A_%'

select * from Customers where customername  like  'X%'


create table Products
(
ProductID	 int primary key identity,
ProductName	varchar(100),
SupplierID	int ,
CategoryID	 int,
Unit	varchar(100),
Price int
)

-- ORDER  BY clause
select * from Customers order by CustomerName asc
select * from Customers order by CustomerName desc
select * from Customers order by CustomerName 
select * from Customers order by CustomerName desc

--ORDER BY Several Columns
--The following SQL statement selects all customers from the "Customers" table,
--sorted by the "Country" and the "CustomerName" column. This means that it orders
--by Country, but if some rows have the same Country, it orders them by CustomerName:


select * from Customers order by Country,CustomerName
select * from Customers order by Country,Address,ContactName

select * from Customers order by country asc, CustomerName desc
select * from Customers order by city asc, ContactName desc

-- SQL AND Operator

select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'F%' or CustomerName like 'K%'


select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'A%'

select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'F%'

select * from Customers where Country in ('India','UAE','UK') and CustomerName like 'K%'

select * from Customers where country= 'India' and CustomerName like 'F%' and ContactName like 'A%' and Address like 'S%' and PostalCode like '2%'

select * from Customers where country= 'India' and CustomerName like 'F%' and PostalCode like '2%'  


select * from Customers where Country= 'India' and CustomerName ='Fahad' and PostalCode=228119

select * from customers where country = 'Pakistan' and customerName  like 'K%' or CustomerName like 'A%'

select * from customers where country = 'Pakistan' and (customerName  like 'K%' or CustomerName like 'A%')


-- OR Operator

select * from customers where country = 'India' or country = 'UK' or country = 'Pakistan'

select * from customers where country = 'India' and country = 'UK' or country = 'Pakistan'

select * from customers  where Country='India' or CustomerName = 'fahad' or PostalCode = '228117'

select * from Customers where country = 'India' and (CustomerName like 'F%' or ContactName like 'K%')

-- NOT Operator
-- NOT Equalto  = 
select * from Customers where NOT Country = 'India'
select  * from Customers where country != 'India'
select  * from Customers where country <> 'India'

-- not  like
select * from Customers where  CustomerName not  like  'F%'

-- not between
select * from Customers where CustomerID not between 2 and 4

-- not in
select * from Customers where country not in ('India', 'Pakistan')

-- not greater than
select  * from Customers where  not CustomerID   > 3
select  * from Customers where CustomerID  !> 3
select  * from Customers where  not CustomerID   >= 3


-- not leass than
select  * from Customers where  not CustomerID   < 3
select  * from Customers where CustomerID  !< 3
select  * from Customers where  not CustomerID   <= 3

-- INSERT INTO Syntax

--INSERT INTO table_name (column1, column2, column3, ...)
--VALUES (value1, value2, value3, ...);

--2. If you are adding values for all the columns of the table, 
--you do not need to specify the column names in the SQL query. However,
--make sure the order of the values is in the same order as the columns in the table.
--Here, the INSERT INTO syntax would be as follows:

--INSERT INTO table_name
--VALUES (value1, value2, value3, ...);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway')

select * from Customers

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK')



INSERT INTO Customers 
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK')


INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', '  '),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', ' '),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', '   ')

select * from Customers

--create table Products
--(
--ProductID	 int primary key identity,
--ProductName	varchar(100),
--SupplierID	int ,
--CategoryID	 int,
--Unit	varchar(100),
--Price int
--)

insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Refrigerator',1339,10,'500 units')
insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Television',1559,70,'940 units')
insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Iron',1669,50,'880 units')
insert into Products(ProductName,SupplierID,CategoryID,Unit) values('Trimmer',1669,80,'970 units')

select * from Products

-- What is NULL value ..?
--Note: A NULL value is different from a zero value or a field that contains spaces. 
--A field with a NULL value is one that has been left blank during record creation!

select * from Products where price is null
select price from Products where price is null

select ProductName, supplierID, CategoryID from Products where CategoryID is not null

update Products set ProductName='Touchpad' where ProductID=1

update Products set  price=900 where productID in (4,5)

select * from Products

delete from Products where ProductID=1

delete from Products -- delete whole table

drop table  Products

-- TOP Keyword

-- SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause

select top 2 * from products

select top 2  productName from Products where price = 500

select top 1 *, productName from Products 

select top 1  productName, * from Products 

--SELECT * FROM products
--FETCH FIRST 3 ROWS ONLY -- Oracle command

select top 50 percent * from products -- gives half record form table

select top 50 percent ProductName from Products

select TOP (3) ProductName from Products where price  = 500

select TOP(2) * from Products order by ProductName desc


-----------------------------------------------------------------------------------
-- The SQL MIN() and MAX() Function

select MIN(Price) from Products
select MIN(Price)  As MIN_Price from Products


select MAX(ProductName) from Products

select MAX(Price) from products

---------------------------------------------------------

select count(*) from Customers

select count(ProductName) from Products where Price > 300

select count(ProductName), ProductID from Products where Price > 300 group by productID


select * from Products

update products set price = 300  where productid between 6 and 7

SELECT COUNT(ProductName)
FROM Products

select COUNT(DISTINCT Price) from Products

select distinct price from products

select  count(distinct productname) from products

select  count(*) [no of records] from Products

select sum(Price) from Products

select sum(price) from products where productname='Laptop' or productname='Mobile'

select * from products
select sum(price * 500) from products
select sum(price * 800) from products

select sum(productID * Price) from products where productid =1
select sum(productID * Price) from products where productid =2
select sum(productID * Price) from products where productid =3
select sum(productID * Price) from products where productid =4

alter table products  add  Quantity int

update products set quantity = 300 where productid in (1,2,4,8)

update products set quantity = 200 where productid in (3,5)

update products set quantity = 100 where productid in (6,7)

select * from products

select sum (price * quantity ) from products where productid between 1 and 3

select avg(price) from products 

select * from products where price >  (select avg(price) from products ) -- sub query

--------------------------------------------------------------------------------------------------

-- WILD CARD OPERATOR

select * from products where ProductName like '%Mer%'

select * from products where ProductName like '%d'


select * from products where ProductName like 'T%'


select * from products where ProductName like 'T________N'


select * from products where ProductName like '[T]%'


select * from products where ProductName like '[TMI]%'


select * from products where ProductName like '[a-K]%'

select * from products where ProductName like '[a-z]%'


select * from products where ProductName like '[^a-K]%'


select * from products where ProductName like '[^a-z]%'

select * from products where ProductName like '![a-z]%'


select * from products where ProductName like '_E%'


select * from products where ProductName like 'Iron' -- no wild card applied


select * from products where ProductName like 'Te*'


--select * from products where ProductName like 'T[elevisio]N'

--select * from products where Price like '5#0'

--The SQL IN Operator

select  * from Customers where Country in ('India', 'Pakistan', 'UAE')

select  * from Customers where Country  not in ('India', 'Pakistan', 'UAE')

select  productname from products where productid in 
(select productID from products where price < 500)-- sub query

select  productname from products where productid not in 
(select productID from products where price < 500)

--The SQL BETWEEN Operator
--The BETWEEN operator selects values within a given range. 
--The values can be numbers, text, or dates.

--The BETWEEN operator is inclusive: begin and end values are included. 


select  * from products where price between 500 and 1000

select  * from products where price not between 500 and 700

select  * from products where price between 500 and 600 and productid in (1,2,3,4,5)

select * from products where productName between 'Desktop' and 'Laptop' order by productname

select * from products where productName not between 'Desktop' and 'Laptop' order by productname

-- BETWEEN Dates

--select * from products where orderdate between '09-20-1999' and '09-12-1999'

--SQL Aliases
--AS is Optional
--Actually, in most database languages, you can skip the AS keyword and get the same result:

SELECT CustomerID AS ID
FROM Customers

SELECT CustomerID  ID
FROM Customers

select customerid as customer_Num  , customername as Name from customers

select customerid as customer_Num  , customername as Name from customers as [Customer table]

select customerid as customer_Num  , customername as Name from customers as "Customer table"

select customerid as customer_Num  , customername as Name from customers as "Customer table" 

select productname from products as product where product.productid  in (1,9)

--Syntax
--When alias is used on column:

--SELECT column_name AS alias_name
--FROM table_name;

--When alias is used on table:

--SELECT column_name(s)
--FROM table_name AS alias_name;


select productname as "My Great products " from products 

--Concatenate Columns
--The following SQL statement creates an alias named "Address"
--that combine four columns (Address, PostalCode, City and Country):

select customername , address + ' ' + postalcode + ' ' + city + ' ' + country as address from Customers

select customername , (address + '  ' + city + '  ' + country + '  ' +  postalcode ) as "Customer address" from Customers as Customer

select customername , (address + ' ' + city + ' ' + country + '  ' +  postalcode ) as "Customer address" from Customers  Customer


select customername ,Concat (address, city , country, postalcode ) as "Customer address" from Customers  Customer


select customername , (address + SPACE(3) + city + SPACE(3) + country + SPACE(3) +  postalcode ) as "Customer address" from Customers  Customer

select customername , ('___'+ address + SPACE(3) + city + SPACE(3) + country + SPACE(3) +  postalcode ) as "Customer address" from Customers  Customer

--SELECT o.OrderID, o.OrderDate, c.CustomerName
--FROM Customers AS c, Orders AS o
--WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

select c.customerID, c.customername, p.productname from customers as c,  products as p where c.CustomerName = 'Fahad' or c.CustomerID = p.productID


select c.customername, c.address, p.productname, p.price from customers c
inner join products p on c.CustomerID = p.productid

select * from products
select * from Customers

alter table products add CustomerID int

update products set customerID = 1 where productID between 1 and 3

update products set customerID = 2 where productID in (4,5)

update products set customerID = 3 where productID in (6,7)

update products set customerID = 4 where productID = 8


select * from Customers C
join Products P on C.CustomerID = P.CustomerID

select C.CustomerID,C.customerName,C.ContactName,C.Country,P.CustomerID, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID


select CustomerID,C.customerName,C.ContactName,C.Country, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID-- Ambiguous column name 'CustomerID'


select C.CustomerID,C.customerName,C.ContactName,C.Country, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID


select C.CustomerID,C.customerName,C.ContactName,C.Country,CustomerID, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID-- Ambiguous column name 'CustomerID'

select C.CustomerID As Customerid,C.customerName,C.ContactName,C.Country,P.CustomerID, P.ProductName,P.SupplierID, P.Price,P.Quantity from Customers C
join Products P on C.CustomerID = P.CustomerID

select * from Customers C
left join Products P on C.CustomerID = P.CustomerID


select * from Customers C
left join Products P on C.CustomerID = P.CustomerID order by C.CustomerName


select * from  Products P
right join Customers C  on C.CustomerID = P.CustomerID order by p.ProductName


select * from  Products P
right join Customers C  on  P.CustomerID = C.CustomerID  order by p.ProductName


select * from  Customers C -- Customer table treated as left table
right join Products P   on C.CustomerID = P.CustomerID   order by p.ProductName


select * from  Products P
right join Customers C  on C.CustomerID = P.CustomerID order by ProductNAme

--SQL FULL OUTER JOIN Keyword


select * from  Products P
full outer join Customers C  on C.CustomerID = P.CustomerID order by ProductName


select * from  Products P
cross join Customers C  order by ProductNAme

--SQL Self Join


select * from  Products

select * from  Customers

alter table Products add City varchar(100)

update Products set City='Sultanpur' where ProductID in (1,2,3)

update Products set City='Hyderabad' where ProductID in (4,5,6)

update Products set City='Liverpool' where ProductID in (7,8)

select A.CustomerName As CustomerName_1 , B.CustomerNAme As CustomerName_2, A.City
from Customers A, Customers B
where A.CustomerID <> B.CustomerID And A.City = B.City
order by A.City


select A.ProductName As Product_1 , B.ProductName AS Product_2, A.City
from Products A, Products B
where A.ProductID <> B.ProductID
And A.City = B.City
Order by A.City


select A.ProductName As Product_1 , A.City
from Products A, Products B
where A.ProductID <> B.ProductID
And A.City = B.City
Order by A.City


--The SQL UNION Operator

--The UNION operator is used to combine the result-set of two or more SELECT statements.

--1. Every SELECT statement within UNION must have the same number of columns
--2. The columns must also have similar data types
--3. The columns in every SELECT statement must also be in the same order

select distinct City from Products
UNION
Select distinct City from Customers


select City from Products
UNION
Select City from Customers


--Hyderabad
--Khaiyber
--Liverpool
--London
--Sandnes
--Sharjah
--Stavanger
--Sultanpur


select City from Products
UNION
Select City from Customers
order by City



select City from Products
UNION ALL
Select City from Customers
order by City


alter table Products add Country varchar(100)


update Products set Country='India' where ProductID in (1,2,3)
					
update Products set Country='Pakistan' where ProductID in (4,5,6)
					
update Products set Country='UK' where ProductID in (7,8)



select * from Products

select City,Country from Products
where country = 'India'
UNION 
select City, Country from  Customers
where Country = 'India'
order by City

select City,Country from Products
where country = 'India'
UNION  ALL
select City, Country from  Customers
where Country = 'India'
order by City


SELECT 'CustomerName' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'ProductName', ProductName, City, Country
FROM Products


--group by
select COUNT(CustomerID) Total_Customers, Country from Customers group by Country

select COUNT(CustomerID) Total_Customers , Country from Customers group by Country
order by Count(CustomerID) desc


select COUNT(CustomerID) Total_Customers , Country from Customers group by Country
order by Count(CustomerID) desc


select C.CustomerName, P.ProductName, COUNT(P.ProductID) Total_Products from Products P
left join Customers C on C.CustomerID = P.CustomerID
group by CustomerName

select * from Products  P
left join Customers C on C.CustomerID = P.CustomerID

select COUNT(CustomerID) Tota_EMployee , Country from Customers
group by Country
having COUNT(CustomerID) > 2


select COUNT(CustomerID) Tota_EMployee , Country from Customers
group by Country
having COUNT(CustomerID) > 2
order by COUNT(CustomerID) Desc

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

Select Products.ProductName, COUNT(Customers.CustomerID) As NoOFCustomers
from (Products INNER JOIN Customers ON Customers.CustomerID = Products.CustomerID)
group by ProductName
having COUNT(Products.ProductID) < 10


--SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
--FROM Orders
--INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
--WHERE LastName = 'Davolio' OR LastName = 'Fuller'
--GROUP BY LastName
--HAVING COUNT(Orders.OrderID) > 25;


--The SQL EXISTS Operator
--The EXISTS operator is used to test for the existence of any record in a subquery.

--The EXISTS operator returns TRUE if the subquery returns one or more records.

--EXISTS Syntax
--SELECT column_name(s)
--FROM table_name
--WHERE EXISTS
--(SELECT column_name FROM table_name WHERE condition);


--select count(*) as [tables]
--   from sys.tables 

select * from Products
select * from Customers

select ProductName  from Products where Exists
(select customerName from Customers where Customers.CustomerID = Products.CustomerID and Products.Price< 1000)


select ProductName  from Products where Exists
(select customerName from Customers where Customers.CustomerID = Products.CustomerID and Price = 1000)



select ProductName,Products.Quantity  from Products where Exists
(select customerName from Customers where Customers.CustomerID = Products.CustomerID and Price = 500)


select * from Products join Customers
on Products.CustomerID = Customers.CustomerID

--The SQL ANY and ALL Operators
--The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.

--The SQL ANY Operator
--The ANY operator:

--returns a boolean value as a result
--returns TRUE if ANY of the subquery values meet the condition
--ANY means that the condition will be true if the operation is true for any of the values in the range.


--SELECT column_name(s)
--FROM table_name
--WHERE column_name operator ANY
--  (SELECT column_name
--  FROM table_name
--  WHERE condition);

SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);

  select ProductName from Products where ProductID = ANY (select CustomerID from Customers where PostalCode = '228119')

  select ProductName,productID from Products where ProductID = ANY (select CustomerID from Customers)
   
   select ProductName from Products where Products.ProductID = Customers.CustomerID

  select ProductName,ProductID from Products where ProductID = ANY (select CustomerID from Customers where PostalCode = '228119')
  
  select ProductName,ProductID from Products where ProductID = ANY (select CustomerID from Customers where CustomerID > 10)

    select CustomerName, CustomerID from Customers where CustomerID = ANY (select ProductID from Products where Price > 10)

	
    select CustomerName, CustomerID from Customers where CustomerID = ANY (select ProductID from Products where Price > 500)
  --its is basically comparioson of  single to ranges of values

  select * from Customers

  select ALL ProductName from products where true;


   select  ProductName from products where ProductID = ALL (Select CustomerID from Customers where PostalCOde = '228119')


   select  ProductName from products where ProductID = ALL (Select CustomerID from Customers where PostalCode = '228119')

   select  ProductName from products where ProductID = ALL (Select CustomerID from Customers where PostalCode = '228119')


       select CustomerName, CustomerID from Customers where CustomerID = ALL (select ProductID from Products where Price > 500)

       select CustomerName, CustomerID from Customers where CustomerID = ALL (select ProductID from Products)
	   -- nee to study in detail


--The SQL SELECT INTO Statement
--The SELECT INTO statement copies data from one table into a new table.

--SELECT INTO Syntax
--Copy all columns into a new table:


select * into BackupCustomer
from Customers

select * from Customers
select * from BackupCustomer

select * into CustomerBackup in 'PracticeBU' -- error
from Customers

SELECT * INTO CustomersBackup2017 IN 'Backup.mdb' -- error
FROM Customers;


SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;

select * from CustomersBackup2017


select * into CustomerIndia
from Customers 
where Customers.Country = 'India' or Customers.Country = 'Pakistan' or Customers.Country = 'Norway'  

select * from Customers

select * from CustomerIndia


select * into CustomerBackupJoin

GO
SET IDENTITY_INSERT [dbo].products ON

select Customers.CustomerName,Customers.CustomerID,Products.ProductName,Products.ProductID into CustomerBackupJoin_1
from  Customers 
join Products on Customers.CustomerID = Products.CustomerID

select * from CustomerBackupJoin_1

GO
SET IDENTITY_INSERT [dbo].products ON
select * into CustomerProductJoinRecords
from Customers join Products on Customers.CustomerID = Products.CustomerID


select * from Customers join Products 
 on Customers.CustomerID = Products.CustomerID

 
select * from Customers join Products 
 on Customers.CustomerID = Products.CustomerID

 select * from CustomerBackupJoin

 select * into Products_1
 from products where 1=0

 select * from Products_1


-- SQL INSERT INTO SELECT Statement
--The SQL INSERT INTO SELECT Statement
--The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

--The INSERT INTO SELECT statement requires that the data types in source and target tables match.

--Note: The existing records in the target table are unaffected.

--INSERT INTO SELECT Syntax
--Copy all columns from one table to another table:

--INSERT INTO table2
--SELECT * FROM table1
--WHERE condition;


insert into Products_1 select *  from Products where IDENTITY_INSERT is on

select * from Products

insert into Products_1(ProductName,SupplierID,CategoryID,Unit) 
select ProductName,SupplierID,CategoryID,Unit from Products

select * from Products_1


select * from BackupCustomer

select * into Customer_1
from Customers where 1=2

insert into Customer_1(CustomerName,ContactName,City,Country,Address,PostalCode)
select CustomerName,ContactName,City,Country,Address,PostalCode from Customers 
where Country in ('India','pakistan','Norway')

select * from Customer_1

Select * from  Products_1

insert into Products_1(Price,Quantity,CustomerID,City,Country)
select Price,Quantity,CustomerID,City,Country from Products


--The SQL CASE Expression
----The CASE expression goes through conditions and returns a value when the first condition is met 
--(like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

----If there is no ELSE part and no conditions are true, it returns NULL.

--CASE Syntax
--CASE
--    WHEN condition1 THEN result1
--    WHEN condition2 THEN result2
--    WHEN conditionN THEN resultN
--    ELSE result
--END;



select ProductID,Price,ProductName,
case 
		when Price = 500 then 'Price is equal to 500'
		when Price < 500 then 'Price is less than 500'
		when Price > 500 then 'Price is greater than 500'
		Else 'Price not matched'
end as PriceText
from Products


select CustomerID,CustomerName,Country
case 
		when Country = 'India' then 'Indian'
		when Country  != 'Indian' then 'Foriegner'
		--Else 'No country Matched'
end as Citizenship
from Customers

select * from Customers
select * from Products

SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);

SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN Country IS NULL THEN City
    ELSE Country
END);





--select CustomerName from cutomers
--case 
--when country = 'India' then country
--else country
--end as citizenship

--GO
--SET IDENTITY_INSERT [dbo].[Employee] ON 

select ProductName


CREATE TABLE dbo.Employee 
( 
EmployeeID INT IDENTITY PRIMARY KEY, 
EmployeeName VARCHAR(100) NOT NULL, 
Gender VARCHAR(1) NOT NULL, 
StateCode VARCHAR(20) NOT NULL, 
Salary money NOT NULL,
) 


GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

GO
SET IDENTITY_INSERT [dbo].[Employee] OFF

GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (201, N'Jerome', N'M', N'FL', 83000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (202, N'Ray', N'M', N'AL', 88000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (203, N'Stella', N'F', N'AL', 76000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (204, N'Gilbert', N'M', N'Ar', 42000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (205, N'Edward', N'M', N'FL', 93000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (206, N'Ernest', N'F', N'Al', 64000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (207, N'Jorge', N'F', N'IN', 75000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (208, N'Nicholas', N'F', N'Ge', 71000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (209, N'Lawrence', N'M', N'IN', 95000.0000)
GO
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeName], [Gender], [StateCode], [Salary]) VALUES (210, N'Salvador', N'M', N'Co', 75000.0000)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO

select * from Employee

select EmployeeName,Gender,
case
when gender = 'M' then 'Male'
when gender = 'F' then 'Female'
else 'Others'
end as GenderDefinition
from Employee

select CustomerName,ContactName,
case
when country = 'India' then 'Indian'
--when gender = '' then 'Female'
else 'Foreigner'
end as Citizenship
from Customers


select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
--when gender = '' then 'Female'
else 'Foreigner'
end as Citizenship
from Customers

select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'India' then 'Foreigner'
else 'No country found'
end as Citizenship
from Customers


select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'India' then 'Foreigner'
else 'No country found'
end --as Citizenship -- used only for aliasing
from Customers


select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'India' then 'Foreigner'
when country is null then 'Country column value is null'
when country is not null then 'No country found'
else 'No country found'
end as Citizenship -- used only for aliasing
from Customers

update Customers set Country = '  ' where CustomerID=13

go 
set IDENTITY_INSERT dbo.Customers on

GO
SET IDENTITY_INSERT [dbo].[Customers] OFF

insert into Customers(CustomerName,contactname,address,city,postalcode,country) values('Fahad ALi','Siddiqui','Atlanta, US','213122','Pakistan')

insert into Customers(CustomerName,contactname,address,city,postalcode,country) values('Fahad ALi','Siddiqui','Atlanta, US','213122','India')


select * from Customers


select CustomerName,ContactName,Country,City,
case
when country = 'KK' then 'Indian'
when country = 'PP' then 'Foreigner'
--else 'No country found'
end as Citizenship -- used only for aliasing
from Customers -- returns Null in citizenship column


select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'india' then 'Foreigner'
else 'No country found'
end as Citizenship -- used only for aliasing
from Customers -- returns Null in citizenship column

select * --City, Country 
from Customers

update Customers set City='Bunkingum' where CustomerID in (9,10)

select CustomerName,City,Country
from customers
order by (case 
when city is null then country
else city
end)


select CustomerName,City,Country
from customers
order by (case 
when Country is null then City
else City
end)



select CustomerName,ContactName,Country,City,
case
when country = 'India' then 'Indian'
when country <> 'india' then 'Foreigner'
else 'No country found'
end as Citizenship -- used only for aliasing
from Customers -- returns Null in citizenship column 

select CustomerName,City,Country,
case 
when Country = 'India' then 'Indian'
else City
end as MessageText
from Customers



select CustomerName,City,Country,
case 
when Country = 'India' then City
else City
end as MessageText
from Customers

select * from Products_1

-- SQL ISNULL(), COALESCE(), and NVL() Functions, IFNULL(), 

create table product
(
P_id int primary key identity,
ProductName varchar(100),
UnitPrice int,
UnitsInStock int,
UnitsOnOrder int,
)

insert into Product (ProductName,UnitPrice,UnitsInStock,UnitsOnOrder) values('Jarlsberg',10.45,16,15)
insert into Product (ProductName,UnitPrice,UnitsInStock) values('Laptop',10.89,11)		
insert into Product (ProductName,UnitPrice,UnitsInStock) values('Mobile',12.45,12)		
insert into Product (ProductName,UnitPrice,UnitsInStock,UnitsOnOrder) values('Trimmer',11.35,13,15)		

select * from product


SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder) as TotalAmount
FROM Product;

--SQL Server
--The SQL Server ISNULL() function lets you return an alternative value when an expression is NULL:

SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Product;
select * from product

--or we can use the COALESCE() function, like this:

SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Product;

select ProductName, Unitprice * (UnitsInStock + Coalesce(UnitsOnOrder, 1))
from Product

select  * from product

SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 10))
FROM Product;
select * from product


select ProductName, UnitPrice , ISNULL(UnitsOnOrder, 100) from Product

-- basically ISNULL Function NULL value ko kisi bhi value(Column type ke according) se replace kar deta hai.... in short yahi hai


select ProductName, UnitPrice , ISNULL(UnitsOnOrder, '') from Product
--'' -means 0


--What is a Stored Procedure?
--A stored procedure is a prepared SQL code that you can save, 
--so the code can be reused over and over again.

--So if you have an SQL query that you write over and over again, 
--save it as a stored procedure, and then just call it to execute it.

--You can also pass parameters to a stored procedure, so that the stored
--procedure can act based on the parameter value(s) that is passed.

--Stored Procedure Syntax

--CREATE PROCEDURE procedure_name
--AS
--sql_statement
--GO;

--Execute a Stored Procedure
--EXEC procedure_name;

create procedure Prodct_insertt
as
select * from product
go


EXEC Prodct_insertt

create procedure sp_Product_table_GET
@productid int
as
select * from product where P_id = @productid
go

exec sp_Product_table_GET  @productid=1



create procedure sp_Product_Record_GET
@productid int,
@ProductName varchar(100)
as
begin
select * from product where P_id = @productid and ProductName=@ProductName
end

exec sp_Product_Record_GET @productid =2, @productname='laptop'


--SQL Comments
--Single Line Comments
--Single line comments start with --.
--Any text between -- and the end of the line will be ignored (will not be executed).

--/*Multi-line Comments
--Multi-line comments start with /* and end with */.
--Any text between /* and */ will be ignored.
--The following example uses a multi-line comment as an explanation:

--------------------------------

-- Example

SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName;

-- SQL Operator 
-- W3SCHOOL Link -- https://www.w3schools.com/sql/sql_operators.asp

--Types of SQL Operators
--We have various SQL operators, and they are as follows:

--SQL Arithmetic operators
--SQL Comparison operators
--SQL Logical operators
--SQL Compound Operators
--SQL Bitwise Operators
--SQL Unary Operator

--SQL Arithmetic Operators

--Operator	Description	
--+			Add	
---			Subtract	
--*			Multiply	
--/			Divide	
--%			Modulo

-- Example
select 30+10 -- 40     
select 2*3 -- 6
select 25-3 -- 22
select 29/3-- 9
select 20%3 --2


--SQL Bitwise Operators -- need to study in detail

--Operator	Description
--&			Bitwise AND
--|			Bitwise OR
--^			Bitwise exclusive OR

--Example
select 10 & 20 -- 0
select 10 | 20 -- 30
select 10 ^ 20 -- 30

select 10 & 10 -- 10
select 10 | 20 -- 30
select 10 ^ 20 -- 30

--How does bitwise & operator work?
--Remarks. The bitwise AND operator ( & ) compares each bit of the first operand to the 
--corresponding bit of the second operand. If both bits are 1, the corresponding result
--bit is set to 1. Otherwise, the corresponding result bit is set to 0.

--SQL Comparison Operators
--Operator		Description	
--1	=				Equal to	
--2	>				Greater than	
--3	<				Less than	
--4	>=				Greater than or equal to	
--5	<=				Less than or equal to	
--6	<>				Not equal to
--7	!<				Not less than
--8	!=				Not Equal to
--9	! >				Not greater than


--Example

select * from product where UnitsInStock > 20 
select * from product where UnitsInStock < 20 
select * from product where UnitsInStock >= 20 
select * from product where UnitsInStock <= 20 
select * from product where UnitsInStock = 11 
select * from product where UnitsInStock <> 20 


--SQL Compound Operators

--Operator			Description
--	+=						Add equals
--	-=						Subtract equals
--	*=						Multiply equals
--	/=						Divide equals
--	%=						Modulo equals
--	&=						Bitwise AND equals
--	^-=						Bitwise exclusive equals
--	|*=						Bitwise OR equals


--Compound operators execute some operation and set an original value to the result of the operation.
--For example, if a variable @x equals 35, then @x += 2 takes the original value of @x, 
--add 2 and sets @x to that new value (37). Adds some amount to the original value and 
--sets the original value to the result.

declare @a int 
declare @b int =10

select (UnitsInStock+=10)  from Product

select UnitsInStock from product

--SQL Logical Operators
--	  Operator				Description	
--1		ALL						TRUE if all of the subquery values meet the condition	
--2		AND						TRUE if all the conditions separated by AND is TRUE	
--3		ANY						TRUE if any of the subquery values meet the condition	
--4		BETWEEN					TRUE if the operand is within the range of comparisons	
--5		EXISTS					TRUE if the subquery returns one or more records	
--6		IN						TRUE if the operand is equal to one of a list of expressions	
--7		LIKE					TRUE if the operand matches a pattern	
--8		NOT						Displays a record if the condition(s) is NOT TRUE	
--9		OR						TRUE if any of the conditions separated by OR is TRUE	
--10	SOME					TRUE if any of the subquery values meet the condition


-----------------===========================================================-----------------------------------------

--SQL Database

--create database databasename
--create database testDB
--drop database testDB


--The SQL BACKUP DATABASE Statement
--The BACKUP DATABASE statement is used in SQL Server 
--to create a full back up of an existing SQL database.

--Syntax
BACKUP DATABASE databasename
TO DISK = 'filepath';


--The SQL BACKUP WITH DIFFERENTIAL Statement
--A differential back up only backs up the parts of the database
--that have changed since the last full database backup.

--Syntax
BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;


--BACKUP DATABASE Example
--The following SQL statement creates a full back up of the 
--existing database "testDB" to the D disk:

--Example
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

backup database  W3_SCHOOL
to disk = 'C:\DatabaseBackup\W3_SCHOOL.bak'


--BACKUP WITH DIFFERENTIAL Example
--The following SQL statement creates a differential back up of the database "testDB":

--Example
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;
--Tip: A differential back up reduces the back up time (since only the changes are backed up).\


--<<<<<<< HEAD
select * from product
--=======
------------------------------Learning from 22/02/24--------------------------------------------

CREATE TABLE Persons (
    PersonID int primary key identity,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
	Pincode int,
	birthday date 
)

select * from persons
																													   MM/DD/YYYY -- insert in this format 12/15/2024
insert into Persons(lastName,FirstName,Address,City,Pincode,Birthday)values('Ali','Fahad','Lucknow','Aminabad',228119,GETDATE())
insert into Persons(lastName,FirstName,Address,City,Pincode,Birthday)values('Ali','Hmza','Lucknow','Aminabad' ,228199,GETDATE())
insert into Persons(lastName,FirstName,Address,City,Pincode,Birthday)values('Ali','Anand','Lucknow','Aminabad',228019,GETDATE())
insert into Persons(lastName,FirstName,Address,City,Pincode,Birthday)values('Ali','Anas','Lucknow','Aminabad' ,228179,GETDATE())
																													   YYYY/MM/DD -- result in -- 2024-12-15

																													   																											   MM/DD/YYYY -- insert in this format 12/15/2024
insert into Persons(lastName,FirstName,Address,City,Pincode)values('Ali','Fahad','Lucknow','Aminabad',228119)
insert into Persons(lastName,FirstName,Address,City,Pincode)values('Ali','Hmza','Lucknow','Aminabad' ,228199)
insert into Persons(lastName,FirstName,Address,City,Pincode)values('Ali','Anand','Lucknow','Aminabad',228019)
insert into Persons(lastName,FirstName,Address,City,Pincode)values('Ali','Anas','Lucknow','Aminabad' ,228179)
																													   

drop table persons


CREATE TABLE Student_Backup AS
table persons

CREATE TABLE contact_backup 
AS TABLE contacts

--The SQL DROP TABLE Statement
--The DROP TABLE statement is used to drop an existing table in a database.

drop table persons

select * from persons

--SQL TRUNCATE TABLE
--The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.

truncate table persons

--SQL ALTER TABLE Statement

--The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
--The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

--ALTER TABLE - ADD Column
--To add a column in a table, use the following syntax:

--ALTER TABLE table_name
--ADD column_name datatype;

ALTER TABLE persons
ADD Pincode varchar(100)  default text '228119'

alter table persons add email varchar(100)

select * from persons


--ALTER TABLE - DROP COLUMN
--To delete a column in a table, use the following syntax (notice that some database systems don't allow deleting a column):

--ALTER TABLE table_name
--DROP COLUMN column_name;


alter table persons
drop column email

alter table persons drop column country

--ALTER TABLE - RENAME COLUMN
--To rename a column in a table, use the following syntax:

--ALTER TABLE table_name
--RENAME COLUMN old_name to new_name;

alter table persons
rename column PersonID to Id

--ALTER TABLE - ALTER/MODIFY DATATYPE
--To change the data type of a column in a table, use the following syntax:

--SQL Server / MS Access:

--ALTER TABLE table_name
--ALTER COLUMN column_name datatype;

alter table Persons
alter column FirstName int

alter table Persons
alter column Pincode varchar(100)

alter table persons
drop column Country

insert into  Persons(Pincode)values('Fa1232')

select * from  Persons

alter table Persons
drop column Birthday


--alter table Persons
--alter column  Birthday year -- not valid in SQL may be

--date type take date in MDY format and returns in YMD

alter table persons
add birthday date 



--SQL Constraints

--SQL Create Constraints
--Constraints can be specified when the table is created with the CREATE TABLE statement,
--or after the table is created with the ALTER TABLE statement.

--CREATE TABLE table_name (
--    column1 datatype constraint,
--    column2 datatype constraint,
--    column3 datatype constraint,
--    ....
--);


--Constraints can be column level or table level. Column level constraints apply to a column, 
--and table level constraints apply to the whole table.

--NOT NULL			- Ensures that a column cannot have a NULL value
--UNIQUE			- Ensures that all values in a column are different
--PRIMARY KEY		- A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
--FOREIGN KEY		- Prevents actions that would destroy links between tables
--CHECK				- Ensures that the values in a column satisfies a specific condition
--DEFAULT			- Sets a default value for a column if no value is specified
--CREATE INDEX		- Used to create and retrieve data from the database very quickly


create table ConstraintsCheck
(
id int primary key identity,
name varchar(100) not null,
Country varchar(100) unique,
status int default 0,
)


insert into ConstraintsCheck(name,country) values('Fahad Ali','Pakistan')

insert into ConstraintsCheck(name,country) values('','UAE')
insert into ConstraintsCheck(name,country) values('','Kuwait')

select * from ConstraintsCheck



CREATE TABLE Student (
    ID int NOT NULL unique identity,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
)


insert into Student(lastName,FirstName)values('Ali','Fahad')

insert into Student(lastName,FirstName)values('Ali','Fahad')
insert into Student(lastName,FirstName,Age)values('Siddiqui','Hamza',23)


select * from Student

--SQL NOT NULL on ALTER TABLE
--To create a NOT NULL constraint on the "Age" column when the "Persons" table is already created, use the following SQL:

--SQL Server / MS Access:

--ALTER TABLE Persons
--ALTER COLUMN Age int NOT NULL;

Alter table Student
alter column age int not null

delete from Student where id =1

--SQL UNIQUE Constraint
--The UNIQUE constraint ensures that all values in a column are different.

--Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness 
--for a column or set of columns.

--A PRIMARY KEY constraint automatically has a UNIQUE constraint.
--However, you can have many UNIQUE constraints per table, but only 
--one PRIMARY KEY constraint per table.


--To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple 
--columns, use the following SQL syntax:

CREATE TABLE Employeerec (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID,LastName)
)

insert into Employeerec(id,Lastname,firstname,age)values(1,'Fahad','Ali','23')
insert into Employeerec(id,Lastname,firstname,age)values(2,'hamza','Ali','23')
insert into Employeerec(id,Lastname,firstname,age)values(3,'Anas','Ali','23')
insert into Employeerec(id,Lastname,firstname,age)values(1,'Kamal','Ali','23')

select * from Employeerec

create table Library
(
id int not null,
book varchar(100) not null,
subject varchar(100) not null,
department varchar(200),
constraint UK_Library UNIQUE (id,book,subject,department)
)


insert into Library(id,book,subject,department)values(1,'Maths','Maths','Engineering')
insert into Library(id,book,subject,department)values(2,'English','Literature','Management')
insert into Library(id,book,subject,department)values(3,'Hindi','Sahitya','BBC')
insert into Library(id,book,subject,department)values(4,'Science','Tech','Social')

select * from Library

ALTER TABLE Persons
ADD UNIQUE (PersonID)

select * from Persons

alter table Persons
add unique (LastName)

--To name a UNIQUE constraint, and to define a UNIQUE constraint on multiple columns,
--use the following SQL syntax:

--MySQL / SQL Server / Oracle / MS Access:

--ALTER TABLE Persons
--ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);

--UC_Person   is a name of unique Constarints

--DROP a UNIQUE Constraint
--To drop a UNIQUE constraint, use the following SQL:

--MySQL:

--ALTER TABLE Persons
--DROP INDEX UC_Person;

--alter table Library
--drop index UK_Library -- The operation 'ALTER TABLE DROP INDEX' is supported only with memory optimized tables.

--SQL Server / Oracle / MS Access:

--ALTER TABLE Persons
--DROP CONSTRAINT UC_Person;

alter table Library
drop CONSTRAINT UK_Library  -- remove constrains from whole column


insert into Library(id,book,subject,department)values(1,'Maths','Maths','Engineering')
insert into Library(id,book,subject,department)values(2,'English','Literature','Management')
insert into Library(id,book,subject,department)values(3,'Hindi','Sahitya','BBC')
insert into Library(id,book,subject,department)values(4,'Science','Tech','Social')

select * from Library


--SQL PRIMARY KEY Constraint
--The PRIMARY KEY constraint uniquely identifies each record in a table.

--Primary keys must contain UNIQUE values, and cannot contain NULL values.

--A table can have only ONE primary key; and in the table, this primary key can 
--consist of single or multiple columns (fields).


CREATE TABLE registration (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
)

insert into registration(ID,lastName,FirstName,Age) values(1,'Fahad','Ali',34)
insert into registration(lastName,FirstName,Age) values('Fahad','Ali',34)
insert into registration(ID,lastName,FirstName,Age) values(2,'Fahad','Ali',34)

CREATE TABLE registration_1 (
    ID int PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
)

insert into registration_1(ID,lastName,FirstName,Age) values(1,'Fahad','Ali',34)
insert into registration_1(lastName,FirstName,Age) values('Fahad','Ali',34)
insert into registration_1(ID,lastName,FirstName,Age) values(1,'Fahad','Ali',34)


--CREATE TABLE Persons (
--    ID int NOT NULL,
--    LastName varchar(255) NOT NULL,
--    FirstName varchar(255),
--    Age int,
--    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
--)
--Note: In the example above there is only ONE PRIMARY KEY (PK_Person). 
--However, the VALUE of the primary key is made up of TWO COLUMNS (ID + LastName).
-- in simple word 2 column ki value ko milake ek primary bani hai.
-- dono ki alag alag value deke insert kar sakte hia

create table CompanyX
(
id int not null,
lastname varchar(100),
age int,
constraint pk_CompanyX Primary key (id,lastname)
)

insert into CompanyX(id,lastname,age)values(1,'Fahad',23)

select * from CompanyX

insert into CompanyX(id,lastname,age)values(2,'Ali',23)
insert into CompanyX(id,lastname,age)values(2,'fahad',23)

--SQL PRIMARY KEY on ALTER TABLE
--To create a PRIMARY KEY constraint on the "ID" column when the table is already created, use the following SQL:

--MySQL / SQL Server / Oracle / MS Access:

--ALTER TABLE Persons
--ADD PRIMARY KEY (ID);


create table tbPrimary(
id int ,
name varchar(100),
age int
)
alter table tbPrimary
add primary key (id)

alter table tbprimary
alter column id int not null

--Note: If you use ALTER TABLE to add a primary key, the primary key column(s) 
--must have been declared to not contain NULL values (when the table was first created).

--DROP a PRIMARY KEY Constraint
--To drop a PRIMARY KEY constraint, use the following SQL:

ALTER TABLE Persons
DROP CONSTRAINT PK_Person;

alter table CompanyX
drop constraint pk_CompanyX  -- iske liye hamare pass constraint ka name hona chaiyre nahi to possible nahi hai

--SQL FOREIGN KEY Constraint
--The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.

--A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.

--The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.


--SQL FOREIGN KEY on CREATE TABLE
--The following SQL creates a FOREIGN KEY on the "PersonID" column when the "Orders" table is created:

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY ,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons_1(PersonID)
);

create table Persons_1
(
PersonID int not null primary key identity,
name varchar(100),
age int
)

select * from Orders
select * from Persons_1

insert into Orders(OrderID,OrderNumber,PersonID)values(3,345,1)
insert into Orders(OrderID,OrderNumber,PersonID)values(4,345,3)
insert into Orders(OrderID,OrderNumber,PersonID)values(5,345,1)

insert into Persons_1(name,age)values('Fahad',25)
insert into Persons_1(name,age)values('Ali',28)
insert into Persons_1(name,age)values('Kmaran',26)

-- agar kisi table ki primary key me jo value hoti hai wahi value doosri table ki reference key me ho sakti hia.


create table COllege  -- parent Table/ Referenced table
(
CollegeID int not null primary key identity,
colname varchar(100),
Address varchar(100)
)


insert into College(colname,address)values('KNIPSS','Sultanpur')
insert into College(colname,address)values('RRSMT','USA')
insert into College(colname,address)values('Cambridge','Canada')

create table School -- child table
(
id int primary key identity not null,
name varchar(100),
city varchar(100),
CollegeID int FOREIGN KEY REFERENCES College(CollegeID)
)


insert into School(name,city,collegeid)values('Cognt','Noida',1)
insert into School(name,city,collegeid)values('Cognt','Noida',2)
insert into School(name,city,collegeid)values('Cognt','Noida',3)

select * from College
select * from School
>>>>>>> e93bd937159d21627d844d657e8aea0e11bf0689




<<<<<<< HEAD



=======
create table LibraryBook -- child table
(
id int primary key identity not null,
name varchar(100),
city varchar(100),
LibraryKey int FOREIGN KEY REFERENCES College(CollegeID)
)

insert into LibraryBook(name,city,librarykey)values('jamia','Delhi',1)
insert into LibraryBook(name,city,librarykey)values('AMU','Aligarh',2)
insert into LibraryBook(name,city,librarykey)values('BHU','Varanasi',3)


GO
SET IDENTITY_INSERT [dbo].LibraryBook OFF

select * from College
select * from LibraryBook

create table LibraryBook_1 -- child table
(
id int primary key  not null,
name varchar(100),
city varchar(100),
LibraryKey int identity FOREIGN KEY REFERENCES College(CollegeID)
)


insert into LibraryBook_1(id,name,city)values(1,'jamia','Delhi')
insert into LibraryBook_1(id,name,city)values(2,'AMU','Aligarh')
insert into LibraryBook_1(id,name,city)values(3,'BHU','Varanasi')


--To allow naming of a FOREIGN KEY constraint, and for defining a FOREIGN KEY 
--constraint on multiple columns, use the following SQL syntax:

CREATE TABLE Orders_1 (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    REFERENCES Persons(PersonID)
);

select * from Orders_1

--SQL FOREIGN KEY on ALTER TABLE
--To create a FOREIGN KEY constraint on the "PersonID" 
--column when the "Orders" table is already created, use the following SQL:

ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

create table Aotomobile
(
id int primary key not null,
name varchar(100)
)


create table Bike
(
Bikeid int primary key identity not null,
name varchar(100)
)

Alter table Bike
add foreign key (BikeID) references Aotomobile(BikeID)



ALTER TABLE Aotomobile
ADD CONSTRAINT FK_BikeAutomobile
FOREIGN KEY (Bikeid) REFERENCES Bike(Bikeid);

ALTER TABLE Orders
DROP CONSTRAINT FK_PersonOrder;


--SQL CHECK Constraint
--The CHECK constraint is used to limit the value range that can be placed in a column.

--If you define a CHECK constraint on a column it will allow only certain values for this column.

--If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

--SQL CHECK on CREATE TABLE
--The following SQL creates a CHECK constraint on the "Age" column when the "Persons" table is created. The CHECK constraint ensures that the age of a person must be 18, or older:


CREATE TABLE Persons_2 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age>=18)
)

insert into Persons_2(id,lastname,Age)values(1,'Ali',19)
insert into Persons_2(id,lastname,Age)values(2,'Fahad',18)
insert into Persons_2(id,lastname,Age)values(3,'ahmza',17)


select * from Persons_2

--To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

--MySQL / SQL Server / Oracle / MS Access:

CREATE TABLE Persons_3 (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age>=18 AND City='Sandnes')
);


insert into Persons_3(id,lastname,Age,City)values(2,'Fahad',19,'Sandnes')

insert into Persons_3(id,lastname,Age,City)values(1,'ahmza',18,'Sandnes')

select * from Persons_3

create table VoterEMployee
(
vid int primary key,
age int
)


alter table VoterEMployee
add check (age>= 18)

create table VoterEMployee_2
(
vid int primary key,
age int,
city varchar(100)
)


alter table VoterEMployee_1
add check (age >= 18 and City='Sultanpur')


alter table VoterEMployee_1
add constraint CK_Check1 check (age >= 18 and City='Sultanpur')

alter table VoterEMployee_1
drop constraint CK_Check1
-->>>>>>> e93bd937159d21627d844d657e8aea0e11bf0689

--------------------------Learning from here on 24/02/24  Version 3 Commit ----------------------------------------
create table Student
(
stdid int primary key identity not null,
name varchar(100),
age int ,
check (age >= 18)
)

insert into Student(name,age)values('Hamza','25')
insert into Student(name,age)values('Fahad','19')
insert into Student(name,age)values('Fahad','17')--The INSERT statement conflicted with the CHECK constraint "CK__Student__age__49C3F6B7". The conflict occurred in database "W3_SCHOOL", table "dbo.Student", column 'age'.


select * from Student

create table Student
(
stdid int primary key identity not null,
name varchar(100),
age int check (age >= 18)  -- aise bhi check laga skate hai
)
ALTER TABLE Student ADD  City varchar(100), DOB date

select * from Student

create table Student_MultipleColumnCheck
(
stdid int primary key identity not null,
name varchar(100),
age int check (age >= 18),  -- aise bhi check laga skate hai
city varchar(100) check (city ='Sultanpur')
)

insert into Student_MultipleColumnCheck(name,age,city)values('Fahad', 35,'Sultanpur')
insert into Student_MultipleColumnCheck(name,age,city)values('Fahad', 18,'Kanpur')
insert into Student_MultipleColumnCheck(name,age,city)values('Fahad', 18,'Sultanpur')
insert into Student_MultipleColumnCheck(name,age,city)values('Hamza', 20,'Sultanpur')

select * from Student_MultipleColumnCheck

create table Student_MultipleColumnCheckWithName
(
stdid int primary key identity not null,
name varchar(100),
age int,  -- aise bhi check laga skate hai
city varchar(100),
CONSTRAINT CK_AgeCity CHECK (age<=18 AND city= 'Kanpur')
)

insert into Student_MultipleColumnCheckWithName(name,age,city)values('Fahad', 18,'Kanpur')
insert into Student_MultipleColumnCheckWithName(name,age,city)values('Fahad', 10,'Kanpur')
insert into Student_MultipleColumnCheckWithName(name,age,city)values('Fahad', 11,'Kanpur')

select * from Student_MultipleColumnCheckWithName

Alter table Student
add check (name = 'Fahad')

insert into Student(name,age)values('fahad','20')
																										
Alter table Student															 
add Constraint CK_AgeDOB check (age>= 18 and DOB >= GETDATE())

insert into Student(name,age,city,DOB)values('Fahad',20,'Sultanpur',CAST('2024-03-24' AS datetime))
																		--yyyy-mm-dd

select * from Student
insert into Student(name,age,city,DOB)values('Fahad',20,'Sultanpur',CAST('2024-01-23' AS datetime))

insert into Student(name,age,city,DOB)values('Fahad',20,'Sultanpur',CAST('2024-03-24' AS datetime))
insert into Student(name,age,city,DOB)values('Fahad',20,'Sultanpur',CAST('2024-03-24' AS datetime))


Alter table Student
drop constraint CK_AgeDOB

create table Product
(
pid int primary key identity,
name varchar(100),
typeofItem varchar(100) default 'Electronics',
price int default 500,
quantity int
)

select  Price,Quantity from Product where pid =6

alter table Product
add city varchar(100)

insert into Product(name,quantity)values('Mobile',50)
insert into Product(name,quantity)values('Laptop',90)
insert into Product(name,quantity)values('Trimmer',100)

select * from Product

alter table Product
add Constraint df_price default  50 for quantity

insert into Product(name)values('CPU')

alter table Product
add constraint df_City default 'Sultanpur' for City

alter table Product
alter column df_City drop default 

delete from Product where pid between 1 and 4

alter table Product
alter column df_City drop default 



CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255) DEFAULT 'Sandnes'
);


ALTER TABLE Persons
ALTER COLUMN City DROP DEFAULT; -- not working

alter table Product
alter column DROP DEFAULT IF EXISTS df_City;  


--SQL CREATE INDEX Statement
--The CREATE INDEX statement is used to create indexes in tables.

--Indexes are used to retrieve data from the database more quickly than otherwise. 
--The users cannot see the indexes, they are just used to speed up searches/queries.


--Note: Updating a table with indexes takes more time than updating a table without (because the indexes also need an update). So, only create indexes on columns that will be frequently searched against.

--CREATE INDEX Syntax
--Creates an index on a table. Duplicate values are allowed:

--CREATE INDEX index_name
--ON table_name (column1, column2, ...);


CREATE INDEX idx_lastname
ON Persons (LastName);

create index idx_name
on Persons (LastName)

create unique index idx_unqindex
on Persons (FirstName)

create index idx_PriceQuanty
on Product(Price,Quantity)

select  Price,Quantity from Product where pid =6

--DROP INDEX Statement

DROP INDEX table_name.index_name;

drop index Product.idx_PriceQuanty

--SQL AUTO INCREMENT Field

--AUTO INCREMENT Field
--Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.

--Often this is the primary key field that we would like to be created automatically every time a new record is inserted.

CREATE TABLE Persons_1 (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

--Tip: To specify that the "Personid" column should start at value 10 and increment by 5, 
--change it to IDENTITY(10,5).

insert into Persons_1(lastname,firstname,Age)values('Ali','fahad',23)
insert into Persons_1(lastname,firstname,Age)values('Ali','fahad',23)
insert into Persons_1(lastname,firstname,Age)values('Ali','fahad',23)

select * from Persons_1

--SQL Server comes with the following data types for storing a date or a date/time value in the database:

--DATE - format YYYY-MM-DD
--DATETIME - format: YYYY-MM-DD HH:MI:SS
--SMALLDATETIME - format: YYYY-MM-DD HH:MI:SS
--TIMESTAMP - format: a unique number

--Tip: To keep your queries simple and easy to maintain, do not use time-components in your dates, unless you have to!

select * from Product

alter table Product
add ProdOrderDate date

update Product set ProdOrderDate = '2024-09-23' where pid=8
update Product set ProdOrderDate = '2025-09-20' where pid=7

update Product set name ='Hamza' where pid = 09
update Product set name ='ALi' where pid = 10
update Product set name ='Anas' where pid = 11
update Product set name ='Kamal' where pid = 12
update Product set name ='Kamran' where pid = 13

SELECT * FROM Product WHERE ProdOrderDate='2024-09-23'

--SQL CREATE VIEW Examples
--The following SQL creates a view that shows all customers from Brazil:

--ExampleGet your own SQL Server
--CREATE VIEW [Brazil Customers] AS
--SELECT CustomerName, ContactName
--FROM Customers
--WHERE Country = 'Brazil';

create view [Sultanpur Products] As 
select name,typeofitem,price from Product where city = 'Sultanpur'


select * from [Sultanpur Products]

create view [ProdOrderDate='2024-09-23' Customers]
as select * from Product where ProdOrderDate='2024-09-23'

select * from [ProdOrderDate='2024-09-23' Customers]

create view [Product above avg price] As
select * from Product where Price > (Select  avg(price) from product)

select * from  [Product above avg price] 

--SQL Updating a View
--A view can be updated with the CREATE OR REPLACE VIEW statement.


--CREATE OR REPLACE VIEW view_name AS
--SELECT column1, column2, ...
--FROM table_name
--WHERE condition;

CREATE  VIEW [Sultanpur Products] as
select name,price,city,quantity,typeofitem from product where city='Sultanpur'

--CREATE OR REPLACE VIEW [Brazil Customers] AS
--SELECT CustomerName, ContactName, City
--FROM Customers
--WHERE Country = 'Brazil';


select * from  [Sultanpur Products]

--SQL Dropping a View
--A view is deleted with the DROP VIEW statement.

--SQL DROP VIEW Syntax
--DROP VIEW view_name;
--The following SQL drops the "Brazil Customers" view:

--Example
--DROP VIEW [Brazil Customers];

drop view [Sultanpur Products]

----------------------------------------------------------------------------------------

--SQL Injection
--SQL injection is a code injection technique that might destroy your database.

--SQL injection is one of the most common web hacking techniques.

--SQL injection is the placement of malicious code in SQL statements, via web page input.

--Look at the following example which creates a SELECT statement by adding a variable (txtUserId) to a select string. The variable is fetched from user input (getRequestString):

--Example
--txtUserId = getRequestString("UserId");
--txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;

SELECT pid as UserId , Name as ProductName, city as Password FROM Product WHERE pid = 105 or 1=1;


SELECT pid as UserId , Name as ProductName, city as Password FROM Product WHERE pid = 6 or 1=1

select * from product


--SQL Injection Based on Batched SQL Statements 
--Most databases support batched SQL statement.

--A batch of SQL statements is a group of two or more SQL statements, separated by semicolons.

--The SQL statement below will return all rows from the "Users" table, then delete the "Suppliers" table.

--Example
--SELECT * FROM Users; DROP TABLE Suppliers
--Look at the following example:

--Example
--txtUserId = getRequestString("UserId");
--txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;
--And the following input:

--User id: 
--105; DROP TABLE Suppliers

--The valid SQL statement would look like this:

--Result
--SELECT * FROM Users WHERE UserId = 105; DROP TABLE Suppliers;

--txtUserId = getRequestString("UserId");
--txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;
-- input 6; DROP TABLE Suppliers
select * from Product where pid = 6; DROP TABLE Persons  -- table deleted.

select * from Persons

--Use SQL Parameters for Protection
--To protect a web site from SQL injection, you can use SQL parameters.

--SQL parameters are values that are added to an SQL query at execution time, in a controlled manner.


--ASP.NET Razor Example
--txtUserId = getRequestString("UserId");
--txtSQL = "SELECT * FROM Users WHERE UserId = @0";
--db.Execute(txtSQL,txtUserId);


--The SQL engine checks each parameter to ensure that it is correct for its column 
--and are treated literally, and not as part of the SQL to be executed.


--Another Example
--txtNam = getRequestString("CustomerName");
--txtAdd = getRequestString("Address");
--txtCit = getRequestString("City");
--txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";
--db.Execute(txtSQL,txtNam,txtAdd,txtCit);


--SELECT STATEMENT IN ASP.NET:

--txtUserId = getRequestString("UserId");
--sql = "SELECT * FROM Customers WHERE CustomerId = @0";
--command = new SqlCommand(sql);
--command.Parameters.AddWithValue("@0",txtUserId);
--command.ExecuteReader();

--INSERT INTO STATEMENT IN ASP.NET:

--txtNam = getRequestString("CustomerName");
--txtAdd = getRequestString("Address");
--txtCit = getRequestString("City");
--txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";
--command = new SqlCommand(txtSQL);
--command.Parameters.AddWithValue("@0",txtNam);
--command.Parameters.AddWithValue("@1",txtAdd);
--command.Parameters.AddWithValue("@2",txtCit);
--command.ExecuteNonQuery();

--SQL Hosting
--If you want your web site to be able to store and retrieve data from a database, your web server should have access to a database-system that uses the SQL language.

--If your web server is hosted by an Internet Service Provider (ISP), you will have to look for SQL hosting plans.

--The most common SQL hosting databases are MS SQL Server, Oracle, MySQL, and MS Access.

--MS SQL Server
--Microsoft's SQL Server is a popular database software for database-driven web sites with high traffic.

--SQL Server is a very powerful, robust and full featured SQL database system.


--The data type of a column defines what value the column can hold: integer, character,
--money, date and time, binary, and so on.

--SQL Data Types
--Each column in a database table is required to have a name and a data type.

--An SQL developer must decide what type of data that will be stored inside each column when
--creating a table. The data type is a guideline for SQL to understand what type of data
--is expected inside of each column, and it also identifies how SQL will interact with 
--the stored data.

--Note: Data types might have different names in different database. And even if the name
--is the same, the size and other details may be different! Always check the documentation!

--Data Types
--MySQL Data Types (Version 8.0)
--In MySQL there are three main data types: string, numeric, and date and time.


--SQL Server Data Types

--1.String Data Types

--Data type			Description							Maxsize						Storage

--char(n)			Fixed width character string		8,000 characters			Defined width
--varchar(n)		Variable width character string		8,000 characters			2 bytes + number of chars
--varchar(max)		Variable width character string		1,073,741,824 characters	2 bytes + number of chars
--text				Variable width character string		2GB of text data			4 bytes + number of chars
--nchar				Fixed width Unicode string			4,000 characters			Defined width x 2
--nvarchar			Variable width Unicode string		4,000 characters	 
--nvarchar(max)		Variable width Unicode string		536,870,912 characters	 
--ntext				Variable width Unicode string		2GB of text data	 
--binary(n)			Fixed width binary string			8,000 bytes	 
--varbinary			Variable width binary string		8,000 bytes	 
--varbinary(max)	Variable width binary string		2GB	 
--image				Variable width binary string		2GB	 


--Numeric Data Types
/*
| Data Type		| Description                                                                                                           | Storage         |
|---------------|-----------------------------------------------------------------------------------------------------------------------|-----------------|
| bit			| Integer that can be 0, 1, or NULL																						|                 |
| tinyint		| Allows whole numbers from 0 to 255																					| 1 byte          |
| smallint		| Allows whole numbers between -32,768 and 32,767																		| 2 bytes         |
| int			| Allows whole numbers between -2,147,483,648 and 2,147,483,647															| 4 bytes         |
| bigint		| Allows whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807									| 8 bytes         |
| decimal(p,s)  | Fixed precision and scale numbers. Allows numbers from -10^38 +1 to 10^38 –1.											| 5-17 bytes      |
| numeric(p,s)  | Fixed precision and scale numbers. Allows numbers from -10^38 +1 to 10^38 –1.											| 5-17 bytes      |
| smallmoney	| Monetary data from -214,748.3648 to 214,748.3647																		| 4 bytes         |
| money			| Monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807												| 8 bytes         |
| float(n)		| Floating precision number data from -1.79E + 308 to 1.79E + 308. The n parameter indicates whether the field should   | 4 or 8 bytes    |
|				| hold 4 or 8 bytes. float(24) holds a 4-byte field and float(53) holds an 8-byte field. Default value of n is 53.      |                 |
| real			| Floating precision number data from -3.40E + 38 to 3.40E + 38                                                         | 4 bytes         | */


--Date and Time Data Types
/*
| Data Type       | Description                                                                                                         | Storage          |
|-----------------|---------------------------------------------------------------------------------------------------------------------|------------------|
| datetime        | From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds                                     | 8 bytes          |
| datetime2       | From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds                                       | 6-8 bytes        |
| smalldatetime   | From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute                                                   | 4 bytes          |
| date            | Store a date only. From January 1, 0001 to December 31, 9999                                                        | 3 bytes          |
| time            | Store a time only to an accuracy of 100 nanoseconds                                                                 | 3-5 bytes        |
| datetimeoffset  | The same as datetime2 with the addition of a time zone offset                                                       | 8-10 bytes       |
| timestamp       | Stores a unique number that gets updated every time a row gets created or modified. Each table may have only one.   | Fixed, typically 4 bytes | */

--Other Data Types
/*
| Data Type        | Description                                                                                    |
|------------------|------------------------------------------------------------------------------------------------|
| sql_variant      | Stores up to 8,000 bytes of data of various data types, except text, ntext, and timestamp     |
| uniqueidentifier | Stores a globally unique identifier (GUID)                                                     |
| xml              | Stores XML formatted data. Maximum 2GB                                                          |
| cursor           | Stores a reference to a cursor used for database operations                                    |
| table            | Stores a result-set for later processing                                                       |  */


--SQL Keywords Reference
-- Total number of keyword in SQL is 79.
/*
Here's the updated table with a serial number added:

| Sr. No.| Keyword               | Description                                                                                      |
|--------|-----------------------|--------------------------------------------------------------------------------------------------|
| 1      | ADD                   | Adds a column in an existing table                                                               |
| 2      | ADD CONSTRAINT        | Adds a constraint after a table is already created                                                |
| 3      | ALL                   | Returns true if all of the subquery values meet the condition                                     |
| 4      | ALTER                 | Adds, deletes, or modifies columns in a table, or changes the data type of a column in a table   |
| 5      | ALTER COLUMN          | Changes the data type of a column in a table                                                      |
| 6      | ALTER TABLE           | Adds, deletes, or modifies columns in a table                                                     |
| 7      | AND                   | Only includes rows where both conditions are true                                                  |
| 8      | ANY                   | Returns true if any of the subquery values meet the condition                                      |
| 9      | AS                    | Renames a column or table with an alias                                                           |
| 10     | ASC                   | Sorts the result set in ascending order                                                           |
| 11     | BACKUP DATABASE       | Creates a back up of an existing database                                                         |
| 12     | BETWEEN               | Selects values within a given range                                                               |
| 13     | CASE                  | Creates different outputs based on conditions                                                     |
| 14     | CHECK                 | A constraint that limits the value that can be placed in a column                                 |
| 15     | COLUMN                | Changes the data type of a column or deletes a column in a table                                   |
| 16     | CONSTRAINT            | Adds or deletes a constraint                                                                      |
| 17     | CREATE                | Creates a database, index, view, table, or procedure                                              |
| 18     | CREATE DATABASE       | Creates a new SQL database                                                                       |
| 19     | CREATE INDEX          | Creates an index on a table (allows duplicate values)                                             |
| 20     | CREATE OR REPLACE VIEW| Updates a view                                                                                   |
| 21     | CREATE TABLE          | Creates a new table in the database                                                               |
| 22     | CREATE PROCEDURE      | Creates a stored procedure                                                                       |
| 23     | CREATE UNIQUE INDEX   | Creates a unique index on a table (no duplicate values)                                            |
| 24     | CREATE VIEW           | Creates a view based on the result set of a SELECT statement                                       |
| 25     | DATABASE              | Creates or deletes an SQL database                                                                |
| 26     | DEFAULT               | A constraint that provides a default value for a column                                            |
| 27     | DELETE                | Deletes rows from a table                                                                         |
| 28     | DESC                  | Sorts the result set in descending order                                                          |
| 29     | DISTINCT              | Selects only distinct (different) values                                                           |
| 30     | DROP                  | Deletes a column, constraint, database, index, table, or view                                      |
| 31     | DROP COLUMN           | Deletes a column in a table                                                                       |
| 32     | DROP CONSTRAINT       | Deletes a UNIQUE, PRIMARY KEY, FOREIGN KEY, or CHECK constraint                                    |
| 33     | DROP DATABASE         | Deletes an existing SQL database                                                                  |
| 34     | DROP DEFAULT          | Deletes a DEFAULT constraint                                                                     |
| 35     | DROP INDEX            | Deletes an index in a table                                                                       |
| 36     | DROP TABLE            | Deletes an existing table in the database                                                         |
| 37     | DROP VIEW             | Deletes a view                                                                                    |
| 38     | EXEC                  | Executes a stored procedure                                                                       |
| 39     | EXISTS                | Tests for the existence of any record in a subquery                                                |
| 40     | FOREIGN KEY           | A constraint that is a key used to link two tables together                                        |
| 41     | FROM                  | Specifies which table to select or delete data from                                                |
| 42     | FULL OUTER JOIN       | Returns all rows when there is a match in either left table or right table                         |
| 43     | GROUP BY              | Groups the result set (used with aggregate functions: COUNT, MAX, MIN, SUM, AVG)                  |
| 44     | HAVING                | Used instead of WHERE with aggregate functions                                                     |
| 45     | IN                    | Allows you to specify multiple values in a WHERE clause                                            |
| 46     | INDEX                 | Creates or deletes an index in a table                                                             |
| 47     | INNER JOIN            | Returns rows that have matching values in both tables                                               |
| 48     | INSERT INTO           | Inserts new rows in a table                                                                       |
| 49     | INSERT INTO SELECT    | Copies data from one table into another table                                                       |
| 50     | IS NULL               | Tests for empty values                                                                            |
| 51     | IS NOT NULL           | Tests for non-empty values                                                                        |
| 52     | JOIN                  | Joins tables                                                                                      |
| 53     | LEFT JOIN             | Returns all rows from the left table, and the matching rows from the right table                    |
| 54     | LIKE                  | Searches for a specified pattern in a column                                                       |
| 55     | LIMIT                 | Specifies the number of records to return in the result set                                         |
| 56     | NOT                   | Only includes rows where a condition is not true                                                   |
| 57     | NOT NULL              | A constraint that enforces a column to not accept NULL values                                      
|
| 58     | OR                    | Includes rows where either condition is true                                                        |
| 59     | ORDER BY              | Sorts the result set in ascending or descending order                                               |
| 60     | OUTER JOIN            | Returns all rows when there is a match in either left table or right table                          |
| 61     | PRIMARY KEY           | A constraint that uniquely identifies each record in a database table                               |
| 62     | PROCEDURE             | A stored procedure                                                                                |
| 63     | RIGHT JOIN            | Returns all rows from the right table, and the matching rows from the left table                    |
| 64     | ROWNUM                | Specifies the number of records to return in the result set                                         |
| 65     | SELECT                | Selects data from a database                                                                      |
| 66     | SELECT DISTINCT       | Selects only distinct (different) values                                                           |
| 67     | SELECT INTO           | Copies data from one table into a new table                                                        |
| 68     | SELECT TOP            | Specifies the number of records to return in the result set                                         |
| 69     | SET                   | Specifies which columns and values that should be updated in a table                                |
| 70     | TABLE                 | Creates a table, or adds, deletes, or modifies columns in a table, or deletes a table or data inside a table |
| 71     | TOP                   | Specifies the number of records to return in the result set                                         |
| 72     | TRUNCATE TABLE        | Deletes the data inside a table, but not the table itself                                           |
| 73     | UNION                 | Combines the result set of two or more SELECT statements (only distinct values)                      |
| 74     | UNION ALL             | Combines the result set of two or more SELECT statements (allows duplicate values)                   |
| 75     | UNIQUE                | A constraint that ensures that all values in a column are unique                                    |
| 76     | UPDATE                | Updates existing rows in a table                                                                  |
| 77     | VALUES                | Specifies the values of an INSERT INTO statement                                                    |
| 78     | VIEW                  | Creates, updates, or deletes a view                                                                |
| 79     | WHERE                 | Filters a result set to include only records that fulfill a specified condition                    |  */
------------------------------------------------------------------------------------------------------------------------------------------


--SQL Server Functions

--SQLServer has many built-in functions.
--Thisreference contains string, numeric, date, conversion, and some advanced functions in SQL Server.
-- total 30 inbuilt string function
/*
| Serial No. | Function      | Description                                                                                                       |
|------------|---------------|-------------------------------------------------------------------------------------------------------------------|
| 1          | ASCII         | Returns the ASCII value for the specific character                                                                 |
| 2          | CHAR          | Returns the character based on the ASCII code                                                                      |
| 3          | CHARINDEX     | Returns the position of a substring in a string                                                                    |
| 4          | CONCAT        | Adds two or more strings together                                                                                  |
| 5          | Concat with + | Adds two or more strings together                                                                                  |
| 6          | CONCAT_WS     | Adds two or more strings together with a separator                                                                 |
| 7          | DATALENGTH    | Returns the number of bytes used to represent an expression                                                        |
| 8          | DIFFERENCE    | Compares two SOUNDEX values, and returns an integer value                                                          |
| 9          | FORMAT        | Formats a value with the specified format                                                                          |
| 10         | LEFT          | Extracts a number of characters from a string (starting from left)                                                  |
| 11         | LEN           | Returns the length of a string                                                                                     |
| 12         | LOWER         | Converts a string to lower-case                                                                                    |
| 13         | LTRIM         | Removes leading spaces from a string                                                                               |
| 14         | NCHAR         | Returns the Unicode character based on the number code                                                             |
| 15         | PATINDEX      | Returns the position of a pattern in a string                                                                      |
| 16         | QUOTENAME     | Returns a Unicode string with delimiters added to make the string a valid SQL Server delimited identifier           |
| 17         | REPLACE       | Replaces all occurrences of a substring within a string, with a new substring                                       |
| 18         | REPLICATE     | Repeats a string a specified number of times                                                                       |
| 19         | REVERSE       | Reverses a string and returns the result                                                                           |
| 20         | RIGHT         | Extracts a number of characters from a string (starting from right)                                                 |
| 21         | RTRIM         | Removes trailing spaces from a string                                                                              |
| 22         | SOUNDEX       | Returns a four-character code to evaluate the similarity of two strings                                             |
| 23         | SPACE         | Returns a string of the specified number of space characters                                                        |
| 24         | STR           | Returns a number as string                                                                                         |
| 25         | STUFF         | Deletes a part of a string and then inserts another part into the string, starting at a specified position        |
| 26         | SUBSTRING     | Extracts some characters from a string                                                                             |
| 27         | TRANSLATE     | Returns the string from the first argument after the characters specified in the second argument are translated... |
| 28         | TRIM          | Removes leading and trailing spaces (or other specified characters) from a string                                  |
| 29         | UNICODE       | Returns the Unicode value for the first character of the input expression                                           |
| 30         | UPPER         | Converts a string to upper-case                                                                                    |*/
---------------------------------------------------------------------------------------------------------------------------------------------------

--Total 28 inbuilt SQL Server Math/Numeric Functions
/*
| Sr. No. | Function | Description                                                                                   |
|---------|----------|-----------------------------------------------------------------------------------------------|
| 1       | ABS      | Returns the absolute value of a number                                                        |
| 2       | ACOS     | Returns the arc cosine of a number                                                            |
| 3       | ASIN     | Returns the arc sine of a number                                                              |
| 4       | ATAN     | Returns the arc tangent of a number                                                           |
| 5       | ATN2     | Returns the arc tangent of two numbers                                                        |
| 6       | AVG      | Returns the average value of an expression                                                    |
| 7       | CEILING  | Returns the smallest integer value that is >= a number                                         |
| 8       | COUNT    | Returns the number of records returned by a select query                                       |
| 9       | COS      | Returns the cosine of a number                                                                |
| 10      | COT      | Returns the cotangent of a number                                                             |
| 11      | DEGREES  | Converts a value in radians to degrees                                                        |
| 12      | EXP      | Returns e raised to the power of a specified number                                            |
| 13      | FLOOR    | Returns the largest integer value that is <= to a number                                       |
| 14      | LOG      | Returns the natural logarithm of a number, or the logarithm of a number to a specified base   |
| 15      | LOG10    | Returns the natural logarithm of a number to base 10                                           |
| 16      | MAX      | Returns the maximum value in a set of values                                                  |
| 17      | MIN      | Returns the minimum value in a set of values                                                  |
| 18      | PI       | Returns the value of PI                                                                       |
| 19      | POWER    | Returns the value of a number raised to the power of another number                            |
| 20      | RADIANS  | Converts a degree value into radians                                                          |
| 21      | RAND     | Returns a random number                                                                       |
| 22      | ROUND    | Rounds a number to a specified number of decimal places                                        |
| 23      | SIGN     | Returns the sign of a number                                                                  |
| 24      | SIN      | Returns the sine of a number                                                                  |
| 25      | SQRT     | Returns the square root of a number                                                           |
| 26      | SQUARE   | Returns the square of a number                                                                |
| 27      | SUM      | Calculates the sum of a set of values                                                         |
| 28      | TAN      | Returns the tangent of a number                                                               |*/
----------------------------------------------------------------------------------------------------------------------

-- 13 inbuilt SQL Server Date Functions 
/*
| Sr. No. | Function          | Description                                                                           |
|---------|-------------------|---------------------------------------------------------------------------------------|
| 1       | CURRENT_TIMESTAMP | Returns the current date and time                                                     |
| 2       | DATEADD           | Adds a time/date interval to a date and then returns the date                         |
| 3       | DATEDIFF          | Returns the difference between two dates                                              |
| 4       | DATEFROMPARTS     | Returns a date from the specified parts (year, month, and day values)                 |
| 5       | DATENAME          | Returns a specified part of a date (as string)                                         |
| 6       | DATEPART          | Returns a specified part of a date (as integer)                                        |
| 7       | DAY               | Returns the day of the month for a specified date                                      |
| 8       | GETDATE           | Returns the current database system date and time                                      |
| 9       | GETUTCDATE        | Returns the current database system UTC date and time                                  |
| 10      | ISDATE            | Checks an expression and returns 1 if it is a valid date, otherwise 0                   |
| 11      | MONTH             | Returns the month part for a specified date (a number from 1 to 12)                    |
| 12      | SYSDATETIME       | Returns the date and time of the SQL Server                                            |
| 13      | YEAR              | Returns the year part for a specified date                                             |*/
------------------------------------------------------------------------------------------------------------------------

--12 SQL Server Advanced Functions
/*
| Sr. No. | Function         | Description                                                                     |
|---------|------------------|---------------------------------------------------------------------------------|
| 1       | CAST             | Converts a value (of any type) into a specified datatype                        |
| 2       | COALESCE         | Returns the first non-null value in a list                                      |
| 3       | CONVERT          | Converts a value (of any type) into a specified datatype                        |
| 4       | CURRENT_USER     | Returns the name of the current user in the SQL Server database                 |
| 5       | IIF              | Returns a value if a condition is TRUE, or another value if a condition is FALSE|
| 6       | ISNULL           | Return a specified value if the expression is NULL, otherwise return the expression |
| 7       | ISNUMERIC        | Tests whether an expression is numeric                                          |
| 8       | NULLIF           | Returns NULL if two expressions are equal                                       |
| 9       | SESSION_USER     | Returns the name of the current user in the SQL Server database                 |
| 10      | SESSIONPROPERTY  | Returns the session settings for a specified option                             |
| 11      | SYSTEM_USER      | Returns the login name for the current user                                      |
| 12      | USER_NAME        | Returns the database user name based on the specified id                        |  */
----------------------------------------------------------------------------------------------------------------















