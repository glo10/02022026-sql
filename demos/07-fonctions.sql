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

-- Moyenne des salaires par poste
SELECT AVG(SALAIRE), FONCTION
FROM employes
GROUP BY FONCTION;

-- Moyenne salaire et comission en excluant du calcul les valeurs nulles et 0
-- Attention ici avec le second paramètre de la fonction CAST varie selon votre SGBDR
SELECT ROUND(AVG(SALAIRE), 2) AS "moyenne salaire",
	ROUND(AVG(COALESCE(COMMISSION, 0)), 2) AS "moyenne commission"
FROM employes
WHERE COMMISSION IS NOT NULL OR CAST(COMMISSION AS SIGNED) = 0;

-- Moyenne des salaires par poste avec la moyenne > 5000
SELECT AVG(SALAIRE), FONCTION
FROM employes
GROUP BY FONCTION
HAVING AVG(SALAIRE) > 5000;

-- Département dans l'île de France avec plus de 2M d'habitants
SELECT REGION, DEPARTEMENT, COUNT(NB_POPULATION)
FROM LOCALITE
WHERE DEPARTEMENT IN (77,75,78,91,92,93,94,95)
GROUP BY REGION, DEPARTEMENT
HAVING COUNT(NB_POPULATION) > 2000000;