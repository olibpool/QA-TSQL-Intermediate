-- Ex 2 Task 2 STARTING POINT
DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'aq'

IF @Vendor IS NULL
	BEGIN;
		THROW 500005, 'Vendor must not be NULL', 177;
		RETURN
	END;

IF NOT EXISTS (SELECT * FROM dbo.Vendor WHERE VendorName = @Vendor)
	BEGIN;
		THROW 5000010, 'Vendor cannot be found', 879;
		RETURN
	END;

SELECT *
	FROM dbo.Course AS C
		INNER JOIN dbo.Vendor AS V
			ON C.VendorID = V.VendorID
	WHERE VendorName = @Vendor	
GO
