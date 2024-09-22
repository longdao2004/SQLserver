-- Tao mot stored procedure de lay th�ng tin 
-- ve san pham dua tr�n t�n san pham duoc cung cap.
CREATE PROCEDURE GetProductByName
	@ProductName NVARCHAR(100)
AS
BEGIN
	SELECT * FROM [dbo].[Products] P
	WHERE P.ProductName = @ProductName
END;

-- Su dung:
EXEC GetProductByName @ProductName='Chai';
EXEC GetProductByName @ProductName='Chang';
EXEC GetProductByName @ProductName='Ikura';

-- Tao mot stored procedure de t�nh tung doanh so b�n h�ng
-- cua mot nh�n vi�n dua tr�n EmployeeID.
CREATE PROCEDURE GetEmployeeSalesTotal
	@EmployeeId INT
AS
BEGIN
	SELECT SUM([UnitPrice]*[Quantity]) TotalSales
	FROM [dbo].[Orders] o
	JOIN [dbo].[Order Details] od ON o.OrderID = od.OrderID
	WHERE o.EmployeeID=@EmployeeId
END

-- Su dung
EXEC GetEmployeeSalesTotal @EmployeeId=1;
EXEC GetEmployeeSalesTotal @EmployeeId=2;
EXEC GetEmployeeSalesTotal @EmployeeId=3;

-- Tao mot stored procedure de th�m moi kh�ch h�ng v�o bang Customers.
CREATE PROCEDURE AddCustomer
	@CustomerID NVARCHAR(5),
	@CompanyName NVARCHAR(40),
	@ContactName NVARCHAR(30),
	@ContactTitle NVARCHAR(30)
AS
BEGIN
	INSERT INTO [dbo].[Customers]([CustomerID],[CompanyName],[ContactName],[ContactTitle])
	VALUES (@CustomerID, UPPER(@CompanyName), @ContactName, @ContactTitle)
END
--
EXEC AddCustomer @CustomerID='NEWN', @CompanyName='titv.vn', @ContactName='Tung Le',@ContactTitle='Mr.' 

-- Tao mot stored procedure de cap nhat gi� cua tat
-- cho mot san pham cu the
CREATE PROCEDURE IncreasePrice
	@ProductId INT,
	@PriceIncrease DECIMAL(10,2)
AS
BEGIN
	UPDATE [dbo].[Products]
	SET UnitPrice = UnitPrice + @PriceIncrease
	WHERE [ProductID] = @ProductId
END
--
EXEC IncreasePrice @ProductId=1, @PriceIncrease=100;