concrete Homework1Eng of Homework1 = {
  lincat
    ABC   = { a : Str ; b : Str ; c : Str };
    ToStr = Str;

  lin
    basecase = { a = "";         b = "";         c = ""         };
    step x   = { a = x.a ++ "a"; b = x.b ++ "b"; c = x.c ++ "c" };
    show x   =       x.a ++          x.b ++          x.c;
}
