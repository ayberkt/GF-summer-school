concrete CityEng of City = {
  lincat
    Phrase = Str;
    Place  = { one : Str ; many : Str };
    Property = Str;

  lin
    Hello                 = "hello";

    City                  = mkPlN "city";
    Street                = mkPlN "street";
    University            = mkPlN "university";
    Bar                   = mkPlN "bar";

    Beautiful             = "beautiful";
    Shabby                = "shabby";
    Empty                 = "empty";
    Closed                = "closed";

    ThePlaceIs plc prp    = "the" ++ plc.one ++ "is" ++ prp;
    ThePlacesAre plc prp  = "the" ++ plc.many ++ "are" ++ prp;
    PropPlace plc prp     = { one = prp ++ plc.one ;
                              many= prp ++ plc.many } ;
    WhereIsThe plc        = "where" ++ "is" ++ "the" ++ plc.one;
    AllPlacesAre plc prp  = "all" ++ plc.many ++ "are" ++ prp;
    ILikeThePlace plc     = "I" ++ "like" ++ "the" ++ plc.one;
    ILikeThePlaces plc    = "I" ++ "like" ++ "the" ++ plc.many;

  param Plural = Sg | Pl;
    
  oper

    mkPlN : Str -> { one : Str ; many : Str };
    mkPlN w = { one = w ;
                many = case w of {
          _ + ("a" | "e" | "i" | "o") + "o" => w + "s" ;  -- bamboo
          _ + ("s" | "x" | "sh" | "o")      => w + "es" ; -- bus, hero
          _ + "z"                           => w + "zes" ;-- quiz
          _ + ("a" | "e" | "o" | "u") + "y" => w + "s" ;  -- boy
          x + "y"                           => x + "ies" ;-- fly
          _                                 => w + "s"    -- car
                        } };

}

