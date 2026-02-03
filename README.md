# SQL Fondamentaux

## Ressources

- [Schema de la base de données pour les ateliers](./ateliers/schema.pdf)
- [Toutes les corrections des ateliers](./ateliers/corrections/)
- [Exercices supplémentaires RATP](./exercices/1-ratp.md)
- [Corrections RATP](./exercices/corrections/ratp/)
- [Demos](./demos/)

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

## Documentations

### Généralistes et compréhensibles

- [SQL avec W3SCHOOLS](https://www.w3schools.com/sql/)
- [SQL avec SQL.sh](https://sql.sh/)

### Spécifique à chaque SGBDR et plus technique

- [SQL Server](https://learn.microsoft.com/en-us/sql/sql-server/?view=sql-server-ver17)
- [Oracle](https://docs.oracle.com/en/database/oracle/oracle-database/23/index.html?utm_source=chatgpt.com)
- [MySQL](https://www.w3schools.com/mysql/)
- [PostGres avec W3SCHOOLS](https://www.w3schools.com/postgresql/index.php)
- [PostGres officielle](https://www.postgresql.org/docs/current/intro-whatis.html)
- [MariaDB](https://mariadb.com/docs)
- [SQLite](https://www.sqlite.org/docs.html)

---

## Installations selon le cadre de travail

### Cadre 1 : travail avec les VM

- Recommandé si vous avez une bonne connexion haut débit
- Rien à faire ici tout est déjà installé.

### Cadre 2 : travail en local sur sa machine en téléchargement les différents logiciels

1. [Installez l'éditeur de code VSCode](https://code.visualstudio.com/download) ou NotePad++
2. Sur VSCode, ajoutez depuis l'onglet extension, les extensions suivantes :
- [SQLite de alexcvz](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite) : pour visualiser des bases de données sqlite (fichiers binaires)
- [MySQL de Database Client](https://database-client.com/) : interface graphique pour communiquer avec la quasi-totalité des bases de données les plus populaires
3. [Suivez ces instructions pour télécharger les logiciels dédiés au SGBDR que vous avez choisi](./1-init/software/)

### Cadre 3 : travail avec des conteneurs Docker

1. Installez VSCODE et les extensions demandées, [cf. instruction précédente](#travail-en-local-sur-sa-machine-en-téléchargement-les-différents-logiciels)
- [Suivez ces instructions pour Docker](./1-init/docker/)
