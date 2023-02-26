GO
CREATE PROCEDURE createPatron (@title NVARCHAR(255),
		@publisher NVARCHAR(255),
		@publication_on DATETIME,
		@genre NVARCHAR(255),
		@number_pages INT,
		@availability INT
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO patron VALUES (@title,
			@publisher,
			@publication_on,
			@genre,
			@number_pages,
			@availability
		);
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
GO

EXEC createPatron @first_name = N'first_name',
	@last_name = N'last_name',
	@email = N'email@email.com',
	@phone_number = 12345678,
	@address = N'fakestreet 123',
	@birth_date = N'2022-03-22'