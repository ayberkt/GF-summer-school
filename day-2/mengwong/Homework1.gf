abstract Homework1 = {
  --   Exercise. * Write a grammar that generates the (non-context-free) language anbncn, i.e. a language whose strings are the empty string, a b c, a a b b c c, etc, where there are always as many a’s as b’s and c ’s.

  flags startcat = ToStr;
        
  cat
    ToStr;
    ABC;

  fun
    basecase : ABC;
    step : ABC -> ABC;
    show : ABC -> ToStr;

}

  