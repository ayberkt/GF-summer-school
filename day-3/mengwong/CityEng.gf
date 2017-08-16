--# -path=.:present

concrete CityEng of City = open SyntaxEng, ParadigmsEng in {
  lincat
    Phrase   = Utt;
    Place    = CN;
    Property = A;
    
    
  lin
    Hello      = lin Utt {s = "hello"};

    City       = mkCN (mkN "city");
    Street     = mkCN (mkN "street");
    University = mkCN (mkN "university");
    Bar        = mkCN (mkN "bar");

    Beautiful  = mkA "beautiful";
    Shabby     = mkA "shabby";
    Empty      = mkA "empty";
    Closed     = mkA "closed";

    PropPlace     plc prp = mkCN prp plc;

    ThePlaceIs    plc prp = mkUtt (mkCl (mkNP the_Det plc) prp);
    WhereIsThe    plc     = mkUtt (mkQS (mkQCl where_IAdv (mkNP the_Det plc)));
    ILikeThePlace plc     = mkUtt (mkCl i_NP (mkV2 (mkV "like")) (mkNP the_Det plc));

    AllPlacesAre  plc prp = mkUtt (mkCl (mkNP all_Predet (mkNP aPl_Det plc)) prp);

  oper
    tostr : Utt -> Str;
    tostr utt = utt.s;
}
