-- Création d'une nouvelle table prestataire sans clé primaire
--- Pour créer une nouvelle table il faut
--- 1. Nom de la table
--- 2. Lister les colonnes avec leurs types et les contraintes
--- Avec une autre commande, plus exactement la commande ALTER il sera possible de :
---   Modifier la colonne (nom, type)
---   Ajouter une colonne
---   Supprimer une colonne
CREATE TABLE prestataire (
  nom VARCHAR(255) NOT NULL,
  prenom VARCHAR(150) NOT NULL,
  poste VARCHAR(120) NOT NULL,
  tjm INT(4) DEFAULT 1000,
  code_postal CHAR(5)
);

-- Insertions
--- On ne renseigne pas le TJM pour le premier
--- étant donnée qu'on a une valeur par defaut, tjm pour l'insertion
---   ci-après vaudra 1000
INSERT INTO prestataire (nom, prenom, poste)
VALUES ("Tshimini", "Glodie", "Dev Full Stack");
INSERT INTO prestataire (nom, prenom, poste, tjm)
VALUES ("Doe", "John", "DevOps", 750);