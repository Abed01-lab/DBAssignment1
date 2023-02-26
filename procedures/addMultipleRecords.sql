GO
CREATE PROCEDURE addMultipleBookLoanRecords (
		@book_id_1 INT,
		@book_id_2 INT,
		@patron_id INT
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO loan_book VALUES (
			GETDATE(),
			GETDATE() + 30,
			GETDATE() + 30,
			@patron_id,
			@book_id_1
			);
			UPDATE book
			SET availability = 0
			WHERE id = @book_id_1

			INSERT INTO loan_book VALUES (
			GETDATE(),
			GETDATE() + 30,
			GETDATE() + 30,
			@patron_id,
			@book_id_2
			);
			UPDATE book
			SET availability = 0
			WHERE id = @book_id_2
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO

EXEC addMultipleBookLoanRecords 47, 28, 5