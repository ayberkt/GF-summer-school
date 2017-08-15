concrete CityIta of City = open Prelude in {
  lincat
    Phrase   = Str;
    Place    = { s : Plural => Str; g : Gender };
    Property = Plural => Gender => Str;

  lin
    Hello                    = "ciao";
    City                     = mkPlN {s = "citta"; g = Fem};
    Street                   = mkPlN {s = "strada"; g = Fem};
    University               = mkPlN {s = "università"; g = Fem};
    Bar                      = mkPlN {s = "bar"; g = Masc};
    Beautiful                = regAdj "bello";
    Shabby                   = regAdj "sporco";
    Empty                    = regAdj "vuoto";
    Closed                   = regAdj "chiuso";

    ThePlaceIs plc prp       =
      defArt plc.g Sg ++ plc.s!Sg ++ "e" ++ prp ! Sg ! plc.g;
    PropPlace plc prp        =
      { s = table { Sg => plc.s!Sg ++ prp ! Sg ! (plc.g);
                    Pl => plc.s!Pl ++ prp ! Sg ! (plc.g) };
        g = plc.g }
      | { s = table { Sg => prp ! Sg ! plc.g ++ plc.s!Sg;
                      Pl => prp ! Pl ! plc.g ++ plc.s!Pl };
          g = plc.g };
    WhereIsThe plc           = "Dov'è" ++ defArt plc.g Sg ++ plc.s!Sg;
    ThePlacesAre plc prp     = theplacesare plc prp;
    AllPlacesAre plc prp     = "Tutte" ++ theplacesare plc prp;
    ILikeThePlace plc       = "Mi" ++ (like ! Sg) ++ defArt plc.g Sg ++ plc.s!Sg;
    ILikeThePlaces plc      = "Mi" ++ (like ! Pl) ++ defArt plc.g Pl ++ plc.s!Pl;

-- L'università è bellissima.
-- Le università sono belle.
    
  param
    Gender = Masc | Fem;
    Plural = Sg | Pl;
    
  oper
    like : Plural => Str = regVerb "piace";
    
    regVerb : Str -> (Plural => Str);
    regVerb w = table { Sg => w;
                        Pl => case w of { x + "ce" => x + "cciono";
                                          _ => w } };
    
    theplacesare : { s : Plural => Str; g : Gender } -> (Plural => Gender => Str) -> Str;
    theplacesare plc prp = defArt plc.g Pl ++ plc.s!Pl ++ "sono" ++ prp ! Pl ! plc.g;

    mkPlN : { s : Str; g : Gender } -> { s : Plural => Str; g : Gender };
    mkPlN w = { g = w.g ;
                s = table { Sg => w.s;
                            Pl => w.s } };

    regAdj : Str -> (Plural => Gender => Str) =
      \s ->
      table { Sg => table { Masc => s;
                            Fem => init s + "a" } ;
              Pl => table { _ => init s + "e" } };
              
    defArt : Gender -> Plural -> Str =
      \g,plural ->
      case plural of {
        Sg => case g of {
          Masc => "il";
          Fem => pre { "a" | "e" | "i" | "o" | "u" => "l'"; _ => "la" }
          } ;
        Pl => "le"
          };
}
