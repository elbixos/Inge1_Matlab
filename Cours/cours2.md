# Cours 2

Je vais mettre la dedans tout ce dont on aura besoin dans le [TP1](../TP/TP1_enonce.md)

## Indices Linéarisés dans les matrices
Soit une matrice *M*
```Matlab
M = [1,4,5;12,2,2;1,27,4]
```
Si je veux acceder à la valeur case (2,1) de la matrice (qui contient 12), je
vais faire quelque chose comme
```Matlab
disp(M(2,1))
```

Mais je peux y accéder aussi en utilisant un unique indice dit **linéarisé**.
```Matlab
disp(M(4))
```

On compte les indices de cases comme suit :
- la case 1 est la case en haut a gauche (contient 1)
- la case 2 est la case en dessous (contient 4)
- la case 3 est la case en dessous (contient 5)
- la case 4 .... on repart a la colonne suivante (contient 12)
- ... et ainsi de suite

Ces indices permettent d'accéder à une ou plusieurs valeurs spécifique de la matrice
Je peux ainsi ne récupérer qu'une liste de cases comme suit :
```Matlab
M([4,7,9])
```

ou

```Matlab
M([4:7])
```

Essayez de comprendre les résultats qui s'affichent, suite aux exécutions des
codes précédents, ce ne sera pas perdu.

## Concaténation de vecteurs, matrices

Il est possible, en Matlab, de concatener des vecteurs ou des matrices, de facon
simple. Testez le code suivant, cela devrait vous aider à comprendre

```Matlab
x=[1,2,3]
y=[4,5,6]
z=[7,8,9,10]

concat1 = [x,z]

concat2 = [x;y]
```

Que se passe t'il si je tente :
```Matlab
concat3 = [x;z]
```

On peut, de la meme façon, concatener des matrices horizontalement ou
verticalement (sous réserve que leur dimensions soient compatibles)


## les opérations de recherche dans un vecteur (matrice)

Il arrive régulièrement Que l'on doive trouver, dans un vecteur ou une matrice
à quels points ces données correspondent à une condition.
Ceci se fait en deux étapes.

### Pour des vecteurs

1. Le code suivant compare le vecteur x avec la condition *>0*
```Matlab
x=[-4,12,2,-3,5,7]

montest = x>0
```

la variable *montest* contient alors un vecteur de meme taille que *x*, chaque
case contenant un 1 si la condition est vraie, et 0 sinon.

Avec ceci, je peux compter par exemple le nombre de valeurs positives dans *x*
```Matlab
nb_positifs = sum(montest)
```

Que j'aurais pu faire en une seule ligne, tout à fait lisible si on comprend ce
qui se passe :
```Matlab
nb_positifs = sum(x>0)
```

2. Il arrivera fréquemment que ce soient les valeurs positives qui m'intéressent
  (et pas seulement le fait qu'elle soient positives).
  On peut alors utiliser la fonction *find* qui renvoie les **indices** pour
  lesquels son argument est différent de zéro.

la ligne suivante va ainsi regarder le tableau *montest* et renvoyer les indices
pour lesquels montest vaut 1.
```Matlab
indices = find(montest)
```

Nous disposons maintenant des indices des cases de *x* pour lesquelles *x* est
supérieur à zéro.
On peut, par exemple, stocker les valeurs correspondantes dans une nouvelle
variable, et calculer la somme de ces valeurs

```Matlab
positifs = x(indices)
resu = sum(positifs)
```

Tout ceci aurait pu se faire en une ligne, plus ou moins lisible :
```Matlab
resu = sum(x(find(x>5)))
```

Pour ma part, j'aurais tendance a faire ceci :
```Matlab
indices= find(x>5);
resu = sum(x(indices))
```

### Pour des matrices

Cela fonctionne de la meme façon, à un petit détail prêt pour *find*.
Testez ceci :

```Matlab
M = [1,4,5;12,2,2;1,27,4]
montest= M>5
indices = find(montest)
```

*indices* contient ici les indices dit **linéarisé** des cases de *M* dont les
valeurs sont positives. On compte les indices de cases comme suit :
- la case 1 est la case en haut a gauche (contient 1)
- la case 2 est la case en dessous (contient 4)
- la case 3 est la case en dessous (contient 5)
- la case 4 .... on repart a la colonne suivante (contient 12)
- ... et ainsi de suite

Ces indices permettent d'acceder a une valeur spécifique de la matrice
