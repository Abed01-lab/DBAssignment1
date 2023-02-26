GO
CREATE PROCEDURE updateMultipleBookLoanRecords (
		@book_id_1 INT,
		@return_on_1 DATETIME,
		@book_id_2 INT,
		@return_on_2 DATETIME
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE loan_book
			SET return_on = @return_on_1
			WHERE id = @book_id_1

			UPDATE loan_book
			SET return_on = @return_on_2
			WHERE id = @book_id_2
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO

EXEC updateMultipleBookLoanRecords 1, N'2022-02-23', 7, N'2022-05-23'