use QLSV2
go
CREATE TABLE KHOA
(
	MaKhoa varchar (6) primary key,
	TenKhoa nvarchar (30),
)
go
CREATE TABLE NGANH
(
	MaNganh varchar (6) primary key,
	TenNganh nvarchar (30),
	MaKhoa varchar (6) foreign key (MaKhoa) references KHOA(MaKhoa)
)
go
CREATE TABLE LOP
(
	MaLop varchar (6) primary key,
	TenLop nvarchar (30) not null,
	MaNganh varchar (6) foreign key (MaNganh) references NGANH(MaNganh),
	KhoaHoc int not null,
	HeDT nvarchar (10) not null,
	NamNhapHoc int default 0
)
go
CREATE TABLE SINHVIEN
(
	MaSV varchar (6) primary key,
	HoTen nvarchar (30) not null,
	MaLop varchar (6) foreign key (MaLop) references LOP(MaLop),
	GioiTinh nvarchar(5) default N'Nam',
	NgaySinh date default getdate(),
	DiaChi nvarchar(70)
)
go
CREATE TABLE HOCPHAN
(
	MaHP varchar(6) primary key,
	TenHP nvarchar(30) not null,
	SoDVHT int default 3,
	MaNganh  varchar (6) foreign key (MaNganh) references NGANH(MaNganh),
	HocKy int,
)
go

CREATE TABLE DIEMHOCPHAN
(
	MaSV varchar (6) not null,
	MaHP varchar(6) not null,
	DiemHP int default 0,
	primary key (MaSV,MaHP),
	foreign key (MaSV) references SINHVIEN(MaSV),
	foreign key (MaHP) references HOCPHAN(MaHP),
)
go