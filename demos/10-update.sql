-- Avant modification
SELECT *
FROM categories ;
-- Modification d'une donnée existante
--- La clause WHERE sur un attribut ayant une contrainte de clé primaire (PK) ici garantit la modification d'une seule ligne
UPDATE categories SET NOM_CATEGORIE = "PC", DESCRIPTION = "Des machines très performantes" WHERE CODE_CATEGORIE=12;

-- Modification potentiel de plusieurs lignes
--- La clause WHERE sur un attribut qui n'a pas de contrainte d'unicité ou PK
---   peut potentiellement modifier plusieurs lignes si plusieurs lignes remplissent la condition
--- Autrement dit ont la même valeur sur la colonne utilisé dans le WHERE
UPDATE categories
SET NOM_CATEGORIE = "PC",
DESCRIPTION = "Des machines très performantes"
WHERE DESCRIPTION LIKE "%bo%";
--- Autre exemple modificiation de plusieurs lignes en utilisant une PK
--- Ici on ajoute "Nouvelle Catégorie " devant les descriptions actuelles
UPDATE categories
SET NOM_CATEGORIE = "PC",
DESCRIPTION = CONCAT("Nouvelle Catégorie ", DESCRIPTION)
WHERE CODE_CATEGORIE > 8;
-- Après modification;
SELECT *
FROM categories;

-- Avant modification
SELECT *
FROM employes;
-- Exemple sans la clause WHERE, la modification va affecter toutes les lignes
-- Augmenter les salaires de tout le monde de 10%
UPDATE employes SET SALAIRE=SALAIRE*1.1;
-- Après modification;
SELECT *
FROM employes;