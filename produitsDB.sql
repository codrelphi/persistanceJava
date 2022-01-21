DROP DATABASE IF EXISTS produitsDB;
CREATE DATABASE produitsDB;
USE produitsDB;

/* produit (CODE, description, prix) */

CREATE TABLE produits (
	CODE VARCHAR(2) NOT NULL,
	DESCRIPTION VARCHAR(100),
	PRIX DOUBLE NOT NULL,
	PRIMARY KEY (CODE)
);

INSERT INTO produits VALUES 
("P1", "Produit Num 1", 1500.5),
("P2", "Produit Num 2", 257.75),
("P3", "Produit Num 3", 2890);

SELECT * FROM produits;