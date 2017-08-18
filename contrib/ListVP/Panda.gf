abstract Panda = {
  flags startcat = Out;
  cat
    Animal; Action; Actions; Out;
  fun
    say               : Animal -> Actions -> Out;
    mkActions         : Actions;
    panda, pandas     : Animal;
    eat, shoot, leave : Action;
}
      