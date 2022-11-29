USE QATSQLPLUS

SELECT c.CourseRunID, c.StartDate FROM dbo.Trainer AS t
JOIN
dbo.CourseRun AS c
ON t.TrainerID = c.TrainerID
WHERE t.TrainerName = 'Jason Bourne'


SELECT d.DelegateID, d.DelegateName, d.CompanyName, DerivedTable.StartDate
FROM dbo.DelegateAttendance AS da
JOIN
dbo.Delegate AS d
ON da.DelegateID = d.DelegateID
JOIN 
dbo.CourseRun as cd
ON da.CourseRunID = cd.CourseRunID
JOIN (
SELECT c.CourseRunID, c.StartDate FROM dbo.Trainer AS t
JOIN
dbo.CourseRun AS c
ON t.TrainerID = c.TrainerID
WHERE t.TrainerName = 'Jason Bourne'
) AS DerivedTable
ON DerivedTable.CourseRunID = cd.CourseRunID