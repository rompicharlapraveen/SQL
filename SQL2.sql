create table branch(Bcode int, Bname varchar(10), Blocation varchar(20))
insert into branch values(1221,'HDFC','Hyd'),
(1201,'SBI','Bvrm'),(1001,'SBH','Hyd')

update branch set Blocation='Mumbai' where Bcode='1001'

Begin Transaction
delete from branch where Bcode='1001'
save Transaction b1
delete from branch where Bcode='1201'

Begin Transaction
Rollback Transaction b1

Begin Transaction
Rollback

select * from branch


Grant create session to username

Revoke create table from username