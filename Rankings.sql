USE QATSQLPLUS

SELECT *,
	RANK() OVER (ORDER BY NumberDelegates DESC) AS Ranking
FROM dbo.VendorCourseDelegateCount

SELECT *,
	DENSE_RANK() OVER (ORDER BY NumberDelegates DESC) AS Ranking
FROM dbo.VendorCourseDelegateCount

SELECT *,
	ROW_NUMBER() OVER (ORDER BY NumberDelegates DESC) AS Ranking
FROM dbo.VendorCourseDelegateCount

SELECT *,
	NTILE(3) OVER (ORDER BY NumberDelegates DESC) AS Ranking
FROM dbo.VendorCourseDelegateCount