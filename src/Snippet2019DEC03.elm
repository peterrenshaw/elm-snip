-- SNIPPET 2019NOV29 shapes START --
-- expressions:
-- procCoord coordinates
-- pCoord2Point coordinates


module Snippet2019DEC03 exposing (..)


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
