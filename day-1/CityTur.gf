concrete CityTur of City = open Prelude in {
  flags
    lexer=bind;

  param
    VowelType = Front | Back;
    ConcatType =
        NormalConcat VowelType
      | SoftenCons VowelType
      | InsertY VowelType
      | Reduction VowelType;
    Case = Nom | DefAcc ;

  lincat
    Phrase = Str;
    Place = Case => Str;
    Property = Str;

  lin
    Hello = "merhaba";

    -- Linearizations of places.
    City = mkPlace "şehir" (Reduction Front);
    Street = mkPlace "sokak" (SoftenCons Back);
    University = mkPlace "üniversite" (InsertY Front);
    Bar = mkPlace "bar" (NormalConcat Back);

    Beautiful = "güzel";
    Shabby = "eski püskü";
    Empty = "boş";
    Closed = "kapalı";
    ThePlaceIs plc prp = plc ! Nom ++ prp;
    PropPlace plc prp = \\_ => prp ++ (plc ! Nom);
    WhereIsThe plc = plc ! Nom ++ "nerede?";
    AllPlacesAre plc prp = "her" ++ plc ! Nom ++ prp;
    ILikeThePlace plc = plc ! DefAcc ++ "seviyorum";

  oper
    mkMarker : VowelType -> Str =
      \wt -> case wt of { Front => "i"; Back => "ı" };

    vowel : pattern Str = #("a" | "e" | "i" | "o" | "u");
    consonant : pattern Str =
      #("c" | "ç" |	"d" |	"f" |	"g" |	"ğ" | "h" | "j" |	"k" |	"l"
      | "m" |	"n" | "p" |	"r" |	"s" |	"ş" | "t" |	"v" |	"y" | "z");

    mkPlace : Str -> ConcatType -> (Case => Str) =
      \s -> \ct ->
        table { Nom => s; DefAcc => defAccMarking }
      where {
        defAccMarking =
          case ct of {
            NormalConcat wt => s + mkMarker wt;
            SoftenCons wt => init s + "ğ" + mkMarker wt;
            InsertY wt => s + "y" + mkMarker wt;
            Reduction wt =>
              case s of {
                w' + (#consonant + #vowel + #consonant)*
                   + (c1@#consonant + #vowel + c2@#consonant) =>
                   w' + c1 + c2 + mkMarker wt
              }
          }
      };
}
