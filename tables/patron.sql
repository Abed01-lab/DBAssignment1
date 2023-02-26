USE library;

CREATE TABLE library.dbo.patron (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	phone_number int NOT NULL,
	address varchar(255) NOT NULL,
	birth_date date NOT NULL
);


-- create
-- update
-- delete
-- read
