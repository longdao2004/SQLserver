USE [QLSV]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 9/23/2024 1:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[tentaikhoan] [varchar](30) NOT NULL,
	[matkhau] [varchar](250) NULL,
 CONSTRAINT [PK_taikhoan] PRIMARY KEY CLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiem]    Script Date: 9/23/2024 1:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiem](
	[nguoicapnhat] [varchar](30) NULL,
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[malophoc] [bigint] NOT NULL,
	[masinhvien] [varchar](50) NOT NULL,
	[lanhoc] [int] NULL,
	[diemthilan1] [float] NULL,
	[diemthilan2] [float] NULL,
 CONSTRAINT [PK_tblDiem_1] PRIMARY KEY CLUSTERED 
(
	[malophoc] ASC,
	[masinhvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiaoVien]    Script Date: 9/23/2024 1:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiaoVien](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[magiaovien] [int] IDENTITY(1,1) NOT NULL,
	[matkhau] [varchar](50) NULL,
	[ho] [nvarchar](10) NULL,
	[tendem] [nvarchar](20) NULL,
	[ten] [nvarchar](10) NULL,
	[gioitinh] [tinyint] NULL,
	[ngaysinh] [date] NULL,
	[dienthoai] [varchar](30) NULL,
	[email] [varchar](150) NULL,
	[diachi] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblGiaoVien] PRIMARY KEY CLUSTERED 
(
	[magiaovien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLopHoc]    Script Date: 9/23/2024 1:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLopHoc](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[malophoc] [bigint] IDENTITY(1,1) NOT NULL,
	[mamonhoc] [int] NULL,
	[magiaovien] [int] NULL,
	[daketthuc] [tinyint] NULL,
 CONSTRAINT [PK_tblLopHoc] PRIMARY KEY CLUSTERED 
(
	[malophoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 9/23/2024 1:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[ngaytao] [datetime] NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[mamonhoc] [int] IDENTITY(1,1) NOT NULL,
	[tenmonhoc] [nvarchar](150) NULL,
	[sotinchi] [int] NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 9/23/2024 1:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[ngaytao] [datetime] NULL,
	[nguoicapnhat] [varchar](30) NULL,
	[nguoitao] [varchar](30) NULL,
	[ngaycapnhat] [datetime] NULL,
	[masinhvien] [varchar](50) NOT NULL,
	[matkhau] [varchar](50) NULL,
	[ho] [nvarchar](10) NULL,
	[tendem] [nvarchar](20) NULL,
	[ten] [nvarchar](10) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [tinyint] NULL,
	[quequan] [nvarchar](150) NULL,
	[diachi] [nvarchar](150) NULL,
	[dienthoai] [varchar](30) NULL,
	[email] [varchar](150) NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[masinhvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_diemthilan1]  DEFAULT ((0)) FOR [diemthilan1]
GO
ALTER TABLE [dbo].[tblDiem] ADD  CONSTRAINT [DF_tblDiem_diemthilan2]  DEFAULT ((0)) FOR [diemthilan2]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  CONSTRAINT [DF_tblGiaoVien_gioitinh]  DEFAULT ((1)) FOR [gioitinh]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblLopHoc] ADD  CONSTRAINT [DF_tblLopHoc_daketthuc]  DEFAULT ((0)) FOR [daketthuc]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblMonHoc] ADD  CONSTRAINT [DF_tblMonHoc_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_ngaytao]  DEFAULT (getdate()) FOR [ngaytao]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_nguoicapnhat]  DEFAULT ('admin') FOR [nguoicapnhat]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_nguoitao]  DEFAULT ('admin') FOR [nguoitao]
GO
ALTER TABLE [dbo].[tblSinhVien] ADD  CONSTRAINT [DF_tblSinhVien_ngaycapnhat]  DEFAULT (getdate()) FOR [ngaycapnhat]
GO
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblLopHoc] FOREIGN KEY([malophoc])
REFERENCES [dbo].[tblLopHoc] ([malophoc])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblLopHoc]
GO
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblSinhVien1] FOREIGN KEY([masinhvien])
REFERENCES [dbo].[tblSinhVien] ([masinhvien])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblSinhVien1]
GO
ALTER TABLE [dbo].[tblLopHoc]  WITH CHECK ADD  CONSTRAINT [FK_tblLopHoc_tblGiaoVien] FOREIGN KEY([magiaovien])
REFERENCES [dbo].[tblGiaoVien] ([magiaovien])
GO
ALTER TABLE [dbo].[tblLopHoc] CHECK CONSTRAINT [FK_tblLopHoc_tblGiaoVien]
GO
ALTER TABLE [dbo].[tblLopHoc]  WITH CHECK ADD  CONSTRAINT [FK_tblLopHoc_tblMonHoc] FOREIGN KEY([mamonhoc])
REFERENCES [dbo].[tblMonHoc] ([mamonhoc])
GO
ALTER TABLE [dbo].[tblLopHoc] CHECK CONSTRAINT [FK_tblLopHoc_tblMonHoc]
GO
/****** Object:  StoredProcedure [dbo].[allLopHoc]    Script Date: 9/23/2024 1:55:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[allLopHoc]
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(@tukhoa); -- lowercase <-> viết thường
	select 
		l.malophoc,
		l.mamonhoc,
		m.tenmonhoc,
		m.sotinchi,
		case 
			when len(g.tendem) > 0 then concat(g.ho,' ',g.tendem,' ',g.ten)
			else concat(g.ho,' ',g.ten) end as gvien ,
		case when l.daketthuc = 1 then N'Đã kết thúc'
				else N'Đang mở' end trangthai
	from tblLopHoc l
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	where  m.tenmonhoc like '%'+@tukhoa+'%' -- tìm kiếm tương đối có chứa từ khóa
	or lower(concat(g.ho,' ',g.tendem,' ',g.ten)) like '%'+@tukhoa+'%' -- tìm kiếm tương đối có chứa từ khóa
	or lower(concat(g.ho,' ',g.tendem,' ',g.ten)) like '%'+@tukhoa+'%' -- tìm kiếm tương đối có chứa từ khóa
	order by daketthuc;
end
GO
/****** Object:  StoredProcedure [dbo].[chamdiem]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[chamdiem]
	@magiaovien varchar(10), -- ai chấm <-> nguoif cập nhật trong bảng
	@malop bigint, -- lớp nào
	@masinhvien varchar(30),-- chấm cho ai
	@diemlan1 float,--điểm lần 1 là bnhiu
	@diemlan2 float--điểm lần 2 là bao nhiu
as
begin
	update tblDiem
	set
		ngaycapnhat = getdate(),--getdate() là hàm lấy giờ hiện tại của hệ thống
		nguoicapnhat = @magiaovien,		
		diemthilan1 = @diemlan1,
		diemthilan2 = @diemlan2
	where malophoc = @malop and masinhvien = @masinhvien;
	if @@ROWCOUNT >0 return 1 -- nếu thực thi thành công trả về 1
	else return 0; -- ngược lại trả về 0
end
GO
/****** Object:  StoredProcedure [dbo].[dangnhap]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[dangnhap]
	@loaitaikhoan nvarchar(10),
	@taikhoan varchar(50),
	@matkhau varchar(50)
as
begin
	if @loaitaikhoan = 'admin' 
		select * from taikhoan where tentaikhoan = @taikhoan and matkhau = @matkhau
		else if @loaitaikhoan = 'gv' 
			select * from tblGiaoVien where cast(magiaovien as varchar(50)) = @taikhoan and matkhau = @matkhau
		else select * from tblSinhVien where masinhvien = @taikhoan and matkhau = @matkhau ;
end
GO
/****** Object:  StoredProcedure [dbo].[dkyhoc]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[dkyhoc]
		@masinhvien varchar(50),
		@malophoc bigint
	as
	begin
		--vì bảng điểm(tblDiem) chỉ có cột mã lớp học (khóa ngoại) liên kết tới bảng  lớp học(tblLopHoc) <-> không có thông tin môn học
		--> từ mã lớp cần tìm ra được mã môn học ( nằm trong tblLopHoc) dựa vào inner join --> khai báo 1 biến để lấy thông tin môn học, cụ thể là mã môn học
		--vì số lần học được tính tự động -> cần khai báo 1 biến để đếm số lần học trước đó
		declare @v_lanhoc int,
				@v_mamonhoc int,
				@v_dadangky int;
		-- lấy mã môn học dựa vào mã lớp
		select @v_mamonhoc = mamonhoc
		from tblLopHoc
		where malophoc = @malophoc;

		-- từ mã môn học + mã sinh viên => tính được số lần học trước đó
		select @v_lanhoc = count(*)
		from tblDiem d
		inner join tblLopHoc l on d.malophoc = l.malophoc
		where l.daketthuc = 1 --> chỉ tính số lần học từ các lớp có trạng thái đã kết thúc
		and d.masinhvien = @masinhvien
		and l.mamonhoc = @v_mamonhoc;

		-- kiểm tra xem sinh viên này hiện có đăng ký lớp khác học cùng 1 môn hay không
		select @v_dadangky = count(*)
		from tblDiem d
		inner join tblLopHoc l on d.malophoc = l.malophoc
		where l.daketthuc = 0 --> lớp đang mở
		and l.mamonhoc = @v_mamonhoc --> môn học này đã đăng ký
		and d.masinhvien = @masinhvien; --> sinh viên xác định

		--> nếu kết quả trả về v_dadangky > 0 --> có nghĩa hiện tại sinh viên này đã đăng ký 1 lớp học cùng môn học này rồi
		if @v_dadangky>0 return -1;

		--lần học mới sẽ bằng số lần học trước đó + 1
		set @v_lanhoc = @v_lanhoc + 1;

		--> hơi rối chút, các bạn chịu khó đọc kỹ nhé. Đoạn nào chưa hiểu cứ dừng(hoặc tua) video lại mà ngâm

		--> insert dữ liệu vào bảng điểm <-> đăng ký môn học
		insert into tblDiem(nguoitao,masinhvien,malophoc,lanhoc)
		values(@masinhvien,@masinhvien,@malophoc,@v_lanhoc);--sinh viên đăng ký -> người tạo = mã sinh viên

		--kiểm tra thực thi câu lệnh sql
		if @@ROWCOUNT > 0 return 1 else return 0;
	end
GO
/****** Object:  StoredProcedure [dbo].[dsLopChuaDKy]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dsLopChuaDKy]
	@masinhvien varchar(50)
as
begin
	select
		l.malophoc,
		l.mamonhoc,
		m.tenmonhoc,
		m.sotinchi,
		case when len(g.tendem)>0 then concat(g.ho,' ',g.tendem,' ',g.ten)
		else concat(g.ho,' ',g.ten) end as gvien
	from tblLopHoc l
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	where l.daketthuc = 0 -- lấy các lớp đang mở
	and l.malophoc not in ( select malophoc from tblDiem where masinhvien = @masinhvien);
end
GO
/****** Object:  StoredProcedure [dbo].[dssv]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dssv]
	@malophoc bigint,
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(@tukhoa); -- set lowercase <-> chữ thường hết
	select 
		d.masinhvien,
		case when len(s.tendem)>0 -- kiểm tra độ dài của tên đệm, nếu > 0 có nghĩa là có tên đệm
			then concat(s.ho,' ',s.tendem,' ',s.ten) -- nối họ + tên đệm + tên
			else concat(s.ho,' ',s.ten) -- nếu k có tên đệm thì nối họ + tên
		end as hoten,
		d.lanhoc,
		d.diemthilan1,
		d.diemthilan2
	from tblDiem d
	inner join tblSinhVien s on d.masinhvien = s.masinhvien
	where d.malophoc = @malophoc -- chỉ lấy danh sách lớp tương ứng với 1 mã lớp được truyền vào
	and (
			lower(concat(s.ho,' ',s.tendem,' ',s.ten)) like '%'+@tukhoa+'%'
			or lower(concat(s.ho,' ',s.ten)) like '%'+@tukhoa+'%'
		);
end
GO
/****** Object:  StoredProcedure [dbo].[InsertGV]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertGV]
	@nguoitao varchar(30),
	@ho nvarchar(10),
	@tendem nvarchar(20), 
	@ten nvarchar(10),
	@gioitinh tinyint,
	@ngaysinh date,
	@email varchar(150),
	@dienthoai varchar(30),
	@diachi nvarchar(150)
as
begin
	insert into tblGiaoVien(nguoitao,ho,tendem,ten,gioitinh,ngaysinh,email,dienthoai,diachi)
	values(@nguoitao,@ho,@tendem,@ten,@gioitinh,@ngaysinh,@email,@dienthoai,@diachi);
	if @@ROWCOUNT > 0 return 1 else return 0;
end;
GO
/****** Object:  StoredProcedure [dbo].[insertlophoc]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertlophoc]
	@nguoitao varchar(30),
	@magiaovien int,
	@mamonhoc int
as
begin
	insert into tblLopHoc(nguoitao,mamonhoc,magiaovien)
	values(@nguoitao,@mamonhoc,@magiaovien);
	if @@ROWCOUNT > 0 return 1 else return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[insertMH]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[insertMH]
	@nguoitao varchar(30),
	@tenmonhoc nvarchar(150),
	@sotinchi int
as
begin
	insert into tblMonHoc(nguoitao,tenmonhoc,sotinchi)
	values(@nguoitao,@tenmonhoc,@sotinchi);
	if @@ROWCOUNT > 0 return 1 else return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[ketthuchocphan]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ketthuchocphan]
	@magiaovien varchar(30), --người kết thúc
	@malop bigint -- kết thúc lớp học phần nào
as
begin
	update tblLopHoc
	set
		nguoicapnhat = @magiaovien,
		ngaycapnhat = getdate(),
		daketthuc = 1
	where malophoc = @malop;
	if @@ROWCOUNT>0 return 1 -- cập nhật thành công
	else return 0; -- thất bại
end
GO
/****** Object:  StoredProcedure [dbo].[monDaDKy]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[monDaDKy]
	@masinhvien varchar(50)
as
begin
	select 
		l.malophoc,
		m.tenmonhoc,
		case when(len(g.tendem) > 0 ) then concat(g.ho,' ',g.tendem,' ',g.ten)
		else concat(g.ho,' ',g.ten) end as gvien,
		m.sotinchi,
		d.diemthilan1,
		d.diemthilan2
	from tblDiem d
	inner join tblLopHoc l on d.malophoc = l.malophoc
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	where l.daketthuc = 0 -- môn đã đăng ký <-> lớp đang/chưa mở  => trạng thái kết thúc là 0; nếu trạng thái đã kết thúc = 1 => học phần đã học xong, điểm chác đã xong @@
	and d.masinhvien = @masinhvien;
end
GO
/****** Object:  StoredProcedure [dbo].[selectAllGV]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectAllGV]
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(ltrim(rtrim(@tukhoa)));
	select 
		magiaovien,
		case when len(ltrim(rtrim(tendem))) > 0 then concat(ltrim(rtrim(ho)),' ',ltrim(rtrim(tendem)), ' ', ltrim(rtrim(ten)))
		else  concat(ltrim(rtrim(ho)),' ', ltrim(rtrim(ten))) end as hoten,
		convert(varchar(10),ngaysinh,103) as ngaysinh,
		case when gioitinh = 1 then 'Nam' else N'Nữ' end as gt,
		dienthoai,
		email,
		diachi
	from tblGiaoVien
	where lower(ho) like '%'+@tukhoa+'%'
	or lower(tendem) like '%'+@tukhoa+'%'
	or lower(ten) like '%'+@tukhoa+'%'
	or lower(ho) like '%'+@tukhoa+'%'
	or lower(email) like '%'+@tukhoa+'%'
	or lower(dienthoai) like '%'+@tukhoa+'%'
	or lower(magiaovien) like '%'+@tukhoa+'%'
	order by ten;
end
GO
/****** Object:  StoredProcedure [dbo].[selectAllMonHoc]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectAllMonHoc]
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(ltrim(rtrim(@tukhoa)));
	select 
		mamonhoc,
		tenmonhoc,
		sotinchi
	from tblMonHoc
	where mamonhoc like '%'+@tukhoa+'%'
	or lower(tenmonhoc) like '%'+@tukhoa+'%'
	order by tenmonhoc;	
end;
GO
/****** Object:  StoredProcedure [dbo].[SelectAllSinhVien]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SelectAllSinhVien]
	@tukhoa nvarchar(50)
as
	set @tukhoa = lower(ltrim(rtrim(@tukhoa)));
	select 
		masinhvien,
		case when len(tendem)>0 then concat(ho,' ',ten)
		else concat(ho,' ',tendem,' ',ten) end as hoten,
		convert(varchar(10),ngaysinh,103) as nsinh,
		case when gioitinh = 1 then 'Nam' else N'Nữ' end as gt,
		quequan,diachi,dienthoai,email
	from tblSinhVien
	where lower(ho) like '%'+@tukhoa+'%'
	or lower(tendem) like '%'+@tukhoa+'%'
	or lower(ten) like '%'+@tukhoa+'%'
	or lower(email) like '%'+@tukhoa+'%'
	or lower(diachi) like '%'+@tukhoa+'%'
	order by ten;
GO
/****** Object:  StoredProcedure [dbo].[selectgv]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectgv]
	@mgv int
as
begin
	select
		ho,tendem,ten,
		gioitinh,convert(varchar(10),ngaysinh,103) as ngsinh,
		dienthoai,email,diachi
	from tblGiaoVien
	where magiaovien = @mgv;
end
GO
/****** Object:  StoredProcedure [dbo].[selectLopHoc]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectLopHoc]
	@malophoc bigint
as
begin
	select
		m.tenmonhoc,
		g.magiaovien,
		l.mamonhoc
	from tblLopHoc l
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	where malophoc = @malophoc;
end
--drop proc selectlophoc
GO
/****** Object:  StoredProcedure [dbo].[selectmh]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[selectmh]
	@mamh int
as
begin
	select 
		tenmonhoc,
		sotinchi
	from tblMonHoc
	where mamonhoc = @mamh;
end
GO
/****** Object:  StoredProcedure [dbo].[selectsv]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[selectsv]
	@msv varchar(50)
as
begin
	select
		ho,tendem,ten,
		convert(varchar(10),ngaysinh,103) as ngsinh,
		gioitinh,
		quequan,diachi,dienthoai,email
	from tblSinhVien
	where masinhvien = @msv;
end
GO
/****** Object:  StoredProcedure [dbo].[ThemMoiSV]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ThemMoiSV]
	@ho nvarchar(10),@tendem nvarchar(20), @ten nvarchar(10),
	@ngaysinh date, @gioitinh tinyint, @quequan nvarchar(150),
	@diachi nvarchar(150), @dienthoai varchar(30), @email varchar(150)
as
begin
	insert into tblSinhVien(masinhvien,ho,tendem,ten,ngaysinh,gioitinh,quequan,diachi,dienthoai,email)
	values( 'SV'+cast(next value for sinhvienSeq as varchar(30)),@ho,@tendem,@ten,@ngaysinh,@gioitinh,@quequan,@diachi,@dienthoai,@email);
	if @@ROWCOUNT > 0 begin return 1 end
	else begin return 0 end;
end;
GO
/****** Object:  StoredProcedure [dbo].[tracuudiem]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[tracuudiem]
	@masinhvien varchar(50),
	@tukhoa nvarchar(50) -- cái này dùng để lọc dữ liệu tìm kiếm
as
begin
	set @tukhoa = lower(@tukhoa); -- lower là cho toàn bộ kí tự in thường
	select 
		m.mamonhoc,
		m.tenmonhoc,
		d.lanhoc,
		case when len(g.magiaovien)>0 then concat(g.ho,' ',g.tendem,' ',g.ten)
		else concat(g.ho,' ',g.ten) end as gvien,--kiểm tra nếu có tên đệm thì nối họ + tên đệm + tên ngược lại thì nối họ + tên
		d.diemthilan1,
		d.diemthilan2
	from tblDiem d
	inner join tblLopHoc l on d.malophoc = l.malophoc
	inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
	inner join tblGiaoVien g on l.magiaovien = g.magiaovien
	where l.daketthuc = 1
	and d.masinhvien = @masinhvien
	and lower(m.tenmonhoc) like '%'+@tukhoa+'%'; -- lọc theo từ khóa tìm kiếm truyền vào
end
GO
/****** Object:  StoredProcedure [dbo].[tracuulop]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tracuulop]
	@magiaovien int,
	@tukhoa nvarchar(50)
as
begin
	set @tukhoa = lower(@tukhoa);--cho toàn bộ kí tự trở thành lowercase/viết thường
	select 
		tb.malophoc,
		tb.mamonhoc,
		tb.tenmonhoc,
		tb.sotinchi,
		count(d.masinhvien) as siso
	from
	(
		select 
			l.malophoc,
			l.mamonhoc,
			m.tenmonhoc,
			m.sotinchi
		from tblLopHoc l
		inner join tblMonHoc m on l.mamonhoc = m.mamonhoc
		where daketthuc = 0
		and magiaovien = @magiaovien
		and lower(m.tenmonhoc) like '%'+@tukhoa+'%' -- tìm kiếm tương đối <--> có chứa từ khóa 
	) as tb inner join tblDiem d on d.malophoc = tb.malophoc
	group by tb.malophoc,tb.mamonhoc,tb.tenmonhoc,
		tb.sotinchi;
end
GO
/****** Object:  StoredProcedure [dbo].[updateGV]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateGV]
	@magiaovien int,
	@nguoicapnhat varchar(30),
	@ho nvarchar(10),
	@tendem nvarchar(20), 
	@ten nvarchar(10),
	@gioitinh tinyint,
	@ngaysinh date,
	@email varchar(150),
	@dienthoai varchar(30),
	@diachi nvarchar(150)
as
begin
	update tblGiaoVien
	set nguoicapnhat = @nguoicapnhat,
		ngaycapnhat = getdate(),
		ho = @ho,tendem = @tendem, ten = @ten,
		gioitinh = @gioitinh, ngaysinh = @ngaysinh, email = @email, dienthoai = @dienthoai, diachi = @diachi
	where magiaovien = @magiaovien;
	if @@ROWCOUNT > 0 return 1 else return 0;
end;
GO
/****** Object:  StoredProcedure [dbo].[updatelophoc]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updatelophoc]
	@nguoicapnhat varchar(30),
	@malophoc bigint,
	@magiaovien int,
	@mamonhoc int
as
begin
	update tblLopHoc
	set
		ngaycapnhat = getdate(),
		nguoicapnhat = @nguoicapnhat,		
		magiaovien = @magiaovien
	where malophoc = @malophoc;
	if @@ROWCOUNT > 0 return 1 else return 0;
end
GO
/****** Object:  StoredProcedure [dbo].[updateMH]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateMH]
	@nguoicapnhat varchar(30),
	@mamonhoc bigint,
	@tenmonhoc nvarchar(150),
	@sotinchi int
as
begin
	update tblMonHoc
	set
		nguoicapnhat = @nguoicapnhat,
		ngaycapnhat = getdate(),
		tenmonhoc = @tenmonhoc,
		sotinchi = @sotinchi
	where mamonhoc = @mamonhoc;
	if @@ROWCOUNT > 0 return 1 else return 0;
	
end
GO
/****** Object:  StoredProcedure [dbo].[updateSV]    Script Date: 9/23/2024 1:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateSV]
	@masinhvien varchar(50),
	@ho	nvarchar(10),
	@tendem nvarchar(20),
	@ten nvarchar(10),
	@ngaysinh date,
	@gioitinh tinyint,
	@quequan nvarchar(150),
	@diachi nvarchar(150),
	@dienthoai varchar(30),
	@email varchar(150)
as
begin
	update tblSinhVien
	set 
		ho = @ho,tendem = @tendem,ten=@ten,
		ngaysinh = @ngaysinh,gioitinh = @gioitinh,
		quequan = @quequan, diachi = @diachi,
		dienthoai = @dienthoai, email = @email
	where masinhvien = @masinhvien;
	if @@ROWCOUNT > 0 begin return 1 end 
	else begin return 0 end;
end;
GO
