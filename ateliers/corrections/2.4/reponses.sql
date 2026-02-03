-- 1. Affichez le nom, le prénom, la fonction et le salaire des employés qui ont un salaire compris entre 2500 et 3500.
SELECT employes.NOM,
  employes.PRENOM,
  employes.FONCTION
FROM employes
WHERE employes.SALAIRE >= 2500
  AND employes.SALAIRE <= 3500;
-- 2. Affichez le nom du produit, le nom du fournisseur, le nom de la catégorie et 
-- les quantités de produits qui ne sont pas d’une des catégories 1,3,5 et 7.
SELECT P.NOM_PRODUIT,
  F.SOCIETE,
  C.NOM_CATEGORIE,
  P.QUANTITE
FROM produits P,
  fournisseurs F,
  categories C
WHERE C.CODE_CATEGORIE = P.CODE_CATEGORIE
  AND F.NO_FOURNISSEUR = P.NO_FOURNISSEUR
  AND C.CODE_CATEGORIE NOT IN ('1', '3', '5', '7');
-- 3. Affichez le nom du produit, le nom du fournisseur, le nom de la catégorie et les quantités des produits qui ont
-- un numéro de fournisseur entre 1 et 3
-- ou un code catégorie entre 1 et 3
-- et pour lesquelles les quantités sont données en boîte(s) ou en carton(s).
SELECT x.NOM_PRODUIT,
  y.societe,
  z.nom_categorie,
  x.quantite,
  y.no_fournisseur,
  z.code_categorie
FROM produits x,
  fournisseurs y,
  categories z
WHERE z.code_categorie = x.code_categorie
  AND y.no_fournisseur = x.no_fournisseur
  AND (
    CAST(y.no_fournisseur AS SIGNED) <= 3
    OR CAST(z.code_categorie AS SIGNED) <= 3
  )
  AND (
    x.quantite LIKE '%bo_tes%'
    OR x.quantite LIKE '%carton%'
  );