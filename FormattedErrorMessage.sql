-- Ex 2 Task 2 STARTING POINT
DECLARE @Vendor VARCHAR(100)
SET @Vendor = NULL

IF @Vendor IS NULL
	BEGIN;
		THROW 500005, 'Vendor must not be NULL', 177;
		RETURN
	END;

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN;
		DECLARE @Message VARCHAR(255) = FORMATMESSAGE('Vendor %s cannot be found', @Vendor);
		THROW 5000010, @Message, 879;
		RETURN
	END;

SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE VendorName = @Vendor	
GO
