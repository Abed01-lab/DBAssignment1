GO
CREATE PROCEDURE deleteBookLoan(@id INT)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			DECLARE @book_id AS INT

			SET @book_id = (SELECT book_id
			FROM loan_book
			WHERE id = @id)

			print @book_id

			DELETE FROM loan_book
			WHERE id = @id

			UPDATE book
			SET availability = 1
			WHERE id = @book_id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO

GO
CREATE PROCEDURE deleteMagazineLoan (@id INT)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			DECLARE @magazine_id AS INT

			SET @magazine_id = (SELECT magazine_id
			FROM loan_magazine
			WHERE id = @id)

			print @magazine_id

			DELETE FROM loan_magazine
			WHERE id = @id

			UPDATE magazine
			SET availability = 1
			WHERE id = @magazine_id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO

EXEC deleteMagazineLoan 1