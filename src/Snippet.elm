module Snippet exposing (..)


helloworld : String
helloworld =
    -- var: display a hello world message
    "Hello World"



{- ========= START snipping away here ======== -}


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
    greet other ++ " My name is " ++ name ++ "."


whatIsHigherOrderFunction name =
    -- $ whatIsHigherOrderFunction "Higher Order Function"
    name ++ ": " ++ "A function that accepts another function as an argument or returns a function."



{- ========= END snipping away here ======== -}
