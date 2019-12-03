module Snippet exposing (..)

import Random



-- SNIPPET 2019NOV29 shapes START --


type alias Point =
    { x : Float
    , y : Float
    }


type alias Shape =
    { coords : List Point
    , label : String
    , id : Int
    }


coordinates =
    [ ( 0, 0 ), ( 1, 0 ), ( 0, 0 ) ]


numbers n =
    -- func: return list of numbers 1 to n
    List.range 1 n


pCoord ptLst =
    -- func: return flatten tuple of co-ordinates as list
    ptLst
        |> List.concatMap (\( x, y ) -> [ x, y ])
        |> List.map String.fromInt
        |> String.join ", "



-- pCoord ptLst =
--    ptLst
--        |> List.map (\( x, y ) -> [ Point.x, Point.y ])
-- SNIPPET shapes END --


helloworld =
    -- var: display a hello world message
    "Hello World"
