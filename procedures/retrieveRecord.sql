GO
CREATE PROCEDURE retrieveAllLoanByPatron(@patron_id INT)
	AS
	SELECT loan_book.book_id, loan_magazine.magazine_id
	FROM loan_book
	INNER JOIN loan_magazine
	ON loan_magazine.patron_id = loan_book.patron_id
	WHERE loan_book.patron_id = @patron_id
GO

EXEC retrieveAllLoanByPatron 20