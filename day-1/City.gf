abstract City = {
  cat
    Phrase;
    Place;
    Property;

  fun
    Hello : Phrase;

    -- Places
    City : Place;
    Street : Place;
    University : Place;
    Bar : Place;

    -- Properties
    Beautiful : Property;
    Shabby : Property;
    Empty : Property;
    Closed : Property;

    ThePlaceIs : Place -> Property -> Phrase;
    PropPlace : Place -> Property -> Place;
    WhereIsThe : Place -> Phrase;
    AllPlacesAre : Place -> Property -> Phrase;
    ILikeThePlace : Place -> Phrase;
}
