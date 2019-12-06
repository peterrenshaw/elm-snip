module Snippet exposing (..)

import Random



-- SNIPPET 2019DEC06 START --
-- add two integers


intAdd : Int -> Int -> Int
intAdd x y =
    x + y



-- add two floats


fltAdd : Float -> Float -> Float
fltAdd x y =
    x + y



-- SNIPPET 2019NOV29 shapes START --


type alias Point =
    { x : Int
    , y : Int
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


pCoordFlat ptLst =
    -- func: return flatten tuple of co-ordinates as list
    ptLst
        |> List.concatMap (\( x, y ) -> [ x, y ])
        |> List.map String.fromInt
        |> String.join ", "


point x y =
    ( x, y )



-- pCoord ptLst =
--    ptLst
--        |> List.map (\( x, y ) -> [ Point.x, Point.y ])
-- SNIPPET shapes END --


helloworld =
    -- var: display a hello world message
    "Hello World"
