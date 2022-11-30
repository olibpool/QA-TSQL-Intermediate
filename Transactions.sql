USE QATSQLPLUS

/*
The StockAmouunt could go below 0 which is against the database designs.
The ProductID could already exist.
A use may try to input NULLs or negative numbers.
*/

-- Ex 1 Task 2 Starting Point
DECLARE @ProductID INT = 4
DECLARE @Amount INT = 1

IF @ProductID IS NULL or @Amount IS NULL
THROW 864664, 'An input is NULL', 1

BEGIN TRY
	BEGIN TRAN
		INSERT INTO dbo.BookTransfers VALUES 				                
				(@ProductID,getdate(),'Transfer Out',-@Amount)
		UPDATE dbo.BookStock
			SET StockAmount = StockAmount - @Amount
			WHERE ProductID = @ProductID
	COMMIT TRAN
END TRY
BEGIN CATCH
	ROLLBACK TRAN;
	THROW 68486, 'The transaction has been rolled back.', 1
END CATCH



GO