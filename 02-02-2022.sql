
--Assignment2
create table Assignment4(Id int primary key, Name varchar(max), Age int, Dob date)
insert into Assignment4 values(1,'Praveen123',23,'06/09/1998'),(2,'121Sai',22,'10/03/1997'),(3,'Sa11i',21,'02/21/2000'),(4,'Ma1d1hu',23,'08/29/1996')
insert into Assignment4 values(5,'Srinu',25,'01/01/2017'),(6,'Vasu',28,'12/31/2017'),(7,'Ram',27,'12/31/2000')
insert into Assignment4 values(8,'Sri1nu',18,'09/01/2012')
select * from Assignment4


--1. Write a script to extracts all the numerics from Alphanumeric String

create function AlPhanumericName(@input varchar(30))  
Returns varchar(30)  
As  
Begin  
  Declare @Index int = Patindex('%[^0-9]%', @input)  
  Begin  
    While @Index > 0  
    Begin  
	  set @input = Stuff(@input, @Index, 1, '' )
      set @Index = Patindex('%[^0-9]%', @input )  
    End  
  End  
  Return @input
End
select dbo.AlPhanumericName(Name) as Number from Assignment4
select * from Assignment4
select substring(Name, patindex('%[0-9]%', Name), patindex('%[0-9][^0-9]%', Name + 't') - patindex('%[0-9]%', Name) + 1) AS Number from Assignment4
select Name from Assignment4 where Name like '[^a-zA-Z]'
SELECT * FROM Assignment4 WHERE Name > 0 ORDER BY CAST(Name as numeric int) ASC
select * from Assignment4  ISNUMERIC(name)=1
select  Name from  Assignment4 where  regexp_like(Name,'^[0-9]$')
SELECT Name FROM Assignment4 WHERE Name  not like '%[^a-zA-Z]%'

SELECT  Name FROM Assignment4 WHERE len(translate(Name,'0123456789','1')) is null AND Name IS NOT NULL


declare @fieldName nvarchar(100)='AAAA1221.121BBB5B'
declare @lenSt int=(select PATINDEX('%[0-9]%', @fieldName)-1)
declare @lenEnd int=(select PATINDEX('%[0-9]%', REVERSE(@fieldName))-1)



select SUBSTRING(@fieldName, PATINDEX('%[0-9]%', @fieldName), (LEN(@fieldName) - @lenSt -@lenEnd))
select * from Assignment4

--2. Write a script to calculate age based on the Input DOB

Declare @d date = '09-06-1998'
select datediff(year,@d,getdate()) as Age 
select  datediff(yy,convert(datetime, @d),getdate()) as Age 
select  datediff(month,@d,getdate())/12 as Age

--3. Create a column in a table and that should throw an error when we do SELECT * or SELECT of that column.If we select other columns then we should see results

--https://www.mssqltips.com/sqlservertip/2124/filtering-sql-server-columns-using-column-level-permissions/

GRANT SELECT ON dbo.Person1 (Name) TO Domain
go
Deny SELECT ON dbo.Person1 (FatherName) TO Assignment3
go


--4. Display Calendar Table based on the input year. If I give the year 2017 then populate data for 2017 only
--Date e.g.  1/1/2017 

--DayofYear 1 – 365/366 (Note 1)

--Week 1-52/53

--DayofWeek 1-7

--Month 1-12

--DayofMonth 1-30/31 (Note 2)

--Note 1: DayofYear varies depending on the number of days in the given year.

--Note 2: DayofMonth varies depending on number of days in the given month

--Weekly calculations are always for a 7 day period Sunday to Saturday.


--DECLARE @d date = '1/1/2017'
Declare @d date = '12/31/2020'
select datepart (dy , @d)as 'Day Of year' , datename(ww,@d) as 'Week' , datepart(dw,@d) as 'Day of Week' ,month(@d) as 'Month', day(@d) as 'Day of Month'

--5.Display Emp and Manager Hierarchies based on the input till the topmost hierarchy. (Input would be empid)

create table Employee2(Empid int primary key, Empname varchar(30), Managerid int, ManagerName varchar(30), ManagerHierarchies int)
insert into Employee2 values(1,'Praveen',1,'Sumith',0),(2,'Sasi',2,'Raju',1),(3,'Sai',3,'Sam',1),(4,'Madhu',4,'Ravi',2)
select * from Employee2
select Empid,Empname,ManagerName from Employee2 where Empid=Managerid 
select Empid, Empname, ManagerName, ManagerHierarchies from Employee2 where Empid=(select ManagerHierarchies from Employee2 where Empid=3)

