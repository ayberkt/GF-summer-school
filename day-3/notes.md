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
  ```
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
  ```
  cat S; CL; Tense; Pred; VP; NP; CN; Det; AP; Pron; N; A; V2;
  param
    Agr = Ag Gender Number Person
  lincat
    S = {s : Str};
    Cl = {s : PTense => PPol => Str}
    Tense = {t : PTense}
    Pol = {t : PPol}
    VP = {s : PTense => PPol => Agr}
    NP = {s : Case => Str; a : Agr}
  lin
    UseCL t p cl = {s = cl.s ! t.t ! p.p}
  ```
