concrete CityTur of City = open Prelude in {
  flags
    lexer=bind;

  param
    WowelType = Front | Back;
    ConcatType =
        NormalConcat WowelType
      | SoftenCons WowelType
      | InsertY WowelType;
    Case = Nom | DefAcc ;

  lincat
    Phrase = Str;
    Place = Case => Str;
    Property = Str;

  lin
    Hello = "merhaba";

    -- Linearizations of places.
    City = mkPlace "şehir" (NormalConcat Front);
    Street = mkPlace "sokak" (SoftenCons Back);
    University = mkPlace "üniversite" (InsertY Front);
    Bar = mkPlace "bar" (NormalConcat Back);

    Beautiful = "güzel";
    Shabby = "eski püskü";
    Empty = "boş";
    Closed = "kapalı";
    ThePlaceIs plc prp = plc ! Nom ++ prp;
    PropPlace plc prp = \\_ => prp ++ (plc ! Nom);
    WhereIsThe plc = plc ! Nom ++ "nerede";
    AllPlacesAre plc prp = "her" ++ plc ! Nom ++ prp;
    ILikeThePlace plc = plc ! DefAcc ++ "seviyorum";

  oper
    mkPlace : Str -> ConcatType -> (Case => Str) =
      \s -> \ct ->
        table { Nom => s; DefAcc => defAccMarking }
      where {
        defAccMarking =
          case ct of {
            NormalConcat Front => s + "i";
            NormalConcat Back => s + "ı";
            SoftenCons Front => init s + "ği";
            SoftenCons Back => init s + "ğı";
            InsertY Front => s + "yi";
            InsertY Back => s + "yı"
          }
      };
}
