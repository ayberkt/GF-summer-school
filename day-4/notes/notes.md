---
title: Day 4 of the Fifth GF Summer School
author: Ayberk Tosun
header-includes:
  - \usepackage{mathpazo}
  - \usepackage{eulervm}
  - \usepackage{ebproof}
geometry: margin=1in
---


## Application grammars (by _Christina Unger_ from `mercury.ai`)

* https://scholar.google.com/citations?user=rC_nwQ0AAAAJ

* motivation: situations where eyeballs and fingers are not available; instead we use our mouth and ears. In a car, in the kitchen, on a sofa.

* applications need to interface between the user in the front end, and the world of data in the back end. hence a perfect opportunity for GF.

### Building an application grammar

* _Step 1_: scope.
    - We want the user to be able to say something like "I'm hungry"
      and then explain their preferences.
    - We can organize this kind of preferences into groups like:
        - Recipe search (e.g., I'm hungry)
        - Recipe info (e.g., Does this contain peanuts)
        - User preferences (e.g., I hate garlic)
    - Note: take a look at [Christina's example](RecipeSearch.gf)

[RecipeSearch.gf]: https://gist.github.com/cunger/1e5d9e404c6979fc45cdf366b52562e1
