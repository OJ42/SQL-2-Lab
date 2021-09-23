CREATE TABLE animals (
id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER

);

INSERT INTO animals ( name, type, age ) VALUES ('Leo','lion', 12), ('Jerry', 'mouse', 4), ('Marty', 'zebra', 10), ('Gloria', 'hippo', 8), ('Alex', 'lion', 9), ('Melman', 'giraffe', 15), ('Nala', 'lion', 2), ('Marie', 'cat', 1), ('Flounder', 'fish', 8);

SELECT * FROM animals;

ALTER TABLE animals
ADD column location VARCHAR(150)
SELECT * FROM animals

INSERT INTO animals (name, type, age, location)
VALUES ('Toledo', 'Dog', 3, 'Pleasant Grove'),
			 ('Laru', 'Cat', 11, 'Salt Lake'),
       ('Alta', 'Dog', 15, 'Park City');
SELECT * FROM animals

ALTER TABLE  animals
RENAME COLUMN type TO species;
SELECT * FROM animals

ALTER TABLE animals
ALTER species 
SET DATA TYPE VARCHAR(150);
SELECT * FROM animals
