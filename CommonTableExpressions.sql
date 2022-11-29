USE QATSQLPLUS
GO 

WITH BourneCourses AS (
SELECT cr.CourseRunID, cr.StartDate
FROM dbo.Trainer AS t
JOIN 
dbo.CourseRun as cr
ON t.TrainerID = cr.TrainerID
WHERE t.TrainerName = 'Jason Bourne'
)

SELECT d.DelegateID, d.DelegateName, d.CompanyName, bc.StartDate
FROM BourneCourses AS bc
JOIN 
dbo.DelegateAttendance AS da
ON da.CourseRunID = bc.CourseRunID
JOIN
dbo.Delegate AS d
ON d.DelegateID = da.DelegateID