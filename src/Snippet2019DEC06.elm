module Snippet2019DEC06 exposing (..)

-- SNIPPET 2019DEC06 START --
-- * EXPRESSION
-- - intAdd 1 3
-- - fltAdd 1.1 3.3
-- - meaningOfLife
-- - stateOk
-- - crseAdd (would not compile, as expected)
-- - bottlesOf "Beer" 3
-- - bottlesOf "Juice" 3
-- - bottlesOf "juice" True
-- - bottlesOf "juice" 99
-- * WORKING ON
-- - testing type casting
-- - add two integers
-- - testing type annotations
-- -


intAdd : Int -> Int -> Int
intAdd x y =
    -- add two integers
    x + y


fltAdd : Float -> Float -> Float
fltAdd x y =
    -- add two floats
    x + y



-- crseAdd : Float -> Int -> Float
-- CURSED FUNCTION: will never compile
-- add one float to an int and return?
-- crseAdd x y =
--    x + y


meaningOfLife : Int
meaningOfLife =
    -- integer
    42


salutations : String -> String
salutations name =
    -- input str, return str
    "Greetings " ++ name ++ "."


stateOk : Bool
stateOk =
    -- constant
    True


bottlesOf : String -> (Int -> String)
bottlesOf contents amount =
    String.fromInt amount
        ++ " bottles of "
        ++ contents
        ++ " on the wall."



-- SNIPPET 2019DEC06 END --
