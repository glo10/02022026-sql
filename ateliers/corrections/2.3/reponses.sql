--- 1. nom et prénom des employés triés par nom DESC
SELECT nom,
  prenom
FROM EMPLOYEE
ORDER BY nom DESC;
--- 2. société et ville des clients triés par pays ASC
--- ASC(croissant) est le tri par défaut sur le champ après ORDER BY, vous n'êtes pas obligé de l'écrire
SELECT societe,
  ville
FROM clients
ORDER BY pays;
--- 3. société, pays, ville des clients triés par pays et ville
SELECT societe,
  pays,
  ville
FROM clients
ORDER BY pays, ville;
--- 4. nom et commission des employés triés par commission
SELECT nom,
  commission
FROM EMPLOYEE
ORDER BY commission;