-- 1. Insérez une nouvelle catégorie de produits nommée «fruits et légumes », en respectant les contraintes.
INSERT INTO CATEGORIES (
	CODE_CATEGORIE,
	NOM_CATEGORIE,
	DESCRIPTION
) VALUES (
		9,
		'Fruits et Légumes',
		'Fruits frais et confits, légumes de saison'
	);
-- 2. Créez un nouveau fournisseur « Grandma » (no_fournisseur = 30) avec les mêmes coordonnées que le fournisseur « Grandma Kelly’s Homestead ».
INSERT INTO FOURNISSEURS
SELECT 30,
	SOCIETE,
	ADRESSE,
	VILLE,
	CODE_POSTAL,
	PAYS,
	TELEPHONE,
	FAX
FROM FOURNISSEURS
WHERE SOCIETE LIKE "Grandma Kelly_s Homestead";
-- 3. Attribuer les produits de « Grandma Kelly’s Homestead » au nouveau fournisseur précédemment créé.
UPDATE PRODUITS
SET NO_FOURNISSEUR = 30
WHERE NO_FOURNISSEUR = 3;
-- 4. Supprimez l’ancien fournisseur « Grandma Kelly’s Homestead » .
DELETE FROM FOURNISSEURS
WHERE NO_FOURNISSEUR = 3 
--- Ou
DELETE FROM FOURNISSEURS
WHERE NO_FOURNISSEUR = (
		SELECT MIN(NO_FOURNISSEUR)
		FROM FOURNISSEURS
		WHERE SOCIETE LIKE "%Grandma%Kelly_s%"
	);