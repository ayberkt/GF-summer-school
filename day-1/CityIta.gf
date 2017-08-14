concrete CityIta of City = open Prelude in {
  lincat
    Phrase = Str;
    Place = { s : Str; g : Gender };
    Property = Gender => Str;

  lin
    Hello = "ciao";
    City = {s = "citta"; g = Fem};
    Street = {s = "strada"; g = Fem};
    University = {s = "universita"; g = Fem};
    Bar = {s = "bar"; g = Masc};
    Beautiful =
      table { Masc => "bello"; Fem => "bella" };
    Shabby = regAdj "sporco";
    Empty = regAdj "vuoto";
    Closed = regAdj "chiuoso";
    ThePlaceIs plc prp =
      defArt plc.g ++ plc.s ++ "e" ++ prp ! plc.g;
    PropPlace plc prp =
        { s = plc.s ++ prp ! plc.g; g = plc.g }
      | { s = prp ! plc.g ++ plc.s; g = plc.g };
    WhereIsThe plc =
      "dove" ++ "e" ++ defArt plc.g ++ plc.s;

  param
    Gender = Masc | Fem;

  oper
    regAdj : Str -> Gender => Str =
      \s ->
        table { Masc => s; Fem => init s + "a" };

    defArt : Gender -> Str =
      \g ->
        case g of {
          Masc => "il";
          Fem => pre { "a" | "e" | "i" | "o" | "u" => "l"; _ => "la" }
        };
}
