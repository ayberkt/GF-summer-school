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
    ```
    \\ g => t : G -> T
    ```
    - Wildcards can also be used with it:
        ```
        \\_, _ => "blu"
        ```
* _Exercise_: Write a grammar that generate the (non-context-free) language
  $a^nb^nc^n$, i.e., a language whose strins are the empty string.

## Nonconcatenative morphology: Arabic

* Words are data structures rather than strings!

## Modular and scalable grammar writing (Hans Leiß)

* Type synonyms can be defined as
    ```
    oper Noun : Type = {s : Number => Str};
    ```
* Inheritance vs Opening
    - The general syntax: `moduletype name = extends ** opens in body`.
    - Inheritance: same tpye of module, inherit contents.
    - Opening: resource modules, just use its contents.
    - Both cases enjoy separate compilation.
* Qualified names and renaming of modules
    - Modules can be renamed as
        ```
        concrete C of A = open (P = Prelude), Morpho in {
          lin c = init (P.init x)
        }
        ```
* Tuples and Product types
    - Products and types are syntactic sugar for record types and records.
    - Partial patterns
* Prefix-dependent choices and pattern macros
    - Problem: English indefinite article is either _an_ or _a_.
        - Solution:
            ```
            inDefArt : Str =
              pre {
                "a" | "e" | "i" | "o" | "u" => "an";
                _ => "a"
              };
            ```
* Strings at compile-time vs run-time
    - Summary of tokens
        - Quoted strings
        - Gluing
        - Predefined operations: `init`, `tail`
        - Pattern matching over strings
        - Prefix-dependent choices: `pre { ... }`
    - __Principle:__ all tokens must be known at compile time.
    - __Corollary__: above operations may not be applied to run-time variables.
