
--Create
create proc dbo.GetDetails
as
Begin
select * from Assignment3
End

exec dbo.GetDetails

--Alter Table
alter proc dbo.GetDetails
as 
Begin 
set nocount off
select * from Assignment3
update Assignment3 set Initial='S' where Id=107
End 

exec dbo.GetDetails

--Drop Table
drop proc dbo.GetDetails

--Input Parameter(Pass Values to Stored Procedure)

create proc dbo.GetDetails1
@Id int
as
Begin
select * from Assignment3 where Id=@Id;
End

alter proc dbo.GetDetails1
@Id int,
@name varchar(20)
as
Begin
select * from Assignment3 --where Id=@Id or Name=@name
End

Exec dbo.GetDetails1 101,'Praveen Kumar Rompicharla' -- or Exec dbo.GetDetails1 @Id=101 

--Output Parameter(Return Values to Stored Procedure)

alter proc dbo.GetDetails2(@EmpCount int output)
as
Begin
set nocount off
select @EmpCount = COUNT(Id) from Assignment3;  
End

-- Declare an Int Variable that corresponds to the Output parameter in SP  
DECLARE @TotalEmp INT   
 
-- Don't forget to use the keyword OUTPUT  
EXEC  [dbo].[GetDetails2] @TotalEmp OUTPUT  
  
-- Print the result  
print @TotalEmp 

--Local temp procedure
CREATE PROCEDURE #Temp1 
AS  
BEGIN  
--PRINT 'Local temp procedure'  
select * from Assignment3
END  

exec #Temp1

--Global temp procedure
CREATE PROCEDURE ##TEMP  
AS  
BEGIN  
PRINT 'Global temp procedure'  
END  

--Optional Parameter
alter proc Persons1
(
	@Id int,
	@Name varchar(20),
	@FatherName varchar(20) = 'a/a'
)
as
Begin
	insert into Person2 values(@Id, @Name, @FatherName)
End

exec Persons1  25,'ss'

select * from Person2

exec sp_rename 'Persons','Persons1'
exec sp_help


-- User Defined Functions
CREATE FUNCTION udfNet_Sales(  
    @quantity INT,  
    @price DEC(10,2),  
    @discount DEC(3,2)  
)  
RETURNS DEC(10,2)  
AS   
BEGIN  
    RETURN @quantity * @price * (1 - @discount);  
END;   

SELECT dbo.udfNet_Sales(25, 500, 0.2) AS net_sales;  


ALTER FUNCTION udfNet_Sales(  
    @quantity INT,  
    @price DEC(10,2),  
    @discount DEC(3,2)  
)  
RETURNS DEC(10,2)  
AS   
BEGIN  
    RETURN @quantity * @price * (1 - @discount);  
END;   

SELECT dbo.udfNet_Sales(25, 500, 0.2) AS net_sales; 


create Function Udf_tablevalued()
returns table
as 
return(select * from Assignment3)

select * from Udf_tablevalued(); 



drop Function udfNet_Sales



create function Addition(@a int, @b int)
returns int
as
begin
	return @a+@b
end

select dbo.Addition(1,2) as 'Add'

alter function Addition(@a int, @b int)
returns int
as
begin
	return @a+@b
end

select dbo.Addition(1,2) as 'Add of Two Numbers'

drop function Addition

create function GetInfo(@Id int)
returns varchar(50)
as
begin
  return(select Name from Assignment3 where Id=@Id)
end
print dbo.GetInfo(101)

alter function GetInfo(@age int)
returns varchar(50)
as
begin
  return(select Name from Assignment4 where age=@age)
end
print dbo.GetInfo(25)

create function dbo.GetInfo1(@Age int)
returns Table
as
  return(select * from Assignment4 where Age>=@Age)
select * from GetInfo1(25)

alter function Assig()
    RETURNS @Assignment4 TABLE (
	Id int primary key,
	Name varchar(20),
	Age int,
	Dob date
    )
AS
BEGIN
    INSERT INTO @Assignment4
    SELECT Id, Name, Age, Dob from @Assignment4

    INSERT INTO @Assignment4
        SELECT Id, Name, Age, Dob from @Assignment4
    RETURN;
END;


select * from dbo.Assig()



