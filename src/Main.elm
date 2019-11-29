-- #=========
-- # name: Main.elm
-- # date: 2019NOV29
-- # prog: pr
-- # desc: testing code for examples working on
-- # sorc:
-- #       <http://learnyouanelm.github.io/pages/02-starting-out.html>
-- #=========


module Main exposing (..)

import Html
import List exposing (..)
import Snippet exposing (..)



-- access x and y from a list of points
--


type alias Point =
    { x : Float
    , y : Float
    }


main =
    Html.text snippet


snippet =
    numbers 6
        |> List.map String.fromInt
        |> String.join " "
