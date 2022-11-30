USE QATSQLPLUS

SELECT DelegateID FROM dbo.DelegateAttendance as da
JOIN
dbo.CourseRun as cr
ON da.CourseRunID = cr.CourseRunID
JOIN
dbo.course as c
ON cr.CourseID = c.CourseID
WHERE c.CourseName = 'QATSQL'

INTERSECT

SELECT DelegateID FROM dbo.DelegateAttendance as da
JOIN
dbo.CourseRun as cr
ON da.CourseRunID = cr.CourseRunID
JOIN
dbo.course as c
ON cr.CourseID = c.CourseID
WHERE c.CourseName = 'QATSQLPLUS'