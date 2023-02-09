<!-- .slide: class="page-title" -->
# Pratiques collectives



## Agenda
<!-- .slide: class="page-plan" -->

- [Software quoi ?](#/1)
- [Pratiques d'équipes](#/2) <!-- .element: class="highlight highlight-pink" -->
    - [Pair programming](#/2/1)
    - [Mob programming](#/2/4)
    - [Pair reviewing](#/2/4)
    - [Continuous Integration / Continuous Delivery](#/2/4)
- [Pratiques de test](#/3)
- [Pratiques de code propre](#/4)

<!-- .element: class="plan" -->



### Pair programming

> It's also not as simple as "two people working at a single computer"
> However, in our experience, pair programming is vital for collaborative teamwork and high quality software.
> <br>*- Martin Fowler*

#### Principaux styles <!-- .element: class="mtl" -->

<div class="row mbl mts">
    <div class="col-lg-4 centered"><img src="ressources/collective/unstructured.png" width="50%" alt=""> <br> Non structuré</div>
    <div class="col-lg-4 centered"><img src="ressources/collective/pair-driver-navigator.png" width="50%" alt=""> <br>Driver / navigateur</div>
    <div class="col-lg-4 centered"><img src="ressources/collective/pair-ping-pong.png" width="50%" alt=""> <br>Ping-pong</div>
</div>



### Pair programming

#### Avantages 

<div class="row mts">
    <div class="col-lg-6">
<ul><li>Reflexion</li>
<li>Partage des connaissances</li></ul>
    </div>
    <div class="col-lg-6">
<ul><li>Appropriation collective du code</li>
<li>Revue de code à la volée</li></ul>
    </div>
</div>

<div class="row mtl">
    <div class="col-lg-6 col-lg-offset-3">
      <div class="picto picto-great mtl">
        <div class="picto-content">
          <h4 class="arrow arrow-pink">Pour aller plus loin</h4>
          [On pair programming, Birgitta Böckeler & Nina Siessegger](https://martinfowler.com/articles/on-pair-programming.html)
        </div>
      </div>
    </div>
</div>



### Mob programming
> "All the brilliant minds working together on the same thing, at the same time, in the same space, and at the same computer"
> <br> *- Kevin Meadows*

<div class="row mtl">
    <div class="col-lg-5">
<img src="ressources/collective/mob-programming.png" alt="">
    </div>
    <div class="col-lg-7">
      <p class="mtm">Une partie de l’équipe se réunit avec pour optique la résolution d’un problème défini à l’avance :</p>
      <ul>
        <li>Choisir un sujet</li>
        <li>Trouver les participants</li>
        <li>Démarrer la session</li>
      </ul>
    </div>
</div>



### Principaux rôles

<div class="row">
    <div class="col-lg-4 centered">
      <img src="ressources/collective/mob-driver.png" alt="">
      <h4>Le conducteur <br> (Driver)</h4>
      <p>seule personne autorisée à écrire du code, il se laisse guider par les autres participants</p>
    </div>
    <div class="col-lg-4 centered">
      <img src="ressources/collective/mob-navigator.png" alt="">
      <h4>Le navigateur <br> (Navigator)</h4>
      <p>donne des indications claires au conducteur en accord avec la foule</p>
    </div>
    <div class="col-lg-4 centered">
      <img src="ressources/collective/mob-mobber.png" alt="">
      <h4>La foule <br>(Mob)</h4>
      <p>réfléchit, discute et décrit les solutions à implémenter</p>
    </div>
</div>



### Rôles alternatifs

<div class="row">
    <div class="col-lg-4 centered">
      <img src="ressources/collective/mob-researcher.png" alt="">
      <h4>Le chercheur</h4>
      <p>Supporte l'équipe en cherchant des informations pour résoudre un bug, trouver une bonne pratique, etc...</p>
    </div>
    <div class="col-lg-4 centered">
      <img src="ressources/collective/mob-documentor.png" alt="">
      <h4>Le scribe</h4>
      <p>Rend visible la réflexion de l'équipe et consigne les décisions du groupe</p>
    </div>
    <div class="col-lg-4 centered">
      <img src="ressources/collective/mob-nose.png" alt="">
      <h4>Le nez</h4>
      <p>Identifie les code smells</p>
    </div>
</div>

<div class="row mtl">
    <div class="col-lg-6 col-lg-offset-3">
      <div class="picto picto-great mtl">
        <div class="picto-content">
          <h4 class="arrow arrow-pink">Pour aller plus loin</h4>
          [Mob Programming RPG](https://github.com/willemlarsen/mobprogrammingrpg)
        </div>
      </div>
    </div>
</div>



### Code review



### Continuous Integration / Continuous Delivery

