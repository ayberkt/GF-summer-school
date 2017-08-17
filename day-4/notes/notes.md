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

### Building an application grammar

* _Step 1_: scope.
    - We want the user to be able to say something like "I'm hungry"
      and then explain their preferences.
    - We can organize this kind of preferences into groups like:
        - Recipe search (e.g., I'm hungry)
        - Recipe info (e.g., Does this contain peanuts)
        - User preferences (e.g., I hate garlic)
