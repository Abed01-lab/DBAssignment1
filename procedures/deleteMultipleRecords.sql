GO
CREATE PROCEDURE deleteMultipleRecords (
		@loan_book_id_1 INT,
		@loan_book_id_2 INT
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			EXEC deleteBookLoan @loan_book_id_1
			EXEC deleteBookLoan @loan_book_id_2
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO

EXEC deleteMultipleRecords 1, 6