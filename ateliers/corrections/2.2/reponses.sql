--- 1. nom et société des clients habitant à Toulouse
SELECT prenom,
  societe
FROM clients
WHERE UPPER(ville) = 'TOULOUSE';
--- 2. nom, prénom, fonction des employés dirigés par employé id 2
SELECT nom,
  prenom,
  fonction
FROM employes
WHERE rend_compte = 2;
--- 3. nom, prénom, fonction qui ne sont pas des représentants
SELECT nom,
  prenom,
  fonction
FROM employes
WHERE fonction NOT LIKE 'repr_tant%';
--- 4. nom, prénom, fonction employé salaire < 3500
SELECT prenom,
  prenom,
  fonction,
  salaire
FROM employes
WHERE salaire < 3500;
--- 5. nom, ville, pays clients qui n'ont pas de fax
SELECT prenom,
  ville,
  pays
FROM clients
WHERE fax IS NULL;
--- 6. nom, prénom, fonction qui n'ont pas de supérieur
SELECT prenom,
  prenom,
  fonction
FROM employes
WHERE rend_compte IS NULL;