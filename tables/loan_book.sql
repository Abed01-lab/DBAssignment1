USE library;

CREATE TABLE library.dbo.loan_book (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	loan_on date NOT NULL,
	due_on date NOT NULL,
	return_on date NOT NULL,
	patron_id int FOREIGN KEY REFERENCES patron(id) ON DELETE CASCADE,
	book_id int FOREIGN KEY REFERENCES book(id) ON DELETE CASCADE UNIQUE
);

-- create
-- update
-- delete
-- read