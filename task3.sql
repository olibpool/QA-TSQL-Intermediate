-- Ex 1 Task 2 Starting Point
BEGIN TRY 
DECLARE @ProductID INT = 1
DECLARE @Amount INT = 20

INSERT INTO dbo.BookTransfers VALUES 				                
		(@ProductID,getdate(),'Transfer Out',-@Amount)
UPDATE dbo.BookStock
	SET StockAmount = StockAmount - @Amount
	WHERE ProductID = @ProductID	
END TRY 
BEGIN CATCH
	THROW 60000, 'Here is your error pal', 1
END CATCH