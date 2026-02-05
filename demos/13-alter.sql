-- ALTER pour modifier la structure des tables, cad colonnes et contraintes
-- Option 1 tout en une fois, ajouter une nouvelle colonne email
--- avec une contrainte unique dessus => 2 employés ne peuvent pas avoir la même adresse email
ALTER TABLE employes
ADD COLUMN email VARCHAR(255) UNIQUE;
-- Option 2 1/2: ajout nouvelle colonne email avec une contrainte de valeur unique en deux étapes
ALTER TABLE employes
ADD COLUMN email VARCHAR(255);
-- Option 2 2/2 sans nommer la contrainte
ALTER TABLE employes
ADD CONSTRAINT UNIQUE(email);
-- Option 2 2/2 en nommant la contrainte, plus facile après de la supprimer directement depuis son nom
--- Pour les noms, prefixes FK_ => pour clé étrangère, UK_ => Unique Key, PK_ => Primary Key
---   ensuite généralement le nom de la table suivi du nom de la colonne ou l'inverse
ALTER TABLE employes
ADD CONSTRAINT UK_employes_email UNIQUE(email);