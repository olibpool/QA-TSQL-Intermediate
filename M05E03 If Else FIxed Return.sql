DECLARE @Vendor VARCHAR(100)
SET @Vendor = 'AQ'

IF @Vendor IS NULL
	RETURN


IF NOT EXISTS( SELECT * FROM DBO.Vendor WHERE VendorName = @Vendor)
	RETURN
ELSE
	BEGIN
		SELECT *
			FROM dbo.Course AS C
				INNER JOIN dbo.Vendor AS V
					ON C.VendorID = V.VendorID
			WHERE 
				VendorName = @Vendor
	END