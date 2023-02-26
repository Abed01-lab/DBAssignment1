GO
CREATE PROCEDURE addBookLoan (
		@book_id INT,
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
			@book_id
			);
			UPDATE book
			SET availability = 0
			WHERE id = @book_id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO

GO
CREATE PROCEDURE addMagazineLoan (
		@magazine_id INT,
		@patron_id INT
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO loan_magazine VALUES (
			GETDATE(),
			GETDATE() + 30,
			GETDATE() + 30,
			@patron_id,
			@magazine_id
			);

			UPDATE magazine
			SET availability = 0
			WHERE id = @magazine_id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		PRINT 'Something went wrong the the insertion'
	END CATCH
GO