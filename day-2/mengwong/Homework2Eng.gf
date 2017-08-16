concrete Homework2Eng of Homework2 = {
  lincat
    ABCD = { a : Str ; b : Str ; c : Str ; d : Str };
    ToStr = Str;
  lin
    base   =      { a = ""         ; b = ""        ; c = ""         ; d = ""         };
    m x    = x ** { a = "a" ++ x.a ;                 c = "c" ++ x.c                  };
    n x    = x ** {                  b = "b" ++ x.b                 ; d = "d" ++ x.d };
    show x = x.a ++ x.b ++ x.c ++ x.d;
}
