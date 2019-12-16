module Snippet2019DEC16 exposing (..)

-- SNIPPET 2019DEC06 START --
-- OBJECTIVE: I Want to capitalise words in a list
-- sources: Jeremy Fairbank, "Programming Elm", Pragmatic Programmers, PP 52, 245.


sayHello name =
    -- bog standard function
    "Hello, " ++ name ++ "."


sayHigherOrder greeting name =
    -- higher order function?
    -- $ sayHigherOrder "Hi" "Elm"
    greeting ++ ", " ++ name ++ "."


person name other =
    -- pass in function as ohter?
    -- $ person "Jeremy" "Tucker"
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
