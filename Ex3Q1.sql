USE QATSQLPLUS

CREATE TABLE #MicrosoftLocal(
CourseID INT,
CourseName VARCHAR(40),
VendorID INT
)

CREATE TABLE ##MicrosoftLocal(
CourseID INT,
CourseName VARCHAR(40),
VendorID INT
)

SELECT * 
INTO #MicrosoftLocal
FROM dbo.Course
WHERE VendorID = 2

SELECT * 
INTO ##MicrosoftLocal
FROM dbo.Course
WHERE VendorID = 2

SELECT * FROM ##MicrosoftLocal
SELECT * FROM #MicrosoftLocal