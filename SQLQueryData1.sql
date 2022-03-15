create table Applyjob(UserName varchar(20),FatherName varchar(20),Gender varchar(10),DOB date,Branch varchar(10),CollegeName varchar(30),EmailId varchar(50),MobileNumber varchar(10),UploadResume text,UploadImage image,Experience varchar(20))


create table Addemp(Empid int not null primary key, Empname varchar(50),Dept varchar(100),Dob date, Phone bigint)

drop table Addemp
