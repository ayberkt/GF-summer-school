concrete CityTur of City = open Prelude in {
  flags
    lexer=bind;

  param
    WowelType = Front | Back;
    DefAccCase = OnlyI WowelType | SoftenCons WowelType | InsertY WowelType;

  lincat
    Phrase = Str;
    Place = {s : Str; dac : DefAccCase};
    Property = Str;

  lin
    Hello = "merhaba";
    City = {s = "şehir"; dac = OnlyI Front};
    Street = {s = "sokak"; dac = SoftenCons Back};
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
      defAccMarking plc.s ! plc.dac ++ "seviyorum";

  oper

   defAccMarking : Str -> DefAccCase => Str =
     \s ->
       table {
         OnlyI Front => s + "i";
         OnlyI Back  => s + "ı";
         SoftenCons Front => init s + "ği";
         SoftenCons Back => init s + "ğı";
         InsertY Front => s + "yi";
         InsertY Back => s + "yı"
       };
}
