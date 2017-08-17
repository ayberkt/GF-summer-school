--# -path=/Users/ayberkt/code/GF/lib/src/turkish

concrete CityTur of City =
  open Prelude, ParadigmsTur, (RT = ResTur), (CT = CatTur) in {
  flags
    lexer=bind;

  lincat
    Phrase = CT.Cl;
    Place = RT.Noun;
    Property = CT.A;

  lin
    Hello = "merhaba";

    -- Linearizations of places.
    City = mkN "şehir";
    Street = mkN "sokak";
    University = mkN "üniversite";
    Bar = mkN "bar";

    Beautiful = mkA "güzel";
    Shabby = mkA "eski püskü";
    Empty = mkA "boş";
    Closed = mkA "kapalı";
    ThePlaceIs plc prp = {s = "TODO"};
    PropPlace plc prp = mkN "TODO";
    WhereIsThe plc = {s = "TODO"};
    AllPlacesAre plc prp = {s = "TODO"};
    ILikeThePlace plc = {s = "TODO"};
}
