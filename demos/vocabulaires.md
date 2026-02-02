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

- Clé primaire = identifiant = Primary Key
- Clé étrangère = Foreign => On stocke dans une table donnée, une référence vers l'identifiant d'une autre table

## 3 Types de relation entre les tables

1. Un à Un
2. Un à plusieurs
3. Plusieurs à plusieurs
- Donne lieu à une nouvelle table d'association
- De base de cette table n'existe pas, elle nait de la relation plusieurs à plusieurs entre 2 tables
- PK : couple de PK de chaque table
- PK combiné de l'identifiant de chaque table