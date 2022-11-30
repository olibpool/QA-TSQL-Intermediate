
-- Ex 3 Task 2	STARTING POINT

UPDATE dbo.Vendor
SET VendorName = NULL
WHERE VendorID = 1

-- here we are only setting the name but the contactname is not null as well
-- id 01 probably already exists.