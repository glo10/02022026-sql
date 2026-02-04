-- 1. Affichez tous les produits pour lesquels la quantité en stock est inférieure à la moyenne
--     des quantités en stock.
SELECT NOM_PRODUIT
FROM PRODUITS
WHERE UNITES_STOCK < (
	SELECT AVG( UNITES_STOCK)
	FROM PRODUITS
);
--- 2. Affichez toutes les commandes pour lesquelles
---     les frais de ports dépassent la moyenne des frais de ports pour ce client.
SELECT CODE_CLIENT, NO_COMMANDE, PORT
FROM COMMANDES c 
WHERE PORT > (
	SELECT AVG(PORT) AS moyenne
	FROM COMMANDES b
	WHERE c.CODE_CLIENT=b.CODE_CLIENT
); 

--- 3. Affichez les produits pour lesquels la quantité en stock est supérieure à la quantité en stock
---     de tous les produits de catégorie 3
SELECT REF_PRODUIT
FROM PRODUITS
WHERE UNITES_STOCK > (
	SELECT MAX(UNITES_STOCK) 
	FROM PRODUITS
	WHERE CODE_CATEGORIE = 3
);