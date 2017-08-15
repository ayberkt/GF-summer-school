---
title: Day 2 of the Fifth GF Summer School
author: Ayberk Tosun
header-includes:
  - \usepackage{mathpazo}
  - \usepackage{eulervm}
  - \usepackage{ebproof}
geometry: margin=1in
---

* There is a lambda-like syntactic sugar for tables:
    ```Grammatical Framework
    \\ g => t : G -> T
    ```
    - Wildcards can also be used with it:
        ```Grammatical Framework
        \\_, _ => "blu"
        ```
* _Exercise_: Write a grammar that generate the (non-context-free) language
  $a^nb^nc^n$, i.e., a language whose strins are the empty string.

## Nonconcatenative morphology: Arabic

* Words are data structures rather than strings!

## Modular and scalable grammar writing (Hans Leiß)

* Type synonyms can be defined as
    ```Grammatical Framework
    oper Noun : Type = {s : Number => Str};
    ```

* Inheritance vs Opening
    - The general syntax: `moduletype name = extends ** opens in body`.
    - Inheritance: same tpye of module, inherit contents.
    - Opening: resource modules, just use its contents.
    - Both cases enjoy separate compilation.
