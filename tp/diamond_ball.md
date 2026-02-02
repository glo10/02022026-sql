# TP : ballon de diamant

Une *Start-Up Diamond Football Stats* dans les statistiques souhaite lancer un nouveau prix pour recompenser les meilleurs équipes et les meilleurs joueurs sur une période de 5 ans en tenant compte uniquement sur les performances. Pour cela, vous avez été séléctionné pour aider cette *Start-up* à analyser les matchs et leur fournir des réponses aux questions ci-après.

## Quelques explications

Chaque équipe a un score Elo, un nombre qui représente sa force estimée.
Plus le score est élevé, plus l’équipe est considérée comme forte par rapport aux autres équipes.
Après chaque match, le score Elo est ajusté en fonction du résultat :
- Si une équipe forte gagne contre une équipe faible → petit ajustement.
- Si une équipe faible bat une équipe forte → gros ajustement.
- Si égalité → ajustement proportionnel selon la différence de force.
HomeElo → le score Elo de l’équipe à domicile avant le match.
AwayElo → le score Elo de l’équipe à l’extérieur avant le match.

---

## Analyse des matchs et des équipes

En vous basant sur les données de la base de données issue de [d'Adam Gabor](https://www.kaggle.com/datasets/adamgbor/club-football-match-data-2000-2025?resource=download) et sur la période 2020-2025, repondez aux questions ci-après :

1. L'équipe qui a joué le plus de matchs européennes
2. L'équipe qui a marqué le plus de but
3. L'équipe qui a encaissé le plus de but
4. L'équipe qui a le plus grand nombre de victoire
5. L'équipe qui a le plus grand nombre de défaite
6. Le nombre de matchs par équipe
7. Triez par ordre décroissant les équipes en fonction de leur total de cartons jaunes et rouges
8. Classement des équipes qui tirent le plus au but.
9. Trouvez l'équipe qui a le plus marqué à l'extérieur
10. Trouvez les équipes qui ont marqué plus que la moyenne des buts par match.
11. Calculez le pourcentage de victoire par pays

---

## Remise des prix

12. Le meilleur buteur
13. Le meilleur passeur
14. La meilleure attaque
15. La meilleure défense
16. Les 2 gardiens le plus décisif
17. Les 8 défenseurs les plus décisifs
18. Le 8 milieux les plus décisifs
19. Les 10 joueurs les plus décisifs
20. L'équipe qui a le plus de carton
21. Les 10 meilleurs clubs européens
22. En tenant compte des réponses des questions précédentes, constituez votre équipe type et soumettez-le à la *Start-Up*
![exemple](https://sf.sports.fr/wp-content/uploads/2017/11/onze-UEFA.jpg)