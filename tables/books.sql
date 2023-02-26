USE library;

CREATE TABLE book (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	title varchar(255) NOT NULL,
	author varchar(255) NOT NULL,
	isbn varchar(17) NOT NULL,
	publisher varchar(255) NOT NULL,
	genre varchar(255) NOT NULL,
	publication_on DATE NOT NULL,
	number_pages int NOT NULL,
	availability int NOT NULL,
);

-- create
-- update
-- delete
-- read