-- 
-- Une jointure = combinaison des tables qui ont une relation entre PK et FK
-- On combine les colonnes et les lignes
-- Résultat d'une jointure = Table virtuelle (n'existe pas physiquement, existe uniquement lors de l'exécution de la requête)
-- Résultat jointure = colonnes table A  et colonnes table B
-- Résultat jointure = lignes tables A multiplié (associée) à chaque lignes de la table B
-- De base s'il n'y a pas de condition sur les clés, c'est un produit cartésien
-- Si la table A a 1000 lignes et la table B 10 000 lignes, on aura en tout 10 000 000 de tuples(lignes)
-- Si la table A a 10 colonnes et la table B 15 colonnes, on aura au total 25 colonnes
-- PK = Primary key = clé primaire
-- FK = Foreign Key = clé étrangère
SELECT *
FROM categories C, produits P
WHERE C.CODE_CATEGORIE = P.CODE_CATEGORIE;

-- Il d'usage et conseillé de préfixer les colonnes par l'alias de la table dédié mais pas obligatoire
-- C'est obligatoire pour les colonnes qui portent les mêmes noms de part et d'autre comme c'est le cas généralement pour les colonnes de jointure PK d'un côté et FK de l'autre qui porte le même nom
-- Si vous avez d'autres conditions à mettre utiliser l'opérateur AND après
--  la condition sur les colonnes de jointures
SELECT C.NOM_CATEGORIE AS categorie, C.DESCRIPTION, P.NOM_PRODUIT AS nom, P.quantite AS packaging
FROM categories C, produits P
WHERE C.CODE_CATEGORIE = P.CODE_CATEGORIE AND P.QUANTITE LIKE '%bouteille%';