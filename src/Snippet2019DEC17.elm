module Snippet2019DEC17 exposing (..)

import Snippet2019DEC16 exposing (..)



-- SNIPPET 2019DEC17 START --
-- OBJECTIVE: I Want to understand Curring
-- sources: Jeremy Fairbank, "Programming Elm", Pragmatic Programmers, PP 52, 245.
-- * Partial and Full Application
-- SNIPPET 2019DEC17 START --


sayHello name =
    -- bog standard function
    "Hello, " ++ name ++ "."


sayHigherOrder greeting name =
    -- higher order function?
    -- $ sayHigherOrder "Hi" "Elm"
    -- "Hi, Elm."
    greeting ++ ", " ++ name


hi =
    -- full application example
    -- $ Hi "Elm"
    -- <function> : String -> String
    sayHigherOrder "Hi"


gday =
    -- $ gday
    -- > <function>
    -- $ gday "mate"
    -- > "G'day, mate"
    sayHigherOrder "G'day"


hello =
    -- $ hello
    -- > <function>
    sayHigherOrder "Hello"


jeremyZero =
    -- $ person "Jeremy" ((\other -> sayHigherOrder "hi" other) "Tucker")
    -- "Hi, hi, Tucker..My name is Jeremy."
    person "Jeremy" ((\other -> sayHigherOrder "hi" other) "Tucker")


jeremyOne =
    person "Jeremy" (sayHello "G'day")


jeremyTwo greeting =
    -- $ jeremyTwo (hello "there")
    -- > "Hi, Hello, there My name is Jeremy."
    -- $ jeremyTwo (gday "mate")
    -- > "Hi, G'day, mate My name is Jeremy."
    person "Jeremy" greeting


person name other =
    -- $ person "Jeremy" (sayHello "hello")
    -- "Hi, Hello, hello..My name is Jeremy."
    sayHigherOrder "Hi" other ++ " My name is " ++ name ++ "."


jeremyThree =
    -- $ let
    --     jeremy =
    --     person "Jeremy" (sayHello "G'day")
    --   in
    --   jeremy
    -- > "Hi, Hello, G'day..My name is Jeremy."
    -- $ jeremyTwo
    -- >  "Hi, Hello, G'day..My name is Jeremy."
    person "Jeremy" (sayHello "G'day")


tuckerOne stuff =
    -- $ tuckerOne "ya old bugger"
    -- > "Hi, ya old bugger, how you goin'? . My name is Tucker."
    person "Tucker" ((\other -> other ++ ", how you goin'?" ++ " ") stuff)



-- JUNK CODE --
--tucker =
-- $ tucker
-- >
--    person "Tucker" (\other -> other ++ ", how you goin'?")
-- hi "Elm"
--anonymousHi
{-
   let
       gday =
           sayHigherOrder "G'day"
   in
   Snippet.person "Jeremy" gday
-}
-- SNIPPET 2019DEC16 END --
