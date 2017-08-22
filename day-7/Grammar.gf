abstract Grammar = {
  flags startcat = S ;

  cat
    S ; Cl ; NP ; VP ; AP ; CN ; PN ;
    Det ; N ; A ; V ; V2 ; AdA ;
    Pol ;
    Conj ;
  data
    UseCl   : Pol -> Cl -> S ;
    PredVP  : NP -> VP -> Cl ;
    ComplV2 : V2 -> NP -> VP ;
    DetCN   : Det -> CN -> NP ;
    ModCN   : AP -> CN -> CN ;

    CompAP  : AP -> VP ;
    AdAP    : AdA -> AP -> AP ;

    ConjS   : Conj -> S  -> S  -> S ;
    ConjNP  : Conj -> NP -> NP -> NP ;

    UseV    : V -> VP ;
    UsePN   : PN -> NP ;
    UseN    : N -> CN ;
    UseA    : A -> AP ;

    some_Det, every_Det : Det ;
    i_NP, you_NP : NP ;
    very_AdA : AdA ;

    Pos, Neg : Pol ;

    and_Conj, or_Conj : Conj ;
}

abstract Test = Grammar ** {

fun
  man_N, woman_N, house_N, tree_N : N ;
  big_A, small_A, green_A : A ;
  walk_V, arrive_V : V ;
  love_V2, please_V2 : V2 ;
  john_PN, mary_PN : PN;

} ;
