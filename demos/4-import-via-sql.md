# Importer un fichier SQL dans une base de données

1. Lancez le logiciel MYSQL Command Line
2. Connectez vous au SGBDR en saisissant le mot de passe
3. Au préalable, il faut avoir un fichier .sql avec instructions pour créer des tables et insérez des tuples 
4. Créez la base de données si elle n'existe pas encore dans votre SGBDR MySQL
```sql
CREATE DATABASE ratp;
```
5. Placez-vous sur cette base de données
```sql
USE ratp;
```
6. Importez le fichier depuis son emplacement
```sql
source c:/chemin/vers/votre/import/nom_fichier.sql;
```
7. Vérifiez que toutes les tables sont importés
```sql
show tables;
```

## Alternatif aux étapes 1 et 2

Si vous avez installé MySQL en acceptant d'avoir la commande mysql dans vos variables d'environnement alors vous pouvez vous connecter depuis n'importe quel shell comme par exemple Powershell avec la commande suivante :
```sql
mysql -u root -p
-- a la suite de cette commande, il faudra saisir le mot de passe
```