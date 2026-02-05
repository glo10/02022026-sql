# Vocabulaires

## Termes techniques associés à la conception d'une base de données

- MCD : Modèle conceptuel des données, pour simplifier partie conception de la base de données
- MLD : Modèle logique des données, pour simplifier toujours dans la conception mais en appliquant quelques règles pour rendre le modèle plus fiable
- MPD : Modèle physique des données toujours dans la conception mais plus proche de la mise en exploitation de la base de données dans un environnement physique (sur une machine)
- Attribut = colonne = champs
- Ligne = enregistrement = Tuple
- Table = relation = entité = sujet

## Types ou domaines de définition des données

- Plusieurs types de données, principaux :
  - Nombres
  - Lettres, on parle de chaîne de caractères ou caractères alphanumériques
  - Date
  - Booléen : vrai ou faux souvent matérialisé par les chiffres 0 et 1 avec 0 = faux et 1 = Vrai

## Clés

- Clé primaire = identifiantt = Primary Key (PK) => s'assure d'identifier un tuple de manière unique
- Clé étrangère = Foreign Key (FK) => On stocke dans une table donnée, une référence vers l'identifiant d'une autre table
- PK et FK garantissent la cohérence et l'intégrité des données

## 3 Types de relation entre les tables

1. Un à Un, exemple un employé est affilié à un seul département
2. Un à plusieurs, exemple un produit appartient à plusieurs catégories
3. Plusieurs à plusieurs, plusieurs fournisseurs proposent plusieurs produits
- Donne lieu à une nouvelle table d'association
- De base de cette table n'existe pas, elle nait de la relation plusieurs à plusieurs entre 2 tables
- PK : couple de PK de chaque table
- PK combiné de l'identifiant de chaque table

## SGBDR comparaison avec IA

- Invention du modèle relationnel par IBM équivalent à ChatGPT qui popularise les modèles conversationnels
- Ensuite tout le monde (dans l'exemple de l'IA, les concurrents Gemini, Deepseek, Mistral AI, Claude, Llama, Grok, Albert, etc.) a pris sa part du Gateau avec
  - SGBDR SQL Server (aussi appelé MS Server) de Microsoft
  - Oracle et MySQL (projet Open Source qui a été racheté par Oracle)
  - MariaDB (Fork = copie de MySQL suite à l'achat pour garder la main et rester ouvert à la communauté Open Source)
  - PostgreSQL Open Source mais appartient à la société Snowflake
  - SQLite base de données embarquée (fichier binaire)
  - DB2 d'IBM
  - Etc

## Opérateurs de comparaison dans WHERE

### BETWEEN

- BETWEEN intervalle qui inclut les valeurs données par exemple salaire entre 5000 et 7500 €
```sql
SELECT *
FROM employes
WHERE salaire BETWEEN 5000 AND 7500
-- Pas compris entre 5000 et 7500 donc < 5000 ou > 7500
SELECT *
FROM employes
WHERE salaire NOT BETWEEN 5000 AND 7500
``` 

### IN

- Au moins un est vrai dans la comparaison
```sql
SELECT *
FROM clients
WHERE pays IN ("france", "allemagne", "espagne") 
-- équivalent de WHERE pays = "france" OR pays = "allemagne" OR pays = "espagne"
```

### LIKE

- Apporte de la souplesse (moins de précision) dans sa condition, idéal pour les caractères comportants dans accents, des espaces ou des tirets qui peuvent être oubliés dans lors de la saisie et donc peuvent être exclus du résultat final alors qu'ils désignent la même chose mais avec un orthographe différent par exemple "événement et èvénement", "Sao Paulo et São Paulo", "0612345678 06-12-34-56-78 +33612345678"

```sql
SELECT *
FROM clients
WHERE ville LIKE 's_o Paulo'
-- _ remplace un seul caractère
-- % remplace plusieurs caractères
SELECT *
FROM clients
WHERE ville LIKE "%pau%"
-- Beaucoup moins précis ici par exemple saint-paul match et Pau et toutes les villes contenant pau seront également dans les résultats donc à doser selon le niveau de précision que l'on souhaite avoir ou ne pas avoir
``` 