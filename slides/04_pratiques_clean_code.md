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


# Qu'est-ce que du code propre ?
<!-- .slide: class="page-title" -->

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
> <br> *– Beck*

Une notion intuitive rendue plus précise/objective par la littérature existante

<!-- .element: class="arrow arrow-pink mtm" -->

#### De même que les design patterns : <!-- .element: class="mtl" -->
- Fournissent un vocabulaire standard
- Donnent des critères d'applicabilité
- Proposent des solutions : refactoring
- Recensent des variations
- Certains sont évidents, d'autres moins



<!-- .slide: class="page-title" -->
# SOLID



## Les principes SOLID

Principes de limitation des dépendances et d'amélioration de la cohésion énoncés par *Robert Martin* <!-- .element: class="highlight highlight-cyan" -->

- **S** : Single Responsibility Principle (SRP)
- **O** : Open / Closed Principle (OCP)
- **L** : Liskov Substitution Principle (LSP)
- **I** : Interface Segregation Principle (ISP)
- **D** : Dependency Inversion Principle (DIP)

Notes :
Il s’agit de 5 principes de base de la programmation orientée objet.
Ils sont censés amener un cadre de développement, une ligne directrice afin d’apporter de la fiabilité et robustesse aux applications

- S : Une classe doit avoir une et une seule raison de changer
- O : Une classe doit être ouverte aux extensions mais fermée aux modifications
- L : Partout où on a besoin d'une instance d'une classe, on doit pouvoir utiliser une instance d'une sous-classe
- I : Préférer plusieurs interfaces spécifiques pour chaque client, plutôt qu’une seule interface générale
- D : On doit dépendre d’abstractions et pas d’implémentations



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

Lorsque les détails ne dépendent pas d’abstractions, le domaine sera anémique :

<figure>
  <img width="80%" src="ressources/qualite/02_principes_conception_dip-domaine-anemique.png" />
</figure>

Notes :

Ce principe est détaillé dans la partie suivante sur DIP/IoC/DI



<!-- .slide: class="page-title" -->
# Supple design



### Domain Driven Design

Le *Domain Driven Design*<!-- .element: class="highlight highlight-cyan" --> est une approche de développement de logiciels centrée sur le métier au travers de design patterns de conception (technique) et de modèles conceptuels.

<div class="row mtl">
    <div class="col-lg-3">
        <img src="ressources/qualite/ddd.png" />
    </div>
    <div class="col-lg-9">
        <p>*Eric Evans* <!-- .element: class="highlight highlight-cyan" --> est à l’origine du concept qu’il détaille dans un livre intitulé *«Domain-Driven Design, Tackling complexity in the Heart of Software»*, sorti en 2003. Il présente ce livre comme étant le fruit de vingt années de best practices tirées au sein de la communauté de la programmation orientée objet.</p>
        <p></p>
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
<ul>
<li>Intention-Revealing Interfaces</li>
<li>Side-Effect-Free Functions</li>
<li>Guards</li>
<li>Conceptual Contours</li>
<li>Standalone Classes et Closure of Operations</li>
</ul>        
    </div>
</div>



## Intention-Revealing Interfaces

<div class="row">
	<div class="col-lg-7">
		<h4 class="arrow arrow-blue mtl">L'interface (méthodes publiques) d'un composant (classe) doit révéler son intention.</h4>
    </div>
    <div class="col-lg-4 col-lg-offset-1">
		<img src="ressources/qualite/supple-design/intention-revealing-interface.png" />
    </div>
</div>

Notes :



## Intention-Revealing Interfaces

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
        <ul>
            <li>*On doit regarder l’implémentation d’une interface pour comprendre ce qu’elle fait*
            <br/><p class="arrow">L'encapsulation conceptuelle est perdue.</p></li>
            <li>*Le nommage des méthodes d'une classe n’indique pas leur contrat*
            <br/><p class="arrow">Les utilisateurs vont se fonder sur le code d’implémentation pour en deviner le contrat</p></li>
            <li>*Code difficile à comprendre*</li>
            <li>*Couplage fort*</li>
            <li>*Perte de sens de la notion d’API*
            <br/><p class="arrow">Les classes clientes ne dépendent plus seulement de la surface du fournisseur de service mais de son volume</p></li>
        </ul>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <li>Éléments nommés suivant *ce qu’ils font* <!-- .element: class="highlight highlight-cyan" --> et non *comment* <!-- .element: class="highlight highlight-cyan" --> ils le font</li>
            <li>Nommage utilisant *l’Ubiquitous Language* <!-- .element: class="highlight highlight-pink" -->, immédiatement compréhensible</li>
            <li>L’approche test-first force à raisonner en terme d’utilisateur de l’API (et non pas de son fonctionnement interne)</li>
        </ul>
    </div>
</div>



## Side-Effect-Free Functions

<div class="row">
	<div class="col-lg-6">
		<h4 class="arrow arrow-blue mtl">Une *fonction pure* <!-- .element: class="highlight highlight-cyan" --> (retournant un résultat) ne doit pas avoir d'effets collatéraux et ne dépend que de ses arguments</h4>
    </div>
    <div class="col-lg-6">
		<img src="ressources/qualite/supple-design/side-effect-free-function.png" />
    </div>
</div>



## Side-Effect-Free Functions

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
        <ul>
            <li style="list-style-type:none">*Fonctions (en particulier Domain Services) produisant ou tenant compte d'effets de bord*</li>
            <li>*Complexification*
            <br/>&rarr; Introduction du temps dans les raisonnements, résultats difficiles à prévoir
            <br/>&rarr; Il faut parcourir l’arbre d’appels pour voir le bilan de ces effets</li>
            <li>*Composition de services difficile*
            <br/>&rarr; Exige de raisonner sur l'état interne du service et pas seulement sur son interface</li>
        </ul>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <li>Autant de logique que possible est placée dans des fonctions pures (sans effets collatéraux)</li>
            <li>`Commands` (modifient l’état) et `Queries` (obtiennent un résultat sans modifier l’état) clairement séparées</li>
            <li>Value Objects (immutables) utilisés partout où c’est possible</li>
            <li>Scopes des objets définis clairement</li>
        </ul>
    </div>
</div>



## Guards

<div class="row">
	<div class="col-lg-7">
		<h4 class="arrow arrow-blue mts">Programmer défensivement. Fail early.</h4>
<p class="arrow arrow-pink mtl">*Pré-conditions* </p>
Vérifications en *début de méthode* <!-- .element: class="highlight highlight-cyan" -->, portant sur les paramètres ou l'état de l'objet.
<p class="arrow arrow-pink mtl">*Post-conditions*</p>
Vérifications en *fin de méthode* <!-- .element: class="highlight highlight-cyan" -->, portant sur le retour ou l'état de l'objet
<p class="arrow arrow-pink mtl">*Invariants*</p>
Vérifications en *fin de méthode publique* <!-- .element: class="highlight highlight-cyan" -->, portant sur l'état de l'objet, typiquement cohérence entre 2 champs.
    </div>
    <div class="col-lg-5">
		<img src="ressources/qualite/supple-design/guards.png" />
    </div>
</div>

Notes :



## Guards

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
        <ul>
            <li>*L'appel d'une fonction avec des paramètres incorrects ou sans respecter les prérequis est masqué*
            <br/>&rarr; « Mis sous le tapis » silencieusement ou avec un simple log
            <br/>&rarr; Peut corrompre l'état persisté !</li>
            <li>*État du système après une opération défini seulement par son implémentation*
            <br/>&rarr; Oblige à "creuser" dans le fonctionnement interne de l’opération</li>
            <li style="list-style-type:none">Rend les bugs très difficiles à analyser en éloignant la conséquence de sa cause première
            <br/>&rarr; Peuvent se produire plusieurs heures plus tard
            <br/>&rarr; Peuvent se produire dans une ligne de code très éloignée</li>
        </ul>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <li>Contrat d'entrée et prérequis des fonctions exprimés par des préconditions</li>
            <li>Contrats de sortie exprimés avec des invariants et des post-conditions</li>
            <li>*Fail early* : toute violation de ces conditions entraîne l'arrêt immédiat du traitement en cours</li>
            <li>Faire *RIEN* plutôt que *N'IMPORTE QUOI* </li>
        </ul>
    </div>
</div>



## Standalone Classes, Closure of operations

<div class="row">
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
        <ul>
            <li>*Même dans un module bien conçu, la difficulté de compréhension augmente beaucoup avec le nombre de dépendances*
            <br/>&rarr; Cette surcharge mentale est défavorable
            <br/>&rarr; Il existe une borne à la complexité compréhensible par un développeur</li>
        </ul>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <li>Quand c’est possible, pousser le couplage faible à l’extrême : concevoir des types entièrement autoporteurs
            <br/>&rarr; Ce pattern s'applique surtout aux *Value Objects*
            <br/>&rarr; Il est lié au pattern suivant : *Closure of Operations*</li>
        </ul>
    </div>
</div>

Notes :

Ce pattern et le suivant sont liés, ils s'appliquent tous deux aux VOs




## Closure of Operations

<div class="row">
    <div class="col-lg-6">
		<h4>Incorrect</h4>
        <ul>
            <li>*Anti-pattern « Primitive Obsession »*
            <br/>Utilisation prolifique de types primitifs et de strings dans toutes les couches</li>
            <li>*L'utilisation de Value Objects est un bon début*
            <br/>Mais on ne les exploite pas pleinement sans le pattern *Closure of Operations*</li>
        </ul>
    </div>
    <div class="col-lg-6">
		<h4>Correct</h4>
        <ul>
            <li>*Concevoir des VOs avec une interface riche, mais des dépendances minimales*
            <br/>De même que les types numériques sont stables par les opérations binaires arithmétiques (+ - × ÷), inclure dans les VOs des opérations binaires par lesquelles ils sont stables</li>
            <li>Le VO et cette opération constituent:
            <br/>&rarr; Un ensemble particulièrement cohérent
            <br/>&rarr; Une interface sémantiquement significative
            <br/>&rarr; Un type autoporteur</li>
        </ul>
    </div>
</div>

Notes :
