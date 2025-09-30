Create database f44_SQL_Class_2

use f44_SQL_class_2

/* ddl dml commands */


/* create, alter, drop, truncate update, insert, delete */


/* system databases */


/* master = the most important database 
   model = shablon database
   msdb = job
   tempDB = vaqtinchalik tablelarni saqlaydi
 */

   select * from #emp
   create database test_model


   /* schemas */


   create table employees (id int, name varchar(50))

   create schema Sales

   create table sales.employees (id int, name varchar(50))


   select * from f44_SQL_CLass_2.sales.employees


   /* mdf/ldf */
   /* mdf = main file
	  ldf = log file
	*/



insert into f44_SQL_CLass_2.sales.employees values (1, 'Tom'), (2, 'Alex'), (3, 'Bob')

insert into f44_SQL_Class_2.Sales.employees (id) values (2)

insert into f44_SQL_Class_2.Sales.employees 
select 3, 'Robert'

insert into f44_SQL_Class_2.Sales.employees 
select 4, 'Charlie'
union all
select 5, 'Sara'
Union all
select 6, 'Robertson'


select * from f44_SQL_CLass_2.sales.employees


select * into new_table from f44_SQL_CLass_2.sales.employees


select * from new_table

/* drop */

create schema sales1

drop database test_f44

drop schema sales1

drop table dbo.employees

/* truncate */

truncate table f44_SQL_CLass_2.sales.employees

select * from f44_SQL_CLass_2.sales.employees


/* alter */

alter table f44_SQL_CLass_2.sales.employees
add age int

alter table f44_SQL_CLass_2.sales.employees
drop column age

alter table f44_SQL_CLass_2.sales.employees
alter column name nvarchar(50)


create table t (name varchar(50))
insert into t values ('привет')


select * from t

create table nt (name nvarchar(50))


insert into nt values ('hello')

insert into nt values (N'你好')


select * from nt

/* update */

select * from sales.employees


update sales.employees
set name = 'Tom', age = 40
where id = 1

update sales.employees 
set name = 'Alex'
where id = 2 or id = 3


exec sp_rename 'sales.employees.name', 'First_name', 'column'


select * from sales.employees


exec sp_rename 'sales.employees', 'Customers'


select * from sales.customers


/* delete */

delete from sales.customers
where id = 2

insert into f44_SQL_CLass_2.sales.customers (id, First_name, age) values (4, 'Alex', 24), (2, 'Alex', 30), (3, 'Bob', 45)


select * from Sales.customers


delete from sales.customers
where id in (1, 3)


alter database f42_graphic modify name = test



if null = null
begin
print 'they are equal'
end
else
begin
print 'they are not equal'
end




set ansi_nulls on
