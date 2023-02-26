GO
CREATE PROCEDURE updatePatron (@id INT,
		@first_name NVARCHAR(255) = NULL ,
		@last_name NVARCHAR(255) = NULL,
		@email NVARCHAR(255) = NULL,
		@phone_number INT = NULL,
		@address NVARCHAR(255) = NULL,
		@birth_date DATETIME = NULL
	)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
				UPDATE patron
				SET first_name = @first_name,
				last_name = @last_name,
				email = @email,
				phone_number = @phone_number,
				address = @address,
				birth_date = @birth_date
				WHERE id = @id
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
GO

EXEC updatePatron @id = 1,
	@first_name = N'first_name',
	@last_name = N'last_name',
	@email = N'email@email.com',
	@phone_number = 12345678,
	@address = N'fakestreet 123',
	@birth_date = N'2022-03-22'