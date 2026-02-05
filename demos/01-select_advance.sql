-- AS pour renommer une colonne, le mot-clé est optionnelle (nom_colonne  [AS] nouveau_nom_colonne)
SELECT NO_COMMANDE AS numero_commande, REF_PRODUIT reference, PRIX_UNITAIRE prix, QUANTITE, PRIX_UNITAIRE*QUANTITE AS "Total"
FROM details_commandes 
LIMIT 10;

-- LIMIT [Nombre de lignes à retourner] => ne décharge pas toutes les données, décharge que X résultats sur le total
-- Ne pas STOCKER les données calculées ou dérivées des autres par exemple les totaux, calcul des prix TTC, etc.
SELECT NO_COMMANDE, REF_PRODUIT, PRIX_UNITAIRE, QUANTITE, PRIX_UNITAIRE*QUANTITE AS "Total"
FROM details_commandes
WHERE PRIX_UNITAIRE*QUANTITE >= 50000
ORDER BY PRIX_UNITAIRE*QUANTITE DESC 
LIMIT 10;