module Snippet exposing (..)


helloworld : String
helloworld =
    -- var: display a hello world message
    "Hello World"



{- ========= START snipping away ... add all your code below ======== -}


add x y =
    -- add: basic addition function
    -- no types declared, ^type inference^ infers this
    -- type annotations are?
    x + y


sayHello : String -> String
sayHello name =
    -- bog standard function
    -- type annotation: input String, return String
    -- $ sayHello "There"
    -- $ let
    --     strPi =
    --        Debug.toString pie
    --    in
    --    sayHello "pi " ++ strPi
    -- > "Hello, pi 3.1415926535"
    "Hello, " ++ name


greetings : String
greetings =
    -- type annotation: returns a String
    "Hello there..."


moreGreeting : String
moreGreeting =
    -- type input String,
    -- use functional composition calling sayHello
    sayHello "Elm"


meaningOfLife : Int
meaningOfLife =
    -- type annotation is String
    42


pie : Float
pie =
    -- type annotation is Floating point
    3.1415926535


canChuck : Bool
canChuck =
    -- type annotation is boolen
    True


bottlesOf : String -> Int -> String
bottlesOf contents amount =
    -- type coersion usuing debug hack
    -- alternative?
    -- $ bottlesOf "Jolt! Cola" 100
    -- > "100 bottles of Jolt! Cola on the wall"
    Debug.toString amount ++ " bottles of " ++ contents ++ " on the wall"



{- ========= END snipping away here ======== -}
-- # vim: ff=unix:ts=4:sw=4:tw=78:noai:expandtab
