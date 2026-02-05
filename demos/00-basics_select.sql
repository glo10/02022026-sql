SELECT societe, ville, pays
FROM clients
ORDER BY ville ASC;
-- les 2 tirets du 6 avant une instruction est un commentaire
  -- Un commentaire est une ligne qui n'est pas exécuté (la base de données ne va pas lire cette ligne de commentaire)
  -- ça sert à mettre des infos à destination des utilisateurs humains (vous) pour apporter des précisions sur la nature des commandes ou des opérations
-- USE => permet d'indiquer la base de données qu'on souhaite utiliser
  -- Alternative à USE, c'est de préfixer les noms tables par le nom de la base de données
  -- Par exemple SELECT station FROM RATP.2021
-- Interrogation de la base de données
  -- SELECT => permet de lister les colonnes souhaitées
  -- FROM => indiquer la table
  -- WHERE => condition ou filtre ou prédicat ou critère pour filtrer (extraire uniquement une partie des lignes qui remplissent la condition)
  -- Décomposition du WHERE : WHERE [nom_de_colonne][operateur mathématique][valeur]
  -- exemples
    -- WHERE salaire > 5000
    -- WHERE date_embauche >= 2025-01-01 AND date_embauche <= 2025-12-31 
    -- Opérateurs mathématiques >, >=, =, <=, <, différent de != ou <> selon les SGBDR
    -- Opérateurs logiques AND, OR ou le NOT (n'est pas)