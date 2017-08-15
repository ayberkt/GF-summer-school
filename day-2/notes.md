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

## Modular and scalable grammar writing
