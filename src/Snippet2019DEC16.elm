module Snippet2019DEC16 exposing (..)

-- SNIPPET 2019DEC16/17 START --
-- OBJECTIVE: I Want to understand Higher Order Functions
-- sources: Jeremy Fairbank, "Programming Elm", Pragmatic Programmers, PP 52, 245.
--          Programming Elm, Ch1, P3,4,6,7,8,9
-- SNIPPET 2019DEC16 START --
-- * Higher order functions
-- - sayHello
-- - sayHigherOrder
-- - sayHigherOrder "Hi" "Elm"
-- - person "Jeremy" "Tucker"
-- - personHo "Jeremy" (\other -> sayHigherOrder "Hi" other) "Tucker"
-- - whatIsHigherOrderFunction "Higher Order Function"
-- - personHo "Jeremy" (\other -> other ++ ", how are you?") "Tucker"
--
-- -- for fun
--   let
--      message =
--        sayHello "James"
--   in
--       person "Brown" message
--


sayHello name =
    -- bog standard function
    "Hello, " ++ name ++ "."


sayHigherOrder greeting name =
    -- higher order function?
    -- $ sayHigherOrder "Hi" "Elm"
    greeting ++ ", " ++ name ++ "."


person name other =
    -- pass in function as other?
    -- $ person "Jeremy" "Tucker"
    -- -- for fun
    --   let
    --      message =
    --        sayHello "James"
    --   in
    --       person "Brown" message
    --
    sayHigherOrder "Hi" other ++ " My name is " ++ name ++ "."


personHo name greet other =
    -- accepts name arg
    -- greets using sayHigherOrder func
    -- "the greet arg is a function accepting 'other' as arg"
    -- $ personHo "Jeremy" (\other -> sayHigherOrder "Hi" other) "Tucker"
    -- $ personHo "Jeremy" (\other -> other ++ ", how are you?") "Tucker"
    greet other ++ " My name is " ++ name ++ "."


whatIsHigherOrderFunction name =
    -- $ whatIsHigherOrderFunction "Higher Order Function"
    name ++ ": " ++ "A function that accepts another function as an argument or returns a function."



-- SNIPPET 2019DEC16 END --
