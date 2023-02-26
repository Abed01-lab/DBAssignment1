USE library;

CREATE TABLE library.dbo.loan_magazine (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	loan_on date NOT NULL,
	due_on date NOT NULL,
	return_on date NOT NULL,
	patron_id int FOREIGN KEY REFERENCES patron(id) ON DELETE CASCADE,
	magazine_id int FOREIGN KEY REFERENCES magazine(id) ON DELETE CASCADE UNIQUE
);

-- createt
-- update
-- delete
-- read