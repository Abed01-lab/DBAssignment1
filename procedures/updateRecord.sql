GO
CREATE PROCEDURE updateBookLoanReturnOn (@return_on DATETIME, @loan_book_id INT)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE loan_book
			SET return_on = @return_on
			WHERE book_id = @loan_book_id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO

GO
CREATE PROCEDURE updateMagazineLoanReturnOn (@return_on DATETIME, @loan_magazine_id INT)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE loan_magazine
			SET return_on = @return_on
			WHERE magazine_id = @loan_magazine_id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO