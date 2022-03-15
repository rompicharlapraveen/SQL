create table Employee(Empid int, Empname varchar(20), Empsalary int, Empemail varchar(30))
insert into Employee values(101,'Praveen',5000,'praveen@gmail.com'),
(102,'Sasi',6000,'Sasi@gmail.com'),
(103, 'Madhu',8000,'Madhu@gmail.com')
select * from Employee
alter table Employee add Empaddress varchar(10)
insert into Employee values(104,'Sai',8000,'Sai@gmail.com','Undi')

update Employee set Empname='Praveen' where Empid='103'
delete from Employee where Empid='103'

alter table Employee add Empage varchar(10)

insert into Employee values(105,'Vasu',10000,'vasu@gmail.com','Hyd',29),
(106,'Swaroop',15000,'swaroop@gmail.com','Hyd',20),
(107,'Abc',20000,'abc@gmail.com','Vjw',23)

Begin Transaction 
commit

sp_help Employee

select Empname from Employee where Empage>20


create table Emp1(id int, name varchar(10))
insert into Emp1 values(1,'abc'),(2,'cde')
truncate table Emp1

select * from Emp1

create table Emp2(id int, name varchar(10))
insert into Emp2 values(1,'abc'),(2,'cde')
drop table Emp2

select * from Emp2