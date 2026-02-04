-- 1. Écrivez la requête qui permet d'afficher la masse salariale des employés par fonction.
SELECT FONCTION,
	SUM(SALAIRE) AS "MASSE SALARIALE"
FROM employes
GROUP BY FONCTION;
-- 2. Affichez le montant de chaque commande, en ne conservant que les commandes qui comportent plus de 5 références de produit.
SELECT NO_COMMANDE,
	SUM(PRIX_UNITAIRE * QUANTITE) AS "TOTAL"
FROM details_commandes
GROUP BY NO_COMMANDE
HAVING COUNT(REF_PRODUIT) > 5;
-- 3. Afficher la valeur des produits en stock et la valeur des produits commandés par
---   fournisseur, pour les fournisseurs qui ont un numéro compris entre 3 et 6
SELECT NO_FOURNISSEUR,
	SUM(PRIX_UNITAIRE * UNITES_STOCK) AS "EN STOCK",
	SUM(PRIX_UNITAIRE * UNITES_COMMANDEES) AS "VENDU"
FROM produits
WHERE NO_FOURNISSEUR BETWEEN 3 and 6
GROUP BY NO_FOURNISSEUR;