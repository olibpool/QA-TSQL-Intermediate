USE QATSQLPLUS

SELECT 'Vendor' AS ContactType, VendorName, PhoneNumber FROM dbo.Vendor
UNION
SELECT 'Trainer' AS ContactType, TrainerName, PhoneNumber FROM dbo.Trainer