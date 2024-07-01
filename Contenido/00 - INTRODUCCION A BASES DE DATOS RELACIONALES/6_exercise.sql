-- Inserta tu sentencia aqui
CREATE TABLE people(
    person_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255)
);