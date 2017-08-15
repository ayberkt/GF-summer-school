concrete CityChi of City = 

open Prelude in {

flags coding = utf8 ;

lincat
    Phrase = Str;
    Place = {q: Str ; s: Str };
    Property = Str;

lin
    Hello  = "您好";

    -- places
    City  = {q = "座"; s= "城市"};
    Street  = {q = "条" ; s= "街道" };
    University  =  {q = "所" ; s = "大学"};
    Bar  = { q = "间" ; s= "酒吧"};

    -- properties
    Beautiful  = "美丽";
    Shabby  = "破旧";
    Empty  = "空无一人";
    Closed  = "打烊";

    ThePlaceIs place property = "这" ++ "是" ++ "一" ++ place.q ++ property ++ poss ++ place.s;
    PropPlace place property = { q = place.q ; s = property ++ poss ++ place.s };
    WhereIsThe place = "请" ++ "问" ++ place.q ++ place.s ++ "在" ++ "哪" ++ "?";
    AllPlacesAre x y = "所有" ++ poss ++ x.s ++ "都" ++ y ++ "了";
    ILikeThePlace a = "我" ++ "喜欢" ++ "这" ++ a.q ++ a.s;
    ILikeThePlaces place = "我" ++ "喜欢" ++ "这几" ++ place.q ++ place.s;
    ThePlacesAre place prop = "这几" ++ place.q ++ place.s ++ "都是" ++ prop ++ poss;


    -- "functional programming"
    -- f(x) = x + 2                 <--- function
    -- f(x,y) = x + 2 + 2*x*y       <--- function
    -- f x y  = x + 2 + 2*x*y       <--- function
    -- iLikeThePlace x =  "我" ++ "喜欢" ++ "这" ++ x.q ++ x.s;       <--- function
    
  oper
    poss = "的";

}
