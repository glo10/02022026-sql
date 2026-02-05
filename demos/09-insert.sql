-- Avant insertion
SELECT *
FROM categories ;
-- Insertion
--- Listez les colonnes dans l'ordre de votre choix, ajoutez les valeurs en respectant
---   strictement l'ordre que vous avez choisi
--- Si vous inversez 2 colonnes et que celles-ci ont le même domaine de définitation (INT, VARCHAR, DATE, etc.)
---   la base de données va insérer les données sans problème
--- Soyez vigilant sur l'ordre
--- Les valeurs avec la contrainte NOT NULL sont obligatoires
--- Si une des contraintes n'est pas respectée ou vous saisissez le mauvais type
---   Votre requête sera rejectée et donc l'état de votre Table inchangée
INSERT INTO categories(CODE_CATEGORIE, NOM_CATEGORIE, DESCRIPTION)
VALUES(9, "Smartphones", "description smartphone");
-- Après insertion;
SELECT *
FROM categories ;

SET autocommit=0;
START TRANSACTION;
-- Avant insertion
SELECT *
FROM categories ;
-- Insertion individuelle d'une seule ligne
INSERT INTO categories(CODE_CATEGORIE, NOM_CATEGORIE, DESCRIPTION)
VALUES(10, "ordinateurs", "description ordinateurs");
INSERT INTO categories(CODE_CATEGORIE, NOM_CATEGORIE, DESCRIPTION)
VALUES(11, "claviers", "description claviers");
-- Insertion groupée de plusieurs lignes
INSERT INTO categories(CODE_CATEGORIE, NOM_CATEGORIE, DESCRIPTION)
VALUES
(12, "ordinateurs", "description ordinateurs"),
(13, "ordinateurs", "description ordinateurs");
-- Après insertion;
SELECT *
FROM categories ;