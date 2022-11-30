USE QATSQLPLUS

DECLARE @TotalDelegates INT

SELECT @TotalDelegates = Query.TotDeles 
FROM (
SELECT SUM(NumberDelegates) AS TotDeles FROM dbo.VendorCourseDelegateCount
) AS Query

Print @TotalDelegates