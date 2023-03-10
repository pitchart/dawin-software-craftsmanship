# Rédiger ou éditer des slides

<!-- .slide: class="page-title" -->



## Principes

Le framework utilisé est [Reveal.js](https://github.com/hakimel/reveal.js).

Un thème adapté à la charte graphique d'Inside est fourni.

Le contenu des slides se trouve dans le répertoire slides.

Il y a 2 types de fichiers. D'une part, `slides.json` permet d'indiquer les chapitres à inclure. D'autre part, les chapitres sont écrits dans des fichiers markdown.



## Inclusion du Markdown

Pour modifier la liste de fichiers chargés, éditer `slides.json`. Ce fichier contient une liste des chemins des fichiers markdown à inclure. Le chemin doit être relatif au fichier `slides.json`, lui-même devant être situé à la racine du répertoire `Slides`.

Exemple :

```json
[
  "premier_fichier.md",
  "chapitre2/second_fichier.md"
]
```



### Règles de rédaction

- Le contenu est réparti dans les fichiers markdown, un par chapitre de la formation.
- La formation commence par un chapitre zéro, qui contient au minimum une page de titre avec le titre de la formation, une page qui présente le plan de la formation, et une page d'invitation aux questions. On peut éventuellement ajouter des rappels concernant les horaires et autres informations pratiques.
- Tous les chapitres débutent par une page de titre avec le titre du chapitre et une page qui reprend le plan de la formation. La partie en cours en mise en évidence.
- Tous les chapitres se terminent par une page invitant aux questions, puis éventuellement par une page qui annonce un TP.



### Markdown

- Le [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown) est supporté
- Chaque slide doit être séparée par 3 lignes blanches.



## Pages spéciales

Certaines pages récurrentes des formations sont réalisées grâce à des classes css.



### Pages de titre

Les pages de titre sont composées d'un titre de premier niveau et d'un fond au logo d'Inside.

```markdown
# Titre du chapitre
## Avec un sous-titre

<!-- .slide: class="page-title" -->
```



### Pages de questions

```markdown
<img src="ressources/theme/questions.svg" class="question" />
# Avez-vous des questions ?
<!-- .slide: class="page-questions" -->
```



### Pages de plan

- L'emphase sur la partie en cours dans les slides de plan est une emphase double : `**Partie en cours**`.
- Les liens entre slides étant possibles, il est intéressant d'un mettre sur les slides de plan. Un lien inter-slides est au format `#/<chapitre>/<slide>` sachant que les chapitres et les slides sont numérotés à partir de zéro, et que le numéro de slide est facultatif (zéro par défaut).

```markdown
## Plan
<!-- .slide: class="page-plan" -->
- [Partie 1](#/1)
- [Partie 2](#/2)<!-- .element: class="highlight highlight-pink" -->
- [Partie 3](#/3)
```



### Pages d'illustration

```markdown
## Titre
<!-- .slide: class="page-img" -->

<figure>
	<img src="ressources/demo/wtf.png" />
</figure>
```



### Pages standards

- Les slides standards commencent par un titre de niveau 2 ou 3.
- Les mots importants sont à emphaser avec emphase simple : `*mot important*`.



### Code

- Pour le code inline, utiliser la syntaxe Markdown classique, et pour les blocs de code, utiliser les blocs GFM avec spécification du langage.

<pre><code>
```javascript
function(arg) { return 'du javascript en couleur !'; }
```
</code></pre>

- Il n'y a pas de retour à la ligne automatique dans les blocs de code, il faut donc vérifier que les lignes rentrent bien dans la largeur de la slide.
- Si une ligne de code commence par une suite continue d'espaces trop longue, la ligne est mise à la ligne. Il est donc nécessaire d'indenter avec 2 espaces seulement.



### Images

- Pour les images, écrire du HTML classique. La taille peut être modifiée via l'attribut `width`, et la position en modifiant les marges. La classe `.with-border` active une fine bordure noire autour de l'image.

```html
<img
  src="ressources/image.png"
  alt="Une image"
  width="90%"
  style="margin-top: 10%"
  class="with-border"/>
```

- Pour ajouter une légende à une image, on peut utiliser les éléments HTML5 `figure` et `figcaption`.

```html
<figure>
    <img
      src="ressources/image.png"
      alt="Une image"/>
    <figcaption>Une superbe représentation de quelque chose</figcaption>
</figure>
```

- Le chemin de l'image doit être relatif à la racine du répertoire Slides.



### Fragments

On peut indiquer que des éléments de slides ne doivent être révélés qu'au fur et à mesure que le formateur appuie sur le bouton. Il faut utiliser la classe `fragment`.

```markdown
item qui n'apparait pas tout de suite <!-- .element: class="fragment" -->
```

Et les éléments n'apparaissent pas tout de suite <!-- .element: class="fragment" -->



### Fonctionnalités avancées

Si besoin, on peut ajouter des *attibuts HTML*<!-- .element: class="highlight" --> à la slide en cours où à un élément grâce aux syntaxes `<!-- .slide: ... -->` et `<!-- .element: ... -->`. 

Cela peut être utile pour donner un style particulier à un élément, par exemple pour le positionner.



### Mise en page

<div class="row mbl">
    <div class="alert alert-success col-lg-5">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus a justo leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi gravida, ligula ut accumsan mattis, felis quam scelerisque arcu, ut molestie urna elit a erat.
    </div>
    <div class="col-lg-6 col-lg-offset-1">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus a justo leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi gravida, ligula ut accumsan mattis, felis quam scelerisque arcu, ut molestie urna elit a erat.
    </div>

</div>

> “I’m Not a Great Programmer, I’m Just a Good Programmer With Great Habits.”
> <br>*- Kent Beck*

<div class="row mvl">
    <div class="col-lg-3">
        <img src="ressources/demo/wtf.png">
    </div>
    <div class="alert alert-warning col-lg-3 col-lg-offset-1">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus a justo leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi gravida, ligula ut accumsan mattis, felis quam scelerisque arcu, ut molestie urna elit a erat.
    </div>
    <div class="col-lg-3 col-lg-offset-1">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus a justo leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi gravida, ligula ut accumsan mattis, felis quam scelerisque arcu, ut molestie urna elit a erat.
    </div>
</div>
