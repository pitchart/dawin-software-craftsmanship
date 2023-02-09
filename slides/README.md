# Consulter les slides

## Lancement

- Aller à la racine de la formation
- Lancer le serveur avec `grunt` ou `grunt displaySlides` dans une console
- Les slides se lancent directement sur votre navigateur favori (fonctionne bien sous Chrome, devrait fonctionner également sous FF)
- Si le navigateur ne s'ouvre pas, aller à `http://localhost:8000`
- Vous arriverez sur le chapitre zéro, slide une, c'est-à-dire la page de garde de la formation
- Si le port 8000 pose un problème sur votre machine, vous pouvez choisir le port en rajoutant l'option `--port=9999`

## Lancement avec Docker

- Aller à la racine de la formation
- Lancer le serveur avec docker `docker run -it -v $PWD:/data --net=host --rm dockerfile/nodejs-bower-grunt grunt`
- Aller à `http://localhost:8000`

En cas de problème de démarrage du serveur, vous pouvez rétablir une situation normale en copiant le contenu du fichier .md dans le fichier html, en ajoutant une balise `<script>`, comme suit :

Remplacer
```html
<!-- Slides will be inserted here -->
```

Par
```html
<section
  data-markdown="00_agenda.md"
  data-vertical="^\r?\n\r?\n\r?\n"
  data-notes="^Notes :">
  <script type="text/template">
    # Titre de la formation

    ...
  </script>
</section>
```
*Note : * Les modifications dans les fichiers des chapitres (`*.md`), dans `slides.json`, ainsi que dans les ressources sont prises en compte à chaud si le serveur a été lancé avec `grunt`.

## Navigation

- Espace permet d'aller au slide suivant
- Flèches haut et bas pour naviguer au sein du chapitre
- Flèches gauche et droite pour naviguer entre les chapitres
- Les slides Plan sont faites de liens pour sauter directement aux différents chapitres
- La petite flèche en bas à gauche revient à la slide Plan maitresse (chapitre zéro, slide deux)
- Les fonctions précédent et suivant du navigateur fonctionnent normalement

## Raccourcis clavier

- `espace` passe au slide suivant
- `haut/bas/gauche/droite` navigue dans les slides
- `o` donne accès à une vue avec du recul sur les slides
- `s` active le mode présentateur : une nouvelle fenêtre s'ouvre avec slide en cours, slide suivante, temps écoulé, notes
- `b` "éteint" la présentation, afin que les participants se concentrent sur le présentateur
- `alt` + `clic` permet de zoomer / dézoomer sur une partie de la slide

## Exporter en PDF

### Manuellement

- Ouvrir les slides dans Chrome
- Ajouter `?print-pdf` à la fin de l'URL (`http://localhost:8000?print-pdf`)
- Contrôle-P pour amener les options d'impression
- Sélectionner :
  - Destination : Enregistrer au format PDF
  - Mise en page : Paysage
  - Marges : Aucun
- Enregistrer le PDF

### Automatiquement

`grunt generateSlidesPDF`

- Il est inutile de lancer le serveur au préalable, c'est fait automatiquement
- Il est possible d'utiliser un port différent grâce à `--port=9999`

:boom: Attention le rendu des pdf générés automatiquement est mauvais pour le moment, il est donc plus que préférable d'utiliser la méthode manuelle
