USE QATSQLPLUS
GO

WITH League AS(
SELECT *,
	RANK() OVER (PARTITION BY VendorName ORDER BY NumberDelegates DESC) AS League_Pos
FROM dbo.VendorCourseDelegateCount
)
SELECT * FROM League 
WHERE League_Pos = 1