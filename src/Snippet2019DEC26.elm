module Snippet2019DEC19 exposing (..)

-- SNIPPET 2019DEC26 START --
-- OBJECTIVE: I want to understand Records, immutability
-- sources: Jeremy Fairbank, "Programming Elm",
--          Pragmatic Programmers, PP 14,15,16,17.
--          Programming Elm, Ch1, P28-32
-- SNIPPET 2019DEC26 START --
--
{- ----------- Records ----------- -}


dog =
    -- $ dog
    -- > { age = [], name = "Tucker" }
    -- $ dog.name
    -- > "Tucker"
    -- $ dog.age
    -- > []
    -- $ dog [ "name" ]
    -- > The `dog` value is not a function, but it was given 1 argument.
    { name = "Tucker", age = 1 }


haveBirthday d =
    -- $ haveBirthday
    -- > <function>
    -- $ haveBirtday dog -- change dog.age to integer
    -- > { age = 2, name = "Tucker" }
    { name = d.name, age = d.age + 1 }


olderDog =
    -- $ olderDog
    -- > { age = 2, name = "Tucker" }
    -- $ olderDog.name
    -- > 2
    haveBirthday dog


dogo =
    { name = "Old Yella", age = 1, breed = "" }


haveAnotherBirthday d =
    -- # record update syntax
    -- $ haveAnotherBirthday dogo
    -- > { age = 2, name = "Rex" }
    { d | age = d.age + 1 }



{- ----------- END Records ----------- -}
-- SNIPPET 2019DEC26 END --
-- # vim: ff=unix:ts=4:sw=4:tw=78:noai:expandtab
