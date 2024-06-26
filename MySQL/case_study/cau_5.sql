use furama_dn ;
-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
 select kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong , dv.ten_dich_vu , hd.ngay_lam_hop_dong, hd.ngay_ket_thuc , sum( dv.chi_phi_thue + (hdct.so_luong * dvdk.gia)) as tong_tien
 from loai_khach lk 
 left join khach_hang kh on lk.ma_loai_khach = kh.ma_loai_khach
 left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
 left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
 left join hop_dong_chi_tiet  hdct on hd.ma_hop_dong = hdct.ma_hop_dong
 left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
 group by kh.ma_khach_hang, Kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc;