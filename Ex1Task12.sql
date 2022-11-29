USE QATSQLPLUS
GO

/*
CREATE VIEW dbo.CourseList AS (
SELECT c.CourseName, c.CourseID, v.VendorName
FROM DBO.Course AS c
JOIN
DBO.Vendor AS v
ON c.VendorID = v.VendorID
)
GO
*/

SELECT * FROM dbo.CourseList