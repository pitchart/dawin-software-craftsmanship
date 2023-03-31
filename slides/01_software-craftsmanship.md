<!-- .slide: class="page-title" -->
# Software craftsmanship



## Agenda
<!-- .slide: class="page-plan" -->

- [Software quoi ?](#/1) <!-- .element: class="highlight highlight-pink" -->
    - [Historique](#/1/1)
    - [Qualité logicielle](#/1/3)
    - [Valeurs, principes, pratiques](#/1/3)
- [Pratiques d'équipes](#/2)
- [Pratiques de test](#/3)
- [Clean code](#/4)

<!-- .element: class="plan" -->



## 2001 : Manifeste pour le Développement Agile de Solutions

Nous découvrons de meilleures façons de *développer des solutions* <!-- .element: class="highlight highlight-cyan" -->,
par *notre propre pratique* <!-- .element: class="highlight highlight-cyan" --> et *en aidant les autres* <!-- .element: class="highlight highlight-cyan" --> dans leur pratique.

Grâce à ce travail, nous en sommes venus à valoriser :

- *Les individus et leurs interactions* <!-- .element: class="highlight highlight-cyan" -->, de préférence aux processus et aux outils,
- *Des solutions opérationnelles* <!-- .element: class="highlight highlight-cyan" -->, de préférence à une documentation exhaustive,
- *La réponse au changement* <!-- .element: class="highlight highlight-cyan" -->, de préférence au respect d’un plan.
- *La collaboration avec les clients* <!-- .element: class="highlight highlight-cyan" -->, de préférence aux négociations contractuelles,

Précisément, même si les éléments à droite ont de la valeur, nous reconnaissons davantage de valeur dans les éléments à gauche.

[Manifesto for Agile Software Development](http://agilemanifesto.org/iso/fr/manifesto.html)



<!-- .slide: class="page-title" -->
# Et la qualité logicielle ?



<!-- .slide: class="page-img" -->
## Conséquences d'une qualité insuffisante

1. *Fragilité :*<!-- .element: class="highlight" --> les évolutions ou corrections provoquent fréquemment des régressions<br/>
   *Coûts de maintenances importants* <!-- .element: class="arrow arrow-pink" -->
2. *Rigidité :*<!-- .element: class="highlight" --> <br/>
   *Pertes d'opportunités, rattrapés ou dépassés par la concurrence* <!-- .element: class="arrow arrow-pink" -->
3. Transmission difficile ou impossible des *connaissances*<!-- .element: class="highlight" -->, surtout dans un contexte de turn-over régulier<br/>
   *Risque humain important* <!-- .element: class="arrow arrow-pink" -->
4. *Instabilité :*<!-- .element: class="highlight" --> <br/>
   *Perte de crédibilité et de confiance* <!-- .element: class="arrow arrow-pink" -->
5. Dispersion de la *logique métier*<!-- .element: class="highlight" --><br/>
   *Absence de capitalisation sur la connaissance du modèle* <!-- .element: class="arrow arrow-pink" -->



## L'impasse du code sale
<div class="row mtl">
    <div class="col-lg-8">
	<ul class="mtl">
		<li>Les conséquences du code sale se manifestent progressivement.</li>
		<li>À mesure que le désordre augmente, la productivité tend vers 0</li>
	</ul>
	</div>
	<div class="col-lg-4">
		<figure>
			<img src="ressources/craft/qualite-logicielle-productivity-versus-temps.png" />
			<figcaption style=" font-size:0.8em">Productivité en fonction du temps <br>&mdash; Clean Code, Robert Martin</figcaption>
		</figure>
	</div>
</div>

<div class="picto picto-warning mtl">
  <div class="picto-content">
<h4>On ne peut pas s'en sortir en ajoutant des «&nbsp;ressources&nbsp;»</h4>
Comme expliqué par le classique "Le mythe du mois-homme", ajouter des ressources à un projet en difficulté ne fait qu'ajouter à la pagaille.
  </div>
</div>



<!-- .slide: class="page-img" -->
### Extreme programming

une *méthode agile* <!-- .element: class="highlight highlight-pink" --> orientée sur l'aspect *réalisation d'une application* <!-- .element: class="highlight highlight-pink" -->, sans pour autant négliger l'aspect gestion de projet.

<!-- .element: class="arrow arrow-pink" -->

<div class="row mtl">
    <div class="col-lg-4">
<img src="ressources/craft/extreme-programming-explained.png" alt="">
    </div>
    <div class="col-lg-8">
<p>Popularisé en 1996 par
Kent Beck, Ward Cunningham et Ron Jeffries
</p>
    </div>
</div>



### Extreme programming practices

<div class="row">
    <div class="col-lg-6">
        <h4>Fine scale feedback</h4>
        <ul>
          <li>Pair Programming</li>
          <li>Planning Game</li>
          <li>Test Driven Development</li>
          <li>Whole team</li>
        </ul>
    </div>
    <div class="col-lg-6">
        <h4>Continuous process</h4>
        <ul>
          <li>Continuous Integration</li>
          <li>Design Improvement</li>
          <li>Small Releases</li>
        </ul>
    </div>
    <div class="col-lg-6">
        <h4>Shared understanding</h4>
        <ul>
          <li>Coding Standards</li>
          <li>Collective Code Ownership</li>
          <li>Simple Design</li>
          <li>System Metaphor</li>
        </ul>
    </div>
    <div class="col-lg-6">
        <h4>Programmer welfare</h4>
        <ul>
          <li>Sustainable Pace</li>
        </ul>
    </div>
</div>

[http://fr.wikipedia.org/wiki/Extreme_programming](http://fr.wikipedia.org/wiki/Extreme_programming)



<!-- .slide: class="page-img" -->
## 2008 : Manifeste pour le Software Craftsmanship

En tant qu’aspirants *Artisans du Logiciel*<!-- .element: class="highlight highlight-pink" -->, nous relevons le niveau du développement professionnel de logiciels par la pratique et en aidant les autres à acquérir le savoir-faire.

Grâce à ce travail, nous avons appris à apprécier :

- Pas seulement *des logiciels opérationnels* <!-- .element: class="highlight highlight-cyan" -->,mais aussi *des logiciels bien conçus*<!-- .element: class="highlight highlight-pink" -->.
- Pas seulement *l'adaptation aux changements* <!-- .element: class="highlight highlight-cyan" -->, mais aussi *l'ajout constant de la valeur*<!-- .element: class="highlight highlight-pink" -->.
- Pas seulement *les individus et leurs interactions* <!-- .element: class="highlight highlight-cyan" -->, mais aussi *une communauté de professionnels*<!-- .element: class="highlight highlight-pink" -->.
- Pas seulement *la collaboration avec les clients* <!-- .element: class="highlight highlight-cyan" -->, mais aussi *des partenariats productifs*<!-- .element: class="highlight highlight-pink" -->.

C'est à dire qu'en recherchant les éléments de gauche, nous avons trouvé que les éléments de droite sont indispensables.

[Manifesto for Software Craftsmanship](https://manifesto.softwarecraftsmanship.org/#/fr-fr)



> Craftsmanship over crap
> <br> *- Robert Martin*

<div class="row">
    <div class="col-lg-3">
        <img src="ressources/craft/the-software-craftsman.png" alt="">
    </div>
    <div class="col-lg-8">
        <p>Dans son livre *The software craftsman*<!-- .element: class="highlight highlight-cyan" -->, Sandro Mancuso précise l'importance du *software Craftsmanship* <!-- .element: class="highlight highlight-cyan" --> pour atteindre une excellence technique et réussir une transformation Agile.</p>
<p>Cela passe notamment par :</p>
<ul>
<li>La mise en place de pratiques d'ingénieurie</li>
<li>De l'apprentissage continu, afin de se tenir à jour et toujours remettre en question ses acquis</li>
<li>Du mentoring, afin de partager ses connaissances et compétences avec ses pairs et faire naitre d'autres craftsmen</li>
<li>Du professionnalisme, en travaillant tant d'un point de vue produit que d'un point de vue technique</li>
</ul>
    </div>
</div>



<!-- .slide: class="page-img" -->
### Valeurs, principes, pratiques

<div class="row">
    <div class="col-lg-6">
<div class="picto picto-target">
  <div class="picto-content picto-content-xl">
    <h4>Valeurs</h4>
    <ul><li>Fierté / Satisfaction</li>
    <li>Excellence technique</li>
    <li>Pragmatisme</li>
    <li>Partage</li></ul>
  </div>
</div>
<div class="picto picto-great">
  <div class="picto-content picto-content-xl">
    <h4>Principes</h4>
    <ul><li>Amélioration continue</li>
    <li>Professionalisme</li>
    <li>Savoir faire</li></ul>
  </div>
</div>
    </div>
    <div class="col-lg-6">
<div class="picto picto-target">
  <div class="picto-content picto-content-xl">
    <h4>Pratiques individuelles</h4>
    <ul><li>Coding dojos / Katas</li>
    <li>Culture d'apprentissage</li>
    <li>Open source / Pet projects</li></ul>
  </div>
</div>
<div class="picto picto-target">
  <div class="picto-content picto-content-xl">
    <h4>Pratiques collectives</h4>
    <ul><li>Test Driven Development</li>
    <li>Clean code</li>
    <li>Behavior Driven Development</li>
    <li>Domain Driven Design</li></ul>
  </div>
</div>
    </div>
</div>



<!-- .slide: class="page-img" -->
## 

> 100% test coverage for code that was written in a Red -> Green - Refactor loop, is code that has *been crafted by your specs* <!-- .element: class="highlight" -->. <br><br>
> If your specs accurately interpret *your user stories,* <!-- .element: class="highlight" -->  <br><br>
> And your user stories accurately represent the *vision of the future* <!-- .element: class="highlight" --> provided by the product owner, <br><br>
> And that vision accurately represents the *business's strategy* <!-- .element: class="highlight" -->, <br><br>
> And the businesses strategy is sound, <br><br>
> Then you've probably got yourself *some pretty cool code!* <!-- .element: class="highlight highlight-cyan" -->
