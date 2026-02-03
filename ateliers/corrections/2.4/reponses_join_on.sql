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
FROM produits P
JOIN fournisseurs F ON F.NO_FOURNISSEUR = P.NO_FOURNISSEUR
JOIN categories C ON C.CODE_CATEGORIE = P.CODE_CATEGORIE
WHERE C.CODE_CATEGORIE NOT IN ('1', '3', '5', '7');
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
FROM produits x
JOIN fournisseurs y
ON y.no_fournisseur = x.no_fournisseur
JOIN categories z
ON z.code_categorie = x.code_categorie
WHERE (
    CAST(y.no_fournisseur AS SIGNED) <= 3
    OR CAST(z.code_categorie AS SIGNED) <= 3
  )
  AND (
    x.quantite LIKE '%bo_te%'
    OR x.quantite LIKE '%carton%'
  )
  AND x.quantite NOT LIKE '%bou%';
-- 4. Écrivez la requête qui permet d’afficher le nom des employés qui ont effectué au moins une vente pour un client parisien.
SELECT e.NOM,
  cl.SOCIETE,
  cl.VILLE
FROM employes e
  JOIN commandes cmd ON e.NO_EMPLOYE = cmd.NO_EMPLOYE
  JOIN clients cl ON cmd.CODE_CLIENT = cl.CODE_CLIENT
WHERE VILLE = 'Paris';
-- 5. Affichez le nom des produits et le nom des fournisseurs pour les produits des catégories 1,4 et 7.
SELECT NOM_PRODUIT,
  SOCIETE
FROM produits p
  JOIN fournisseurs f ON p.NO_FOURNISSEUR = f.NO_FOURNISSEUR
WHERE CODE_CATEGORIE IN (1, 4, 7);
-- 6. Affichez le nom des employés ainsi que le nom de leur supérieur hiérarchique.
SELECT s.NOM AS nom_salarie,
  s.PRENOM AS salarie_prenom,
  s.REND_COMPTE numero_du_chef,
  s.NO_EMPLOYE AS numero_employe_salarie,
  chef.NOM nom_du_chef,
  chef.PRENOM prenom_du_chef
FROM employes s
  JOIN employes chef ON chef.no_employe = s.REND_COMPTE;