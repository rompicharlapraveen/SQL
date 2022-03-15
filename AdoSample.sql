create table Info(Id int primary key identity(1,1), Name varchar(20) not null unique, Email varchar(50) not null unique, Age int not null)

insert into Info values('Praveen','Praven@gmail.com',23),('Sasi','Sasi@gmail.com',24)

select * from Info 

drop table Info 
