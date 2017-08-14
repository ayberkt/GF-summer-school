concrete CityTur of City = open Prelude in {
  flags
    lexer=bind;

  param
    WowelType = Front | Back;
    DefAccCase = OnlyI | YandI | SoftenKandI;

  lincat
    Phrase = Str;
    Place = {s : Str; dac : DefAccCase};
    Property = Str;

  lin
    Hello = "merhaba";
    City = {s = "şehir"; dac = OnlyI};
    Street = {s = "sokak"; dac = SoftenKandI};
    University = {s = "üniversite"; dac = YandI};
    Bar = {s = "bar"; dac = OnlyI};
    Beautiful = "güzel";
    Shabby = "eski püskü";
    Empty = "boş";
    Closed = "kapalı";
    ThePlaceIs plc prp = plc.s ++ prp;
    PropPlace plc prp = {s = prp ++ plc.s; dac = plc.dac};
    WhereIsThe plc = plc.s ++ "nerede";
    AllPlacesAre plc prp = "her" ++ plc.s ++ prp;
    ILikeThePlace plc =
      plc.s ++ BIND ++ defAccMarking ! plc.dac ++ "seviyorum";

  oper

   defAccMarking : DefAccCase => Str =
     table {
       OnlyI => "i";
       YandI => "yi";
       SoftenKAndI => "gi"
     };
}
