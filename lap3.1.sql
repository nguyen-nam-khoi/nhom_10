select tendean, cast(sum(thoigian) as decimal(5,2))  as 'tong so gio lam viec' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA
group by tendean
select tendean, convert(decimal(5,2),sum(thoigian))  as 'tong so gio lam viec' from CONGVIEC
inner join DEAN on CONGVIEC.MADA=DEAN.MADA
inner join PHANCONG on CONGVIEC.MADA=PHANCONG.MADA
group by tendean