/*
sql = structured query language
database = malumotlar bazasi
relational database = tablelar ulangan bolsa relational database hisoblanadi
*/

--SQL COMMANDS
--Bu komandalar sqlni eng kerakli komandalari
DQL - Data query language = select 
DDL = Data definition language = Create, alter, drop, truncate
DML = Data Manipulation Language = insert, update, delete
DCL = Data Control Language = Grant, Revoke
TCL = Transaction Control Language = begin tran, Commit, Rollback



select 'Hello world'


select 1 * 5

select 1 + 5

select '1' + '5'

select 'SQL' + ' Tutorial'


/* 
Comments     multi line comment
*/


-- Hello world -- single line comment


SELECT  [SalesOrderID]
      ,[SalesOrderDetailID]
      ,[CarrierTrackingNumber]
      ,[OrderQty]
      ,[ProductID]
      ,[SpecialOfferID]
      ,[UnitPrice]
      ,[UnitPriceDiscount]
      ,[LineTotal]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]
  --where YEAR(ModifiedDate) = 2011

  /*
  create
  */

  drop database f44_SQL_class_1

  Create Database f44_SQL_class_1
  go
  use f44_SQL_class_1

  /* frequently used data types
  int
  Varchar(20)
  char(50)
  Nvarchar(50)
  datetime
  decimal
  float
  */

  Create table Test (ID int)

  Create table test_varchar(Name varchar(10))

  insert into test_varchar values ('qwerty')

  select 5 / cast(3 as float)

  drop table class_1
  Create table Class_1 (ID int, Name varchar(50), Gender char(1), BirthDate date, Salary decimal(10, 2))


  select * from class_1

  insert into class_1 values 
					  (1, 'Tom', 'M', '2000-02-27', 15000.50),
					  (2, 'Alex', 'M', '1999-06-05', 24000)


truncate table class_1

  select FORMAT(cast('2000-02-27' as date), 'MM-dd-yyyy')


create table test1 ([full name] varchar(50))

select [full name] from test1

Create Database ex1
go 
create table employes(ID int Primary Key, [full name] varchar(50), gender char(1), HireDate date )
go 
insert into employes values 
(1, 'Ken Sanches', 'M', '2009-01-14'),
(2, 'Terri Duffy', 'F','2008-01-31'),
(3, 'Roberto Tamburello',  'M',  '2007-11-11'),
(4,  'Rob Walters',  'M',  '2007-12-05'),
(5,  'Gail Erickson',  'F',  '2008-01-06'),
(6,  'Jossef Goldberg',  'M',  '2008-01-16'),
(7,  'Dylan Miller',  'M',  '2009-02-13'),
(8,  'Diane Margheim',  'F',  '2008-12-29'),
(9,  'Gigi Matthew',  'F',  '2009-01-16'),
(10,  'Michael Raheem',  'M',  '2009-05-03')

select * from employes



create table emplyoes (ID int Primary Key, [Full Name] varchar(50), gender char(1), HireDate date )

insert into emplyoes values 
(1, 'Kenesbayev Bahrom', 'M', '1999-03-21'), 
(2, 'Mirsavutov Mirjavxar', 'M', '2002-03-31'),
(3, 'Torayev Sherzod', 'M', '2002-02-02')

