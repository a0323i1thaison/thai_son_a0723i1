use furama_dn ;
-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select *
from nhan_vien 
where ((ho_ten like'H%') or (ho_ten like'K%') or (ho_ten like'T%') ) and char_length(ho_ten) <= 15;