create table contacts (
    uid serial,
    email VARCHAR(80) not null,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL
);
INSERT INTO contacts(email, first_name, last_name) VALUES('jim@example.com', 'Jim', 'Smith');
INSERT INTO contacts(email, first_name, last_name) VALUES(null, 'John', 'Smith');
INSERT INTO contacts(email, first_name, last_name) VALUES('carol@example.com', 'Carol', 'Smith');
INSERT INTO contacts(email, first_name, last_name) VALUES('sam@example.com', 'Sam', null);