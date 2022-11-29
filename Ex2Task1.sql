USE QATSQLPLUS
GO

ALTER FUNCTION dbo.udf_DelegateDays()
RETURNS TABLE AS 
RETURN(
SELECT d.DelegateID, SUM(cr.DurationDays) AS DelegateDays, COUNT(*) AS DelegateCourses
FROM dbo.Delegate as d
JOIN
dbo.DelegateAttendance as da
ON da.DelegateID = d.DelegateID
JOIN
dbo.CourseRun as cr
ON cr.CourseRunID = da.CourseRunID
GROUP BY d.DelegateID
)
GO

SELECT * FROM dbo.udf_DelegateDays()