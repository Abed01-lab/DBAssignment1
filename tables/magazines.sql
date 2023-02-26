USE library;

CREATE TABLE library.dbo.magazine (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	title varchar(255) NOT NULL,
	publisher varchar(255) NOT NULL,
	genre varchar(100) NOT NULL,
	publication_on date NOT NULL,
	number_pages int NOT NULL,
	availability int NOT NULL,
);

-- create
-- update
-- delete
-- read