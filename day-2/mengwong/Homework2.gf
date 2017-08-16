--Exercise. * Write a grammar that generates the (non-context-free) language ambncmdn, i.e. where the number of a’s and c’s is the same and so is the number of b’s and d’s. This language is well-known as a model of Swiss German, originally presented by Shieber in 1985 in his argument that Swiss German is not context-free.

abstract Homework2 = {
  flags startcat = ToStr;
  cat
    ABCD;
    ToStr;
  fun
    base : ABCD;
    m    : ABCD -> ABCD;
    n    : ABCD -> ABCD;
    show : ABCD -> ToStr;
}
