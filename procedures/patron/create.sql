GO
CREATE PROCEDURE createPatron (@first_name NVARCHAR(255),
		@last_name NVARCHAR(255),
		@email NVARCHAR(255),
		@phone_number INT,
		@address NVARCHAR(255),
		@birth_date DATETIME
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO patron VALUES (@first_name,
			@last_name,
			@email,
			@phone_number,
			@address,
			@birth_date
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