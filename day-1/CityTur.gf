concrete CityTur of City = open Prelude in {
  flags
    lexer=bind;

  param
    WowelType = Front | Back;
    DefAccCase = OnlyI WowelType | SoftenCons | InsertY WowelType;

  lincat
    Phrase = Str;
    Place = {s : Str; dac : DefAccCase};
    Property = Str;

  lin
    Hello = "merhaba";
    City = {s = "şehir"; dac = OnlyI Front};
    Street = {s = "sokak"; dac = SoftenCons};
    University = {s = "üniversite"; dac = InsertY Front};
    Bar = {s = "bar"; dac = OnlyI Back};
    Beautiful = "güzel";
    Shabby = "eski püskü";
    Empty = "boş";
    Closed = "kapalı";
    ThePlaceIs plc prp = plc.s ++ prp;
    PropPlace plc prp = {s = prp ++ plc.s; dac = plc.dac};
    WhereIsThe plc = plc.s ++ "nerede";
    AllPlacesAre plc prp = "her" ++ plc.s ++ prp;
    ILikeThePlace plc =
      (defAccMarking plc.s) ! plc.dac ++ "seviyorum";

  oper

   defAccMarking : Str -> DefAccCase => Str =
     \s ->
       table {
         OnlyI Front => s ++ BIND ++ "i";
         OnlyI Back  => s ++ BIND ++ "ı";
         SoftenCons => s ++ BIND ++ "gi";
         InsertY Front => s ++ BIND ++ "yi";
         InsertY Back => s ++ BIND ++ "yı"
       };
}
