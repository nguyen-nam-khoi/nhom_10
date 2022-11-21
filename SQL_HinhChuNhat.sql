DECLARE @Chieudai int, @Chieurong int,@Chuvi int, @Dientich int
SET @Chieudai=10
SET @Chieurong=6
SET @Chuvi =(@Chieudai+@Chieurong)*2
SET @CHUVI= (@CHIEUDAI + @CHIEURONG) * 2
SET @DIENTICH=@CHIEUDAI*@CHIEURONG
SELECT @CHUVI AS 'CHU VI HÌNH CHỮ NHẬT'
SELECT @DIENTICH AS 'DIỆN TÍCH HÌNH CHỮ NHẬT'