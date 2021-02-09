# Enoncé du TP2

Ici, nous allons faire de la visualisation et un peu de traitement de données
(statistiques). Ici encore, un **compte rendu** devra être donné en fin de
séance, au format **pdf**.

Vous ferez figurer dans votre compte rendu :
- votre code
- des explications sur ce code
- des figures correspondant aux courbes crées
- des observations sur les expériences menées.

Pour cela, nous allons utiliser une base d'exemples nommée
**Heart Disease Cleveland**.

## La base Heart Disease Cleveland

Cette base provient d'ici : https://www.kaggle.com/ronitf/heart-disease-uci.
Elle est contenue dans un fichier **csv** que vous pouvez télécharger en
cliquant sur [ce lien](heart.csv).

Voici les détails de ce fichier :
- la base contient 303 exemples de patients atteints ou non d'un problème
cardiaque.
- Chaque exemple occupe une ligne
- les différentes informations relatives à ces exemples sont séparées par des
virgule.
- la première ligne du fichier décrit brievement les informations disponibles
(**les données commencent donc à la seconde ligne**)

Voici les informations disponible pour chaque patient.

1.  age
2.  sex (1 for male, 0 female)
3.  chest pain type (4 values)
4.  resting blood pressure
5.  serum cholestoral in mg/dl
6.  fasting blood sugar > 120 mg/dl
7.  resting electrocardiographic results (values 0,1,2)
8.  maximum heart rate achieved
9.  exercise induced angina
10. oldpeak = ST depression induced by exercise relative to rest
11. the slope of the peak exercise ST segment
12.  number of major vessels (0-3) colored by flourosopy
13.  thal: 3 = normal; 6 = fixed defect; 7 = reversable defect
14.  target : presence of heart disease in the patient.
      0 (no presence) or 1 (presence).

## Question 1 : Lecture du fichier csv


Toutes les données étant numériques, nous pouvons, par exemple, lire le fichier
et placer les données dans un tableau 2D.

En Matlab 2012, nous pouvons utiliser pour cela la fonction **csvread**.
A partir de [la documentation de csvread](https://fr.mathworks.com/help/matlab/ref/csvread.html), donner le code permettant de :

- lire le fichier csv dans un tableau 2D nommé *all_data*
- afficher la taille de ce tableau (fonction *size*)
- récupérer seulement les informations de 1 a 13 dans un tableau 2D nommé *features*
- récupérer seulement les informations *target* dans un tableau 1S nommé *target*
- afficher la taille de *features* et *target*.

## Question 2 : Visualisations 2D

- Tracez le nuage de points du **cholesterol**, chaque patient étant représenté
par un point *rouge* ou l'abscisse du point est le cholesterol du patient
et son ordonnée est 0.
Vous pourriez avoir besoin de la fonction **zeros** qui génére un tableau
(ou une matrice) rempli de zéros.

- tracez sur une seconde figure le nuage de points **age** (abscisse) vs
**cholesterol** (ordonnée). Chaque point doit être *bleu*.
Voyez vous un lien statistique quelconque entre ces variables ?

## Question 2 : Filtrage

Donnez le code permettant de récupérer
- dans une variable *features_h* les caractéristiques pour les patients hommes.
- dans une variable *features_f* les caractéristiques pour les patients femmes.

- Tracez sur une même figure les nuages de points **age** vs **cholesterol**,
en vert pour les hommes, en jaune pour les femmes.

Voyez vous une différence statistique quelconque entre ces groupes ?

## Question 3 : Quelques mesures statistiques.

- Donner la moyenne et l'écart type du **cholesterol** des patients
- Donner la moyenne et l'écart type du **maximum heart rate achieved** des patients

- tracez l'histogramme, sur 20 cases, du **cholesterol** des patients
- tracez l'histogramme, sur 20 casesn du **maximum heart rate achieved** des patients


Retrouvez vous dans ces figures les informations de moyenne et d'écart type
mesurées précédemment ?

## Question 4 : Prédictions simplistes

Imaginons que notre objectif soit, à partir d'une seule information, de prédire
si un individu a un problème cardiaque. Par exemple, je vais supposer que
*chol > moyenne + 2 ecart types* indique un pb cardiaque.

- Donnez le code permettant de créer un tableau 1D dans lequel, pour chaque
individu, une case contienne 1 si ma condition est vraie et 0 sinon.

- Donnez le code permettant de compter le nombre de fois ou ma condition
donne des résultats en accord avec les informations de la base d'exemples.

- Calculez le pourcentage de réussite de notre prédiction.
