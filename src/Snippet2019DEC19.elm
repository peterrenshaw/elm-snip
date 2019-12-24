module Snippet2019DEC19 exposing (..)

-- SNIPPET 2019DEC19 START --
-- OBJECTIVE: I Want to understand Higher Order Functions
-- sources: Jeremy Fairbank, "Programming Elm",
--          Pragmatic Programmers, PP 14,15,16,17.
--          Programming Elm, Ch1, P3,4,6,7,8,9
-- SNIPPET 2019DEC19 START --
-- * Collections of Lists
-- * Type annotations
--
{- ----------- Type Annotations ----------- -}


add : Int -> Int -> String
add x y =
    -- add: basic addition function
    -- no types declared, ^type inference^ infers this
    -- type annotations are?
    String.fromInt (x + y)


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
    -- type coercion usuing debug hack
    -- alternative?
    -- $ bottlesOf "Jolt! Cola" 100
    -- > "100 bottles of Jolt! Cola on the wall"
    -- OK added type annotation, coerced Int to String
    String.fromInt amount ++ " bottles of " ++ contents ++ " on the wall"



{- ----------- Collections Of Lists ----------- -}


greetings =
    -- $ greetings
    -- > ["hi","Hello","Ho"]
    [ "hi", "Hello", "Ho" ]


greetings2 =
    [ "Hi", "There", "You", "Great", "Big", "Cheeky" ]


empty =
    -- $ empty
    -- > []
    []



-- SNIPPET 2019DEC19 END --
-- # vim: ff=unix:ts=4:sw=4:tw=78:noai:expandtab
