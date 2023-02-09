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

#### There are different types of tests depending on the needs:

- Test a unit (methods, classes, ...) isolated from its system: **Unit Test** <!-- .element: class="highlight highlight-pink" -->.
- Test collaboration between units (partial or real interactions): **Integration Test**<!-- .element: class="highlight highlight-pink" -->.
- Test all parts of an application, often using the real system : **End to End Test** <!-- .element: class="highlight highlight-pink" -->.
- Test an application as a user: **Functional Test**<!-- .element: class="highlight highlight-pink" -->.
- Test performance of a stressed application: **Performance Test**<!-- .element: class="highlight highlight-pink" -->.
- ...

*Let's focus on unit tests* 

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



## TDD cycle: Introduction

Described for the first time in « _Test-Driven Development by Example_ », by Kent Beck, 2003

<!-- .element: class="arrow arrow-cyan" -->

<div class="row mtl">
    <div class="col-lg-4"><img src="ressources/tests/tdd-cycles.png"/></div>
    <div class="col-lg-8">
        <ul class="mtl">
            <li>**Red** <!-- .element: class="highlight highlight-pink" -->  Write a little test that doesn't work, and perhaps doesn't even compile at first.</li>
            <li>**Green** <!-- .element: class="highlight highlight-green" --> Make the test work quickly, committing whatever sins necessary in process.</li>
            <li>**Refactor** <!-- .element: class="highlight highlight-cyan" --> Eliminate all the duplication created in merely getting the test to work.</li>
        </ul>
    </div>
</div>

Notes :




## TDD: Test Driven Development

TDD is not a test method: **TDD is a design method**.

#### Applicable on
- **project:** New or existing project.
- **developments:** New developments or bug fixes.

Notes :



## Tools requirements

#### Needs:
- *Automated* <!-- .element: class="highlight highlight-cyan" --> Test Unit.
- 'true' or 'false' assertions... but more is better
- *Fast* <!-- .element: class="highlight highlight-cyan" --> execution of one or more Test Units.
- Rapid feedback for success or failure.

_Possible to do it manually but easier to use a generic tool._
- **.NET:** xUnit, NUnit, MsTests
- **Java:** JUnit, TestNG.
- **PHP:** phpunit, atoum

Notes :



## 1 - Add a test

- With TDD, each new development starts by writing a new test « _that must succeed_ ».
- This test **must** <!-- .element: class="highlight highlight-pink" --> fail as long as the behaviour is not implemented.
- Helps to understand the functional need and the specification from the beginning
- Force to *ask questions* <!-- .element: class="highlight highlight-pink" --> (ex: How will I call this, what is the API...)

Notes :



## 2 - Running the failing tests

- Run **all** <!-- .element: class="highlight highlight-cyan" --> the tests
    - Not only the ones that should fail.

- The new test **must** <!-- .element: class="highlight highlight-cyan" --> fail
    - For the targeted cause.

- The new test is **the only one** <!-- .element: class="highlight highlight-cyan" --> that must fail
    - The other tests must « succeed ».
    - No side effects on other tests.

Notes :



## 3 - Writing the code

#### Make the test pass, even in an ugly way

<div class="row mbl">
    <div class="col-lg-7">
<em class="highlight highlight-pink">Don't</em> factorize, duplicate... <br>
<p class="arrow arrow-cyan">Improvements will be done in the coming steps.</p>
    </div>
    <div class="col-lg-5">
*Focus on « passing the test », don't do any other development, it will not be tested.* <!-- .element: class="arrow arrow-pink" -->
    </div>
</div>

#### Patterns to make test succeed
- **Fake it:** return a constant, which will later be replaced by a variable.
- **Triangulation:** write two examples before trying to generalize.
- **Obvious implementation:** If fast and simple, the real implementation may be directly written.
- **One to many:** to implement an operation which takes a collection as a parameter, first start implementing for a single unit, then for the collection

Notes :
Fake it and Triangulation help preserving the TDD cycle and are easier to think about.



## 4 - Running the passing tests

- Run **all** the tests
    - Not only the one that should pass.

- No tests must fail
    - Neither the new one, nor the old ones.

Notes :



## 5 - Refactoring

- Now, the code may be cleaned up and refactored if needed

- Refactoring definition: change the code without changing the behaviour
    - Possibility to factorize code and remove duplicated sections.

- Run all tests again. They must succeed
    - Certainty that nothing « broke » a functionality while refactoring.

Notes :



## TDD rules from Uncle Bob

*Uncle Bob* <!-- .element: class="highlight highlight-yellow" --> (Robert Martin) has defined *[3 rules](http://www.butunclebob.com/ArticleS.UncleBob.TheThreeRulesOfTdd)*

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



## TDD Cycle: Summary

Repeat the cycle for *each new behaviour* <!-- .element: class="highlight highlight-pink" -->.

<!-- .element: class="arrow arrow-pink" -->

Need to find a *good size* <!-- .element: class="highlight highlight-pink" --> for each iteration.

<!-- .element: class="arrow arrow-pink mtl" -->

Iterations with different sizes

<!-- .element: class="arrow arrow-pink mtl" -->

- Depends on the developer, his experience et his self-confidence.
- If iterations are too long (ie.: one day of test writing), cut up the functionality into smaller parts.

Notes :



