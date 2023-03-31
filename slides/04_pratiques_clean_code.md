<!-- .slide: class="page-title" -->
# Pratiques de code propre



## Agenda
<!-- .slide: class="page-plan" -->

- [Software quoi ?](#/1)
- [Pratiques d'équipes](#/2)
- [Pratiques de test](#/3)
- [Clean code](#/4)
  - [Mesurer la qualité logicielle](#/4)
  - [Expressivité, maintenabilité et code smells](#/4)
  - [Principes SOLID](#/4)
  - [Supple Design](#/4)

<!-- .element: class="plan" -->



<!-- .slide: class="page-questions" -->
<img src="ressources/questions.svg" class="question" />
## Qu'est-ce que du code sale ?

Notes :


## Qu'est-ce que du code sale ?

Quelques exemples de réponses :

- Un marécage où on se perd
- Du code spaghetti
- Du code sans structure
- Du code dupliqué
- Un patchwork mille fois reprisé
- ...

Notes :



<!-- .slide: class="page-questions" -->
<img src="ressources/questions.svg" class="question" />
## Qu'est-ce que du code propre ?

Notes :



## Qu'est-ce que du code propre ?

> Ce qui se concoit bien s'énonce clairement, et les mots pour le dire viennent aisément.<br/> *&mdash; Nicolas Boileau-Despréaux*

- *Lisible* <!-- .element: class="highlight highlight-cyan" --> : Se lit comme une phrase. Les abstractions sont nettes, les chemins d'exécution évidents
- *Élégant* <!-- .element: class="highlight highlight-cyan" --> : Assez simple et direct pour ne pas laisser de place aux bugs
- *Facile à modifier* <!-- .element: class="highlight highlight-cyan" --> : Peut être modifié par un autre que son auteur : comprend des tests pour éviter les régressions, utilise un nommage explicite et expressif
- *Écrit avec soin* <!-- .element: class="highlight highlight-cyan" --> : Aucun problème évident ne saute aux yeux
- *Sans surprise* <!-- .element: class="highlight highlight-cyan" --> : Le corps des méthodes est ce qu'on avait deviné

<!-- .element: class="mtl" -->



<!-- .slide: class="page-title" -->
# Mesurer la qualité logicielle



## Complexité

<div class="row">
    <div class="col-lg-5">
<img src="ressources/qualite/complexite.png" alt="" class="mtl">
<p class="centered legend">
  [Dette technique, complexité & entropie du logiciel - Arnaud Lemaire](https://www.lilobase.me/tag/dette-technique-complexite-entropie-du-logiciel/)
</p>
    </div>
    <div class="col-lg-7">
<h4>Complexité essentielle</h4>
<p>Complexité inhérente au problème métier que l’on cherche à résoudre</p>
<h4>Complexité obligatoire</h4>
<p>Complexité nécessaire à la mise en oeuvre de l'application&nbsp;: serveur HTTP, base de données ...</p>
<p class="arrow arrow-pink mtn">Provient des contraintes techniques</p>
<h4>Complexité accidentelle</h4>
<p>Tout le reste, principalement liée à un manque de qualité de code</p>
<p class="arrow arrow-pink mtn">Personne ne sait pourquoi elle est là, ni comment elle est arrivée</p>
    </div>
</div>



## Couplage

Indication du niveau d'interaction entre deux ou plusieurs composants logiciels (fonctions, objets, modules ou applications).

- On parle de *couplage fort* <!-- .element: class="highlight highlight-cyan" --> ou *couplage serré* <!-- .element: class="highlight highlight-cyan" --> si les composants échangent beaucoup d'information. 
- On parle de *couplage faible* <!-- .element: class="highlight highlight-cyan" -->, *couplage léger* <!-- .element: class="highlight highlight-cyan" --> ou *couplage lâche* <!-- .element: class="highlight highlight-cyan" --> si les composants échangent peu d'information et/ou de manière désynchronisée.

#### Inconvénients d'un couplage fort <!-- .element: class="mtl" -->
- Un couplage fort génère l'antipattern plat de spaghetti : on ne peut pas déterminer le qui, le quoi et le comment d’une modification de données.
- Un couplage fort implique nécessairement une faible indépendance fonctionnelle :
  - Le composant logiciel est *difficilement réutilisable* <!-- .element: class="highlight highlight-pink" -->,
  - Le composant logiciel est *difficilement testable* <!-- .element: class="highlight highlight-pink" -->.



## Métriques

#### But : objectiver la qualité logicielle :

- Couverture du code par les tests
- Commentaires et documentation des classes et méthodes
- Complexités cyclomatique et cognitive
- ...

Elles permettent en particulier de *déceler les baisses de qualité* <!-- .element: class="highlight highlight-cyan" --> par rapport à une baseline.

<div class="picto picto-warning mtm">
  <div class="picto-content">
<h4>Attention aux effets pervers de la "*politique du chiffre*" !</h4>
Tests alibi / Doc alibi
  </div>
</div>

Les métriques sont utiles dans le cas d'un consentement éclairé, pas dans le cas d'une position de force / contractuelle.

<!-- .element: class="arrow arrow-pink" -->



## Limitations des outils et processus

#### Ils sont nécessaires, mais pas suffisants

- Les contrôles de qualité qu'ils effectuent restent **superficiels**<!-- .element: class="highlight highlight-pink" -->
- Ils ne peuvent pas détecter une **mauvaise conception**<!-- .element: class="highlight highlight-pink" --> ou un **nommage incorrect**<!-- .element: class="highlight highlight-pink" -->
- Ils peuvent donner une illusion de contrôle

#### Ils doivent donc être complétés par<!-- .element: class="mtl" -->

- Une bonne connaissance des principes de la **POO**<!-- .element: class="highlight highlight-cyan" -->
- Des **actions correctives** <!-- .element: class="highlight highlight-cyan" -->  périodiques et non-automatisables
- Une bonne **connaissance de la plateforme**<!-- .element: class="highlight highlight-cyan" --> utilisée



<!-- .slide: class="page-title" -->
# Expressivité, maintenabilité et code smells



## Formatage des fichiers

#### Standardiser les formats de fichiers évite les merges inutiles :

- tabulations ou espaces ?
- `\n` ou `\r\n` ?
- UTF-8 plutôt que le platform default

<div class="picto picto-great mtm">
  <div class="picto-content">
<h4>.editorconfig</h4>
<ul><li>Explicite les règles par dépôt de code</li>
<li>Facilite le formattage automatique du code via les IDE</li></ul>
  </div>
</div>

Notes :




## Formatage physique du code

> Code formatting is too important to ignore and too important to treat religiously
> <br/>*&mdash; Robert Martin, Clean Code*

#### Utiliser des conventions de codage partagées rend le code plus homogène<!-- .element: class="mtl" -->

- Pas plus de 120 caractères par lignes (80 : recommandation obsolète ?)
- Position des accolades, 



## Formatage logique du code

#### Utiliser des conventions de codage partagées rend le code plus homogène

- Conventions de nommage
- Méthodes publiques avant les méthodes privées
- Les méthodes proches conceptuellement doivent être proches verticalement
- Accentuer les précédences des opérateurs avec des espaces
```java
private static double determinant(double a, double b, double c) {
	return b*b - 4*a*c;
}
```



## Code smell

Terme inventé par *Kent Beck* <!-- .element: class="highlight highlight-cyan" --> et popularisé par *Martin Fowler* <!-- .element: class="highlight highlight-cyan" -->

> If it stinks, change it
> <br> *– Kent Beck*

Une notion intuitive rendue plus précise et objective par la littérature existante  
[Code smells & refactorings, Refactoring Guru](https://refactoring.guru/refactoring/smells)

<!-- .element: class="arrow arrow-pink mtm" -->

#### De même que les design patterns : <!-- .element: class="mtl" -->
- Fournissent un vocabulaire standard
- Donnent des critères d'applicabilité
- Proposent des solutions : refactoring
- Recensent des variations
- Certains sont évidents, d'autres moins



## Ubiquitous language

> A language structured around the domain model and used by all team members within a bounded context 
> to connect all the activities of the team with the software

- Favoriser les termes fonctionnels et métiers plutôt que techniques dans le nom des méthodes, classes, modules
- Rend le code plus facile à lire puisque sa structure reflète le problème à résoudre

<!-- .element: class="mtl" -->



<!-- .slide: class="page-title" -->
# SOLID



## Les principes SOLID

Principes de limitation des dépendances et d'amélioration de la cohésion énoncés par *Robert Martin* <!-- .element: class="highlight highlight-cyan" -->

- **S** <!-- .element: class="highlight highlight-blue" -->: Single Responsibility Principle (SRP)
- **O** <!-- .element: class="highlight highlight-blue" -->: Open / Closed Principle (OCP)
- **L** <!-- .element: class="highlight highlight-blue" -->: Liskov Substitution Principle (LSP)
- **I** <!-- .element: class="highlight highlight-blue" -->: Interface Segregation Principle (ISP)
- **D** <!-- .element: class="highlight highlight-blue" -->: Dependency Inversion Principle (DIP)

Notes :


## Single Responsibility Principle

<div class="row">
	<div class="col-lg-5">
		<h4 class="arrow arrow-blue mtl">Une classe doit avoir une et une seule raison de changer</h4>
<p class="arrow arrow-pink mtl"> Une classe (ou module) ne doit avoir qu’*une seule* <!-- .element: class="highlight highlight-cyan" --> raison de changer, donc une seule responsabilité</p>
    </div>
    <div class="col-lg-7">
		<img src="ressources/qualite/solid/single-responsibility.png" />
    </div>
</div>

Notes :



## Single Responsibility Principle

#### Si ce principe n’est pas respecté

Un changement d’une des responsabilités peut entraîner un changement sur les autres
- À chaque responsabilité correspond un *axe de changement* <!-- .element: class="highlight highlight-cyan" -->
- Ces axes doivent être *orthogonaux* <!-- .element: class="highlight highlight-cyan" -->

<!-- .element: class="mbl" -->

D'autre part, chaque responsabilité provoque des dépendances
- Coupler les responsabilités induit donc un couplage des dépendances
- La classe a besoin d’un *couple magique* <!-- .element: class="highlight highlight-pink" --> de dépendances<br/>
  _ _ <!-- .element: class="arrow arrow-pink" -->  Elle peut cesser de fonctionner si l’une monte de version

Notes :



## Open/Closed Principle

<div class="row">
	<div class="col-lg-5">
		<h4 class="arrow arrow-blue mtl">Une classe doit être ouverte aux extensions mais fermée aux modifications</h4>
    </div>
    <div class="col-lg-7">
		<img src="ressources/qualite/solid/open-closed-principle.png" />
    </div>
</div>

Notes :



## Open/Closed Principle

#### Si ce principe n’est pas respecté

- L’ajout d’un nouveau comportement risque d’entraîner une *régression* <!-- .element: class="highlight highlight-pink" --> sur les comportements existants
- Dans certains cas cet ajout entraîne des changements en cascade, qui aggravent le *risque* <!-- .element: class="highlight highlight-pink" -->
- Le *couplage* <!-- .element: class="highlight highlight-pink" --> entre appelant et appelé est plus fort

Notes :




## Liskov Substitution Principle

<div class="row">
	<div class="col-lg-6">
		<img src="ressources/qualite/solid/liskov-substitution-principle.png" />
    </div>
	<div class="col-lg-6">
		<h4 class="arrow arrow-blue mtl">Partout où on a besoin d'une instance d'une classe, on doit pouvoir utiliser une instance d'une sous-classe</h4>
    </div>
</div>

Notes :



## Liskov Substitution Principle

#### Si ce principe n’est pas respecté

- La relation de sous-typage est mal définie
- Le client croit dépendre seulement de l'interface, mais en réalité il dépend de l'implémentation (couplage plus fort)

<div class="picto picto-warning mvl">
  <div class="picto-content">
<p>La relation *est-un* <!-- .element: class="highlight highlight-pink" --> n'est pas aussi triviale qu'on pourrait le penser !</p>
<p class="arrow arrow-pink">Il faut **toujours** <!-- .element: class="highlight highlight-pink" --> y réfléchir en terme de LSP.</p>
  </div>
</div>

Notes :



## Interface Segregation Principle

<div class="row">
	<div class="col-lg-5">
		<h4 class="arrow arrow-blue mtl">Les clients d’une API ne doivent pas être forcés de dépendre de méthodes qu’ils n’utilisent pas</h4>
    </div>
	<div class="col-lg-7">
		<img src="ressources/qualite/solid/interface-segregation-principle.png" />
    </div>
</div>

Notes :



## Interface Segregation Principle

#### Si ce principe n’est pas respecté <!-- .element: class="mbl" -->

- Les *clients* <!-- .element: class="highlight highlight-pink" --> d’un service fourni par l'interface pourront être *impactés* <!-- .element: class="highlight highlight-pink" --> par un changement sur un autre service, alors qu’ils ne l’utilisent pas
- Le *contrat* <!-- .element: class="highlight highlight-pink" --> de l'interface leur paraîtra *confus* <!-- .element: class="highlight highlight-pink" --> et peu intuitif
- L'interface présentera une *cohésion faible* <!-- .element: class="highlight highlight-pink" -->

Notes :




## Dependency Inversion Principle

<div class="row">
	<div class="col-lg-5">
		<h4 class="arrow arrow-blue mtl">Les abstractions ne doivent pas dépendre de détails d’implémentation.</h4>	
<h4 class="arrow arrow-blue mtl">Au contraire, les détails doivent dépendre d’abstractions.</h4>
    </div>
	<div class="col-lg-7">
		<img src="ressources/qualite/solid/dependency-inversion-principle.png" />
    </div>
</div>

Notes :

L'ordre de dépendance entre modules est-il correct?



## Dependency Inversion Principle

#### Plusieurs formulations équivalentes

- L'abstrait ne doit pas dépendre du concret
- Les généralités ne doivent pas dépendre de détails
- Les modules stables ne doivent pas dépendre de modules instables

Permet à un module métier (abstrait, général, stable) d'invoquer un module d’infrastructure (concret, détail, instable) sans en dépendre

<!-- .element: class="arrow arrow-cyan mtl" -->

Permet au module métier d'avoir un comportement riche sans introduire de dépendances vers l’infrastructure (BD, réseau, etc)

<!-- .element: class="arrow arrow-cyan mtl" -->

Notes :
Plusieurs manières de le voir

- Le stable qui ne doit pas dépendre de l'instable
- L'abstrait ne doit pas dépendre du concret
- Le général ne doit pas dépendre du détail



## Dependency Inversion Principle

#### Si ce principe n’est pas respecté :

Lorsque les abstractions dépendent de détails :
- Les préoccupations techniques sont mélangées aux préoccupations métier
- Les *abstractions* <!-- .element: class="highlight highlight-pink" --> dépendent de modules instables, et sont donc *instables* <!-- .element: class="highlight highlight-pink" -->. Tout le code est alors instable, donc *fragile* <!-- .element: class="highlight highlight-pink" --> et *rigide* <!-- .element: class="highlight highlight-pink" -->.

Lorsque les détails ne dépendent pas d’abstractions, le domaine sera anémique.

Notes :



<!-- .slide: class="page-title" -->
# Supple design



### Domain Driven Design

<div class="row">
    <div class="col-lg-3">
        <img src="ressources/qualite/ddd.png" />
    </div>
    <div class="col-lg-9">
        <p class="mts">Le *Domain Driven Design*<!-- .element: class="highlight highlight-cyan" --> est une approche de développement de logiciels centrée sur le métier au travers de design patterns de conception (technique) et de modèles conceptuels.</p>
        <p class="mtl">*Eric Evans* <!-- .element: class="highlight highlight-cyan" --> est à l’origine du concept qu’il détaille dans un livre intitulé *«Domain-Driven Design, Tackling complexity in the Heart of Software»*, sorti en 2003. Il présente ce livre comme étant le fruit de vingt années de best practices tirées au sein de la communauté de la programmation orientée objet.</p>
    </div>
</div>



## Supple Design

<div class="row">
    <div class="col-lg-3">
        <img src="ressources/qualite/supple-design.png" />
    </div>
    <div class="col-lg-9">
<p class="mts">Le code doit refléter au maximum le domaine, révélant de manière fiable les fonctionnalités et permettant de décrire, juste en le visualisant, les scénarios d’exécution et les résultats que nous devrions obtenir.</p>
<p>Le code est donc prédictif et les points d’entrée sont clairs et non ambigus.</p>
<h4>Objectifs</h4>
<ul><li>Rendre les comportements du code évidents</li>
<li>Réduire le coût du changement</li>
<li>Permettre la collaboration entre développeurs et métiers</li></ul>
    </div>
</div>



## Supple Design

#### 5 principes fondamentaux

- Intention-Revealing Interfaces
- Side-Effect-Free Functions
- Guards
- Conceptual Contours
- Standalone Classes et Closure of Operations



## Intention-Revealing Interfaces

> Name classes and operations to describe their effect and purpose, without reference to the means by which they do what they promise.

<div class="row mtl">
	<div class="col-lg-7">
		<h4 class="arrow arrow-blue mtl">L'interface (méthodes publiques) d'un composant (classe) doit révéler son intention.</h4>
    </div>
    <div class="col-lg-3 col-lg-offset-1">
		<img src="ressources/qualite/supple-design/intention-revealing-interface.png" />
    </div>
</div>

Notes :



## Intention-Revealing Interfaces

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
        <p>On doit regarder l’implémentation d’une interface pour comprendre ce qu’elle fait</p>
        <p class="arrow arrow-pink mts">L'encapsulation conceptuelle est *perdue* <!-- .element: class="highlight highlight-pink" -->.</p>
        <p>Le nommage des méthodes d'une classe n’indique pas leur contrat</p>
        <p class="arrow arrow-pink mts">Les utilisateurs vont se fonder sur le code d’implémentation pour en deviner le contrat</p>
        <p>Code difficile à comprendre, couplage fort, perte de sens de la notion d’API</p>
        <p class="arrow arrow-pink">Les classes clientes ne dépendent plus seulement de la surface du fournisseur de service mais de son volume</p>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <li>Éléments nommés suivant *ce qu’ils font* <!-- .element: class="highlight highlight-cyan" --> et non *comment* <!-- .element: class="highlight highlight-cyan" --> ils le font</li>
            <li>Nommage utilisant *l’Ubiquitous Language* <!-- .element: class="highlight highlight-cyan" -->, immédiatement compréhensible</li>
            <li>L’approche test-first force à raisonner en terme d’utilisateur de l’API (et non pas de son fonctionnement interne)</li>
        </ul>
    </div>
</div>



## Side-Effect-Free Functions

> Place as much of the logic of the program as possible into functions, operations that return
> results with no observable side effects. Strictly segregate commands 
> into very simple operations that do not return domain information

<div class="row mtm">
    <div class="col-lg-6">
		<img src="ressources/qualite/supple-design/side-effect-free-function.png" />
    </div>
	<div class="col-lg-6">
		<h4 class="arrow arrow-blue mtl">Une *fonction pure* <!-- .element: class="highlight highlight-cyan" --> (retournant un résultat) ne doit pas avoir d'effets collatéraux et ne dépend que de ses arguments</h4>
    </div>
</div>



## Side-Effect-Free Functions

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
        <ul>
            <p>Fonctions (en particulier Domain Services) produisant ou tenant compte d'effets de bord</p>
            <p>*Complexification* <!-- .element: class="highlight highlight-pink" --></p>
            <p class="arrow arrow-pink mts">Introduction du temps dans les raisonnements, résultats difficiles à prévoir</p>
            <p class="arrow arrow-pink mtn">Il faut parcourir l’arbre d’appels pour voir le bilan de ces effets</p>
            <p>Composition de services difficile</p>
            <p class="arrow arrow-pink mts">Exige de raisonner sur l'état interne du service et pas seulement sur son interface</p>
        </ul>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <p>Autant de logique que possible placée dans des fonctions pures (sans effet de bord)</p>
        <p>*Commands* <!-- .element: class="highlight highlight-cyan" --> (modifient l’état) et *Queries* <!-- .element: class="highlight highlight-cyan" --> (obtiennent un résultat sans modifier l’état) clairement séparées</p>
        <p>*Value Objects* <!-- .element: class="highlight highlight-cyan" --> (immuables) utilisés partout où c’est possible</p>
        <p>Scopes des objets définis clairement</p>
    </div>
</div>



## Guards

> State post-conditions of operations and invariants of classes and aggregates.

<div class="row">
    <div class="col-lg-4">
		<img src="ressources/qualite/supple-design/guards.png" />
    </div>
	<div class="col-lg-8">
		<h4 class="arrow arrow-blue mts">Programmer défensivement. Fail early.</h4>
        <p class="arrow arrow-pink mtm">*Pré-conditions* </p>
        Vérifications en *début de méthode* <!-- .element: class="highlight highlight-cyan" -->, portant sur les paramètres ou l'état de l'objet.
        <p class="arrow arrow-pink mtm">*Post-conditions*</p>
        Vérifications en *fin de méthode* <!-- .element: class="highlight highlight-cyan" -->, portant sur le retour ou l'état de l'objet
        <p class="arrow arrow-pink mtm">*Invariants*</p>
        Vérifications en *fin de méthode publique* <!-- .element: class="highlight highlight-cyan" -->, portant sur l'état de l'objet, typiquement cohérence entre 2 champs.
    </div>
</div>

Notes :



## Guards

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
        <p>L'appel d'une fonction avec des paramètres incorrects ou sans respecter les prérequis est masqué :
        « Mis sous le tapis » silencieusement ou avec un simple log, peut corrompre l'état persisté.</p>
        <p>*État du système après une opération défini seulement par son implémentation*</p>
        <p class="arrow arrow-pink mts">Oblige à "creuser" dans le fonctionnement interne de l’opération</p>
        <p>Rend les bugs très *difficiles à analyser* <!-- .element: class="highlight highlight-pink" --> en éloignant la conséquence de sa cause première</p>
        <p class="arrow arrow-pink mts">Peuvent se produire plusieurs heures plus tard ou dans une ligne de code très éloignée</p>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <li>Contrat d'entrée et prérequis des fonctions exprimés par des préconditions</li>
            <li>Contrats de sortie exprimés avec des invariants et des post-conditions</li>
            <li>*Fail early* <!-- .element: class="highlight highlight-cyan" --> : toute violation de ces conditions entraîne l'arrêt immédiat du traitement en cours</li>
            <li>Faire *RIEN* <!-- .element: class="highlight highlight-cyan" --> plutôt que *N'IMPORTE QUOI* <!-- .element: class="highlight highlight-cyan" --> </li>
        </ul>
    </div>
</div>



## Standalone Classes, Closure of operations

> Most interesting objects end up doing things that can’t be characterized by primitives alone.

<div class="row mtl">
	<div class="col-lg-6">
		<h4 class="arrow arrow-blue">Pour minimiser le couplage et maximiser la cohésion à l'extrême :</h4>
	<ul>
		<li>Utiliser des types autoporteurs à chaque fois que c'est possible</li>
		<li>Inclure des opérateurs binaires ou retournant/prenant en paramètre le même type</li>
	</ul>
    </div>
    <div class="col-lg-6">
		<img src="ressources/qualite/supple-design/value-object.png" />
    </div>
</div>



## Standalone Classes

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
            <p>Même dans un module bien conçu, la difficulté de compréhension augmente beaucoup avec le nombre de dépendances</p>
            <p class="arrow arrow-pink">Cette surcharge mentale est *défavorable* <!-- .element: class="highlight highlight-pink" --></p>
            <p class="arrow arrow-pink">Il existe une borne à la complexité compréhensible par un développeur</p>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <p>Lorsque c’est possible, pousser le couplage faible à l’extrême : concevoir des types entièrement autoporteurs</p>
            <p class="arrow arrow-cyan">Ce pattern s'applique surtout aux *Value Objects* <!-- .element: class="highlight highlight-cyan" --></p>
            <p class="arrow arrow-cyan">Il est lié au pattern suivant : *Closure of Operations* <!-- .element: class="highlight highlight-cyan" --></p>
        </ul>
    </div>
</div>



## Closure of Operations

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
            <p>Code smell : *Primitive Obsession* <!-- .element: class="highlight highlight-pink" --></p>
            <p class="arrow arrow-pink">Utilisation prolifique de types primitifs et de strings dans toutes les couches</p>
            <p>*L'utilisation de Value Objects est un bon début*</p>
            <p class="arrow arrow-pink">Mais on ne les exploite pas pleinement sans le pattern *Closure of Operations* <!-- .element: class="highlight highlight-pink" --></p>
        </ul>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <p>Concevoir des VOs avec une interface riche, mais des dépendances minimales</p>
        <p class="arrow arrow-cyan">De même que les types numériques sont stables par les opérations binaires arithmétiques (+ - × ÷), inclure dans les VOs des opérations binaires par lesquelles ils sont stables</p>
        <p>Le VO et cette opération constituent:</p>
        <ul>
          <li>Un ensemble particulièrement cohérent</li>
          <li>Une interface sémantiquement significative</li>
          <li>Un type autoporteur</li>
        </ul>
    </div>
</div>

Notes :
