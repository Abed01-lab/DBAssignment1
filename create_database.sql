USE library;

CREATE TABLE library.dbo.patron (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	phone_number int NOT NULL,
	adress varchar(255) NOT NULL,
	birth_date date NOT NULL
);

CREATE TABLE library.dbo.magazine (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	title varchar(255) NOT NULL,
	publisher varchar(255) NOT NULL,
	genre varchar(100) NOT NULL,
	published_on date NOT NULL,
	number_pages int NOT NULL,
	availability int NOT NULL
);

CREATE TABLE library.dbo.book (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	title varchar(255) NOT NULL,
	author varchar(255) NOT NULL,
	isbn varchar(17) NOT NULL,
	publisher varchar(255) NOT NULL,
	genre varchar(255) NOT NULL,
	published_on date NOT NULL,
	number_pages int NOT NULL,
	availability int NOT NULL
);

CREATE TABLE library.dbo.loan_magazine (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	loan_on date NOT NULL,
	due_on date NOT NULL,
	return_on date NOT NULL,
	patron_id int FOREIGN KEY REFERENCES patron(id),
	magazine_id int FOREIGN KEY REFERENCES magazine(id)
);

CREATE TABLE library.dbo.loan_book (
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	loan_on date NOT NULL,
	due_on date NOT NULL,
	return_on date NOT NULL,
	patron_id int FOREIGN KEY REFERENCES patron(id),
	book_id int FOREIGN KEY REFERENCES book(id)
);