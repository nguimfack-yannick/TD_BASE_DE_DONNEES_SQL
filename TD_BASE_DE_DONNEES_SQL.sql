
SET SEARCH_PATH = "SCHEMA_BASEEVA";

CREATE TABLE utilisateurs(

id SERIAL primary key,
nom VARCHAR(50) NOT NULL,
age INT ,
email VARCHAR(50) UNIQUE
);

INSERT INTO utilisateurs(nom,age,email)
VALUES('vannick',30,'vannick@gmail.com');

-- DROP TABLE utilisateurs;



UPDATE utilisateurs SET age=29 WHERE id= 1;

UPDATE utilisateurs SET age=23 WHERE id=3;
SELECT*FROM utilisateurs;

DELETE FROM utilisateurs WHERE id=1;

SELECT nom ,age FROM utilisateurs WHERE age>25;

SELECT * FROM utilisateurs ORDER BY age DESC;

SELECT COUNT(*) FROM utilisateurs;
SELECT SUM(age) FROM utilisateurs;
SELECT AVG(age) FROM utilisateurs;
SELECT MAX(age) FROM utilisateurs;
SELECT MIN(age) FROM utilisateurs;

ALTER TABLE utilisateurs ADD CONSTRAINT unique_email UNIQUE (email);

CREATE 	INDEX idx_nom ON utilisateurs(nom);