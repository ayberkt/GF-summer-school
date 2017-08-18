
-- https://en.wikipedia.org/wiki/Eats,_Shoots_%26_Leaves

concrete PandaEng of Panda = open SyntaxEng, ParadigmsEng, ExtraEng in {
  lincat
    Animal = NP;
    Action = V;
    Actions = VPS;
    Out = Str;

  lin
    say animal actions = (PredVPS animal actions).s;
    mkActions = ExtraEng.ConjVPS and_Conj actionList;
    panda  = mkNP the_Det   panda_N;
    pandas = mkNP thePl_Det panda_N;
    eat   = mkV "eat"  ;
    shoot = mkV "shoot";
    leave = mkV "leave";

  oper
    panda_N = mkN "panda";
    
    actionList : ListVPS = (ConsVPS (V2VPS eat)
                           (BaseVPS (V2VPS shoot)
                                    (V2VPS leave)));

    V2VPS : V -> VPS = \v ->
      MkVPS (mkTemp presentTense simultaneousAnt) positivePol (mkVP v);
}
  