
select iif(luong>ltb,'Khong tang luong','tang luong')
as thuong,tennv,ltb
from
(select tennv,luong,ltb from NHANVIEN,
(select phg,avg(luong) as'ltb' from NHANVIEN group by phg) as temp
where nhanvien.PHG=temp.PHG) as abc
 
 
select * from NhanVien
select phg,avg(luong) as'ltb' from NHANVIEN group by phg
--Nếu lương nhân viên nhỏ hơn trung bình lương mà nhân viên đó đang làm việc thì
--xếp loại “nhanvien”, ngược lại xếp loại “truongphong”
DECLARE @ltbinh TABLE(MAPB INT, LUONGTB FLOAT)
INSERT INTO @ltbinh
SELECT PHG, AVG(LUONG) FROM NHANVIEN GROUP BY PHG
SELECT * FROM @ltbinh
SELECT TENNV,PHG, LUONG, LUONGTB,
TINHTRANG = CASE 
WHEN LUONG > LUONGTB THEN 'TRUONG PHONG'
ELSE 'NHAN VIEN'
END
FROM NHANVIEN nhanvien
INNER JOIN @ltbinh ltbinh
ON nhanvien.PHG = ltbinh.MAPB

SELECT TENNV = CASE 
WHEN PHAI = 'Nam' THEN 'Mr. ' + TENNV
WHEN PHAI = N'Nữ' THEN 'Ms. ' + TENNV
ELSE 'gioi tinh thu ba' 
END
FROM NHANVIEN

SELECT TENNV, LUONG,
Thue = CASE
WHEN LUONG between 0 and 25000 THEN LUONG * 0.1
WHEN LUONG between 25000 and 30000 THEN LUONG * 0.12
WHEN LUONG between 30000 and 40000 THEN LUONG * 0.15
WHEN LUONG between 40000 and 50000 THEN LUONG * 0.2
ELSE LUONG * 0.25
END
FROM NHANVIEN
--cau2
SELECT * FROM NHANVIEN
DECLARE @batdau INT = 2, @vitridem INT;
SET @vitridem = (SELECT COUNT(*) FROM NHANVIEN)
WHILE (@batdau < @vitridem)
BEGIN
IF (@batdau = 4) 
BEGIN 
SET @batdau  += 2;
CONTINUE;
END
SELECT MANV, HONV, TENLOT, TENNV FROM NHANVIEN 
WHERE CAST(MANV AS INT) = @batdau;
SET @batdau =@batdau + 2;
END
--cau3
GO
BEGIN TRY
	INSERT PHONGBAN
	VALUES(799, 'ZXK - 799', '2008-07-01', '0179-05-22')
	PRINT 'SUCCESS: record was inserted.'
END TRY 
BEGIN CATCH 
PRINT 'FAILURE: record was not inserted.'
PRINT 'ERROR ' + CONVERT (VARCHAR , ERROR_NUMBER (), 1) + ': ' + ERROR_MESSAGE()
END CATCH
GO
DECLARE @CHIA FLOAT,@A CHAR
IF(@CHIA/0)>0
BEGIN
SET @A=N' KHONG HOP LE'
RAISERROR (@A,16,1)
END
-----Tính tổng các số từ 1 đến 10 trừ số 4----------------
DECLARE @tong1 int = 0,@n INT = 10,@i INT
SET @i = 1
WHILE (@i<=@n)
BEGIN
if (@n %2 =0)
SET @tong1 = @tong1 + @i
SET @i = @i + 1 
if(@i = 4)
SET @tong1 = @tong1 - 4
END
PRINT ('Ket qua la: ' )
PRINT @tong1


-----Tính tổng các số từ 1 đến 10----------------
DECLARE @tong int = 0,@n1 int,@i1 int = 1;
SET @n1 = 10 
WHILE (@i1<=@n1)
BEGIN
if (@i1 %2 =0)
SET @tong = @tong + @n1
SET @i1 = @i1 + 1 
END
PRINT ('Ket qua la: ' )
PRINT @tong
