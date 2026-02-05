-- 1. Créer une table pays avec 2 champs : code pays (4 caractères, clé primaire), nom pays (40 caractères maximum)
CREATE TABLE pays (
  code_pays CHAR(4) NOT NULL PRIMARY KEY,
  nom_pays VARCHAR(40)
);
-- 2. Ajouter une colonne courriel (60 caractères possibles) à la table CLIENTS.
---   Puis la modifier pour passer à 75 caractères.
---   Pour finir, supprimer cette colonne.
ALTER TABLE CLIENTS
ADD (courriel VARCHAR(60));
-- Oracle et MySQL
ALTER TABLE CLIENTS
MODIFY (COURRIEL VARCHAR(75));
-- SQL Server et PostgreSQL
ALTER TABLE CLIENTS ALTER COLUMN (courriel VARCHAR2(75));
ALTER TABLE CLIENTS DROP COLUMN courriel;
-- 3. Créez une vue qui affiche le nom de la société,
---   l'adresse, le téléphone et la ville des clients qui habitent en province.
CREATE VIEW V_CLIENTS_PROVINCE AS
SELECT SOCIETE,
  ADRESSE,
  TELEPHONE,
  VILLE
FROM CLIENTS
WHERE PAYS = "France"
  AND CODE_POSTAL NOT LIKE "75%"
  AND CODE_POSTAL NOT LIKE "77%"
  AND CODE_POSTAL NOT LIKE "78%"
  AND CODE_POSTAL NOT LIKE "91%"
  AND CODE_POSTAL NOT LIKE "92%"
  AND CODE_POSTAL NOT LIKE "93%"
  AND CODE_POSTAL NOT LIKE "94%"
  AND CODE_POSTAL NOT LIKE "95%";
-- Oracle et PostgreSQL :
CREATE VIEW V_CLIENTS_PROVINCE AS
SELECT SOCIETE,
  ADRESSE,
  TELEPHONE,
  VILLE
FROM CLIENTS
WHERE PAYS = "France"
  AND SUBSTR(CODE_POSTAL, 1, 2) NOT IN ("75", "77", "78", "91", "92", "93", "94", "95");
-- SQL Server et MySQL :
CREATE VIEW V_CLIENTS_PROVINCE AS
SELECT SOCIETE,
  ADRESSE,
  TELEPHONE,
  VILLE
FROM CLIENTS
WHERE PAYS = "France"
  AND SUBSTRING(CODE_POSTAL, 1, 2) NOT IN ("75", "77", "78", "91", "92", "93", "94", "95");