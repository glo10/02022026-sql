--- 1. Tous les employés de la société
SELECT *
FROM employes;
--- 2. Noms des catégories
SELECT nom_categorie
FROM categories;
--- 3. nom, prénom, date de naissance et commision (afficher 0 si pas de commission) des employés
--- Dans toutes les bases de données :
SELECT nom,
  prenom,
  date_naissance,
  coalesce(commission, 0)
FROM employes;
-- ORACLE :
SELECT nom,
  prenom,
  date_naissance,
  nvl(commission, 0)
FROM employes;
-- SQL Server :
SELECT nom,
  prenom,
  date_naissance,
  isnull(commission, 0)
FROM employes;
-- MySQL:
SELECT nom,
  prenom,
  date_naissance,
  ifnull(commission, 0)
FROM employes;
--- 4. Liste des fonctions des employés
SELECT DISTINCT fonction
FROM employes;
--- 5. Liste de tous les pays de la clientèle
SELECT DISTINCT pays
FROM clients;
--- 6. Toutes les villes qui ont au moins 1 client
SELECT DISTINCT ville
FROM clients;
--- 7. Produits commercialisés et valeur de stock par produit (pu*qté en stock)
-- Tous les SGBDR
SELECT	NOM_PRODUIT, PRIX_UNITAIRE*UNITES_STOCK AS valeur_stock
FROM produits;
-- POSTGRES
SELECT NOM_PRODUIT,
  (PRIX_UNITAIRE * QUANTITE)::DECIMAL(2) AS "Valeur stock"
FROM PRODUCT;
--- 8. nom, prenom, age, ancienneté employés
--- Tous les SGBDR
SELECT nom,
  prenom,
  DATE_PART('YEAR', AGE(CURRENT_DATE, date_naissance)) AS age,
  EXTRACT(
    'YEAR'
    FROM AGE(CURRENT_DATE, date_embauche)
  ) AS "ancienneté"
FROM EMPLOYEE;
-- ORACLE :
SELECT nom,
   prenom,
   floor((sysdate - date_naissance) / 365.25) AS age,
   floor((sysdate - date_embauche) / 365.25) AS "ancienneté"
FROM employes;
-- POSTGRES :
SELECT nom,
   prenom,
   floor((current_date - date_naissance) / 365) AS age,
   floor((current_date - date_embauche) / 365) AS "ancienneté"
FROM employes;
-- MYSQL :
SELECT nom,
   prenom,
   datediff(current_date, date_naissance) / 365.25 AS "AGE",
   datediff(current_date, date_embauche) / 365.25 AS "ANCIENNETE"
FROM employes;
-- SQL Server :	
SELECT nom,
   prenom,
   datediff(
      day,
      date_naissance,
      getdate()
   ) / 365.25 AS "AGE",
   datediff(
      day,
      date_embauche,
      getdate()
   ) / 365.25 AS "ANCIENNETE"
FROM employes;
--- 9. Requête qui affiche Employé a un  gain annuel sur 12 mois
SELECT nom || ' ' || prenom AS "Employé",
  'gagne' AS 'a un',
  (salaire * 12) AS 'salaire*12',
  'par an' AS 'sur 12 mois'
FROM employes;