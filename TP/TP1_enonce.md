# Enoncé du TP2

Dans ce TP, nous allons revoir les bases de Matlab, et vous devrez me rendre un
compte rendu (sous forme de pdf) dans lequel vous répondrez au questions.

## Explications générales et prérequis

Il vous faudra tout d'abord des informations complémentaires que vous pourrez
trouver dans [le cours 2](../Cours/cours2.md).

Commencez par lire ce cours, exécuter le code correspondant et n'hésitez pas à
me poser des questions si ce n'est pas clair
(ou si vous pensez qu'il y a une erreur...)

Il n'y a rien à rédiger pour cette partie. Plus vite vous aurez fini, plus vous
aurez de temps pour la suite (notée).

Nous allons maintenant nous intéresser à la fonction **sinus cardinal** et
calculer des choses dessus.

Pensez à rédiger votre rapport au fur et à mesure de vos avancées, il faut le
rendre à la fin de l'heure.

## Question 1 : visualisation d'une fonction donnée'

On veut étudier la courbe *f(t)=exp(-0.1 t).sin(2.pi.t)*, pour *t in [-10,10]*.
En calcul numérique, nous serons obligés de ne regarder qu'une version
échantillonnée de cette fonction. On voudra l'étudier avec un pas réglable
facilement (par exemple 0.1)

- Donnez le code permettant de créer le tableau correspondant au temps

- Donnez le code permettant de créer le tableau les ordonnées de la fonction

- Donner le code permettant de tracer cette fonction avec les conditions
suivantes :
  - en rouge
  - avec un tracé présentant une ligne ET des points pour les points
  d'échantillonage.
  - des labels sur les axes
  - un titre : "Fonction mystère"

- Donnez le code permettant de sauvegardez cette figure dans un fichier png.
Cette image devra être intégrée à votre rapport.
Au passage, expliquez pourquoi cette fonction se comporte comme cela...

## Question 2 : Visualisation de Sinc au carré

- Dans une nouvelle figure, tracez la fonction *g(t)= f^2(t)* sur le même
intervalle.
  - en bleu
  - avec un tracé présentant une ligne ET des points pour les points
  d'échantillonage.
  - des labels sur les axes
  - un titre : "Fonction mystère au carré"

- Dans une nouvelle figure, tracez les 2 fonctions *f(t)* et *g(t)*, bien
proprement, avec :
  - des légendes pour chaque tracé
  - un titre : "Comparaison des fonctions mystere et son carré"

Evidemment, vous mettrez ces courbes dans votre rapport.

## Question 3 : calcul d'intégrales

Je veux calculer (de façon approchée), l'intégrale de *f* et de *g* sur
l'intervalle [-10,10].
La méthode des rectangles va nous donner une façon très simple de calculer ces
résultats...

- Donner le code permettant de calculer ces intégrales.

- Donner le code permettant de calculer l'intégrale de f sur [0,10].

- Donner le code permettant de calculer l'aire sous la courbe de f sur [-10,10],
mais seulement pour les portions ou *f(t)* est positive.

## Question 3 : calcul de dérivées

- Donnez le code permettant de calculer la dérivée de *f* (approximée à gauche)
sur ]-10,10]

- Donner le code permettant d'afficher *f* et sa dérivée sur la même figure

- Donner le code permettant d'afficher *g* et sa dérivée sur la même figure

Pensez à justifier votre code en vérifiant que les résultats obtenus sont
crédibles (la dérivée augmente à tel ou tel endroit)

## Question 3 : calcul de passage par zéro

- Donner le code permettant de trouver (à peu près) les valeurs de *t* ou la
fonction *f* passe par 0.
