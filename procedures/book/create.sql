GO
CREATE PROCEDURE createbook (@title NVARCHAR(255),
		@author NVARCHAR(255),
		@isbn NVARCHAR(17),
		@publisher NVARCHAR(255),
		@genre NVARCHAR(255),
		@publication_on DATETIME,
		@number_pages INT,
		@availability INT
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO book VALUES (@title,
			@author,
			@isbn,
			@publisher,
			@genre,
			@publication_on,
			@number_pages,
			@availability
			);
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
GO

EXEC createBook @title = N'The man',
			@author = N'John Doe',
			@isbn = N'81234567891234567',
			@publisher = N'Disney',
			@genre = N'horror',
			@publication_on = N'2020-03-22',
			@number_pages = 254,
			@availability = 231;