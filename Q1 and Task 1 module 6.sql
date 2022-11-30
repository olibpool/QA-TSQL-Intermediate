USE QATSQLPLUS

EXEC sp_addmessage 50083, 16, 'Vendor %s cannot be found'

RAISERROR(50083, 16, 1, 'Red Hat')

-- Task 1
-- We need ti replace the print statements with the throw statements

