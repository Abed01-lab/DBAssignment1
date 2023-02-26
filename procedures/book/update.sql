GO
CREATE PROCEDURE updateBook (@id INT,
		@title NVARCHAR(255),
		@author NVARCHAR(255),
		@isbn NVARCHAR(17),
		@publisher NVARCHAR(255),
		@genre NVARCHAR(255),
		@published_on DATETIME,
		@number_pages INT,
		@availability INT
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
				UPDATE book
				SET title = @title,
				author = @author,
				isbn = @isbn,
				publisher = @publisher,
				genre = @genre,
				published_on = @published_on,
				number_pages = @number_pages,
				availability = @availability
				WHERE id = @id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
GO


EXEC updateBook @id = 2,
			@title = N'The man 2',
			@author = N'John Doe 2',
			@isbn = N'81234567891234567',
			@publisher = N'Disney 2',
			@genre = N'horror 2',
			@published_on = N'2020-03-22',
			@number_pages = 254,
			@availability = 231;