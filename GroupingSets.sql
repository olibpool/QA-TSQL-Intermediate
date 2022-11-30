USE QATSQLPLUS

SELECT 
	VendorName, CourseName, StartDate,	
	SUM(NumberDelegates) AS TotalDelegates,
	GROUPING_ID(VendorName, CourseName, StartDate) AS GroupingType
FROM dbo.VendorCourseDateDelegateCount
GROUP BY GROUPING SETS (VendorName, (VendorName, CourseName, StartDate), (VendorName, CourseName))