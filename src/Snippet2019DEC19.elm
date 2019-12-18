module Snippet2019DEC19 exposing (..)

-- SNIPPET 2019DEC19 START --
-- OBJECTIVE: I Want to understand Higher Order Functions
-- sources: Jeremy Fairbank, "Programming Elm",
--          Pragmatic Programmers, PP 14,15,16,17.
--          Programming Elm, Ch1, P3,4,6,7,8,9
-- SNIPPET 2019DEC19 START --
-- * Type annotations


add x y =
    -- add: basic addition function
    -- no types declared, ^type inference^ infers this
    -- type annotations are?
    x + y


sayHello : String -> String
sayHello name =
    -- bog standard function
    -- type annotation: input String, return String
    "Hello, " ++ name ++ "."


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



-- SNIPPET 2019DEC19 END --
-- # vim: ff=unix:ts=4:sw=4:tw=78:noai:expandtab
