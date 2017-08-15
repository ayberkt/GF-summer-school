abstract City = {
  flags startcat = Phrase;
  cat
    Phrase;
    Place;
    Property;

  fun
    Hello      : Phrase;
    City       : Place;
    Street     : Place;
    University : Place;
    Bar        : Place;
    Beautiful  : Property;
    Shabby     : Property;
    Empty      : Property;
    Closed     : Property;

    PropPlace     : Place -> Property -> Place;

    ThePlaceIs    : Place -> Property -> Phrase;
    ThePlacesAre  : Place -> Property -> Phrase;
    WhereIsThe    : Place -> Phrase;
    AllPlacesAre  : Place -> Property -> Phrase;
    ILikeThePlace : Place -> Phrase;
    ILikeThePlaces : Place -> Phrase;
}
