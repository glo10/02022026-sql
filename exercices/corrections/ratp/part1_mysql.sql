-- 1. Toutes les villes différentes de Paris
SELECT city
FROM `2021`
WHERE city IS NOT LIKE '%paris%'
ORDER BY city;

-- 2. Les stations qui ont une fréquentation entre *5 000 000* et *10 000 000* de passager annuel.
SELECT station
FROM `2021`
WHERE trafic BETWEEN 5000000 AND 10000000;

--- 3. Le nombre total du trafic annuel toutes les stations confondue
SELECT SUM(trafic) AS total_trafic_2021
FROM `2021`;

--- 4. Le nombre total des stations par Arrondissement de Paris dans l'ordre décroissant (du plus grand au plus pétit)
SELECT city, paris_district, AS COUNT(station) AS total_stations
FROM `2021`
WHERE LOWER(city) LIKE '%paris%'
GROUP BY station, city, paris_district
ORDER BY total_trafic DESC;

--- 5.  Le nombre total des stations de métro
SELECT COUNT(*) AS total_station_metro
FROM `2021`
WHERE LOWER(network) LIKE '%m_tro%';

--- 6. Le nombre total des stations de RER
SELECT COUNT(*) AS total_station_rer
FROM `2021`
WHERE UPPER(network) LIKE '%RER%';

--- 7. Tous les noms des stations des villes de Bobigny, courneuve, St-Denis, Pantin, Montreuil&Bagnolet par nom de ville croissante (de A à Z)
SELECT
FROM `2021`
WHERE LOWER(station) IN ('bobigny', 'pantin', 'montreuil', 'bagnolet')
OR LOWER(station) LIKE '%s%denis%'
OR LOWER(station) LIKE '%courneuve%';

--- 8. Toutes les infos sur stations de la ville de Vincennes
SELECT *
FROM `2021`
WHERE LOWER(city)='vincennes';

--- 9. Toutes les stations commençant par "porte" triées par ordre décroissant
SELECT station
FROM `2021`
WHERE LOWER(station) LIKE '%porte%'
ORDER BY station DESC;

--- 10. Les stations avec une correspondance avec le RER B.
SELECT station
FROM `2021`
WHERE UPPER(connection_1)='B'
OR UPPER(connection_2)='B'
OR UPPER(connection_3)='B'
OR UPPER(connection_4)='B'
OR UPPER(connection_5)='B';

--- 11. Toutes les infos sur la ville de Meudon-la-forêt
SELECT *
FROM `2021`
WHERE LOWER(station) LIKE '%meudon%fo%';