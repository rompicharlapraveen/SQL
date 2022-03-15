--1)Write a query to find the all the names which are similar in pronouncing as suresh, sort the result in the order of similarity

select Name from Assignment2 where Name like 'S%h'
select Name from Assignment2 where soundex(Name) = soundex('Suresh')
select soundex('Suresh') as 'Name',soundex('Sarush') as 'Name',soundex('Sorush') as 'Name'

--2)write a query to find second highest salary in organisation without using subqueries and top

select salary from Assignment3 e1 where 2-1 = (select count(distinct salary) from Assignment3 e2 where e2.salary > e1.salary)

select salary from Assignment3 order by salary desc offset 1 row fetch next 1 rows only

--3)write a query to find max salary and dep name from all the dept with out using top and limit

select Salary,DeptName from Assignment3 order by Salary desc offset 0 row fetch next 1 rows only

select top 1 Salary,DeptName from Assignment3 order by Salary desc

--4)Write a SQL query to the maximum number from a table without using MAX or MIN aggregate functions.
--Consider the numbers as mentioned below:
--7859
--6897
--9875
--8659
--7600
--7550

select top 1 Number from Assignment2 order by Number desc


--5) Write an SQL query to fetch all the Employees who are also managers from the EmployeeDetails table.

select E.Id,E.Name,E.Age,E.Salary,E.Dob,E.City,M.ManagerName from Emp14 E inner join Emp14 M on E.Id=M.ManagerId

select E.Id,E.Name,E.Age,E.Salary,E.Dob,E.City,m.ManagerName from Emp14 E, Manager m  where E.Id=m.ManagerId


