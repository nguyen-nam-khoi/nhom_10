--bài 1a
go
create proc lab5_1_a @name nvarchar(20)
as
	begin
		print 'xin chào: ' + @name
	end
exec lab5_1_a 'Nam Khoi'
go
--bài 1b
create proc lab5_1_b @so1 int, @so2 int
as
	begin
		declare @tong int = 0;
		set @tong = @so1 + @so2 
		print 'tong: ' + cast(@tong as varchar(10))
	end

exec lab5_bai1_b 7,8
go
--bài 1c
create proc lab5_1_c @l int
as
	begin
		declare @tong int = 0, @i int = 0;
		while @i < @l
			begin
				set @tong = @tong + @i
				set @i = @i + 2
			end
		print 'tổng: ' + cast(@tong as varchar(10))
	end
exec lab5_bai1_c 15
go
--bài 1d
create proc lab5_1_d @a int, @b int
as
	begin
		while (@a != @b)
			begin
				if(@a > @b)
					set @a = @a -@b
				else
					set @b = @b - @a
			end
			return @a
	end
declare @l int
exec @l = lab5_1_d 5,7
print @l
go
