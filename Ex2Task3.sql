USE QATSQLPLUS
GO

CREATE FUNCTION dbo.udf_IndividualDelegateDays(@DelegateID INT)
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
WHERE d.DelegateID = @DelegateID
GROUP BY d.DelegateID
)
GO

SELECT * FROM udf_IndividualDelegateDays(1)