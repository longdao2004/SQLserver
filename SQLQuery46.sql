﻿-- Trigger khi insert sẽ chuyển productName về viết hoa toàn bộ:
CREATE TRIGGER MakeProductNameUpperCase
ON [dbo].[Products]
AFTER INSERT
AS 
BEGIN
	UPDATE Products
	SET ProductName = UPPER(i.ProductName)
	FROM inserted i
	WHERE Products.ProductID = i.ProductID
END

INSERT [dbo].[Products]([ProductName], [SupplierID], [CategoryID])
VALUES ('test name', 1, 1)

-- Chặn không cho phép câp nhật số lương sản phẩm nhỏ hơn 0
UPDATE [dbo].[Products]
SET [Discontinued] = 0
WHERE [ProductID] = 80

CREATE TRIGGER PreventNegativeDiscountinued
ON [dbo].[Products]
FOR UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS (SELECT 1 FROM inserted WHERE [Discontinued] != 0 AND [Discontinued] != 1)
	BEGIN 
		ROLLBACK;
		RAISERROR('[Discontinued] khong the nho hon 0', 16, 1);
	END
END

-- Viết một trigger trong cơ sở dữ liệu Northwind để đảm bảo 
-- rằng mỗi khi có một chi tiết đơn hàng mới được thêm vào, số lượng tồn kho phải được giảm đi
CREATE TRIGGER UpdateProductInventory
ON [dbo].[Order Details]
AFTER INSERT
AS
BEGIN
	UPDATE [dbo].[Products]
	SET [UnitsInStock] = [UnitsInStock]-(SELECT [Quantity] FROM inserted WHERE [dbo].[Products].ProductID = inserted.ProductID)
	WHERE [dbo].[Products].[ProductID] IN (SELECT [ProductID] FROM inserted)
END


INSERT INTO [dbo].[Order Details]([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount])
VALUES (10248, 78, 10, 50, 0);