module Snippet exposing (..)

import Random


type alias Point =
    { x : Float
    , y : Float
    }


numbers n =
    -- func: return list of numbers 1 to n
    List.range 1 n


randnum n =
    -- func: return list of n random numbers
    -- deps: Random
    Random.float n


coord n =
    -- func: return list of co-ordinates as list
    0
