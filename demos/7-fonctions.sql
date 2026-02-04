-- Sous-chaîne (une partie de la valeur) + concaténation (mettre les infos bout à bout)
SELECT
    PRENOM,
    CONCAT(SUBSTRING(PRENOM, 1, 1), '***')
FROM employes;
-- Concaténation + sous-chaîne + longueur de la chaîne de caractère
SELECT
    PRENOM,
    CONCAT(SUBSTRING(PRENOM, 1, 1), '***'),
    INSTR(prenom, 'an') AS motif,
    LENGTH(prenom) AS "longueur prénom"
FROM employes
WHERE INSTR(prenom, 'an') > 0;

-- Différences entre 2 dates
SELECT 
    NO_COMMANDE,
    DATEDIFF(date_envoi, date_commande) AS nb_jours
FROM commandes
WHERE DATEDIFF(date_envoi, date_commande) > 5
ORDER BY nb_jours DESC;