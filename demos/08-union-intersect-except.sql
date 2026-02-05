-- Pour les opérateurs ensemblistes il faut avoir le même schéma cad même nombre de colonne
-- et idéalement avec le même type de données

-- Les noms de tous mes partenaires en supprimant des doublons s'il y en a
SELECT NOM, "un employé" AS "type"
FROM employes
UNION
SELECT SOCIETE, "un fornisseur"
FROM fournisseurs;

-- INTERSECT n'existe pas dans tous les SGBDR, on le remplace par WHERE EXISTS
--- Des villes ou j'ai à la fois des clients et des fournisseurs
SELECT DISTINCT VILLE
FROM clients c
WHERE EXISTS (
SELECT DISTINCT VILLE
FROM fournisseurs f
WHERE c.VILLE = f.VILLE
);

-- EXCEPT ou MINUS n'existe pas dans tous les SGBDR, on le remplace par WHERE NOT EXISTS
--- Des villes ou j'ai à la fois des clients mais aucun fournisseur
SELECT DISTINCT VILLE
FROM clients c
WHERE NOT EXISTS (
-- Attention ici si vous avez dans le SELECT plusieurs colonnes dans le WHERE il faut avoir autant de conditions combiné avec un AND
-- 4 colonnes dans le select = 4 conditions combiné avec l'opérateur AND entre elles
SELECT DISTINCT VILLE
FROM fournisseurs f
WHERE c.VILLE = f.VILLE
);

--- Des villes ou j'ai à la fois des fournisseurs mais aucun client
SELECT DISTINCT VILLE
FROM fournisseurs c
WHERE NOT EXISTS (
SELECT DISTINCT VILLE
FROM clients f
WHERE c.VILLE = f.VILLE
);