CREATE PROC HienThiChiTietPN
	@soPN char(4)
AS
	BEGIN
		SELECT *
		FROM [dbo].[CTPNHAP]
		WHERE SoPn = @soPN
	END