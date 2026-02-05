-- Avant suppression
SELECT *
FROM categories;
-- Même logique que UPDATE, avec WHERE et la condition
--- suppression d'un ou plusieurs lignes avec la même requête selon la condition
--- Sans le WHERE suppression de toutes les lignes
DELETE FROM categories WHERE CODE_CATEGORIE > 8;
-- Après suppression;
SELECT *
FROM categories;