---
title: Day 3 of the Fifth GF Summer School
author: Ayberk Tosun
header-includes:
  - \usepackage{mathpazo}
  - \usepackage{eulervm}
  - \usepackage{ebproof}
geometry: margin=1in
---

## Resource grammar libraries

* We want to abstract out the abstract syntax trees commonly used in
  linguistics.
    - We do this kind of stuff using resource grammars.

* Here are some of the functions we use for these purposes:

    ```GF
    UseCl : Tense -> Pred -> Cl -> S
    PredVP : NP -> VP -> Cl
    DetCN : Det -> CN -> NP
    ComplV2 : V2 -> NP -> VP
    AdjCN : AP -> CN -> CN
    PositA : A -> AP
    UseN : N -> CN
    the_Det : Det
    usePron : Pron -> NP
    we_Pron : Pron
    cat_N : N
    ```

* Some of the abstract and concrete syntax looks like the following: 

    ```GF
      cat S; CL; Tense; Pred; VP; NP; CN; Det; AP; Pron; N; A; V2;
        param
          Agr = Ag Gender Number Person
          Case = Nom | Acc
      lincat
        S = {s : Str};
        Cl = {s : PTense => PPol => Str}
        Tense = {t : PTense}
        Pol = {t : PPol}
        VP = {s : PTense => PPol => Agr}
        NP = {s : Case => Str; a : Agr}
        CN = {s : Number => Case => Str; g : Gender}
        AP = {s : Gender => Number => Case => Str}
        Det = {s : Gender => Case => Str; n : Number}
      -- English linearization
      lin
        UseCL t p cl = {s = cl.s ! t.t ! p.p}
        PredVP np vp = {s = \\t, p => np.s ! Nom ++ vp.s ! t ! p ! vp.a}
        AdjCN ap cn = {s = \\n, c => ap.s ! cn.g ! n ! c ++ cn.s ! n ! c; g = cn.g}
        DetCN det cn = {
          s = \\c => det.s ! cn.g ! c ++ cn.s ! det.n ! c;
          a = Ag cn.g det.n P3
        }
    ```

* __API__

    ```GF
    mkNP : Det -> CN -> NP
    mkNP : Pron -> NP
    ```

* Documentation can be found in
  [GF Resource Grammar Library: Synopsis](http://www.grammaticalframework.org/lib/doc/synopsis.html).
