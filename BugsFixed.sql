USE QATSQLPLUS

DECLARE @StartDT datetime = GETDATE()
DECLARE @EndDT datetime
DECLARE @Vendor VARCHAR(50)
PRINT @STARTDT


DECLARE @X INT = 0
WHILE @X < 100
	BEGIN 
		PRINT @X
		SET @X = @X + 1
	END
SET @EndDT = GETDATE()
SELECT @StartDT, @EndDT


IF EXISTS (SELECT * FROM sysobjects WHERE name = 'NewView')
	DROP VIEW dbo.NewView
GO

CREATE VIEW dbo.NewView AS
	SELECT * FROM dbo.Delegate
GO