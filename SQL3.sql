create table customer(Id int Not Null Unique, Name varchar(20) Not Null, city varchar(20) Not Null)
insert into customer values(11,'Praveen',Null),(11,'Sasi','Undi')

create table customer1(Id int Not Null Unique, Name varchar(20) Not Null, city varchar(20) Not Null)
insert into customer1 values(11,'Praveen','Bvrm'),(11,'Sasi','Undi')

create table customer2(ID int primary key, Name varchar(250) Not Null,Salary int check (Salary>10000)) 
insert into customer2 values(1,'Praveen',5000),(2,'Sasi',8000)

create table customer3(ID int primary key, Name varchar(20) Not Null,Salary float check (Salary>10000),Date DATETIME NOT NULL DEFAULT GETDATE())

insert into customer3 (ID, NAME, Salary,Date) values (1,'Praveen',11350, '1/12/2021');  
insert into customer3 (ID, NAME, Salary) values (2,'Sasi', 10500); 

create table customer4(Id int Not Null primary key, Name varchar(20) Not Null, city varchar(20) Not Null)
insert into customer4 (Id, Name, city)values(11,'Praveen',Null)
insert into customer4(Id, Name,city) values ('Sasi','Undi')

select * from customer3


create table Table1(Tid int primary key,Tname varchar(20) Null)
insert into Table1 values(1,'Praveen'),(2,'Sasi'),(3,'Sai')
select * from Table1
delete from Table1 where Tid=1

create table Table2( CID int primary key,ID int foreign key references Table1(Tid))
insert into Table2 (CID, ID) values (1, 1)
insert into Table2(CID, ID) values(2,4)
select * from Table2
