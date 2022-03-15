create table person1(Id int primary key, Firstname varchar(20), Lastname varchar(20), Age int, Address varchar(20), Email varchar(50), Mobile varchar(10))
insert into person1 values(1,'Praveen','Rompicharla',23,'Bvrm','praveen@gmail.com',9848606944),
						 (2,'Sasi','Kunuku',24,'Undi','sasi@gmail.com',8984688510),
						 (3,'Madhu','Sudharsanam',23,'Tanuku','madhu@gmail.com',8500106585)
insert into person1 values(4,'Pranav','Kamatam',26,'Bvrm','pranav@gmail.com',6063851254)

select * from person1

select Top 2 * from person1

select Firstname, Lastname, Age, Email from person1

select Firstname from person1 where Age>23

select Firstname, Lastname, Age, Email from person1 order by Age ASC

select Firstname, Lastname, Age, Email from person1 order by Firstname DESC

select Firstname, Lastname, Age, Email from person1 where Firstname like 'P%'

select Firstname, Lastname, Age, Email from person1 where Age=23 And Age = 24

select Firstname, Lastname, Age, Email from person1 where Firstname = 'Praveen' Or Age = 23

select count(*) As RowCnt from person1

select count(1) As RowCnt from person1

select Age, count(Id) as "No of Persons" from person1 group by Age having count(Id)>1

create table Praveen(Id int, Name varchar(20), Deptid int)
insert into Praveen values(1,'abc',1),(2,'def',1),(3,'ghi',2),(4,'jkl',2),(5,'mno',1)
alter table Praveen add Age int 
insert into Praveen values(6,'praveen',101,23),(7,'pranav',102,24),(8,'pradeep',103,23)

select Deptid, count(Id) as "No of Values" from Praveen Group by Deptid

--Join
select * from person1, Praveen where person1.Age = Praveen.Age

--Inner Join
select person1.Id, person1.Firstname, Praveen.Name from person1 inner join Praveen on person1.Age = Praveen.Age

--Self Join
select person1.Lastname, Praveen.Name, Praveen.Age from person1, Praveen where person1.Id <> Praveen.Id and person1.Age = Praveen.Age order by Praveen.Age 

--Cross Join
select person1.Id, person1.Firstname, Praveen.Name from person1 cross join Praveen where person1.Age = Praveen.Age

--Left Outer Join
select person1.Id, person1.Firstname, Praveen.Name from person1 left outer join Praveen on person1.Firstname = Praveen.Name 

--Right Outer Join
select person1.Id, person1.Firstname, Praveen.Name from person1 right outer join Praveen on person1.Firstname = Praveen.Name 

--Full Outer Join
select person1.Id, person1.Firstname, Praveen.Name from person1 full outer join Praveen on person1.Firstname = Praveen.Name

--Cross Apply
select person1.Id, person1.Firstname, Praveen.Name from person1 cross apply Praveen where  person1.Age = Praveen.Age

--Outer Apply
select person1.Id, person1.Firstname, Praveen.Name from person1 outer apply Praveen where  person1.Age = Praveen.Age

