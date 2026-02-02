# Installations avec Docker

## Installations et démarrage

Uniquement si vous souhaitiez travailler avec les conteneurs, pas besoin de connaitre Docker, les commandes à exécuter et les fichiers vont seront communiqués à temps.

PS : il y a plus de conteneur que nécessaire afin de satisfaire tout le monde.
En réalité, vous avez besoin d'un conteneur pour le SGBDR de votre choix et une interface graphique. Donc concrètement que 2 conteneurs parmi les 9 existants, un pour le SGBDR de votre choix et l'autre pour l'interface graphique associé.

1. [Téléchargez et installez Docker pour les utilisateurs sur Windows](https://www.docker.com/products/docker-desktop/) ou [depuis ce lien pour les autres](https://docs.docker.com/engine/install/)
2. Lancez docker ou docker-desktop(uniquement pour Windows)
3. [Récupérez le fichier compose.dev.yaml](../../compose.dev.yaml)
4. [Récupérez le fichier .env et placez-le au même niveau (dossier) que compose.dev.yaml)](../../.env)
5. Ouvrez un terminal et placez-vous dans le dossier contenant les fichiers *compose.dev.yaml* et *.env*, exécutez la commande suivante pour créer et lancer les services
```bash
docker compose -f compose.dev.yaml up -d
```
---

## Les autres commandes Docker

```bash
# Voir la liste de tous les conteneurs démarrés
docker container ls
# Pour voir la liste de tous les conteneurs
docker container ls -a 
# Stopper un container
docker stop id_container 
# Lancer un conteneur à partir de son ID
docker start id_container
```

## Utilisation du client adminer

[Suivez ce guide](../adminer.md)

## Export des données

- Pour exporter vos bases de données, vous pouvez le faire en vous connectant depuis ***adminer*** ou depuis les conteneurs via les commandes *mysqldump, pgdump, etc* en fonction de votre *SGBDR*