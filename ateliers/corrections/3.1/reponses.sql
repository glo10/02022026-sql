-- 1. Affichez la somme des salaires et des
SELECT SUM(SALAIRE) + SUM(COMMISSION) AS "Total revenus"
FROM employes;
-- 2. Affichez la moyenne des salaires et la moyenne des commissions
--- Toutes bases de données :
SELECT ROUND(AVG(SALAIRE), 2) AS "moyenne salaire",
	ROUND(AVG(COALESCE(COMMISSION, 0)), 2) AS "moyenne commission"
FROM employes;
--- ORACLE :
SELECT ROUND(AVG(SALAIRE), 2) AS "moyenne salaire",
	ROUND(AVG(NVL(COMMISSION, 0)), 2) AS "moyenne commission"
FROM employes;
--- SQL Server
SELECT ROUND(AVG(SALAIRE), 2) AS "moyenne salaire",
	ROUND(AVG(ISNULL(COMMISSION, 0)), 2) AS "moyenne commission"
FROM employes;
--- MySQL
SELECT ROUND(AVG(SALAIRE), 2) AS "moyenne salaire",
	ROUND(AVG(IFNULL(COMMISSION, 0)), 2) AS "moyenne commission"
FROM employes;
-- 3. Affichez le salaire maximum et la plus petite
SELECT MAX(SALAIRE) AS "plus haut salaire",
	MIN(COMMISSION) AS "plus petite commission"
FROM employes;
-- 4. Affichez le nombre distinct de fonction.
SELECT COUNT(DISTINCT FONCTION)
FROM employes;