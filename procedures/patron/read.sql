GO
CREATE PROCEDURE updatePatron (@id INT)
	AS
	BEGIN TRY
		BEGIN TRANSACTION
			SELECT * FROM patron WHERE id = @id;
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
GO

EXEC updatePatron @id = 1