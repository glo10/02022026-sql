# SQL Fondamentaux

## Ressources

- [Schema de la base de données pour les ateliers](./ateliers/schema.pdf)
- [Toutes les corrections des ateliers](./ateliers/corrections/)
- [Exercices supplémentaires RATP](./exercices/1-ratp.md)
- [Corrections RATP](./exercices/corrections/ratp/)
- [Toutes les demos](./demos/)
- [Guide installation en local (sur votre ordinateurs)](#cadre-2--travail-en-local-sur-sa-machine-en-téléchargement-les-différents-logiciels)

### Gestion des dates

- [Références de toutes les fonctions associées aux dates et heures pour chaque SGBDR](https://sql.sh/fonctions/date-heure)
- [Exemples utilisation des fonctions dédiées aux dates avec des comparaisons des dates dans le WHERE](https://www.datacamp.com/fr/tutorial/sql-date-greater-than)
- [Exemples manipulation des dates par SGBDR](https://learnsql.fr/blog/fonctions-sql-de-date-et-d-heure-dans-5-dialectes-sql-populaires/)

### Importation des données dand la base de données

- [Avec MySQL depuis un export .sql](./demos/4-import-via-sql.md)
- [Avec MySQL depuis un fichier CSV](https://www.mysqltutorial.org/mysql-basics/import-csv-file-mysql-table/)
- [Avec SQL Server depuis un fichier CSV et un logiciel graphique](https://learn.microsoft.com/fr-fr/sql/relational-databases/import-export/import-flat-file-wizard?view=sql-server-ver17)
- [Vidéo import CSV depuis Kaggle avec SQL Server](https://www.youtube.com/watch?v=8HWXjh6eBjc)
- [Vidéo import CSV Oracle depuis le logiciel SQL Developer](https://www.youtube.com/watch?v=GcB4_0Iz2Zw)
- [Vidéo Excel connecté à une base de données à lire à partir de 3min45 avec SQL Server jusqu'à 9min48](https://www.youtube.com/watch?v=UzfYbWZr6ro), pour les autres SGBDR le processus est similaire/
- [Autre vidéo EXCEL SQL Server droit au but](https://www.youtube.com/watch?v=eMDpuiiHm8U)

---

## Corrections des ateliers par chapître

- [Atelier 2.1](./ateliers/corrections/2.1/)
- [Atelier 2.2](./ateliers/corrections/2.2/)
- [Atelier 2.3](./ateliers/corrections/2.3/)
- [Atelier 2.4](./ateliers/corrections/2.4/)
- [Atelier 3.1](./ateliers/corrections/3.1/)
- [Atelier 3.2](./ateliers/corrections/3.2/)
- [Atelier 4](./ateliers/corrections/4/)
- [Atelier 5](./ateliers/corrections/5/)
- [Atelier 6](./ateliers/corrections/6/)
- [Atelier 7](./ateliers/corrections/7/)

**PS : PDF de toutes les corrections envoyés par email**

---

## Documentations

### Généralistes et compréhensibles

- [SQL avec W3SCHOOLS](https://www.w3schools.com/sql/)
- [SQL avec SQL.sh](https://sql.sh/)

### Spécifique à chaque SGBDR et plus technique

- [SQL Server](https://learn.microsoft.com/en-us/sql/sql-server/?view=sql-server-ver17)
- [Oracle](https://docs.oracle.com/en/database/oracle/oracle-database/23/index.html?utm_source=chatgpt.com)
- [MySQL](https://www.w3schools.com/mysql/)
- [PostGreSQL avec W3SCHOOLS](https://www.w3schools.com/postgresql/index.php)
- [PostGreSQL officielle](https://www.postgresql.org/docs/current/intro-whatis.html)
- [MariaDB](https://mariadb.com/docs)
- [SQLite](https://www.sqlite.org/docs.html)

---

## Base de données public

- [Gouvernement français](https://www.data.gouv.fr/)
- [International](https://www.kaggle.com/datasets)

---

## Installations selon le cadre de travail

### Cadre 1 : travail avec la VM

- Recommandé si vous avez une bonne connexion haut débit
- Rien à faire ici tout est déjà installé.

### Cadre 2 : travail en local sur sa machine en téléchargement les différents logiciels

1. Utilisez NotePad++ ou [Installez l'éditeur de code VSCode](https://code.visualstudio.com/download)
2. [Suivez ces instructions pour télécharger les logiciels dédiés au SGBDR que vous avez choisi](./1-init/software/)
3. Uniquement si vous avez installé VSCode, ajoutez depuis l'onglet extension, les extensions suivantes :
- [SQLite de alexcvz](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite) : pour visualiser des bases de données sqlite (fichiers binaires)
- [MySQL de Database Client](https://database-client.com/) : interface graphique pour communiquer avec la quasi-totalité des SGBDR les plus populaires
4. Uniquement si vous utilisez VS Code, regardez les vidéos suivantes :
- [Ecrire des requêtes avec MySQL](https://www.youtube.com/watch?v=9ADd-_mM5Dw)
- [Bases de VS Code](https://www.youtube.com/watch?v=viT2VSXlmXw)


### Cadre 3 : travail avec des conteneurs Docker

1. Installez VSCODE et les extensions demandées, [cf. instruction précédente](#travail-en-local-sur-sa-machine-en-téléchargement-les-différents-logiciels)
- [Suivez ces instructions pour Docker](./1-init/docker/)
