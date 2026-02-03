# Les jointures

## Avec WHERE (moyennement courant)

```sql
SELECT P.NOM_PRODUIT,C.CODE_CATEGORIE, C.NOM_CATEGORIE, P.QUANTITE
FROM produits P, categories C
WHERE P.CODE_CATEGORIE = C.CODE_CATEGORIE 
```

## Avec NATURAL JOIN (moins courant)

```sql
SELECT P.NOM_PRODUIT,C.CODE_CATEGORIE, C.NOM_CATEGORIE, P.QUANTITE
FROM produits P
NATURAL JOIN categories C
```

## Avec JOIN USING (moins courant)

```sql
SELECT P.NOM_PRODUIT,C.CODE_CATEGORIE, C.NOM_CATEGORIE, P.QUANTITE
FROM produits P
JOIN categories C USING (CODE_CATEGORIE)
```

## JOIN ON (le plus courant)

```sql
SELECT P.NOM_PRODUIT,C.CODE_CATEGORIE, C.NOM_CATEGORIE, P.QUANTITE
FROM produits P
JOIN categories C
ON P.CODE_CATEGORIE = C.CODE_CATEGORIE
WHERE P.QUANTITE LIKE '%carton%'
-- La condition de jointure est dans le ON 
```

## JOIN ON avec plusieurs tables

```sql
SELECT P.NOM_PRODUIT,C.CODE_CATEGORIE, C.NOM_CATEGORIE, P.QUANTITE
FROM produits P
JOIN categories C
ON P.CODE_CATEGORIE = C.CODE_CATEGORIE
JOIN fournisseurs F
ON F.NO_FOURNISSEUR = P.NO_FOURNISSEUR
WHERE P.QUANTITE LIKE '%carton%'
-- Plusieurs tables de jointures => succession de plusieurs JOIN ON avant WHERE
```