-- #=========
-- # name: Main.elm
-- # date: 2019NOV29
-- # prog: pr
-- # desc: A hack for testing code snippets I'm working on.
-- #
-- #       the idea is simple: write some functions, code or
-- #       data structures in src/Snippet.elm then call in this
-- #       module. see HOWTO for more details (it's not that hard)
-- #
-- # sorc:
-- #       <http://learnyouanelm.github.io/pages/02-starting-out.html>
-- #=========


module Main exposing (..)

import Browser
import Html
import List exposing (..)
import Snippet exposing (..)


main =
    Html.text (Debug.toString snippet)


snippet =
    -- hack away below this line
    -- procCoord coordinates
    pCoord coordinates
