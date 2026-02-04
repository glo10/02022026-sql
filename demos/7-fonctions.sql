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
WHERE DATEDIFF(nvoi, date_commande) > 5
ORDER BY nb_jours DESC;

-- Nombre total des commandes
SELECT COUNT(NO_COMMANDE) AS TOTAL
FROM commandes;

-- Moyenne des salaires
SELECT ROUND(AVG(SALAIRE),2) AS MOYENNE_TOUS_LES_SALAIRES
FROM employes;

-- Trouver les commandes qui ont mis 
-- plus de 5 jours à être envoyé par les employés
-- trier par ordre nb jours décroissant
SELECT UPPER(e.NOM),
e.PRENOM,
c.NO_COMMANDE,
c.DATE_COMMANDE,
c.DATE_ENVOI,
DATEDIFF(c.DATE_ENVOI, c.DATE_COMMANDE) AS livraison
FROM commandes c
JOIN employes  e
ON c.NO_EMPLOYE = e.NO_EMPLOYE
WHERE DATEDIFF(c.DATE_ENVOI, c.DATE_COMMANDE) > 5
ORDER BY livraison DESC
LIMIT 10;

-- Fonctions d'agrégations SUM(), COUNT(), AVG(), MAX(), MIN()
SELECT MAX(SALAIRE), FONCTION, AVG(COMMISSION)
FROM employes
GROUP BY FONCTION;