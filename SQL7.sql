create table Sample1(id int primary key identity, min_age int, max_age int)

insert into Sample1 values(5,null),(8,null),(null,10)

select * from Sample1;

select id, isnull(min_age,9)min_age, isnull(max_age,15)max_age from Sample1




create table Emp14 (Id int, Name varchar(20), Age int, Salary float, Dob date, city varchar(20), ManagerId int,ManagerName varchar(20))
insert into Emp14 values(1,'praveen R',23,1000,'1/23/2021','Undi',3,'Sumith'),
						   (2,'Sasi K',24,2000,'12/08/1998','Bvrm',6,'Raju'),
						   (3,'Sai S',25,3000,'9/09/1996','Tnk',88,'Pradeep'),
						   (4,'Madhu S',26,4000,'9/08/1998','Rjy',1,'Ramesh'),
						   (5,'Srinu R',28,6000,'09/19/1970','Bvrm',101,'Raju')
insert into Emp14 values(null,'Savitri R',29,5000,'1/24/1973','Undi',11,'Madhu')
insert into Emp14 values(7,'Abcde',32,8000,'6/29/1996','Akividu',9,'Sai')
insert into Emp14 values(8,'Ab',33,18000,'6/06/1996','Vjw',23,'Kumar')
insert into Emp14 values(9,'Ravi',22,20000,'09/11/1995','Bvrm',56,'Vasu')
select * from Emp14;

create table Manager(ManagerId int, ManagerName varchar(20), Age int, Salary float, Dob date, city varchar(20))
insert into Manager values(3,'Sumith',23,1000,'1/23/2021','Undi'),
						   (6,'Raju',24,2000,'12/08/1998','Bvrm'),
						   (88,'Pradeep',25,3000,'9/09/1996','Tnk'),
						   (1,'Ramesh',26,4000,'9/08/1998','Rjy'),
						   (101,'Raju',28,6000,'09/19/1970','Bvrm'),
						   (98,'Madhu',29,5000,'1/24/1973','Undi'),
                          (9,'Sai',32,8000,'6/29/1996','Akividu'),
                          (23,'Kumar',33,18000,'6/06/1996','Vjw'),
						  (56,'Vasu',22,20000,'09/11/1995','Bvrm')
select * from Manager

select upper(Name) from Emp14
select lower(city) from Emp14
select Name, len(Name) from Emp14 
select len(Name) from Emp14 /* Len() returns the number of characters of the specified string expression, Excluding spaces */
select len('Praveen R ')
select datalength('Praveen R ')
select datalength(Name) from Emp14 /* DataLength() returns the number of bytes used to represent any expression */
select getdate() /* It returns the database current date and time */
select coalesce(null,1,29,5000,'20-09-1973') as Emp14
select *from Emp14
select coalesce(Id,null,6) from Emp14
select abs(-125) as AbsNumber
select floor(25.75) as FloorNum --it returns 25
select floor(-25.75) as FloorNum --it returns -26
select ceiling(25.75) as CeilingNum --it returns 26
select ceiling(-25.75) as CeilingNum --it returns -25
select Name, isnumeric(name) from Emp14 /* It returns false because it's not a numeric value */ 
select age, isnumeric(age) from Emp14 /* It returns true because it's a numeric value */
select min(Salary) as MinSalary from Emp14
select * from Emp14 where Salary>1000
select max(Salary) as MaxSalary from Emp14
select avg(Salary) as Averagesalary from Emp14
select sum(Salary) as TotalSalary from Emp14
select count(*) as "Number of Records" from Emp14 /* count and count_big both are same but the only difference is count is int data type count is bigint data type */
select count_big(*) as "Number of Records" from Emp14
select ascii('A') as AsciiValue
select Name, ascii(Name) as AsciiValue from Emp14 -- ASCII is used to translate computer text to human text. 
select ascii('B') as AsciiValue
select ascii('Z') as AsciiValue
select ascii('a') as AsciiValue
select ascii('b') as AsciiValue
select ascii('p') as AsciiValue
select ascii('z') as AsciiValue
select ltrim(rtrim(' Praveen '))
select Name, charindex('i',Name) from Emp14 
select charindex('i','Srinu')
select Name,Age, concat(name,age) from Emp14 
select 'Praveen' + ' ' + 'Rompicharla'
select concat('Praveen',+ ' ' +'Rompicharla')
select concat_ws('.','Praveen','Rompicharla')
select format(1,'c','in-IN') as INDIA,format(1,'c','ch-CH') as CHINA,format(1,'c','us-US') as USA   /* Format syntax Format(value,format,culture) */
select left(Name, 5) from Emp14
select left('Praveen Rompicharla',5) /* The LEFT() function extracts a number of characters from a string (starting from left) */
select len('Praveen')
select patindex('%a%','Praveen') /* PatternIndex */
select patindex('%[a]%','Praveen') --The PATINDEX() function returns the position of a pattern in a string. If the pattern is not found, this function returns 0.
select replace('Praveen','veen','nav')
select replicate(Name,2) from Emp14  /* The REPLICATE() function repeats a string a specified number of times */
select reverse(Name) from Emp14
select right('Praveen Rompicharla',5) /* The RIGHT() function extracts a number of characters from a string (starting from right) */
select stuff('Praveen!',8,1,'Rompicharla') /* Delete 1 character from a string, starting in position 8, and then insert "Rompicharla" in position 8 */
select substring('Praveen Sasi sai',9,4) /* It retrives the substring */
select cast(22.2 as int) /* It converts one data type to another data type without a specific format*/
select cast('praveen' as int) /* It will throw error */
select try_cast(22.2 as int) 
select try_cast('praveen' as int) /* It will give null */
select convert(int, 22.2) /* It converts one data type to another data type with a specific format*/
select convert(int, 'abc')
select try_convert(int, 'abc')
select parse('22' as int)  /* It converts the string to numeric or date/time */
select parse('1/24/2022' as datetime)
select getdate()
select current_timestamp
select datename(yyyy, getdate()) /* The DATENAME() function returns a specified part of a date. */
select Dob, datename(year,Dob) as Year from Emp14
select Dob, datename(day,Dob) as Day from Emp14
select Dob, datename(month,Dob) as Month from Emp14 /* Datename() functions is shown in character example month(June) */
select Dob, datepart(month,Dob) as Month from Emp14 /* Datepart() function is shown in int type example month(6) */
select Dob, datediff(year,Dob,Dob) as DateDifference from Emp14 /* The DATEDIFF() function returns the difference between two dates */
select datediff(year, '09/12/1998','01/01/2022') as Datedifference
select dateadd(month, 2, '01/01/2022') as DateAdd
select Id, Name, Dob, dateadd(day,20,Dob) as Dateadd from Emp14
select isdate(2022-1-24)
select isdate(2022-24-1)
select isdate(01/24/2022)
select Dob, Eomonth(Dob) from Emp14

select * from Emp14;
with Employee_city as (select * from Emp14 where city='Undi' or city='Bvrm') select Id, Name, city from Employee_city

select Name from Emp14 where Salary=(select max(Salary) from Emp14)

select Name, Age,City, rank() over(order by City) as RankNo from Emp14 
select Name, Age,City, row_number() over(order by City) as RankNo from Emp14
select Name, Age,City, dense_rank() over(order by City) as RankNo from Emp14 
select Name, Age,City, ntile(2) over(order by City) as RankNo from Emp14 
