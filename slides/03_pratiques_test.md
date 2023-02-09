<!-- .slide: class="page-title" -->
# Pratiques de test



## Agenda
<!-- .slide: class="page-plan" -->

- [Software quoi ?](#/1)
- [Pratiques d'équipes](#/2)
- [Pratiques de test](#/3) <!-- .element: class="highlight highlight-pink" -->
  - [Différents types de tests](#/3/3)
  - [Tests unitaires](#/3/4)
  - [Test Driven Development](#/3/7)
- [Clean code](#/4)

<!-- .element: class="plan" -->



## Différents types de tests

#### Différents types de tests en fonction du besoin

- Tester une unité de code (méthode, classe, module ...) de manière isolée du reste du système : **Unit Test** <!-- .element: class="highlight highlight-pink" -->.
- Tester la collaboration entre plusieurs unités de code (de manière partielle ou complète) : **Integration Test**<!-- .element: class="highlight highlight-pink" -->.
- Tester toutes les parties d'une application, en utilisant le système réel : **End to End Test** <!-- .element: class="highlight highlight-pink" -->.
- Tester une application en tant qu'utilisateur : **Functional Test**<!-- .element: class="highlight highlight-pink" -->.
- Tester la performance d'une application sous charge : **Performance Test**<!-- .element: class="highlight highlight-pink" -->.
- ...

*Concentrons-nous sur les tests unitaires* 

<!-- .element: class="arrow arrow-pink mtl" -->



<!-- .slide: class="page-title" -->
# Les tests unitaires



### Qu'est-ce qu'un test unitaire ?

#### Un test automatisé qui :
- Valide une *petite partie du code* <!-- .element: class="highlight highlight-pink" --> (également appelée unité de code)
- S'exécute *rapidement* <!-- .element: class="highlight highlight-pink" -->
- Le fait de manière *isolée* <!-- .element: class="highlight highlight-pink" -->

<div class="picto picto-great mtl">
  <div class="picto-content picto-content-xl">
    <h4>Les tests font partie de la base de code</h4>
<ul><li>Considérez-les comme la partie de votre base de code qui vise s'assurer de l'exactitude de l'application</li>
<li>Nécessitent la même attention : complexité, maintenabilité, refactoring ...</li></ul>
  </div>
</div>



## Objectifs des tests unitaires

> Enable *sustainable growth* <!-- .element: class="highlight" --> of the software project <br/>
> *Vladimir Khorikov*

<div class="row mtl">
    <div class="col-lg-5">
<div class="picto picto-ko">
  <div class="picto-content">
    <h4>Absence de tests</h4>
<ul><li>Baissent rapide de la vélocité</li>
    <li>Difficiles à faire évoluer</li></ul>
  </div>
</div>
    </div>
    <div class="col-lg-7">
<div class="picto picto-target">
  <div class="picto-content">
    <h4>Combattre l'entropie logicielle</h4>
    <ul><li>Refactoring et nettoyage du code continus</li>
    <li>Les tests agissent comme un filet de sécurité</li></ul>
  </div>
</div>
    </div>
</div>

*Tests unitaires :* <!-- .element: class="arrow arrow-pink" --> un outil qui assure
contre une grande majorité de régressions

<!-- .element: class="mtl centered" -->



### Propriétés

<div class="row">
    <div class="col-lg-4">
<img src="ressources/tests/tests-pillars.png" alt="">
    </div>
    <div class="col-lg-8">
<h4>Protection contre les regressions</h4>
<ul><li>Regression = bug</li>
<li>Plus la base de code est importante, plus elle est exposée à des bugs potentiels</li>
<li>Les tests doivent intercepter ces régressions</li></ul>
<h4 class="mtm">Résistance au refactoring</h4>
Capacité des tests à supporter un refactoring de code sans virer au rouge (échec)
<h4 class="mtm">Feedback rapide</h4>
<ul><li>Incorporés à la base de code</li>
<li>Exécution => boucle de feedback rapide</li></ul>
    </div>
</div>



### Anatomie d'un test

<div class="row">
    <div class="col-lg-3">
<img src="ressources/tests/anatomy.png" alt="">
    </div>
    <div class="col-lg-9">
<h5>Classe de test</h5>
<p>Conteneur pour un ensemble de tests cohérent</p>
<h5 class="mtm">Nommage des méthodes de test</h5>
<ul><li>Décrire le scénario pour un non développeur</li>
<li>Former une phrase dont le sujet est le nom de la classe de test</li></ul>
<h5 class="mtm">Arrange / Act / Assert</h5>
<ul><li>*Arrange / Given :* <!-- .element: class="highlight" --> amener le composant testé et ses dépendances dans l'état souhaité</li>
<li>*Act / When :* <!-- .element: class="highlight" --> invoquer le comportement (appel de méthode)</li>
<li>*Assert / Then :* <!-- .element: class="highlight" --> vérifier les conséquences</li></ul>
    </div>
</div>



### 3 styles de tests

<div class="row">
    <div class="col-lg-3">
<img src="ressources/tests/output-based.png" alt="">
    </div>
    <div class="col-lg-9">
<h4>Output based</h4>
<ul><li>Fournir une entrée au système sous test (SUT)</li>
<li>Vérifiez la sortie produite</li></ul>
    </div>
</div>
<div class="row mts">
    <div class="col-lg-3">
<img src="ressources/tests/state-based.png" alt="">
    </div>
    <div class="col-lg-9">
<h4>State based</h4>
<p>Vérifier l'état final du système après la fin d'une opération</p>
<p class="arrow arrow-pink">State : Etat du SUT lui-même, d'un de ses collaborateurs ou d'une dépendance hors processus (base de données, fichiers ...)</p>
    </div>
</div>
<div class="row mtl">
    <div class="col-lg-3">
<img src="ressources/tests/communication-based.png" alt="">
    </div>
    <div class="col-lg-9">
<h4>Communication based</h4>
<p>Vérifiez que le SUT appelle correctement ses collaborateurs</p>
<p class="arrow arrow-pink">Substitution des collaborateurs via mocks</p>
    </div>
</div>


<!-- .slide: class="page-title" -->
# Test Driven Development



## Le cycle de TDD

Décrit pour la première fois dans le livre _Test-Driven Development by Example_ <!-- .element: class="highlight highlight-pink" --> de Kent Beck, 2003.

<!-- .element: class="arrow arrow-cyan" -->

<div class="row mtl">
    <div class="col-lg-4"><img src="ressources/tests/tdd-cycles.png"/></div>
    <div class="col-lg-8">
        <ul class="mtl">
            <li>**Red** <!-- .element: class="highlight highlight-pink" -->  Écrire un petit test qui ne fonctionne pas, et qui ne compile peut-être même pas au début.</li>
            <li>**Green** <!-- .element: class="highlight highlight-green" --> Faire passer le test rapidement, en prenant tous les raccourcis nécessaires.</li>
            <li>**Refactor** <!-- .element: class="highlight highlight-cyan" --> Éliminer toutes les duplications créées en faisant simplement fonctionner le test.</li>
        </ul>
    </div>
</div>

Notes :



## TDD: Test Driven Development

TDD n'est pas une méthode de tests : **TDD est une méthode de design**.

#### Applicable
- **sur des project** nouveaux ou existants
- **lors du développement :** nouvelles fonctionnalités, correction de bugs.

Notes :



## Outils nécessaires

#### Les besoins :
- Des tests unitaires *automatisés* <!-- .element: class="highlight highlight-cyan" --> .
- Un framework de tests unitaires fournissant des méthodes d'assertions
- L'exécution *rapide* <!-- .element: class="highlight highlight-cyan" --> d'un ou plusieurs tests unitaires.
- Un feedback rapide des succès et échecs.

<!-- .element: class="mbl" -->

_Frameworks génériques :_ <!-- .element: class="arrow arrow-pink" -->
- **C# / .NET :** xUnit, NUnit, MsTests
- **Java :** JUnit, TestNG
- **PHP :** phpunit, atoum
- **Javascript / Typescript :** jest, mocha 

Notes :



## 1 - Ajouter un test

- Chaque nouveau développement démarre par l'écriture d'un nouveau test « _qui devra passer_ ».
- Ce test **doit** <!-- .element: class="highlight highlight-pink" --> échouer tant que le comportement n'est pas implémenté.
- Cela aide à analyser et comprendre le besoin fonctionnel et les spécifications
- Force à se positionner en tant qu'*utilisateur du code* <!-- .element: class="highlight highlight-pink" -->  produit.

Notes :



## 2 - Exécuter les tests

- Lancer **tous** <!-- .element: class="highlight highlight-cyan" --> les tests, pas seulement celui qui doit échouer.
- Ce nouveau test **doit** <!-- .element: class="highlight highlight-cyan" --> échouer
- Ce nouveau test est **le seul** <!-- .element: class="highlight highlight-cyan" --> qui doit échouer
    - Les tests précédemment implémentés doivent « passer ».
    - Aucun effet de bord sur la suite de tests.

Notes :



## 3 - Écrire le code

#### Faire passer le test : quick & dirty

<div class="row mbl">
    <div class="col-lg-7">
<em class="highlight highlight-pink">Ne pas</em> factoriser, dupliquer... <br>
<p class="arrow arrow-cyan">Les amliorations seront faites à l'étape suivante.</p>
    </div>
    <div class="col-lg-5">
*Se concentrer sur le « passage du test », ne pas implémenter de code qui ne serait pas testé.* <!-- .element: class="arrow arrow-pink" -->
    </div>
</div>

#### Enablers pour faire passer le test :
- **Fake it :** retourner une constante, qui sera remplacée plus tard par une variable ou de la logique.
- **Triangulation :** écrire 2 ou 3 exemples avant de généraliser une solution.
- **Obvious implementation :** l'implémentation définitive peut être réalisée à condition d'être simple et rapide.
- **One to many :** pour l'implémentation d'une opération appliquée sur une collection, commencer par implémenter pour un élément, puis pour une liste



## 4 - Lancer les tests

- Lancer **tous** les tests, pas seulement celui qui devrait passer
- Aucun test ne doit échouer, ni le nouveau, ni les anciens

Notes :



## 5 - Refactoring

Maintenant, le code peut être nettoyé et remanié si nécessaire <!-- .element: class="arrow arrow-cyan" -->

#### Refactoring <!-- .element: class="mtl" -->
Modification du code écrit sans en changer le comportement

Relancer les tests régulièrement : ils doivent tous passer.

Cela permet de s'assurer que le refactoring n'entraine pas de regression <!-- .element: class="arrow arrow-cyan" -->

Notes :



## Les règles du TDD

*Robert Martin* <!-- .element: class="highlight highlight-yellow" --> (Uncle Bob) a défini *[3 règles](http://www.butunclebob.com/ArticleS.UncleBob.TheThreeRulesOfTdd)*

<div class="row mtl">
    <div class="col-lg-7">
        <img src="ressources/tests/tdd-rules.png"/>
    </div>
    <div class="col-lg-5">
<ol class="mtl">
<li>You are not allowed to write any production code unless it is to *make a failing unit test pass* <!-- .element: class="highlight highlight-cyan" -->.</li>
<li>You are not allowed to write any more of a unit test than is *sufficient to fail* <!-- .element: class="highlight highlight-cyan" -->; and compilation failures are failures.</li>
<li>You are not allowed to write any more production code than is *sufficient to pass* <!-- .element: class="highlight highlight-cyan" --> the one failing unit test.</li>
</ol>
    </div>
</div>

Notes :



## TLDR

Répéter ce cycle pour *chaque nouveau comportement* <!-- .element: class="highlight highlight-pink" --> à implémenter. 

<!-- .element: class="arrow arrow-pink" -->

Nécessité de trouver *la bonne complexité* <!-- .element: class="highlight highlight-pink" --> pour chaque iteration.

<!-- .element: class="arrow arrow-pink mtl" -->

Des itérations de complexités différentes

<!-- .element: class="arrow arrow-pink mtl" -->

- Dépendant du développeur, son expérience, son degré confiance.
- Si une itération est trop longue, découper la fonctionnalité en plus petites parties 

Notes :
