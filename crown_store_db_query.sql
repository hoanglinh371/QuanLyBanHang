CREATE DATABASE crown_store_db;
USE crown_store_db;

CREATE TABLE KhachHang
(
  MaKH INT NOT NULL,
  TenKH NVARCHAR(50) NOT NULL,
  DiaChi NVARCHAR(200) NOT NULL,
  SoDienThoai VARCHAR(15) NOT NULL,
  PRIMARY KEY (MaKH)
);

CREATE TABLE NhanVien
(
  GioiTinh INT NOT NULL,
  MaNV INT NOT NULL,
  TenNV NVARCHAR(50) NOT NULL,
  NgaySinh DATE NOT NULL,
  DiaChi NVARCHAR(200) NOT NULL,
  SoDienThoai VARCHAR(15) NOT NULL,
  PRIMARY KEY (MaNV)
);

CREATE TABLE HoaDonBan
(
  SoHDB INT NOT NULL,
  NgayBan DATE NOT NULL,
  TriGia FLOAT NOT NULL,
  MaNV INT NOT NULL,
  MaKH INT NOT NULL,
  PRIMARY KEY (SoHDB),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
  FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
);

CREATE TABLE NhaCungCap
(
  MaNCC INT NOT NULL,
  TenNCC NVARCHAR(50) NOT NULL,
  DiaChi NVARCHAR(200) NOT NULL,
  SoDienThoai VARCHAR(15) NOT NULL,
  PRIMARY KEY (MaNCC)
);

CREATE TABLE BST
(
  MaBST INT NOT NULL,
  TenBST NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MaBST)
);

CREATE TABLE Size
(
  MaSize VARCHAR(15) NOT NULL,
  ChieuDai INT NOT NULL,
  ChieuRong INT NOT NULL,
  PRIMARY KEY (MaSize)
);

CREATE TABLE ChatLieu
(
  MaChatLieu INT NOT NULL,
  TenChatLieu NVARCHAR(50) NOT NULL,
  DacDiem NVARCHAR(200) NOT NULL,
  PRIMARY KEY (MaChatLieu)
);

CREATE TABLE HoaDonNhap
(
  SoHDN INT NOT NULL,
  NgayNhap DATE NOT NULL,
  TriGia FLOAT NOT NULL,
  MaNV INT NOT NULL,
  MaNCC INT NOT NULL,
  PRIMARY KEY (SoHDN),
  FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV),
  FOREIGN KEY (MaNCC) REFERENCES NhaCungCap(MaNCC)
);

CREATE TABLE SanPham
(
  MaSP INT NOT NULL,
  TenSP NVARCHAR(50) NOT NULL,
  DonGiaNhap FLOAT NOT NULL,
  DonGiaBan FLOAT NOT NULL,
  SoLuong INT NOT NULL,
  Anh VARCHAR(200) NOT NULL,
  MauSac NVARCHAR(15) NOT NULL,
  MaBST INT NOT NULL,
  MaNCC INT NOT NULL,
  MaSize VARCHAR(15) NOT NULL,
  MaChatLieu INT NOT NULL,
  PRIMARY KEY (MaSP),
  FOREIGN KEY (MaBST) REFERENCES BST(MaBST),
  FOREIGN KEY (MaNCC) REFERENCES NhaCungCap(MaNCC),
  FOREIGN KEY (MaSize) REFERENCES Size(MaSize),
  FOREIGN KEY (MaChatLieu) REFERENCES ChatLieu(MaChatLieu)
);

CREATE TABLE ChiTietHDB
(
  SLBan INT NOT NULL,
  SoHDB INT NOT NULL,
  MaSP INT NOT NULL,
  PRIMARY KEY (SoHDB, MaSP),
  FOREIGN KEY (SoHDB) REFERENCES HoaDonBan(SoHDB),
  FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);

CREATE TABLE ChiTietHDN
(
  SLNhap INT NOT NULL,
  SoHDN INT NOT NULL,
  MaSP INT NOT NULL,
  PRIMARY KEY (SoHDN, MaSP),
  FOREIGN KEY (SoHDN) REFERENCES HoaDonNhap(SoHDN),
  FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);

-- INSERT TABLE KhachHang
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) VALUES ('1', N'Thái Vũ', N'Hà Nội', '0123456789');
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) VALUES ('2', N'Minh Thành', N'Hải Phòng', '0987654321');
INSERT INTO KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) VALUES ('3', N'Lê Ninh', N'TP. Hồ Chí Minh', '0123987465');

-- INSERT TABLE NhanVien
INSERT INTO NhanVien(MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, SoDienThoai) VALUES ('1', N'Tùng Lâm', '1', '05/05/2002', N'Lâm Đồng', '0725912223');
INSERT INTO NhanVien(MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, SoDienThoai) VALUES ('2', N'Minh Hoàng', '1', '08/08/2002', N'Đà Nẵng', '0367000129');
INSERT INTO NhanVien(MaNV, TenNV, GioiTinh, NgaySinh, DiaChi, SoDienThoai) VALUES ('3', N'Trung Kiên', '1', '05/05/1999', N'TP. Hồ Chí Minh', '0126830773');

-- INSERT TABLE BST
INSERT INTO BST(MaBST, TenBST) VALUES ('1', N'Quần');
INSERT INTO BST(MaBST, TenBST) VALUES ('2', N'Áo');
INSERT INTO BST(MaBST, TenBST) VALUES ('3', N'Mũ');
INSERT INTO BST(MaBST, TenBST) VALUES ('4', N'Giày');
INSERT INTO BST(MaBST, TenBST) VALUES ('5', N'Phụ Kiện');

-- INSERT TABLE NhaCungCap
INSERT INTO NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) VALUES ('1', N'Helios', N'Thanh Xuân, Hà Nội', '0258882838');
INSERT INTO NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) VALUES ('2', N'Coolmate', N'Hà Đông, Hà Nội', '02450002935');
INSERT INTO NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) VALUES ('3', N'May10', N'Hà Nội', '0122229572');

-- INSERT TABLE Size
INSERT INTO Size(MaSize, ChieuDai, ChieuRong) VALUES ('S', '65', '41');
INSERT INTO Size(MaSize, ChieuDai, ChieuRong) VALUES ('M', '67', '43');
INSERT INTO Size(MaSize, ChieuDai, ChieuRong) VALUES ('L', '69', '44');
INSERT INTO Size(MaSize, ChieuDai, ChieuRong) VALUES ('XL', '71', '46');
INSERT INTO Size(MaSize, ChieuDai, ChieuRong) VALUES ('XXL', '73', '47');
INSERT INTO Size(MaSize, ChieuDai, ChieuRong) VALUES ('XXXL', '75', '49');

-- INSERT TABLE ChatLieu
INSERT INTO ChatLieu(MaChatLieu, TenChatLieu, DacDiem) VALUES ('1', N'Cotton Thun', N'Vải có độ bền cao, thích nghi với nhiều điều kiện thời tiết')
INSERT INTO ChatLieu(MaChatLieu, TenChatLieu, DacDiem) VALUES ('2', N'Cotton Lạnh', N'Cotton lạnh có thành phần tổng hợp từ Polyeste hay Nilon')
INSERT INTO ChatLieu(MaChatLieu, TenChatLieu, DacDiem) VALUES ('3', N'Cotton Lụa', N'Chất liệu vải vô cùng mềm mại, bóng mượt. Đem lại cảm giác mát mẻ, thoải mái khi mặc')
INSERT INTO ChatLieu(MaChatLieu, TenChatLieu, DacDiem) VALUES ('4', N'Vải Len', N'Co giãn, đàn hồi hồi lớn, tạo cảm giác mềm mại, thoải mái, không gây khó chịu khi mặc và có khả năng giữ nhiệt rất tốt')
INSERT INTO ChatLieu(MaChatLieu, TenChatLieu, DacDiem) VALUES ('5', N'Vải Spandex', N'Vải có độ đàn hồi cao và khả năng kéo dãn rất tốt. Thường được kết hợp với sợi Cotton để tạo nên vải thun có độ có giãn lớn, mỏng nhẹ và mang đến sự thoáng mát cho người mặc')

-- INSERT TABLE SanPham
INSERT INTO SanPham(MaSP, TenSP, DonGiaNhap, DonGiaBan, SoLuong, Anh, MauSac, MaBST, MaNCC, MaSize, MaChatLieu)
VALUES ('1', N'Áo Len', '100000', '150000', '99', 'https://cf.shopee.vn/file/3b7c091dde7bc418c5e3e0024400a856', N'Xám', '2', '3', 'S', '4');
INSERT INTO SanPham(MaSP, TenSP, DonGiaNhap, DonGiaBan, SoLuong, Anh, MauSac, MaBST, MaNCC, MaSize, MaChatLieu)
VALUES ('2', N'Quần Dài', '200000', '250000', '50', 'https://cf.shopee.vn/file/9b1d0811d4ed784faaed817cf11b57e7', N'Đỏ Đô', '1', '2', 'L', '5');
INSERT INTO SanPham(MaSP, TenSP, DonGiaNhap, DonGiaBan, SoLuong, Anh, MauSac, MaBST, MaNCC, MaSize, MaChatLieu)
VALUES ('3', N'Áo Len', '500000', '550000', '200', 'https://cf.shopee.vn/file/03d91d7cb1310b443adb8d85fd08ca70', N'Xanh', '2', '3', 'XXL', '2');

-- INSERT TABLE HoaDonNhap
INSERT INTO HoaDonNhap(SoHDN, NgayNhap, MaNV, MaNCC, TriGia) VALUES ('1', '10/20/2021', '1', '1', '10000000');
INSERT INTO HoaDonNhap(SoHDN, NgayNhap, MaNV, MaNCC, TriGia) VALUES ('2', '04/02/2021', '2', '2', '12000000');
INSERT INTO HoaDonNhap(SoHDN, NgayNhap, MaNV, MaNCC, TriGia) VALUES ('3', '11/03/2021', '1', '3', '15000000');
INSERT INTO HoaDonNhap(SoHDN, NgayNhap, MaNV, MaNCC, TriGia) VALUES ('4', '12/06/2021', '1', '1', '20000000');

-- INSERT TABLE HoaDonBan
INSERT INTO HoaDonBan(SoHDB, NgayBan, MaNV, MaKH, TriGia) VALUES ('1', '10/20/2021', '1', '1', '100000');
INSERT INTO HoaDonBan(SoHDB, NgayBan, MaNV, MaKH, TriGia) VALUES ('2', '04/02/2021', '2', '2', '120000');
INSERT INTO HoaDonBan(SoHDB, NgayBan, MaNV, MaKH, TriGia) VALUES ('3', '11/03/2021', '1', '3', '150000');
INSERT INTO HoaDonBan(SoHDB, NgayBan, MaNV, MaKH, TriGia) VALUES ('4', '12/06/2021', '1', '1', '200000');

-- INSERT TABLE ChiTietHDN
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('1', '1', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('1', '2', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('1', '3', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('2', '1', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('2', '2', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('2', '3', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('3', '1', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('3', '2', '100');
INSERT INTO ChiTietHDN(SoHDN, MaSP, SLNhap) VALUES ('3', '3', '100');

-- INSERT TABLE ChiTietHDB
INSERT INTO ChiTietHDB(SoHDB, MaSP, SLBan) VALUES ('1', '1', '1');
INSERT INTO ChiTietHDB(SoHDB, MaSP, SLBan) VALUES ('1', '2', '1');
INSERT INTO ChiTietHDB(SoHDB, MaSP, SLBan) VALUES ('2', '2', '2');
INSERT INTO ChiTietHDB(SoHDB, MaSP, SLBan) VALUES ('3', '3', '3');