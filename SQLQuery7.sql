-- Viết câu lệnh SQL lấy “CompanyName” và đặt tên thay thế là “Công ty”; 
-- “PostalCode” và đặt tên thay thế là “Mã bưu điện”
SELECT [CompanyName] AS [ Tên công ty ], [PostalCode] AS "Mã bưu điện", [City] "Thành phố"
FROM [dbo].[Customers];

-- Viết câu lệnh ra “LastName” và đặt tên thay thế là “Họ”; 
-- “FirstName” và đặt tên thay thế là “Tên”.
SELECT [LastName] AS "Họ", [FirstName] AS "Tên"
FROM [dbo].[Employees];

-- Viết câu lệnh SQL lấy ra 15 dòng đầu tiên tất 
-- cả các cột trong bảng Orders, đặt tên thay thế 
-- cho bảng Orders là “o”.
SELECT TOP 15 o.*
FROM [dbo].[Orders] AS [o];

--bt: Viết câu lệnh SQL lấy ra các cột và đặt tên thay thế như sau
-- ProductName => tên sản phẩm
-- SupplierID => mã nhà cung cấp
-- CategoryID => Mã thể loại
-- và dặt tên thay thế cho bảng Products là "p" sử dụng tên thay thế khi truy vấn các cột bên trên
-- cà chỉ lấy ra 5 sản phẩm
SELECT TOP 5 [ProductName] AS [ tên sản phẩm ], [SupplierID] AS [ mã nhà cung cấp ], [CategoryID] AS [ mã thể loại ]
FROM [dbo].[Products] AS [p];