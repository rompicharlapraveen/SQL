create table Person(Id int primary key, Name varchar(20), City varchar(20))

insert into Person values(1,'Praveen','Undi'),(2,'Srinivas','Undi'),(3,'Savitri','Tanuku'),(4,'Pravallika','Zahirabad'),(5,'Swaroop','Nidadavolu')
insert into Person (Id,Name,City) values (6,'Sasi',null)
insert into Person (Id,Name,City) values (7,null,'Bhimavaram')
insert into Person (Id,Name,City) values (8,null,'Bhimavaram')
alter table Person add Dob1 date
insert into Person (Id,Name,City,Dob) values (9,'abc','Bvrm','09-01-2001')
insert into Person (Id,Name,City,Dob) values (10,'def','Ajjj','12-09-2019')
insert into Person (Id,Name,City,Dob) values (11,'deee','Ajjjkkk','12-09-2012')
insert into Person (Id,Name,City,Dob1) values (12,'de','Ajjkkk','12-09-2012')


select Distinct City from Person

select count(Distinct City) from Person

select count(*) from (select Distinct City from Person) as City_Count

select * from Person where Id Between 2 and 4

select * from Person where Id Between 2012-12-09 and 2019-11-12

select * from Person where Id Not Between 2 And 4

select * from Person where City In('Undi')

select * from person where Name is null

select * from Person

select * from Person where Id=Dob1 

xp_readerrorlog



