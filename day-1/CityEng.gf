concrete CityEng of City = {
  lincat
    Phrase = Str;
    Place = Str;
    Property = Str;

  lin
    Hello = "hello";
    City = "city";
    Street = "street";
    University = "university";
    Bar = "bar";
    Beautiful = "beautiful";
    Shabby = "shabby";
    Empty = "empty";
    Closed = "closed";
    ThePlaceIs pl prp = "the" ++ pl ++ "is" ++ prp;
    PropPlace plc prp = prp ++ plc;
    WhereIsThe plc =
      "where" ++ "is" ++ "the" ++ plc;
}
