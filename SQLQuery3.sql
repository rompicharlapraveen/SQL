select * from Assignment3 


create proc Getinfo123
as
Begin
	waitfor delay '00:00:05'
select * from Assignment3
End

exec Getinfo123